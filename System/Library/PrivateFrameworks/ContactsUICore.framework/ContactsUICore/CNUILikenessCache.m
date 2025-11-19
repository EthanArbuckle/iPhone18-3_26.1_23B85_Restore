@interface CNUILikenessCache
@end

@implementation CNUILikenessCache

uint64_t __25___CNUILikenessCache_log__block_invoke()
{
  log_cn_once_object_1_1 = os_log_create("com.apple.contacts.ui", "likeness-cache");

  return MEMORY[0x1EEE66BB8]();
}

void __42___CNUILikenessCache_setUpEvictionHandler__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained backgroundQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42___CNUILikenessCache_setUpEvictionHandler__block_invoke_2;
  v8[3] = &unk_1E76E7F60;
  v8[4] = WeakRetained;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __48___CNUILikenessCache_setUpMemoryPressureWatcher__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained receiveMemoryPressureSignal];
}

id __47___CNUILikenessCache_objectForKey_onCacheMiss___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 provider];
  }

  else
  {
    v5 = (*(*(a1 + 48) + 16))();
    v6 = [*(a1 + 32) cache];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];

    v4 = [v5 provider];
  }

  return v4;
}

void __33___CNUILikenessCache_emptyCache___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cache];
  v3 = [v2 allObjects];

  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = [v3 count];
    _os_log_impl(&dword_1A31E6000, v4, OS_LOG_TYPE_DEFAULT, "Evicting %lu likenesses from the cache", buf, 0xCu);
  }

  v5 = [*(a1 + 32) cache];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) backgroundQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33___CNUILikenessCache_emptyCache___block_invoke_11;
  v9[3] = &unk_1E76E7F60;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __33___CNUILikenessCache_emptyCache___block_invoke_11(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) didEvictCacheEntry:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end