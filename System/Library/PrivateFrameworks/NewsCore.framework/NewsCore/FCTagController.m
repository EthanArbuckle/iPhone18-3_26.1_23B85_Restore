@interface FCTagController
- (BOOL)shouldPrefetchGlobalTags;
- (FCTagController)init;
- (FCTagController)initWithContentDatabase:(id)a3 assetManager:(id)a4 tagRecordSource:(id)a5 configurationManager:(id)a6;
- (id)_cachedTagForTagID:(char)a3 fastCacheOnly:;
- (id)_cachedTagsForTagIDs:(char)a3 fastCacheOnly:;
- (id)expectedFastCachedTagForID:(id)a3;
- (id)fetchOperationForTagsIncludingChildrenWithIDs:(id)a3 softMaxAge:(double)a4;
- (id)fetchOperationForTagsWithIDs:(id)a3;
- (id)jsonEncodableObject;
- (id)slowCachedTagsForIDs:(id)a3;
- (id)tagsForTagIDs:(id)a3 predicate:(id)a4;
- (id)tagsForTagRecords:(id)a3;
- (void)_fetchTagsForTagIDs:(uint64_t)a3 includeParents:(uint64_t)a4 includeChildren:(uint64_t)a5 qualityOfService:(void *)a6 callbackQueue:(void *)a7 completionHandler:;
- (void)configurationManager:(id)a3 configurationDidChange:(id)a4;
- (void)dealloc;
- (void)fetchTagForTagID:(id)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)fetchTagsForTagIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6;
- (void)fetchTagsForTagIDs:(id)a3 maximumCachedAge:(double)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6;
- (void)fetchTagsForTagIDs:(id)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
- (void)saveTagsToCache:(id)a3;
- (void)setShouldPrefetchGlobalTags:(BOOL)a3;
@end

@implementation FCTagController

