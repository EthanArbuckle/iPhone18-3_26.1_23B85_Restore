@interface NSMutableOrderedSet(FCAdditions)
- (id)fc_removeAndReturnObjectsPassingTest:()FCAdditions;
- (void)fc_insertObjects:()FCAdditions atIndex:;
- (void)fc_transformWithBlock:()FCAdditions;
@end

@implementation NSMutableOrderedSet(FCAdditions)

- (id)fc_removeAndReturnObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__NSMutableOrderedSet_FCAdditions__fc_removeAndReturnObjectsPassingTest___block_invoke;
  v9[3] = &unk_1E7C43B40;
  v10 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v9];
  v7 = [self objectsAtIndexes:v6];
  [self removeObjectsAtIndexes:v6];

  return v7;
}

- (void)fc_insertObjects:()FCAdditions atIndex:
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a3;
  v8 = [v6 indexSetWithIndexesInRange:{a4, objc_msgSend(v7, "count")}];
  [self insertObjects:v7 atIndexes:v8];
}

- (void)fc_transformWithBlock:()FCAdditions
{
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      v8 = [self objectAtIndex:v6];
      v12 = 0;
      v9 = v4[2](v4, v8, v6, &v12);
      if (v9 != v8)
      {
        [self replaceObjectAtIndex:v6 withObject:v9];
      }

      v10 = v12;

      if (v10)
      {
        break;
      }
    }

    while (v7 != v6++);
  }
}

@end