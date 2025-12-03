@interface FCTagController
- (BOOL)shouldPrefetchGlobalTags;
- (FCTagController)init;
- (FCTagController)initWithContentDatabase:(id)database assetManager:(id)manager tagRecordSource:(id)source configurationManager:(id)configurationManager;
- (id)_cachedTagForTagID:(char)d fastCacheOnly:;
- (id)_cachedTagsForTagIDs:(char)ds fastCacheOnly:;
- (id)expectedFastCachedTagForID:(id)d;
- (id)fetchOperationForTagsIncludingChildrenWithIDs:(id)ds softMaxAge:(double)age;
- (id)fetchOperationForTagsWithIDs:(id)ds;
- (id)jsonEncodableObject;
- (id)slowCachedTagsForIDs:(id)ds;
- (id)tagsForTagIDs:(id)ds predicate:(id)predicate;
- (id)tagsForTagRecords:(id)records;
- (void)_fetchTagsForTagIDs:(uint64_t)ds includeParents:(uint64_t)parents includeChildren:(uint64_t)children qualityOfService:(void *)service callbackQueue:(void *)queue completionHandler:;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)dealloc;
- (void)fetchTagForTagID:(id)d qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)fetchTagsForTagIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)fetchTagsForTagIDs:(id)ds maximumCachedAge:(double)age qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)fetchTagsForTagIDs:(id)ds qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)saveTagsToCache:(id)cache;
- (void)setShouldPrefetchGlobalTags:(BOOL)tags;
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

- (FCTagController)initWithContentDatabase:(id)database assetManager:(id)manager tagRecordSource:(id)source configurationManager:(id)configurationManager
{
  v41 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  managerCopy = manager;
  sourceCopy = source;
  configurationManagerCopy = configurationManager;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
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
  if (!sourceCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v15->_contentDatabase, database);
    objc_storeStrong(&v16->_assetManager, manager);
    objc_storeStrong(&v16->_configurationManager, configurationManager);
    objc_storeStrong(&v16->_tagRecordSource, source);
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

    objc_storeStrong(&v16->_configurationManager, configurationManager);
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

- (id)_cachedTagForTagID:(char)d fastCacheOnly:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      v14 = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v8 = [(FCTagController *)self _cachedTagsForTagIDs:v7 fastCacheOnly:d];
      allValues = [v8 allValues];
      firstObject = [allValues firstObject];

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

  firstObject = 0;
LABEL_7:

  v11 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)_cachedTagsForTagIDs:(char)ds fastCacheOnly:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v9 = self[5];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke;
    v36[3] = &unk_1E7C37B20;
    v32 = v6;
    v37 = v6;
    v10 = dictionary;
    v38 = v10;
    v11 = array;
    v39 = v11;
    [v9 readWithAccessor:v36];
    if ([v11 count] && (ds & 1) == 0)
    {
      v12 = [self[3] cachedRecordsWithIDs:v11];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke_2;
      v34[3] = &unk_1E7C37B48;
      v34[4] = self;
      v13 = v10;
      v35 = v13;
      [v12 enumerateRecordsAndInterestTokensWithBlock:v34];
      [self[5] addEntriesFromDictionary:v13];
    }

    v31 = v11;
    selfCopy = self;
    allValues = [v10 allValues];
    v33 = [MEMORY[0x1E695E0F0] mutableCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = allValues;
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
          loadDate = [v20 loadDate];
          v22 = [loadDate dateByAddingTimeInterval:3600.0];
          date = [MEMORY[0x1E695DF00] date];
          v24 = [v22 fc_isEarlierThan:date];

          if (v24)
          {
            identifier = [v20 identifier];
            [v33 addObject:identifier];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:buf count:16];
      }

      while (v17);
    }

    if ([v33 count])
    {
      [selfCopy[9] addObjectsFromArray:v33];
      [selfCopy[8] tickle];
    }

    v26 = v39;
    self = v10;

    v6 = v32;
  }

  v27 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)slowCachedTagsForIDs:(id)ds
{
  v17 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
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

  v5 = [(FCTagController *)&self->super.isa _cachedTagsForTagIDs:dsCopy fastCacheOnly:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)expectedFastCachedTagForID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(FCTagController *)&self->super.isa _cachedTagForTagID:dCopy fastCacheOnly:1];
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

    v5 = [(FCTagController *)&self->super.isa _cachedTagForTagID:dCopy fastCacheOnly:0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fetchOperationForTagsWithIDs:(id)ds
{
  dsCopy = ds;
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
  configuration = [(FCCoreConfigurationManager *)v9 configuration];
  v11 = [(FCTagsFetchOperation *)v5 initWithTagIDs:dsCopy tagRecordSource:v6 assetManager:v7 configuration:configuration delegate:self];

  return v11;
}

- (id)fetchOperationForTagsIncludingChildrenWithIDs:(id)ds softMaxAge:(double)age
{
  dsCopy = ds;
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
  configuration = [(FCCoreConfigurationManager *)v11 configuration];
  v13 = [(FCTagsFetchOperation *)v7 initWithTagIDs:dsCopy tagRecordSource:v8 assetManager:v9 configuration:configuration delegate:self];

  [(FCFetchOperation *)v13 setCachePolicy:4];
  [(FCFetchOperation *)v13 setMaximumCachedAge:age];
  [(FCTagsFetchOperation *)v13 setIncludeChildren:1];
  [(FCTagsFetchOperation *)v13 setOverrideChildrenCachePolicy:1];
  [(FCTagsFetchOperation *)v13 setChildrenCachePolicy:4];
  [(FCTagsFetchOperation *)v13 setChildrenMaximumCachedAge:age];

  return v13;
}

- (void)fetchTagsForTagIDs:(id)ds maximumCachedAge:(double)age qualityOfService:(int64_t)service completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  v12 = [FCCachePolicy cachePolicyWithSoftMaxAge:age];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__FCTagController_fetchTagsForTagIDs_maximumCachedAge_qualityOfService_completionHandler___block_invoke;
  v14[3] = &unk_1E7C379A0;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(FCTagController *)self fetchTagsForTagIDs:dsCopy cachePolicy:v12 qualityOfService:service completionHandler:v14];
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