- (FCTagController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCTagController init]";
    v10 = 2080;
    v11 = "FCTagController.m";
    v12 = 1024;
    v13 = 63;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCTagController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTagController)initWithContentDatabase:(id)a3 assetManager:(id)a4 tagRecordSource:(id)a5 configurationManager:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase != nil"];
    *buf = 136315906;
    v34 = "[FCTagController initWithContentDatabase:assetManager:tagRecordSource:configurationManager:]";
    v35 = 2080;
    v36 = "FCTagController.m";
    v37 = 1024;
    v38 = 71;
    v39 = 2114;
    v40 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v12)
    {
      goto LABEL_6;
    }
  }

  else if (v12)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager != nil"];
    *buf = 136315906;
    v34 = "[FCTagController initWithContentDatabase:assetManager:tagRecordSource:configurationManager:]";
    v35 = 2080;
    v36 = "FCTagController.m";
    v37 = 1024;
    v38 = 72;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagRecordSource != nil"];
    *buf = 136315906;
    v34 = "[FCTagController initWithContentDatabase:assetManager:tagRecordSource:configurationManager:]";
    v35 = 2080;
    v36 = "FCTagController.m";
    v37 = 1024;
    v38 = 73;
    v39 = 2114;
    v40 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v32.receiver = self;
  v32.super_class = FCTagController;
  v15 = [(FCTagController *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contentDatabase, a3);
    objc_storeStrong(&v16->_assetManager, a4);
    objc_storeStrong(&v16->_configurationManager, a6);
    objc_storeStrong(&v16->_tagRecordSource, a5);
    v17 = +[FCThreadSafeMapTable strongToWeakObjectsMapTable];
    fastCache = v16->_fastCache;
    v16->_fastCache = v17;

    v19 = [[FCOperationThrottler alloc] initWithDelegate:v16];
    tagPrefetchThrottler = v16->_tagPrefetchThrottler;
    v16->_tagPrefetchThrottler = v19;

    [(FCOperationThrottler *)v16->_tagPrefetchThrottler setSuspended:1];
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prefetchedTags = v16->_prefetchedTags;
    v16->_prefetchedTags = v21;

    v23 = [[FCOperationThrottler alloc] initWithDelegate:v16];
    tagRefreshThrottler = v16->_tagRefreshThrottler;
    v16->_tagRefreshThrottler = v23;

    v25 = objc_alloc_init(FCThreadSafeMutableSet);
    tagIDsNeedingRefresh = v16->_tagIDsNeedingRefresh;
    v16->_tagIDsNeedingRefresh = v25;

    objc_storeStrong(&v16->_configurationManager, a6);
    [(FCCoreConfigurationManager *)v16->_configurationManager addObserver:v16];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)dealloc
{
  [(FCCoreConfigurationManager *)self->_configurationManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = FCTagController;
  [(FCTagController *)&v3 dealloc];
}

- (id)_cachedTagForTagID:(char)a3 fastCacheOnly:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v14 = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v8 = [(FCTagController *)a1 _cachedTagsForTagIDs:v7 fastCacheOnly:a3];
      v9 = [v8 allValues];
      v10 = [v9 firstObject];

      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
      *buf = 136315906;
      v16 = "[FCTagController _cachedTagForTagID:fastCacheOnly:]";
      v17 = 2080;
      v18 = "FCTagController.m";
      v19 = 1024;
      v20 = 375;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v10 = 0;
LABEL_7:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_cachedTagsForTagIDs:(char)a3 fastCacheOnly:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
      *buf = 136315906;
      v45 = "[FCTagController _cachedTagsForTagIDs:fastCacheOnly:]";
      v46 = 2080;
      v47 = "FCTagController.m";
      v48 = 1024;
      v49 = 382;
      v50 = 2114;
      v51 = v29;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = a1[5];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke;
    v36[3] = &unk_1E7C37B20;
    v32 = v6;
    v37 = v6;
    v10 = v7;
    v38 = v10;
    v11 = v8;
    v39 = v11;
    [v9 readWithAccessor:v36];
    if ([v11 count] && (a3 & 1) == 0)
    {
      v12 = [a1[3] cachedRecordsWithIDs:v11];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke_2;
      v34[3] = &unk_1E7C37B48;
      v34[4] = a1;
      v13 = v10;
      v35 = v13;
      [v12 enumerateRecordsAndInterestTokensWithBlock:v34];
      [a1[5] addEntriesFromDictionary:v13];
    }

    v31 = v11;
    v30 = a1;
    v14 = [v10 allValues];
    v33 = [MEMORY[0x1E695E0F0] mutableCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          v21 = [v20 loadDate];
          v22 = [v21 dateByAddingTimeInterval:3600.0];
          v23 = [MEMORY[0x1E695DF00] date];
          v24 = [v22 fc_isEarlierThan:v23];

          if (v24)
          {
            v25 = [v20 identifier];
            [v33 addObject:v25];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:buf count:16];
      }

      while (v17);
    }

    if ([v33 count])
    {
      [v30[9] addObjectsFromArray:v33];
      [v30[8] tickle];
    }

    v26 = v39;
    a1 = v10;

    v6 = v32;
  }

  v27 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)slowCachedTagsForIDs:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    v9 = 136315906;
    v10 = "[FCTagController slowCachedTagsForIDs:]";
    v11 = 2080;
    v12 = "FCTagController.m";
    v13 = 1024;
    v14 = 119;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v5 = [(FCTagController *)&self->super.isa _cachedTagsForTagIDs:v4 fastCacheOnly:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)expectedFastCachedTagForID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCTagController *)&self->super.isa _cachedTagForTagID:v4 fastCacheOnly:1];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "result"];
      *buf = 136315906;
      v10 = "[FCTagController expectedFastCachedTagForID:]";
      v11 = 2080;
      v12 = "FCTagController.m";
      v13 = 1024;
      v14 = 127;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = [(FCTagController *)&self->super.isa _cachedTagForTagID:v4 fastCacheOnly:0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fetchOperationForTagsWithIDs:(id)a3
{
  v4 = a3;
  v5 = [FCTagsFetchOperation alloc];
  if (self)
  {
    v6 = self->_tagRecordSource;
    v7 = self->_assetManager;
    configurationManager = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    configurationManager = 0;
  }

  v9 = configurationManager;
  v10 = [(FCCoreConfigurationManager *)v9 configuration];
  v11 = [(FCTagsFetchOperation *)v5 initWithTagIDs:v4 tagRecordSource:v6 assetManager:v7 configuration:v10 delegate:self];

  return v11;
}

- (id)fetchOperationForTagsIncludingChildrenWithIDs:(id)a3 softMaxAge:(double)a4
{
  v6 = a3;
  v7 = [FCTagsFetchOperation alloc];
  if (self)
  {
    v8 = self->_tagRecordSource;
    v9 = self->_assetManager;
    configurationManager = self->_configurationManager;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    configurationManager = 0;
  }

  v11 = configurationManager;
  v12 = [(FCCoreConfigurationManager *)v11 configuration];
  v13 = [(FCTagsFetchOperation *)v7 initWithTagIDs:v6 tagRecordSource:v8 assetManager:v9 configuration:v12 delegate:self];

  [(FCFetchOperation *)v13 setCachePolicy:4];
  [(FCFetchOperation *)v13 setMaximumCachedAge:a4];
  [(FCTagsFetchOperation *)v13 setIncludeChildren:1];
  [(FCTagsFetchOperation *)v13 setOverrideChildrenCachePolicy:1];
  [(FCTagsFetchOperation *)v13 setChildrenCachePolicy:4];
  [(FCTagsFetchOperation *)v13 setChildrenMaximumCachedAge:a4];

  return v13;
}

- (void)fetchTagsForTagIDs:(id)a3 maximumCachedAge:(double)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [FCCachePolicy cachePolicyWithSoftMaxAge:a4];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__FCTagController_fetchTagsForTagIDs_maximumCachedAge_qualityOfService_completionHandler___block_invoke;
  v14[3] = &unk_1E7C379A0;
  v15 = v10;
  v13 = v10;
  [(FCTagController *)self fetchTagsForTagIDs:v11 cachePolicy:v12 qualityOfService:a5 completionHandler:v14];
}

