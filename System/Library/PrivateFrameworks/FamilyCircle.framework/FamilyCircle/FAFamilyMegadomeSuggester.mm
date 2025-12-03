@interface FAFamilyMegadomeSuggester
- (FAFamilyMegadomeSuggester)init;
- (FAFamilyMegadomeSuggester)initWithRecommendationLoader:(id)loader;
- (id)getFamilyRecommendationsWithContext:(id *)context error:(id *)error;
- (id)peopleNotAlreadyInFamilyInPersonArray:(id)array;
- (id)recommendedFamilyMembersForMegadomeResults:(id)results;
@end

@implementation FAFamilyMegadomeSuggester

- (FAFamilyMegadomeSuggester)init
{
  v3 = objc_alloc_init(FAMegadomeRecommendationsLoader);
  v4 = [(FAFamilyMegadomeSuggester *)self initWithRecommendationLoader:v3];

  return v4;
}

- (FAFamilyMegadomeSuggester)initWithRecommendationLoader:(id)loader
{
  loaderCopy = loader;
  v9.receiver = self;
  v9.super_class = FAFamilyMegadomeSuggester;
  v6 = [(FAFamilyMegadomeSuggester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendationLoader, loader);
  }

  return v7;
}

- (id)getFamilyRecommendationsWithContext:(id *)context error:(id *)error
{
  v7 = _FASignpostLogSystem();
  v8 = _FASignpostCreate(v7);
  v10 = v9;

  v11 = _FASignpostLogSystem();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MegadomeFetchRecommendation", "", buf, 2u);
  }

  v13 = _FASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [FAFamilyMegadomeSuggester getFamilyRecommendationsWithContext:v8 error:v13];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke;
  aBlock[3] = &__block_descriptor_64_e54_v24__0__NSError_8__FAFamilySuggesterFeedbackContext_16l;
  aBlock[4] = v8;
  aBlock[5] = v10;
  aBlock[6] = context;
  aBlock[7] = error;
  v14 = _Block_copy(aBlock);
  v15 = _FALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to get Family suggestions from Megadome", buf, 2u);
  }

  recommendationLoader = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
  v32 = 0;
  v17 = [recommendationLoader peopleViewWithError:&v32];
  v18 = v32;

  if (v17)
  {
    recommendationLoader2 = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
    v31 = 0;
    v20 = [recommendationLoader2 megadomeResultsForFamilyTagWithError:&v31];
    v21 = v31;

    if (v20)
    {
      recommendationLoader3 = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
      scoredEntities = [v20 scoredEntities];
      v24 = [recommendationLoader3 megadomePeopleFromScoredEntities:scoredEntities inVisualIdentifierView:v17];

      v25 = [(FAFamilyMegadomeSuggester *)self peopleNotAlreadyInFamilyInPersonArray:v24];
      v26 = [(FAFamilyMegadomeSuggester *)self recommendedFamilyMembersForMegadomeResults:v25];
      v27 = -[FAFamilySuggesterFeedbackContext initWithMegadomeFeedbackEventID:]([FAFamilySuggesterFeedbackContext alloc], "initWithMegadomeFeedbackEventID:", [v20 feedbackEventId]);
      v14[2](v14, 0, v27);
    }

    else
    {
      v29 = _FALogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [FAFamilyMegadomeSuggester getFamilyRecommendationsWithContext:v21 error:v29];
      }

      (v14)[2](v14, v21, 0);
      v26 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v28 = _FALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [FAFamilyMegadomeSuggester getFamilyRecommendationsWithContext:v18 error:v28];
    }

    (v14)[2](v14, v18, 0);
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

void __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  Nanoseconds = _FASignpostGetNanoseconds(*(a1 + 32), *(a1 + 40));
  v8 = _FASignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v9, OS_SIGNPOST_INTERVAL_END, v10, "MegadomeFetchRecommendation", "", v14, 2u);
  }

  v11 = _FASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke_cold_1((a1 + 32), v11, Nanoseconds / 1000000000.0);
  }

  if (*(a1 + 48))
  {
    v12 = v6;
    **(a1 + 48) = v6;
  }

  if (*(a1 + 56))
  {
    v13 = v5;
    **(a1 + 56) = v5;
  }
}

- (id)peopleNotAlreadyInFamilyInPersonArray:(id)array
{
  v45 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  recommendationLoader = [(FAFamilyMegadomeSuggester *)self recommendationLoader];
  familyHandles = [recommendationLoader familyHandles];

  if ([familyHandles count])
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = arrayCopy;
    obj = arrayCopy;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = MEMORY[0x1E695DF70];
          emails = [v10 emails];
          v13 = [v11 arrayWithArray:emails];

          phoneNumbers = [v10 phoneNumbers];
          v15 = [FAMegadomeRecommendationsLoader normalizedPhoneNumbersForPhoneNumbers:phoneNumbers];

          [v13 addObjectsFromArray:v15];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v16 = v13;
          v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v31 + 1) + 8 * j);
                if ([familyHandles containsObject:v21])
                {
                  v22 = _FALogSystem();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v40 = v21;
                    v41 = 2112;
                    v42 = v10;
                    _os_log_impl(&dword_1B70B0000, v22, OS_LOG_TYPE_DEFAULT, "Handle %@ already in Family. Removing recommendation from array: %@", buf, 0x16u);
                  }

                  goto LABEL_19;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          [v28 addObject:v10];
LABEL_19:
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v8);
    }

    v23 = [v28 copy];
    arrayCopy = v27;
  }

  else
  {
    v24 = _FALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[FAFamilyMegadomeSuggester peopleNotAlreadyInFamilyInPersonArray:]";
      _os_log_impl(&dword_1B70B0000, v24, OS_LOG_TYPE_DEFAULT, "No Family handles. Returning early from %s.", buf, 0xCu);
    }

    v23 = arrayCopy;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)recommendedFamilyMembersForMegadomeResults:(id)results
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [FARecommendedFamilyMember alloc];
        v12 = [(FARecommendedFamilyMember *)v11 initWithMegadomeRecommendation:v10, v16];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [array copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: MegadomeFetchRecommendation ", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error initializing megadome entities for Family tag: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getFamilyRecommendationsWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error initializing megadome visual identifier view: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __71__FAFamilyMegadomeSuggester_getFamilyRecommendationsWithContext_error___block_invoke_cold_1(uint64_t *a1, NSObject *a2, double a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a3;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:MegadomeFetchRecommendation ", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end