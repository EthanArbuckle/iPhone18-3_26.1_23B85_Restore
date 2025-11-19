@interface NPKSharedWebServiceProvider
+ (id)sharedWebServiceProvider;
- (NPKSharedWebServiceProvider)init;
- (id)_peerPaymentAccount;
- (id)_peerPaymentWebServiceContext;
- (id)_webServiceContext;
- (void)_deviceFailedToPair:(id)a3;
- (void)archiveWebServiceBackgroundContext:(id)a3;
- (void)archiveWebServiceContext:(id)a3;
- (void)checkCompanionPeerPaymentRegistrationState;
- (void)dealloc;
- (void)handleAppletState:(id)a3 forUniqueID:(id)a4;
- (void)handleBalanceReminderUpdate:(id)a3 balance:(id)a4 forUniqueID:(id)a5;
- (void)handleBalanceUpdate:(id)a3 forUniqueID:(id)a4;
- (void)handleCredentialsUpdate:(id)a3 forUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5 completion:(id)a6;
- (void)handleDownloadAllPaymentPasses;
- (void)handlePaymentTransactions:(id)a3 appletStates:(id)a4 forUniqueIDs:(id)a5;
- (void)handlePaymentWebServiceContextFromWatch:(id)a3;
- (void)handlePreconditionNotMetWithUniqueIDs:(id)a3 preconditionDescription:(id)a4 shouldUnregister:(BOOL)a5;
- (void)handlePreferredAID:(id)a3 forPassWithUniqueID:(id)a4;
- (void)handlePushToken:(id)a3;
- (void)handleRemoveTransactionsWithIdentifiers:(id)a3;
- (void)handleUpdatePaymentPassWithTypeIdentifier:(id)a3;
- (void)handleUpdatedPeerPaymentWebServiceContext:(id)a3 account:(id)a4;
- (void)loadWebService;
- (void)sendPaymentOptionsDefaultsToWatch;
- (void)sendWebServiceContextToWatch;
- (void)setNewAuthRandom:(id)a3;
- (void)showPaymentSetupForAppDisplayName:(id)a3;
- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4;
@end

@implementation NPKSharedWebServiceProvider

+ (id)sharedWebServiceProvider
{
  if (sharedWebServiceProvider_onceToken != -1)
  {
    +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  }

  v3 = sharedWebServiceProvider_sharedWebServiceProvider;

  return v3;
}

void __55__NPKSharedWebServiceProvider_sharedWebServiceProvider__block_invoke()
{
  v0 = objc_alloc_init(NPKSharedWebServiceProvider);
  v1 = sharedWebServiceProvider_sharedWebServiceProvider;
  sharedWebServiceProvider_sharedWebServiceProvider = v0;
}

