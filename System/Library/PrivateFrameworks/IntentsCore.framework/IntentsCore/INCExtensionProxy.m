@interface INCExtensionProxy
+ (id)_errorAggregation:(id)a3 innerError:(id)a4;
+ (void)initialize;
- (BOOL)_extensionProcessHasEntitlement:(id)a3;
- (BOOL)_isExtensionBeingDebugged;
- (BOOL)_isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler:(id)a3;
- (BOOL)_shouldForwardToAppWithIntent:(id)a3 intentResponse:(id)a4;
- (BOOL)shouldResetRequestAfterHandle;
- (id)_initWithConnection:(id)a3 extension:(id)a4 vendorRemote:(id)a5 auditTokenValue:(id)a6;
- (id)_processIntent:(id)a3 intentResponse:(id)a4 withCacheItems:(id)a5;
- (void)_issueSandboxExtensionsForFileURLsIfNeededToIntent:(id)a3;
- (void)confirmIntentWithCompletionHandler:(id)a3;
- (void)getDefaultValueForParameterNamed:(id)a3 completionHandler:(id)a4;
- (void)getOptionsForParameterNamed:(id)a3 completionHandler:(id)a4;
- (void)getOptionsForParameterNamed:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
- (void)handleIntentWithCompletionHandler:(id)a3;
- (void)prewarmAppWithIntent:(id)a3 completionHandler:(id)a4;
- (void)resolveIntentSlotKeyPath:(id)a3 completionHandler:(id)a4;
- (void)resolveIntentSlotKeyPaths:(id)a3 completionHandler:(id)a4;
- (void)startSendingUpdatesToObserver:(id)a3;
- (void)stopSendingUpdates;
@end

@implementation INCExtensionProxy

- (BOOL)_isExtensionBeingDebugged
{
  v2 = [(INCExtensionProxy *)self _extension];
  v3 = [v2 _plugIn];
  v4 = ([v3 userElection] >> 8) & 1;

  return v4;
}

- (void)_issueSandboxExtensionsForFileURLsIfNeededToIntent:(id)a3
{
  auditTokenValue = self->_auditTokenValue;
  if (auditTokenValue)
  {
    memset(v5, 0, sizeof(v5));
    v4 = a3;
    [(NSValue *)auditTokenValue getValue:v5 size:32];
    INIssueSandboxExtensionsForFileURLEnumerableToProcess();
  }
}

- (BOOL)_isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(INCExtensionProxy *)self _connection];
  v6 = [v5 _transaction];

  v7 = [v6 currentIntent];
  v8 = [(INCExtensionProxy *)self _extension];
  v9 = [v8 _intents_intentsRestrictedWhileProtectedDataUnavailable];
  v10 = [v7 _className];
  if (![v9 containsObject:v10])
  {

    goto LABEL_5;
  }

  v11 = INIsDeviceLocked();

  if (!v11)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = [(INCExtensionConnection *)self->_connection _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__INCExtensionProxy__isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler___block_invoke;
  block[3] = &unk_2797E7FF0;
  v16 = v4;
  dispatch_async(v12, block);

  v13 = 1;
LABEL_6:

  return v13;
}

void __91__INCExtensionProxy__isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x277CD3D48]) _initWithCode:5 userActivity:0];
    [v2 _setRequiresProtectedData:1];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_processIntent:(id)a3 intentResponse:(id)a4 withCacheItems:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v7 = a4;
  v8 = a5;
  v9 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v7 backingStore];
    *buf = 136315394;
    v40 = "[INCExtensionProxy _processIntent:intentResponse:withCacheItems:]";
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_255503000, v10, OS_LOG_TYPE_INFO, "%s intentResponse.backingStore = %@", buf, 0x16u);
  }

  v26 = v7;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        dispatch_group_enter(v13);
        v19 = MEMORY[0x277CD40B0];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __66__INCExtensionProxy__processIntent_intentResponse_withCacheItems___block_invoke;
        v30[3] = &unk_2797E7FC8;
        v31 = v12;
        v32 = self;
        v33 = v13;
        [v19 deserializeCacheItem:v18 completion:v30];
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  v20 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v13, v20))
  {
    v21 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "[INCExtensionProxy _processIntent:intentResponse:withCacheItems:]";
      v41 = 2112;
      v42 = v27;
      _os_log_error_impl(&dword_255503000, v21, OS_LOG_TYPE_ERROR, "%s Image caching timed out for intent:%@", buf, 0x16u);
    }
  }

  if ([(INCExtensionProxy *)self shouldCache])
  {
    v22 = [MEMORY[0x277CD3AD0] sharedCache];
    [v26 _intents_updateContainerWithCache:v22];
  }

  v23 = [v12 copy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __66__INCExtensionProxy__processIntent_intentResponse_withCacheItems___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
    v4 = [*(a1 + 40) shouldCache];
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = [*(a1 + 40) shouldCache];
  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    if (v4)
    {
      v9 = [MEMORY[0x277CD3AD0] sharedCache];
      [v9 addCacheableObject:v3];
    }

    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_9:
    dispatch_group_leave(*(a1 + 48));
    goto LABEL_10;
  }

  v6 = v3;
  v7 = [*(a1 + 40) imageProcessingHandler];

  if (v7)
  {
    v8 = [*(a1 + 40) imageProcessingHandler];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__INCExtensionProxy__processIntent_intentResponse_withCacheItems___block_invoke_2;
    v13[3] = &unk_2797E7FA0;
    v14 = *(a1 + 48);
    (v8)[2](v8, v6, v13);
  }

  else
  {
    v11 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[INCExtensionProxy _processIntent:intentResponse:withCacheItems:]_block_invoke";
      _os_log_error_impl(&dword_255503000, v11, OS_LOG_TYPE_ERROR, "%s Image caching handler is not set", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CD3AD0] sharedCache];
    [v12 addCacheableObject:v6];

    dispatch_group_leave(*(a1 + 48));
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

