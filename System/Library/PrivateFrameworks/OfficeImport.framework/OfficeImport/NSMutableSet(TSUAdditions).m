@interface NSMutableSet(TSUAdditions)
- (uint64_t)tsu_removeEqualObject:()TSUAdditions;
- (uint64_t)tsu_xorSet:()TSUAdditions;
- (void)tsu_addNonNilObject:()TSUAdditions;
- (void)tsu_addObjectsFromNonNilArray:()TSUAdditions;
- (void)tsu_removeObjectsPassingTest:()TSUAdditions;
@end

@implementation NSMutableSet(TSUAdditions)

- (uint64_t)tsu_xorSet:()TSUAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([a1 containsObject:v9])
        {
          [a1 removeObject:v9];
        }

        else
        {
          [a1 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (void)tsu_addNonNilObject:()TSUAdditions
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)tsu_addObjectsFromNonNilArray:()TSUAdditions
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (uint64_t)tsu_removeEqualObject:()TSUAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [a1 allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([v10 isEqual:a3])
        {
          [a1 removeObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)tsu_removeObjectsPassingTest:()TSUAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [result countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v5 = result;
      v6 = 0;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if ((*(a3 + 16))(a3, v9))
          {
            if (!v6)
            {
              v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
            }

            [v6 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v5 != v8);
        result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v5 = result;
      }

      while (result);
      if (v6)
      {
        return [v4 minusSet:v6];
      }
    }
  }

  return result;
}

@end