@interface MNXPCTransactionManager
+ (id)sharedInstance;
- (MNXPCTransactionManager)init;
- (void)addHighMemoryThresholdRequest:(id)a3;
- (void)removeHighMemoryThresholdRequest:(id)a3 afterDelay:(double)a4;
@end

@implementation MNXPCTransactionManager

- (void)removeHighMemoryThresholdRequest:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  isolater = self->_isolater;
  block[5] = MEMORY[0x1E69E9820];
  block[6] = 3221225472;
  block[7] = __71__MNXPCTransactionManager_removeHighMemoryThresholdRequest_afterDelay___block_invoke;
  block[8] = &unk_1E8430D50;
  block[9] = self;
  v12 = v6;
  v8 = v6;
  geo_isolate_sync();
  v9 = dispatch_time(0, (a4 * 1000000000.0));
  v10 = MNNavigationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MNXPCTransactionManager_removeHighMemoryThresholdRequest_afterDelay___block_invoke_8;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_after(v9, v10, block);
}

uint64_t __71__MNXPCTransactionManager_removeHighMemoryThresholdRequest_afterDelay___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [objc_opt_class() description];
      v7 = 136315138;
      v8 = [v5 UTF8String];
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "navd > XPC transaction |     Exit request from %s", &v7, 0xCu);
    }

    result = [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __71__MNXPCTransactionManager_removeHighMemoryThresholdRequest_afterDelay___block_invoke_8(uint64_t a1)
{
  v14 = *(*(a1 + 32) + 24);
  _geo_isolate_lock();
  if (![*(*(a1 + 32) + 16) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 _navigation_isNavd];

    if (v6)
    {
      v7 = [MEMORY[0x1E69A2610] modernLoader];
      [v7 clearAllCaches];
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;

    v10 = MNGetMNXPCTransactionManagerLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ExitedHighMemoryThreshold", "", buf, 2u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "navd exited high memory threhold", v12, 2u);
    }
  }

  _geo_isolate_unlock();
}

- (void)addHighMemoryThresholdRequest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = self->_isolater;
  _geo_isolate_lock();
  if (![(NSHashTable *)self->_requesters containsObject:v4])
  {
    if (!self->_requesters)
    {
      v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:2];
      requesters = self->_requesters;
      self->_requesters = v5;
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() description];
      *buf = 136315138;
      v16 = [v8 UTF8String];
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "navd > XPC transaction | Enter request from %s", buf, 0xCu);
    }

    [(NSHashTable *)self->_requesters addObject:v4];
    if ([(NSHashTable *)self->_requesters count]== 1)
    {
      v9 = os_transaction_create();
      xpcTransaction = self->_xpcTransaction;
      self->_xpcTransaction = v9;

      v11 = MNGetMNXPCTransactionManagerLog();
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1D311E000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnteredHighMemoryThreshold", "", buf, 2u);
      }

      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "navd entered high memory threshold", buf, 2u);
      }
    }
  }

  _geo_isolate_unlock();

  v13 = *MEMORY[0x1E69E9840];
}

- (MNXPCTransactionManager)init
{
  v7.receiver = self;
  v7.super_class = MNXPCTransactionManager;
  v2 = [(MNXPCTransactionManager *)&v7 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolater = v2->_isolater;
    v2->_isolater = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10065 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10065, &__block_literal_global_10066);
  }

  v3 = sharedInstance_xpcTransactionManager;

  return v3;
}

void __41__MNXPCTransactionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MNXPCTransactionManager);
  v1 = sharedInstance_xpcTransactionManager;
  sharedInstance_xpcTransactionManager = v0;
}

@end