- (void)fetchTagsForTagIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  policyCopy = policy;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (handlerCopy)
    {
LABEL_4:
      if ([dsCopy count])
      {
        cachePolicy = [policyCopy cachePolicy];
        if (cachePolicy > 5)
        {
          v15 = 0;
        }

        else if (((1 << cachePolicy) & 0xD) != 0)
        {
          if (self)
          {
            fastCache = self->_fastCache;
          }

          else
          {
            fastCache = 0;
          }

          v15 = [(FCThreadSafeMapTable *)fastCache subdictionaryForKeys:dsCopy];
        }

        else if (((1 << cachePolicy) & 0x30) != 0)
        {
          oldestAllowedDate = [policyCopy oldestAllowedDate];
          v17 = oldestAllowedDate;
          if (oldestAllowedDate)
          {
            distantPast = oldestAllowedDate;
          }

          else
          {
            distantPast = [MEMORY[0x1E695DF00] distantPast];
          }

          v19 = distantPast;

          distantPast2 = [MEMORY[0x1E695DF00] distantPast];
          v21 = [v19 isEqualToDate:distantPast2];

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

            v15 = [(FCThreadSafeMapTable *)v22 subdictionaryForKeys:dsCopy];
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
            v15 = [(FCThreadSafeMapTable *)v23 subdictionaryForKeys:dsCopy passingTest:v33];
          }
        }

        else
        {
          v15 = MEMORY[0x1E695E0F8];
        }

        v24 = [v15 count];
        if (v24 == [dsCopy count])
        {
          handlerCopy[2](handlerCopy, v15, 0);
        }

        else
        {
          v25 = [(FCTagController *)self fetchOperationForTagsWithIDs:dsCopy];
          [v25 setQualityOfService:service];
          if (service == 9)
          {
            v26 = -1;
          }

          else
          {
            v26 = service == 33 || service == 25;
          }

          [v25 setRelativePriority:v26];
          [v25 setCachePolicy:{objc_msgSend(policyCopy, "cachePolicy")}];
          [policyCopy maximumCachedAge];
          [v25 setMaximumCachedAge:?];
          [v25 setCanSendFetchCompletionSynchronously:1];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_4;
          v31[3] = &unk_1E7C37A38;
          v32 = handlerCopy;
          [v25 setFetchCompletionBlock:v31];
          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
            [fc_sharedConcurrentQueue addOperation:v25];
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
        v39 = handlerCopy;
        v39[2](v39, MEMORY[0x1E695E0F8], 0);
      }

      goto LABEL_41;
    }
  }

  else if (handlerCopy)
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

- (void)fetchTagsForTagIDs:(id)ds qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  if (self)
  {
    [(FCTagController *)self _fetchTagsForTagIDs:ds includeParents:0 includeChildren:0 qualityOfService:service callbackQueue:queue completionHandler:handler];
  }
}

