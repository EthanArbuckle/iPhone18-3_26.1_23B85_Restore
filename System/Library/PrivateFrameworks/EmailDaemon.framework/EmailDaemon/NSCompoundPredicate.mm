@interface NSCompoundPredicate
@end

@implementation NSCompoundPredicate

void __64__NSCompoundPredicate_EDSearchableIndexExpressionGenerator__log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_11;
  log_log_11 = v1;
}

id __157__NSCompoundPredicate_EDSearchableIndexExpressionGenerator__ed_searchableIndexQueryStringForQueryWithSuggestion_originalSearchString_nonSpotlightPredicates___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [a2 ed_searchableIndexQueryStringForQueryWithSuggestion:v2 originalSearchString:v3 nonSpotlightPredicates:&v6];

  return v4;
}

id __132__NSCompoundPredicate_EDSearchableIndexQueryTransformer__ed_transformSearchableIndexPredicateWithSuggestion_searchableIndexManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ed_transformSearchableIndexPredicateWithSuggestion:*(a1 + 32) searchableIndexManager:*(a1 + 40)];

  return v2;
}

@end