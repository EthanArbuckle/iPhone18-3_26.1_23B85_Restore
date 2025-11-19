@interface FCFeedItemInventory
- (BOOL)_isRefreshNeeded;
- (FCFeedItemInventory)init;
- (FCFeedItemInventory)initWithFeedItemService:(id)a3 feedPersonalizer:(id)a4 readingHistory:(id)a5 fileURL:(id)a6 version:(unsigned int)a7 refreshInterval:(double)a8 loggingKey:(id)a9;
- (NSArray)allFeedItems;
- (NSArray)allNetworkEvents;
- (id)_loadInventoryFromCache;
- (id)_refreshIfNeeded;
- (id)allFeedItemScoreProfilesForConfigurationSet:(int64_t)a3 scoringVersion:(unint64_t)a4;
- (id)allFeedItemsWithTopic:(id)a3;
- (void)_adoptInventory:(id)a3;
- (void)_populateScoreProfilesForFeedItems:(id)a3;
- (void)_populateScoreProfilesForFeedItems:(id)a3 configurationSet:(int64_t)a4;
- (void)_prepareForUse;
- (void)_rescoreInventoryIfNeeded:(id)a3 forScoringVersion:(unint64_t)a4;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
- (void)refreshIfNeededWithCompletion:(id)a3;
@end

@implementation FCFeedItemInventory

- (FCFeedItemInventory)initWithFeedItemService:(id)a3 feedPersonalizer:(id)a4 readingHistory:(id)a5 fileURL:(id)a6 version:(unsigned int)a7 refreshInterval:(double)a8 loggingKey:(id)a9
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v41.receiver = self;
  v41.super_class = FCFeedItemInventory;
  v22 = [(FCFeedItemInventory *)&v41 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_feedItemService, a3);
    objc_storeStrong(&v23->_feedPersonalizer, a4);
    v24 = [v20 copy];
    fileURL = v23->_fileURL;
    v23->_fileURL = v24;

    v23->_version = a7;
    v23->_refreshInterval = a8;
    v26 = [v21 copy];
    loggingKey = v23->_loggingKey;
    v23->_loggingKey = v26;

    v28 = [[FCOnce alloc] initWithOptions:1];
    loadFromCacheOnce = v23->_loadFromCacheOnce;
    v23->_loadFromCacheOnce = v28;

    v30 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    feedItemsRefreshSerialQueue = v23->_feedItemsRefreshSerialQueue;
    v23->_feedItemsRefreshSerialQueue = v30;

    v32 = objc_alloc_init(FCThreadSafeMutableArray);
    networkEvents = v23->_networkEvents;
    v23->_networkEvents = v32;

    [v19 addObserver:v23];
    v34 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    articleIDsToRescoreLock = v23->_articleIDsToRescoreLock;
    v23->_articleIDsToRescoreLock = v34;

    v36 = [MEMORY[0x1E695DFA8] set];
    articleIDsToRescore = v23->_articleIDsToRescore;
    v23->_articleIDsToRescore = v36;

    v38 = [[FCTimedOperationThrottler alloc] initWithDelegate:v23];
    [(FCTimedOperationThrottler *)v38 setCooldownTime:5.0];
    targetedRescoreThrottler = v23->_targetedRescoreThrottler;
    v23->_targetedRescoreThrottler = v38;
  }

  return v23;
}

- (FCFeedItemInventory)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedItemInventory init]";
    v10 = 2080;
    v11 = "FCFeedItemInventory.m";
    v12 = 1024;
    v13 = 87;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedItemInventory init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSArray)allFeedItems
{
  [(FCFeedItemInventory *)self _prepareForUse];
  v3 = [(FCFeedItemInventory *)self latestInventory];
  v4 = [v3 feedItems];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSArray)allNetworkEvents
{
  v2 = [(FCFeedItemInventory *)self networkEvents];
  v3 = [v2 readOnlyArray];

  return v3;
}

