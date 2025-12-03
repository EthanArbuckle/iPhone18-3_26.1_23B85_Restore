@interface FCLegacyFeedPersonalizer
- (FCLegacyFeedPersonalizer)init;
- (FCLegacyFeedPersonalizer)initWithFeedPersonalizer:(id)personalizer functionProvider:(id)provider;
- (double)decayedPublisherDiversificationPenalty;
- (id)diversifyItems:(id)items limit:(unint64_t)limit;
- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count;
- (id)limitItemsByMinimumItemQuality:(id)quality;
- (id)rankTagIDsDescending:(id)descending;
- (id)scoresForTagIDs:(id)ds;
- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set;
- (void)prepareForUseWithCompletionHandler:(id)handler;
- (void)prewarmWithTabiScores:(id)scores configurationSet:(int64_t)set;
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

- (FCLegacyFeedPersonalizer)initWithFeedPersonalizer:(id)personalizer functionProvider:(id)provider
{
  v24 = *MEMORY[0x1E69E9840];
  personalizerCopy = personalizer;
  providerCopy = provider;
  if (!personalizerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (providerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (providerCopy)
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
    objc_storeStrong(&v9->_feedPersonalizer, personalizer);
    objc_storeStrong(&v10->_functionProvider, provider);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  [feedPersonalizer prepareForUseWithCompletionHandler:handlerCopy];
}

- (id)rankTagIDsDescending:(id)descending
{
  descendingCopy = descending;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v6 = [feedPersonalizer rankTagIDsDescending:descendingCopy];

  return v6;
}

- (id)scoresForTagIDs:(id)ds
{
  dsCopy = ds;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v6 = [feedPersonalizer scoresForTagIDs:dsCopy];

  return v6;
}

- (double)decayedPublisherDiversificationPenalty
{
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  [feedPersonalizer decayedPublisherDiversificationPenalty];
  v4 = v3;

  return v4;
}

- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count
{
  rateCopy = rate;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v10 = [feedPersonalizer limitItemsByFlowRate:rateCopy timeInterval:count publisherCount:interval];

  return v10;
}

- (id)limitItemsByMinimumItemQuality:(id)quality
{
  qualityCopy = quality;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v6 = [feedPersonalizer limitItemsByMinimumItemQuality:qualityCopy];

  return v6;
}

- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set
{
  itemsCopy = items;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v10 = [feedPersonalizer sortItems:itemsCopy options:options configurationSet:set];

  return v10;
}

- (void)prewarmWithTabiScores:(id)scores configurationSet:(int64_t)set
{
  scoresCopy = scores;
  feedPersonalizer = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    feedPersonalizer2 = [(FCLegacyFeedPersonalizer *)self feedPersonalizer];
    [feedPersonalizer2 prewarmWithTabiScores:scoresCopy configurationSet:set];
  }
}

- (id)diversifyItems:(id)items limit:(unint64_t)limit
{
  itemsCopy = items;
  functionProvider = [(FCLegacyFeedPersonalizer *)self functionProvider];
  v8 = [functionProvider diversifyItems:itemsCopy limit:limit];

  return v8;
}

@end