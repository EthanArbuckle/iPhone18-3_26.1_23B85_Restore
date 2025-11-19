@interface FPDCacheDeleteService
+ (FPDCacheDeleteService)sharedInstance;
- (BOOL)isCacheDeleteCacheable;
- (FPDCacheDeleteService)init;
- (void)registerCacheDeleteCallbacks;
- (void)registerKey:(id)a3 notificationsUpdatesHandlers:(id)a4;
- (void)start;
- (void)unregisterKey:(id)a3;
@end

@implementation FPDCacheDeleteService

- (FPDCacheDeleteService)init
{
  v11.receiver = self;
  v11.super_class = FPDCacheDeleteService;
  v2 = [(FPDCacheDeleteService *)&v11 init];
  v3 = v2;
  if (v2)
  {
    cacheDeleteServiceName = v2->_cacheDeleteServiceName;
    v2->_cacheDeleteServiceName = @"com.apple.FileProvider.cache-delete";

    v5 = objc_opt_new();
    cdNotificationsHandlers = v3->_cdNotificationsHandlers;
    v3->_cdNotificationsHandlers = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("FPDCacheDeleteService notification queue", v7);
    notificationsHandlersQueue = v3->_notificationsHandlersQueue;
    v3->_notificationsHandlersQueue = v8;

    v3->_cacheDeleteCacheable = CacheDeleteCacheable();
    v3->_isExpired = 0;
  }

  return v3;
}

- (void)start
{
  [(FPDCacheDeleteService *)self registerCacheDeleteCallbacks];

  [(FPDCacheDeleteService *)self unregisterBackgroundTask];
}

void __49__FPDCacheDeleteService_unregisterBackgroundTask__block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v6 = 0;
  v1 = [v0 cancelTaskRequestWithIdentifier:@"com.apple.FileProvider.cache-delete.push" error:&v6];
  v2 = v6;

  if ((v1 & 1) == 0)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 fp_prettyDescription];
      *buf = 138543618;
      v8 = @"com.apple.FileProvider.cache-delete.push";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] Error canceling task %{public}@ : %{public}@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerCacheDeleteCallbacks
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  v4 = 138412290;
  v5 = v1;
  _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] Registered %@ as a cache delete service", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __53__FPDCacheDeleteService_registerCacheDeleteCallbacks__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [a2 objectForKey:@"CACHE_DELETE_CACHE_ENABLED"];
    v5 = [v4 BOOLValue];

    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __53__FPDCacheDeleteService_registerCacheDeleteCallbacks__block_invoke_cold_1(v5, v6);
    }

    v7 = WeakRetained;
    objc_sync_enter(v7);
    if (*(v7 + 32) != v5)
    {
      *(v7 + 32) = v5;
      v8 = v7[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__FPDCacheDeleteService_registerCacheDeleteCallbacks__block_invoke_10;
      block[3] = &unk_1E83BE068;
      v10 = v7;
      dispatch_async(v8, block);
    }

    objc_sync_exit(v7);
  }
}

void __53__FPDCacheDeleteService_registerCacheDeleteCallbacks__block_invoke_10(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 32) + 32);
        (*(*(*(&v9 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)registerKey:(id)a3 notificationsUpdatesHandlers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = _Block_copy(v7);
  [(NSMutableDictionary *)v8->_cdNotificationsHandlers setObject:v9 forKeyedSubscript:v6];

  notificationsHandlersQueue = v8->_notificationsHandlersQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__FPDCacheDeleteService_registerKey_notificationsUpdatesHandlers___block_invoke;
  v12[3] = &unk_1E83BF450;
  v12[4] = v8;
  v13 = v7;
  v11 = v7;
  dispatch_async(notificationsHandlersQueue, v12);

  objc_sync_exit(v8);
}

- (void)unregisterKey:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_cdNotificationsHandlers removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (BOOL)isCacheDeleteCacheable
{
  v2 = self;
  objc_sync_enter(v2);
  cacheDeleteCacheable = v2->_cacheDeleteCacheable;
  objc_sync_exit(v2);

  return cacheDeleteCacheable;
}

+ (FPDCacheDeleteService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FPDCacheDeleteService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __39__FPDCacheDeleteService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

void __53__FPDCacheDeleteService_registerCacheDeleteCallbacks__block_invoke_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDCacheDeleteService: cache enabled update: %{BOOL}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end