@interface NSComparisonPredicate(EDSearchableIndexQueryTransformer)
- (id)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:;
@end

@implementation NSComparisonPredicate(EDSearchableIndexQueryTransformer)

- (id)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:
{
  v6 = a3;
  v7 = a4;
  if ([self ed_hasOnlySpotlightKeypaths])
  {
    selfCopy = [EDSearchableIndexQueryTransformer transformSearchableIndexPredicate:self suggestion:v6 searchableIndexManager:v7];
  }

  else
  {
    selfCopy = self;
  }

  v9 = selfCopy;

  return v9;
}

@end