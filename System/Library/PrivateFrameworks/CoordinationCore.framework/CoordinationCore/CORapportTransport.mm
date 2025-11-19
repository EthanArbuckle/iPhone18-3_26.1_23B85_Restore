@interface CORapportTransport
+ (void)_commandPayloadFromRapportRepresentation:(id)a3 result:(id)a4;
- (BOOL)_validateSource:(id)a3 options:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsLeaderElection;
- (CORapportTransport)initWithDiscoveryRecord:(id)a3 executionContext:(id)a4;
- (COTransportDelegate)delegate;
- (NSString)description;
- (double)currentPingTimeout;
- (id)_eventIDForClass:(Class)a3;
- (id)_serializedDataForCommand:(id)a3;
- (id)shortDescription;
- (int)listeningPort;
- (unint64_t)hash;
- (void)_commandForIdentifier:(id)a3 fromData:(id)a4 result:(id)a5;
- (void)_commandPayloadFromRapportRepresentationWithValidation:(id)a3 result:(id)a4;
- (void)_handleDisconnect;
- (void)_handleOnDemanNodeCreationRequest;
- (void)_handleRPErrorFlagsUpdate;
- (void)_handleRPIsUsingOnDemandConnection;
- (void)_handleRPStateUpdate;
- (void)_registerHandlersOnClient;
- (void)_setUpRegistrationCompletionHandlers;
- (void)_updateRequestTimesFromRapportRepresentation:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5;
- (void)activateWithCompletion:(id)a3;
- (void)deregisterCommandForClass:(Class)a3;
- (void)deregisterRequestForClass:(Class)a3;
- (void)handleEventIdentifier:(id)a3 rapportRepresentation:(id)a4 options:(id)a5;
- (void)handleRequestFromUnknownNodeWithIdentifier:(id)a3 rapportRepresentation:(id)a4 options:(id)a5 responseHandler:(id)a6 at:(unint64_t)a7;
- (void)handleRequestIdentifier:(id)a3 rapportRepresentation:(id)a4 options:(id)a5 responseHandler:(id)a6 at:(unint64_t)a7;
- (void)handleResponseToRequest:(id)a3 rapportRepresentation:(id)a4 options:(id)a5 error:(id)a6 responseHandler:(id)a7 at:(unint64_t)a8;
- (void)invalidateWithError:(id)a3;
- (void)pingWithCallback:(id)a3;
- (void)registerCommandForClass:(Class)a3 withCompletion:(id)a4;
- (void)registerRequestForClass:(Class)a3 withCompletion:(id)a4;
- (void)removeAsSink:(id)a3;
- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4;
- (void)sendRequest:(id)a3 withResponseHandler:(id)a4;
- (void)setAsSink:(id)a3;
- (void)sourceHasBeenActivated;
@end

@implementation CORapportTransport

- (CORapportTransport)initWithDiscoveryRecord:(id)a3 executionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = CORapportTransport;
  v9 = [(CORapportTransport *)&v29 init];
  if (v9)
  {
    v10 = [v8 networkActivityFactory];
    v11 = [v10 activityWithLabel:1 parentActivity:0];
    activity = v9->_activity;
    v9->_activity = v11;

    v13 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sinks = v9->_sinks;
    v9->_sinks = v13;

    objc_storeStrong(&v9->_record, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v8 constituentForMe];
      remote = v9->_remote;
      v9->_remote = v15;
    }

    if ([v7 conformsToProtocol:&unk_2857CCAF8])
    {
      v17 = [v7 companionLinkProvider];
      v18 = v17[2]();
      client = v9->_client;
      v9->_client = v18;
    }

    objc_storeStrong(&v9->_executionContext, a4);
    v20 = [MEMORY[0x277CBEB38] dictionary];
    counters = v9->_counters;
    v9->_counters = v20;

    v22 = [MEMORY[0x277CBEB38] dictionary];
    commands = v9->_commands;
    v9->_commands = v22;

    v24 = [v8 objectForKey:0x2857B7208];
    v9->_minimumPingInterval = [v24 integerValue];

    v25 = [v8 objectForKey:0x2857B7228];
    v9->_maximumPingInterval = [v25 integerValue];

    v26 = [MEMORY[0x277CBEB38] dictionary];
    registrationCompletions = v9->_registrationCompletions;
    v9->_registrationCompletions = v26;

    [(CORapportTransport *)v9 _registerHandlersOnClient];
    [(CORapportTransport *)v9 _setUpRegistrationCompletionHandlers];
  }

  return v9;
}

- (NSString)description
{
  v3 = [(CORapportTransport *)self executionContext];
  v4 = [v3 constituentForMe];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(CORapportTransport *)self remote];
  v9 = [v5 stringWithFormat:@"<%@: %p, %@ -> %@>", v7, self, v4, v8];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CORapportTransport *)self executionContext];
  v5 = [v4 meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", v5, v7, self];

  return v8;
}

- (int)listeningPort
{
  v2 = [(COCompanionLinkClientProtocol *)self->_client localDevice];
  v3 = [v2 listeningPort];

  return v3;
}

