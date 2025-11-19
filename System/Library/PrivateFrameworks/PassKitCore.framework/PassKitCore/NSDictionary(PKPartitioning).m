@interface NSDictionary(PKPartitioning)
+ (uint64_t)pk_dictionaryGroupingArray:()PKPartitioning byKeyForValue:;
+ (uint64_t)pk_dictionaryGroupingSet:()PKPartitioning byKeyForValue:;
@end

@implementation NSDictionary(PKPartitioning)

+ (uint64_t)pk_dictionaryGroupingSet:()PKPartitioning byKeyForValue:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = v6[2](v6, v12);
        v15 = [v7 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v7 setObject:v15 forKey:v14];
        }

        [v15 addObject:v12];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [v7 copy];
  return v16;
}

+ (uint64_t)pk_dictionaryGroupingArray:()PKPartitioning byKeyForValue:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = v6[2](v6, v12);
        v15 = [v7 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v7 setObject:v15 forKey:v14];
        }

        [v15 addObject:v12];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [v7 copy];
  return v16;
}

@end