@interface NSDictionary(CoreDAVExtensions)
- (id)CDVMergeOverrideDictionary:()CoreDAVExtensions;
- (id)CDVObjectForKeyCaseInsensitive:()CoreDAVExtensions;
- (id)CDVObjectForKeyWithNameSpace:()CoreDAVExtensions andName:;
@end

@implementation NSDictionary(CoreDAVExtensions)

- (id)CDVObjectForKeyCaseInsensitive:()CoreDAVExtensions
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 lowercaseString];
    v6 = [a1 objectForKey:v7];

    if (!v6)
    {
      v8 = [v4 capitalizedString];
      v6 = [a1 objectForKey:v8];

      if (!v6)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __66__NSDictionary_CoreDAVExtensions__CDVObjectForKeyCaseInsensitive___block_invoke;
        v12[3] = &unk_278E31380;
        v13 = v4;
        v9 = [a1 keysOfEntriesPassingTest:v12];
        if ([v9 count])
        {
          v10 = [v9 anyObject];
          v6 = [a1 objectForKey:v10];
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

- (id)CDVObjectForKeyWithNameSpace:()CoreDAVExtensions andName:
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithCDVNameSpace:v8 andName:v7];

  v10 = [a1 objectForKey:v9];

  return v10;
}

- (id)CDVMergeOverrideDictionary:()CoreDAVExtensions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 mutableCopy];
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
        v11 = [a1 objectForKey:v10];
        v12 = [v4 objectForKey:v10];
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v13 = v12;
          if (objc_opt_isKindOfClass())
          {
            v13 = [v11 CDVMergeOverrideDictionary:v12];
          }
        }

        [v5 setObject:v13 forKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end