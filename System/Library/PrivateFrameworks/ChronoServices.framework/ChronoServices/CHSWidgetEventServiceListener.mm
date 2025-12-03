@interface CHSWidgetEventServiceListener
- (BOOL)_isConnectingProcessAuthorized:(id)authorized error:(id *)error;
- (CHSWidgetEventServiceListener)initWithServiceDomain:(id)domain delegate:(id)delegate;
- (CHSWidgetEventServiceListenerDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)activate;
- (void)handleOpenEventWithURL:(id)l;
- (void)handleOpenEventWithUserActivityData:(id)data;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation CHSWidgetEventServiceListener

- (CHSWidgetEventServiceListener)initWithServiceDomain:(id)domain delegate:(id)delegate
{
  v38 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  delegateCopy = delegate;
  v33.receiver = self;
  v33.super_class = CHSWidgetEventServiceListener;
  v9 = [(CHSWidgetEventServiceListener *)&v33 init];
  v10 = v9;
  if (v9)
  {
    if (!domainCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"CHSWidgetEventServiceListener.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"serviceDomain"}];
    }

    v11 = [domainCopy copy];
    serviceDomain = v9->_serviceDomain;
    v9->_serviceDomain = v11;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.chronoservices.CHSWidgetEventServiceListener.connection", v13);
    connectionQueue = v10->_connectionQueue;
    v10->_connectionQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.chronoservices.CHSWidgetEventServiceListener.callout", v16);
    calloutQueue = v10->_calloutQueue;
    v10->_calloutQueue = v17;

    v19 = MEMORY[0x1E698F4B8];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __64__CHSWidgetEventServiceListener_initWithServiceDomain_delegate___block_invoke;
    v30[3] = &unk_1E7454148;
    v31 = domainCopy;
    v20 = v10;
    v32 = v20;
    v21 = [v19 listenerWithConfigurator:v30];
    connectionListener = v20->_connectionListener;
    v20->_connectionListener = v21;

    v23 = CHSLogChronoServices();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [(CHSWidgetEventServiceListener *)v20 description];
      *buf = 138543618;
      v35 = v25;
      v36 = 2114;
      v37 = v26;
      _os_log_impl(&dword_195EB2000, v23, OS_LOG_TYPE_DEFAULT, "Initializing new %{public}@ instance: %{public}@", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

void __64__CHSWidgetEventServiceListener_initWithServiceDomain_delegate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:*(a1 + 32)];
  v3 = +[CHSWidgetEventServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 40)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v16 = 0;
  v8 = [(CHSWidgetEventServiceListener *)self _isConnectingProcessAuthorized:remoteProcess error:&v16];
  v9 = v16;

  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__CHSWidgetEventServiceListener_listener_didReceiveConnection_withContext___block_invoke;
    v15[3] = &unk_1E7453570;
    v15[4] = self;
    [connectionCopy configureConnection:v15];
    [(CHSWidgetEventServiceListener *)self _addConnection:connectionCopy];
  }

  else
  {
    v10 = CHSLogChronoServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      localizedDescription = [v9 localizedDescription];
      [(CHSWidgetEventServiceListener *)v12 listener:localizedDescription didReceiveConnection:buf withContext:v10];
    }

    [connectionCopy invalidate];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __75__CHSWidgetEventServiceListener_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = +[CHSWidgetEventServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CHSWidgetEventServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__CHSWidgetEventServiceListener_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_1E7454170;
  objc_copyWeak(&v9, &location);
  [v3 setActivationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__CHSWidgetEventServiceListener_listener_didReceiveConnection_withContext___block_invoke_20;
  v6[3] = &unk_1E7454198;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __75__CHSWidgetEventServiceListener_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (client-side) connection did activate", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __75__CHSWidgetEventServiceListener_listener_didReceiveConnection_withContext___block_invoke_20(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CHSLogChronoServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ (client-side) connection invalidated", &v9, 0xCu);
  }

  [WeakRetained _removeConnection:v3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleOpenEventWithURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CHSWidgetEventServiceListener_handleOpenEventWithURL___block_invoke;
    v7[3] = &unk_1E74541C0;
    v8 = WeakRetained;
    objc_copyWeak(&v10, &location);
    v9 = lCopy;
    dispatch_async(calloutQueue, v7);

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

void __56__CHSWidgetEventServiceListener_handleOpenEventWithURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  [v2 eventServiceListener:? didReceiveOpenEventWithURL:?];
}

- (void)handleOpenEventWithUserActivityData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    v6 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:dataCopy];
    calloutQueue = self->_calloutQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__CHSWidgetEventServiceListener_handleOpenEventWithUserActivityData___block_invoke;
    v9[3] = &unk_1E74541C0;
    v10 = WeakRetained;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    v8 = v6;
    dispatch_async(calloutQueue, v9);

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

void __69__CHSWidgetEventServiceListener_handleOpenEventWithUserActivityData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 40);
  v5 = WeakRetained;
  [v2 eventServiceListener:? didReceiveOpenEventWithUserActivity:?];
}

- (void)activate
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_fault_impl(&dword_195EB2000, log, OS_LOG_TYPE_FAULT, "%{public}@ unable to start event lister, connection listener is nil.", buf, 0xCu);
}

- (BOOL)_isConnectingProcessAuthorized:(id)authorized error:(id *)error
{
  authorizedCopy = authorized;
  v6 = [authorizedCopy hasEntitlement:@"com.apple.chrono.event-service-publisher"];
  v7 = v6;
  if (error)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:2];
  }

  return v7;
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connections = selfCopy->_connections;
  if (!connections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = selfCopy->_connections;
    selfCopy->_connections = v6;

    connections = selfCopy->_connections;
  }

  [(NSMutableArray *)connections addObject:connectionCopy];
  [connectionCopy activate];
  objc_sync_exit(selfCopy);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_connections removeObject:connectionCopy];
  if (![(NSMutableArray *)selfCopy->_connections count])
  {
    connections = selfCopy->_connections;
    selfCopy->_connections = 0;
  }

  objc_sync_exit(selfCopy);
}

- (CHSWidgetEventServiceListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(uint8_t *)buf didReceiveConnection:(os_log_t)log withContext:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "%{public}@ (client-side) connection failed to authenticate: %{public}@", buf, 0x16u);
}

@end