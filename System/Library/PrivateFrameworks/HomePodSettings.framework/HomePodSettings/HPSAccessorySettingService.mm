@interface HPSAccessorySettingService
- (BOOL)hasOptedToHH2;
- (HPSAccessorySettingService)init;
- (HPSAccessorySettingService)initWithConnectionProvider:(id)a3 delegate:(id)a4;
- (HPSAccessorySettingService)initWithDelegate:(id)a3;
- (HPSAccessorySettingServiceDelegate)delegate;
- (NSDictionary)heldAssertions;
- (NSDictionary)keyPaths;
- (id)keyPathsAvailability;
- (id)settingForKeyPath:(id)a3;
- (id)updateSettingForKeyPath:(id)a3 setting:(id)a4;
- (id)updateSettingWithoutSynchronizationForKeyPath:(id)a3 setting:(id)a4;
- (void)_handleConnectionInterrupted;
- (void)aggregateAllSettingsInScope:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)dealloc;
- (void)fetchAllSettingsWithCompletionHandler:(id)a3;
- (void)getAllSettingsWithCompletionHandler:(id)a3;
- (void)getKeyPathsAvailabilityWithCompletionHandler:(id)a3;
- (void)getKeyPathsWithCompletionHandler:(id)a3;
- (void)heldAssertionsWithCompletionHandler:(id)a3;
- (void)isSettingAvailableForKeyPath:(id)a3 completionHandler:(id)a4;
- (void)mergeSettingsInScope:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)notifyDidUpdateSetting:(id)a3 forKeyPath:(id)a4;
- (void)optedToHH2WithCompletionHandler:(id)a3;
- (void)reconcileSettingsInScope:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)settingForKeyPath:(id)a3 completionHandler:(id)a4;
- (void)settingsForKeyPaths:(id)a3 completionHandler:(id)a4;
- (void)startXPCConnection;
- (void)updateSettingForKeyPath:(id)a3 setting:(id)a4 completionHandler:(id)a5;
- (void)updateSettingWithoutSynchronizationForKeyPath:(id)a3 setting:(id)a4 completionHandler:(id)a5;
@end

@implementation HPSAccessorySettingService

- (HPSAccessorySettingService)initWithConnectionProvider:(id)a3 delegate:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = a3;
  obj = a4;
  v42.receiver = self;
  v42.super_class = HPSAccessorySettingService;
  v6 = [(HPSAccessorySettingService *)&v42 init];
  if (v6)
  {
    v7 = _HPSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[HPSAccessorySettingService initWithConnectionProvider:delegate:]";
      _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v6->_notifyRegisterToken = -1;
    objc_storeWeak(&v6->_delegate, obj);
    v8 = [v32 accessorySettingServiceConnection];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v8;

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286666308];
    v34 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286658C48];
    v31 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v31 setWithObjects:{v30, v29, v28, v27, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    [v10 setClasses:v19 forSelector:sel_settingsForKeyPaths_completionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClasses:v19 forSelector:sel_aggregateSettingsInScope_completionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClasses:v19 forSelector:sel_reconcileSettingsInScope_withCompletionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClasses:v19 forSelector:sel_mergeSettingsInScope_withCompletionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClasses:v19 forSelector:sel_updateSettingForKeyPath_setting_completionHandler_ argumentIndex:0 ofReply:1];
    [v10 setClasses:v19 forSelector:sel_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler_ argumentIndex:0 ofReply:1];
    [v34 setClasses:v19 forSelector:sel_notifyDidUpdateSetting_forKeyPath_ argumentIndex:0 ofReply:0];
    [v34 setClasses:v19 forSelector:sel_didUpdateHH2State_ argumentIndex:0 ofReply:0];
    objc_initWeak(buf, v6);
    v20 = v6->_xpcConnection;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke;
    v40[3] = &unk_279774158;
    objc_copyWeak(&v41, buf);
    [(NSXPCConnection *)v20 setInterruptionHandler:v40];
    v21 = v6->_xpcConnection;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407;
    v38[3] = &unk_279774158;
    objc_copyWeak(&v39, buf);
    [(NSXPCConnection *)v21 setInvalidationHandler:v38];
    v22 = [[HPAccessorySettingServiceMediator alloc] initWithInterface:v6];
    [(NSXPCConnection *)v6->_xpcConnection setExportedObject:v22];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v10];
    [(NSXPCConnection *)v6->_xpcConnection setExportedInterface:v34];
    [(NSXPCConnection *)v6->_xpcConnection resume];
    [(HPSAccessorySettingService *)v6 startXPCConnection];
    if ([(HPSAccessorySettingService *)v6 notifyRegisterToken]== -1)
    {
      out_token = 0;
      v23 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_409;
      handler[3] = &unk_279774468;
      objc_copyWeak(&v36, buf);
      v24 = notify_register_dispatch("com.apple.homepodsettingsd.ready", &out_token, MEMORY[0x277D85CD0], handler);

      if (!v24)
      {
        [(HPSAccessorySettingService *)v6 setNotifyRegisterToken:out_token];
      }

      objc_destroyWeak(&v36);
    }

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke(uint64_t a1)
{
  v2 = _HPSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407(uint64_t a1)
{
  v2 = _HPSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_409(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _HPSLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2542B7000, v2, OS_LOG_TYPE_DEFAULT, "Received notification that homepodsettingsd daemon is ready", buf, 2u);
    }

    [WeakRetained startXPCConnection];
    v3 = [WeakRetained delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [WeakRetained delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = _HPSLoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "Inform clients that homepodsettingsd is reconnected and ready!", v9, 2u);
        }

        v8 = [WeakRetained delegate];
        [v8 didReconnect];
      }
    }
  }
}

