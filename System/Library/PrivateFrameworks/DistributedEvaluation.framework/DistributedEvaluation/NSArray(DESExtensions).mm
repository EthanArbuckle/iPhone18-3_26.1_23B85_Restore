@interface NSArray(DESExtensions)
- (id)_fides_objectByReplacingValue:()DESExtensions withValue:;
- (id)_fides_shuffledArray;
@end

@implementation NSArray(DESExtensions)

- (id)_fides_shuffledArray
{
  if ([self count])
  {
    v2 = [self mutableCopy];
    v3 = [v2 count];
    v4 = v3 - 1;
    if (v3 != 1)
    {
      do
      {
        [v2 exchangeObjectAtIndex:v4 withObjectAtIndex:arc4random_uniform(v4 + 1)];
        --v4;
      }

      while (v4);
    }

    array = [v2 copy];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)_fides_objectByReplacingValue:()DESExtensions withValue:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v10 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) _fides_objectByReplacingValue:v6 withValue:{v7, v17}];
        [v8 addObject:v14];
      }

      v11 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

@end