void __66__INCExtensionProxy__processIntent_intentResponse_withCacheItems___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[INCExtensionProxy _processIntent:intentResponse:withCacheItems:]_block_invoke_2";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_255503000, v4, OS_LOG_TYPE_ERROR, "%s Error processing image : %@", &v6, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_extensionProcessHasEntitlement:(id)a3
{
  memset(v6, 0, sizeof(v6));
  auditTokenValue = self->_auditTokenValue;
  v4 = a3;
  [(NSValue *)auditTokenValue getValue:v6 size:32];
  LOBYTE(auditTokenValue) = INProcessHasEntitlement();

  return auditTokenValue;
}

- (BOOL)_shouldForwardToAppWithIntent:(id)a3 intentResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 _shouldForwardIntentToApp] && (objc_msgSend(v7, "_type") == 1 || -[INCExtensionProxy _extensionProcessHasEntitlement:](self, "_extensionProcessHasEntitlement:", *MEMORY[0x277CD3850])))
  {
    v8 = 1;
  }

  else if ([v7 _intentResponseCode] == 4)
  {
    v8 = [v6 _shouldForwardToAppOnSucccess];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)prewarmAppWithIntent:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 _intents_launchIdForCurrentPlatform];
  v23[1] = 0;
  INExtractAppInfoFromSiriLaunchId();
  v8 = 0;

  v23[0] = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:0 error:v23];
  v10 = v23[0];
  if (v10)
  {
    v11 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[INCExtensionProxy prewarmAppWithIntent:completionHandler:]";
      v28 = 2112;
      v29 = v10;
      _os_log_error_impl(&dword_255503000, v11, OS_LOG_TYPE_ERROR, "%s Unable to create application record: %@", buf, 0x16u);
    }

    v6[2](v6, 0, v10);
  }

  else
  {
    v12 = *MEMORY[0x277D67110];
    v24[0] = *MEMORY[0x277D0ABF0];
    v24[1] = v12;
    v25[0] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "supportsMultiwindow")}];
    v25[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    v15 = [(INCExtensionProxy *)self _connection];
    v16 = [v15 _queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__INCExtensionProxy_prewarmAppWithIntent_completionHandler___block_invoke;
    block[3] = &unk_2797E8140;
    v20 = v14;
    v21 = v8;
    v22 = v6;
    v17 = v14;
    dispatch_async(v16, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __60__INCExtensionProxy_prewarmAppWithIntent_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v3 = [MEMORY[0x277D0AD60] optionsWithDictionary:*(a1 + 32)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__INCExtensionProxy_prewarmAppWithIntent_completionHandler___block_invoke_2;
  v5[3] = &unk_2797E7F78;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 openApplication:v4 withOptions:v3 completion:v5];
}

- (id)_initWithConnection:(id)a3 extension:(id)a4 vendorRemote:(id)a5 auditTokenValue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = INCExtensionProxy;
  v15 = [(INCExtensionProxy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extension, a4);
    objc_storeStrong(&v16->_vendorRemote, a5);
    objc_storeStrong(&v16->_connection, a3);
    objc_storeStrong(&v16->_auditTokenValue, a6);
    v16->_shouldCache = 1;
  }

  return v16;
}

- (void)stopSendingUpdates
{
  v3 = [(INCExtensionProxy *)self _connection];
  v7 = [v3 _transaction];

  v4 = [v7 currentIntent];
  [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v4];
  v5 = [objc_alloc(MEMORY[0x277CD41F0]) initWithIntent:v4];
  v6 = [(INCExtensionProxy *)self _connection];
  [v6 requestTimeoutInterval];
  [v5 setRequestTimeout:?];

  [v5 executeRemotelyWithVendorRemote:self->_vendorRemote completionHandler:&__block_literal_global_62];
}

- (void)startSendingUpdatesToObserver:(id)a3
{
  v4 = a3;
  v5 = [(INCExtensionProxy *)self _connection];
  v11 = [v5 _transaction];

  v6 = [v11 currentIntent];
  [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v6];
  v7 = objc_alloc(MEMORY[0x277CD41C8]);
  v8 = [(INCExtensionProxy *)self _connection];
  v9 = [v7 initWithIntent:v6 endpointProvider:v8 observer:v4];

  v10 = [(INCExtensionProxy *)self _connection];
  [v10 requestTimeoutInterval];
  [v9 setRequestTimeout:?];

  [v9 executeRemotelyWithVendorRemote:self->_vendorRemote completionHandler:&__block_literal_global_757];
}

- (void)handleIntentWithCompletionHandler:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(INCExtensionProxy *)self _connection];
  v6 = [v5 _transaction];

  v7 = [v6 currentIntent];
  if ([v7 _executionContext] != 9 || !-[INCExtensionProxy _isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler:](self, "_isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler:", v4))
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v7 backingStore];
      *buf = 136315394;
      v31 = "[INCExtensionProxy handleIntentWithCompletionHandler:]";
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_255503000, v9, OS_LOG_TYPE_INFO, "%s intent.backingStore = %@", buf, 0x16u);
    }

    [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v7];
    v11 = [[INCExtensionTransactionState alloc] initWithType:4 intent:v7 intentResponse:0 userActivities:0];
    [v6 setState:v11];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke;
    v26[3] = &unk_2797E7EB8;
    v26[4] = self;
    v12 = v7;
    v27 = v12;
    v28 = v6;
    v13 = v4;
    v29 = v13;
    v14 = MEMORY[0x259C36E60](v26);
    [(INCExtensionConnection *)self->_connection _startRequestTimerWithExtensionProxy:self];
    v15 = [objc_alloc(MEMORY[0x277CD3CB0]) initWithIntent:v12];
    v16 = [(INCExtensionProxy *)self _connection];
    [v16 requestTimeoutInterval];
    [v15 setRequestTimeout:?];

    vendorRemote = self->_vendorRemote;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke_2;
    v21[3] = &unk_2797E7F30;
    v21[4] = self;
    v22 = v12;
    v23 = v15;
    v24 = v13;
    v25 = v14;
    v18 = v14;
    v19 = v15;
    [v19 executeRemotelyWithVendorRemote:vendorRemote completionHandler:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) _processIntent:*(a1 + 40) intentResponse:v10 withCacheItems:a3];
  v6 = *(a1 + 48);
  v7 = [[INCExtensionTransactionState alloc] initWithType:5 intent:*(a1 + 40) intentResponse:v10 userActivities:v5];
  [v6 setState:v7];

  v8 = [*(a1 + 32) _connection];
  if ([v8 _cancelRequestTimer])
  {
    v9 = *(a1 + 56);

    if (v9)
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
  }
}