- (NPKSharedWebServiceProvider)init
{
  v36.receiver = self;
  v36.super_class = NPKSharedWebServiceProvider;
  v2 = [(NPKSharedWebServiceProvider *)&v36 init];
  if (v2)
  {
    v3 = [NPKPaymentWebServiceCompanionTargetDevice alloc];
    v4 = [(NPKPaymentWebServiceCompanionTargetDevice *)v3 initWithContext:0 responseQueue:MEMORY[0x277D85CD0]];
    [(NPKPaymentWebServiceCompanionTargetDevice *)v4 setDelegate:v2];
    objc_storeStrong(&v2->_targetDevice, v4);
    v5 = objc_alloc_init(NPKPeerPaymentWebServiceCompanionTargetDevice);
    objc_storeStrong(&v2->_peerPaymentTargetDevice, v5);
    v2->_companionAgentConnectionLock._os_unfair_lock_opaque = 0;
    out_token = 0;
    objc_initWeak(&location, v2);
    v6 = [@"com.apple.NanoPassKit.NPKSharedPaymentWebServiceChanged" UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __35__NPKSharedWebServiceProvider_init__block_invoke;
    handler[3] = &unk_279948FD0;
    objc_copyWeak(&v33, &location);
    v7 = v2;
    v32 = v7;
    notify_register_dispatch(v6, &out_token, MEMORY[0x277D85CD0], handler);

    v8 = [@"com.apple.NanoPassKit.NPKSharedPeerPaymentWebServiceChanged" UTF8String];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __35__NPKSharedWebServiceProvider_init__block_invoke_72;
    v28[3] = &unk_279948FD0;
    objc_copyWeak(&v30, &location);
    v9 = v7;
    v29 = v9;
    notify_register_dispatch(v8, &out_token, MEMORY[0x277D85CD0], v28);

    v10 = [@"com.apple.NanoPassKit.NPKPeerPaymentAccountChangedDarwinNotification" UTF8String];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __35__NPKSharedWebServiceProvider_init__block_invoke_73;
    v25[3] = &unk_279948FD0;
    objc_copyWeak(&v27, &location);
    v11 = v9;
    v26 = v11;
    notify_register_dispatch(v10, &out_token, MEMORY[0x277D85CD0], v25);

    v12 = [*MEMORY[0x277D2BC70] UTF8String];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __35__NPKSharedWebServiceProvider_init__block_invoke_74;
    v23[3] = &unk_279944F20;
    objc_copyWeak(&v24, &location);
    notify_register_dispatch(v12, &out_token, MEMORY[0x277D85CD0], v23);

    v13 = [*MEMORY[0x277D2BCB8] UTF8String];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __35__NPKSharedWebServiceProvider_init__block_invoke_77;
    v20 = &unk_279948FD0;
    objc_copyWeak(&v22, &location);
    v14 = v11;
    v21 = v14;
    notify_register_dispatch(v13, &out_token, MEMORY[0x277D85CD0], &v17);

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v14 selector:sel__deviceFailedToPair_ name:*MEMORY[0x277D2BC58] object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__NPKSharedWebServiceProvider_init__block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Loading web service context", v9, 2u);
    }
  }

  v5 = [*(a1 + 32) _webServiceContext];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained webService];
  [v7 setContext:v5];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"NPKSharedWebServiceDidChangeNotification" object:0];
}

void __35__NPKSharedWebServiceProvider_init__block_invoke_72(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Loading peer payment web service context", v9, 2u);
    }
  }

  v5 = [*(a1 + 32) _peerPaymentWebServiceContext];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained peerPaymentWebService];
  [v7 setContext:v5];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"NPKSharedPeerPaymentWebServiceDidChangeNotification" object:0];
}

void __35__NPKSharedWebServiceProvider_init__block_invoke_73(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Loading peer payment account", v8, 2u);
    }
  }

  v5 = [*(a1 + 32) _peerPaymentAccount];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPeerPaymentAccount:v5];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"NPKSharedPeerPaymentAccountDidChangeNotification" object:0];
}

void __35__NPKSharedWebServiceProvider_init__block_invoke_74(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Device unpaired", v13, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277D38180]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained webService];
  [v7 setContext:v5];

  v8 = objc_alloc_init(MEMORY[0x277D381B8]);
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 peerPaymentWebService];
  [v10 setContext:v8];

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 setPeerPaymentAccount:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"NPKSharedWebServiceActiveDeviceDidChangeNotification" object:0];
  [v12 postNotificationName:@"NPKSharedWebServiceDidChangeNotification" object:0];
  [v12 postNotificationName:@"NPKSharedPeerPaymentWebServiceDidChangeNotification" object:0];
  [v12 postNotificationName:@"NPKSharedPeerPaymentAccountDidChangeNotification" object:0];
}

