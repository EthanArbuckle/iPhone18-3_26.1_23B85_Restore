@interface FCFeedTransformationPersonalizedSort
+ (id)transformationWithPersonalizer:(id)a3 feedItemScores:(id)a4 sortOptions:(int64_t)a5 configurationSet:(int64_t)a6;
- (id)personalizedHeadlines:(id)a3;
- (id)transformFeedItems:(id)a3;
- (id)transformHeadlines:(id)a3;
@end

@implementation FCFeedTransformationPersonalizedSort

+ (id)transformationWithPersonalizer:(id)a3 feedItemScores:(id)a4 sortOptions:(int64_t)a5 configurationSet:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setFeedPersonalizer:v10];

  [v11 setFeedItemScores:v9];
  [v11 setSortOptions:a5];
  [v11 setConfigurationSet:a6];

  return v11;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = NewsCoreUserDefaults();
  if ([v5 BOOLForKey:@"personalization_disabled"])
  {

LABEL_6:
    v8 = v4;
    goto LABEL_7;
  }

  v6 = [(FCFeedTransformationPersonalizedSort *)self feedPersonalizer];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [(FCFeedTransformationPersonalizedSort *)self feedItemScores];

  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__FCFeedTransformationPersonalizedSort_transformFeedItems___block_invoke;
    v11[3] = &unk_1E7C3B4F0;
    v11[4] = self;
    v8 = [v4 sortedArrayUsingComparator:v11];
  }

  else
  {
    v8 = [(FCFeedTransformationPersonalizedSort *)self personalizedHeadlines:v4];
  }

LABEL_7:
  v9 = v8;

  return v9;
}

uint64_t __59__FCFeedTransformationPersonalizedSort_transformFeedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) feedItemScores];
  v8 = [v7 objectForKey:v6];

  v9 = [*(a1 + 32) feedItemScores];
  v10 = [v9 objectForKey:v5];

  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected a score for item %@", v6];
    *buf = 136315906;
    v21 = "[FCFeedTransformationPersonalizedSort transformFeedItems:]_block_invoke";
    v22 = 2080;
    v23 = "FCFeedTransformationPersonalize.m";
    v24 = 1024;
    v25 = 90;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = v10;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected a score for item %@", v5];
      *buf = 136315906;
      v21 = "[FCFeedTransformationPersonalizedSort transformFeedItems:]_block_invoke";
      v22 = 2080;
      v23 = "FCFeedTransformationPersonalize.m";
      v24 = 1024;
      v25 = 91;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v11 = &unk_1F2E70B60;
  }

  v12 = &unk_1F2E70B60;
  if (v8)
  {
    v12 = v8;
  }

  v13 = v12;

  v14 = v11;
  v15 = [v13 compare:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)transformHeadlines:(id)a3
{
  v4 = a3;
  v5 = NewsCoreUserDefaults();
  if ([v5 BOOLForKey:@"personalization_disabled"])
  {
  }

  else
  {
    v6 = [(FCFeedTransformationPersonalizedSort *)self feedPersonalizer];

    if (v6)
    {
      v7 = [(FCFeedTransformationPersonalizedSort *)self personalizedHeadlines:v4];
      goto LABEL_6;
    }
  }

  v7 = v4;
LABEL_6:
  v8 = v7;

  return v8;
}

- (id)personalizedHeadlines:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedTransformationPersonalizedSort *)self feedPersonalizer];
  v6 = [v5 sortItems:v4 options:-[FCFeedTransformationPersonalizedSort sortOptions](self configurationSet:{"sortOptions"), -[FCFeedTransformationPersonalizedSort configurationSet](self, "configurationSet")}];

  v7 = [v6 sortedItems];

  return v7;
}

@end