- (void)setAsSink:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CORapportTransport *)self shortDescription];
    v14 = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setting sink for transport %@", &v14, 0x16u);
  }

  v7 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(CORapportTransport *)self executionContext];
    [v9 assertDispatchQueue];

    v10 = [v4 record];
    v11 = [v10 IDSIdentifier];

    v12 = [(CORapportTransport *)self sinks];
    [v12 setObject:v4 forKey:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeAsSink:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CORapportTransport *)self shortDescription];
    v14 = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removing sink for transport %@", &v14, 0x16u);
  }

  v7 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(CORapportTransport *)self executionContext];
    [v9 assertDispatchQueue];

    v10 = [v4 record];
    v11 = [v10 IDSIdentifier];

    v12 = [(CORapportTransport *)self sinks];
    [v12 removeObjectForKey:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsLeaderElection
{
  v2 = [(CORapportTransport *)self executionContext];
  v3 = [v2 leaderElectionConfigured];

  return v3;
}

- (void)sourceHasBeenActivated
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = [(CORapportTransport *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    activated = self->_activated;

    if (!activated)
    {
      v5 = [(CORapportTransport *)self activationHandler];

      if (v5)
      {
        v6 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(CORapportTransport *)self shortDescription];
          *buf = 138543362;
          v12 = v7;
          _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ completing deferred activation", buf, 0xCu);
        }

        v8 = [(CORapportTransport *)self activationHandler];
        [(CORapportTransport *)self activateWithCompletion:v8];
        [(CORapportTransport *)self setActivationHandler:0];
      }
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)activateWithCompletion:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CORapportTransport *)self executionContext];
  [v5 assertDispatchQueue];

  if (self->_activated)
  {
    v6 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CORapportTransport *)self shortDescription];
      *buf = 138543362;
      v32 = v7;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Rapport Transport is already active", buf, 0xCu);
    }
  }

  else
  {
    v8 = [(CORapportTransport *)self record];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      self->_activated = 1;
      v10 = [(CORapportTransport *)self activity];

      if (v10)
      {
        v11 = [(CORapportTransport *)self activity];
        nw_activity_activate();
      }

      v4[2](v4, 0);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = [(CORapportTransport *)self sinks];
      v12 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = *v27;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v6);
            }

            v15 = *(*(&v26 + 1) + 8 * i);
            v16 = [(CORapportTransport *)self sinks];
            v17 = [v16 objectForKey:v15];

            [v17 sourceHasBeenActivated];
          }

          v12 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v6 = self->_record;
      v18 = [v6 sourceTransport];
      if ([v18 isActivated])
      {
        objc_initWeak(buf, self);
        v19 = [(CORapportTransport *)self client];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __45__CORapportTransport_activateWithCompletion___block_invoke;
        v23[3] = &unk_278E15C10;
        objc_copyWeak(&v25, buf);
        v24 = v4;
        [v19 activateWithCompletion:v23];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      else
      {
        v20 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(CORapportTransport *)self shortDescription];
          *buf = 138543362;
          v32 = v21;
          _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring activation since source transport is not yet active", buf, 0xCu);
        }

        [(CORapportTransport *)self setActivationHandler:v4];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __45__CORapportTransport_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__CORapportTransport_activateWithCompletion___block_invoke_2;
    v7[3] = &unk_278E15BE8;
    objc_copyWeak(&v11, (a1 + 40));
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    [v6 dispatchAsync:v7];

    objc_destroyWeak(&v11);
  }
}

void __45__CORapportTransport_activateWithCompletion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!*(a1 + 32))
    {
      v3 = [*(a1 + 40) activity];

      if (v3)
      {
        v4 = [*(a1 + 40) activity];
        nw_activity_activate();
      }

      v5 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [WeakRetained shortDescription];
        v7 = [WeakRetained client];
        v10 = 138543618;
        v11 = v6;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ activated transport with client %@", &v10, 0x16u);
      }

      WeakRetained[8] = 1;
      v8 = *(a1 + 32);
    }

    (*(*(a1 + 48) + 16))();
    [WeakRetained _handleOnDemanNodeCreationRequest];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithError:(id)a3
{
  v16 = a3;
  v4 = [(CORapportTransport *)self executionContext];
  [v4 assertDispatchQueue];

  v5 = [(CORapportTransport *)self activity];
  if (v5 && nw_activity_is_activated())
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = mach_continuous_time();
      activation_time = nw_activity_get_activation_time();
      xpc_dictionary_set_uint64(v6, "lifetime", v7 - activation_time);
      [(CORapportTransport *)self averageRequestTime];
      xpc_dictionary_set_double(v6, "rtt", v9);
      xpc_dictionary_set_uint64(v6, "requests", [(CORapportTransport *)self requestCount]);
      xpc_dictionary_set_uint64(v6, "transport_type", 1uLL);
      v10 = [(CORapportTransport *)self remote];
      v11 = v10;
      if (v10)
      {
        xpc_dictionary_set_uint64(v6, "nodeType", [v10 type]);
        xpc_dictionary_set_uint64(v6, "nodeFlags", [v11 flags]);
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  v12 = [(CORapportTransport *)self client];
  [v12 invalidate];

  v13 = [(CORapportTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 transport:self didInvalidateWithError:v16];
  }

  v14 = [(CORapportTransport *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CORapportTransport *)self removeAsSink:self];
  }

  else
  {
    v15 = [v14 sourceTransport];
    [v15 removeAsSink:self];
  }
}

- (void)registerRequestForClass:(Class)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(CORapportTransport *)self executionContext];
  [v7 assertDispatchQueue];

  v8 = [(CORapportTransport *)self _eventIDForClass:a3];
  v9 = [(CORapportTransport *)self commands];
  [v9 setObject:a3 forKey:v8];

  v10 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [(CORapportTransport *)self registrationCompletions];
      v13 = MEMORY[0x245D5FF10](v6);
      [v12 setObject:v13 forKey:v8];

      objc_initWeak(&location, self);
      v14 = [(CORapportTransport *)self client];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke;
      v15[3] = &unk_278E15C60;
      objc_copyWeak(&v17, &location);
      v16 = v8;
      [v14 registerRequestID:v16 options:0 handler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v6[2](v6);
  }
}

void __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained executionContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2;
    v14[3] = &unk_278E15C38;
    v15 = v8;
    v16 = v12;
    v17 = *(a1 + 32);
    v18 = v7;
    v19 = v9;
    v20 = v10;
    [v13 dispatchAsync:v14];
  }
}

void __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
  if ([v2 length] && (objc_msgSend(*(a1 + 40), "sinks"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v2), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 handleRequestIdentifier:*(a1 + 48) rapportRepresentation:*(a1 + 56) options:*(a1 + 32) responseHandler:*(a1 + 64) at:*(a1 + 72)];
  }

  else
  {
    v5 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2_cold_1();
    }

    [*(a1 + 40) handleRequestFromUnknownNodeWithIdentifier:*(a1 + 48) rapportRepresentation:*(a1 + 56) options:*(a1 + 32) responseHandler:*(a1 + 64) at:*(a1 + 72)];
  }
}