uint64_t __90__FCTagController_fetchTagsForTagIDs_maximumCachedAge_qualityOfService_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchTagsForTagIDs:(id)a3 cachePolicy:(id)a4 qualityOfService:(int64_t)a5 completionHandler:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
    *buf = 136315906;
    v41 = "[FCTagController fetchTagsForTagIDs:cachePolicy:qualityOfService:completionHandler:]";
    v42 = 2080;
    v43 = "FCTagController.m";
    v44 = 1024;
    v45 = 224;
    v46 = 2114;
    v47 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v12)
    {
LABEL_4:
      if ([v10 count])
      {
        v13 = [v11 cachePolicy];
        if (v13 > 5)
        {
          v15 = 0;
        }

        else if (((1 << v13) & 0xD) != 0)
        {
          if (self)
          {
            fastCache = self->_fastCache;
          }

          else
          {
            fastCache = 0;
          }

          v15 = [(FCThreadSafeMapTable *)fastCache subdictionaryForKeys:v10];
        }

        else if (((1 << v13) & 0x30) != 0)
        {
          v16 = [v11 oldestAllowedDate];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [MEMORY[0x1E695DF00] distantPast];
          }

          v19 = v18;

          v20 = [MEMORY[0x1E695DF00] distantPast];
          v21 = [v19 isEqualToDate:v20];

          if (v21)
          {
            if (self)
            {
              v22 = self->_fastCache;
            }

            else
            {
              v22 = 0;
            }

            v15 = [(FCThreadSafeMapTable *)v22 subdictionaryForKeys:v10];
          }

          else
          {
            if (self)
            {
              v23 = self->_fastCache;
            }

            else
            {
              v23 = 0;
            }

            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3;
            v33[3] = &unk_1E7C379F0;
            v34 = v19;
            v15 = [(FCThreadSafeMapTable *)v23 subdictionaryForKeys:v10 passingTest:v33];
          }
        }

        else
        {
          v15 = MEMORY[0x1E695E0F8];
        }

        v24 = [v15 count];
        if (v24 == [v10 count])
        {
          v12[2](v12, v15, 0);
        }

        else
        {
          v25 = [(FCTagController *)self fetchOperationForTagsWithIDs:v10];
          [v25 setQualityOfService:a5];
          if (a5 == 9)
          {
            v26 = -1;
          }

          else
          {
            v26 = a5 == 33 || a5 == 25;
          }

          [v25 setRelativePriority:v26];
          [v25 setCachePolicy:{objc_msgSend(v11, "cachePolicy")}];
          [v11 maximumCachedAge];
          [v25 setMaximumCachedAge:?];
          [v25 setCanSendFetchCompletionSynchronously:1];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_4;
          v31[3] = &unk_1E7C37A38;
          v32 = v12;
          [v25 setFetchCompletionBlock:v31];
          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            v27 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
            [v27 addOperation:v25];
          }

          else
          {
            [v25 start];
          }
        }
      }

      else
      {
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2;
        v38 = &unk_1E7C379C8;
        v39 = v12;
        v39[2](v39, MEMORY[0x1E695E0F8], 0);
      }

      goto LABEL_41;
    }
  }

  else if (v12)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v41 = "[FCTagController fetchTagsForTagIDs:cachePolicy:qualityOfService:completionHandler:]";
    v42 = 2080;
    v43 = "FCTagController.m";
    v44 = 1024;
    v45 = 225;
    v46 = 2114;
    v47 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_41:

  v29 = *MEMORY[0x1E69E9840];
}

