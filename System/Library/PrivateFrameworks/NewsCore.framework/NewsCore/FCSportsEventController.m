@interface FCSportsEventController
- (FCSportsEventController)initWithContentDatabase:(id)a3 context:(id)a4 sportsEventRecordSource:(id)a5 tagController:(id)a6;
- (id)_cachedSportsEventsForSportsEventID:(id)a3 fastCacheOnly:(BOOL)a4;
- (id)_fetchOperationForSportsEventsWithIDs:(id)a3;
- (id)jsonEncodableObject;
- (void)_fetchSportsEventForSportsEventID:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6;
- (void)_fetchSportsEventsForSportsEventIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6;
- (void)_refreshSportsEventsBasedOnAgeForSportsEventIDs:(id)a3;
- (void)_saveSportsEventsToCache:(id)a3;
@end

@implementation FCSportsEventController

- (FCSportsEventController)initWithContentDatabase:(id)a3 context:(id)a4 sportsEventRecordSource:(id)a5 tagController:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = FCSportsEventController;
  v13 = [(FCSportsEventController *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, a4);
    objc_storeStrong(&v14->_sportsEventRecordSource, a5);
    objc_storeStrong(&v14->_tagController, a6);
    v15 = [v10 news_core_ConfigurationManager];
    appConfigurationManager = v14->_appConfigurationManager;
    v14->_appConfigurationManager = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fastCache = v14->_fastCache;
    v14->_fastCache = v17;
  }

  return v14;
}

- (void)_refreshSportsEventsBasedOnAgeForSportsEventIDs:(id)a3
{
  v18 = self;
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 loadDate];
        v11 = [v10 dateByAddingTimeInterval:3600.0];
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = [v11 fc_isEarlierThan:v12];

        if (v13)
        {
          v14 = [v9 identifier];
          [v4 addObject:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v15 = [(FCSportsEventController *)v18 _fetchOperationForSportsEventsWithIDs:v4];
    [v15 setQualityOfService:17];
    [v15 setRelativePriority:-1];
    v16 = +[FCCachePolicy ignoreCacheCachePolicy];
    [v15 setCachePolicy:v16];

    [v15 start];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_fetchSportsEventForSportsEventID:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventID != nil"];
      *buf = 136315906;
      v20 = "[FCSportsEventController _fetchSportsEventForSportsEventID:cachePolicy:qualityOfService:completionHandler:]";
      v21 = 2080;
      v22 = "FCSportsEventController.m";
      v23 = 1024;
      v24 = 114;
      v25 = 2114;
      v26 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    else if (!v12)
    {
      goto LABEL_6;
    }

    (*(v12 + 2))(v12, 0, 0);
    goto LABEL_6;
  }

  v18 = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__FCSportsEventController__fetchSportsEventForSportsEventID_cachePolicy_qualityOfService_completionHandler___block_invoke;
  v16[3] = &unk_1E7C379A0;
  v17 = v12;
  [(FCSportsEventController *)self _fetchSportsEventsForSportsEventIDs:v13 cachePolicy:v11 qualityOfService:a5 completionHandler:v16];

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
}

