@interface FAFamilyPeopleSuggesterSuggester
- (id)getFamilyRecommendationsWithContext:(id *)a3 error:(id *)a4;
@end

@implementation FAFamilyPeopleSuggesterSuggester

- (id)getFamilyRecommendationsWithContext:(id *)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = _FASignpostLogSystem();
  v5 = _FASignpostCreate(v4);
  v35 = v6;

  v7 = _FASignpostLogSystem();
  v8 = v7;
  v34 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PeopleSuggesterFetchRecommendation", "", buf, 2u);
  }

  v9 = _FASignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FAFamilyPeopleSuggesterSuggester getFamilyRecommendationsWithContext:v5 error:v9];
  }

  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to get Family suggestions from PeopleSuggester", buf, 2u);
  }

  v36 = v5;

  v11 = [MEMORY[0x1E69BDBF0] suggesterWithDaemon];
  v12 = objc_alloc_init(MEMORY[0x1E69BDBE8]);
  v13 = +[FAPeopleDiscoveryService sharedInstance];
  v14 = [v13 getNearbyPeople];
  v15 = [v14 allObjects];

  [v12 setSeedContactIdentifiers:v15];
  v16 = [v11 familyRecommendationSuggestionsWithPredictionContext:v12];
  v17 = _FALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v16;
    _os_log_impl(&dword_1B70B0000, v17, OS_LOG_TYPE_DEFAULT, "Loaded family PeopleSuggester suggestions. %@", buf, 0xCu);
  }

  v18 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v39 + 1) + 8 * i) recipients];
        v25 = [v24 firstObject];

        if (v25)
        {
          v26 = [[FARecommendedFamilyMember alloc] initWithPeopleSuggesterRecommendation:v25];
          [v18 addObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v21);
  }

  Nanoseconds = _FASignpostGetNanoseconds(v36, v35);
  v28 = _FASignpostLogSystem();
  v29 = v28;
  if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v29, OS_SIGNPOST_INTERVAL_END, v36, "PeopleSuggesterFetchRecommendation", "", buf, 2u);
  }

  v30 = _FASignpostLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [(FAFamilyPeopleSuggesterSuggester *)v36 getFamilyRecommendationsWithContext:v30 error:Nanoseconds / 1000000000.0];
  }

  if (a3)
  {
    *a3 = [[FAFamilySuggesterFeedbackContext alloc] initWithPredictionContext:v12 suggestions:v19];
  }

  if (a4)
  {
    *a4 = 0;
  }

  v31 = [v18 copy];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: PeopleSuggesterFetchRecommendation ", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getFamilyRecommendationsWithContext:(double)a3 error:.cold.2(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:PeopleSuggesterFetchRecommendation ", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end