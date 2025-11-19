@interface COIDSTransport
- (BOOL)isEqual:(id)a3;
- (COIDSTransport)initWithDiscoveryRecord:(id)a3 executionContext:(id)a4;
- (COTransportDelegate)delegate;
- (NSString)description;
- (id)acceptableResponsesForRequest:(Class)a3;
- (id)shortDescription;
- (unint64_t)hash;
- (void)_configureTimer;
- (void)_handleErrorFromMessage:(id)a3 incomingResponseIdentifier:(id)a4 from:(id)a5;
- (void)_handleRequestFromMessage:(id)a3 incomingRequestIdentifier:(id)a4 from:(id)a5;
- (void)_handleResponseFromMessage:(id)a3 incomingResponseIdentifier:(id)a4 from:(id)a5;
- (void)_timerFired;
- (void)_timerRequestAdded:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)deregisterRequestForClass:(Class)a3;
- (void)handleMessage:(id)a3 requestIdentifier:(id)a4 responseIdentifier:(id)a5 from:(id)a6;
- (void)invalidateWithError:(id)a3;
- (void)registerRequestForClass:(Class)a3 withCompletion:(id)a4;
- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)sendRequest:(id)a3 withResponseHandler:(id)a4;
@end

@implementation COIDSTransport

- (COIDSTransport)initWithDiscoveryRecord:(id)a3 executionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25.receiver = self;
    v25.super_class = COIDSTransport;
    v9 = [(COIDSTransport *)&v25 init];
    if (v9)
    {
      v10 = [v8 networkActivityFactory];
      v11 = [v10 activityWithLabel:1 parentActivity:0];
      activity = v9->_activity;
      v9->_activity = v11;

      objc_storeStrong(&v9->_record, a3);
      v13 = [v7 serviceDirector];
      director = v9->_director;
      v9->_director = v13;

      objc_storeStrong(&v9->_executionContext, a4);
      v15 = [MEMORY[0x277CBEB58] set];
      registeredCommands = v9->_registeredCommands;
      v9->_registeredCommands = v15;

      v17 = [MEMORY[0x277CBEB38] dictionary];
      acceptableResponses = v9->_acceptableResponses;
      v9->_acceptableResponses = v17;

      v19 = [MEMORY[0x277CBEB38] dictionary];
      outstandingRequests = v9->_outstandingRequests;
      v9->_outstandingRequests = v19;

      v9->_requestTimeout = 180.0;
      v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      timer = v9->_timer;
      v9->_timer = v21;

      [(COIDSTransport *)v9 _configureTimer];
    }

    self = v9;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (NSString)description
{
  v3 = [(COIDSTransport *)self record];
  v4 = [v3 IDSIdentifier];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p, ids = %@>", v7, self, v4];

  return v8;
}

- (id)shortDescription
{
  v3 = [(COIDSTransport *)self record];
  v4 = [v3 IDSIdentifier];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(COIDSTransport *)self executionContext];
  v7 = [v6 meshControllerDescription];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"[m:%@] <%@: %p, ids = %.8s>", v7, v9, self, objc_msgSend(v4, "UTF8String")];

  return v10;
}

- (void)activateWithCompletion:(id)a3
{
  v13 = a3;
  v4 = [(COIDSTransport *)self activity];

  if (v4)
  {
    v5 = [(COIDSTransport *)self activity];
    nw_activity_activate();
  }

  v13[2](v13, 0);
  v6 = [(COIDSTransport *)self record];
  v7 = [v6 onDemandRequest];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 message];
    v10 = [v8 requestIdentifier];
    v11 = [v8 responseIdentifier];
    v12 = [v8 fromURIToken];
    [(COIDSTransport *)self handleMessage:v9 requestIdentifier:v10 responseIdentifier:v11 from:v12];
  }
}

- (unint64_t)hash
{
  v2 = [(COIDSTransport *)self record];
  v3 = [v2 hash];

  return v3;
}

