@interface COMessagingService
+ (id)serviceWithDelegate:(id)a3;
- (BOOL)_applicableToCluster:(id)a3;
- (COMessagingService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5;
- (void)_addOnAdded:(id)a3;
- (void)_addOnRemoved:(id)a3;
- (void)_clientLost:(id)a3;
- (void)_completeActivationForClient:(id)a3;
- (void)_configureServiceInterfacesOnConnection:(id)a3;
- (void)activateMessageChannelForTopic:(id)a3 cluster:(id)a4 handlers:(id)a5 withCompletion:(id)a6;
- (void)addOn:(id)a3 receivedRequest:(id)a4 callback:(id)a5;
- (void)sessionEndedForSubTopic:(id)a3;
@end

@implementation COMessagingService

+ (id)serviceWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.messaging" entitlement:@"com.apple.private.coordination.messaging"];
  v5 = objc_alloc_init(COMessagingAddOnProvider);
  v6 = [[COMessagingService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:v3];

  return v6;
}

- (COMessagingService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = COMessagingService;
  v5 = [(COService *)&v21 initWithListenerProvider:a3 addOnProvider:a4 delegate:a5];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    connectedClients = v5->_connectedClients;
    v5->_connectedClients = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    requestHandlers = v5->_requestHandlers;
    v5->_requestHandlers = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    outstandingActivateCompletionHandlers = v5->_outstandingActivateCompletionHandlers;
    v5->_outstandingActivateCompletionHandlers = v10;

    v12 = objc_alloc_init(_COMessagingServiceMeter);
    meter = v5->_meter;
    v5->_meter = v12;

    v14 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(_COMessagingServiceMeter *)v5->_meter limits];
      *buf = 134218242;
      v23 = v5;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p limiting %@", buf, 0x16u);
    }

    v16 = [(_COMessagingServiceMeter *)v5->_meter peaks];
    v17 = [v16 allKeys];

    if ([v17 count])
    {
      v18 = COCoreLogForCategory(10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v23 = v5;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p evaluating sizing for %@", buf, 0x16u);
      }
    }

    [(COService *)v5 _serviceReady];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)a3
{
  v14.receiver = self;
  v14.super_class = COMessagingService;
  v4 = a3;
  [(COService *)&v14 _configureServiceInterfacesOnConnection:v4];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857D7AB8;
  v7 = [v5 interfaceWithProtocol:v6];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0, v14.receiver, v14.super_class}];
  [v7 setClasses:v10 forSelector:sel_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken_ argumentIndex:4 ofReply:0];
  [v7 setXPCType:MEMORY[0x277D864D0] forSelector:sel_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken_ argumentIndex:5 ofReply:0];
  [v4 setExportedInterface:v7];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  [v7 setClasses:v11 forSelector:sel_sessionStartedForSubTopic_withMember_produced_ argumentIndex:1 ofReply:0];
  [v4 setExportedInterface:v7];
  [v4 setExportedObject:self];
  v12 = &unk_2857E65B8;

  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v12];

  [v4 setRemoteObjectInterface:v13];
}

