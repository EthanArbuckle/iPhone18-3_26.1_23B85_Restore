@interface CNUILikenessImageCache
@end

@implementation CNUILikenessImageCache

void __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained cache];
  [v4 setObject:0 forKeyedSubscript:v3];
}

void __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 schedulerProvider];
  v4 = [v3 backgroundScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke_2;
  v5[3] = &unk_1E76E8280;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 performBlock:v5];

  objc_destroyWeak(&v6);
}

void __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained emptyCache:0];
}

void __60___CNUILikenessImageCache_initWithCapacity_hasContactStore___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained emptyCache:0];
}

void __38___CNUILikenessImageCache_emptyCache___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cache];
  [v1 removeAllObjects];
}

void __71___CNUILikenessImageCache_invalidateCacheEntriesContainingIdentifiers___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cache];
  v3 = [v2 allKeys];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = *(a1 + 40);
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            v13 = 0;
            do
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([v8 hasContactIdentifier:*(*(&v16 + 1) + 8 * v13)])
              {
                v14 = [*(a1 + 32) cache];
                [v14 setObject:0 forKey:v8];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }
}

@end