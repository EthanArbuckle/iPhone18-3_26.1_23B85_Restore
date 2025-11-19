@interface NSComparisonPredicate(EmailFoundationAdditions)
- (id)ef_publicDescription;
- (uint64_t)ef_containsKeyPath:()EmailFoundationAdditions;
- (uint64_t)ef_matchesEverything;
- (uint64_t)ef_matchesNothing;
@end

@implementation NSComparisonPredicate(EmailFoundationAdditions)

- (uint64_t)ef_matchesNothing
{
  v2 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  v3 = [a1 isEqual:v2];

  return v3;
}

- (uint64_t)ef_matchesEverything
{
  v2 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v3 = [a1 isEqual:v2];

  return v3;
}

- (id)ef_publicDescription
{
  if ([a1 comparisonPredicateModifier] == 1)
  {
    v2 = @"ALL ";
  }

  else if ([a1 comparisonPredicateModifier] == 2)
  {
    v2 = @"ANY ";
  }

  else
  {
    v2 = &stru_1F459BF68;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 leftExpression];
  v5 = describableObjectForExpression(v4);
  v6 = [a1 predicateOperator];
  v7 = [a1 rightExpression];
  v8 = describableObjectForExpression(v7);
  v9 = [v3 stringWithFormat:@"%@%@ %@ %@", v2, v5, v6, v8];

  return v9;
}

- (uint64_t)ef_containsKeyPath:()EmailFoundationAdditions
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__NSComparisonPredicate_EmailFoundationAdditions__ef_containsKeyPath___block_invoke;
  aBlock[3] = &unk_1E8249258;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [a1 leftExpression];
  if (v6[2](v6, v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = [a1 rightExpression];
    v8 = v6[2](v6, v9);
  }

  return v8;
}

@end