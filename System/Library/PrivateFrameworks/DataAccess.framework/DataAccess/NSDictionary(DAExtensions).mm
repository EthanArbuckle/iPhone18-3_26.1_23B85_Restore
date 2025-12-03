@interface NSDictionary(DAExtensions)
- (id)DAMergeOverrideDictionary:()DAExtensions;
- (id)DAObjectForKeyCaseInsensitive:()DAExtensions;
@end

@implementation NSDictionary(DAExtensions)

- (id)DAObjectForKeyCaseInsensitive:()DAExtensions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![v4 caseInsensitiveCompare:v10])
        {
          v11 = [self objectForKeyedSubscript:v10];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)DAMergeOverrideDictionary:()DAExtensions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v4 allKeys];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [self objectForKeyedSubscript:v10];
        v12 = [v4 objectForKeyedSubscript:v10];
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v13 = v12;
          if (objc_opt_isKindOfClass())
          {
            v13 = [v11 DAMergeOverrideDictionary:v12];
          }
        }

        [v5 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end