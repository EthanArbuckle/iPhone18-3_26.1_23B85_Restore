@interface EMDiagnosticInfoGatherer
+ (OS_os_log)log;
+ (id)localDiagnosticsDirectoryURL;
+ (id)remoteInterface;
- (EMDiagnosticInfoGatherer)initWithRemoteConnection:(id)a3;
- (id)_moveLocalDiagnosticsTo:(id)a3;
- (id)registerDiagnosticInfoProvider:(id)a3;
- (void)_registerSelfAsProviderIfRequired;
- (void)databaseStatisticsWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)fetchControllerStatusWithCompletionHandler:(id)a3;
- (void)gatherDiagnosticsWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)gatherIndexingDiagnosticsWithRedaction:(int64_t)a3 completionHandler:(id)a4;
- (void)provideDiagnosticsAt:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)searchableIndexDatabaseStatisticsWithCompletionHandler:(id)a3;
@end

@implementation EMDiagnosticInfoGatherer

+ (id)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4642538];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461EBF8];
  [v2 setInterface:v3 forSelector:sel_registerDiagnosticInfoProvider_completionHandler_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46240D8];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v4 setClasses:v7 forSelector:sel_provideDiagnosticsAt_options_completion_ argumentIndex:0 ofReply:1];

  [v2 setInterface:v4 forSelector:sel_registerDiagnosticInfoProvider_completionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_registerSelfAsProviderIfRequired
{
  os_unfair_lock_lock(&self->_providerCancelableLock);
  if (!self->_providerCancelable)
  {
    v3 = [(EMDiagnosticInfoGatherer *)self connection];
    v4 = [v3 reattemptingRemoteObjectProxy];
    v5 = [(EMDiagnosticInfoGatherer *)self providerQueue];
    v6 = [(EMDiagnosticInfoGatherer *)self ef_onScheduler:v5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__EMDiagnosticInfoGatherer__registerSelfAsProviderIfRequired__block_invoke;
    v7[3] = &unk_1E826CD58;
    v7[4] = self;
    [v4 registerDiagnosticInfoProvider:v6 completionHandler:v7];
  }

  os_unfair_lock_unlock(&self->_providerCancelableLock);
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EMDiagnosticInfoGatherer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __31__EMDiagnosticInfoGatherer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_12;
  log_log_12 = v1;
}

uint64_t __61__EMDiagnosticInfoGatherer__registerSelfAsProviderIfRequired__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setProviderCancelable:a2];
  atomic_store(1u, (*(a1 + 32) + 12));
  return result;
}

+ (id)localDiagnosticsDirectoryURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = [v4 URLByAppendingPathComponent:@"DiagnosticLogs"];

  return v5;
}

- (EMDiagnosticInfoGatherer)initWithRemoteConnection:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = EMDiagnosticInfoGatherer;
  v6 = [(EMDiagnosticInfoGatherer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EMDiagnosticInfoGatherer.queue"];
    providerQueue = v7->_providerQueue;
    v7->_providerQueue = v8;

    v10 = objc_alloc(MEMORY[0x1E699B7F0]);
    v11 = [MEMORY[0x1E695DFA8] set];
    v12 = [v10 initWithObject:v11];
    providers = v7->_providers;
    v7->_providers = v12;

    v7->_providerCancelableLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v7);
    connection = v7->_connection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__EMDiagnosticInfoGatherer_initWithRemoteConnection___block_invoke;
    v19[3] = &unk_1E826C070;
    objc_copyWeak(&v20, &location);
    [(EMRemoteConnection *)connection addResetHandler:v19];
    v15 = v7->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__EMDiagnosticInfoGatherer_initWithRemoteConnection___block_invoke_2;
    v17[3] = &unk_1E826C070;
    objc_copyWeak(&v18, &location);
    [(EMRemoteConnection *)v15 addRecoveryHandler:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__EMDiagnosticInfoGatherer_initWithRemoteConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)v2 setProviderCancelable:0];
    os_unfair_lock_unlock(v2 + 2);
    WeakRetained = v2;
  }
}

