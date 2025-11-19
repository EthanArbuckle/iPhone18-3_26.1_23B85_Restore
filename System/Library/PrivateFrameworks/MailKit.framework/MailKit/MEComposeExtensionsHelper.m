@interface MEComposeExtensionsHelper
+ (id)log;
- (MEComposeExtensionsHelper)initWithComposeSession:(id)a3 extensionsController:(id)a4 iconReloader:(id)a5;
- (MEMailComposeExtensionDelegate)extensionDelegate;
- (void)_dispatchMailComposeSessionDidBeginForExtensions:(id)a3;
- (void)appExtensionViewControllerForExtensionIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)dispatchEmailAddressTokenIconRequestsForMailMessage:(id)a3 completionHandler:(id)a4;
- (void)extensionsMatched:(id)a3;
- (void)extensionsNoLongerMatching:(id)a3;
- (void)getAdditionalHeadersForMessage:(id)a3 completionHandler:(id)a4;
- (void)regenerateEmailAddressTokenChangesForSession:(id)a3 forContextUUID:(id)a4;
- (void)regenerateSecurityStatusInformationForSession:(id)a3 forContextUUID:(id)a4;
@end

@implementation MEComposeExtensionsHelper

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MEComposeExtensionsHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __32__MEComposeExtensionsHelper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (MEComposeExtensionsHelper)initWithComposeSession:(id)a3 extensionsController:(id)a4 iconReloader:(id)a5
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v40.receiver = self;
  v40.super_class = MEComposeExtensionsHelper;
  v12 = [(MEComposeExtensionsHelper *)&v40 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composeSession, a3);
    objc_storeStrong(&v13->_extensionsController, a4);
    v14 = MEMORY[0x277CCACA8];
    v15 = [(MEComposeSession *)v13->_composeSession sessionID];
    v16 = [v14 stringWithFormat:@"com.apple.email.composeextensionrequests.%@", v15];

    v17 = v16;
    v18 = [v16 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_UTILITY, 0);
    v21 = dispatch_queue_create(v18, v20);
    extensionRequestDispatcherQueue = v13->_extensionRequestDispatcherQueue;
    v13->_extensionRequestDispatcherQueue = v21;

    v23 = objc_alloc(MEMORY[0x277D07168]);
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = [v23 initWithObject:v24];
    remoteExtensions = v13->_remoteExtensions;
    v13->_remoteExtensions = v25;

    v27 = objc_alloc_init(MEMORY[0x277D07170]);
    extensionsObserverCancelable = v13->_extensionsObserverCancelable;
    v13->_extensionsObserverCancelable = v27;

    objc_storeWeak(&v13->_extensionDelegate, v11);
    v29 = objc_alloc(MEMORY[0x277D07168]);
    v30 = objc_opt_new();
    v31 = [v29 initWithObject:v30];
    shouldPerformSendValidationMap = v13->_shouldPerformSendValidationMap;
    v13->_shouldPerformSendValidationMap = v31;

    objc_initWeak(&location, v13);
    extensionsController = v13->_extensionsController;
    v41[0] = @"MEComposeSessionHandler";
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __86__MEComposeExtensionsHelper_initWithComposeSession_extensionsController_iconReloader___block_invoke;
    v37[3] = &unk_279858ED0;
    objc_copyWeak(&v38, &location);
    [(MEAppExtensionsController *)extensionsController registerMailAppExtensionsObserver:v13 capabilities:v34 includeDisabled:0 completion:v37];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

