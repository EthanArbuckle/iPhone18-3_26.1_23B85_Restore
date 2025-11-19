@interface NSArray(MicroLocationUtilities)
- (BOOL)ul_containsObjectPassingTest:()MicroLocationUtilities;
- (id)ul_allWhere:()MicroLocationUtilities;
- (id)ul_firstWhere:()MicroLocationUtilities;
@end

@implementation NSArray(MicroLocationUtilities)

- (id)ul_firstWhere:()MicroLocationUtilities
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)ul_containsObjectPassingTest:()MicroLocationUtilities
{
  v1 = [a1 ul_firstWhere:?];
  v2 = v1 != 0;

  return v2;
}

- (id)ul_allWhere:()MicroLocationUtilities
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  if ([a1 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v7];
      if ((v4[2](v4, v8) & 1) == 0)
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [a1 count]);
  }

  v9 = [v5 copy];

  return v9;
}

@end