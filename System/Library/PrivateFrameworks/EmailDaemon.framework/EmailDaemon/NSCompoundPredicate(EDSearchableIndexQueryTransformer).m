@interface NSCompoundPredicate(EDSearchableIndexQueryTransformer)
- (id)ed_transformSearchableIndexPredicateWithSuggestion:()EDSearchableIndexQueryTransformer searchableIndexManager:;
@end

@implementation NSCompoundPredicate(EDSearchableIndexQueryTransformer)

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
    v9 = [a1 subpredicates];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __132__NSCompoundPredicate_EDSearchableIndexQueryTransformer__ed_transformSearchableIndexPredicateWithSuggestion_searchableIndexManager___block_invoke;
    v16 = &unk_1E8257168;
    v17 = v6;
    v18 = v7;
    v10 = [v9 ef_compactMap:&v13];

    v11 = objc_alloc(MEMORY[0x1E696AB28]);
    v8 = [v11 initWithType:objc_msgSend(a1 subpredicates:{"compoundPredicateType", v13, v14, v15, v16), v10}];
  }

  return v8;
}

@end