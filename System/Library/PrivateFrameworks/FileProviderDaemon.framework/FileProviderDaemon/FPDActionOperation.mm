@interface FPDActionOperation
- (FPDActionOperation)initWithActionInfo:(id)a3 request:(id)a4 server:(id)a5;
- (FPDExtensionManager)manager;
- (id)progressForRoot:(id)a3 completion:(id)a4;
- (void)cancel;
- (void)cancelRoot:(id)a3;
- (void)dumpStateTo:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)forAllClients:(id)a3;
- (void)registerFrameworkClient:(id)a3 operationCompletion:(id)a4;
- (void)sendPastUpdatesToClient:(id)a3;
- (void)unregisterClientsAfterCompletion;
@end

@implementation FPDActionOperation

- (FPDActionOperation)initWithActionInfo:(id)a3 request:(id)a4 server:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = FPDActionOperation;
  v12 = [(FPOperation *)&v31 init];
  if (v12)
  {
    v13 = [v11 extensionManager];
    objc_storeWeak(&v12->_manager, v13);

    objc_storeStrong(&v12->_info, a3);
    objc_storeStrong(&v12->_request, a4);
    v14 = objc_opt_new();
    clients = v12->_clients;
    v12->_clients = v14;

    v16 = objc_opt_new();
    clientCompletions = v12->_clientCompletions;
    v12->_clientCompletions = v16;

    objc_initWeak(&location, v12);
    v18 = objc_opt_new();
    progressByRoot = v12->_progressByRoot;
    v12->_progressByRoot = v18;

    v20 = objc_opt_new();
    errorsByRoot = v12->_errorsByRoot;
    v12->_errorsByRoot = v20;

    v22 = objc_opt_new();
    completedRoots = v12->_completedRoots;
    v12->_completedRoots = v22;

    v24 = objc_opt_new();
    progressCompletionsByRoot = v12->_progressCompletionsByRoot;
    v12->_progressCompletionsByRoot = v24;

    v26 = objc_opt_new();
    createdItemByRoot = v12->_createdItemByRoot;
    v12->_createdItemByRoot = v26;

    v28 = [(FPOperation *)v12 callbackQueue];
    dispatch_activate(v28);

    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)progressForRoot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v8 = [(FPOperation *)self callbackQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__FPDActionOperation_progressForRoot_completion___block_invoke;
  v13[3] = &unk_1E83BF428;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __49__FPDActionOperation_progressForRoot_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 360) objectForKeyedSubscript:*(a1 + 40)];
  v3 = objc_opt_new();
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(*(a1 + 56) + 8) + 40) setCompletedUnitCount:{objc_msgSend(v2, "completedUnitCount")}];
  [*(*(*(a1 + 56) + 8) + 40) setTotalUnitCount:{objc_msgSend(v2, "totalUnitCount")}];
  [*(*(*(a1 + 56) + 8) + 40) setCancellable:1];
  v6 = [v2 cancellationHandler];
  [*(*(*(a1 + 56) + 8) + 40) setCancellationHandler:v6];

  if ([*(*(a1 + 32) + 376) containsObject:*(a1 + 40)])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 392) objectForKeyedSubscript:*(a1 + 40)];
    if (!v7)
    {
      v7 = objc_opt_new();
      [*(*(a1 + 32) + 392) setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }

    v8 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v2 path:"fractionCompleted"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__FPDActionOperation_progressForRoot_completion___block_invoke_2;
    v18[3] = &unk_1E83BF400;
    v20 = *(a1 + 56);
    v19 = v2;
    v9 = [v8 addObserverBlock:v18];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __49__FPDActionOperation_progressForRoot_completion___block_invoke_3;
    v15 = &unk_1E83BE310;
    v16 = v9;
    v17 = *(a1 + 48);
    v10 = v9;
    v11 = _Block_copy(&v12);
    [v7 addObject:{v11, v12, v13, v14, v15}];
  }
}