- (id)allFeedItemScoreProfilesForConfigurationSet:(int64_t)a3 scoringVersion:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  [(FCFeedItemInventory *)self _prepareForUse];
  v7 = [FCMapTable mapTableWithKeyOptions:512 valueOptions:0];
  v8 = [(FCFeedItemInventory *)self latestInventory];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 feedItems];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (!v10)
  {

    goto LABEL_22;
  }

  v11 = v10;
  v26 = self;
  v27 = v8;
  v12 = *v29;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      if (a3 == 11)
      {
        v15 = [*(*(&v28 + 1) + 8 * i) scoreProfiles];
        v16 = [v15 forYouGroupScoreProfile];
      }

      else
      {
        if (a3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
            *buf = 136315906;
            v33 = "[FCFeedItemInventory allFeedItemScoreProfilesForConfigurationSet:scoringVersion:]";
            v34 = 2080;
            v35 = "FCFeedItemInventory.m";
            v36 = 1024;
            LODWORD(v37[0]) = 128;
            WORD2(v37[0]) = 2114;
            *(v37 + 6) = v19;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          continue;
        }

        v15 = [*(*(&v28 + 1) + 8 * i) scoreProfiles];
        v16 = [v15 defaultScoreProfile];
      }

      v17 = v16;

      if (v17)
      {
        if ([v17 scoringVersion] != a4)
        {
          v20 = FCFeedItemInventoryLog;
          if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            v22 = [(FCFeedItemInventory *)v26 loggingKey];
            v23 = [v17 scoringVersion];
            *buf = 138543874;
            v33 = v22;
            v34 = 2048;
            v35 = v23;
            v36 = 2048;
            v37[0] = a4;
            _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] rescoring inventory because cached scored version of %llu doesn't match %llu", buf, 0x20u);
          }

          v8 = v27;
          [(FCFeedItemInventory *)v26 _rescoreInventoryIfNeeded:v27 forScoringVersion:a4];
          goto LABEL_22;
        }

        v18 = [[FCFeedPersonalizedItemScoreProfile alloc] initWithPBScoreProfile:v17];
        [v7 setObject:v18 forKey:v14];
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v8 = v27;
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)allFeedItemsWithTopic:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedItemInventory *)self allFeedItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__FCFeedItemInventory_allFeedItemsWithTopic___block_invoke;
  v9[3] = &unk_1E7C42320;
  v10 = v4;
  v6 = v4;
  v7 = [v5 fc_arrayOfObjectsPassingTest:v9];

  return v7;
}

uint64_t __45__FCFeedItemInventory_allFeedItemsWithTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 topicIDs];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)refreshIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  [(FCFeedItemInventory *)self _prepareForUse];
  v5 = [(FCFeedItemInventory *)self _refreshIfNeeded];
  v6 = zalgo();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__FCFeedItemInventory_refreshIfNeededWithCompletion___block_invoke;
  v9[3] = &unk_1E7C379C8;
  v10 = v4;
  v7 = v4;
  v8 = [v5 alwaysOn:v6 always:v9];
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__80;
  v27 = __Block_byref_object_dispose__80;
  v28 = 0;
  v8 = [(FCFeedItemInventory *)self articleIDsToRescoreLock];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v22[3] = &unk_1E7C37160;
  v22[4] = self;
  v22[5] = &v23;
  [v8 performWithLockSync:v22];

  v9 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(FCFeedItemInventory *)self loggingKey];
    v11 = [v24[5] count];
    *buf = 138543618;
    v30 = v10;
    v31 = 2048;
    v32 = v11;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing %ld article IDs for targeted rescoring", buf, 0x16u);
  }

  if ([v24[5] count])
  {
    v12 = [(FCFeedItemInventory *)self feedItemsRefreshSerialQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2;
    v14[3] = &unk_1E7C45EE0;
    v14[4] = self;
    v16 = &v23;
    v15 = v7;
    [v12 enqueueBlock:v14];
  }

  else
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_19;
    v20 = &unk_1E7C379C8;
    v21 = v7;
    v21[2]();
  }

  _Block_object_dispose(&v23, 8);

  v13 = *MEMORY[0x1E69E9840];
}