BOOL __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 fetchDate];
  if ([v5 fc_isLaterThanOrEqualTo:*(a1 + 32)])
  {
    v6 = [FCTagController isTagAllowedForNewsVersion:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v4 fetchedObject];
  v8 = [v3 dictionaryWithDictionary:v5];

  [v8 fc_removeObjectsForKeysPassingTest:&__block_literal_global_38];
  v6 = *(a1 + 32);
  v7 = [v4 error];

  (*(v6 + 16))(v6, v8, v7);
}

- (void)fetchTagsForTagIDs:(id)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  if (self)
  {
    [(FCTagController *)self _fetchTagsForTagIDs:a3 includeParents:0 includeChildren:0 qualityOfService:a4 callbackQueue:a5 completionHandler:a6];
  }
}

- (void)_fetchTagsForTagIDs:(uint64_t)a3 includeParents:(uint64_t)a4 includeChildren:(uint64_t)a5 qualityOfService:(void *)a6 callbackQueue:(void *)a7 completionHandler:
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a6;
  v15 = a7;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (v13 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_23:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
      *buf = 136315906;
      v43 = "[FCTagController _fetchTagsForTagIDs:includeParents:includeChildren:qualityOfService:callbackQueue:completionHandler:]";
      v44 = 2080;
      v45 = "FCTagController.m";
      v46 = 1024;
      v47 = 468;
      v48 = 2114;
      v49 = v26;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (v15)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v43 = "[FCTagController _fetchTagsForTagIDs:includeParents:includeChildren:qualityOfService:callbackQueue:completionHandler:]";
    v44 = 2080;
    v45 = "FCTagController.m";
    v46 = 1024;
    v47 = 469;
    v48 = 2114;
    v49 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    goto LABEL_21;
  }

  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
  *buf = 136315906;
  v43 = "[FCTagController _fetchTagsForTagIDs:includeParents:includeChildren:qualityOfService:callbackQueue:completionHandler:]";
  v44 = 2080;
  v45 = "FCTagController.m";
  v46 = 1024;
  v47 = 467;
  v48 = 2114;
  v49 = v24;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (!v15)
  {
    goto LABEL_26;
  }

  if ([v13 count])
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = a1[5];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
    v33[3] = &unk_1E7C37B70;
    v34 = v13;
    v19 = v16;
    v35 = v19;
    v37 = a3;
    v20 = v17;
    v36 = v20;
    v38 = a4;
    [v18 readWithAccessor:v33];
    if ([v20 count])
    {
      v21 = [a1 fetchOperationForTagsWithIDs:v20];
      [v21 setIncludeParents:a3];
      [v21 setIncludeChildren:a4];
      [v21 setQualityOfService:a5];
      if (a5 == 9)
      {
        v22 = -1;
      }

      else
      {
        v22 = a5 == 33 || a5 == 25;
      }

      [v21 setRelativePriority:v22];
      [v21 setFetchCompletionQueue:v14];
      [v21 setCanSendFetchCompletionSynchronously:0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_5;
      v30[3] = &unk_1E7C37B98;
      v31 = v19;
      v32 = v15;
      [v21 setFetchCompletionBlock:v30];
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v23 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
        [v23 addOperation:v21];
      }

      else
      {
        [v21 start];
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_7;
      block[3] = &unk_1E7C37BC0;
      v28 = v19;
      v29 = v15;
      dispatch_async(v14, block);

      v21 = v28;
    }

LABEL_21:
    goto LABEL_27;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
  v39[3] = &unk_1E7C37778;
  v41 = v15;
  v40 = v14;
  __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2(v39);

LABEL_27:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchTagForTagID:(id)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self)
  {
    if (v10)
    {
      v18[0] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke;
      *&v17 = &unk_1E7C379A0;
      *(&v17 + 1) = v12;
      [(FCTagController *)self _fetchTagsForTagIDs:v13 includeParents:0 includeChildren:0 qualityOfService:a4 callbackQueue:v11 completionHandler:block];

LABEL_7:
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
      *block = 136315906;
      *&block[4] = "[FCTagController _fetchTagForTagID:qualityOfService:callbackQueue:completionHandler:]";
      *&block[12] = 2080;
      *&block[14] = "FCTagController.m";
      *&block[22] = 1024;
      LODWORD(v17) = 441;
      WORD2(v17) = 2114;
      *(&v17 + 6) = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", block, 0x26u);

      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (v12)
    {
LABEL_6:
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
      *&v17 = &unk_1E7C379C8;
      *(&v17 + 1) = v12;
      dispatch_async(v11, block);
      goto LABEL_7;
    }
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

void __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_2;
  v13[3] = &unk_1E7C37AB0;
  v10 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v8;
  v14 = v7;
  v11 = v7;
  v12 = v8;
  [v10 fetchTagsForTagIDs:v11 maximumCachedAge:a3 qualityOfService:v13 completionHandler:v9];
}

void __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_3;
  v9[3] = &unk_1E7C37A88;
  v10 = v6;
  v11 = v5;
  v13 = a1[5];
  v14 = a1[6];
  v12 = a1[4];
  v7 = v5;
  v8 = v6;
  FCPerformBlockOnMainThread(v9);
}

