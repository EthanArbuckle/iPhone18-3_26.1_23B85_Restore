@interface NSComparisonPredicate(EDSearchableIndexQueryTransformer)
- (id)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:;
@end

@implementation NSComparisonPredicate(EDSearchableIndexQueryTransformer)

- (id)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:
{
  v6 = a3;
  v7 = a4;
  if ([a1 ed_hasOnlySpotlightKeypaths])
  {
    v8 = [EDSearchableIndexQueryTransformer transformSearchableIndexPredicate:a1 suggestion:v6 searchableIndexManager:v7];
  }

  else
  {
    v8 = a1;
  }

  v9 = v8;

  return v9;
}

@end