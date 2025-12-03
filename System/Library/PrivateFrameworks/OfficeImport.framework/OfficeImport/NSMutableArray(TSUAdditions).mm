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
  lastObject = [self lastObject];
  if (lastObject)
  {
    [self removeLastObject];
  }

  return lastObject;
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
    return [self addObject:?];
  }

  return self;
}

- (void)tsu_addObjectsFromNonNilArray:()TSUAdditions
{
  if (a3)
  {
    return [self addObjectsFromArray:?];
  }

  return self;
}

- (uint64_t)tsu_removeObjectsIdenticalToObjectsInArray:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  if (self == a3)
  {

    return [self removeAllObjects];
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
          v10 = [self indexOfObjectIdenticalTo:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [self indexOfObjectIdenticalTo:v9])
            {
              [self removeObjectAtIndex:i];
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
  result = [self count];
  if (result > a3)
  {

    return [self removeObjectsInRange:{a3, result - a3}];
  }

  return result;
}

- (uint64_t)tsu_insertObject:()TSUAdditions usingComparator:
{
  v6 = [self indexOfObject:a3 inSortedRange:0 options:objc_msgSend(self usingComparator:{"count"), 1024, a4}];
  [self insertObject:a3 atIndex:v6];
  return v6;
}

@end