void __53__EMDiagnosticInfoGatherer_initWithRemoteConnection___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v3 = atomic_load(WeakRetained + 12);
  if (v3)
  {
    [WeakRetained _registerSelfAsProviderIfRequired];
  }

  else
  {
    v4 = +[EMDiagnosticInfoGatherer log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "EMDiagnosticInfoProviding: %p, Not registered as provider - Skipping recovery", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_providerCancelableLock);
  v3 = [(EMDiagnosticInfoGatherer *)self providerCancelable];
  [v3 cancel];

  os_unfair_lock_unlock(&self->_providerCancelableLock);
  v4.receiver = self;
  v4.super_class = EMDiagnosticInfoGatherer;
  [(EMDiagnosticInfoGatherer *)&v4 dealloc];
}

- (id)registerDiagnosticInfoProvider:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EMDiagnosticInfoGatherer *)self _registerSelfAsProviderIfRequired];
  v5 = [(EMDiagnosticInfoGatherer *)self providers];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__EMDiagnosticInfoGatherer_registerDiagnosticInfoProvider___block_invoke;
  v20[3] = &unk_1E826CD80;
  v6 = v4;
  v21 = v6;
  [v5 performWhileLocked:v20];

  v7 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__EMDiagnosticInfoGatherer_registerDiagnosticInfoProvider___block_invoke_2;
  v16 = &unk_1E826CA80;
  objc_copyWeak(&v18, &location);
  v8 = v6;
  v17 = v8;
  [v7 addCancelationBlock:&v13];
  v9 = [EMDiagnosticInfoGatherer log:v13];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 providerObjectID];
    *buf = 134218242;
    v23 = v8;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "Registerd EMDiagnosticInfoProviding: %p, objectID: %{public}@", buf, 0x16u);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

void __59__EMDiagnosticInfoGatherer_registerDiagnosticInfoProvider___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained providers];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__EMDiagnosticInfoGatherer_registerDiagnosticInfoProvider___block_invoke_3;
    v5[3] = &unk_1E826CD80;
    v6 = *(a1 + 32);
    [v4 performWhileLocked:v5];
  }
}

- (void)fetchControllerStatusWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(EMDiagnosticInfoGatherer *)self connection];
  v5 = [v4 reattemptingRemoteObjectProxy];
  [v5 fetchControllerStatusWithCompletionHandler:v6];
}

- (void)gatherDiagnosticsWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(EMDiagnosticInfoGatherer *)self connection];
  v8 = [v7 reattemptingRemoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__EMDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke;
  v10[3] = &unk_1E826CDA8;
  v9 = v6;
  v11 = v9;
  [v8 gatherDiagnosticsWithOptions:a3 completionHandler:v10];
}

void __75__EMDiagnosticInfoGatherer_gatherDiagnosticsWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 url];
  (*(v2 + 16))(v2);
}

- (void)databaseStatisticsWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(EMDiagnosticInfoGatherer *)self connection];
  v5 = [v4 reattemptingRemoteObjectProxy];
  [v5 databaseStatisticsWithCompletionHandler:v6];
}

- (void)searchableIndexDatabaseStatisticsWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(EMDiagnosticInfoGatherer *)self connection];
  v5 = [v4 reattemptingRemoteObjectProxy];
  [v5 searchableIndexDatabaseStatisticsWithCompletionHandler:v6];
}

- (void)gatherIndexingDiagnosticsWithRedaction:(int64_t)a3 completionHandler:(id)a4
{
  v8 = a4;
  v6 = [(EMDiagnosticInfoGatherer *)self connection];
  v7 = [v6 reattemptingRemoteObjectProxy];
  [v7 gatherIndexingDiagnosticsWithRedaction:a3 completionHandler:v8];
}

