@interface FCArticle
- (FCArticle)init;
- (FCArticle)initWithContext:(id)context articleID:(id)d forceArticleUpdate:(BOOL)update qualityOfService:(int64_t)service relativePriority:(int64_t)priority;
- (FCArticle)initWithContext:(id)context headline:(id)headline;
- (void)dealloc;
- (void)performBlockWhenContentIsLoaded:(id)loaded;
- (void)performBlockWhenFullyLoaded:(id)loaded;
@end

@implementation FCArticle

- (FCArticle)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticle init]";
    v10 = 2080;
    v11 = "FCArticle.m";
    v12 = 1024;
    v13 = 37;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticle init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticle)initWithContext:(id)context headline:(id)headline
{
  contextCopy = context;
  headlineCopy = headline;
  v16.receiver = self;
  v16.super_class = FCArticle;
  v8 = [(FCArticle *)&v16 init];
  if (v8)
  {
    articleID = [headlineCopy articleID];
    articleID = v8->_articleID;
    v8->_articleID = articleID;

    objc_storeStrong(&v8->_headline, headline);
    v11 = [(FCHeadlineProviding *)v8->_headline contentWithContext:contextCopy];
    content = v8->_content;
    v8->_content = v11;

    v13 = dispatch_group_create();
    fetchGroup = v8->_fetchGroup;
    v8->_fetchGroup = v13;
  }

  return v8;
}

- (FCArticle)initWithContext:(id)context articleID:(id)d forceArticleUpdate:(BOOL)update qualityOfService:(int64_t)service relativePriority:(int64_t)priority
{
  updateCopy = update;
  v34[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  v33.receiver = self;
  v33.super_class = FCArticle;
  v14 = [(FCArticle *)&v33 init];
  if (v14)
  {
    v15 = [dCopy copy];
    articleID = v14->_articleID;
    v14->_articleID = v15;

    articleController = [contextCopy articleController];
    v34[0] = dCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v19 = [articleController headlinesFetchOperationForArticleIDs:v18];

    [v19 setQualityOfService:service];
    [v19 setRelativePriority:priority];
    if (updateCopy)
    {
      [v19 setOverrideArticleCachePolicy:1];
      [v19 setArticleCachePolicy:1];
      [v19 setArticleMaximumCachedAge:0.0];
    }

    objc_storeStrong(&v14->_headlineFetchOperation, v19);
    v20 = dispatch_group_create();
    objc_initWeak(&location, v14);
    dispatch_group_enter(v20);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __92__FCArticle_initWithContext_articleID_forceArticleUpdate_qualityOfService_relativePriority___block_invoke;
    v28 = &unk_1E7C42068;
    objc_copyWeak(&v31, &location);
    v29 = contextCopy;
    v21 = v20;
    v30 = v21;
    [(FCFetchOperation *)v14->_headlineFetchOperation setFetchCompletionBlock:&v25];
    objc_storeStrong(&v14->_fetchGroup, v20);
    fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [fc_sharedConcurrentQueue addOperation:v14->_headlineFetchOperation];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

void __92__FCArticle_initWithContext_articleID_forceArticleUpdate_qualityOfService_relativePriority___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setFetchError:v4];

  v6 = [v3 fetchedObject];

  v7 = [v6 firstObject];
  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 setHeadline:v7];

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 headline];
  v11 = [v10 contentWithContext:*(a1 + 32)];
  v12 = objc_loadWeakRetained((a1 + 48));
  [v12 setContent:v11];

  v13 = *(a1 + 40);

  dispatch_group_leave(v13);
}

- (void)dealloc
{
  [(FCFetchOperation *)self->_headlineFetchOperation cancel];
  v3.receiver = self;
  v3.super_class = FCArticle;
  [(FCArticle *)&v3 dealloc];
}

- (void)performBlockWhenFullyLoaded:(id)loaded
{
  v25 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  if (!loadedCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *location = 136315906;
    *&location[4] = "[FCArticle performBlockWhenFullyLoaded:]";
    v19 = 2080;
    v20 = "FCArticle.m";
    v21 = 1024;
    v22 = 103;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", location, 0x26u);
  }

  objc_initWeak(location, self);
  fetchGroup = [(FCArticle *)self fetchGroup];
  IsEmpty = FCDispatchGroupIsEmpty(fetchGroup);

  if (IsEmpty)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__FCArticle_performBlockWhenFullyLoaded___block_invoke;
    v15[3] = &unk_1E7C42090;
    v16 = loadedCopy;
    v7 = &v17;
    objc_copyWeak(&v17, location);
    __41__FCArticle_performBlockWhenFullyLoaded___block_invoke(v15);
    v8 = &v16;
  }

  else
  {
    fetchGroup2 = [(FCArticle *)self fetchGroup];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__FCArticle_performBlockWhenFullyLoaded___block_invoke_2;
    block[3] = &unk_1E7C42090;
    v13 = loadedCopy;
    v7 = &v14;
    objc_copyWeak(&v14, location);
    dispatch_group_notify(fetchGroup2, MEMORY[0x1E69E96A0], block);

    v8 = &v13;
  }

  objc_destroyWeak(v7);

  objc_destroyWeak(location);
  v10 = *MEMORY[0x1E69E9840];
}

void __41__FCArticle_performBlockWhenFullyLoaded___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_loadWeakRetained((a1 + 40));
  v2 = [v3 fetchError];
  (*(v1 + 16))(v1, v3, v2);
}

void __41__FCArticle_performBlockWhenFullyLoaded___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = objc_loadWeakRetained((a1 + 40));
  v2 = [v3 fetchError];
  (*(v1 + 16))(v1, v3, v2);
}

- (void)performBlockWhenContentIsLoaded:(id)loaded
{
  v25 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  if (!loadedCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *location = 136315906;
    *&location[4] = "[FCArticle performBlockWhenContentIsLoaded:]";
    v19 = 2080;
    v20 = "FCArticle.m";
    v21 = 1024;
    v22 = 113;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", location, 0x26u);
  }

  objc_initWeak(location, self);
  fetchGroup = [(FCArticle *)self fetchGroup];
  IsEmpty = FCDispatchGroupIsEmpty(fetchGroup);

  if (IsEmpty)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__FCArticle_performBlockWhenContentIsLoaded___block_invoke;
    v15[3] = &unk_1E7C42090;
    v16 = loadedCopy;
    v7 = &v17;
    objc_copyWeak(&v17, location);
    __45__FCArticle_performBlockWhenContentIsLoaded___block_invoke(v15);
    v8 = &v16;
  }

  else
  {
    fetchGroup2 = [(FCArticle *)self fetchGroup];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__FCArticle_performBlockWhenContentIsLoaded___block_invoke_2;
    block[3] = &unk_1E7C42090;
    v13 = loadedCopy;
    v7 = &v14;
    objc_copyWeak(&v14, location);
    dispatch_group_notify(fetchGroup2, MEMORY[0x1E69E96A0], block);

    v8 = &v13;
  }

  objc_destroyWeak(v7);

  objc_destroyWeak(location);
  v10 = *MEMORY[0x1E69E9840];
}

void __45__FCArticle_performBlockWhenContentIsLoaded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained content];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 fetchError];
  (*(v2 + 16))(v2, v3, v5);
}

void __45__FCArticle_performBlockWhenContentIsLoaded___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained content];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 fetchError];
  (*(v2 + 16))(v2, v3, v5);
}

@end