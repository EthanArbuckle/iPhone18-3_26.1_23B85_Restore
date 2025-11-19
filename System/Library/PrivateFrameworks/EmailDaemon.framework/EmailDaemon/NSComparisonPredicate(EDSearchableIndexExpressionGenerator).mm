@interface NSComparisonPredicate(EDSearchableIndexExpressionGenerator)
+ (id)log;
- (id)ed_searchableIndexQueryStringForQueryWithSuggestion:()EDSearchableIndexExpressionGenerator originalSearchString:nonSpotlightPredicates:;
- (uint64_t)ed_hasOnlySpotlightKeypaths;
@end

@implementation NSComparisonPredicate(EDSearchableIndexExpressionGenerator)

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__NSComparisonPredicate_EDSearchableIndexExpressionGenerator__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_87 != -1)
  {
    dispatch_once(&log_onceToken_87, block);
  }

  v1 = log_log_87;

  return v1;
}

- (uint64_t)ed_hasOnlySpotlightKeypaths
{
  if (ed_hasOnlySpotlightKeypaths_onceToken != -1)
  {
    [NSComparisonPredicate(EDSearchableIndexExpressionGenerator) ed_hasOnlySpotlightKeypaths];
  }

  v2 = ed_hasOnlySpotlightKeypaths_spotlightKeyPaths;
  v3 = [a1 leftExpression];
  v4 = [v3 keyPath];
  v5 = [v2 containsObject:v4];

  return v5;
}

- (id)ed_searchableIndexQueryStringForQueryWithSuggestion:()EDSearchableIndexExpressionGenerator originalSearchString:nonSpotlightPredicates:
{
  if ([a1 ed_hasOnlySpotlightKeypaths])
  {
    v9 = [a1 leftExpression];
    v10 = [v9 keyPath];

    v11 = [a1 rightExpression];
    v12 = [v11 constantValue];

    if ([v10 isEqualToString:*MEMORY[0x1E699A9D0]])
    {
      objc_storeStrong(a4, v12);
      v13 = 0;
    }

    else
    {
      if ([v10 isEqualToString:*MEMORY[0x1E699A998]])
      {
        v15 = v12;
      }

      else
      {
        v15 = [EDSearchableIndexExpressionGenerator searchableIndexQueryStringForComparisionPredicate:a1 hasSuggestion:a3];
      }

      v13 = v15;
    }

    *a5 = 0;
  }

  else
  {
    v14 = a1;
    v13 = 0;
    *a5 = a1;
  }

  return v13;
}

@end