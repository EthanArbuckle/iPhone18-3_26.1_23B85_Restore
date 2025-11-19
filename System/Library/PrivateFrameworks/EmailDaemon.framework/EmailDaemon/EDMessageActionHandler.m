@interface EDMessageActionHandler
+ (OS_os_log)log;
- (EDMessageActionHandler)initWithExtensionsController:(id)a3;
- (NSArray)messageActionProviders;
- (NSArray)requiredHeaders;
- (id)actionDecisionForMessage:(id)a3 usingMessageActionProvider:(id)a4;
- (id)actionProviderInterfacesByExtensionID;
- (void)dealloc;
- (void)extensionsMatched:(id)a3;
- (void)extensionsNoLongerMatching:(id)a3;
@end

@implementation EDMessageActionHandler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EDMessageActionHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_54 != -1)
  {
    dispatch_once(&log_onceToken_54, block);
  }

  v2 = log_log_54;

  return v2;
}

void __29__EDMessageActionHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_54;
  log_log_54 = v1;
}

- (EDMessageActionHandler)initWithExtensionsController:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = EDMessageActionHandler;
  v6 = [(EDMessageActionHandler *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionsController, a3);
    v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    extensionsObserverCancelable = v7->_extensionsObserverCancelable;
    v7->_extensionsObserverCancelable = v8;

    v10 = objc_alloc(MEMORY[0x1E699B7F0]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v10 initWithObject:v11];
    remoteExtensions = v7->_remoteExtensions;
    v7->_remoteExtensions = v12;

    objc_initWeak(&location, v7);
    extensionsController = v7->_extensionsController;
    v22[0] = *MEMORY[0x1E69ADA38];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__EDMessageActionHandler_initWithExtensionsController___block_invoke;
    v18[3] = &unk_1E82536C8;
    objc_copyWeak(&v19, &location);
    [(MEAppExtensionsController *)extensionsController registerMailAppExtensionsObserver:v7 capabilities:v15 includeDisabled:0 completion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void __55__EDMessageActionHandler_initWithExtensionsController___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      v13 = +[EDMessageActionHandler log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __55__EDMessageActionHandler_initWithExtensionsController___block_invoke_cold_1(v10, v13);
      }
    }

    else
    {
      v14 = WeakRetained[2];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__EDMessageActionHandler_initWithExtensionsController___block_invoke_7;
      v16[3] = &unk_1E82536A0;
      v17 = v9;
      [v14 performWhileLocked:v16];
      [v12[3] addCancelable:v8];
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 postNotificationName:@"EDMessageActionHandlerProvidersChanged" object:0];

      v13 = v17;
    }
  }
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_extensionsObserverCancelable cancel];
  v3.receiver = self;
  v3.super_class = EDMessageActionHandler;
  [(EDMessageActionHandler *)&v3 dealloc];
}

- (id)actionProviderInterfacesByExtensionID
{
  v2 = [(EFLocked *)self->_remoteExtensions getObject];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__EDMessageActionHandler_actionProviderInterfacesByExtensionID__block_invoke;
  v6[3] = &unk_1E82536F0;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __63__EDMessageActionHandler_actionProviderInterfacesByExtensionID__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 synchronousMessageActionProviderInterface];
  v4 = *(a1 + 32);
  v5 = [v6 extensionID];
  [v4 setObject:v3 forKeyedSubscript:v5];
}

- (NSArray)messageActionProviders
{
  v2 = [(EFLocked *)self->_remoteExtensions getObject];
  v3 = [v2 ef_compactMap:&__block_literal_global_48];

  return v3;
}

EDMessageActionProvider *__48__EDMessageActionHandler_messageActionProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [EDMessageActionProvider alloc];
  v4 = [v2 extensionID];
  v5 = [v2 displayName];
  v6 = [(EDMessageActionProvider *)v3 initWithID:v4 name:v5];

  return v6;
}

- (id)actionDecisionForMessage:(id)a3 usingMessageActionProvider:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDMessageActionHandler *)self actionProviderInterfacesByExtensionID];
  v9 = [v8 objectForKeyedSubscript:v7];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__20;
  v34 = __Block_byref_object_dispose__20;
  v35 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E699B868]);
  v11 = [v10 future];
  v12 = v11;
  if (v9)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __78__EDMessageActionHandler_actionDecisionForMessage_usingMessageActionProvider___block_invoke;
    v26[3] = &unk_1E8253738;
    v13 = v11;
    v27 = v13;
    v29 = &v30;
    v28 = v10;
    [v9 decideActionForMessage:v6 completionHandler:v26];
    v25 = 0;
    v14 = [v13 resultWithTimeout:&v25 error:2.0];
    v15 = v25;
    if (v15)
    {
      [v13 cancel];
      v16 = +[EDMessageActionHandler log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v15 ef_publicDescription];
        *buf = 138543618;
        v37 = v7;
        v38 = 2114;
        v39 = v17;
        _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Error occured requesting action for extension:  %{public}@: Error: %{public}@", buf, 0x16u);
      }
    }

    v18 = v27;
  }

  else
  {
    v18 = +[EDMessageActionHandler log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [EDMessageActionHandler actionDecisionForMessage:v7 usingMessageActionProvider:v18];
    }

    v15 = 0;
  }

  v19 = v31[5];
  if (v19)
  {
    v20 = +[EDMessageActionHandler log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v31[5];
      *buf = 138543618;
      v37 = v7;
      v38 = 2114;
      v39 = v21;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Received decision from action handler: %{public}@: %{public}@", buf, 0x16u);
    }

    v19 = v31[5];
  }

  v22 = v19;

  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __78__EDMessageActionHandler_actionDecisionForMessage_usingMessageActionProvider___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 40) finishWithResult:MEMORY[0x1E695E118]];
}

- (void)extensionsMatched:(id)a3
{
  v4 = a3;
  remoteExtensions = self->_remoteExtensions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__EDMessageActionHandler_extensionsMatched___block_invoke;
  v8[3] = &unk_1E82536A0;
  v6 = v4;
  v9 = v6;
  [(EFLocked *)remoteExtensions performWhileLocked:v8];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"EDMessageActionHandlerProvidersChanged" object:0];
}

- (void)extensionsNoLongerMatching:(id)a3
{
  v4 = a3;
  remoteExtensions = self->_remoteExtensions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__EDMessageActionHandler_extensionsNoLongerMatching___block_invoke;
  v8[3] = &unk_1E82536A0;
  v6 = v4;
  v9 = v6;
  [(EFLocked *)remoteExtensions performWhileLocked:v8];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"EDMessageActionHandlerProvidersChanged" object:0];
}

- (NSArray)requiredHeaders
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(EDMessageActionHandler *)self actionProviderInterfacesByExtensionID];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __41__EDMessageActionHandler_requiredHeaders__block_invoke;
        v13[3] = &unk_1E8253760;
        v14 = v3;
        [v9 requiredHeadersWithCompletion:v13];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [v3 allObjects];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __55__EDMessageActionHandler_initWithExtensionsController___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to register for app extensions changes error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)actionDecisionForMessage:(uint64_t)a1 usingMessageActionProvider:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Extension not found while attempting to find action: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end