- (void)invalidateWithError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(COIDSTransport *)self shortDescription];
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidated", &v15, 0xCu);
  }

  v7 = [(COIDSTransport *)self activity];
  if (v7 && nw_activity_is_activated())
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = mach_continuous_time();
      activation_time = nw_activity_get_activation_time();
      xpc_dictionary_set_uint64(v8, "lifetime", v9 - activation_time);
      xpc_dictionary_set_uint64(v8, "transport_type", 2uLL);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  v11 = [(COIDSTransport *)self outstandingRequests];
  [v11 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_11];

  v12 = [(COIDSTransport *)self outstandingRequests];
  [v12 removeAllObjects];

  v13 = [(COIDSTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 transport:self didInvalidateWithError:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __38__COIDSTransport_invalidateWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v7 = [v3 errorWithDomain:0x2857B5A08 code:-4100 userInfo:0];
  v5 = [v4 request];
  v6 = [v4 callback];

  (v6)[2](v6, v5, 0, v7);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(COIDSTransport *)self record];
    v7 = [v5 record];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)registerRequestForClass:(Class)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = NSStringFromClass(a3);
  v8 = [(COIDSTransport *)self registeredCommands];
  [v8 addObject:v7];

  if (objc_opt_respondsToSelector())
  {
    v9 = [(objc_class *)a3 acceptableResponses];
    v10 = [MEMORY[0x277CBEB58] set];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__COIDSTransport_registerRequestForClass_withCompletion___block_invoke;
    v13[3] = &unk_278E18E80;
    v14 = v10;
    v11 = v10;
    [v9 enumerateObjectsUsingBlock:v13];
    v12 = [(COIDSTransport *)self acceptableResponses];
    [v12 setObject:v11 forKey:v7];
  }

  v6[2](v6);
}

void __57__COIDSTransport_registerRequestForClass_withCompletion___block_invoke(uint64_t a1, Class aClass)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromClass(aClass);
  [v2 addObject:v3];
}

- (void)deregisterRequestForClass:(Class)a3
{
  v6 = NSStringFromClass(a3);
  v4 = [(COIDSTransport *)self registeredCommands];
  [v4 removeObject:v6];

  v5 = [(COIDSTransport *)self acceptableResponses];
  [v5 removeObjectForKey:v6];
}

- (id)acceptableResponsesForRequest:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [(COIDSTransport *)self acceptableResponses];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v5 = [(COIDSTransport *)self executionContext];
  [v5 assertDispatchQueue];

  v6[2](v6, 0);
}