- (void)registerCommandForClass:(Class)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(CORapportTransport *)self executionContext];
  [v7 assertDispatchQueue];

  v8 = [(CORapportTransport *)self _eventIDForClass:a3];
  v9 = [(CORapportTransport *)self commands];
  [v9 setObject:a3 forKey:v8];

  v10 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [(CORapportTransport *)self registrationCompletions];
      v13 = MEMORY[0x245D5FF10](v6);
      [v12 setObject:v13 forKey:v8];

      objc_initWeak(&location, self);
      v14 = [(CORapportTransport *)self client];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke;
      v15[3] = &unk_278E15CB0;
      objc_copyWeak(&v17, &location);
      v16 = v8;
      [v14 registerEventID:v16 options:0 handler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v6[2](v6);
  }
}

void __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2;
    v10[3] = &unk_278E15C88;
    v11 = v6;
    v12 = v8;
    v13 = *(a1 + 32);
    v14 = v5;
    [v9 dispatchAsync:v10];
  }
}

void __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
  if ([v2 length] && (objc_msgSend(*(a1 + 40), "sinks"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v2), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 handleEventIdentifier:*(a1 + 48) rapportRepresentation:*(a1 + 56) options:*(a1 + 32)];
  }

  else
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2_cold_1(a1);
    }
  }
}

- (void)deregisterRequestForClass:(Class)a3
{
  v5 = [(CORapportTransport *)self executionContext];
  [v5 assertDispatchQueue];

  v10 = [(CORapportTransport *)self _eventIDForClass:a3];
  v6 = [(CORapportTransport *)self commands];
  [v6 removeObjectForKey:v10];

  v7 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v9 = [(CORapportTransport *)self client];
    [v9 deregisterRequestID:v10];
  }
}

- (void)deregisterCommandForClass:(Class)a3
{
  v5 = [(CORapportTransport *)self executionContext];
  [v5 assertDispatchQueue];

  v10 = [(CORapportTransport *)self _eventIDForClass:a3];
  v6 = [(CORapportTransport *)self commands];
  [v6 removeObjectForKey:v10];

  v7 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v9 = [(CORapportTransport *)self client];
    [v9 deregisterEventID:v10];
  }
}

- (void)_setUpRegistrationCompletionHandlers
{
  v3 = [(CORapportTransport *)self executionContext];
  [v3 assertDispatchQueue];

  objc_initWeak(&location, self);
  v4 = [(CORapportTransport *)self client];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke;
  v8[3] = &unk_278E15CD8;
  objc_copyWeak(&v9, &location);
  [v4 setRequestIDRegistrationCompletion:v8];

  v5 = [(CORapportTransport *)self client];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_99;
  v6[3] = &unk_278E15CD8;
  objc_copyWeak(&v7, &location);
  [v5 setEventIDRegistrationCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2;
    v7[3] = &unk_278E156B0;
    v7[4] = v5;
    v8 = v3;
    [v6 dispatchAsync:v7];
  }
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationCompletions];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) shortDescription];
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully registered request ID %{public}@", &v8, 0x16u);
    }

    v3[2](v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2_100;
    v7[3] = &unk_278E156B0;
    v7[4] = v5;
    v8 = v3;
    [v6 dispatchAsync:v7];
  }
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2_100(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationCompletions];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) shortDescription];
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully registered event ID %{public}@", &v8, 0x16u);
    }

    v3[2](v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendCommand:(id)a3 withCompletionHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORapportTransport *)self executionContext];
  [v8 assertDispatchQueue];

  v9 = [(CORapportTransport *)self _eventIDForClass:objc_opt_class()];
  v10 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CORapportTransport *)self shortDescription];
    *buf = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sending %@", buf, 0x16u);
  }

  v12 = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(CORapportTransport *)self executionContext];
    v15 = [v14 constituentForMe];
    [(CORapportTransport *)self setRemote:v15];

    v16 = [(CORapportTransport *)self delegate];
    v17 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(CORapportTransport *)self shortDescription];
      *buf = 138543618;
      v32 = v18;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Got a command %{public}@", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v16 transport:self didReceiveCommand:v6];
    }

    v7[2](v7, 0);
  }

  else
  {
    v16 = [(CORapportTransport *)self _serializedDataForCommand:v6];
    v19 = [(CORapportTransport *)self executionContext];
    v20 = [v19 constituentForMe];

    v29[0] = @"source";
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
    v29[1] = @"command";
    v30[0] = v21;
    v30[1] = v16;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

    objc_initWeak(buf, self);
    v23 = [(CORapportTransport *)self client];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke;
    v25[3] = &unk_278E15D28;
    objc_copyWeak(&v28, buf);
    v26 = v9;
    v27 = v7;
    [v23 sendEventID:v26 event:v22 options:0 completion:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2;
    v7[3] = &unk_278E15D00;
    v7[4] = v5;
    v8 = a1[4];
    v9 = v3;
    v10 = a1[5];
    [v6 dispatchAsync:v7];
  }
}

uint64_t __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  return (*(*(a1 + 56) + 16))();
}

