@interface EDSearchableIndexQueryTransformer
+ (id)transformSearchableIndexPredicate:(id)predicate suggestion:(id)suggestion searchableIndexManager:(id)manager;
- (EDSearchableIndexQueryTransformer)initWithSearchableIndexManager:(id)manager;
- (id)persistenceQueryForSearchableIndexQuery:(id)query;
@end

@implementation EDSearchableIndexQueryTransformer

- (EDSearchableIndexQueryTransformer)initWithSearchableIndexManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = EDSearchableIndexQueryTransformer;
  v6 = [(EDSearchableIndexQueryTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchableIndexManager, manager);
  }

  return v7;
}

- (id)persistenceQueryForSearchableIndexQuery:(id)query
{
  queryCopy = query;
  predicate = [queryCopy predicate];
  suggestion = [queryCopy suggestion];
  searchableIndexManager = [(EDSearchableIndexQueryTransformer *)self searchableIndexManager];
  v8 = [predicate ed_transformSearchableIndexPredicateWithSuggestion:suggestion searchableIndexManager:searchableIndexManager];

  v9 = objc_alloc(MEMORY[0x1E699AE28]);
  targetClass = [queryCopy targetClass];
  sortDescriptors = [queryCopy sortDescriptors];
  v12 = [v9 initWithTargetClass:targetClass predicate:v8 sortDescriptors:sortDescriptors];

  return v12;
}

+ (id)transformSearchableIndexPredicate:(id)predicate suggestion:(id)suggestion searchableIndexManager:(id)manager
{
  predicateCopy = predicate;
  suggestionCopy = suggestion;
  managerCopy = manager;
  index = [managerCopy index];
  searchableIndexBundleID = [index searchableIndexBundleID];
  v23 = 0;
  v12 = [EDSearchableIndexExpressionGenerator expressionForPredicate:predicateCopy suggestion:suggestionCopy bundleID:searchableIndexBundleID nonSpotlightPredicates:&v23];
  v13 = v23;

  v14 = [objc_opt_class() searchableItemResultForExpression:v12];
  snippetData = [v14 snippetData];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:snippetData forKeyedSubscript:@"EDSearchableIndexQueryTransformer.snippetHints"];

  identifiers = [v14 identifiers];
  v19 = [identifiers count];

  if (v19)
  {
    identifiers2 = [v14 identifiers];
    ef_matchNothingPredicate = [EDMessageListItemPredicates predicateForMessagesWithPersistentIDs:identifiers2];
  }

  else
  {
    ef_matchNothingPredicate = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
  }

  return ef_matchNothingPredicate;
}

@end