void __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke_2(id *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 intentResponse];
  v5 = [v3 error];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[INCExtensionProxy handleIntentWithCompletionHandler:]_block_invoke_2";
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Received handle response from vendor remote: %@", buf, 0x16u);
  }

  v7 = [a1[4] responseHandler];

  if (v7)
  {
    v8 = [a1[4] responseHandler];
    v8[2]();
  }

  v9 = [a1[4] _connection];
  v10 = [v9 _queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke_54;
  v15[3] = &unk_2797E7F08;
  v16 = v5;
  v17 = a1[5];
  v22 = a1[7];
  v18 = a1[4];
  v19 = v4;
  v20 = a1[6];
  v23 = a1[8];
  v21 = v3;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  dispatch_async(v10, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke_54(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v16 = a1[5];
      *buf = 136315650;
      v27 = "[INCExtensionProxy handleIntentWithCompletionHandler:]_block_invoke";
      v28 = 2112;
      v29 = v16;
      v30 = 2114;
      v31 = v2;
      _os_log_error_impl(&dword_255503000, v3, OS_LOG_TYPE_ERROR, "%s Got error when vendor remote is trying to handle intent %@: %{public}@", buf, 0x20u);
    }

    v4 = a1[10];
    if (v4)
    {
      v5 = [[INCExtensionError alloc] initWithErrorCode:1399 underlyingError:a1[4]];
      v4[2](v4, 0, v5);
    }

    goto LABEL_19;
  }

  if ([a1[6] _shouldForwardToAppWithIntent:a1[5] intentResponse:a1[7]])
  {
    [a1[8] setAllowsScenelessAppLaunch:0];
    v6 = [a1[5] _intents_launchIdForCurrentPlatform];
    v25 = 0;
    INExtractAppInfoFromSiriLaunchId();
    v7 = 0;

    if (v7 && ([a1[6] _vendorRemote], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [objc_alloc(MEMORY[0x277CD3A78]) initWithBundleIdentifier:v7 intentForwardingAction:a1[8]];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke_56;
      v19[3] = &unk_2797E7EE0;
      v20 = a1[5];
      v21 = a1[4];
      v23 = a1[10];
      v22 = a1[7];
      v24 = a1[11];
      [(INCExtensionError *)v9 deliverIntentForwardingActionWithResponseHandler:v19];
    }

    else
    {
      v13 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v17 = a1[5];
        *buf = 136315394;
        v27 = "[INCExtensionProxy handleIntentWithCompletionHandler:]_block_invoke";
        v28 = 2112;
        v29 = v17;
        _os_log_error_impl(&dword_255503000, v13, OS_LOG_TYPE_ERROR, "%s No application id was found to handle intent %@", buf, 0x16u);
      }

      v14 = a1[10];
      if (!v14)
      {
        goto LABEL_18;
      }

      v9 = [[INCExtensionError alloc] initWithErrorCode:1315 underlyingError:0];
      v14[2](v14, 0, v9);
    }

LABEL_18:
LABEL_19:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = a1[11];
  v11 = a1[7];
  v18 = [a1[9] cacheItems];
  v10[2](v10, v11);
  v12 = *MEMORY[0x277D85DE8];
}

void __55__INCExtensionProxy_handleIntentWithCompletionHandler___block_invoke_56(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v11 = *(a1 + 64);
    v6 = [v3 intentResponse];
    (*(v11 + 16))(v11, v6, 0);
    goto LABEL_7;
  }

  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = 136315650;
    v16 = "[INCExtensionProxy handleIntentWithCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_error_impl(&dword_255503000, v5, OS_LOG_TYPE_ERROR, "%s Got error when application is trying to handle intent %@: %{public}@", &v15, 0x20u);
  }

  if (*(a1 + 56))
  {
    v6 = [v3 error];
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IntentResponseCodeDomain" code:objc_msgSend(*(a1 + 48) userInfo:{"_code"), 0}];
    v8 = [INCExtensionProxy _errorAggregation:v6 innerError:v7];
    v9 = *(a1 + 56);
    v10 = [[INCExtensionError alloc] initWithErrorCode:1399 underlyingError:v8];
    (*(v9 + 16))(v9, 0, v10);

LABEL_7:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)confirmIntentWithCompletionHandler:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(INCExtensionProxy *)self _connection];
  v6 = [v5 _transaction];

  v7 = [v6 currentIntent];
  if ([v7 _executionContext] != 9 || !-[INCExtensionProxy _isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler:](self, "_isIntentRestrictedWhileProtectedDataUnavailableWithCompletionHandler:", v4))
  {
    [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v7];
    v8 = [[INCExtensionTransactionState alloc] initWithType:2 intent:v7 intentResponse:0 userActivities:0];
    [v6 setState:v8];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke;
    v33[3] = &unk_2797E7E18;
    v33[4] = self;
    v9 = v7;
    v34 = v9;
    v36 = v4;
    v35 = v6;
    v10 = MEMORY[0x259C36E60](v33);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 privatePlayMediaIntentData];
      v12 = [v11 shouldSuppressCommonWholeHouseAudioRoutes];
      v13 = [v12 BOOLValue];

      if (!v13)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_37;
        v30[3] = &unk_2797E7E68;
        v15 = v10;
        v32 = v15;
        v16 = v9;
        v31 = v16;
        v17 = MEMORY[0x259C36E60](v30);
        v18 = [v16 airPlayRouteIds];
        if ([v18 count])
        {
          (v17)[2](v17, v18);
        }

        else
        {
          v19 = [v16 hashedRouteUIDs];
          if ([v19 count])
          {
            v20 = *MEMORY[0x277CD38C8];
            if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v38 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]";
              v39 = 2112;
              v40 = v19;
              _os_log_impl(&dword_255503000, v20, OS_LOG_TYPE_INFO, "%s Have encryptedAirPlayRouteIds: %@, will attempt decoding", buf, 0x16u);
            }

            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_49;
            v27[3] = &unk_2797E7E90;
            v21 = &v28;
            v28 = v17;
            v22 = &v29;
            v29 = v15;
            INCDecodeHashedRouteUIDs(v19, v27);
          }

          else
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_51;
            v24[3] = &unk_2797E7E90;
            v21 = &v25;
            v25 = v17;
            v22 = &v26;
            v26 = v15;
            __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_51(v24, 0, 0);
          }
        }

        goto LABEL_17;
      }

      v14 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v38 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]";
        _os_log_debug_impl(&dword_255503000, v14, OS_LOG_TYPE_DEBUG, "%s Suppressing route setting due to intent-based flag", buf, 0xCu);
      }
    }

    v10[2](v10, 0);
