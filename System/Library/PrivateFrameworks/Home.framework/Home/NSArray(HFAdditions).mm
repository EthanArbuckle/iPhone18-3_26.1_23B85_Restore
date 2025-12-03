@interface NSArray(HFAdditions)
- (id)hf_firstMostCommonObject;
- (void)hf_fanOutAtIndex:()HFAdditions usingBlock:;
@end

@implementation NSArray(HFAdditions)

- (id)hf_firstMostCommonObject
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA940] setWithArray:self];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v2 countForObject:{v10, v16}];
        if (v11 > v6)
        {
          v12 = v11;
          v13 = v10;

          v6 = v12;
          v7 = v13;
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)hf_fanOutAtIndex:()HFAdditions usingBlock:
{
  v7 = a4;
  if ([self count] <= a3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+HFAdditions.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"index < self.count"}];
  }

  v16 = 0;
  v8 = [self objectAtIndexedSubscript:a3];
  v7[2](v7, v8, a3, &v16);

  if ((v16 & 1) == 0)
  {
    v9 = a3 - 1;
    v10 = a3 + 1;
    for (i = 1; ; ++i)
    {
      if (i <= a3)
      {
        v13 = [self objectAtIndexedSubscript:v9];
        v7[2](v7, v13, v9, &v16);

        if (v16)
        {
          break;
        }

        v12 = v10;
        if (v10 >= [self count])
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v10 >= [self count])
        {
          break;
        }

        v12 = i + a3;
      }

      v14 = [self objectAtIndexedSubscript:v12];
      v7[2](v7, v14, v12, &v16);

      if (v16)
      {
        break;
      }

LABEL_12:
      --v9;
      ++v10;
    }
  }
}

@end