void __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) articleIDsToRescore];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) articleIDsToRescore];
  [v6 removeAllObjects];
}

void __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) latestInventory];
  v5 = [v4 feedItems];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_3;
  v15[3] = &unk_1E7C45EB8;
  v15[4] = *(a1 + 48);
  v6 = [v5 fc_arrayOfObjectsPassingTest:v15];

  v7 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 loggingKey];
    v11 = [v6 count];
    *buf = 138543618;
    v17 = v10;
    v18 = 2048;
    v19 = v11;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] identified %ld feed items for targeted rescoring", buf, 0x16u);
  }

  if ([v6 count])
  {
    [*(a1 + 32) _populateScoreProfilesForFeedItems:v6];
    [*(a1 + 32) _adoptInventory:v4];
    v3[2](v3);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = v3;
    v14 = *(a1 + 40);
    v13[2](v13);
    v14[2]();
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 articleID];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __78__FCFeedItemInventory_operationThrottler_performAsyncOperationWithCompletion___block_invoke_20(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke;
  v18[3] = &unk_1E7C41CC8;
  v7 = v6;
  v19 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v18];

  v8 = [(FCFeedItemInventory *)self articleIDsToRescoreLock];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke_2;
  v16[3] = &unk_1E7C36C58;
  v16[4] = self;
  v9 = v7;
  v17 = v9;
  [v8 performWithLockSync:v16];

  v10 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(FCFeedItemInventory *)self loggingKey];
    v13 = [v9 count];
    *buf = 138543618;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueuing %ld article IDs for targeted rescoring", buf, 0x16u);
  }

  v14 = [(FCFeedItemInventory *)self targetedRescoreThrottler];
  [v14 tickle];

  v15 = *MEMORY[0x1E69E9840];
}

void __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 unsignedIntegerValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __67__FCFeedItemInventory_readingHistory_didChangeFeaturesForArticles___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) articleIDsToRescore];
  [v2 unionSet:*(a1 + 40)];
}

- (void)_prepareForUse
{
  v3 = [(FCFeedItemInventory *)self loadFromCacheOnce];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__FCFeedItemInventory__prepareForUse__block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [v3 executeOnce:v4];
}

void __37__FCFeedItemInventory__prepareForUse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadInventoryFromCache];
  [*(a1 + 32) setLatestInventory:v2];
}

- (id)_refreshIfNeeded
{
  if ([(FCFeedItemInventory *)self _isRefreshNeeded])
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = self;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke;
    v7[3] = &unk_1E7C396C0;
    v7[4] = self;
    v4 = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke(v7);
  }

  return v4;
}

id __39__FCFeedItemInventory__refreshIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B68F8]);
  v3 = [*(a1 + 32) latestInventory];
  v4 = [v2 initWithValue:v3];

  return v4;
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) feedItemsRefreshSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3;
  v10[3] = &unk_1E7C45F80;
  v11 = v5;
  v12 = v6;
  v10[4] = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  [v7 enqueueBlock:v10];
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3(id *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4;
  aBlock[3] = &unk_1E7C45F08;
  v47 = a1[5];
  v4 = v3;
  v48 = v4;
  v5 = _Block_copy(aBlock);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_5;
  v43[3] = &unk_1E7C3F590;
  v44 = a1[6];
  v6 = v4;
  v45 = v6;
  v7 = _Block_copy(v43);
  if (([a1[4] _isRefreshNeeded] & 1) == 0)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_6;
    v41[3] = &unk_1E7C37778;
    v17 = v5;
    v41[4] = a1[4];
    v42 = v17;
    __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_6(v41);
    v18 = v42;
    goto LABEL_16;
  }

  v8 = [a1[4] latestInventory];

  v9 = FCFeedItemInventoryLog;
  v10 = os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = a1[4];
      v12 = v9;
      v13 = [v11 loggingKey];
      v14 = [a1[4] latestInventory];
      v15 = [v14 lastRefreshed];
      v16 = [v15 nsDate];
      *buf = 138543618;
      v50 = v13;
      v51 = 2114;
      v52 = v16;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] will refresh because last refresh was at %{public}@", buf, 0x16u);