- (void)_clientLost:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COMessagingService *)self connectedClients];
  v53 = v4;
  v6 = [v5 objectForKey:v4];

  v7 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 client];
    v9 = [v8 connection];
    *buf = 134218240;
    v74 = self;
    v75 = 1024;
    LODWORD(v76) = [v9 processIdentifier];
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p Lost client %d", buf, 0x12u);
  }

  v61 = [v6 topic];
  v10 = [v6 cluster];
  group = dispatch_group_create();
  v49 = v10;
  v50 = self;
  v11 = [(COService *)self _addOnForCluster:v10];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [v6 sessions];
  v57 = v6;
  v58 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v58)
  {
    v55 = *v70;
    v54 = *MEMORY[0x277CFCF20];
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v70 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v69 + 1) + 8 * i);
        v14 = [v6 sessions];
        v15 = [v14 objectForKey:v13];

        v16 = [v15 member];
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v54 code:-1211 userInfo:0];
        v18 = [objc_alloc(MEMORY[0x277CFD0E0]) initWithCommandType:2 error:v17 topic:v61 subTopic:v13];
        v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
        if ([v15 producedSession])
        {
          [MEMORY[0x277CCACA8] _commandTypeForConsumerWithSubTopic:v13];
        }

        else
        {
          [MEMORY[0x277CCACA8] _commandTypeForProducerWithSubTopic:v13];
        }
        v20 = ;
        v21 = [[COMessagingRequest alloc] initWithRequestID:arc4random() requestType:0 payload:v19 payloadType:v20 topic:v61];
        if (v11)
        {
          dispatch_group_enter(group);
          [MEMORY[0x277CBEB98] setWithObject:v16];
          v60 = v19;
          v22 = v18;
          v23 = v17;
          v25 = v24 = v16;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __34__COMessagingService__clientLost___block_invoke;
          v67[3] = &unk_278E181D0;
          v68 = group;
          [v11 sendRequest:v21 members:v25 withCompletionHandler:v67];

          v16 = v24;
          v17 = v23;
          v18 = v22;
          v19 = v60;
        }

        v6 = v57;
      }

      v58 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v58);
  }

  v26 = dispatch_walltime(0, 10000000000);
  dispatch_group_wait(group, v26);
  v27 = v50;
  v28 = [(COMessagingService *)v50 requestHandlers];
  v29 = v49;
  v30 = [v28 objectForKey:v49];
  v31 = [v30 objectForKey:v61];

  if (v31)
  {
    v59 = v11;
    v32 = [v31 mutableCopy];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v56 = v31;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v64;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v64 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v63 + 1) + 8 * j);
          v39 = [v33 objectForKeyedSubscript:v38];
          v40 = [v39 isEqual:v53];

          if (v40)
          {
            v41 = COCoreLogForCategory(10);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v74 = v50;
              v75 = 2112;
              v76 = v53;
              v77 = 2112;
              v78 = v38;
              _os_log_impl(&dword_244378000, v41, OS_LOG_TYPE_DEFAULT, "%p Lost client %@ which had a request handler registered for class of type %@", buf, 0x20u);
            }

            [v32 removeObjectForKey:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v35);
    }

    v42 = [v32 count];
    v27 = v50;
    v43 = [(COMessagingService *)v50 requestHandlers];
    v29 = v49;
    v44 = [v43 objectForKey:v49];
    v45 = v44;
    if (v42)
    {
      [v44 setObject:v32 forKey:v61];
    }

    else
    {
      [v44 removeObjectForKey:v61];

      v46 = [(COMessagingService *)v50 requestHandlers];
      v43 = [v46 objectForKey:v49];

      if ([v43 count])
      {
        v6 = v57;
        v11 = v59;
        v31 = v56;
        goto LABEL_32;
      }

      v45 = [(COMessagingService *)v50 requestHandlers];
      [v45 removeObjectForKey:v49];
    }

    v6 = v57;
    v11 = v59;
    v31 = v56;

LABEL_32:
  }

  [(COService *)v27 _releaseAssertionForCluster:v29];
  v47 = [(COMessagingService *)v27 connectedClients];
  [v47 removeObjectForKey:v53];

  v62.receiver = v27;
  v62.super_class = COMessagingService;
  [(COService *)&v62 _clientLost:v53];

  v48 = *MEMORY[0x277D85DE8];
}

