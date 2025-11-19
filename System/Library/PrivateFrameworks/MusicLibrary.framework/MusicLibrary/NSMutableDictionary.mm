@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

void __64__NSMutableDictionary_ML3ArtworkAdditions__mergeWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [v8 mutableCopy];

        v8 = v9;
      }

      [v8 mergeWithDictionary:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = v7;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [v8 mutableCopy];

          v8 = v10;
        }

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = v6;
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v17 + 1) + 8 * i);
              if (([v8 containsObject:v16, v17]& 1) == 0)
              {
                [v8 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v27 count:16];
          }

          while (v13);
        }
      }

      else
      {
        v8 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v22 = v5;
          v23 = 2114;
          v24 = v7;
          v25 = 2114;
          v26 = v6;
          _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Conflict merging items from dictionary for key %{public}@: %{public}@ => %{public}@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

@end