- (void)sendRequest:(id)a3 withResponseHandler:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COIDSTransport *)self executionContext];
  [v8 assertDispatchQueue];

  v9 = [(COIDSTransport *)self director];
  v10 = [v9 messageFactory];
  v11 = [v10 encodeRequest:v6 withIDSIdentifier:!self->_resolvedIDSIdentifier];

  v12 = [v6 activity];
  v13 = [(COIDSTransport *)self executionContext];
  v14 = [v13 networkActivityFactory];
  v15 = [v14 activityWithLabel:2 parentActivity:v12];

  if (v15)
  {
    nw_activity_activate();
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__26;
  v47 = __Block_byref_object_dispose__26;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__26;
  v41 = __Block_byref_object_dispose__26;
  v42 = 0;
  v16 = [(COIDSTransport *)self director];
  v17 = [v11 dictionaryRepresentation];
  v18 = [(COIDSTransport *)self record];
  v19 = [v18 deviceTokenURI];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __50__COIDSTransport_sendRequest_withResponseHandler___block_invoke;
  v36[3] = &unk_278E18EA8;
  v36[4] = &v37;
  v36[5] = &v43;
  [v16 sendMessage:v17 toDestination:v19 completionHandler:v36];

  if (v44[5])
  {
    goto LABEL_4;
  }

  if (!v38[5])
  {
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    v33 = v44[5];
    v44[5] = v32;

LABEL_4:
    if (v15)
    {
      v20 = xpc_dictionary_create(0, 0, 0);
      v21 = v20;
      if (v20)
      {
        xpc_dictionary_set_uint64(v20, "transport_type", 2uLL);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    v7[2](v7, v6, 0, v44[5]);
    goto LABEL_17;
  }

  v22 = [[COIDSOutstandingRequestInfo alloc] initWithRequest:v6 at:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) callback:v7 activity:v15];
  v23 = [(COIDSTransport *)self outstandingRequests];
  [v23 setObject:v22 forKey:v38[5]];

  [(COIDSTransport *)self _timerRequestAdded:v22];
  if (!self->_resolvedIDSIdentifier)
  {
    self->_resolvedIDSIdentifier = 1;
    v24 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(COIDSTransport *)self shortDescription];
      v34 = [(COIDSTransport *)self director];
      v25 = [v34 messageFactory];
      v26 = [v25 idsIdentifier];
      v27 = v38[5];
      *buf = 138543874;
      v50 = v35;
      v51 = 2114;
      v52 = v26;
      v53 = 2114;
      v54 = v27;
      _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ advertised IDS identifier %{public}@ via message %{public}@", buf, 0x20u);
    }
  }

  v28 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(COIDSTransport *)self shortDescription];
    v30 = v38[5];
    *buf = 138543874;
    v50 = v29;
    v51 = 2114;
    v52 = v6;
    v53 = 2114;
    v54 = v30;
    _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ sent request %{public}@ via message %{public}@", buf, 0x20u);
  }

LABEL_17:
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  v31 = *MEMORY[0x277D85DE8];
}

void __50__COIDSTransport_sendRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)handleMessage:(id)a3 requestIdentifier:(id)a4 responseIdentifier:(id)a5 from:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(COIDSTransport *)self executionContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__COIDSTransport_handleMessage_requestIdentifier_responseIdentifier_from___block_invoke;
  v19[3] = &unk_278E15868;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v13;
  v24 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  [v14 dispatchAsync:v19];
}

void __74__COIDSTransport_handleMessage_requestIdentifier_responseIdentifier_from___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) type];
  if ((*(*(a1 + 40) + 8) & 1) == 0)
  {
    v3 = [*(a1 + 32) metadata];
    v4 = [v3 objectForKey:0x2857B6848];
    *(*(a1 + 40) + 8) = 1;
    v5 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) shortDescription];
      v7 = *(a1 + 48);
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received IDS identifier %{public}@ from message %{public}@", &v13, 0x20u);
    }
  }

  switch(v2)
  {
    case 2:
      [*(a1 + 40) _handleErrorFromMessage:*(a1 + 32) incomingResponseIdentifier:*(a1 + 64) from:*(a1 + 56)];
      break;
    case 1:
      v8 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) shortDescription];
        v10 = *(a1 + 48);
        v11 = *(a1 + 64);
        v13 = 138543874;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ received response %{public}@ for %{public}@", &v13, 0x20u);
      }

      [*(a1 + 40) _handleResponseFromMessage:*(a1 + 32) incomingResponseIdentifier:*(a1 + 64) from:*(a1 + 56)];
      break;
    case 0:
      [*(a1 + 40) _handleRequestFromMessage:*(a1 + 32) incomingRequestIdentifier:*(a1 + 48) from:*(a1 + 56)];
      break;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_configureTimer
{
  v3 = [(COIDSTransport *)self timer];
  dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COIDSTransport *)self setTimerEnabled:0];
  objc_initWeak(&location, self);
  v4 = [(COIDSTransport *)self timer];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __33__COIDSTransport__configureTimer__block_invoke;
  v9 = &unk_278E15B10;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v4, &v6);

  v5 = [(COIDSTransport *)self timer:v6];
  dispatch_activate(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __33__COIDSTransport__configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timerFired];
    WeakRetained = v2;
  }
}