void __108__FCSportsEventController__fetchSportsEventForSportsEventID_cachePolicy_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (void)_fetchSportsEventsForSportsEventIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventIDs != nil"];
    *buf = 136315906;
    v46 = "[FCSportsEventController _fetchSportsEventsForSportsEventIDs:cachePolicy:qualityOfService:completionHandler:]";
    v47 = 2080;
    v48 = "FCSportsEventController.m";
    v49 = 1024;
    v50 = 136;
    v51 = 2114;
    v52 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v12)
    {
LABEL_4:
      if (v11)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2;
        v39[3] = &unk_1E7C44FB0;
        v39[4] = self;
        v40 = v10;
        v43 = a5;
        v41 = v11;
        v42 = v12;
        __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2(v39);
      }

      else
      {
        v29 = a5;
        v30 = v12;
        v13 = [MEMORY[0x1E695DF90] dictionary];
        v14 = [MEMORY[0x1E695DF70] array];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v31 = v10;
        v15 = v10;
        v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v35 + 1) + 8 * i);
              v21 = [(FCSportsEventController *)self fastCache];
              v22 = [v21 objectForKey:v20];

              if (v22)
              {
                [v13 setObject:v22 forKey:v20];
              }

              else
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v17);
        }

        if ([v14 count])
        {
          v23 = [(FCSportsEventController *)self _fetchOperationForSportsEventsWithIDs:v14];
          [v23 setQualityOfService:v29];
          v12 = v30;
          if (v29 == 9)
          {
            v24 = -1;
          }

          else
          {
            v24 = v29 == 33 || v29 == 25;
          }

          v10 = v31;
          [v23 setRelativePriority:v24];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_5;
          v32[3] = &unk_1E7C3C498;
          v34 = v30;
          v33 = v13;
          [v23 setFetchCompletionHandler:v32];
          v25 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v25 addOperation:v23];
        }

        else
        {
          v12 = v30;
          (v30)[2](v30, v13, 0);
          v10 = v31;
        }

        v11 = 0;
      }

      goto LABEL_29;
    }
  }

  else if (v12)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v46 = "[FCSportsEventController _fetchSportsEventsForSportsEventIDs:cachePolicy:qualityOfService:completionHandler:]";
    v47 = 2080;
    v48 = "FCSportsEventController.m";
    v49 = 1024;
    v50 = 137;
    v51 = 2114;
    v52 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
}

void __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOperationForSportsEventsWithIDs:*(a1 + 40)];
  [v2 setQualityOfService:*(a1 + 64)];
  v3 = *(a1 + 64);
  v4 = v3 == 33 || v3 == 25;
  if (v3 == 9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  [v2 setRelativePriority:v5];
  [v2 setCachePolicy:*(a1 + 48)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3;
  v7[3] = &unk_1E7C40AE8;
  v8 = *(a1 + 56);
  [v2 setFetchCompletionHandler:v7];
  v6 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v6 addOperation:v2];
}

void __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = v5;
    v8[2](v8, 0, v7);
  }

  else
  {
    v6 = [a2 fc_dictionaryWithKeySelector:sel_identifier];
    (*(*(a1 + 32) + 16))();
  }
}

void __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v9 = *(a1 + 40);
    v8 = v5;
    v9[2](v9, 0, v8);
  }

  else
  {
    v6 = [a2 fc_dictionaryWithKeySelector:sel_identifier];
    if (v6)
    {
      [*(a1 + 32) addEntriesFromDictionary:v6];
    }

    [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_19_1];
    v7 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_cachedSportsEventsForSportsEventID:(id)a3 fastCacheOnly:(BOOL)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventIDs != nil"];
    *buf = 136315906;
    v31 = "[FCSportsEventController _cachedSportsEventsForSportsEventID:fastCacheOnly:]";
    v32 = 2080;
    v33 = "FCSportsEventController.m";
    v34 = 1024;
    v35 = 218;
    v36 = 2114;
    v37 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(FCSportsEventController *)self fastCache];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          [v6 setObject:v15 forKey:v13];
        }

        else
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count] && !a4)
  {
    v16 = [(FCSportsEventController *)self sportsEventRecordSource];
    v17 = [v16 cachedRecordsWithIDs:v7];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke;
    v23[3] = &unk_1E7C44FF8;
    v23[4] = self;
    v24 = v6;
    [v17 enumerateRecordsAndInterestTokensWithBlock:v23];
  }

  v18 = [v6 allValues];
  [(FCSportsEventController *)self _refreshSportsEventsBasedOnAgeForSportsEventIDs:v18];

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