void __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v11 = v3;
      v12 = [v2 localizedDescription];
      *buf = 138543362;
      v16 = v12;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_43;
    v13[3] = &unk_1E7C37A60;
    v14 = v5;
    v7 = [v6 fc_dictionaryByTransformingValuesWithBlock:v13];

    v4 = v7;
  }

  v8 = *(a1 + 64);
  v9 = [v4 nf_objectsForKeysWithoutMarker:*(a1 + 48)];
  (*(v8 + 16))(v8, v9);

  v10 = *MEMORY[0x1E69E9840];
}

void *__60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_43(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  if (v3(v2, v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)tagsForTagIDs:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    if ([v6 count])
    {
      v8 = [[FCArrayStream alloc] initWithArray:v6];
      v9 = [FCTransformedResultsStream alloc];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke;
      v12[3] = &unk_1E7C37AD8;
      v12[4] = self;
      v14 = 0x7FEFFFFFFFFFFFFFLL;
      v13 = v7;
      v10 = [(FCTransformedResultsStream *)v9 initWithStream:v8 asyncTransformBlock:v12];
      self = [[FCStreamingResults alloc] initWithStream:v10];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

void __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke(id *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v3 objectForKey:{v9, v12}];
        if (v10)
        {
          [a1[5] setObject:v10 forKey:v9];
        }

        else
        {
          [a1[6] addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[2];
  }

  v8 = v7;
  v9 = [v17 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[4];
  }

  v12 = v11;
  v13 = [v12 configuration];
  v14 = [(FCTag *)v6 initWithTagRecord:v17 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v13)];

  v15 = *(a1 + 40);
  v16 = [(FCTag *)v14 identifier];
  [v15 setObject:v14 forKey:v16];
}

void __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v24 = *v34;
    v25 = v4;
    do
    {
      v8 = 0;
      v26 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [v3 objectForKey:v9];
        if (v10)
        {
          [*(a1 + 40) setObject:v10 forKey:v9];
          v11 = [v10 asSection];
          v12 = [v11 parentID];

          if (*(a1 + 56) == 1 && v12)
          {
            v13 = [v3 objectForKey:v12];
            if (v13)
            {
              [*(a1 + 40) setObject:v13 forKey:v12];
            }

            else
            {
              [*(a1 + 48) addObject:v12];
            }
          }

          v14 = [v10 asChannel];
          v15 = [v14 sectionIDs];

          if (*(a1 + 57) == 1 && [v15 count])
          {
            v27 = v15;
            v28 = v12;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v30;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v30 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v29 + 1) + 8 * i);
                  v22 = [v3 objectForKey:v21];
                  if (v22)
                  {
                    [*(a1 + 40) setObject:v22 forKey:v21];
                  }

                  else
                  {
                    [*(a1 + 48) addObject:v21];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v18);
            }

            v7 = v24;
            v4 = v25;
            v6 = v26;
            v15 = v27;
            v12 = v28;
          }
        }

        else
        {
          [*(a1 + 48) addObject:v9];
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 status])
  {
    v3 = [v8 fetchedObject];
    if (v3)
    {
      [*(a1 + 32) addEntriesFromDictionary:v3];
    }
  }

  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_60];
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if ([v4 count])
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  else
  {
    v7 = [v8 error];
    (*(v5 + 16))(v5, v4, v7);
  }
}