- (void)sendRequest:(id)a3 withResponseHandler:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a4;
  v7 = [(CORapportTransport *)self executionContext];
  [v7 assertDispatchQueue];

  objc_initWeak(&location, self);
  v8 = [(CORapportTransport *)self record];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    v9 = [(CORapportTransport *)self executionContext];
    v10 = [v9 constituentForMe];
    [(CORapportTransport *)self setRemote:v10];

    v11 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CORapportTransport *)self shortDescription];
      *buf = 138543618;
      v47 = v12;
      v48 = 2114;
      v49 = v6;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Got a request %{public}@", buf, 0x16u);
    }

    v13 = [(CORapportTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke;
      v41[3] = &unk_278E15D78;
      objc_copyWeak(&v44, &location);
      v43 = v35;
      v42 = v6;
      [v13 transport:self didReceiveRequest:v42 callback:v41];

      objc_destroyWeak(&v44);
    }
  }

  else
  {
    v13 = [(CORapportTransport *)self _serializedDataForCommand:v6];
    v14 = [(CORapportTransport *)self executionContext];
    v34 = [v14 constituentForMe];

    v52[0] = @"source";
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v34 requiringSecureCoding:1 error:0];
    v52[1] = @"command";
    v53[0] = v15;
    v53[1] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

    v17 = [(CORapportTransport *)self _eventIDForClass:objc_opt_class()];
    v18 = [(CORapportTransport *)self client];
    [v6 responseTimeout];
    if (v19 >= 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    if (v20 <= 0.0)
    {
      v24 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(CORapportTransport *)self shortDescription];
        *buf = 138543618;
        v47 = v26;
        v48 = 2114;
        v49 = v17;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %{public}@", buf, 0x16u);
      }

      v23 = 0;
    }

    else
    {
      v21 = MEMORY[0x277CBEAC0];
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      v23 = [v21 dictionaryWithObject:v22 forKey:*MEMORY[0x277D442F0]];

      v24 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CORapportTransport *)self shortDescription];
        *buf = 138543874;
        v47 = v25;
        v48 = 2114;
        v49 = v17;
        v50 = 2048;
        v51 = v20;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %{public}@ with timeout of %g", buf, 0x20u);
      }
    }

    v27 = [v6 activity];
    v28 = [(CORapportTransport *)self executionContext];
    v29 = [v28 networkActivityFactory];
    v30 = [v29 activityWithLabel:2 parentActivity:v27];

    if (v30)
    {
      nw_activity_activate();
    }

    v31 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_109;
    v36[3] = &unk_278E15DC8;
    objc_copyWeak(v40, &location);
    v32 = v30;
    v37 = v32;
    v38 = v6;
    v39 = v35;
    v40[1] = v31;
    [v18 sendRequestID:v17 request:v16 options:v23 responseHandler:v36];

    objc_destroyWeak(v40);
  }

  objc_destroyWeak(&location);
  v33 = *MEMORY[0x277D85DE8];
}

void __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_2;
    v10[3] = &unk_278E15D50;
    v14 = a1[5];
    v11 = a1[4];
    v12 = v5;
    v13 = v6;
    [v9 dispatchAsync:v10];
  }
}

void __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_109(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained executionContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_2_110;
    v15[3] = &unk_278E15DA0;
    v16 = *(a1 + 32);
    v17 = v9;
    v18 = v11;
    v19 = *(a1 + 40);
    v20 = v7;
    v21 = v8;
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v22 = v13;
    v23 = v14;
    [v12 dispatchAsync:v15];
  }
}

uint64_t __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_2_110(void *a1)
{
  if (a1[4])
  {
    a1[5];
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      xpc_dictionary_set_uint64(v2, "transport_type", 1uLL);
      v4 = a1[4];
      nw_activity_submit_metrics();
    }

    v5 = a1[4];
    nw_activity_complete_with_reason();
  }

  v6 = a1[7];
  v7 = a1[8];
  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[9];
  v11 = a1[10];
  v12 = a1[11];

  return [v8 handleResponseToRequest:v6 rapportRepresentation:v7 options:v10 error:v9 responseHandler:v11 at:v12];
}

- (void)_handleOnDemanNodeCreationRequest
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(CORapportTransport *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CORapportTransport *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unhandledRequest];
    if (v5)
    {
      v6 = v5;
      v7 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CORapportTransport *)self shortDescription];
        v14 = 138543362;
        v15 = v8;
        _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found an outstanding on demand node creation request", &v14, 0xCu);
      }

      v9 = [v6 identifier];
      v10 = [v6 data];
      v11 = [v6 options];
      v12 = [v6 handler];
      -[CORapportTransport handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:](self, "handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:", v9, v10, v11, v12, [v6 timestamp]);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_commandForIdentifier:(id)a3 fromData:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CORapportTransport *)self executionContext];
  [v11 assertDispatchQueue];

  if (!v9)
  {
    v17 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CORapportTransport _commandForIdentifier:? fromData:? result:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = -4000;
    goto LABEL_10;
  }

  v12 = [(CORapportTransport *)self commands];
  v13 = [v12 objectForKey:v8];

  if (!v13)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = -4001;
LABEL_10:
    v15 = [v18 errorWithDomain:@"COMeshNodeErrorDomain" code:v19 userInfo:0];
    v14 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v13 fromData:v9 error:&v20];
  v15 = v20;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];

      v14 = 0;
      v15 = v16;
    }
  }

LABEL_11:
  v10[2](v10, v14, v15);
}

- (void)handleRequestFromUnknownNodeWithIdentifier:(id)a3 rapportRepresentation:(id)a4 options:(id)a5 responseHandler:(id)a6 at:(unint64_t)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(CORapportTransport *)self executionContext];
  [v16 assertDispatchQueue];

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__4;
  v50 = __Block_byref_object_dispose__4;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke;
  v27[3] = &unk_278E15DF0;
  v27[4] = &v28;
  v27[5] = &v34;
  [CORapportTransport _commandPayloadFromRapportRepresentation:v13 result:v27];
  v17 = v35[5];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2;
  v26[3] = &unk_278E15E18;
  v26[4] = &v46;
  v26[5] = &v40;
  [(CORapportTransport *)self _commandForIdentifier:v12 fromData:v17 result:v26];
  if (v29[5])
  {
    [v41[5] _setSendingConstituent:?];
  }

  [v41[5] _setRapportOptions:v14];
  if (v47[5])
  {
    (*(v15 + 2))(v15, 0, 0);
  }

  else
  {
    v18 = [(CORapportTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(CORapportTransport *)self shortDescription];
        *buf = 138543362;
        v53 = v20;
        _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ received request for unknown node. Informing delegate", buf, 0xCu);
      }

      v21 = [COUnhandledRapportRequest alloc];
      v22 = [(COUnhandledRapportRequest *)v21 initWithRequest:v41[5] identifier:v12 data:v13 options:v14 handler:v15 at:a7];
      [v18 transport:self didReceiveUnhandledRequest:v22];
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v24 = v47[5];
      v47[5] = v23;

      (*(v15 + 2))(v15, 0, 0, v47[5]);
    }
  }

  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)handleRequestIdentifier:(id)a3 rapportRepresentation:(id)a4 options:(id)a5 responseHandler:(id)a6 at:(unint64_t)a7
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(CORapportTransport *)self executionContext];
  [v16 assertDispatchQueue];

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__4;
  v62 = __Block_byref_object_dispose__4;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__4;
  v56 = __Block_byref_object_dispose__4;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__4;
  v50 = __Block_byref_object_dispose__4;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke;
  v39[3] = &unk_278E15DF0;
  v39[4] = &v40;
  v39[5] = &v46;
  [CORapportTransport _commandPayloadFromRapportRepresentation:v13 result:v39];
  v17 = v47[5];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2;
  v38[3] = &unk_278E15E18;
  v38[4] = &v58;
  v38[5] = &v52;
  [(CORapportTransport *)self _commandForIdentifier:v12 fromData:v17 result:v38];
  v18 = v53[5];
  if (v18)
  {
    if (v41[5])
    {
      [v18 _setSendingConstituent:?];
      v18 = v53[5];
    }

    [v18 _setRapportOptions:v14];
    v19 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(CORapportTransport *)self shortDescription];
      objc_claimAutoreleasedReturnValue();
      [CORapportTransport handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:];
    }

    if (![(CORapportTransport *)self _validateSource:v41[5] options:v14])
    {
      v20 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:];
      }

      v21 = [(CORapportTransport *)self delegate];
      location = 0;
      p_location = &location;
      v36 = 0x2020000000;
      v37 = 0;
      if (v41[5] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v22 = [(CORapportTransport *)self remote];
        v23 = v41[5];
        v24 = v53[5];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_123;
        v33[3] = &unk_278E15E40;
        v33[4] = &location;
        [v21 transport:self shouldUpdateRemoteConstituent:v22 to:v23 forCommand:v24 completionHandler:v33];
      }

      if ((p_location[3] & 1) == 0)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
        v28 = v59[5];
        v59[5] = v27;

        (*(v15 + 2))(v15, 0, 0, v59[5]);
        _Block_object_dispose(&location, 8);
