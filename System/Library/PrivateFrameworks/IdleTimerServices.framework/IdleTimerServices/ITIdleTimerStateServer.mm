@interface ITIdleTimerStateServer
- (BOOL)_hasIdleTimerServicesEntitlementForProcess:(id)process missingEntitlementError:(id *)error;
- (BOOL)clientConfiguration:(id)configuration handleIdleEvent:(unint64_t)event;
- (ITIdleTimerStateServer)initWithCalloutQueue:(id)queue delegate:(id)delegate;
- (ITIdleTimerStateServerDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)addIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)addIdleTimerServiceOnBehalfOfSceneWithPID:(id)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
@end

@implementation ITIdleTimerStateServer

- (ITIdleTimerStateServer)initWithCalloutQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = ITIdleTimerStateServer;
  v9 = [(ITIdleTimerStateServer *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_calloutQueue, queue);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientTargetsByConfigIdentifier = v10->_clientTargetsByConfigIdentifier;
    v10->_clientTargetsByConfigIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v10->_connections;
    v10->_connections = v13;

    v15 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__ITIdleTimerStateServer_initWithCalloutQueue_delegate___block_invoke;
    v20[3] = &unk_2797A5340;
    v16 = v10;
    v21 = v16;
    v17 = [v15 listenerWithConfigurator:v20];
    v18 = v16[3];
    v16[3] = v17;

    [v16[3] activate];
  }

  return v10;
}

void __56__ITIdleTimerStateServer_initWithCalloutQueue_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.frontboard"];
  [v3 setService:@"com.apple.idletimer-service"];
  [v3 setDelegate:*(a1 + 32)];
}