uint64_t __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_62_0];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)saveTagsToCache:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = self->_fastCache;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__FCTagController_saveTagsToCache___block_invoke;
  v6[3] = &unk_1E7C37C10;
  v7 = v4;
  v5 = v4;
  [(FCTagController *)self readWriteWithAccessor:v6];
}

void __35__FCTagController_saveTagsToCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__FCTagController_saveTagsToCache___block_invoke_2;
  v6[3] = &unk_1E7C37BE8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __35__FCTagController_saveTagsToCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [v14 tagRecord];
  v8 = [v7 base];
  v9 = [v6 tagRecord];
  v10 = [v9 base];
  v11 = [v8 fc_isNewerThan:v10];

  if (v11)
  {
LABEL_3:
    v12 = *(a1 + 32);
    v13 = [v14 identifier];
    [v12 setObject:v14 forKey:v13];
  }
}

- (id)tagsForTagRecords:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  if (self)
  {
    fastCache = self->_fastCache;
  }

  else
  {
    fastCache = 0;
  }

  v6 = fastCache;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__FCTagController_tagsForTagRecords___block_invoke;
  v10[3] = &unk_1E7C37C60;
  v13 = &v14;
  v7 = v4;
  v11 = v7;
  v12 = self;
  [(FCThreadSafeMapTable *)v6 readWriteWithAccessor:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __37__FCTagController_tagsForTagRecords___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__FCTagController_tagsForTagRecords___block_invoke_2;
  v10[3] = &unk_1E7C37C38;
  v5 = a1[4];
  v4 = a1[5];
  v11 = v3;
  v12 = v4;
  v6 = v3;
  v7 = [v5 transformRecordsByIDWithBlock:v10];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

FCTag *__37__FCTagController_tagsForTagRecords___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 base];
  v9 = [v8 identifier];
  v10 = [v7 objectForKey:v9];

  if (!v10)
  {
    goto LABEL_3;
  }

  v11 = [v5 base];
  v12 = [v10 tagRecord];
  v13 = [v12 base];
  v14 = [v11 fc_isNewerThan:v13];

  if ((v14 & 1) == 0)
  {
    v23 = v10;
  }

  else
  {
LABEL_3:
    v15 = [FCTag alloc];
    v16 = *(a1 + 40);
    if (v16)
    {
      v16 = v16[2];
    }

    v17 = v16;
    v18 = [v5 base];
    v19 = [v18 identifier];
    v20 = *(a1 + 40);
    if (v20)
    {
      v20 = v20[4];
    }

    v21 = v20;
    v22 = [v21 configuration];
    v23 = [(FCTag *)v15 initWithTagRecord:v5 assetManager:v17 interestToken:v6 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v19, v22)];

    v24 = *(a1 + 32);
    v25 = [(FCTag *)v23 identifier];
    [v24 setObject:v23 forKey:v25];
  }

  return v23;
}

