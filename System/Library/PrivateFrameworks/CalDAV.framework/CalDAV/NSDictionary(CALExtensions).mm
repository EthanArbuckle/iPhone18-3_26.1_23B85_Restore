@interface NSDictionary(CALExtensions)
- (void)mutableCopyWithElementsCopy;
@end

@implementation NSDictionary(CALExtensions)

- (void)mutableCopyWithElementsCopy
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [self mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [self allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 copy];

          [v2 setObject:v10 forKey:v8];
          v9 = v10;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

@end