- (void)_timerFired
{
  v3 = [(COIDSTransport *)self executionContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__COIDSTransport__timerFired__block_invoke;
  v4[3] = &unk_278E15AB8;
  v4[4] = self;
  [v3 dispatchAsync:v4];
}

void __29__COIDSTransport__timerFired__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 outstandingRequests];
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = [v4 count];
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fired. Outstanding requests = %lu", buf, 0x16u);
  }

  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v6 = [MEMORY[0x277CBEB18] array];
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 outstandingRequests];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __29__COIDSTransport__timerFired__block_invoke_35;
  v34[3] = &unk_278E18ED0;
  v10 = *v7;
  v36 = v5;
  v34[4] = v10;
  v11 = v6;
  v35 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v34];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [*v7 outstandingRequests];
        [v17 removeObjectForKey:v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v13);
  }

  v18 = [*v7 outstandingRequests];
  v19 = [v18 count] == 0;

  if (v19)
  {
    [*v7 setTimerEnabled:0];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v38 = 0;
    v20 = [*v7 outstandingRequests];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __29__COIDSTransport__timerFired__block_invoke_2;
    v29[3] = &unk_278E18EF8;
    v29[4] = buf;
    [v20 enumerateKeysAndObjectsUsingBlock:v29];

    v21 = *(*&buf[8] + 24);
    [*v7 requestTimeout];
    v23 = v22;
    v24 = COCoreLogForCategory(17);
    v25 = -((v5 - v21) - v23 * 1000000000.0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __29__COIDSTransport__timerFired__block_invoke_cold_1(v7, v25, v24);
    }

    v26 = [*v7 timer];
    v27 = dispatch_time(0, v25);
    dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

    _Block_object_dispose(buf, 8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __29__COIDSTransport__timerFired__block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = (*(a1 + 48) - [v5 enqeueStart]);
  [*(a1 + 32) requestTimeout];
  if (v7 * 1000000000.0 <= v6)
  {
    v8 = [v5 activity];
    if (v8)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      v10 = v9;
      if (v9)
      {
        xpc_dictionary_set_uint64(v9, "transport_type", 2uLL);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    [*(a1 + 40) addObject:v14];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4003 userInfo:0];
    v12 = [v5 callback];
    v13 = [v5 request];
    (v12)[2](v12, v13, 0, v11);
  }
}

unint64_t __29__COIDSTransport__timerFired__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 enqeueStart];
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) - 1 >= result)
  {
    *(v5 + 24) = result;
  }

  return result;
}