- (BOOL)shouldPrefetchGlobalTags
{
  if (self)
  {
    self = self->_tagPrefetchThrottler;
  }

  return [(FCTagController *)self suspended]^ 1;
}

- (void)setShouldPrefetchGlobalTags:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (self)
  {
    self = self->_tagPrefetchThrottler;
  }

  if ([(FCTagController *)self suspended]== a3)
  {
    if (v4)
    {
      tagPrefetchThrottler = v4->_tagPrefetchThrottler;
    }

    else
    {
      tagPrefetchThrottler = 0;
    }

    [(FCOperationThrottler *)tagPrefetchThrottler setSuspended:!v3];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__FCTagController_setShouldPrefetchGlobalTags___block_invoke;
    v6[3] = &unk_1E7C36EA0;
    v6[4] = v4;
    [FCTaskScheduler scheduleLowPriorityBlock:v6];
  }
}

uint64_t __47__FCTagController_setShouldPrefetchGlobalTags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return [v2 tickle];
}

- (void)configurationManager:(id)a3 configurationDidChange:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__FCTagController_configurationManager_configurationDidChange___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlock:v4, a4];
}

uint64_t __63__FCTagController_configurationManager_configurationDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return [v2 tickle];
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    v49 = "[FCTagController operationThrottler:performAsyncOperationWithCompletion:]";
    v50 = 2080;
    v51 = "FCTagController.m";
    v52 = 1024;
    v53 = 665;
    v54 = 2114;
    v55 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (v6)
    {
      goto LABEL_15;
    }

    configurationManager = 0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (self->_tagPrefetchThrottler != v6)
  {
    goto LABEL_12;
  }

  configurationManager = self->_configurationManager;