- (HPSAccessorySettingService)initWithDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _HPSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[HPSAccessorySettingService initWithDelegate:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s Delegate %@", &v10, 0x16u);
  }

  v6 = objc_alloc_init(_HPSAccessorySettingServiceConnectionProvider);
  v7 = [(HPSAccessorySettingService *)self initWithConnectionProvider:v6 delegate:v4];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HPSAccessorySettingService)init
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[HPSAccessorySettingService init]";
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v4 = objc_alloc_init(_HPSAccessorySettingServiceConnectionProvider);
  v5 = [(HPSAccessorySettingService *)self initWithConnectionProvider:v4 delegate:0];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)startXPCConnection
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HPSAccessorySettingService startXPCConnection]";
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(HPSAccessorySettingService *)self xpcConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  [v5 startXPCConnection];

  v6 = *MEMORY[0x277D85DE8];
}

void __48__HPSAccessorySettingService_startXPCConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__HPSAccessorySettingService_startXPCConnection__block_invoke_cold_1(v2);
  }
}

- (void)dealloc
{
  if ([(HPSAccessorySettingService *)self notifyRegisterToken]!= -1)
  {
    notify_cancel([(HPSAccessorySettingService *)self notifyRegisterToken]);
  }

  objc_storeWeak(&self->_delegate, 0);
  v3 = [(HPSAccessorySettingService *)self xpcConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HPSAccessorySettingService;
  [(HPSAccessorySettingService *)&v4 dealloc];
}

- (void)updateSettingForKeyPath:(id)a3 setting:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v28 = "[HPSAccessorySettingService updateSettingForKeyPath:setting:completionHandler:]";
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:v8])
  {
    v13 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Keypath not supported for updating value";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:v14];

    v10[2](v10, MEMORY[0x277CBEBF8], v15);
  }

  else
  {
    v16 = [(HPSAccessorySettingService *)self xpcConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke;
    v23[3] = &unk_2797741A0;
    v17 = v10;
    v24 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
    v19 = [HPSHomeKitSettingHelper compatibleWriteSetting:v9];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_424;
    v21[3] = &unk_279774490;
    v22 = v17;
    [v18 updateSettingForKeyPath:v8 setting:v19 completionHandler:v21];

    v15 = v24;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_424(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [HPSHomeKitSettingHelper compatibleReadResults:a2];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)updateSettingWithoutSynchronizationForKeyPath:(id)a3 setting:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v28 = "[HPSAccessorySettingService updateSettingWithoutSynchronizationForKeyPath:setting:completionHandler:]";
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:v8])
  {
    v13 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Keypath not supported for updating value";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:v14];

    v10[2](v10, MEMORY[0x277CBEBF8], v15);
  }

  else
  {
    v16 = [(HPSAccessorySettingService *)self xpcConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke;
    v23[3] = &unk_2797741A0;
    v17 = v10;
    v24 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
    v19 = [HPSHomeKitSettingHelper compatibleWriteSetting:v9];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_426;
    v21[3] = &unk_279774490;
    v22 = v17;
    [v18 updateSettingWithoutSynchronizationForKeyPath:v8 setting:v19 completionHandler:v21];

    v15 = v24;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_426(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [HPSHomeKitSettingHelper compatibleReadResults:a2];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)updateSettingForKeyPath:(id)a3 setting:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    *&buf[4] = "[HPSAccessorySettingService updateSettingForKeyPath:setting:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:v6])
  {
    v10 = [(HPSAccessorySettingService *)self xpcConnection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke;
    v19[3] = &unk_2797744B8;
    v19[4] = buf;
    v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [HPSHomeKitSettingHelper compatibleWriteSetting:v7];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_427;
    v18[3] = &unk_2797744E0;
    v18[4] = buf;
    [v11 updateSettingForKeyPath:v6 setting:v12 completionHandler:v18];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Keypath not supported for updating value";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:v10];
    v11 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v14;
  }

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_427(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _HPSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "Results: %@", &v11, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateSettingWithoutSynchronizationForKeyPath:(id)a3 setting:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    *&buf[4] = "[HPSAccessorySettingService updateSettingWithoutSynchronizationForKeyPath:setting:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:v6])
  {
    v10 = [(HPSAccessorySettingService *)self xpcConnection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke;
    v19[3] = &unk_2797744B8;
    v19[4] = buf;
    v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [HPSHomeKitSettingHelper compatibleWriteSetting:v7];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_428;
    v18[3] = &unk_2797744E0;
    v18[4] = buf;
    [v11 updateSettingWithoutSynchronizationForKeyPath:v6 setting:v12 completionHandler:v18];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Keypath not supported for updating value";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:v10];
    v11 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v14;
  }

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_428(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _HPSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "Results: %@", &v11, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)settingsForKeyPaths:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v21 = "[HPSAccessorySettingService settingsForKeyPaths:completionHandler:]";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v10 = _HPSLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[HPSAccessorySettingService settingsForKeyPaths:completionHandler:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2542B7000, v10, OS_LOG_TYPE_DEFAULT, "%s KeyPaths %@", buf, 0x16u);
  }

  v11 = [(HPSAccessorySettingService *)self xpcConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke;
  v18[3] = &unk_2797741A0;
  v12 = v7;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_429;
  v16[3] = &unk_279774508;
  v17 = v12;
  v14 = v12;
  [v13 settingsForKeyPaths:v6 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_429(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HPSHomeKitSettingHelper compatibleReadResults:a2];
  (*(v2 + 16))(v2, v3, 0);
}

- (void)settingForKeyPath:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v23 = "[HPSAccessorySettingService settingForKeyPath:completionHandler:]";
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v21 = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[HPSAccessorySettingService settingForKeyPath:completionHandler:]";
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s KeyPath %@", buf, 0x16u);
  }

  v12 = [(HPSAccessorySettingService *)self xpcConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke;
  v19[3] = &unk_2797741A0;
  v13 = v7;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_431;
  v17[3] = &unk_279774508;
  v18 = v13;
  v15 = v13;
  [v14 settingsForKeyPaths:v10 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_431(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 setting];
  if (v4)
  {
    v5 = v4;
    v6 = [HPSHomeKitSettingHelper compatibleReadSetting:v4];

    v7 = 0;
  }

  else
  {
    v7 = [v3 error];
    v6 = 0;
  }

  v8 = v7;
  (*(*(a1 + 32) + 16))();
}

- (id)settingForKeyPath:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _HPSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    *&buf[4] = "[HPSAccessorySettingService settingForKeyPath:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v7 = [(HPSAccessorySettingService *)self xpcConnection];
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_433];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_434;
  v12[3] = &unk_279774530;
  v12[4] = buf;
  [v8 settingForKeyPath:v4 completionHandler:v12];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __48__HPSAccessorySettingService_settingForKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_cold_1();
  }
}

void __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_434(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _HPSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_cold_1();
    }
  }

  v8 = [HPSHomeKitSettingHelper compatibleReadSetting:v5];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)isSettingAvailableForKeyPath:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v18 = "[HPSAccessorySettingService isSettingAvailableForKeyPath:completionHandler:]";
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v10 = _HPSLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[HPSAccessorySettingService isSettingAvailableForKeyPath:completionHandler:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2542B7000, v10, OS_LOG_TYPE_DEFAULT, "%s KeyPath %@", buf, 0x16u);
  }

  v11 = [(HPSAccessorySettingService *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke;
  v15[3] = &unk_2797741A0;
  v16 = v7;
  v12 = v7;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v15];
  [v13 isSettingAvailableForKeyPath:v6 completionHandler:v12];

  v14 = *MEMORY[0x277D85DE8];
}