void __35__NPKSharedWebServiceProvider_init__block_invoke_77(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Active watch changed", v14, 2u);
    }
  }

  v5 = [*(a1 + 32) _webServiceContext];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained webService];
  [v7 setContext:v5];

  v8 = [*(a1 + 32) _peerPaymentWebServiceContext];
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 peerPaymentWebService];
  [v10 setContext:v8];

  v11 = [*(a1 + 32) _peerPaymentAccount];
  v12 = objc_loadWeakRetained((a1 + 40));
  [v12 setPeerPaymentAccount:v11];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"NPKSharedWebServiceActiveDeviceDidChangeNotification" object:0];
  [v13 postNotificationName:@"NPKSharedWebServiceDidChangeNotification" object:0];
  [v13 postNotificationName:@"NPKSharedPeerPaymentWebServiceDidChangeNotification" object:0];
  [v13 postNotificationName:@"NPKSharedPeerPaymentAccountDidChangeNotification" object:0];
}

- (void)dealloc
{
  v3 = [(NPKSharedWebServiceProvider *)self targetDevice];
  [v3 setDelegate:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NPKSharedWebServiceProvider;
  [(NPKSharedWebServiceProvider *)&v5 dealloc];
}

- (void)loadWebService
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Shared web service provider loading web service", buf, 2u);
    }
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __45__NPKSharedWebServiceProvider_loadWebService__block_invoke;
  v27[3] = &unk_279944F98;
  v27[4] = self;
  os_unfair_lock_lock(&self->_companionAgentConnectionLock);
  __45__NPKSharedWebServiceProvider_loadWebService__block_invoke(v27);
  os_unfair_lock_unlock(&self->_companionAgentConnectionLock);
  v6 = [(NPKSharedWebServiceProvider *)self _webServiceContext];
  v7 = [v6 secureElementID];

  if (!v7)
  {
    [v6 setDeviceID:0];
  }

  v8 = [(NPKSharedWebServiceProvider *)self webService];

  if (v8)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Shared web service provider updated web service context", buf, 2u);
      }
    }

    v12 = [(NPKSharedWebServiceProvider *)self webService];
    [v12 setContext:v6];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D38170]);
    v14 = [(NPKSharedWebServiceProvider *)self targetDevice];
    v15 = [(NPKSharedWebServiceProvider *)self targetDevice];
    v12 = [v13 initWithContext:v6 targetDevice:v14 archiver:v15];

    [(NPKSharedWebServiceProvider *)self setWebService:v12];
    v16 = pk_Payment_log();
    LODWORD(v15) = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Shared web service provider instantiated web service", buf, 2u);
      }
    }
  }

  v18 = [(NPKSharedWebServiceProvider *)self _peerPaymentWebServiceContext];
  v19 = [(NPKSharedWebServiceProvider *)self peerPaymentWebService];

  if (v19)
  {
    v20 = [(NPKSharedWebServiceProvider *)self peerPaymentWebService];
    [(NPKSharedPeerPaymentWebServiceArchiver *)v20 setContext:v18];
  }

  else
  {
    v21 = [NPKSharedPeerPaymentWebServiceArchiver alloc];
    v22 = [(NPKSharedWebServiceProvider *)self companionAgentConnection];
    v20 = [(NPKSharedPeerPaymentWebServiceArchiver *)v21 initWithCompanionAgentConnection:v22];

    v23 = [(NPKSharedWebServiceProvider *)self peerPaymentTargetDevice];
    v24 = [objc_alloc(MEMORY[0x277D381B0]) initWithContext:v18 targetDevice:v23 archiver:v20];
    v25 = [MEMORY[0x277D381A0] sharedInstance];
    [v24 setPeerPaymentService:v25];

    [v23 setPeerPaymentWebService:v24];
    [(NPKSharedWebServiceProvider *)self setPeerPaymentWebService:v24];
  }

  v26 = [(NPKSharedWebServiceProvider *)self _peerPaymentAccount];
  [(NPKSharedWebServiceProvider *)self setPeerPaymentAccount:v26];
}

uint64_t __45__NPKSharedWebServiceProvider_loadWebService__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NPKCompanionAgentConnection);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(*(a1 + 32) + 48);

  return [v5 setQueueAppropriateFailedActions:1];
}