LABEL_21:

        goto LABEL_22;
      }

      v25 = [(CORapportTransport *)self remote];
      [(CORapportTransport *)self setRemote:v41[5]];
      if (objc_opt_respondsToSelector())
      {
        [v21 transport:self didUpdateRemoteConstituent:v25 to:v41[5]];
      }

      _Block_object_dispose(&location, 8);
    }

    v21 = [(CORapportTransport *)self delegate];
    objc_initWeak(&location, self);
    if (objc_opt_respondsToSelector())
    {
      v26 = v53[5];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2_127;
      v30[3] = &unk_278E15E90;
      objc_copyWeak(v32, &location);
      v32[1] = a7;
      v31 = v15;
      [v21 transport:self didReceiveRequest:v26 callback:v30];

      objc_destroyWeak(v32);
    }

    objc_destroyWeak(&location);
    goto LABEL_21;
  }

  (*(v15 + 2))(v15, 0, 0, v59[5]);
LABEL_22:
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);
  v29 = *MEMORY[0x277D85DE8];
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2_127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3;
    v12[3] = &unk_278E15E68;
    v13 = v6;
    v14 = v8;
    v10 = v5;
    v11 = *(a1 + 48);
    v15 = v10;
    v17 = v11;
    v16 = *(a1 + 32);
    [v9 dispatchAsync:v12];
  }
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_1();
    }

    v3 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) _serializedDataForCommand:*(a1 + 48)];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) _eventIDForClass:objc_opt_class()];
    v6 = [*(a1 + 40) executionContext];
    v7 = [v6 constituentForMe];

    v8 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_2();
    }

    v13[0] = @"source";
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    v14[0] = v9;
    v14[1] = v2;
    v13[1] = @"command";
    v13[2] = @"response";
    v14[2] = v5;
    v13[3] = @"overhead";
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:(clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 64))];
    v14[3] = v10;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  v11 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleResponseToRequest:(id)a3 rapportRepresentation:(id)a4 options:(id)a5 error:(id)a6 responseHandler:(id)a7 at:(unint64_t)a8
{
  v93 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v52 = a5;
  v15 = a6;
  v16 = a7;
  v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__4;
  v77 = __Block_byref_object_dispose__4;
  v18 = v15;
  v78 = v18;
  v19 = [(CORapportTransport *)self executionContext];
  [v19 assertDispatchQueue];

  v20 = [v14 objectForKey:@"response"];
  objc_initWeak(&location, self);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke;
  v67[3] = &unk_278E15EB8;
  objc_copyWeak(&v71, &location);
  v70 = &v73;
  v21 = v13;
  v68 = v21;
  v22 = v16;
  v69 = v22;
  v23 = MEMORY[0x245D5FF10](v67);
  if (!v74[5])
  {
    v25 = [objc_opt_class() acceptableResponses];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_128;
    v65[3] = &unk_278E15EE0;
    v65[4] = self;
    v66 = v20;
    v50 = v25;
    v26 = [v25 objectsPassingTest:v65];
    v27 = [v26 anyObject];

    if (!v27)
    {
      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v34 = v74[5];
      v74[5] = v33;

      v23[2](v23);
LABEL_36:

      goto LABEL_37;
    }

    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__4;
    v91 = __Block_byref_object_dispose__4;
    v92 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__4;
    v63 = __Block_byref_object_dispose__4;
    v64 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_2;
    v54[3] = &unk_278E15F08;
    v54[4] = &v87;
    v54[5] = &v59;
    v54[6] = &v55;
    [(CORapportTransport *)self _commandPayloadFromRapportRepresentationWithValidation:v14 result:v54];
    if (v60[5])
    {
      v28 = v88[5];
      if (v28)
      {
        v53 = 0;
        v29 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v27 fromData:v28 error:&v53];
        v49 = v53;
        if (v29)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((v56[3] & 1) == 0)
            {
              v30 = COCoreLogForCategory(17);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [(CORapportTransport *)self shortDescription];
                objc_claimAutoreleasedReturnValue();
                [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
              }

              v47 = [(CORapportTransport *)self delegate];
              if (objc_opt_respondsToSelector())
              {
                v31 = [(CORapportTransport *)self remote];
                [v47 transport:self willUpdateRemoteConstituent:v31 to:v60[5]];
              }

              [(CORapportTransport *)self setRemote:v60[5], v47];
              if (objc_opt_respondsToSelector())
              {
                v32 = [(CORapportTransport *)self remote];
                [v48 transport:self didUpdateRemoteConstituent:v32 to:v60[5]];
              }
            }

            [(CORapportTransport *)self _updateRequestTimesFromRapportRepresentation:v14 start:a8 end:v17];
            [v29 _setRapportOptions:v52];
            (*(v22 + 2))(v22, v21, v29, 0);
          }

          else
          {
            v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
            v42 = v74[5];
            v74[5] = v41;

            v23[2](v23);
          }
        }

        else
        {
          v39 = COCoreLogForCategory(17);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v46 = [(CORapportTransport *)self shortDescription];
            *buf = 138543874;
            v82 = v46;
            v83 = 2114;
            v84 = v21;
            v85 = 2114;
            v86 = v49;
            _os_log_error_impl(&dword_244378000, v39, OS_LOG_TYPE_ERROR, "%{public}@ failed to unarchive response for request %{public}@ with error = %{public}@", buf, 0x20u);
          }

          if (v49)
          {
            v79 = *MEMORY[0x277CCA7E8];
            v80 = v49;
            v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          }

          else
          {
            v40 = 0;
          }

          v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:v40];
          v44 = v74[5];
          v74[5] = v43;

          v23[2](v23);
        }

        goto LABEL_35;
      }

      v35 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
      }

      v36 = -4001;
    }

    else
    {
      v35 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
      }

      v36 = -4000;
    }

    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:v36 userInfo:0];
    v38 = v74[5];
    v74[5] = v37;

    v23[2](v23);
