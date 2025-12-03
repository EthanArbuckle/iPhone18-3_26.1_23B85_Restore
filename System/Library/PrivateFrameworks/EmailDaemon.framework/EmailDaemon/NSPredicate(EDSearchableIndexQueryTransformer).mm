@interface NSPredicate(EDSearchableIndexQueryTransformer)
- (void)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:;
@end

@implementation NSPredicate(EDSearchableIndexQueryTransformer)

- (void)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:
{
  v7 = a3;
  v8 = a4;
  [self doesNotRecognizeSelector:a2];
  __assert_rtn("[NSPredicate(EDSearchableIndexQueryTransformer) ed_transformSearchableIndexPredicateWithSuggestion:searchableIndexManager:]", "EDSearchableIndexQueryTransformer.m", 38, "0");
}

@end