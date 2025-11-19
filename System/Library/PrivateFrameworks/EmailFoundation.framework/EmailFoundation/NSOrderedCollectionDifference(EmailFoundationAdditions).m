@interface NSOrderedCollectionDifference(EmailFoundationAdditions)
- (id)ef_groupedInsertions;
- (id)ef_groupedInsertionsByObjectForTargetArray:()EmailFoundationAdditions inferMoves:;
- (id)ef_groupedInsertionsByObjectForTargetOrderedSet:()EmailFoundationAdditions inferMoves:;
- (id)ef_removalsExcludingMoves;
@end

@implementation NSOrderedCollectionDifference(EmailFoundationAdditions)

- (id)ef_groupedInsertions
{
  v2 = [a1 insertions];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__NSOrderedCollectionDifference_EmailFoundationAdditions__ef_groupedInsertions__block_invoke;
    v8[3] = &unk_1E8249120;
    v6 = v4;
    v9 = v6;
    [(NSOrderedCollectionDifference *)a1 _groupedInsertionsWithObjectsToInsert:v5 insertGroup:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)ef_removalsExcludingMoves
{
  v1 = [a1 removals];
  v2 = [v1 ef_filter:&__block_literal_global_19];

  return v2;
}

- (id)ef_groupedInsertionsByObjectForTargetArray:()EmailFoundationAdditions inferMoves:
{
  v4 = [(NSOrderedCollectionDifference *)a1 _groupedInsertionsByObjectForCollection:a3 inferMoves:a4];

  return v4;
}

- (id)ef_groupedInsertionsByObjectForTargetOrderedSet:()EmailFoundationAdditions inferMoves:
{
  v4 = [(NSOrderedCollectionDifference *)a1 _groupedInsertionsByObjectForCollection:a3 inferMoves:a4];

  return v4;
}

@end