- (void)activateMessageChannelForTopic:(id)a3 cluster:(id)a4 handlers:(id)a5 withCompletion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v25 = self;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Activate message channel for topic %@ and cluster %@ with handlers %@", buf, 0x2Au);
  }

  v15 = [(COService *)self currentClient];
  v16 = [[COMessagingClientInfo alloc] initWithTopic:v10 cluster:v11 handledClasses:v12 client:v15 activateCompletionHanlder:v13];
  [(COService *)self _takeAssertionForCluster:v11];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__COMessagingService_activateMessageChannelForTopic_cluster_handlers_withCompletion___block_invoke;
  v20[3] = &unk_278E181F8;
  objc_copyWeak(&v23, buf);
  v17 = v11;
  v21 = v17;
  v18 = v16;
  v22 = v18;
  [(COService *)self _addOnForCluster:v17 completion:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __85__COMessagingService_activateMessageChannelForTopic_cluster_handlers_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained _completeActivationForClient:*(a1 + 40)];
    }

    else
    {
      v6 = COCoreLogForCategory(10);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v15 = 134218242;
        v16 = v5;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Cluster %@ is currently unavailable. Channel activation will wait for cluster availability", &v15, 0x16u);
      }

      v8 = [v5 outstandingActivateCompletionHandlers];
      v9 = [v8 objectForKey:*(a1 + 32)];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [MEMORY[0x277CBEB58] set];
      }

      v12 = v11;

      [v12 addObject:*(a1 + 40)];
      v13 = [v5 outstandingActivateCompletionHandlers];
      [v13 setObject:v12 forKey:*(a1 + 32)];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_completeActivationForClient:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 client];
  if (v5)
  {
    v38 = [v4 completionHandler];
    [v4 setCompletionHandler:0];
    v37 = [(COMessagingService *)self meter];
    v36 = [v5 clientBundleIdentifier];
    v6 = [v4 topic];
    v7 = [v4 cluster];
    v8 = [(COMessagingService *)self connectedClients];
    v43 = v5;
    [v8 setObject:v4 forKey:v5];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = v4;
    v9 = v4;
    v10 = v6;
    obj = [v9 handledClasses];
    v11 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    v41 = v6;
    if (v11)
    {
      v12 = v11;
      v42 = *v45;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v15 = [(COMessagingService *)self requestHandlers];
          v16 = [v15 objectForKey:v7];

          if (v16)
          {
            v17 = [v16 objectForKeyedSubscript:v10];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 objectForKeyedSubscript:v14];
              if (v19)
              {
                v29 = v19;
                v30 = COCoreLogForCategory(10);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [(COMessagingService *)self _completeActivationForClient:v14, v30];
                }

                v31 = MEMORY[0x277CCA9B8];
                v32 = *MEMORY[0x277CFCF10];
                v48 = *MEMORY[0x277CFCF18];
                v49 = v14;
                v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
                v34 = [v31 errorWithDomain:v32 code:-1100 userInfo:v33];

                v27 = v36;
                v26 = v37;
                v28 = v38;
                (*(v38 + 16))(v38, v34, [v37 sendLimitForIdentifier:v36], objc_msgSend(v37, "receiveLimitForIdentifier:", v36));

                goto LABEL_20;
              }

              v20 = [(COMessagingService *)self requestHandlers];
              v21 = [v20 objectForKey:v7];
              v22 = [v21 objectForKey:v10];
              v23 = v22;
              v24 = v43;
              v25 = v14;
            }

            else
            {
              v20 = [MEMORY[0x277CBEB38] dictionary];
              [v20 setObject:v43 forKey:v14];
              v21 = [(COMessagingService *)self requestHandlers];
              v22 = [v21 objectForKey:v7];
              v25 = v10;
              v23 = v22;
              v24 = v20;
            }

            [v22 setObject:v24 forKey:v25];

            v10 = v41;
          }

          else
          {
            v18 = [MEMORY[0x277CBEB38] dictionary];
            v20 = [MEMORY[0x277CBEB38] dictionary];
            [v20 setObject:v43 forKey:v14];
            [v18 setObject:v20 forKey:v10];
            v21 = [(COMessagingService *)self requestHandlers];
            [v21 setObject:v18 forKey:v7];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v27 = v36;
    v26 = v37;
    v28 = v38;
    (*(v38 + 16))(v38, 0, [v37 sendLimitForIdentifier:v36], objc_msgSend(v37, "receiveLimitForIdentifier:", v36));
LABEL_20:
    v4 = v39;
    v5 = v43;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke()
{
  v0 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_cold_1();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_102()
{
  v0 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_cold_1();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_104(uint64_t a1, uint64_t a2)
{
  v3 = 64;
  if (!a2)
  {
    v3 = 56;
  }

  ++*(*(*(a1 + v3) + 8) + 24);
  if (*(*(*(a1 + 72) + 8) + 24) <= *(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 56) + 8) + 24) && *(a1 + 32))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    if (xdict)
    {
      xpc_dictionary_set_int64(xdict, "type", *(a1 + 80));
      xpc_dictionary_set_uint64(xdict, "size", *(a1 + 88));
      xpc_dictionary_set_string(xdict, "command", [*(a1 + 40) UTF8String]);
      v5 = [*(a1 + 48) clientBundleIdentifier];
      v6 = v5;
      if (!v5)
      {
        v2 = [MEMORY[0x277CCA8D8] mainBundle];
        v6 = [v2 bundleIdentifier];
      }

      xpc_dictionary_set_string(xdict, "client", [v6 UTF8String]);
      if (!v5)
      {
      }

      v7 = *(a1 + 32);
      nw_activity_submit_metrics();
    }

    v8 = *(a1 + 32);
    *(*(*(a1 + 72) + 8) + 24);
    *(*(*(a1 + 64) + 8) + 24);
    nw_activity_complete_with_reason();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  (*(*(a1 + 56) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained dispatchQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3;
    v14[3] = &unk_278E18270;
    v15 = v9;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v12;
    v22 = *(a1 + 72);
    v19 = v8;
    v20 = *(a1 + 48);
    v21 = v10;
    dispatch_async(v13, v14);
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 payload];
  LOBYTE(v3) = [v3 clientIdentifier:v4 canReceiveLength:{objc_msgSend(v5, "length")}];

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v7 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 56);
      v27 = [v2 payload];
      v28 = [v27 length];
      v29 = [*(a1 + 40) receiveLimitForIdentifier:*(a1 + 48)];
      v30 = *(a1 + 88);
      *buf = 134218752;
      v40 = v26;
      v41 = 2048;
      v42 = v28;
      v43 = 2048;
      *v44 = v29;
      *&v44[8] = 1024;
      *&v44[10] = v30;
      _os_log_error_impl(&dword_244378000, v7, OS_LOG_TYPE_ERROR, "%p Response message is too big (%ld > %ld) for request ID %u", buf, 0x26u);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1103 userInfo:0];
  }

  v8 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 88);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *buf = 134218754;
    v40 = v11;
    v41 = 2112;
    v42 = v9;
    v43 = 1024;
    *v44 = v10;
    *&v44[4] = 2112;
    *&v44[6] = v12;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Received response %@ for request %u from node %@", buf, 0x26u);
  }

  v13 = [*(a1 + 64) memberSnapshot];
  v14 = [*(a1 + 72) connection];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111;
  v34 = &unk_278E18220;
  v35 = *(a1 + 56);
  v15 = v14;
  v36 = v15;
  v37 = *(a1 + 64);
  v38 = *(a1 + 88);
  v16 = [v15 remoteObjectProxyWithErrorHandler:&v31];
  v17 = v16;
  if (v6)
  {
    [v16 receivedResponseForRequestID:*(a1 + 88) responsePayload:0 responseType:0 responseError:v6 fromMember:{v13, v31, v32, v33, v34, v35, v36}];
  }

  else
  {
    v18 = *(a1 + 80);
    v19 = *(a1 + 80);
    if (v19)
    {
      v20 = [v19 domain];

      if (v20 == @"COMeshControllerErrorDomain" && ([*(a1 + 80) code] + 4101) <= 1)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1109 userInfo:0];

        v18 = v21;
      }
    }

    v22 = *(a1 + 88);
    v23 = [v2 payload];
    v24 = [v2 payloadType];
    [v17 receivedResponseForRequestID:v22 responsePayload:v23 responseType:v24 responseError:v18 fromMember:v13];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111()
{
  v0 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111_cold_1();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2_114;
    v7[3] = &unk_278E182C0;
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v3;
    v11 = *(a1 + 64);
    dispatch_async(v6, v7);
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2_114(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115;
  v17[3] = &unk_278E18220;
  v17[4] = *(a1 + 40);
  v3 = v2;
  v18 = v3;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v17];
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 48);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) memberSnapshot];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }

  [v4 receivedRecipientListForRequestID:*(a1 + 56) recipients:v5];
  v12 = *MEMORY[0x277D85DE8];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115()
{
  v0 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115_cold_1();
  }
}

