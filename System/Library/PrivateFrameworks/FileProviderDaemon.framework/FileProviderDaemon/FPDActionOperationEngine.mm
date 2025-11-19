@interface FPDActionOperationEngine
- (FPDActionOperationEngine)init;
- (FPDActionOperationEngine)initWithServer:(id)a3;
- (void)dumpStateTo:(id)a3;
- (void)scheduleActionOperationWithInfo:(id)a3 request:(id)a4 completionHandler:(id)a5;
@end

@implementation FPDActionOperationEngine

- (FPDActionOperationEngine)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"should not call this"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDActionOperationEngine init]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDActionOperationEngine.m", 62, [v2 UTF8String]);
}

- (FPDActionOperationEngine)initWithServer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FPDActionOperationEngine;
  v5 = [(FPDActionOperationEngine *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_server, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("FileProvider.action-operation-engine", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_opt_new();
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v10;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:8];
  }

  return v6;
}

- (void)scheduleActionOperationWithInfo:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__FPDActionOperationEngine_scheduleActionOperationWithInfo_request_completionHandler___block_invoke;
  v15[3] = &unk_1E83BE3B0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, v15);
}

void __86__FPDActionOperationEngine_scheduleActionOperationWithInfo_request_completionHandler___block_invoke(void *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __86__FPDActionOperationEngine_scheduleActionOperationWithInfo_request_completionHandler___block_invoke_cold_1(v2);
  }

  v3 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"FPDMoveOperation";
  }

  else
  {
    v5 = a1[4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v4 = @"FPDDownloadOperation";
  }

  v6 = NSClassFromString(&v4->isa);
  v7 = [v6 alloc];
  v8 = a1[4];
  v9 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 8));
  v11 = [v7 initWithActionInfo:v8 request:v9 server:WeakRetained];

  if (v11)
  {
    [*(a1[6] + 24) addOperation:v11];
    (*(a1[7] + 16))();
    v12 = [@"com.apple.fileprovider.daemon-op-created" fp_libnotifyPerUserNotificationName];
    notify_post([v12 UTF8String]);
  }
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FPDActionOperationEngine_dumpStateTo___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __40__FPDActionOperationEngine_dumpStateTo___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) write:@"== action operation engine ==\n"];
  [*(a1 + 32) write:@"=================\n"];
  [*(a1 + 32) write:{@"%lu operations\n", objc_msgSend(*(*(a1 + 40) + 24), "operationCount")}];
  [*(a1 + 32) write:@"\n"];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 40) + 24) operations];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) dumpStateTo:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end