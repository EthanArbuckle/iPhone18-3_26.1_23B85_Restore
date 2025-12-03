@interface NSArray(CLSNSArrayExtensions)
- (id)anyObject;
- (id)flattenWithSeparator:()CLSNSArrayExtensions;
- (id)indentBy:()CLSNSArrayExtensions withSeparator:;
- (id)map:()CLSNSArrayExtensions;
@end

@implementation NSArray(CLSNSArrayExtensions)

- (id)anyObject
{
  v2 = [self count];
  if (v2)
  {
    v2 = [self objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(self, "count"))}];
  }

  return v2;
}

- (id)map:()CLSNSArrayExtensions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        [v5 addObject:{v11, v13}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)flattenWithSeparator:()CLSNSArrayExtensions
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([self count])
  {
    v6 = 0;
    do
    {
      v7 = [self objectAtIndexedSubscript:v6];
      v8 = [v7 description];
      if (v6 >= [self count] - 1)
      {
        v9 = &stru_284489518;
      }

      else
      {
        v9 = v4;
      }

      [v5 appendFormat:@"%@%@", v8, v9];

      ++v6;
    }

    while (v6 < [self count]);
  }

  return v5;
}

- (id)indentBy:()CLSNSArrayExtensions withSeparator:
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([self count])
  {
    v8 = 0;
    do
    {
      v9 = [self objectAtIndexedSubscript:v8];
      v10 = [v9 description];
      v11 = [v10 cls_indentBy:a3];
      if (v8 >= [self count] - 1)
      {
        v12 = &stru_284489518;
      }

      else
      {
        v12 = v6;
      }

      [v7 appendFormat:@"%@%@", v11, v12];

      ++v8;
    }

    while (v8 < [self count]);
  }

  return v7;
}

@end