- (void)provideDiagnosticsAt:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v23 = a5;
  v30 = [MEMORY[0x1E695DF70] array];
  v7 = [(EMDiagnosticInfoGatherer *)self providers];
  v25 = [v7 getObject];

  v29 = [v26 url];
  v22 = [v29 startAccessingSecurityScopedResource];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__3;
  v47[4] = __Block_byref_object_dispose__3;
  v8 = objc_alloc(MEMORY[0x1E699B7F0]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = [v8 initWithObject:v9];

  v24 = [(EMDiagnosticInfoGatherer *)self _moveLocalDiagnosticsTo:v29];
  [v30 addObject:?];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v25;
  v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v10)
  {
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [MEMORY[0x1E699B868] promise];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke;
        v40[3] = &unk_1E826CDD0;
        v42 = v47;
        v40[4] = self;
        v15 = v14;
        v41 = v15;
        [v13 provideDiagnosticsAt:v29 options:a4 completion:v40];
        v16 = [v15 future];
        [v30 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x1E699B7C8] combine:v30];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_3;
  v37[3] = &unk_1E826CDF8;
  v18 = v23;
  v38 = v18;
  v39 = v47;
  [v17 addSuccessBlock:v37];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_4;
  v34[3] = &unk_1E826CE20;
  v19 = v18;
  v35 = v19;
  v36 = v47;
  [v17 addFailureBlock:v34];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_5;
  v31[3] = &unk_1E826CE48;
  v33 = v22;
  v20 = v29;
  v32 = v20;
  [v17 always:v31];

  _Block_object_dispose(v47, 8);
  v21 = *MEMORY[0x1E69E9840];
}

void __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(*(a1[6] + 8) + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_2;
    v13[3] = &unk_1E826CD80;
    v8 = v5;
    v14 = v8;
    [v7 performWhileLocked:v13];
    if (_os_feature_enabled_impl())
    {
      v9 = a1[4];
      v10 = [v8 allObjects];
      [v9 _logCategoryMetadataForMessageObjectIDs:v10];
    }
  }

  v11 = a1[5];
  v12 = [MEMORY[0x1E695DFB0] null];
  [v11 finishWithResult:v12 error:v6];
}

void __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) getObject];
  (*(v1 + 16))(v1);
}

void __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(*(*(a1 + 40) + 8) + 40) getObject];
  (*(v3 + 16))(v3, v4, v5);
}

uint64_t __68__EMDiagnosticInfoGatherer_provideDiagnosticsAt_options_completion___block_invoke_5(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

void __68__EMDiagnosticInfoGatherer__logCategoryMetadataForMessageObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EMDiagnosticInfoGatherer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218242;
    v6 = [v2 globalMessageID];
    v7 = 2112;
    v8 = MEMORY[0x1E695E0F8];
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Recategorization metadata ID:%lld metadata:%@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_moveLocalDiagnosticsTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v26 = [MEMORY[0x1E699B868] promise];
  v25 = [objc_opt_class() localDiagnosticsDirectoryURL];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v25 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v32 = 0;
    v7 = [v4 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:0 options:0 error:&v32];
    v8 = v32;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v10)
    {
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v13 lastPathComponent];
          v15 = [v3 URLByAppendingPathComponent:v14];

          v27 = v8;
          [v4 moveItemAtURL:v13 toURL:v15 error:&v27];
          v16 = v27;

          if (v16)
          {
            v18 = +[EMDiagnosticInfoGatherer log];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v23 = [v13 path];
              v24 = [v15 path];
              *buf = 138543874;
              v34 = v23;
              v35 = 2114;
              v36 = v24;
              v37 = 2112;
              v38 = v16;
              _os_log_error_impl(&dword_1C6655000, v18, OS_LOG_TYPE_ERROR, "Error moving file from %{public}@ to %{public}@, error: %{error}@", buf, 0x20u);
            }

            goto LABEL_16;
          }

          v8 = 0;
        }

        v10 = [v9 countByEnumeratingWithState:&v28 objects:v39 count:16];
        v8 = 0;
        v16 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = v8;
    }

LABEL_16:

    v19 = [MEMORY[0x1E695DFB0] null];
    [v26 finishWithResult:v19 error:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E695DFB0] null];
    [v26 finishWithResult:v17];
  }

  v20 = [v26 future];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end