LABEL_17:
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  [v2 _startRequestTimerWithExtensionProxy:*(a1 + 32)];

  v3 = [objc_alloc(MEMORY[0x277CD3B00]) initWithIntent:*(a1 + 40)];
  v4 = [*(a1 + 32) _connection];
  [v4 requestTimeoutInterval];
  [v3 setRequestTimeout:?];

  v5 = [*(a1 + 32) _vendorRemote];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2797E7DF0;
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 executeRemotelyWithVendorRemote:v5 completionHandler:v10];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_37(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (INIsHomepod() && (_os_feature_enabled_impl() & 1) != 0)
  {
    v4 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke";
      _os_log_debug_impl(&dword_255503000, v4, OS_LOG_TYPE_DEBUG, "%s Suppressing route setting, leaving it to extension to handle", buf, 0xCu);
    }

    [*(a1 + 32) _setAirPlayRouteIds:v3];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = MEMORY[0x277CD38C8];
    v6 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke";
      _os_log_debug_impl(&dword_255503000, v6, OS_LOG_TYPE_DEBUG, "%s Routing audio to airplay output devices", buf, 0xCu);
    }

    v7 = [v3 count];
    v8 = os_signpost_id_generate(*v5);
    v9 = *v5;
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 67240192;
      LODWORD(v17) = v7;
      _os_signpost_emit_with_name_impl(&dword_255503000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "INSignpostSiriAirPlayRouteSetup", " routeIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", buf, 8u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_40;
    v12[3] = &unk_2797E7E40;
    v14 = v8;
    v15 = v7;
    v13 = *(a1 + 40);
    INCRouteAudioToAirplayOutputDevices(v3, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s Have decryptedRouteUIDs: %@, will attempt to set route", &v10, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v9 = *MEMORY[0x277D85DE8];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s Have group deviceUIDs: %@, will attempt to set route", &v10, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v9 = *MEMORY[0x277D85DE8];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_40(void *a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CD38C8];
  v7 = *MEMORY[0x277CD38C8];
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = a1[6];
    v15 = 67240192;
    LODWORD(v16) = v10;
    _os_signpost_emit_with_name_impl(&dword_255503000, v8, OS_SIGNPOST_INTERVAL_END, v9, "INSignpostSiriAirPlayRouteSetup", " routeIdCount=%{public,signpost.telemetry:number1}d  enableTelemetry=YES ", &v15, 8u);
  }

  v11 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = @"Unsuccessfully";
    if (a2)
    {
      v14 = @"Successfully";
    }

    v15 = 136315394;
    v16 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke";
    v17 = 2114;
    v18 = v14;
    _os_log_debug_impl(&dword_255503000, v11, OS_LOG_TYPE_DEBUG, "%s %{public}@ routed output to airplay devices, continuing to confirm intent", &v15, 0x16u);
  }

  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  (*(a1[4] + 16))(a1[4], v12);

  v13 = *MEMORY[0x277D85DE8];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_2(id *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 intentResponse];
  v5 = [v3 error];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke_2";
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Received confirm response from vendor remote: %@", buf, 0x16u);
  }

  v7 = [a1[4] responseHandler];

  if (v7)
  {
    v8 = [a1[4] responseHandler];
    v8[2]();
  }

  if ([v4 _type] == 1 && objc_msgSend(v4, "_intentResponseCode") == 4)
  {
    [v4 _setCode:{objc_msgSend(objc_opt_class(), "_codeFromIntentResponseCode:", 1)}];
  }

  if ([a1[5] _executionContext] == 8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setNowPlayingInfo:0];
    }
  }

  v9 = [a1[4] _connection];
  v10 = [v9 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_32;
  block[3] = &unk_2797E7DC8;
  v17 = v5;
  v18 = a1[5];
  v11 = a1[7];
  v19 = a1[4];
  v20 = v4;
  v23 = v11;
  v21 = v3;
  v22 = a1[6];
  v12 = v3;
  v13 = v4;
  v14 = v5;
  dispatch_async(v10, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __56__INCExtensionProxy_confirmIntentWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 136315650;
      v20 = "[INCExtensionProxy confirmIntentWithCompletionHandler:]_block_invoke";
      v21 = 2112;
      v22 = v17;
      v23 = 2114;
      v24 = v2;
      _os_log_error_impl(&dword_255503000, v3, OS_LOG_TYPE_ERROR, "%s Got error when vendor remote is trying to confirm intent %@: %{public}@", buf, 0x20u);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = [[INCExtensionError alloc] initWithErrorCode:1399 underlyingError:*(a1 + 32)];
      (*(v4 + 16))(v4, 0, v5);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [*(a1 + 64) cacheItems];
    v18 = [v7 _processIntent:v8 intentResponse:v9 withCacheItems:v10];

    v11 = *(a1 + 72);
    v12 = [[INCExtensionTransactionState alloc] initWithType:3 intent:*(a1 + 40) intentResponse:*(a1 + 56) userActivities:v18];
    [v11 setState:v12];

    v13 = [*(a1 + 48) _connection];
    if ([v13 _cancelRequestTimer])
    {
      v14 = *(a1 + 80);

      if (v14)
      {
        v15 = *(a1 + 56);
        (*(*(a1 + 80) + 16))();
      }
    }

    else
    {
    }

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)resolveIntentSlotKeyPaths:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(INCExtensionProxy *)self _connection];
  v9 = [v8 _transaction];

  v10 = [v9 currentIntent];
  [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v10];
  v11 = [[INCExtensionTransactionState alloc] initWithType:1 intent:v10 intentResponse:0 userActivities:0];
  [v9 setState:v11];

  [(INCExtensionConnection *)self->_connection _startRequestTimerWithExtensionProxy:self];
  v12 = [objc_alloc(MEMORY[0x277CD3F98]) initWithIntent:v10 parameterNames:v7];

  v13 = [(INCExtensionProxy *)self _connection];
  [v13 requestTimeoutInterval];
  [v12 setRequestTimeout:?];

  vendorRemote = self->_vendorRemote;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__INCExtensionProxy_resolveIntentSlotKeyPaths_completionHandler___block_invoke;
  v16[3] = &unk_2797E7DA0;
  v16[4] = self;
  v17 = v6;
  v15 = v6;
  [v12 executeRemotelyWithVendorRemote:vendorRemote completionHandler:v16];
}