- (id)_webServiceContext
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__18;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __49__NPKSharedWebServiceProvider__webServiceContext__block_invoke;
  v15 = &unk_279944FE8;
  v16 = self;
  v17 = &v18;
  v3 = v13;
  os_unfair_lock_lock(&self->_companionAgentConnectionLock);
  v14(v3);

  os_unfair_lock_unlock(&self->_companionAgentConnectionLock);
  v4 = v19[5];
  if (!v4)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: No web service context from daemon; starting fresh!", v12, 2u);
      }
    }

    v8 = objc_alloc_init(MEMORY[0x277D38180]);
    v9 = v19[5];
    v19[5] = v8;

    v4 = v19[5];
  }

  [v4 setTransactionServiceDisabled:1];
  [v19[5] setMessageServiceDisabled:1];
  [v19[5] setIgnoreProvisioningEnablementPercentage:1];
  v10 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __49__NPKSharedWebServiceProvider__webServiceContext__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = NPKPairedOrPairingDevice();
  v3 = [v2 sharedPaymentWebServiceContextForDevice:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_peerPaymentWebServiceContext
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__18;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __60__NPKSharedWebServiceProvider__peerPaymentWebServiceContext__block_invoke;
  v15 = &unk_279944FE8;
  v16 = self;
  v17 = &v18;
  v3 = v13;
  os_unfair_lock_lock(&self->_companionAgentConnectionLock);
  v14(v3);

  os_unfair_lock_unlock(&self->_companionAgentConnectionLock);
  v4 = v19[5];
  if (!v4)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: No peer payment web service context from daemon; starting fresh!", v12, 2u);
      }
    }

    v8 = objc_alloc_init(MEMORY[0x277D381B8]);
    v9 = v19[5];
    v19[5] = v8;

    v4 = v19[5];
  }

  v10 = v4;
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __60__NPKSharedWebServiceProvider__peerPaymentWebServiceContext__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = NPKPairedOrPairingDevice();
  v3 = [v2 sharedPeerPaymentWebServiceContextForDevice:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_peerPaymentAccount
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__18;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __50__NPKSharedWebServiceProvider__peerPaymentAccount__block_invoke;
  v12 = &unk_279944FE8;
  v13 = self;
  v14 = &v15;
  v3 = v10;
  os_unfair_lock_lock(&self->_companionAgentConnectionLock);
  v11(v3);

  os_unfair_lock_unlock(&self->_companionAgentConnectionLock);
  if (!v16[5])
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: No peer payment web service account from daemon", v9, 2u);
      }
    }
  }

  v7 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __50__NPKSharedWebServiceProvider__peerPaymentAccount__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = NPKPairedOrPairingDevice();
  v3 = [v2 peerPaymentAccountForDevice:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_deviceFailedToPair:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Device failed to pair: %@", &v13, 0xCu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277D38180]);
  v9 = [(NPKSharedWebServiceProvider *)self webService];
  [v9 setContext:v8];

  v10 = objc_alloc_init(MEMORY[0x277D381B8]);
  v11 = [(NPKSharedWebServiceProvider *)self peerPaymentWebService];
  [v11 setContext:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handlePushToken:(id)a3
{
  v4 = a3;
  v5 = [(NPKSharedWebServiceProvider *)self webService];
  v12 = [v5 context];

  [v12 setPushToken:v4];
  v6 = [(NPKSharedWebServiceProvider *)self webService];
  v7 = [(NPKSharedWebServiceProvider *)self targetDevice];
  v8 = [v6 context];
  [v7 archiveContext:v8];

  v9 = [(NPKSharedWebServiceProvider *)self peerPaymentWebService];
  v10 = [v9 context];
  [v10 setPushToken:v4];

  v11 = [v9 archiver];
  [v11 archiveContext:v10];
}

- (void)handlePreconditionNotMetWithUniqueIDs:(id)a3 preconditionDescription:(id)a4 shouldUnregister:(BOOL)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: Should not be receiving precondition not met messages from Bridge (%@)", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handlePaymentTransactions:(id)a3 appletStates:(id)a4 forUniqueIDs:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: Should not be receiving payment transactions from Bridge (%@ %@ %@)", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleAppletState:(id)a3 forUniqueID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Should not be receiving applet state from Bridge (%@ %@)", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveTransactionsWithIdentifiers:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Should not be receiving remove transactions from Bridge (%@)", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleBalanceUpdate:(id)a3 forUniqueID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Should not be receiving balance update from Bridge (%@ %@)", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleBalanceReminderUpdate:(id)a3 balance:(id)a4 forUniqueID:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: Should not be receiving balance reminder update from Bridge (%@ %@ %@)", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleCredentialsUpdate:(id)a3 forUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPKSharedWebServiceProvider *)self companionAgentConnection];
  [v14 updateCredentials:v13 forUniqueID:v12 paymentApplicationIdentifier:v11 completion:v10];
}

