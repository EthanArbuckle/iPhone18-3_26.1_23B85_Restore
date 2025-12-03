@interface NSMutableOrderedSet(EmailFoundationAdditions)
- (id)ef_uniquedObject:()EmailFoundationAdditions;
- (void)ef_insertObject:()EmailFoundationAdditions usingComparator:;
- (void)ef_insertObjects:()EmailFoundationAdditions after:;
- (void)ef_insertObjects:()EmailFoundationAdditions before:;
- (void)ef_removeObjectsInArray:()EmailFoundationAdditions;
@end

@implementation NSMutableOrderedSet(EmailFoundationAdditions)

- (id)ef_uniquedObject:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self set];
  v6 = [v5 member:v4];

  if (!v6)
  {
    v6 = [v4 copyWithZone:0];
    [self addObject:v6];
  }

  return v6;
}

- (void)ef_removeObjectsInArray:()EmailFoundationAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [self removeObject:{*(*(&v9 + 1) + 8 * v7++), v9}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)ef_insertObjects:()EmailFoundationAdditions before:
{
  v9 = a3;
  v6 = a4;
  v7 = [self indexOfObject:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [self addObjectsFromArray:v9];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v7, objc_msgSend(v9, "count")}];
    [self insertObjects:v9 atIndexes:v8];
  }
}

- (void)ef_insertObjects:()EmailFoundationAdditions after:
{
  v11 = a3;
  v6 = [self indexOfObject:a4];
  v7 = objc_alloc(MEMORY[0x1E696AC90]);
  v8 = [v11 count];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = [v7 initWithIndexesInRange:{v9, v8}];
  [self insertObjects:v11 atIndexes:v10];
}

- (void)ef_insertObject:()EmailFoundationAdditions usingComparator:
{
  v7 = a3;
  v6 = a4;
  [self insertObject:v7 atIndex:{objc_msgSend(self, "indexOfObject:inSortedRange:options:usingComparator:", v7, 0, objc_msgSend(self, "count"), 1024, v6)}];
}

@end