LABEL_6:
  v9 = [(FCCoreConfigurationManager *)configurationManager configuration];
  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [v9 briefingsTagID];
  [v10 fc_safelyAddObject:v11];

  v12 = [v9 trendingTagID];
  [v10 fc_safelyAddObject:v12];

  v13 = [v9 featuredStoriesTagID];
  [v10 fc_safelyAddObject:v13];

  v14 = [v9 savedStoriesTagID];
  [v10 fc_safelyAddObject:v14];

  v15 = [v9 spotlightChannelID];
  [v10 fc_safelyAddObject:v15];

  v16 = [v9 myMagazinesTagID];
  [v10 fc_safelyAddObject:v16];

  v17 = [v9 mySportsTagID];
  [v10 fc_safelyAddObject:v17];

  v18 = [v9 sportsTopStoriesTagID];
  [v10 fc_safelyAddObject:v18];

  v19 = [v9 puzzlesConfig];
  v20 = [v19 puzzleHubTagID];
  [v10 fc_safelyAddObject:v20];

  v21 = [v9 puzzlesConfig];
  v22 = [v21 puzzleFullArchiveTagID];
  [v10 fc_safelyAddObject:v22];

  v23 = [v9 shortcutsTagID];
  [v10 fc_safelyAddObject:v23];

  v24 = [v9 mySportsScoresTagID];
  [v10 fc_safelyAddObject:v24];

  v25 = [v9 mySportsHighlightsTagID];
  [v10 fc_safelyAddObject:v25];

  v26 = [v9 sportScoresTagID];
  [v10 fc_safelyAddObject:v26];

  v27 = [v9 sportTeamScoresTagID];
  [v10 fc_safelyAddObject:v27];

  v28 = [v9 sportLeagueScoresTagID];
  [v10 fc_safelyAddObject:v28];

  v29 = [v9 sportsStandingsTagID];
  [v10 fc_safelyAddObject:v29];

  v30 = [v9 sportsBracketTagID];
  [v10 fc_safelyAddObject:v30];

  v31 = [v9 sportHighlightsTagID];
  [v10 fc_safelyAddObject:v31];

  v32 = [v9 sportTeamHighlightsTagID];
  [v10 fc_safelyAddObject:v32];

  v33 = [v9 sportLeagueHighlightsTagID];
  [v10 fc_safelyAddObject:v33];

  v34 = [v9 sportEventHighlightsTagID];
  [v10 fc_safelyAddObject:v34];

  if ([v10 count])
  {
    v35 = [v10 allObjects];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
    v46[3] = &unk_1E7C37C88;
    v46[4] = self;
    v47 = v7;
    if (self)
    {
      [(FCTagController *)self _fetchTagsForTagIDs:v35 includeParents:0 includeChildren:0 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v46];
    }
  }

  else
  {
    v7[2](v7);
  }

  if (!self)
  {
    if (v6)
    {
      goto LABEL_15;
    }

    tagIDsNeedingRefresh = 0;
    goto LABEL_14;
  }

LABEL_12:
  if (self->_tagRefreshThrottler == v6)
  {
    tagIDsNeedingRefresh = self->_tagIDsNeedingRefresh;
LABEL_14:
    v37 = tagIDsNeedingRefresh;
    v38 = [(FCThreadSafeMutableSet *)v37 allObjects];

    v39 = [(FCTagController *)self fetchOperationForTagsWithIDs:v38];
    [v39 setQualityOfService:9];
    [v39 setRelativePriority:-1];
    [v39 setCachePolicy:4];
    [v39 setMaximumCachedAge:3600.0];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2;
    v43[3] = &unk_1E7C37CB0;
    v43[4] = self;
    v44 = v38;
    v45 = v7;
    v40 = v38;
    [v39 setFetchCompletionBlock:v43];
    [v39 start];
  }

LABEL_15:

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
    }

    else
    {
      v4 = 0;
    }

    [v4 addEntriesFromDictionary:a2];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObjectsInArray:a1[5]];
  v4 = *(a1[6] + 16);

  return v4();
}

- (id)jsonEncodableObject
{
  if (self)
  {
    self = self->_tagRecordSource;
  }

  return [(FCTagController *)self jsonEncodableObject];
}

@end