- (void)handleUpdatePaymentPassWithTypeIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Should not be receiving update payment pass requests from Bridge (%@)", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handlePreferredAID:(id)a3 forPassWithUniqueID:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: Should not be receiving preferred AID updates from Bridge (%@)", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)archiveWebServiceContext:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Archive web service context: %@", &v11, 0xCu);
    }
  }

  v8 = [(NPKSharedWebServiceProvider *)self companionAgentConnection];
  v9 = NPKPairedOrPairingDevice();
  [v8 setSharedPaymentWebServiceContext:v4 forDevice:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)archiveWebServiceBackgroundContext:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Should not be archiving web service background context from Bridge", v6, 2u);
    }
  }
}

- (void)handlePaymentWebServiceContextFromWatch:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Received updated webServiceContext:%@", &v12, 0xCu);
    }
  }

  v8 = [(NPKSharedWebServiceProvider *)self webService];
  [v8 setContext:v4];

  v9 = [(NPKSharedWebServiceProvider *)self companionAgentConnection];
  v10 = NPKPairedOrPairingDevice();
  [v9 setSharedPaymentWebServiceContext:v4 forDevice:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendWebServiceContextToWatch
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Shared web service provider: Sending web service context to watch", v9, 2u);
    }
  }

  v6 = [(NPKSharedWebServiceProvider *)self targetDevice];
  v7 = [(NPKSharedWebServiceProvider *)self webService];
  v8 = [v7 context];
  [v6 sendWebServiceContextToWatch:v8];
}

- (void)showPaymentSetupForAppDisplayName:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Should not be receiving show payment setup requests from Bridge", v6, 2u);
    }
  }
}

- (void)sendPaymentOptionsDefaultsToWatch
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Should not be receiving send payment options defaults requests from Bridge", v5, 2u);
    }
  }
}

- (void)setNewAuthRandom:(id)a3
{
  v4 = a3;
  v5 = [(NPKSharedWebServiceProvider *)self companionAgentConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NPKSharedWebServiceProvider_setNewAuthRandom___block_invoke;
  v7[3] = &unk_279948FF8;
  v8 = v4;
  v6 = v4;
  [v5 paymentPassUniqueIDsSynchronous:0 reply:v7];
}

uint64_t __48__NPKSharedWebServiceProvider_setNewAuthRandom___block_invoke(uint64_t a1, void *a2)
{
  [a2 count];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)handleUpdatedPeerPaymentWebServiceContext:(id)a3 account:(id)a4
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Should not be receiving updated peer payment web service context from Bridge", v7, 2u);
    }
  }
}

- (void)handleDownloadAllPaymentPasses
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Should not be receiving download all payment passes from Bridge", v5, 2u);
    }
  }
}

- (void)checkCompanionPeerPaymentRegistrationState
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Should not be receiving check companion peer payment registration state from Bridge", v5, 2u);
    }
  }
}

- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKSharedWebServiceProvider *)self companionAgentConnection];
  [v8 startBackgroundVerificationObserverForPass:v7 verificationMethod:v6];
}

@end