void __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getKeyPathsWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _HPSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v14 = "[HPSAccessorySettingService getKeyPathsWithCompletionHandler:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v7 = [(HPSAccessorySettingService *)self xpcConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke;
  v11[3] = &unk_2797741A0;
  v12 = v4;
  v8 = v4;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v11];
  [v9 getKeyPathsWithCompletionHandler:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getKeyPathsAvailabilityWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _HPSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v14 = "[HPSAccessorySettingService getKeyPathsAvailabilityWithCompletionHandler:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v7 = [(HPSAccessorySettingService *)self xpcConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke;
  v11[3] = &unk_2797741A0;
  v12 = v4;
  v8 = v4;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v11];
  [v9 getKeyPathsAvailabilityWithCompletionHandler:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)reconcileSettingsInScope:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _HPSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v16 = "[HPSAccessorySettingService reconcileSettingsInScope:withCompletionHandler:]";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v9 = [(HPSAccessorySettingService *)self xpcConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke;
  v13[3] = &unk_2797741A0;
  v14 = v6;
  v10 = v6;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v13];
  [v11 reconcileSettingsInScope:a3 withCompletionHandler:v10];

  v12 = *MEMORY[0x277D85DE8];
}

void __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)mergeSettingsInScope:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _HPSLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v16 = "[HPSAccessorySettingService mergeSettingsInScope:withCompletionHandler:]";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v9 = [(HPSAccessorySettingService *)self xpcConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke;
  v13[3] = &unk_2797741A0;
  v14 = v6;
  v10 = v6;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v13];
  [v11 mergeSettingsInScope:a3 withCompletionHandler:v10];

  v12 = *MEMORY[0x277D85DE8];
}

