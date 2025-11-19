@interface NSMutableDictionary(GKAdditions)
- (void)_gkAddEntriesFromFormEncodedString:()GKAdditions;
- (void)_gkSetIfNonNilObject:()GKAdditions forKey:;
@end

@implementation NSMutableDictionary(GKAdditions)

- (void)_gkAddEntriesFromFormEncodedString:()GKAdditions
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@"&"];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          if ([v8 length])
          {
            v9 = [v8 rangeOfString:@"="];
            if (v9 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v11 = [v8 _gkStringByUnescapingFromURLQuery];
              v12 = &stru_283AFD1E0;
            }

            else
            {
              v13 = v9;
              v14 = v10;
              v15 = [v8 substringToIndex:v9];
              v11 = [v15 _gkStringByUnescapingFromURLQuery];

              v16 = [v8 substringFromIndex:v13 + v14];
              v12 = [v16 _gkStringByUnescapingFromURLQuery];
            }

            if (v11)
            {
              v17 = v12 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              [a1 setObject:v12 forKey:v11];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_gkSetIfNonNilObject:()GKAdditions forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKeyedSubscript:?];
  }

  return a1;
}

@end