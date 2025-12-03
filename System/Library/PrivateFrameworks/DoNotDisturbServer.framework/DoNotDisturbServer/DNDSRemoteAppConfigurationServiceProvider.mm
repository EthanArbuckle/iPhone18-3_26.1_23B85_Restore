@interface DNDSRemoteAppConfigurationServiceProvider
- (DNDSRemoteAppConfigurationServiceProvider)initWithClientDetailsProvider:(id)provider;
- (DNDSRemoteAppConfigurationServiceProviderDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_handleClientConnectionInterrupted:(id)interrupted;
- (void)_handleClientConnectionInvalidated:(id)invalidated;
- (void)_removeConnection:(id)connection;
- (void)dealloc;
- (void)getCurrentAppConfigurationForActionIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)invalidateAppContextForActionIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation DNDSRemoteAppConfigurationServiceProvider

- (DNDSRemoteAppConfigurationServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DNDSRemoteAppConfigurationServiceProvider)initWithClientDetailsProvider:(id)provider
{
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = DNDSRemoteAppConfigurationServiceProvider;
  v6 = [(DNDSRemoteAppConfigurationServiceProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v7->_connections;
    v7->_connections = v8;

    v10 = MEMORY[0x277CF32A0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__DNDSRemoteAppConfigurationServiceProvider_initWithClientDetailsProvider___block_invoke;
    v15[3] = &unk_278F8A2F8;
    v11 = v7;
    v16 = v11;
    v12 = [v10 listenerWithConfigurator:v15];
    requestListener = v11->_requestListener;
    v11->_requestListener = v12;

    objc_storeStrong(&v11->_clientDetailsProvider, provider);
  }

  return v7;
}

void __75__DNDSRemoteAppConfigurationServiceProvider_initWithClientDetailsProvider___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.donotdisturb.appconfiguration.service.launching"];
  v3 = DNDRemoteAppConfigurationServiceServerInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(DNDSRemoteAppConfigurationServiceProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = DNDSRemoteAppConfigurationServiceProvider;
  [(DNDSRemoteAppConfigurationServiceProvider *)&v3 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  if (self->_requestListener == listenerCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__DNDSRemoteAppConfigurationServiceProvider_listener_didReceiveConnection_withContext___block_invoke;
    v13[3] = &unk_278F8A348;
    v13[4] = self;
    objc_copyWeak(&v14, &location);
    [connectionCopy configureConnection:v13];
    objc_destroyWeak(&v14);
    [(DNDSRemoteAppConfigurationServiceProvider *)self _addConnection:connectionCopy];
    [connectionCopy activate];
    v11 = DNDSLogAppConfigurationServiceProvider;
    if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = connectionCopy;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "XPC connection successfully accepted: connection=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    [connectionCopy invalidate];
  }

  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __87__DNDSRemoteAppConfigurationServiceProvider_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = DNDRemoteAppConfigurationServiceServerInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DNDSRemoteAppConfigurationServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278F8A320;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__DNDSRemoteAppConfigurationServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_278F8A320;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __87__DNDSRemoteAppConfigurationServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:v3];
}

void __87__DNDSRemoteAppConfigurationServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:v3];
}

- (void)getCurrentAppConfigurationForActionIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v11 = NSStringFromSelector(a2);
  v12 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v11];
  [v12 UTF8String];
  v13 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v29 = 0u;
  v30 = 0u;
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];
  v17 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  remoteProcess2 = [currentContext remoteProcess];
  bundleIdentifier = [remoteProcess2 bundleIdentifier];

  *buf = v29;
  v32 = v30;
  v20 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier2 = [v20 bundleIdentifier];

    bundleIdentifier = bundleIdentifier2;
  }

  v22 = _DNDSPrimaryBundleIdentifier(bundleIdentifier);

  v23 = DNDSLogAppConfigurationServiceProvider;
  if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v22;
    _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, "Client request to get current app configuration: bundleIdentifier=%{public}@", buf, 0xCu);
  }

  delegate = [(DNDSRemoteAppConfigurationServiceProvider *)self delegate];
  v28 = 0;
  v25 = [delegate remoteAppConfigurationServiceProvider:self getCurrentAppConfigurationForActionIdentifier:identifierCopy bundleIdentifier:v22 withError:&v28];

  v26 = v28;
  handlerCopy[2](handlerCopy, v25, v26);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAppContextForActionIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v11 = NSStringFromSelector(a2);
  v12 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v11];
  [v12 UTF8String];
  v13 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v29 = 0u;
  v30 = 0u;
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];
  v17 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  remoteProcess2 = [currentContext remoteProcess];
  bundleIdentifier = [remoteProcess2 bundleIdentifier];

  *buf = v29;
  v32 = v30;
  v20 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [v20 containingBundleRecord];
    bundleIdentifier2 = [containingBundleRecord bundleIdentifier];

    v20 = containingBundleRecord;
    bundleIdentifier = bundleIdentifier2;
  }

  v23 = DNDSLogAppConfigurationServiceProvider;
  if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = bundleIdentifier;
    _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, "Client request to invalidate app context: bundleIdentifier=%{public}@", buf, 0xCu);
  }

  delegate = [(DNDSRemoteAppConfigurationServiceProvider *)self delegate];
  v28 = 0;
  [delegate remoteAppConfigurationServiceProvider:self invalidateAppContextForActionIdentifier:identifierCopy bundleIdentifier:bundleIdentifier withError:&v28];

  v25 = v28;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v25 == 0];
  handlerCopy[2](handlerCopy, v26, v25);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInterrupted:(id)interrupted
{
  v9 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v5 = DNDSLogAppConfigurationServiceProvider;
  if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = interruptedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteAppConfigurationServiceProvider *)self _removeConnection:interruptedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = DNDSLogAppConfigurationServiceProvider;
  if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = invalidatedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteAppConfigurationServiceProvider *)self _removeConnection:invalidatedCopy];

  v6 = *MEMORY[0x277D85DE8];
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

@end