@interface NSArray(MessagesFromMixedStoresConvenience)
- (id)mf_dictionaryWithMessagesSortedByStore;
@end

@implementation NSArray(MessagesFromMixedStoresConvenience)

- (id)mf_dictionaryWithMessagesSortedByStore
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 messageStore];
          if (v8)
          {
            v9 = [v2 objectForKey:v8];
            if (!v9)
            {
              v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
              [v2 setObject:v9 forKey:v8];
            }

            [v9 addObject:v7];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

@end