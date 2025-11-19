@interface NSError(FedStatsErrorStringify)
- (id)describe;
@end

@implementation NSError(FedStatsErrorStringify)

- (id)describe
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 domain];
  v5 = [a1 code];
  v6 = [a1 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277CCA450]];
  v8 = [v3 stringWithFormat:@"domain = %@, code = %lu, description = %@", v4, v5, v7];
  [v2 addObject:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [a1 underlyingErrors];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * i) describe];
        [v2 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v2 count] >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [v2 objectAtIndexedSubscript:v15];
      v17 = [v2 firstObject];

      if (v17 == v16)
      {
        v19 = @"├── ";
      }

      else
      {
        v18 = [v2 lastObject];

        if (v18 == v16)
        {
          v19 = @"└── ";
        }

        else
        {
          v19 = @"│   ";
        }
      }

      v20 = [(__CFString *)v19 stringByAppendingString:v16];
      [v2 setObject:v20 atIndexedSubscript:v15];

      ++v15;
    }

    while (v15 < [v2 count]);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v2;
}

@end