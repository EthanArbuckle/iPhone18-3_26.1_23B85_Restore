@interface FCLegacyFeedPersonalizer
- (FCLegacyFeedPersonalizer)init;
- (FCLegacyFeedPersonalizer)initWithFeedPersonalizer:(id)a3 functionProvider:(id)a4;
- (double)decayedPublisherDiversificationPenalty;
- (id)diversifyItems:(id)a3 limit:(unint64_t)a4;
- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5;
- (id)limitItemsByMinimumItemQuality:(id)a3;
- (id)rankTagIDsDescending:(id)a3;
- (id)scoresForTagIDs:(id)a3;
- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5;
- (void)prepareForUseWithCompletionHandler:(id)a3;
- (void)prewarmWithTabiScores:(id)a3 configurationSet:(int64_t)a4;
@end

@implementation FCLegacyFeedPersonalizer

- (FCLegacyFeedPersonalizer)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCLegacyFeedPersonalizer init]";
    v10 = 2080;
    v11 = "FCLegacyFeedPersonalizer.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCLegacyFeedPersonalizer init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCLegacyFeedPersonalizer)initWithFeedPersonalizer:(id)a3 functionProvider:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedPersonalizer"];
    *buf = 136315906;
    v17 = "[FCLegacyFeedPersonalizer initWithFeedPersonalizer:functionProvider:]";
    v18 = 2080;
    v19 = "FCLegacyFeedPersonalizer.m";
    v20 = 1024;
    v21 = 28;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "functionProvider"];
    *buf = 136315906;
    v17 = "[FCLegacyFeedPersonalizer initWithFeedPersonalizer:functionProvider:]";
    v18 = 2080;
    v19 = "FCLegacyFeedPersonalizer.m";
    v20 = 1024;
    v21 = 29;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v15.receiver = self;
  v15.super_class = FCLegacyFeedPersonalizer;
  v9 = [(FCLegacyFeedPersonalizer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedPersonalizer, a3);
    objc_storeStrong(&v10->_functionProvider, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  [v5 prepareForUseWithCompletionHandler:v4];
}

- (id)rankTagIDsDescending:(id)a3
{
  v4 = a3;
  v5 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v6 = [v5 rankTagIDsDescending:v4];

  return v6;
}

- (id)scoresForTagIDs:(id)a3
{
  v4 = a3;
  v5 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v6 = [v5 scoresForTagIDs:v4];

  return v6;
}

- (double)decayedPublisherDiversificationPenalty
{
  v2 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  [v2 decayedPublisherDiversificationPenalty];
  v4 = v3;

  return v4;
}

- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5
{
  v8 = a3;
  v9 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v10 = [v9 limitItemsByFlowRate:v8 timeInterval:a5 publisherCount:a4];

  return v10;
}

- (id)limitItemsByMinimumItemQuality:(id)a3
{
  v4 = a3;
  v5 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v6 = [v5 limitItemsByMinimumItemQuality:v4];

  return v6;
}

- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5
{
  v8 = a3;
  v9 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v10 = [v9 sortItems:v8 options:a4 configurationSet:a5];

  return v10;
}

- (void)prewarmWithTabiScores:(id)a3 configurationSet:(int64_t)a4
{
  v9 = a3;
  v6 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
    [v8 prewarmWithTabiScores:v9 configurationSet:a4];
  }
}

- (id)diversifyItems:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FCLegacyFeedPersonalizer *)self functionProvider];
  v8 = [v7 diversifyItems:v6 limit:a4];

  return v8;
}

@end