void __65__INCExtensionProxy_resolveIntentSlotKeyPaths_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 updatedIntent];
  v6 = [v3 parameterResolutionResults];

  v7 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[INCExtensionProxy resolveIntentSlotKeyPaths:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s Received slot resolution results from vendor remote: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) responseHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) responseHandler];
    v9[2]();
  }

  v10 = [*(a1 + 32) _connection];
  v11 = [v10 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__INCExtensionProxy_resolveIntentSlotKeyPaths_completionHandler___block_invoke_29;
  block[3] = &unk_2797E7D78;
  v20 = v4;
  v12 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v19 = v12;
  v13 = v6;
  v14 = v5;
  dispatch_async(v11, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __65__INCExtensionProxy_resolveIntentSlotKeyPaths_completionHandler___block_invoke_29(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) _connection];
    [v2 setIntent:*(a1 + 40)];
  }

  v8 = [*(a1 + 32) _connection];
  if ([v8 _cancelRequestTimer])
  {
    v3 = *(a1 + 56);

    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 64);
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 56) + 16);

      v7();
    }
  }

  else
  {
  }
}

- (void)resolveIntentSlotKeyPath:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INCExtensionProxy *)self _connection];
  v9 = [v8 _transaction];

  v10 = [v9 currentIntent];
  [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v10];
  v11 = [[INCExtensionTransactionState alloc] initWithType:1 intent:v10 intentResponse:0 userActivities:0];
  [v9 setState:v11];

  [(INCExtensionConnection *)self->_connection _startRequestTimerWithExtensionProxy:self];
  v12 = [objc_alloc(MEMORY[0x277CD3F98]) initWithIntent:v10 parameterName:v6];
  v13 = [(INCExtensionProxy *)self _connection];
  [v13 requestTimeoutInterval];
  [v12 setRequestTimeout:?];

  vendorRemote = self->_vendorRemote;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__INCExtensionProxy_resolveIntentSlotKeyPath_completionHandler___block_invoke;
  v17[3] = &unk_2797E7D50;
  v18 = v6;
  v19 = self;
  v20 = v7;
  v15 = v7;
  v16 = v6;
  [v12 executeRemotelyWithVendorRemote:vendorRemote completionHandler:v17];
}

