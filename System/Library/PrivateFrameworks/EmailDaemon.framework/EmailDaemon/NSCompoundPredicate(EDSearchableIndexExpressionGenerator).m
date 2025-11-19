@interface NSCompoundPredicate(EDSearchableIndexExpressionGenerator)
+ (id)log;
- (id)ed_searchableIndexQueryStringForQueryWithSuggestion:()EDSearchableIndexExpressionGenerator originalSearchString:nonSpotlightPredicates:;
- (uint64_t)ed_hasOnlyNonSpotlightKeypaths;
- (uint64_t)ed_hasOnlySpotlightKeypaths;
@end

@implementation NSCompoundPredicate(EDSearchableIndexExpressionGenerator)

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__NSCompoundPredicate_EDSearchableIndexExpressionGenerator__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v1 = log_log_11;

  return v1;
}

- (uint64_t)ed_hasOnlySpotlightKeypaths
{
  v1 = [a1 subpredicates];
  v2 = [v1 ef_all:&__block_literal_global_15_0];

  return v2;
}

- (uint64_t)ed_hasOnlyNonSpotlightKeypaths
{
  v1 = [a1 subpredicates];
  v2 = [v1 ef_all:&__block_literal_global_17_0];

  return v2;
}

- (id)ed_searchableIndexQueryStringForQueryWithSuggestion:()EDSearchableIndexExpressionGenerator originalSearchString:nonSpotlightPredicates:
{
  v40 = *MEMORY[0x1E69E9840];
  if ([a1 ed_hasOnlySpotlightKeypaths])
  {
    v7 = [a1 subpredicates];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __157__NSCompoundPredicate_EDSearchableIndexExpressionGenerator__ed_searchableIndexQueryStringForQueryWithSuggestion_originalSearchString_nonSpotlightPredicates___block_invoke;
    v35[3] = &__block_descriptor_41_e31___NSString_16__0__NSPredicate_8l;
    v36 = a3;
    v35[4] = a4;
    v8 = [v7 ef_compactMap:v35];

    v9 = +[EDSearchableIndexExpressionGenerator queryStringByJoiningQueries:withPredicateType:](EDSearchableIndexExpressionGenerator, "queryStringByJoiningQueries:withPredicateType:", v8, [a1 compoundPredicateType]);

    v10 = v9;
    goto LABEL_26;
  }

  if (![a1 ed_hasOnlyNonSpotlightKeypaths])
  {
    v26 = a5;
    v12 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [a1 subpredicates];
    v10 = 0;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if ([v18 ed_hasOnlySpotlightKeypaths])
          {
            if (v10)
            {
              v19 = +[EDSearchableIndexExpressionGenerator log];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v20 = [a1 ef_publicDescription];
                [(NSCompoundPredicate(EDSearchableIndexExpressionGenerator) *)v20 ed_searchableIndexQueryStringForQueryWithSuggestion:buf originalSearchString:&v38 nonSpotlightPredicates:v19];
              }

              v15 = 1;
            }

            else
            {
              v30 = 0;
              v10 = [v18 ed_searchableIndexQueryStringForQueryWithSuggestion:a3 originalSearchString:a4 nonSpotlightPredicates:&v30];
            }
          }

          else
          {
            [v12 addObject:v18];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v14);

      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }

      v13 = [MEMORY[0x1E699B780] sharedReporter];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v13 reportIssueType:v22 description:@"Malformed spotlight predicate"];
    }

LABEL_22:
    if ([v12 count] == 1)
    {
      [v12 objectAtIndexedSubscript:0];
    }

    else
    {
      [MEMORY[0x1E696AE18] ef_andCompoundPredicateWithSubpredicates:v12];
    }
    v23 = ;
    *v27 = v23;

    goto LABEL_26;
  }

  v11 = a1;
  v10 = 0;
  *a5 = a1;
LABEL_26:
  v24 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)ed_searchableIndexQueryStringForQueryWithSuggestion:()EDSearchableIndexExpressionGenerator originalSearchString:nonSpotlightPredicates:.cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Malformed spotlight predicate:%{public}@. There should only be one spotlight subpredicate.", buf, 0xCu);
}

@end