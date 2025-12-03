@interface UICollectionViewDiffableDataSource(IC)
- (id)ic_firstIndexPathOfItemIdentifiers:()IC;
- (id)ic_indexPathsOfItemIdentifiers:()IC;
- (id)ic_sortedIndexPathsOfItemIdentifiers:()IC;
@end

@implementation UICollectionViewDiffableDataSource(IC)

- (id)ic_firstIndexPathOfItemIdentifiers:()IC
{
  v1 = [self ic_sortedIndexPathsOfItemIdentifiers:?];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (id)ic_indexPathsOfItemIdentifiers:()IC
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self indexPathForItemIdentifier:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 ic_addNonNilObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)ic_sortedIndexPathsOfItemIdentifiers:()IC
{
  v1 = [self ic_indexPathsOfItemIdentifiers:?];
  allObjects = [v1 allObjects];
  v3 = [allObjects sortedArrayUsingSelector:sel_compare_];

  return v3;
}

@end