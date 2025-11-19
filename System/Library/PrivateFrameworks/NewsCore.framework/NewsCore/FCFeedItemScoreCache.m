@interface FCFeedItemScoreCache
- (FCFeedItemScoreCache)initWithFeedPersonalizer:(id)a3;
- (id)scoreProfilesForFeedItems:(id)a3 configurationSet:(int64_t)a4;
- (void)_accessScoreCacheForForConfigurationSet:(int64_t)a3 withBlock:(id)a4;
- (void)addScoreProfiles:(id)a3 configurationSet:(int64_t)a4;
@end

@implementation FCFeedItemScoreCache

- (FCFeedItemScoreCache)initWithFeedPersonalizer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FCFeedItemScoreCache;
  v6 = [(FCFeedItemScoreCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedPersonalizer, a3);
    v8 = objc_opt_new();
    scoreProfilesByConfigurationSet = v7->_scoreProfilesByConfigurationSet;
    v7->_scoreProfilesByConfigurationSet = v8;
  }

  return v7;
}

- (id)scoreProfilesForFeedItems:(id)a3 configurationSet:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__95;
  v19 = __Block_byref_object_dispose__95;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__FCFeedItemScoreCache_scoreProfilesForFeedItems_configurationSet___block_invoke;
  v10[3] = &unk_1E7C478F8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  v13 = &v15;
  v14 = a4;
  [(FCFeedItemScoreCache *)self _accessScoreCacheForForConfigurationSet:a4 withBlock:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __67__FCFeedItemScoreCache_scoreProfilesForFeedItems_configurationSet___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __67__FCFeedItemScoreCache_scoreProfilesForFeedItems_configurationSet___block_invoke_2;
  v33[3] = &unk_1E7C42320;
  v5 = v3;
  v34 = v5;
  v6 = [v4 fc_arrayOfObjectsPassingTest:v33];
  v7 = [v6 count];
  v8 = FCOperationLog;
  v9 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = v8;
      v11 = [v6 count];
      v12 = [*(a1 + 32) count];
      v13 = FCStringFromFeedPersonalizationConfigurationSet(*(a1 + 56));
      *buf = 134218498;
      v36 = v11;
      v37 = 2048;
      v38 = v12;
      v39 = 2114;
      v40 = v13;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "score cache is missing %lu of %lu requested feed item scores, context=%{public}@", buf, 0x20u);
    }

    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [*(a1 + 40) feedPersonalizer];
    v16 = [v15 sortItems:v6 options:1 configurationSet:*(a1 + 56)];

    v17 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x1E695DF00];
      v19 = v17;
      v20 = [v18 date];
      [v20 timeIntervalSinceDate:v14];
      v22 = (fmax(v21, 0.0) * 1000.0);
      v23 = [v6 count];
      v24 = FCStringFromFeedPersonalizationConfigurationSet(*(a1 + 56));
      *buf = 134218498;
      v36 = v22;
      v37 = 2048;
      v38 = v23;
      v39 = 2114;
      v40 = v24;
      _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "score cache took %llums to score %lu feed items, context=%{public}@", buf, 0x20u);
    }

    v25 = [v16 scoreProfiles];
    [v5 addObjectsFromMapTable:v25];

    goto LABEL_9;
  }

  if (v9)
  {
    v26 = *(a1 + 32);
    v14 = v8;
    v27 = [v26 count];
    v28 = FCStringFromFeedPersonalizationConfigurationSet(*(a1 + 56));
    *buf = 134218242;
    v36 = v27;
    v37 = 2114;
    v38 = v28;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "score cache has all %lu requested feed item scores, context=%{public}@", buf, 0x16u);

LABEL_9:
  }

  v29 = [v5 copy];
  v30 = *(*(a1 + 48) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  v32 = *MEMORY[0x1E69E9840];
}

BOOL __67__FCFeedItemScoreCache_scoreProfilesForFeedItems_configurationSet___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

- (void)addScoreProfiles:(id)a3 configurationSet:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__FCFeedItemScoreCache_addScoreProfiles_configurationSet___block_invoke;
  v8[3] = &unk_1E7C47920;
  v9 = v6;
  v7 = v6;
  [(FCFeedItemScoreCache *)self _accessScoreCacheForForConfigurationSet:a4 withBlock:v8];
}

- (void)_accessScoreCacheForForConfigurationSet:(int64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [(FCFeedItemScoreCache *)self scoreProfilesByConfigurationSet];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__FCFeedItemScoreCache__accessScoreCacheForForConfigurationSet_withBlock___block_invoke;
  v9[3] = &unk_1E7C47948;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 readWriteWithAccessor:v9];
}

void __74__FCFeedItemScoreCache__accessScoreCacheForForConfigurationSet_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v4 = [v6 objectForKey:v3];

  if (!v4)
  {
    v4 = [FCMapTable mapTableWithKeyOptions:0 valueOptions:0];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v6 setObject:v4 forKey:v5];
  }

  (*(*(a1 + 32) + 16))();
}

@end