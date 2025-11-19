@interface NSMutableArray(TSUAdditions)
- (id)tsu_pop;
- (uint64_t)tsu_addObjects:()TSUAdditions;
- (uint64_t)tsu_insertObject:()TSUAdditions usingComparator:;
- (uint64_t)tsu_removeObjectsIdenticalToObjectsInArray:()TSUAdditions;
- (unint64_t)tsu_trimObjectsFromIndex:()TSUAdditions;
- (void)tsu_addNonNilObject:()TSUAdditions;
- (void)tsu_addObjectsFromNonNilArray:()TSUAdditions;
@end

@implementation NSMutableArray(TSUAdditions)

- (id)tsu_pop
{
  v2 = [a1 lastObject];
  if (v2)
  {
    [a1 removeLastObject];
  }

  return v2;
}

- (uint64_t)tsu_addObjects:()TSUAdditions
{
  v11 = &a9;
  if (a3)
  {
    v9 = result;
    do
    {
      result = [v9 addObject:?];
      v10 = v11++;
    }

    while (*v10);
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

- (uint64_t)tsu_removeObjectsIdenticalToObjectsInArray:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == a3)
  {

    return [a1 removeAllObjects];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [a1 indexOfObjectIdenticalTo:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [a1 indexOfObjectIdenticalTo:v9])
            {
              [a1 removeObjectAtIndex:i];
            }
          }

          ++v8;
        }

        while (v8 != v6);
        result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

- (unint64_t)tsu_trimObjectsFromIndex:()TSUAdditions
{
  result = [a1 count];
  if (result > a3)
  {

    return [a1 removeObjectsInRange:{a3, result - a3}];
  }

  return result;
}

- (uint64_t)tsu_insertObject:()TSUAdditions usingComparator:
{
  v6 = [a1 indexOfObject:a3 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1024, a4}];
  [a1 insertObject:a3 atIndex:v6];
  return v6;
}

@end