@interface EDSearchableIndexQueryTransformer
+ (id)transformSearchableIndexPredicate:(id)a3 suggestion:(id)a4 searchableIndexManager:(id)a5;
- (EDSearchableIndexQueryTransformer)initWithSearchableIndexManager:(id)a3;
- (id)persistenceQueryForSearchableIndexQuery:(id)a3;
@end

@implementation EDSearchableIndexQueryTransformer

- (EDSearchableIndexQueryTransformer)initWithSearchableIndexManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EDSearchableIndexQueryTransformer;
  v6 = [(EDSearchableIndexQueryTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchableIndexManager, a3);
  }

  return v7;
}

- (id)persistenceQueryForSearchableIndexQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 predicate];
  v6 = [v4 suggestion];
  v7 = [(EDSearchableIndexQueryTransformer *)self searchableIndexManager];
  v8 = [v5 ed_transformSearchableIndexPredicateWithSuggestion:v6 searchableIndexManager:v7];

  v9 = objc_alloc(MEMORY[0x1E699AE28]);
  v10 = [v4 targetClass];
  v11 = [v4 sortDescriptors];
  v12 = [v9 initWithTargetClass:v10 predicate:v8 sortDescriptors:v11];

  return v12;
}

+ (id)transformSearchableIndexPredicate:(id)a3 suggestion:(id)a4 searchableIndexManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 index];
  v11 = [v10 searchableIndexBundleID];
  v23 = 0;
  v12 = [EDSearchableIndexExpressionGenerator expressionForPredicate:v7 suggestion:v8 bundleID:v11 nonSpotlightPredicates:&v23];
  v13 = v23;

  v14 = [objc_opt_class() searchableItemResultForExpression:v12];
  v15 = [v14 snippetData];
  v16 = [MEMORY[0x1E696AF00] currentThread];
  v17 = [v16 threadDictionary];
  [v17 setObject:v15 forKeyedSubscript:@"EDSearchableIndexQueryTransformer.snippetHints"];

  v18 = [v14 identifiers];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [v14 identifiers];
    v21 = [EDMessageListItemPredicates predicateForMessagesWithPersistentIDs:v20];
  }

  else
  {
    v21 = [MEMORY[0x1E696AE18] ef_matchNothingPredicate];
  }

  return v21;
}

@end