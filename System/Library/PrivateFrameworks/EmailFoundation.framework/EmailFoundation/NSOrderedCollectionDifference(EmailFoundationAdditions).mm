@interface NSOrderedCollectionDifference(EmailFoundationAdditions)
- (id)ef_groupedInsertions;
- (id)ef_groupedInsertionsByObjectForTargetArray:()EmailFoundationAdditions inferMoves:;
- (id)ef_groupedInsertionsByObjectForTargetOrderedSet:()EmailFoundationAdditions inferMoves:;
- (id)ef_removalsExcludingMoves;
@end

@implementation NSOrderedCollectionDifference(EmailFoundationAdditions)

- (id)ef_groupedInsertions
{
  insertions = [self insertions];
  v3 = [insertions count];

  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__NSOrderedCollectionDifference_EmailFoundationAdditions__ef_groupedInsertions__block_invoke;
    v8[3] = &unk_1E8249120;
    v6 = array;
    v9 = v6;
    [(NSOrderedCollectionDifference *)self _groupedInsertionsWithObjectsToInsert:v5 insertGroup:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)ef_removalsExcludingMoves
{
  removals = [self removals];
  v2 = [removals ef_filter:&__block_literal_global_19];

  return v2;
}

- (id)ef_groupedInsertionsByObjectForTargetArray:()EmailFoundationAdditions inferMoves:
{
  v4 = [(NSOrderedCollectionDifference *)self _groupedInsertionsByObjectForCollection:a3 inferMoves:a4];

  return v4;
}

- (id)ef_groupedInsertionsByObjectForTargetOrderedSet:()EmailFoundationAdditions inferMoves:
{
  v4 = [(NSOrderedCollectionDifference *)self _groupedInsertionsByObjectForCollection:a3 inferMoves:a4];

  return v4;
}

@end