@interface NSArray(CKUtilities)
- (id)__ck_indexSetForIndexPathItemsInSection:()CKUtilities;
- (id)__ck_indexSetForIndexPathRowsInSection:()CKUtilities;
- (id)__ck_shuffledArray;
@end

@implementation NSArray(CKUtilities)

- (id)__ck_indexSetForIndexPathRowsInSection:()CKUtilities
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__NSArray_CKUtilities____ck_indexSetForIndexPathRowsInSection___block_invoke;
  v8[3] = &unk_1E72EEFC0;
  v10 = a3;
  v6 = indexSet;
  v9 = v6;
  [self enumerateObjectsUsingBlock:v8];

  return v6;
}

- (id)__ck_indexSetForIndexPathItemsInSection:()CKUtilities
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__NSArray_CKUtilities____ck_indexSetForIndexPathItemsInSection___block_invoke;
  v8[3] = &unk_1E72EEFC0;
  v10 = a3;
  v6 = indexSet;
  v9 = v6;
  [self enumerateObjectsUsingBlock:v8];

  return v6;
}

- (id)__ck_shuffledArray
{
  v1 = [self mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
  while ([v1 count])
  {
    v3 = arc4random();
    v4 = v3 % [v1 count];
    v5 = [v1 objectAtIndexedSubscript:v4];
    [array addObject:v5];
    [v1 removeObjectAtIndex:v4];
  }

  v6 = [array copy];

  return v6;
}

@end