LABEL_35:
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);

    _Block_object_dispose(&v87, 8);
    goto LABEL_36;
  }

  v24 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [(CORapportTransport *)self shortDescription];
    objc_claimAutoreleasedReturnValue();
    [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
  }

  v23[2](v23);
LABEL_37:

  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v73, 8);
  v45 = *MEMORY[0x277D85DE8];
}

void __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained remote];
    if (v4 || [*(*(*(a1 + 48) + 8) + 40) code] != -6714)
    {
    }

    else
    {
      v5 = [*(*(*(a1 + 48) + 8) + 40) domain];
      v6 = [v5 isEqualToString:*MEMORY[0x277D44250]];

      if (v6)
      {
LABEL_10:
        v8 = *(a1 + 32);
        v9 = *(*(*(a1 + 48) + 8) + 40);
        (*(*(a1 + 40) + 16))();
        goto LABEL_11;
      }
    }

    v7 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

LABEL_11:
}

uint64_t __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_128(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _eventIDForClass:a2];
  v6 = [v5 isEqualToString:*(a1 + 40)];
  *a3 = v6;

  return v6;
}

void __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_2(void *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v11 = a3;
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  *(*(a1[6] + 8) + 24) = a4;
}

- (void)_updateRequestTimesFromRapportRepresentation:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5
{
  v8 = [a3 objectForKey:@"overhead"];
  if ([v8 BOOLValue])
  {
    v9 = [(CORapportTransport *)self requestCount]+ 1;
    v10 = [(CORapportTransport *)self executionContext];
    v11 = [v10 analyticsRecorder];

    if (v9 < 0x3E9)
    {
      [v8 doubleValue];
      v21 = ((a5 - a4) - v20) / 1000000.0;
      [(CORapportTransport *)self averageRequestTime];
      v23 = v22 * 1000.0;
      if (v21 <= v23)
      {
        v21 = v23 + (v21 - v23) / v9;
      }

      else
      {
        v9 = 1;
      }

      [(CORapportTransport *)self setRequestCount:v9];
      v24 = v21 / 1000.0;
      [(CORapportTransport *)self setAverageRequestTime:v24];
      HIDWORD(v25) = -1030792151 * v9;
      LODWORD(v25) = HIDWORD(v25);
      if ((v25 >> 2) > 0x28F5C28)
      {
        goto LABEL_12;
      }

      v26 = [(CORapportTransport *)self executionContext];
      v27 = [v26 label];

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke_135;
      v29[3] = &unk_278E15F30;
      *&v30[1] = v24;
      v30[2] = v9;
      v16 = v30;
      v30[0] = v27;
      v28 = v11[2];
      v18 = v27;
      v28(v11, 0x2857B5D88, v29);
    }

    else
    {
      [(CORapportTransport *)self averageRequestTime];
      v13 = v12;
      v14 = [(CORapportTransport *)self executionContext];
      v15 = [v14 label];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke;
      v31[3] = &unk_278E15F30;
      v32[1] = v13;
      v32[2] = v9;
      v16 = v32;
      v32[0] = v15;
      v17 = v11[2];
      v18 = v15;
      v17(v11, 0x2857B5D88, v31);
      [(CORapportTransport *)self setRequestCount:0];
      [(CORapportTransport *)self setAverageRequestTime:0.0];
      v19 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [CORapportTransport _updateRequestTimesFromRapportRepresentation:? start:? end:?];
      }
    }

LABEL_12:
  }
}

id __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2857B5FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[0] = v2;
  v8[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v8[2] = 0x2857B5DC8;
  v4 = *(a1 + 32);
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke_135(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2857B5FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[0] = v2;
  v8[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v8[2] = 0x2857B5DC8;
  v4 = *(a1 + 32);
  v9[1] = v3;
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)handleEventIdentifier:(id)a3 rapportRepresentation:(id)a4 options:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CORapportTransport *)self executionContext];
  [v11 assertDispatchQueue];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__CORapportTransport_handleEventIdentifier_rapportRepresentation_options___block_invoke;
  v24[3] = &unk_278E15DF0;
  v24[4] = &v25;
  v24[5] = &v31;
  [CORapportTransport _commandPayloadFromRapportRepresentation:v9 result:v24];
  if (v32[5])
  {
    v12 = [(CORapportTransport *)self commands];
    v13 = [v12 objectForKey:v8];

    if (v13)
    {
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v13 fromData:v32[5] error:0];
      v15 = 0;
      goto LABEL_9;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
  }

  else
  {
    v16 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CORapportTransport *)self shortDescription];
      objc_claimAutoreleasedReturnValue();
      [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
  }

  v15 = v17;
  v14 = 0;
