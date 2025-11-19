@interface FCArticleController
- (FCArticleController)init;
- (FCArticleController)initWithContext:(id)a3;
- (id)articleWithHeadline:(id)a3;
- (id)articleWithID:(id)a3 relativePriority:(int64_t)a4;
- (id)headlinesFetchOperationForArticleIDs:(id)a3;
- (id)headlinesFetchOperationForArticleIDs:(id)a3 ignoreCacheForArticleIDs:(id)a4;
@end

@implementation FCArticleController

- (FCArticleController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleController init]";
    v10 = 2080;
    v11 = "FCArticleController.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleController)initWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context != nil"];
    *buf = 136315906;
    v13 = "[FCArticleController initWithContext:]";
    v14 = 2080;
    v15 = "FCArticleController.m";
    v16 = 1024;
    v17 = 33;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCArticleController;
  v6 = [(FCArticleController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_context, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)articleWithID:(id)a3 relativePriority:(int64_t)a4
{
  v6 = a3;
  v7 = 25;
  if (!a4)
  {
    v7 = 17;
  }

  if (a4 == -1)
  {
    v8 = 9;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(FCArticleController *)self articleWithID:v6 forceArticleUpdate:0 qualityOfService:v8 relativePriority:a4];

  return v9;
}

- (id)articleWithHeadline:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [FCArticle alloc];
    v6 = [(FCArticleController *)self context];
    v7 = [(FCArticle *)v5 initWithContext:v6 headline:v4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "headline != nil"];
      *buf = 136315906;
      v12 = "[FCArticleController articleWithHeadline:]";
      v13 = 2080;
      v14 = "FCArticleController.m";
      v15 = 1024;
      v16 = 90;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)headlinesFetchOperationForArticleIDs:(id)a3
{
  v4 = a3;
  v5 = [FCArticleHeadlinesFetchOperation alloc];
  v6 = [(FCArticleController *)self context];
  v7 = [(FCArticleHeadlinesFetchOperation *)v5 initWithContext:v6 articleIDs:v4 ignoreCacheForArticleIDs:0];

  return v7;
}

- (id)headlinesFetchOperationForArticleIDs:(id)a3 ignoreCacheForArticleIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FCArticleHeadlinesFetchOperation alloc];
  v9 = [(FCArticleController *)self context];
  v10 = [(FCArticleHeadlinesFetchOperation *)v8 initWithContext:v9 articleIDs:v7 ignoreCacheForArticleIDs:v6];

  return v10;
}

@end