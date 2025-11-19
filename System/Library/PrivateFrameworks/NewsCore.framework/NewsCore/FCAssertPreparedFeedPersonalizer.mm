@interface FCAssertPreparedFeedPersonalizer
- (FCAssertPreparedFeedPersonalizer)init;
- (FCAssertPreparedFeedPersonalizer)initWithTarget:(id)a3;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5;
- (id)limitItemsByMinimumItemQuality:(id)a3;
- (id)rankTagIDsDescending:(id)a3;
- (id)scoresForTagIDs:(id)a3;
- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5;
- (void)fetchAggregateMapForPersonalizingItem:(id)a3 completion:(id)a4;
- (void)prepareForUseWithCompletionHandler:(id)a3;
@end

@implementation FCAssertPreparedFeedPersonalizer

- (FCAssertPreparedFeedPersonalizer)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAssertPreparedFeedPersonalizer init]";
    v10 = 2080;
    v11 = "FCAssertPreparedFeedPersonalizer.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAssertPreparedFeedPersonalizer init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAssertPreparedFeedPersonalizer)initWithTarget:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "target"];
    *buf = 136315906;
    v13 = "[FCAssertPreparedFeedPersonalizer initWithTarget:]";
    v14 = 2080;
    v15 = "FCAssertPreparedFeedPersonalizer.m";
    v16 = 1024;
    v17 = 31;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCAssertPreparedFeedPersonalizer;
  v6 = [(FCAssertPreparedFeedPersonalizer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)rankTagIDsDescending:(id)a3
{
  v4 = a3;
  v5 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v6 = [v5 rankTagIDsDescending:v4];

  return v6;
}

- (id)scoresForTagIDs:(id)a3
{
  v4 = a3;
  v5 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v6 = [v5 scoresForTagIDs:v4];

  return v6;
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__FCAssertPreparedFeedPersonalizer_prepareForUseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C37BC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 prepareForUseWithCompletionHandler:v7];
}

uint64_t __71__FCAssertPreparedFeedPersonalizer_prepareForUseWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreparedForUse:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)limitItemsByMinimumItemQuality:(id)a3
{
  v4 = a3;
  v5 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v6 = [v5 limitItemsByMinimumItemQuality:v4];

  return v6;
}

- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5
{
  v8 = a3;
  v9 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v10 = [v9 limitItemsByFlowRate:v8 timeInterval:a5 publisherCount:a4];

  return v10;
}

- (double)decayedPublisherDiversificationPenalty
{
  v2 = [(FCAssertPreparedFeedPersonalizer *)self target];
  [v2 decayedPublisherDiversificationPenalty];
  v4 = v3;

  return v4;
}

- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5
{
  v8 = a3;
  v9 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v10 = [v9 sortItems:v8 options:a4 configurationSet:a5];

  return v10;
}

- (void)fetchAggregateMapForPersonalizingItem:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FCAssertPreparedFeedPersonalizer *)self target];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(FCAssertPreparedFeedPersonalizer *)self target];
    [v10 fetchAggregateMapForPersonalizingItem:v6 completion:v7];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
    v12 = 136315906;
    v13 = "[FCAssertPreparedFeedPersonalizer fetchAggregateMapForPersonalizingItem:completion:]";
    v14 = 2080;
    v15 = "FCAssertPreparedFeedPersonalizer.m";
    v16 = 1024;
    v17 = 104;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

LABEL_5:
  v11 = *MEMORY[0x1E69E9840];
}

@end