void __64__INCExtensionProxy_resolveIntentSlotKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 parameterResolutionResults];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 data];

  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[INCExtensionProxy resolveIntentSlotKeyPath:completionHandler:]_block_invoke";
    _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Received slot resolution result from vendor remote", buf, 0xCu);
  }

  v7 = [*(a1 + 40) responseHandler];

  if (v7)
  {
    v8 = [*(a1 + 40) responseHandler];
    v8[2]();
  }

  v9 = [*(a1 + 40) _connection];
  v10 = [v9 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__INCExtensionProxy_resolveIntentSlotKeyPath_completionHandler___block_invoke_23;
  block[3] = &unk_2797E8140;
  v11 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v15 = v5;
  v16 = v11;
  v12 = v5;
  dispatch_async(v10, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __64__INCExtensionProxy_resolveIntentSlotKeyPath_completionHandler___block_invoke_23(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = [*(a1 + 32) _connection];
  if ([v9 _cancelRequestTimer])
  {
    v2 = *(a1 + 48);

    if (v2)
    {
      v3 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 40);
        if (v4)
        {
          v5 = [objc_alloc(MEMORY[0x277CD4358]) initWithData:*(a1 + 40)];
        }

        else
        {
          v5 = @"no data";
        }

        *buf = 136315394;
        v11 = "[INCExtensionProxy resolveIntentSlotKeyPath:completionHandler:]_block_invoke";
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_255503000, v3, OS_LOG_TYPE_INFO, "%s resolutionResultData = %@", buf, 0x16u);
        if (v4)
        {
        }
      }

      v7 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)getDefaultValueForParameterNamed:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INCExtensionProxy *)self _connection];
    v9 = [v8 _transaction];

    v10 = [v9 currentIntent];
    v11 = [v10 _codableDescription];
    v12 = [v11 attributeByName:v6];

    if ([v12 objectClass])
    {
      [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v10];
      v13 = [[INCExtensionTransactionState alloc] initWithType:1 intent:v10 intentResponse:0 userActivities:0];
      [v9 setState:v13];

      [(INCExtensionConnection *)self->_connection _startRequestTimerWithExtensionProxy:self];
      v14 = [objc_alloc(MEMORY[0x277CD3C50]) initWithIntent:v10 parameterName:v6];
      v15 = [(INCExtensionProxy *)self _connection];
      [v15 requestTimeoutInterval];
      [v14 setRequestTimeout:?];

      vendorRemote = self->_vendorRemote;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__INCExtensionProxy_getDefaultValueForParameterNamed_completionHandler___block_invoke;
      v18[3] = &unk_2797E7D28;
      v18[4] = self;
      v19 = v6;
      v20 = v12;
      v21 = v7;
      [v14 executeRemotelyWithVendorRemote:vendorRemote completionHandler:v18];
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1400 userInfo:0];
      (*(v7 + 2))(v7, 0, v17);
    }
  }
}