- (BOOL)clientConfiguration:(id)configuration handleIdleEvent:(unint64_t)event
{
  calloutQueue = self->_calloutQueue;
  configurationCopy = configuration;
  BSDispatchQueueAssert();
  _identifier = [configurationCopy _identifier];

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v9 = [(NSMutableDictionary *)self->_clientTargetsByConfigIdentifier objectForKey:_identifier];
  os_unfair_lock_unlock(&self->_accessLock);
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
    v11 = [v9 handleIdleEvent:v10 usingConfigurationWithIdentifier:_identifier];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addIdleTimerServiceOnBehalfOfSceneWithPID:(id)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  reasonCopy = reason;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  if (![(ITIdleTimerStateServer *)self _hasIdleTimerServicesEntitlementForProcess:remoteProcess missingEntitlementError:error])
  {
    _identifier = ITLogIdleTimer();
    if (os_log_type_enabled(_identifier, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = remoteProcess;
      v33 = 2114;
      v34 = configurationCopy;
      _os_log_error_impl(&dword_254ABE000, _identifier, OS_LOG_TYPE_ERROR, "%{public}@ - Missing entitlement. Rejecting unauthorized access from %{public}@ to add a configuration: %{public}@.", buf, 0x20u);
    }

    goto LABEL_7;
  }

  delegate = [(ITIdleTimerStateServer *)self delegate];
  v16 = [delegate addIdleTimerOnBehalfOfSceneWithPID:objc_msgSend(dCopy fromProcess:"intValue") withConfiguration:remoteProcess forReason:{configurationCopy, reasonCopy}];

  if (v16)
  {
    if ([configurationCopy _idleEventMask])
    {
      _identifier = [configurationCopy _identifier];
      clientTargetsByConfigIdentifier = self->_clientTargetsByConfigIdentifier;
      currentContext2 = [MEMORY[0x277CF3280] currentContext];
      remoteTarget = [currentContext2 remoteTarget];
      [(NSMutableDictionary *)clientTargetsByConfigIdentifier setObject:remoteTarget forKey:_identifier];

LABEL_7:
    }
  }

  else if (error)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = [configurationCopy description];
    v27[1] = @"ITIdleTimerServicesErrorReasonKey";
    v28[0] = v23;
    v28[1] = reasonCopy;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    *error = [v22 errorWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:3 userInfo:v24];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  if (![(ITIdleTimerStateServer *)self _hasIdleTimerServicesEntitlementForProcess:remoteProcess missingEntitlementError:error])
  {
    _identifier = ITLogIdleTimer();
    if (os_log_type_enabled(_identifier, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543874;
      v27 = v23;
      v28 = 2114;
      v29 = remoteProcess;
      v30 = 2114;
      v31 = configurationCopy;
      _os_log_error_impl(&dword_254ABE000, _identifier, OS_LOG_TYPE_ERROR, "%{public}@ - Missing entitlement. Rejecting unauthorized access from %{public}@ to add a configuration: %{public}@.", buf, 0x20u);
    }

    goto LABEL_7;
  }

  delegate = [(ITIdleTimerStateServer *)self delegate];
  v13 = [delegate addIdleTimerConfiguration:configurationCopy fromProcess:remoteProcess forReason:reasonCopy];

  if (v13)
  {
    if ([configurationCopy _idleEventMask])
    {
      _identifier = [configurationCopy _identifier];
      clientTargetsByConfigIdentifier = self->_clientTargetsByConfigIdentifier;
      currentContext2 = [MEMORY[0x277CF3280] currentContext];
      remoteTarget = [currentContext2 remoteTarget];
      [(NSMutableDictionary *)clientTargetsByConfigIdentifier setObject:remoteTarget forKey:_identifier];

LABEL_7:
    }
  }

  else if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = [configurationCopy description];
    v24[1] = @"ITIdleTimerServicesErrorReasonKey";
    v25[0] = v20;
    v25[1] = reasonCopy;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *error = [v19 errorWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:3 userInfo:v21];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeIdleTimerServiceConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  if ([(ITIdleTimerStateServer *)self _hasIdleTimerServicesEntitlementForProcess:remoteProcess missingEntitlementError:error])
  {
    delegate = [(ITIdleTimerStateServer *)self delegate];
    [delegate removeIdleTimerConfigurationFromProcess:remoteProcess forReason:reasonCopy];

    _identifier = [configurationCopy _identifier];
    [(NSMutableDictionary *)self->_clientTargetsByConfigIdentifier removeObjectForKey:_identifier];
  }

  else
  {
    _identifier = ITLogIdleTimer();
    if (os_log_type_enabled(_identifier, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138543874;
      v18 = v16;
      v19 = 2114;
      v20 = remoteProcess;
      v21 = 2114;
      v22 = configurationCopy;
      _os_log_error_impl(&dword_254ABE000, _identifier, OS_LOG_TYPE_ERROR, "%{public}@ - Missing entitlement. Rejecting unauthorized access from %{public}@ to remove a configuration: %{public}@.", &v17, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v8 = [remoteProcess pid];
  v9 = ITLogIdleTimer();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ITIdleTimerStateServer listener:connectionCopy didReceiveConnection:v8 withContext:v9];
  }

  if (v8 <= 0)
  {
    v10 = ITLogIdleTimer();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ITIdleTimerStateServer listener:connectionCopy didReceiveConnection:v8 withContext:v10];
    }

    [connectionCopy invalidate];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke;
    v11[3] = &unk_2797A5390;
    v14 = v8;
    v12 = remoteProcess;
    selfCopy = self;
    [connectionCopy configureConnection:v11];
    [(ITIdleTimerStateServer *)self _addConnection:connectionCopy];
    [connectionCopy activate];
  }
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ITLogIdleTimer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = *(a1 + 48);
    *buf = 138543618;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&dword_254ABE000, v4, OS_LOG_TYPE_DEFAULT, "configuring connection from client bundleID: %{public}@, pid:%d", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2866F6820];
  v8 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2866F6C08];
  v9 = [MEMORY[0x277CF32C0] interfaceWithServer:v7 client:v8];
  v10 = [MEMORY[0x277CF32C8] utility];
  [v3 setServiceQuality:v10];

  [v3 setInterface:v9];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setTargetQueue:*(*(a1 + 40) + 16)];
  objc_initWeak(buf, *(a1 + 40));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65;
  v16[3] = &unk_2797A5368;
  v17 = *(a1 + 32);
  v19 = *(a1 + 48);
  objc_copyWeak(&v18, buf);
  [v3 setInterruptionHandler:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67;
  v12[3] = &unk_2797A5368;
  v13 = *(a1 + 32);
  v15 = *(a1 + 48);
  objc_copyWeak(&v14, buf);
  [v3 setInvalidationHandler:v12];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65(uint64_t a1)
{
  v2 = ITLogIdleTimer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 clientDidDisconnect:*(a1 + 32)];
  }
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ITLogIdleTimer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained delegate];
    [v7 clientDidDisconnect:*(a1 + 32)];

    [v6 _removeConnection:v3];
  }
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections removeObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)_hasIdleTimerServicesEntitlementForProcess:(id)process missingEntitlementError:(id *)error
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = [process hasEntitlement:@"com.apple.idle-timer-services"];
  v6 = v5;
  if (error && (v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing <%@> Entitlement", @"com.apple.idle-timer-services"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA470];
    v13[0] = *MEMORY[0x277CCA450];
    v13[1] = v9;
    v14[0] = v7;
    v14[1] = @"Missing Entitlement";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    *error = [v8 errorWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:2 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (ITIdleTimerStateServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(int)a2 withContext:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_debug_impl(&dword_254ABE000, log, OS_LOG_TYPE_DEBUG, "got a connection! -- %{public}@ pid:%d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(int)a2 withContext:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_254ABE000, log, OS_LOG_TYPE_ERROR, "dropping connection with junk pid (%d) -- %{public}@, ", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_65_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254ABE000, v4, v5, "interrupted connection from client bundleID: %{public}@, pid:%d", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __68__ITIdleTimerStateServer_listener_didReceiveConnection_withContext___block_invoke_67_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254ABE000, v4, v5, "invalidated connection from client bundleID: %{public}@, pid:%d", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end