LABEL_9:
  if (v26[5])
  {
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CORapportTransport *)self shortDescription];
      objc_claimAutoreleasedReturnValue();
      [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];

    v15 = v19;
    if (!v19)
    {
LABEL_15:
      if (v14)
      {
        if (v26[5])
        {
          [v14 _setSendingConstituent:?];
        }

        [v14 _setRapportOptions:v10];
      }

      v20 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
      }

      if ([(CORapportTransport *)self _validateSource:v26[5] options:v10])
      {
        v21 = [(CORapportTransport *)self delegate];
        if (v14)
        {
          if (objc_opt_respondsToSelector())
          {
            [v21 transport:self didReceiveCommand:v14];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v22 = COCoreLogForCategory(17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(CORapportTransport *)self shortDescription];
            objc_claimAutoreleasedReturnValue();
            [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
          }

          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
          [v21 transport:self didReceiveError:v15 forCommand:0];
          goto LABEL_32;
        }
      }

      else
      {
        v21 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(CORapportTransport *)self shortDescription];
          objc_claimAutoreleasedReturnValue();
          [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
        }
      }

      v15 = 0;
LABEL_32:
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __74__CORapportTransport_handleEventIdentifier_rapportRepresentation_options___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CORapportTransport *)self record];
    v6 = [v4 record];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CORapportTransport *)self record];
  v3 = [v2 hash];

  return v3;
}

- (double)currentPingTimeout
{
  [(CORapportTransport *)self averageRequestTime];
  v4 = ceil(v3 + v3);
  [(CORapportTransport *)self minimumPingInterval];
  if (v4 < v5)
  {
    v4 = v5;
  }

  [(CORapportTransport *)self maximumPingInterval];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)_commandPayloadFromRapportRepresentationWithValidation:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__CORapportTransport__commandPayloadFromRapportRepresentationWithValidation_result___block_invoke;
  v9[3] = &unk_278E15F58;
  v9[6] = &v20;
  v9[7] = &v10;
  v9[4] = self;
  v9[5] = &v14;
  [v8 _commandPayloadFromRapportRepresentation:v6 result:v9];
  v7[2](v7, v15[5], v21[5], *(v11 + 24));
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __84__CORapportTransport__commandPayloadFromRapportRepresentationWithValidation_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _validateSource:v12 options:0];
}

+ (void)_commandPayloadFromRapportRepresentation:(id)a3 result:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 objectForKey:@"source"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
    v8 = [v10 objectForKey:@"command"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v6 = v9;
    }

    else
    {
      v9 = 0;
      v6 = v8;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v5[2](v5, v7, v9);
}

- (id)_serializedDataForCommand:(id)a3
{
  v4 = a3;
  v5 = [(CORapportTransport *)self executionContext];
  [v5 assertDispatchQueue];

  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  if (!v7)
  {
    if (class_getMethodImplementation(v6, sel_supportsSecureCoding) && class_getMethodImplementation(v6, sel_encodeWithCoder_))
    {
      v8 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [CORapportTransport _serializedDataForCommand:];
      }
    }

    else
    {
      v8 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CORapportTransport *)v6 _serializedDataForCommand:v8];
      }
    }

    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA2A0] reason:0 userInfo:0];
    [v9 raise];
  }

  v10 = [(CORapportTransport *)self counters];
  v11 = NSStringFromClass(v6);
  v12 = [v10 objectForKey:v11];
  if (!v12)
  {
    v12 = objc_alloc_init(COMeshNodeMessageCounter);
    [v10 setObject:v12 forKey:v11];
  }

  v13 = [(COMeshNodeMessageCounter *)v12 count]+ 1;
  v14 = [v7 length];
  v15 = [(CORapportTransport *)self executionContext];
  v16 = [v15 analyticsRecorder];

  v17 = [(COMeshNodeMessageCounter *)v12 size];
  if (v13 > 0x3E7)
  {
    v34 = v7;
    v27 = v17;
    v28 = [(CORapportTransport *)self executionContext];
    v29 = [v28 label];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__CORapportTransport__serializedDataForCommand___block_invoke_2;
    v35[3] = &unk_278E15F80;
    *&v37[1] = v27;
    v37[2] = v13;
    v23 = v37;
    v36 = v11;
    v37[0] = v29;
    v30 = v11;
    v31 = v10;
    v32 = v16[2];
    v26 = v29;
    v32(v16, 0x2857B5DA8, v35);
    v10 = v31;
    v11 = v30;
    v22 = &v36;
    [(COMeshNodeMessageCounter *)v12 setCount:0];
    [(COMeshNodeMessageCounter *)v12 setSize:0];
  }

  else
  {
    v18 = v14 / v13 + v17 - v17 / v13;
    [(COMeshNodeMessageCounter *)v12 setCount:v13];
    [(COMeshNodeMessageCounter *)v12 setSize:v18];
    HIDWORD(v19) = -1030792151 * v13;
    LODWORD(v19) = HIDWORD(v19);
    if ((v19 >> 2) > 0x28F5C28)
    {
      goto LABEL_16;
    }

    v34 = v7;
    v20 = [(CORapportTransport *)self executionContext];
    v21 = [v20 label];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __48__CORapportTransport__serializedDataForCommand___block_invoke;
    v38[3] = &unk_278E15F80;
    v40[1] = v18;
    v40[2] = v13;
    v22 = &v39;
    v23 = v40;
    v39 = v11;
    v40[0] = v21;
    v24 = v21;
    v25 = v16[2];
    v26 = v24;
    v25(v16, 0x2857B5DA8, v38);
  }

  v7 = v34;
LABEL_16:

  return v7;
}

id __48__CORapportTransport__serializedDataForCommand___block_invoke(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = 0x2857B6008;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v10[0] = v2;
  v9[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  v4 = a1[4];
  v5 = a1[5];
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = 0x2857B6028;
  v9[3] = 0x2857B5DC8;
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __48__CORapportTransport__serializedDataForCommand___block_invoke_2(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = 0x2857B6008;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v10[0] = v2;
  v9[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = 0x2857B6028;
  v9[3] = 0x2857B5DC8;
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_eventIDForClass:(Class)a3
{
  v4 = [(CORapportTransport *)self executionContext];
  v5 = [v4 meshName];

  v6 = NSStringFromClass(a3);
  v7 = [v5 stringByAppendingFormat:@".%@", v6];

  return v7;
}

- (BOOL)_validateSource:(id)a3 options:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CORapportTransport *)self remote];
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = [(CORapportTransport *)self record];
  v10 = [v9 IDSIdentifier];

  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277D442D0]];
  if (!v11)
  {
    v14 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CORapportTransport _validateSource:? options:?];
    }

    goto LABEL_15;
  }

  if (([v10 isEqualToString:v11]& 1) == 0)
  {
    v14 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = [(CORapportTransport *)self shortDescription];
      v21 = 138543874;
      v22 = v20;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v10;
      _os_log_error_impl(&dword_244378000, v14, OS_LOG_TYPE_ERROR, "%{public}@ validation failed. IDS ID received %@ does not match record %@", &v21, 0x20u);
    }