LABEL_8:
    }
  }

  else if (v10)
  {
    v19 = a1[4];
    v12 = v9;
    v13 = [v19 loggingKey];
    *buf = 138543362;
    v50 = v13;
    _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] will refresh because there is no cached instance", buf, 0xCu);
    goto LABEL_8;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [a1[4] latestInventory];
  if (v22)
  {
    v23 = [FCFeedItemServiceCursor alloc];
    v24 = [v22 lastRefreshed];
    v25 = [v22 feedItems];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
    }

    v18 = [(FCFeedItemServiceCursor *)v23 initWithLastRefreshed:v24 feedItems:v27];
  }

  else
  {
    v18 = 0;
  }

  v28 = objc_opt_new();
  v29 = [a1[4] feedItemService];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_29;
  v39[3] = &unk_1E7C3C778;
  v40 = v28;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2_31;
  v37[3] = &unk_1E7C45F30;
  v38 = a1[4];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3_33;
  v32[3] = &unk_1E7C45F58;
  v32[4] = v38;
  v33 = v40;
  v34 = v7;
  v36 = v21;
  v35 = v5;
  v30 = v40;
  [v29 fetchFeedItemsWithCursor:v18 feedItemHandler:v39 networkEventHandler:v37 completionHandler:v32];

LABEL_16:
  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v5 = [*(a1 + 32) latestInventory];
  v4 = [v3 initWithValue:v5];
  (*(v2 + 16))(v2, v4);
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_2_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 networkEvents];
  [v4 addObject:v3];
}

void __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_3_33(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4_34;
    v22[3] = &unk_1E7C38FF0;
    v22[4] = *(a1 + 32);
    v23 = v3;
    v24 = *(a1 + 48);
    __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4_34(v22);
  }

  else
  {
    v5 = [*(a1 + 40) readOnlyArray];
    v6 = FCFeedItemInventoryLog;
    if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 loggingKey];
      v10 = [v5 count];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v12 = (fmax(v11 - *(a1 + 64), 0.0) * 1000.0);
      *buf = 138543874;
      v26 = v9;
      v27 = 2048;
      v28 = v10;
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully fetched %lu feed items in %llums, will generate score profiles", buf, 0x20u);
    }

    [*(a1 + 32) _populateScoreProfilesForFeedItems:v5];
    v13 = FCFeedItemInventoryLog;
    if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 loggingKey];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v18 = (fmax(v17 - *(a1 + 64), 0.0) * 1000.0);
      *buf = 138543618;
      v26 = v16;
      v27 = 2048;
      v28 = v18;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully refreshed in %llums", buf, 0x16u);
    }

    v19 = objc_alloc_init(FCPBFeedItemInventory);
    -[FCPBFeedItemInventory setInventoryVersion:](v19, "setInventoryVersion:", [*(a1 + 32) version]);
    [(FCPBFeedItemInventory *)v19 setFeedItemVersion:24];
    v20 = [MEMORY[0x1E69B6E00] date];
    [(FCPBFeedItemInventory *)v19 setLastRefreshed:v20];

    [(FCPBFeedItemInventory *)v19 setFeedItems:v5];
    [*(a1 + 32) _adoptInventory:v19];
    (*(*(a1 + 56) + 16))();
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __39__FCFeedItemInventory__refreshIfNeeded__block_invoke_4_34(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 loggingKey];
    v6 = a1[5];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to refresh with error: %{public}@", &v10, 0x16u);
  }

  v7 = a1[5];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_adoptInventory:(id)a3
{
  [(FCFeedItemInventory *)self setLatestInventory:a3];
  v4 = FCPersistenceQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FCFeedItemInventory__adoptInventory___block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __39__FCFeedItemInventory__adoptInventory___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) latestInventory];
  v3 = [v2 data];

  v4 = [*(a1 + 32) fileURL];
  v17 = 0;
  v5 = [v3 writeToURL:v4 options:1 error:&v17];
  v6 = v17;

  v7 = FCFeedItemInventoryLog;
  v8 = os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = [v9 loggingKey];
      v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v3 countStyle:{"length"), 0}];
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully persisted with size: %{public}@", buf, 0x16u);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v15 = [v13 loggingKey];
    *buf = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to persist with error: %{public}@", buf, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isRefreshNeeded
{
  v3 = [(FCFeedItemInventory *)self latestInventory];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lastRefreshed];
    v6 = [v5 nsDate];
    [v6 fc_timeIntervalUntilNow];
    v8 = v7;
    [(FCFeedItemInventory *)self refreshInterval];
    v10 = v8 > v9;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_rescoreInventoryIfNeeded:(id)a3 forScoringVersion:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FCFeedItemInventory *)self feedItemsRefreshSerialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__FCFeedItemInventory__rescoreInventoryIfNeeded_forScoringVersion___block_invoke;
  v9[3] = &unk_1E7C45FA8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 enqueueBlock:v9];
}

