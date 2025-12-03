@interface NSArray(IRExtensions)
- (BOOL)containsObjectPassingTest:()IRExtensions;
- (id)allWhere:()IRExtensions;
- (id)arrayByAddingObject:()IRExtensions withCapacityLimit:;
- (id)compactMap:()IRExtensions;
@end

@implementation NSArray(IRExtensions)

- (id)allWhere:()IRExtensions
{
  v4 = a3;
  v5 = [self mutableCopy];
  if ([self count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      if ((v4[2](v4, v8) & 1) == 0)
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [self count]);
  }

  v9 = [v5 copy];

  return v9;
}

- (BOOL)containsObjectPassingTest:()IRExtensions
{
  v1 = [self firstWhere:?];
  v2 = v1 != 0;

  return v2;
}

- (id)arrayByAddingObject:()IRExtensions withCapacityLimit:
{
  v6 = a3;
  if ([self count] >= a4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self arrayByAddingObject:v6];
  }

  v8 = selfCopy;

  return v8;
}

- (id)compactMap:()IRExtensions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end