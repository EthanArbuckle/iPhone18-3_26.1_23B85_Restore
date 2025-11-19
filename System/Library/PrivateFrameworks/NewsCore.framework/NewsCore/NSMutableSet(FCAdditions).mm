@interface NSMutableSet(FCAdditions)
- (void)fc_removeObjectsFromArray:()FCAdditions;
- (void)fc_safelyAddObject:()FCAdditions;
- (void)fc_safelyAddObjects:()FCAdditions;
- (void)fc_safelyIntersectSet:()FCAdditions;
- (void)fc_safelyMinusSet:()FCAdditions;
- (void)fc_safelyRemoveObject:()FCAdditions;
- (void)fc_safelyUnionSet:()FCAdditions;
@end

@implementation NSMutableSet(FCAdditions)

- (void)fc_safelyAddObject:()FCAdditions
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)fc_safelyAddObjects:()FCAdditions
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (void)fc_safelyUnionSet:()FCAdditions
{
  if (a3)
  {
    return [a1 unionSet:?];
  }

  return a1;
}

- (void)fc_safelyIntersectSet:()FCAdditions
{
  if (a3)
  {
    return [a1 intersectSet:?];
  }

  return a1;
}

- (void)fc_safelyMinusSet:()FCAdditions
{
  if (a3)
  {
    return [a1 minusSet:?];
  }

  return a1;
}

- (void)fc_safelyRemoveObject:()FCAdditions
{
  if (a3)
  {
    return [a1 removeObject:?];
  }

  return a1;
}

- (void)fc_removeObjectsFromArray:()FCAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
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

        [a1 removeObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end