void __67__FCFeedItemInventory__rescoreInventoryIfNeeded_forScoringVersion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 latestInventory];
  v6 = v5;
  if (v5 == *(a1 + 40))
  {
    v11 = [v5 feedItems];
    v12 = [v11 lastObject];
    v13 = [v12 scoreProfiles];
    v9 = [v13 defaultScoreProfile];

    if (v9)
    {
      if ([v9 scoringVersion]== *(a1 + 48))
      {
        v14 = FCFeedItemInventoryLog;
        if (!os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v15 = *(a1 + 32);
        v16 = v14;
        v17 = [v15 loggingKey];
        v26 = 138543362;
        v27 = v17;
        v18 = "[%{public}@] not rescoring inventory due to version match";
      }

      else
      {
        v21 = *(a1 + 32);
        v22 = [v6 feedItems];
        [v21 _populateScoreProfilesForFeedItems:v22];

        [*(a1 + 32) _adoptInventory:v6];
        v23 = FCFeedItemInventoryLog;
        if (!os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v24 = *(a1 + 32);
        v16 = v23;
        v17 = [v24 loggingKey];
        v26 = 138543362;
        v27 = v17;
        v18 = "[%{public}@] rescored inventory";
      }
    }

    else
    {
      v19 = FCFeedItemInventoryLog;
      if (!os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v20 = *(a1 + 32);
      v16 = v19;
      v17 = [v20 loggingKey];
      v26 = 138543362;
      v27 = v17;
      v18 = "[%{public}@] not rescoring inventory due to no score profile";
    }

    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, v18, &v26, 0xCu);

    goto LABEL_13;
  }

  v7 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 loggingKey];
    v26 = 138543362;
    v27 = v10;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] did not rescore inventory because it is no longer the latest", &v26, 0xCu);