- (void)_fetchTagsForTagIDs:(uint64_t)ds includeParents:(uint64_t)parents includeChildren:(uint64_t)children qualityOfService:(void *)service callbackQueue:(void *)queue completionHandler:
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a2;
  serviceCopy = service;
  queueCopy = queue;
  if (!self)
  {
    goto LABEL_27;
  }

  if (v13 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (serviceCopy)
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

    if (queueCopy)
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

  if (!serviceCopy)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (!queueCopy)
  {
    goto LABEL_26;
  }

  if ([v13 count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v18 = self[5];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
    v33[3] = &unk_1E7C37B70;
    v34 = v13;
    v19 = dictionary;
    v35 = v19;
    dsCopy = ds;
    v20 = array;
    v36 = v20;
    parentsCopy = parents;
    [v18 readWithAccessor:v33];
    if ([v20 count])
    {
      v21 = [self fetchOperationForTagsWithIDs:v20];
      [v21 setIncludeParents:ds];
      [v21 setIncludeChildren:parents];
      [v21 setQualityOfService:children];
      if (children == 9)
      {
        v22 = -1;
      }

      else
      {
        v22 = children == 33 || children == 25;
      }

      [v21 setRelativePriority:v22];
      [v21 setFetchCompletionQueue:serviceCopy];
      [v21 setCanSendFetchCompletionSynchronously:0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_5;
      v30[3] = &unk_1E7C37B98;
      v31 = v19;
      v32 = queueCopy;
      [v21 setFetchCompletionBlock:v30];
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
        [fc_sharedConcurrentQueue addOperation:v21];
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
      v29 = queueCopy;
      dispatch_async(serviceCopy, block);

      v21 = v28;
    }

LABEL_21:
    goto LABEL_27;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
  v39[3] = &unk_1E7C37778;
  v41 = queueCopy;
  v40 = serviceCopy;
  __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2(v39);

LABEL_27:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchTagForTagID:(id)d qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    if (dCopy)
    {
      v18[0] = dCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke;
      *&v17 = &unk_1E7C379A0;
      *(&v17 + 1) = handlerCopy;
      [(FCTagController *)self _fetchTagsForTagIDs:v13 includeParents:0 includeChildren:0 qualityOfService:service callbackQueue:queueCopy completionHandler:block];

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

      if (!handlerCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (handlerCopy)
    {
LABEL_6:
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
      *&v17 = &unk_1E7C379C8;
      *(&v17 + 1) = handlerCopy;
      dispatch_async(queueCopy, block);
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

- (id)tagsForTagIDs:(id)ds predicate:(id)predicate
{
  dsCopy = ds;
  predicateCopy = predicate;
  if (self)
  {
    if ([dsCopy count])
    {
      v8 = [[FCArrayStream alloc] initWithArray:dsCopy];
      v9 = [FCTransformedResultsStream alloc];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke;
      v12[3] = &unk_1E7C37AD8;
      v12[4] = self;
      v14 = 0x7FEFFFFFFFFFFFFFLL;
      v13 = predicateCopy;
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

- (void)saveTagsToCache:(id)cache
{
  cacheCopy = cache;
  if (self)
  {
    self = self->_fastCache;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__FCTagController_saveTagsToCache___block_invoke;
  v6[3] = &unk_1E7C37C10;
  v7 = cacheCopy;
  v5 = cacheCopy;
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

- (id)tagsForTagRecords:(id)records
{
  recordsCopy = records;
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
  v7 = recordsCopy;
  v11 = v7;
  selfCopy = self;
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

- (void)setShouldPrefetchGlobalTags:(BOOL)tags
{
  tagsCopy = tags;
  selfCopy = self;
  if (self)
  {
    self = self->_tagPrefetchThrottler;
  }

  if ([(FCTagController *)self suspended]== tags)
  {
    if (selfCopy)
    {
      tagPrefetchThrottler = selfCopy->_tagPrefetchThrottler;
    }

    else
    {
      tagPrefetchThrottler = 0;
    }

    [(FCOperationThrottler *)tagPrefetchThrottler setSuspended:!tagsCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__FCTagController_setShouldPrefetchGlobalTags___block_invoke;
    v6[3] = &unk_1E7C36EA0;
    v6[4] = selfCopy;
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

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__FCTagController_configurationManager_configurationDidChange___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlock:v4, change];
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

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  throttlerCopy = throttler;
  completionCopy = completion;
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
    if (throttlerCopy)
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
  if (self->_tagPrefetchThrottler != throttlerCopy)
  {
    goto LABEL_12;
  }

  configurationManager = self->_configurationManager;
LABEL_6:
  configuration = [(FCCoreConfigurationManager *)configurationManager configuration];
  v10 = [MEMORY[0x1E695DFA8] set];
  briefingsTagID = [configuration briefingsTagID];
  [v10 fc_safelyAddObject:briefingsTagID];

  trendingTagID = [configuration trendingTagID];
  [v10 fc_safelyAddObject:trendingTagID];

  featuredStoriesTagID = [configuration featuredStoriesTagID];
  [v10 fc_safelyAddObject:featuredStoriesTagID];

  savedStoriesTagID = [configuration savedStoriesTagID];
  [v10 fc_safelyAddObject:savedStoriesTagID];

  spotlightChannelID = [configuration spotlightChannelID];
  [v10 fc_safelyAddObject:spotlightChannelID];

  myMagazinesTagID = [configuration myMagazinesTagID];
  [v10 fc_safelyAddObject:myMagazinesTagID];

  mySportsTagID = [configuration mySportsTagID];
  [v10 fc_safelyAddObject:mySportsTagID];

  sportsTopStoriesTagID = [configuration sportsTopStoriesTagID];
  [v10 fc_safelyAddObject:sportsTopStoriesTagID];

  puzzlesConfig = [configuration puzzlesConfig];
  puzzleHubTagID = [puzzlesConfig puzzleHubTagID];
  [v10 fc_safelyAddObject:puzzleHubTagID];

  puzzlesConfig2 = [configuration puzzlesConfig];
  puzzleFullArchiveTagID = [puzzlesConfig2 puzzleFullArchiveTagID];
  [v10 fc_safelyAddObject:puzzleFullArchiveTagID];

  shortcutsTagID = [configuration shortcutsTagID];
  [v10 fc_safelyAddObject:shortcutsTagID];

  mySportsScoresTagID = [configuration mySportsScoresTagID];
  [v10 fc_safelyAddObject:mySportsScoresTagID];

  mySportsHighlightsTagID = [configuration mySportsHighlightsTagID];
  [v10 fc_safelyAddObject:mySportsHighlightsTagID];

  sportScoresTagID = [configuration sportScoresTagID];
  [v10 fc_safelyAddObject:sportScoresTagID];

  sportTeamScoresTagID = [configuration sportTeamScoresTagID];
  [v10 fc_safelyAddObject:sportTeamScoresTagID];

  sportLeagueScoresTagID = [configuration sportLeagueScoresTagID];
  [v10 fc_safelyAddObject:sportLeagueScoresTagID];

  sportsStandingsTagID = [configuration sportsStandingsTagID];
  [v10 fc_safelyAddObject:sportsStandingsTagID];

  sportsBracketTagID = [configuration sportsBracketTagID];
  [v10 fc_safelyAddObject:sportsBracketTagID];

  sportHighlightsTagID = [configuration sportHighlightsTagID];
  [v10 fc_safelyAddObject:sportHighlightsTagID];

  sportTeamHighlightsTagID = [configuration sportTeamHighlightsTagID];
  [v10 fc_safelyAddObject:sportTeamHighlightsTagID];

  sportLeagueHighlightsTagID = [configuration sportLeagueHighlightsTagID];
  [v10 fc_safelyAddObject:sportLeagueHighlightsTagID];

  sportEventHighlightsTagID = [configuration sportEventHighlightsTagID];
  [v10 fc_safelyAddObject:sportEventHighlightsTagID];

  if ([v10 count])
  {
    allObjects = [v10 allObjects];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
    v46[3] = &unk_1E7C37C88;
    v46[4] = self;
    v47 = completionCopy;
    if (self)
    {
      [(FCTagController *)self _fetchTagsForTagIDs:allObjects includeParents:0 includeChildren:0 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v46];
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }

  if (!self)
  {
    if (throttlerCopy)
    {
      goto LABEL_15;
    }

    tagIDsNeedingRefresh = 0;
    goto LABEL_14;
  }

LABEL_12:
  if (self->_tagRefreshThrottler == throttlerCopy)
  {
    tagIDsNeedingRefresh = self->_tagIDsNeedingRefresh;
LABEL_14:
    v37 = tagIDsNeedingRefresh;
    allObjects2 = [(FCThreadSafeMutableSet *)v37 allObjects];

    v39 = [(FCTagController *)self fetchOperationForTagsWithIDs:allObjects2];
    [v39 setQualityOfService:9];
    [v39 setRelativePriority:-1];
    [v39 setCachePolicy:4];
    [v39 setMaximumCachedAge:3600.0];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2;
    v43[3] = &unk_1E7C37CB0;
    v43[4] = self;
    v44 = allObjects2;
    v45 = completionCopy;
    v40 = allObjects2;
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