- (void)_timerRequestAdded:(id)a3
{
  if (![(COIDSTransport *)self isTimerEnabled])
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [COIDSTransport _timerRequestAdded:];
    }

    [(COIDSTransport *)self setTimerEnabled:1];
    [(COIDSTransport *)self requestTimeout];
    v6 = (v5 * 1000000000.0);
    v7 = [(COIDSTransport *)self timer];
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)_handleResponseFromMessage:(id)a3 incomingResponseIdentifier:(id)a4 from:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v10 = [(COIDSTransport *)self outstandingRequests];
  v11 = [v10 objectForKey:v8];

  v12 = (v9 - [v11 enqeueStart]) / 1000000000.0;
  v13 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(COIDSTransport *)self shortDescription];
    *buf = 138543874;
    v30 = v14;
    v31 = 2114;
    v32 = v8;
    v33 = 2048;
    v34 = v12;
    _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ message %{public}@ round trip time: %lfs", buf, 0x20u);
  }

  v15 = [(COIDSTransport *)self outstandingRequests];
  [v15 removeObjectForKey:v8];

  v16 = [v11 callback];
  if (v16)
  {
    v17 = [v7 payload];

    if (v17)
    {
      v18 = [v11 request];
      v19 = [(COIDSTransport *)self acceptableResponsesForRequest:objc_opt_class()];
      v28 = 0;
      v17 = [v7 unarchivePayloadOfTypes:v19 error:&v28];
      v20 = v28;
      v21 = 0;
      if (!v17)
      {
        v22 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [COIDSTransport _handleResponseFromMessage:? incomingResponseIdentifier:? from:?];
        }

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = [v11 activity];
    if (v23)
    {
      v24 = xpc_dictionary_create(0, 0, 0);
      v25 = v24;
      if (v24)
      {
        xpc_dictionary_set_uint64(v24, "transport_type", 2uLL);
        xpc_dictionary_set_double(v25, "rtt", v12);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    v26 = [v11 request];
    (v16)[2](v16, v26, v17, v21);
  }

  else
  {
    v21 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [COIDSTransport _handleResponseFromMessage:incomingResponseIdentifier:from:];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorFromMessage:(id)a3 incomingResponseIdentifier:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(COIDSTransport *)self outstandingRequests];
  v10 = [v9 objectForKey:v8];

  v11 = [v10 callback];
  if (v11)
  {
    v12 = [v10 activity];
    if (v12)
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        xpc_dictionary_set_uint64(v13, "transport_type", 2uLL);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    v15 = [v10 request];
    v16 = [v7 error];
    (v11)[2](v11, v15, 0, v16);

    v17 = [(COIDSTransport *)self outstandingRequests];
    [v17 removeObjectForKey:v8];
  }

  else
  {
    v12 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [COIDSTransport _handleErrorFromMessage:incomingResponseIdentifier:from:];
    }
  }
}

- (void)_handleRequestFromMessage:(id)a3 incomingRequestIdentifier:(id)a4 from:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COIDSTransport *)self registeredCommands];
  v28 = 0;
  v12 = [v8 unarchivePayloadOfTypes:v11 error:&v28];
  v13 = v28;

  v14 = COCoreLogForCategory(17);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(COIDSTransport *)self shortDescription];
      *buf = 138543874;
      v30 = v16;
      v31 = 2114;
      v32 = v12;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ received request %{public}@ via message %{public}@", buf, 0x20u);
    }

    v17 = [(COIDSTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(buf, self);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75__COIDSTransport__handleRequestFromMessage_incomingRequestIdentifier_from___block_invoke;
      v24[3] = &unk_278E18F20;
      objc_copyWeak(&v27, buf);
      v24[4] = self;
      v25 = v9;
      v26 = v10;
      [v17 transport:self didReceiveRequest:v12 callback:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COIDSTransport _handleRequestFromMessage:? incomingRequestIdentifier:? from:?];
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    v18 = [(COIDSTransport *)self director];
    v19 = [v18 messageFactory];
    v20 = [v19 encodeError:v17];

    v21 = [(COIDSTransport *)self director];
    v22 = [v20 dictionaryRepresentation];
    [v21 sendResponse:v22 responseIdentifier:v9 toDestination:v10];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __75__COIDSTransport__handleRequestFromMessage_incomingRequestIdentifier_from___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained director];
    v9 = [v8 messageFactory];
    v10 = v9;
    if (v5)
    {
      [v9 encodeError:v5];
    }

    else
    {
      [v9 encodeResponse:v14];
    }
    v11 = ;

    v12 = [*(a1 + 32) director];
    v13 = [v11 dictionaryRepresentation];
    [v12 sendResponse:v13 responseIdentifier:*(a1 + 40) toDestination:*(a1 + 48)];
  }
}

- (COTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __29__COIDSTransport__timerFired__block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%{public}@ timer reconfiguring to %llu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_timerRequestAdded:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ enabling timer for default duration", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseFromMessage:(void *)a1 incomingResponseIdentifier:from:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ error decoding response: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponseFromMessage:incomingResponseIdentifier:from:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%{public}@ No response callback for a response with identifier %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorFromMessage:incomingResponseIdentifier:from:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_244378000, v0, v1, "%{public}@ No response callback for a response with identifier %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFromMessage:(void *)a1 incomingRequestIdentifier:from:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ error decoding request: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end