LABEL_13:
  }

  v4[2](v4);

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_loadInventoryFromCache
{
  v39 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    v34 = "[FCFeedItemInventory _loadInventoryFromCache]";
    v35 = 2080;
    v36 = "FCFeedItemInventory.m";
    v37 = 1024;
    *v38 = 391;
    *&v38[4] = 2114;
    *&v38[6] = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = MEMORY[0x1E695DEF0];
  v6 = [(FCFeedItemInventory *)self fileURL];
  v7 = [v5 dataWithContentsOfURL:v6];

  if (!v7)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke;
    v32[3] = &unk_1E7C36F98;
    v32[4] = self;
    v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke(v32);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [[FCPBFeedItemInventory alloc] initWithData:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = [(FCPBFeedItemInventory *)v11 inventoryVersion];
    if (v12 == [(FCFeedItemInventory *)self version])
    {
      if ([(FCPBFeedItemInventory *)v11 feedItemVersion]== 24)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v14 = v13;
        v15 = FCFeedItemInventoryLog;
        if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
        {
          log = v15;
          v16 = [(FCFeedItemInventory *)self loggingKey];
          v25 = [(FCPBFeedItemInventory *)v11 feedItems];
          v17 = [v25 count];
          v18 = [(FCPBFeedItemInventory *)v11 lastRefreshed];
          v19 = [v18 nsDate];
          *buf = 138544130;
          v34 = v16;
          v35 = 2048;
          v36 = (fmax(v14 - v4, 0.0) * 1000.0);
          v37 = 2048;
          *v38 = v17;
          *&v38[8] = 2114;
          *&v38[10] = v19;
          _os_log_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded cached data in %llums with %lu feed items and last-refresh date %{public}@", buf, 0x2Au);
        }

        v20 = v11;
        goto LABEL_16;
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_47;
      v27[3] = &unk_1E7C397D0;
      v27[4] = self;
      v28 = v11;
      v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_47(v27);
      v21 = v28;
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_46;
      v29[3] = &unk_1E7C397D0;
      v29[4] = self;
      v30 = v11;
      v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_46(v29);
      v21 = v30;
    }

LABEL_16:
    goto LABEL_17;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_45;
  v31[3] = &unk_1E7C36F98;
  v31[4] = self;
  v20 = __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_45(v31);
LABEL_17:

LABEL_18:
  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] found no cached data on disk", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_45(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] failed to initialize inventory from cached data", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_46(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v6 = [*(a1 + 40) inventoryVersion];
    v7 = [*(a1 + 32) version];
    v10 = 138543874;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring cached data because its inventory version %u does not match the current version %u", &v10, 0x18u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __46__FCFeedItemInventory__loadInventoryFromCache__block_invoke_47(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 loggingKey];
    v6 = [*(a1 + 40) feedItemVersion];
    v9 = 138543874;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = 24;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring cached data because its feed item version %u does not match the current version %u", &v9, 0x18u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_populateScoreProfilesForFeedItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(FCFeedItemInventory *)self _populateScoreProfilesForFeedItems:v4 configurationSet:0];
  [(FCFeedItemInventory *)self _populateScoreProfilesForFeedItems:v4 configurationSet:11];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = FCFeedItemInventoryLog;
  if (os_log_type_enabled(FCFeedItemInventoryLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(FCFeedItemInventory *)self loggingKey];
    v13 = 138543874;
    v14 = v11;
    v15 = 2048;
    v16 = (fmax(v8 - v6, 0.0) * 1000.0);
    v17 = 2048;
    v18 = [v4 count];
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] took %llums to generate score profiles for %ld items", &v13, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_populateScoreProfilesForFeedItems:(id)a3 configurationSet:(int64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = [(FCFeedItemInventory *)self feedPersonalizer];
  v25 = v6;
  v8 = [v7 sortItems:v6 options:1 configurationSet:a4];

  v23 = v8;
  v9 = [v8 scoreProfiles];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v9 objectForKey:v15];
        v17 = [v15 scoreProfiles];

        if (!v17)
        {
          v18 = objc_alloc_init(MEMORY[0x1E69B6FC0]);
          [v15 setScoreProfiles:v18];
        }

        if (a4 == 11)
        {
          v19 = [v16 pbScoreProfile];
          v20 = [v15 scoreProfiles];
          [v20 setForYouGroupScoreProfile:v19];
          goto LABEL_12;
        }

        if (!a4)
        {
          v19 = [v16 pbScoreProfile];
          v20 = [v15 scoreProfiles];
          [v20 setDefaultScoreProfile:v19];
LABEL_12:

          goto LABEL_15;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
          *buf = 136315906;
          v31 = "[FCFeedItemInventory _populateScoreProfilesForFeedItems:configurationSet:]";
          v32 = 2080;
          v33 = "FCFeedItemInventory.m";
          v34 = 1024;
          v35 = 457;
          v36 = 2114;
          v37 = v21;
          _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_15:
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x1E69E9840];
}

@end