void __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) tagController];
  v8 = [v5 eventCompetitorTagIDs];
  v9 = [v7 slowCachedTagsForIDs:v8];

  v10 = [v5 eventCompetitorTagIDs];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_2;
  v42[3] = &unk_1E7C3A4A0;
  v11 = v9;
  v12 = *(a1 + 32);
  v43 = v11;
  v44 = v12;
  v13 = v5;
  v45 = v13;
  v14 = [v10 fc_arrayByTransformingWithBlock:v42];

  v15 = [v14 count];
  v16 = [v13 eventCompetitorTagIDs];
  v17 = [v16 count];

  if (v15 != v17)
  {
    v18 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      log = v18;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v13 base];
      v35 = [v34 identifier];
      v36 = [v13 eventCompetitorTagIDs];
      v37 = [v36 count];
      v38 = [v14 count];
      *buf = 138544130;
      v47 = v33;
      v48 = 2114;
      v49 = v35;
      v50 = 2050;
      v51 = v37;
      v52 = 2050;
      v53 = v38;
      _os_log_error_impl(&dword_1B63EF000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch all competitor tags for sports event with id=%{public}@. Expected %{public}lu tags, but got %{public}lu", buf, 0x2Au);
    }
  }

  v19 = [*(a1 + 32) tagController];
  v20 = [v13 eventLeagueTagID];
  v21 = [v19 slowCachedTagForID:v20];
  v22 = [v21 asSports];

  if (v22)
  {
    v23 = v22;
    v24 = [FCSportsEvent alloc];
    v25 = [*(a1 + 32) context];
    v26 = [v25 assetManager];
    v27 = [(FCSportsEvent *)v24 initWithSportsEventRecord:v13 eventCompetitorTags:v14 eventLeagueTag:v23 assetManager:v26 interestToken:v6];

    v28 = *(a1 + 40);
    v29 = [(FCSportsEvent *)v27 identifier];
    [v28 setObject:v27 forKey:v29];
  }

  else
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_23;
    v40[3] = &unk_1E7C36C58;
    v40[4] = *(a1 + 32);
    v41 = v13;
    __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_23(v40);
  }

  v30 = *MEMORY[0x1E69E9840];
}

id __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 isSports];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_3;
    v8[3] = &unk_1E7C3A478;
    v8[4] = *(a1 + 40);
    v9 = v3;
    v10 = *(a1 + 48);
    v6 = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_3(v8);
  }

  return v6;
}

uint64_t __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) base];
    v11 = [v10 identifier];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "%{public}@ encountered non-sports tag with id %{public}@ as a competitor tag for sports event with id %{public}@. Ignoring invalid competitor tag.", &v12, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_23(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [*(a1 + 40) base];
    v9 = [v8 identifier];
    v10 = [*(a1 + 40) eventLeagueTagID];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to get league tag for sports event record, sports event discarded; sportsEventRecord identifier=%{public}@, leagueTag identifier=%{public}@", &v11, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_saveSportsEventsToCache:(id)a3
{
  v4 = a3;
  v5 = [(FCSportsEventController *)self fastCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FCSportsEventController__saveSportsEventsToCache___block_invoke;
  v7[3] = &unk_1E7C45020;
  v8 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
}

void __52__FCSportsEventController__saveSportsEventsToCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];
}

- (id)jsonEncodableObject
{
  v2 = [(FCSportsEventController *)self sportsEventRecordSource];
  v3 = [v2 jsonEncodableObject];

  return v3;
}

- (id)_fetchOperationForSportsEventsWithIDs:(id)a3
{
  v4 = a3;
  v5 = [FCSportsEventsFetchOperation alloc];
  v6 = [(FCSportsEventController *)self context];
  v7 = [(FCSportsEventController *)self tagController];
  v8 = [(FCSportsEventsFetchOperation *)v5 initWithContext:v6 tagController:v7 sportsEventIDs:v4 delegate:self];

  return v8;
}

@end