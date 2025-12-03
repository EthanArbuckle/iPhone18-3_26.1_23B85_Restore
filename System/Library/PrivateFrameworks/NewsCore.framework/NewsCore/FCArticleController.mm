@interface FCArticleController
- (FCArticleController)init;
- (FCArticleController)initWithContext:(id)context;
- (id)articleWithHeadline:(id)headline;
- (id)articleWithID:(id)d relativePriority:(int64_t)priority;
- (id)headlinesFetchOperationForArticleIDs:(id)ds;
- (id)headlinesFetchOperationForArticleIDs:(id)ds ignoreCacheForArticleIDs:(id)iDs;
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

- (FCArticleController)initWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if (contextCopy)
    {
      objc_storeStrong(&v6->_context, context);
    }

    else
    {

      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)articleWithID:(id)d relativePriority:(int64_t)priority
{
  dCopy = d;
  v7 = 25;
  if (!priority)
  {
    v7 = 17;
  }

  if (priority == -1)
  {
    v8 = 9;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(FCArticleController *)self articleWithID:dCopy forceArticleUpdate:0 qualityOfService:v8 relativePriority:priority];

  return v9;
}

- (id)articleWithHeadline:(id)headline
{
  v19 = *MEMORY[0x1E69E9840];
  headlineCopy = headline;
  if (headlineCopy)
  {
    v5 = [FCArticle alloc];
    context = [(FCArticleController *)self context];
    v7 = [(FCArticle *)v5 initWithContext:context headline:headlineCopy];
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

- (id)headlinesFetchOperationForArticleIDs:(id)ds
{
  dsCopy = ds;
  v5 = [FCArticleHeadlinesFetchOperation alloc];
  context = [(FCArticleController *)self context];
  v7 = [(FCArticleHeadlinesFetchOperation *)v5 initWithContext:context articleIDs:dsCopy ignoreCacheForArticleIDs:0];

  return v7;
}

- (id)headlinesFetchOperationForArticleIDs:(id)ds ignoreCacheForArticleIDs:(id)iDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  v8 = [FCArticleHeadlinesFetchOperation alloc];
  context = [(FCArticleController *)self context];
  v10 = [(FCArticleHeadlinesFetchOperation *)v8 initWithContext:context articleIDs:dsCopy ignoreCacheForArticleIDs:iDsCopy];

  return v10;
}

@end