void __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)heldAssertionsWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _HPSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v14 = "[HPSAccessorySettingService heldAssertionsWithCompletionHandler:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v7 = [(HPSAccessorySettingService *)self xpcConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke;
  v11[3] = &unk_2797741A0;
  v12 = v4;
  v8 = v4;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v11];
  [v9 heldAssertionsWithCompletionHandler:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllSettingsWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _HPSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v12 = "[HPSAccessorySettingService fetchAllSettingsWithCompletionHandler:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke;
  v9[3] = &unk_2797745A8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HPSAccessorySettingService *)self getKeyPathsWithCompletionHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279774558;
  v8[4] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = v10[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_279774490;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 settingsForKeyPaths:v4 completionHandler:v6];

  _Block_object_dispose(&v9, 8);
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v11 = v4;
  if (v6)
  {
    v7 = [v6 arrayByAddingObjectsFromArray:v4];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v4;
    v9 = *(v5 + 40);
    *(v5 + 40) = v10;
  }
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _HPSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_438;
    v10[3] = &unk_279774580;
    v11 = v8;
    v9 = v8;
    [v5 enumerateObjectsUsingBlock:v10];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_438(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setting];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 setting];
    [v4 addObject:v5];
  }
}

- (void)getAllSettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke;
  v6[3] = &unk_2797745A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HPSAccessorySettingService *)self getKeyPathsWithCompletionHandler:v6];
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279774558;
  v8[4] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = v10[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_279774490;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 settingsForKeyPaths:v4 completionHandler:v6];

  _Block_object_dispose(&v9, 8);
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v11 = v4;
  if (v6)
  {
    v7 = [v6 arrayByAddingObjectsFromArray:v4];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v4;
    v9 = *(v5 + 40);
    *(v5 + 40) = v10;
  }
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_279774580;
  v8 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  (*(*(a1 + 32) + 16))();
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setting];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 setting];
    [v4 addObject:v5];
  }
}

