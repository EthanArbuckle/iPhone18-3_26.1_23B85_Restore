@interface DNDSRemoteAvailabilityServiceProvider
- (DNDSRemoteAvailabilityServiceProvider)initWithClientDetailsProvider:(id)a3;
- (DNDSRemoteAvailabilityServiceProviderDelegate)delegate;
- (void)_addConnection:(id)a3;
- (void)_handleClientConnectionInterrupted:(id)a3;
- (void)_handleClientConnectionInvalidated:(id)a3;
- (void)_removeConnection:(id)a3;
- (void)dealloc;
- (void)getIsLocalUserAvailableWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation DNDSRemoteAvailabilityServiceProvider

- (DNDSRemoteAvailabilityServiceProvider)initWithClientDetailsProvider:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v11->_clientDetailsProvider, a3);
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

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  if (self->_requestListener == v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke;
    v13[3] = &unk_278F8A348;
    v13[4] = self;
    objc_copyWeak(&v14, &location);
    [v9 configureConnection:v13];
    objc_destroyWeak(&v14);
    [(DNDSRemoteAvailabilityServiceProvider *)self _addConnection:v9];
    [v9 activate];
    v11 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "XPC connection successfully accepted: connection=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    [v9 invalidate];
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

- (void)getIsLocalUserAvailableWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v54 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v9];
  [v10 UTF8String];
  v11 = os_transaction_create();

  v12 = [MEMORY[0x277CF3280] currentContext];
  v56 = 0u;
  v57 = 0u;
  v13 = [v12 remoteProcess];
  v14 = [v13 auditToken];
  v15 = v14;
  v52 = v11;
  v53 = v7;
  if (v14)
  {
    [v14 realToken];
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
  v18 = [v12 dnds_hasUserNotificationsCommunicationEntitlement];
  v19 = [v12 remoteProcess];
  v20 = [v19 bundleIdentifier];

  v21 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v20];
  *buf = v56;
  *&buf[16] = v57;
  v22 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 containingBundleRecord];
    v24 = [v23 bundleIdentifier];

    v25 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v24];
    if (v18)
    {
      v18 = 1;
    }

    else
    {
      v26 = [v23 entitlements];
      v27 = [v26 objectForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
      v18 = [v27 BOOLValue];
    }

    v21 = v25;
    v20 = v24;
  }

  else
  {
    v23 = v22;
  }

  v28 = DNDGrantedUserNotificationsAuthorizationForBundleIdentifier(v20);
  if (!v17 || !v18 || !v28)
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

    v36 = v54;
    if (v17)
    {
      v35 = v53;
      if (v18)
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
      v36 = v54;
      if (v18)
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
    v36 = v54;
    if (!v54)
    {
      goto LABEL_33;
    }

LABEL_32:
    (v36)[2](v36, MEMORY[0x277CBEC38], v31);
LABEL_33:
    [v12 invalidate];
    goto LABEL_39;
  }

  v29 = [(DNDSRemoteAvailabilityServiceProvider *)self delegate];
  v55 = 0;
  v30 = [v29 remoteAvailabilityServiceProvider:self isLocalUserAvailableForApplicationIdentifier:v21 withError:&v55];
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
      *&buf[24] = v12;
      _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error determining Focus Status; will report YES for available: error=%{public}@ connection=%{public}@", buf, 0x20u);
    }

    v36 = v54;
    (*(v54 + 2))(v54, MEMORY[0x277CBEC38], v31);
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
      *&buf[24] = v12;
      _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determinined Focus Status: available=%{public}@ connection=%{public}@", buf, 0x20u);
    }

    v50 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    v36 = v54;
    (*(v54 + 2))(v54, v50, 0);
  }

LABEL_39:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInterrupted:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteAvailabilityServiceProvider *)self _removeConnection:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteAvailabilityServiceProvider *)self _removeConnection:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections removeObject:v4];

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