void __86__MEComposeExtensionsHelper_initWithComposeSession_extensionsController_iconReloader___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (v10)
    {
      v13 = +[MEComposeExtensionsHelper log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __86__MEComposeExtensionsHelper_initWithComposeSession_extensionsController_iconReloader___block_invoke_cold_1(v10, v13);
      }
    }

    else
    {
      v14 = WeakRetained[3];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__MEComposeExtensionsHelper_initWithComposeSession_extensionsController_iconReloader___block_invoke_9;
      v16[3] = &unk_279858EA8;
      v15 = v9;
      v17 = v15;
      [v14 performWhileLocked:v16];
      [v12 _dispatchMailComposeSessionDidBeginForExtensions:v15];
      [v12[4] addCancelable:v8];
      v13 = v17;
    }
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(EFLocked *)self->_remoteExtensions getObject];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) composeSessionInterface];
        [v7 mailComposeSessionDidEnd:self->_composeSession];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [(EFManualCancelationToken *)self->_extensionsObserverCancelable cancel];
  v9.receiver = self;
  v9.super_class = MEComposeExtensionsHelper;
  [(MEComposeExtensionsHelper *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)extensionsMatched:(id)a3
{
  v4 = a3;
  remoteExtensions = self->_remoteExtensions;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__MEComposeExtensionsHelper_extensionsMatched___block_invoke;
  v7[3] = &unk_279858EA8;
  v6 = v4;
  v8 = v6;
  [(EFLocked *)remoteExtensions performWhileLocked:v7];
  [(MEComposeExtensionsHelper *)self _dispatchMailComposeSessionDidBeginForExtensions:v6];
}

- (void)extensionsNoLongerMatching:(id)a3
{
  v4 = a3;
  remoteExtensions = self->_remoteExtensions;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__MEComposeExtensionsHelper_extensionsNoLongerMatching___block_invoke;
  v8[3] = &unk_279858EA8;
  v6 = v4;
  v9 = v6;
  [(EFLocked *)remoteExtensions performWhileLocked:v8];
  v7 = [(MEComposeExtensionsHelper *)self extensionDelegate];
  [v7 reloadEmailAddressTokenIcons];
}

- (void)_dispatchMailComposeSessionDidBeginForExtensions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  extensionRequestDispatcherQueue = self->_extensionRequestDispatcherQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke;
  block[3] = &unk_279858E58;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(extensionRequestDispatcherQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = *v14;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v13 + 1) + 8 * i);
          v7 = [v6 interfaceForExtensionCapability:@"MEComposeSessionHandler"];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke_2;
          v12[3] = &unk_279858EF8;
          v12[4] = WeakRetained;
          v12[5] = v6;
          [v7 addSuccessBlock:v12];

          v8 = [v6 interfaceForExtensionCapability:@"MEComposeSessionHandler"];
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke_15;
          v11[3] = &unk_279858F20;
          v11[4] = WeakRetained;
          [v8 addFailureBlock:v11];
        }

        v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v3);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MEComposeExtensionsHelper log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_257F67000, v4, OS_LOG_TYPE_DEFAULT, "ComposeSession:%@ Dispatchin mailComposeSessionDidBegin for extension %@", &v10, 0x16u);
  }

  [v3 mailComposeSessionDidBegin:*(*(a1 + 32) + 8)];
  v7 = [*(a1 + 32) extensionDelegate];
  [v7 reloadEmailAddressTokenIcons];

  v8 = [*(a1 + 40) extensionHostContext];
  [v8 setComposeExtensionHostDelegate:*(a1 + 32)];

  v9 = *MEMORY[0x277D85DE8];
}

void __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MEComposeExtensionsHelper log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke_15_cold_1(a1, v3, v4);
  }
}

- (void)dispatchEmailAddressTokenIconRequestsForMailMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  objc_initWeak(&location, self);
  extensionRequestDispatcherQueue = self->_extensionRequestDispatcherQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__MEComposeExtensionsHelper_dispatchEmailAddressTokenIconRequestsForMailMessage_completionHandler___block_invoke;
  block[3] = &unk_279858F98;
  objc_copyWeak(&v17, &location);
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  dispatch_async(extensionRequestDispatcherQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __99__MEComposeExtensionsHelper_dispatchEmailAddressTokenIconRequestsForMailMessage_completionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v21 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v19 = [*(WeakRetained + 3) getObject];
    [v3[1] setMailMessage:*(a1 + 32)];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v19;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v4)
    {
      v5 = *v27;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v26 + 1) + 8 * i);
          v8 = [MEMORY[0x277D071A8] promise];
          v9 = [v7 synchronousComposeSessionInterface];
          v10 = v21[1];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __99__MEComposeExtensionsHelper_dispatchEmailAddressTokenIconRequestsForMailMessage_completionHandler___block_invoke_2;
          v23[3] = &unk_279858F70;
          v23[4] = v7;
          v24 = *(a1 + 40);
          v11 = v8;
          v25 = v11;
          [v9 session:v10 annotateAddressesWithCompletionHandler:v23];

          v12 = [v11 future];
          v22 = 0;
          v13 = [v12 resultWithTimeout:&v22 error:3.0];
          v14 = v22;

          if (v14)
          {
            v15 = +[MEComposeExtensionsHelper log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = v21[1];
              *buf = 138412546;
              v31 = v7;
              v32 = 2112;
              v33 = v16;
              _os_log_error_impl(&dword_257F67000, v15, OS_LOG_TYPE_ERROR, "Extension:%@ timeout when requesting address annotations for session %@", buf, 0x16u);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v4);
    }

    v17 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __99__MEComposeExtensionsHelper_dispatchEmailAddressTokenIconRequestsForMailMessage_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__MEComposeExtensionsHelper_dispatchEmailAddressTokenIconRequestsForMailMessage_completionHandler___block_invoke_3;
  v18[3] = &unk_279858F48;
  v18[4] = *(a1 + 32);
  v3 = [a2 ef_mapValues:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
        if (!v9)
        {
          v9 = objc_opt_new();
          [*(a1 + 40) setObject:? forKeyedSubscript:?];
        }

        v10 = [v3 objectForKeyedSubscript:v8];
        [v9 addObject:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = *(a1 + 48);
  v12 = [MEMORY[0x277CBEB68] null];
  [v11 finishWithResult:v12];

  v13 = *MEMORY[0x277D85DE8];
}

id __99__MEComposeExtensionsHelper_dispatchEmailAddressTokenIconRequestsForMailMessage_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) displayName];
  [v3 setOriginatorExtensionDisplayName:v4];

  return v3;
}