- (void)aggregateAllSettingsInScope:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HPSAccessorySettingService *)self xpcConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke;
  v13[3] = &unk_2797741A0;
  v8 = v6;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_441;
  v11[3] = &unk_2797745D0;
  v12 = v8;
  v10 = v8;
  [v9 aggregateSettingsInScope:a3 completionHandler:v11];
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_441(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
        v11 = [v4 objectForKey:v9];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_2;
        v15[3] = &unk_279774580;
        v16 = v10;
        v12 = v10;
        [v11 enumerateObjectsUsingBlock:v15];

        [v3 setObject:v12 forKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setting];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 setting];
    [v4 addObject:v5];
  }
}

- (NSDictionary)keyPaths
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [(HPSAccessorySettingService *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HPSAccessorySettingService_keyPaths__block_invoke;
  v7[3] = &unk_2797744B8;
  v7[4] = &v8;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HPSAccessorySettingService_keyPaths__block_invoke_443;
  v6[3] = &unk_2797745F8;
  v6[4] = &v8;
  [v3 getKeyPathsWithCompletionHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __38__HPSAccessorySettingService_keyPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__HPSAccessorySettingService_keyPaths__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC10];
}

- (NSDictionary)heldAssertions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [(HPSAccessorySettingService *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HPSAccessorySettingService_heldAssertions__block_invoke;
  v7[3] = &unk_2797744B8;
  v7[4] = &v8;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HPSAccessorySettingService_heldAssertions__block_invoke_444;
  v6[3] = &unk_2797745F8;
  v6[4] = &v8;
  [v3 heldAssertionsWithCompletionHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __44__HPSAccessorySettingService_heldAssertions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__HPSAccessorySettingService_heldAssertions__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC10];
}

- (id)keyPathsAvailability
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v2 = [(HPSAccessorySettingService *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke;
  v7[3] = &unk_2797744B8;
  v7[4] = &v8;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke_445;
  v6[3] = &unk_2797745F8;
  v6[4] = &v8;
  [v3 getKeyPathsAvailabilityWithCompletionHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC10];
}

- (BOOL)hasOptedToHH2
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(HPSAccessorySettingService *)self xpcConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HPSAccessorySettingService_hasOptedToHH2__block_invoke;
  v6[3] = &unk_2797744B8;
  v6[4] = &v7;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HPSAccessorySettingService_hasOptedToHH2__block_invoke_2;
  v5[3] = &unk_279774620;
  v5[4] = &v7;
  [v3 optedToHH2WithCompletionHandler:v5];

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (void)optedToHH2WithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HPSAccessorySettingService *)self xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke;
  v8[3] = &unk_2797741A0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 optedToHH2WithCompletionHandler:v6];
}

void __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__HPSAccessorySettingService_overrideOptedToHH2State___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__HPSAccessorySettingService_overrideOptedToHH2State___block_invoke_cold_1();
  }
}

- (void)notifyDidUpdateSetting:(id)a3 forKeyPath:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 description];
    v10 = [v6 keyPath];
    v14 = 136315650;
    v15 = "[HPSAccessorySettingService notifyDidUpdateSetting:forKeyPath:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s Notify Setting %@ updated for keyPath %@ ", &v14, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (v6)
    {
      v12 = [HPSHomeKitSettingHelper compatibleReadSetting:v6];
    }

    else
    {
      v12 = 0;
    }

    [WeakRetained didUpdateSetting:v12 forKeyPath:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionInterrupted
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (HPSAccessorySettingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was interrupted!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was invalidated!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __48__HPSAccessorySettingService_startXPCConnection__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 description];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__HPSAccessorySettingService_keyPaths__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__HPSAccessorySettingService_heldAssertions__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__HPSAccessorySettingService_overrideOptedToHH2State___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end