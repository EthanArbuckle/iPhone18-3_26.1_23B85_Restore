@interface FCFeedTransformationUnreadOnly
+ (id)transformationWithReadingHistory:(id)a3;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationUnreadOnly

+ (id)transformationWithReadingHistory:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setHistory:v3];

  return v4;
}

- (id)transformFeedItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCFeedTransformationUnreadOnly *)self history];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't filter read articles without history"];
    *buf = 136315906;
    v16 = "[FCFeedTransformationUnreadOnly transformFeedItems:]";
    v17 = 2080;
    v18 = "FCFeedTransformationUnreadOnly.m";
    v19 = 1024;
    v20 = 31;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = [(FCFeedTransformationUnreadOnly *)self history];
  v7 = [v6 allReadArticleIDs];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__FCFeedTransformationUnreadOnly_transformFeedItems___block_invoke;
  v13[3] = &unk_1E7C37898;
  v14 = v7;
  v8 = v7;
  v9 = [v4 fc_arrayOfObjectsPassingTest:v13];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __53__FCFeedTransformationUnreadOnly_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 articleID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end