- (void)regenerateEmailAddressTokenChangesForSession:(id)a3 forContextUUID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [MEComposeExtensionsHelper log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MEComposeExtensionsHelper *)self extensionDelegate];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_257F67000, v5, OS_LOG_TYPE_DEFAULT, "MEMailComposeExtensionsHelper[%@]: Ivoking %@ to reload address token icons.", &v9, 0x16u);
  }

  v7 = [(MEComposeExtensionsHelper *)self extensionDelegate];
  [v7 reloadEmailAddressTokenIcons];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)regenerateSecurityStatusInformationForSession:(id)a3 forContextUUID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [MEComposeExtensionsHelper log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MEComposeExtensionsHelper *)self extensionDelegate];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_257F67000, v5, OS_LOG_TYPE_DEFAULT, "MEMailComposeExtensionsHelper[%@]: Ivoking %@ to reload message security status information.", &v9, 0x16u);
  }

  v7 = [(MEComposeExtensionsHelper *)self extensionDelegate];
  [v7 reloadCanSignAndEncryptControls];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getAdditionalHeadersForMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  objc_initWeak(&location, self);
  extensionRequestDispatcherQueue = self->_extensionRequestDispatcherQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MEComposeExtensionsHelper_getAdditionalHeadersForMessage_completionHandler___block_invoke;
  block[3] = &unk_279858F98;
  objc_copyWeak(&v17, &location);
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  dispatch_async(extensionRequestDispatcherQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __78__MEComposeExtensionsHelper_getAdditionalHeadersForMessage_completionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v21 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v19 = [*(WeakRetained + 3) getObject];
    [v3[1] setMailMessage:*(a1 + 32)];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v19;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v4)
    {
      v5 = *v27;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v26 + 1) + 8 * i);
          v8 = [MEMORY[0x277D071A8] promise];
          v9 = [v7 synchronousComposeSessionInterface];
          v10 = v21[1];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __78__MEComposeExtensionsHelper_getAdditionalHeadersForMessage_completionHandler___block_invoke_2;
          v23[3] = &unk_279858FC0;
          v24 = *(a1 + 40);
          v11 = v8;
          v25 = v11;
          [v9 session:v10 getAdditionalHeadersWithCompletion:v23];

          v12 = [v11 future];
          v22 = 0;
          v13 = [v12 resultWithTimeout:&v22 error:3.0];
          v14 = v22;

          if (v14)
          {
            v15 = +[MEComposeExtensionsHelper log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = v21[1];
              *buf = 138412546;
              v31 = v7;
              v32 = 2112;
              v33 = v16;
              _os_log_error_impl(&dword_257F67000, v15, OS_LOG_TYPE_ERROR, "Extension:%@ timeout when fetching additional headers for session %@", buf, 0x16u);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v4);
    }

    v17 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __78__MEComposeExtensionsHelper_getAdditionalHeadersForMessage_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) addEntriesFromDictionary:?];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CBEB68] null];
  [v3 finishWithResult:v4];
}

- (void)appExtensionViewControllerForExtensionIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EFLocked *)self->_remoteExtensions getObject];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__MEComposeExtensionsHelper_appExtensionViewControllerForExtensionIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_279858E10;
  v9 = v6;
  v16 = v9;
  v10 = [v8 ef_firstObjectPassingTest:v15];
  composeSession = self->_composeSession;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__MEComposeExtensionsHelper_appExtensionViewControllerForExtensionIdentifier_completionHandler___block_invoke_2;
  v13[3] = &unk_279858FE8;
  v12 = v7;
  v14 = v12;
  [v10 getMailComposeExtensionViewControllerForSession:composeSession hostDelegate:self completionHandler:v13];
}

uint64_t __96__MEComposeExtensionsHelper_appExtensionViewControllerForExtensionIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 extensionID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (MEMailComposeExtensionDelegate)extensionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionDelegate);

  return WeakRetained;
}

void __86__MEComposeExtensionsHelper_initWithComposeSession_extensionsController_iconReloader___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_257F67000, a2, OS_LOG_TYPE_ERROR, "Failed to register for app extensions changes error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __78__MEComposeExtensionsHelper__dispatchMailComposeSessionDidBeginForExtensions___block_invoke_15_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 8);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_257F67000, log, OS_LOG_TYPE_ERROR, "ComposeSession:%@ Failed to fetch the compose session interface due to %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end