@interface DNDSRemoteAvailabilityServiceProvider
- (DNDSRemoteAvailabilityServiceProvider)initWithClientDetailsProvider:(id)provider;
- (DNDSRemoteAvailabilityServiceProviderDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_handleClientConnectionInterrupted:(id)interrupted;
- (void)_handleClientConnectionInvalidated:(id)invalidated;
- (void)_removeConnection:(id)connection;
- (void)dealloc;
- (void)getIsLocalUserAvailableWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation DNDSRemoteAvailabilityServiceProvider

- (DNDSRemoteAvailabilityServiceProvider)initWithClientDetailsProvider:(id)provider
{
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = DNDSRemoteAvailabilityServiceProvider;
  v6 = [(DNDSRemoteAvailabilityServiceProvider *)&v17 init];
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
    v15[2] = __71__DNDSRemoteAvailabilityServiceProvider_initWithClientDetailsProvider___block_invoke;
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

void __71__DNDSRemoteAvailabilityServiceProvider_initWithClientDetailsProvider___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.donotdisturb.availability.service.launching"];
  v3 = DNDRemoteAvailabilityServiceServerInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(DNDSRemoteAvailabilityServiceProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = DNDSRemoteAvailabilityServiceProvider;
  [(DNDSRemoteAvailabilityServiceProvider *)&v3 dealloc];
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
    v13[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke;
    v13[3] = &unk_278F8A348;
    v13[4] = self;
    objc_copyWeak(&v14, &location);
    [connectionCopy configureConnection:v13];
    objc_destroyWeak(&v14);
    [(DNDSRemoteAvailabilityServiceProvider *)self _addConnection:connectionCopy];
    [connectionCopy activate];
    v11 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
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

void __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = DNDRemoteAvailabilityServiceServerInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278F8A320;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_278F8A320;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:v3];
}

void __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:v3];
}

- (void)getIsLocalUserAvailableWithRequestDetails:(id)details completionHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  handlerCopy = handler;
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v9];
  [v10 UTF8String];
  v11 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v56 = 0u;
  v57 = 0u;
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];
  v15 = auditToken;
  v52 = v11;
  v53 = detailsCopy;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v16 = *MEMORY[0x277D6C180];
  *buf = v56;
  *&buf[16] = v57;
  v17 = TCCAccessCheckAuditToken();
  dnds_hasUserNotificationsCommunicationEntitlement = [currentContext dnds_hasUserNotificationsCommunicationEntitlement];
  remoteProcess2 = [currentContext remoteProcess];
  bundleIdentifier = [remoteProcess2 bundleIdentifier];

  v21 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifier];
  *buf = v56;
  *&buf[16] = v57;
  v22 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [v22 containingBundleRecord];
    bundleIdentifier2 = [containingBundleRecord bundleIdentifier];

    v25 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifier2];
    if (dnds_hasUserNotificationsCommunicationEntitlement)
    {
      dnds_hasUserNotificationsCommunicationEntitlement = 1;
    }

    else
    {
      entitlements = [containingBundleRecord entitlements];
      v27 = [entitlements objectForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
      dnds_hasUserNotificationsCommunicationEntitlement = [v27 BOOLValue];
    }

    v21 = v25;
    bundleIdentifier = bundleIdentifier2;
  }

  else
  {
    containingBundleRecord = v22;
  }

  v28 = DNDGrantedUserNotificationsAuthorizationForBundleIdentifier(bundleIdentifier);
  if (!v17 || !dnds_hasUserNotificationsCommunicationEntitlement || !v28)
  {
    v37 = MEMORY[0x277D05840];
    if (v28)
    {
      v31 = 0;
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
      {
        [DNDSRemoteAvailabilityServiceProvider getIsLocalUserAvailableWithRequestDetails:completionHandler:];
      }

      v38 = MEMORY[0x277CCA9B8];
      v39 = *v37;
      v62 = *MEMORY[0x277CCA450];
      v63 = @"User Notifications are disabled for this App.";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v31 = [v38 errorWithDomain:v39 code:1004 userInfo:v40];
    }

    v36 = handlerCopy;
    if (v17)
    {
      v35 = v53;
      if (dnds_hasUserNotificationsCommunicationEntitlement)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v35 = v53;
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
      {
        [DNDSRemoteAvailabilityServiceProvider getIsLocalUserAvailableWithRequestDetails:completionHandler:];
      }

      v41 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277D05840];
      v60 = *MEMORY[0x277CCA450];
      v61 = @"Focus Status is not shared with this App.";
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v44 = [v41 errorWithDomain:v42 code:1004 userInfo:v43];

      v31 = v44;
      v36 = handlerCopy;
      if (dnds_hasUserNotificationsCommunicationEntitlement)
      {
LABEL_24:
        v34 = v52;
        if (!v36)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteAvailabilityServiceProvider getIsLocalUserAvailableWithRequestDetails:completionHandler:];
    }

    v45 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277D05840];
    v58 = *MEMORY[0x277CCA450];
    v59 = @"App is missing Communication Notifications entitlement.";
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v48 = [v45 errorWithDomain:v46 code:1004 userInfo:v47];

    v31 = v48;
    v34 = v52;
    v36 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_33;
    }

LABEL_32:
    (v36)[2](v36, MEMORY[0x277CBEC38], v31);
LABEL_33:
    [currentContext invalidate];
    goto LABEL_39;
  }

  delegate = [(DNDSRemoteAvailabilityServiceProvider *)self delegate];
  v55 = 0;
  v30 = [delegate remoteAvailabilityServiceProvider:self isLocalUserAvailableForApplicationIdentifier:v21 withError:&v55];
  v31 = v55;

  v32 = DNDSLogAvailabilityProvider;
  v33 = os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT);
  if (v31)
  {
    v34 = v52;
    v35 = v53;
    if (v33)
    {
      *buf = 138543874;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      *&buf[22] = 2114;
      *&buf[24] = currentContext;
      _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error determining Focus Status; will report YES for available: error=%{public}@ connection=%{public}@", buf, 0x20u);
    }

    v36 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], v31);
  }

  else
  {
    v34 = v52;
    v35 = v53;
    if (v33)
    {
      v49 = @"NO";
      *buf = 138543874;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      if (v30)
      {
        v49 = @"YES";
      }

      *&buf[14] = v49;
      *&buf[22] = 2114;
      *&buf[24] = currentContext;
      _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determinined Focus Status: available=%{public}@ connection=%{public}@", buf, 0x20u);
    }

    v50 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    v36 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v50, 0);
  }

LABEL_39:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInterrupted:(id)interrupted
{
  v9 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v5 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = interruptedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteAvailabilityServiceProvider *)self _removeConnection:interruptedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = invalidatedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteAvailabilityServiceProvider *)self _removeConnection:invalidatedCopy];

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

- (DNDSRemoteAvailabilityServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getIsLocalUserAvailableWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without User Notifications authorization tried to get Focus Status, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getIsLocalUserAvailableWithRequestDetails:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without sharing authorization tried to get Focus Status, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getIsLocalUserAvailableWithRequestDetails:completionHandler:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without Communication Notifications entitlement tried to get Focus Status, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end