LABEL_15:

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5002 userInfo:0];
    [(CORapportTransport *)self invalidateWithError:v15];

LABEL_16:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!v8)
  {
    v18 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(CORapportTransport *)self shortDescription];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting remote %@", &v21, 0x16u);
    }

    v10 = [(CORapportTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v10 transport:self willUpdateRemoteConstituent:0 to:v6];
    }

    [(CORapportTransport *)self setRemote:v6];
    if (objc_opt_respondsToSelector())
    {
      [v10 transport:self didUpdateRemoteConstituent:0 to:v6];
    }

    v12 = 1;
    goto LABEL_17;
  }

  if (([v8 isEqual:v6]& 1) == 0)
  {
LABEL_9:
    v10 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(CORapportTransport *)self shortDescription];
      v21 = 138543874;
      v22 = v13;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v6;
      _os_log_error_impl(&dword_244378000, v10, OS_LOG_TYPE_ERROR, "%{public}@ validation failed. Remote = %{public}@ and source = %{public}@", &v21, 0x20u);
    }

    goto LABEL_16;
  }

  v12 = 1;
LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_registerHandlersOnClient
{
  v3 = [(CORapportTransport *)self client];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke;
  v12[3] = &unk_278E15B10;
  objc_copyWeak(&v13, &location);
  [v3 setInvalidationHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_149;
  v10[3] = &unk_278E15B10;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_151;
  v8[3] = &unk_278E15B10;
  objc_copyWeak(&v9, &location);
  [v3 setStateUpdatedHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153;
  v6[3] = &unk_278E15B10;
  objc_copyWeak(&v7, &location);
  [v3 setErrorFlagsChangedHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155;
  v4[3] = &unk_278E15B10;
  objc_copyWeak(&v5, &location);
  [v3 setDisconnectHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2;
    v4[3] = &unk_278E15AB8;
    v4[4] = v2;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 0;
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidated connection", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5003 userInfo:0];
    [v4 transport:v5 didInvalidateWithError:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_149(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_150;
    v4[3] = &unk_278E15AB8;
    v4[4] = v2;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_150(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 0;
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ interrupted connection", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5003 userInfo:0];
    [v4 transport:v5 didInvalidateWithError:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_151(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __47__CORapportTransport__registerHandlersOnClient__block_invoke_151_cold_1(WeakRetained);
    }

    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_152;
    v4[3] = &unk_278E15AB8;
    v4[4] = WeakRetained;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153_cold_1(WeakRetained);
    }

    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_154;
    v4[3] = &unk_278E15AB8;
    v4[4] = WeakRetained;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155_cold_1(WeakRetained);
    }

    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_156;
    v4[3] = &unk_278E15AB8;
    v4[4] = WeakRetained;
    [v3 dispatchAsync:v4];
  }
}

- (void)_handleRPStateUpdate
{
  v3 = [(CORapportTransport *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CORapportTransport *)self client];
  v5 = [v4 usingOnDemandConnection];

  if (v5)
  {

    [(CORapportTransport *)self _handleRPIsUsingOnDemandConnection];
  }
}

- (void)_handleRPIsUsingOnDemandConnection
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(CORapportTransport *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CORapportTransport *)self shortDescription];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ link (IP) connected", &v9, 0xCu);
  }

  v6 = [(CORapportTransport *)self clientIsUsingOnDemandConnection];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleRPErrorFlagsUpdate
{
  v3 = [(CORapportTransport *)self executionContext];
  [v3 assertDispatchQueue];

  v4 = [(CORapportTransport *)self client];
  v5 = [v4 errorFlags];

  if ((v5 & 0x200) != 0)
  {

    [(CORapportTransport *)self _handleDisconnect];
  }
}

- (void)_handleDisconnect
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pingWithCallback:(id)a3
{
  v4 = a3;
  [(CORapportTransport *)self currentPingTimeout];
  v6 = [[_COMeshControllerPing alloc] initWithTimeout:v5];
  v7 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CORapportTransport pingWithCallback:?];
  }

  [(CORapportTransport *)self sendRequest:v6 withResponseHandler:v4];
}

- (COTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 40) sinks];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v5 = 134218242;
  v6 = v1;
  OUTLINED_FUNCTION_10();
  v7 = v2;
  _os_log_error_impl(&dword_244378000, v3, OS_LOG_TYPE_ERROR, "%p command from unknown node with IDS %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) shortDescription];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_commandForIdentifier:(void *)a1 fromData:result:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ received request %@", v4, 0x16u);
}

- (void)handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ request failed source validation", v5);
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_9();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(v1 + 40) shortDescription];
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*v0 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ bad response ID (%@)", v4, v5);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  *v1 = 138543618;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ response validation for request %{public}@ failed. Changing constituent", v4, v5);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ missing payload on request %@", v4, v5);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ missing source on request %@", v4, v5);
}

void __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v13 = *MEMORY[0x277D85DE8];
  v2 = [v1 shortDescription];
  v3 = *(*(*(v0 + 48) + 8) + 40);
  v4 = *(v0 + 32);
  objc_opt_class();
  OUTLINED_FUNCTION_10();
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateRequestTimesFromRapportRepresentation:(void *)a1 start:end:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ no event payload", v5);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ missing source", v5);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ received %@", v4, 0x16u);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ command failed source validation", v5);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ did not produce command", v5);
}

- (void)_serializedDataForCommand:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_244378000, v0, OS_LOG_TYPE_FAULT, "Failed to properly archive for sending: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_serializedDataForCommand:(objc_class *)a1 .cold.2(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "%{public}@ does not appear to properly support secure coding which is required for all commands!", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_validateSource:(void *)a1 options:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_151_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pingWithCallback:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end