- (void)sessionEndedForSubTopic:(id)a3
{
  v8 = a3;
  v4 = [(COService *)self currentClient];
  v5 = [(COMessagingService *)self connectedClients];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 sessions];
    [v7 removeObjectForKey:v8];
  }
}

- (void)addOn:(id)a3 receivedRequest:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COService *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke;
  v15[3] = &unk_278E15D00;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [v2 payloadType];
    *buf = 134218498;
    v57 = v4;
    v58 = 2112;
    v59 = v2;
    v60 = 2112;
    v61 = v5;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p Received a request %@ of type %@", buf, 0x20u);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [*(a1 + 40) _clustersForAddOn:*(a1 + 48)];
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v7)
  {
    v8 = *v51;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        v11 = [*(a1 + 40) requestHandlers];
        v12 = [v11 objectForKey:v10];

        v13 = [v2 topic];
        v14 = [v12 objectForKey:v13];

        v15 = [v2 payloadType];
        v16 = [v14 objectForKey:v15];

        if (v16)
        {

          v26 = [v16 connection];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119;
          v46[3] = &unk_278E18310;
          v46[4] = *(a1 + 40);
          v27 = v16;
          v47 = v27;
          v28 = v2;
          v48 = v28;
          v49 = *(a1 + 56);
          v29 = [v26 remoteObjectProxyWithErrorHandler:v46];

          v30 = [*(a1 + 32) sender];
          v31 = [v30 memberSnapshot];

          objc_initWeak(buf, *(a1 + 40));
          v32 = [v28 payload];
          v33 = [v28 payloadType];
          v34 = [v28 requestID];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_120;
          v42[3] = &unk_278E18360;
          objc_copyWeak(&v45, buf);
          v35 = v27;
          v43 = v35;
          v44 = *(a1 + 56);
          [v29 receivedRequestWithPayload:v32 payloadType:v33 requestID:v34 fromMember:v31 withCallback:v42];

          objc_destroyWeak(&v45);
          objc_destroyWeak(buf);

          goto LABEL_23;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [*(a1 + 40) connectedClients];
  v18 = [v17 allValues];

  v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v19)
  {
    v20 = *v39;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = [*(*(&v38 + 1) + 8 * v21) topic];
        v23 = [v2 topic];
        v24 = [v22 isEqualToString:v23];

        if (v24)
        {
          v25 = -1101;
          goto LABEL_22;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v38 objects:v54 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v25 = -1114;
LABEL_22:

  v36 = objc_alloc(MEMORY[0x277CCA9B8]);
  v35 = [v36 initWithDomain:*MEMORY[0x277CFCF10] code:v25 userInfo:0];
  (*(*(a1 + 56) + 16))();
LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119_cold_1();
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CFCF10];
  v10 = *MEMORY[0x277CCA7E8];
  v11[0] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 errorWithDomain:v6 code:-1115 userInfo:v7];

  (*(*(a1 + 56) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_120(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained dispatchQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_2;
    v13[3] = &unk_278E18338;
    v13[4] = v11;
    v14 = a1[4];
    v15 = v7;
    v18 = a1[5];
    v16 = v8;
    v17 = v9;
    dispatch_async(v12, v13);
  }
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) meter];
  v3 = [*(a1 + 40) clientBundleIdentifier];
  v4 = [v2 clientIdentifier:v3 canReceiveLength:{objc_msgSend(*(a1 + 48), "length")}];

  if (v4)
  {
    v9 = objc_alloc_init(COMessagingResponse);
    [(COMessagingResponse *)v9 setPayload:*(a1 + 48)];
    [(COMessagingResponse *)v9 setPayloadType:*(a1 + 56)];
    v5 = *(a1 + 64);
    v6 = *(*(a1 + 72) + 16);
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1103 userInfo:0];
    v6 = *(v7 + 16);
    v9 = v8;
  }

  v6();
}