void __72__INCExtensionProxy_getDefaultValueForParameterNamed_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 archivedDefaultValue];
  v5 = [v3 error];

  v6 = [*(a1 + 32) _connection];
  v7 = [v6 _queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__INCExtensionProxy_getDefaultValueForParameterNamed_completionHandler___block_invoke_2;
  v11[3] = &unk_2797E7D00;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v4;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = v4;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __72__INCExtensionProxy_getDefaultValueForParameterNamed_completionHandler___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _connection];
  v3 = [v2 _cancelRequestTimer];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 48);
        *buf = 136315650;
        v38 = "[INCExtensionProxy getDefaultValueForParameterNamed:completionHandler:]_block_invoke_2";
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v4;
        _os_log_error_impl(&dword_255503000, v5, OS_LOG_TYPE_ERROR, "%s Error getting default value for parameter name: %@ - %@", buf, 0x20u);
      }
    }

    if (*(a1 + 56))
    {
      v6 = objc_alloc_init(MEMORY[0x277CD3D60]);
      v7 = MEMORY[0x277CCAAC8];
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
      v15 = *(a1 + 56);
      v35 = 0;
      v16 = [v7 unarchivedObjectOfClasses:v14 fromData:v15 error:&v35];
      v17 = v35;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            v23 = 0;
            do
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [v6 decodeWithCodableAttribute:*(a1 + 64) from:*(*(&v31 + 1) + 8 * v23)];
              [v18 if_addObjectIfNonNil:v24];

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v21);
        }

        v25 = [v18 copy];
        if (!v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = [v6 decodeWithCodableAttribute:*(a1 + 64) from:v16];
        if (!v17)
        {
LABEL_20:
          (*(*(a1 + 72) + 16))();

          goto LABEL_21;
        }
      }

      v27 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 48);
        *buf = 136315650;
        v38 = "[INCExtensionProxy getDefaultValueForParameterNamed:completionHandler:]_block_invoke";
        v39 = 2112;
        v40 = v17;
        v41 = 2112;
        v42 = v30;
        _os_log_error_impl(&dword_255503000, v27, OS_LOG_TYPE_ERROR, "%s Error unarchiving default value: %@. Parameter name: %@", buf, 0x20u);
      }

      goto LABEL_20;
    }

    v26 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }

LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)getOptionsForParameterNamed:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(INCExtensionProxy *)self _connection];
    v12 = [v11 _transaction];

    v13 = [v12 currentIntent];
    v14 = [v13 _codableDescription];
    v15 = [v14 attributeByName:v8];

    if ([v15 objectClass])
    {
      [(INCExtensionProxy *)self _issueSandboxExtensionsForFileURLsIfNeededToIntent:v13];
      v16 = [[INCExtensionTransactionState alloc] initWithType:1 intent:v13 intentResponse:0 userActivities:0];
      [v12 setState:v16];

      [(INCExtensionConnection *)self->_connection _startRequestTimerWithExtensionProxy:self];
      v17 = [objc_alloc(MEMORY[0x277CD3C58]) initWithIntent:v13 parameterName:v8 searchTerm:v9];
      v18 = [(INCExtensionProxy *)self _connection];
      [v18 requestTimeoutInterval];
      [v17 setRequestTimeout:?];

      vendorRemote = self->_vendorRemote;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __78__INCExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke;
      v21[3] = &unk_2797E7CD8;
      v21[4] = self;
      v22 = v8;
      v24 = v10;
      v23 = v15;
      [v17 executeRemotelyWithVendorRemote:vendorRemote completionHandler:v21];
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INCExtensionErrorDomain" code:1400 userInfo:0];
      (*(v10 + 2))(v10, 0, v20);
    }
  }
}

void __78__INCExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 archivedObjectCollection];
  v5 = [v3 error];

  v6 = [*(a1 + 32) _connection];
  v7 = [v6 _queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__INCExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke_2;
  v11[3] = &unk_2797E7D00;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v16 = *(a1 + 56);
  v14 = v4;
  v15 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __78__INCExtensionProxy_getOptionsForParameterNamed_searchTerm_completionHandler___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _connection];
  v3 = [v2 _cancelRequestTimer];

  if (!v3)
  {
LABEL_16:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      *buf = 136315650;
      v25 = "[INCExtensionProxy getOptionsForParameterNamed:searchTerm:completionHandler:]_block_invoke_2";
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v4;
      _os_log_error_impl(&dword_255503000, v5, OS_LOG_TYPE_ERROR, "%s Error getting options for parameter: %@ - %@", buf, 0x20u);
      v20 = *(a1 + 40);
    }

    (*(*(a1 + 72) + 16))();
    goto LABEL_16;
  }

  if (*(a1 + 56))
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_opt_class();
    v8 = *(a1 + 56);
    v23 = 0;
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:v8 error:&v23];
    v10 = v23;
    if (v10)
    {
      v11 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 48);
        *buf = 136315650;
        v25 = "[INCExtensionProxy getOptionsForParameterNamed:searchTerm:completionHandler:]_block_invoke";
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v21;
        _os_log_error_impl(&dword_255503000, v11, OS_LOG_TYPE_ERROR, "%s Error unarchiving options: %@. Parameter name: %@", buf, 0x20u);
      }

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v17 = [v9 _typedObjectCollectionWithCodableAttribute:*(a1 + 64)];
      (*(*(a1 + 72) + 16))();
    }

    goto LABEL_16;
  }

  v12 = *(a1 + 72);
  v13 = objc_alloc(MEMORY[0x277CD3E28]);
  v14 = [v13 initWithItems:MEMORY[0x277CBEBF8]];
  v15 = *(a1 + 40);
  v22 = v14;
  (*(v12 + 16))(v12);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)getOptionsForParameterNamed:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__INCExtensionProxy_getOptionsForParameterNamed_completionHandler___block_invoke;
    v8[3] = &unk_2797E7CA8;
    v9 = v6;
    [(INCExtensionProxy *)self getOptionsForParameterNamed:a3 searchTerm:0 completionHandler:v8];
  }
}

void __67__INCExtensionProxy_getOptionsForParameterNamed_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 allItems];
  (*(v4 + 16))(v4, v6, v5);
}

- (BOOL)shouldResetRequestAfterHandle
{
  v2 = [(INCExtensionProxy *)self _connection];
  v3 = [v2 _transaction];
  v4 = [v3 shouldResetRequestAfterHandle];

  return v4;
}

+ (id)_errorAggregation:(id)a3 innerError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 userInfo];
      v9 = [v8 mutableCopy];

      v10 = [v5 underlyingErrors];
      v11 = [v10 arrayByAddingObject:v7];

      [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA578]];
      v12 = MEMORY[0x277CCA9B8];
      v13 = [v5 domain];
      v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v5 userInfo:{"code"), v9}];

      goto LABEL_7;
    }

    v15 = v5;
  }

  else
  {
    v15 = v6;
  }

  v14 = v15;
LABEL_7:

  return v14;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    INLogInitIfNeeded();
  }
}

@end