uint64_t __49__FPDActionOperation_progressForRoot_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completedUnitCount];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v3 setCompletedUnitCount:v2];
}

uint64_t __49__FPDActionOperation_progressForRoot_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) finishObserving];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)forAllClients:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_clients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v9);

  objc_storeStrong(&self->_error, a4);
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(FPDActionOperation *)self finishWithResult:v7 error:v10];
  }

  [(FPDActionOperation *)self unregisterClientsAfterCompletion];
  v11.receiver = self;
  v11.super_class = FPDActionOperation;
  [(FPOperation *)&v11 finishWithResult:v8 error:v7];
}

- (void)cancelRoot:(id)a3
{
  v4 = a3;
  v5 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDActionOperation_cancelRoot___block_invoke;
  block[3] = &unk_1E83BE068;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);
}

void __33__FPDActionOperation_cancelRoot___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__FPDActionOperation_cancelRoot___block_invoke_cold_1(a1, v2);
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = FPDActionOperation;
  [(FPOperation *)&v2 cancel];
}

- (void)unregisterClientsAfterCompletion
{
  v7 = _Block_copy(aBlock);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1CEFC7000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] unregisterClientsAfterCompletion calling completion %@", a1, 0xCu);
}

- (void)sendPastUpdatesToClient:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: should be overriden"];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_fault_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v6, 0xCu);
  }

  __assert_rtn("-[FPDActionOperation sendPastUpdatesToClient:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDActionOperation.m", 165, [v4 UTF8String]);
}

- (void)registerFrameworkClient:(id)a3 operationCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FPOperation *)self callbackQueue];
  dispatch_activate(v8);

  v9 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__FPDActionOperation_registerFrameworkClient_operationCompletion___block_invoke;
  block[3] = &unk_1E83BE828;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __66__FPDActionOperation_registerFrameworkClient_operationCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCancellationHandler:*(a1 + 40)];
  v4 = [*(a1 + 32) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [*(*(a1 + 40) + 344) addObject:v4];
  v2 = *(*(a1 + 40) + 352);
  v3 = _Block_copy(*(a1 + 48));
  [v2 addObject:v3];

  [*(a1 + 40) sendPastUpdatesToClient:v4];
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  v5 = [(FPOperation *)self callbackQueue];
  dispatch_activate(v5);

  v6 = [(FPOperation *)self callbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__FPDActionOperation_dumpStateTo___block_invoke;
  v8[3] = &unk_1E83BE158;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

uint64_t __34__FPDActionOperation_dumpStateTo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) write:@"************************\n"];
  [*(a1 + 32) write:{@"info=[[%@]]\n\n", *(*(a1 + 40) + 336)}];
  [*(a1 + 32) write:{@"+ clients: %@\n\n", *(*(a1 + 40) + 344)}];
  [*(a1 + 32) write:{@"+ progress by root: %@\n\n", *(*(a1 + 40) + 360)}];
  [*(a1 + 32) write:{@"+ created items by root: %@\n\n", *(*(a1 + 40) + 384)}];
  [*(a1 + 32) write:{@"+ errors by root: %@\n", *(*(a1 + 40) + 368)}];
  [*(a1 + 32) write:{@"+ completed roots: %@\n", *(*(a1 + 40) + 376)}];
  [*(a1 + 32) write:@"\n"];
  if (*(*(a1 + 40) + 400))
  {
    [*(a1 + 32) startFgColor:1];
    [*(a1 + 32) write:{@"+ error: %@\n", *(*(a1 + 40) + 400)}];
    [*(a1 + 32) reset];
  }

  v2 = *(a1 + 32);

  return [v2 write:@"************************\n"];
}

- (FPDExtensionManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)finishWithResult:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 368);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] action operation finished with errors-by-root:%@; %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __33__FPDActionOperation_cancelRoot___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] cancelling root: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end