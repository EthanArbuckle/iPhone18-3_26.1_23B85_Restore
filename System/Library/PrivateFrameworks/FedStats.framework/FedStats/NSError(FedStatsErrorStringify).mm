@interface NSError(FedStatsErrorStringify)
- (id)describe;
@end

@implementation NSError(FedStatsErrorStringify)

- (id)describe
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277CCACA8];
  domain = [self domain];
  code = [self code];
  userInfo = [self userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277CCA450]];
  v8 = [v3 stringWithFormat:@"domain = %@, code = %lu, description = %@", domain, code, v7];
  [array addObject:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  underlyingErrors = [self underlyingErrors];
  v10 = [underlyingErrors countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(underlyingErrors);
        }

        describe = [*(*(&v23 + 1) + 8 * i) describe];
        [array addObjectsFromArray:describe];
      }

      v11 = [underlyingErrors countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([array count] >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [array objectAtIndexedSubscript:v15];
      firstObject = [array firstObject];

      if (firstObject == v16)
      {
        v19 = @"├── ";
      }

      else
      {
        lastObject = [array lastObject];

        if (lastObject == v16)
        {
          v19 = @"└── ";
        }

        else
        {
          v19 = @"│   ";
        }
      }

      v20 = [(__CFString *)v19 stringByAppendingString:v16];
      [array setObject:v20 atIndexedSubscript:v15];

      ++v15;
    }

    while (v15 < [array count]);
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

@end