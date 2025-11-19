@interface FPDCacheDeleteServiceForTesting
+ (id)testingInstance;
- (void)registerCacheDeleteCallbacks;
@end

@implementation FPDCacheDeleteServiceForTesting

+ (id)testingInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPDCacheDeleteServiceForTesting_testingInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (testingInstance_once != -1)
  {
    dispatch_once(&testingInstance_once, block);
  }

  v2 = *(testingInstance_testingInstance + 8);
  *(testingInstance_testingInstance + 8) = @"com.apple.FileProvider.cache-delete-testing";

  v3 = testingInstance_testingInstance;

  return v3;
}

void __50__FPDCacheDeleteServiceForTesting_testingInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = testingInstance_testingInstance;
  testingInstance_testingInstance = v1;
}

- (void)registerCacheDeleteCallbacks
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke;
  v12 = &unk_1E83BF590;
  objc_copyWeak(&v13, &location);
  v3 = _Block_copy(&aBlock);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"CACHE_DELETE_CACHE_ENABLED", 0, aBlock, v10, v11, v12}];
  cacheDeleteServiceName = self->super._cacheDeleteServiceName;
  p_cacheDeleteServiceName = &self->super._cacheDeleteServiceName;
  v15 = @"CACHE_DELETE_NOTIFICATIONS";
  v16[0] = v4;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  if (CacheDeleteRegisterForProcess())
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FPDCacheDeleteService *)p_cacheDeleteServiceName registerCacheDeleteCallbacks];
    }
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(FPDCacheDeleteService *)p_cacheDeleteServiceName registerCacheDeleteCallbacks];
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x1E69E9840];
}

void __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [a2 objectForKey:@"CACHE_DELETE_CACHE_ENABLED"];
    v5 = [v4 BOOLValue];

    v6 = WeakRetained;
    objc_sync_enter(v6);
    if (*(v6 + 32) != v5)
    {
      *(v6 + 32) = v5;
      v7 = v6[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke_2;
      block[3] = &unk_1E83BE068;
      v9 = v6;
      dispatch_async(v7, block);
    }

    objc_sync_exit(v6);
  }
}

void __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke_2(uint64_t a1)
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

@end