- (void)_addOnAdded:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDelegate:self];
  v20 = v4;
  v5 = [(COService *)self _clustersForAddOn:v4];
  v6 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v36 = self;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Add-on added for clusters %@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v7;
        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = [(COMessagingService *)self outstandingActivateCompletionHandlers];
        v10 = [v9 objectForKey:v8];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              v17 = COCoreLogForCategory(10);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v36 = self;
                v37 = 2112;
                v38 = v8;
                _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p Invoking clients waiting on message channel activation for cluster %@", buf, 0x16u);
              }

              [(COMessagingService *)self _completeActivationForClient:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v13);
        }

        if (v11)
        {
          v18 = [(COMessagingService *)self outstandingActivateCompletionHandlers];
          [v18 removeObjectForKey:v8];
        }

        v7 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDelegate:0];
  v5 = [(COService *)self _clustersForAddOn:v4];

  v6 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Add-on removed for clusters %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_applicableToCluster:(id)a3
{
  v3 = [a3 configuration];
  v4 = ([v3 requiredServices] >> 3) & 1;

  return v4;
}

- (void)_completeActivationForClient:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "%p Found a client already registered for requests of type %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestWithPayload:(uint64_t)a1 payloadType:(void *)a2 requestType:requestID:members:activityToken:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 cluster];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  [*(v1 + 48) processIdentifier];
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
  v10 = *MEMORY[0x277D85DE8];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  [*(v1 + 40) processIdentifier];
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
  v10 = *MEMORY[0x277D85DE8];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  [*(v1 + 40) processIdentifier];
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
  v10 = *MEMORY[0x277D85DE8];
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = [*(v1 + 40) connection];
  [v3 processIdentifier];
  v10 = *(v0 + 48);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

@end