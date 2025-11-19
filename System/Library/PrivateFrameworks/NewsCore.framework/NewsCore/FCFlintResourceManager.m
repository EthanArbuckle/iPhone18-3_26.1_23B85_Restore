@interface FCFlintResourceManager
- (FCFlintResourceManager)init;
- (FCFlintResourceManager)initWithContext:(id)a3;
- (FCResourcesFetchOperation)fetchResourcesWithIdentifiers:(uint64_t)a3 downloadAssets:(uint64_t)a4 cacheLifetimeHint:(uint64_t)a5 relativePriority:(void *)a6 callBackQueue:(void *)a7 completionBlock:;
- (id)cachedResourceWithIdentifier:(id)a3;
- (id)cachedResourcesWithIdentifiers:(id)a3;
@end

@implementation FCFlintResourceManager

- (FCFlintResourceManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFlintResourceManager init]";
    v10 = 2080;
    v11 = "FCFlintResourceManager.m";
    v12 = 1024;
    v13 = 31;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFlintResourceManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFlintResourceManager)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCFlintResourceManager;
  v6 = [(FCFlintResourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (FCResourcesFetchOperation)fetchResourcesWithIdentifiers:(uint64_t)a3 downloadAssets:(uint64_t)a4 cacheLifetimeHint:(uint64_t)a5 relativePriority:(void *)a6 callBackQueue:(void *)a7 completionBlock:
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a6;
  v15 = a7;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resourceIdentifiers"];
    *buf = 136315906;
    v27 = "[FCFlintResourceManager fetchResourcesWithIdentifiers:downloadAssets:cacheLifetimeHint:relativePriority:callBackQueue:completionBlock:]";
    v28 = 2080;
    v29 = "FCFlintResourceManager.m";
    v30 = 1024;
    v31 = 111;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v15)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "completionBlock"];
        *buf = 136315906;
        v27 = "[FCFlintResourceManager fetchResourcesWithIdentifiers:downloadAssets:cacheLifetimeHint:relativePriority:callBackQueue:completionBlock:]";
        v28 = 2080;
        v29 = "FCFlintResourceManager.m";
        v30 = 1024;
        v31 = 112;
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v15)
  {
    goto LABEL_5;
  }

  v16 = [[FCResourcesFetchOperation alloc] initWithContext:*(a1 + 8) resourceIDs:v13 downloadAssets:a3];
  [(FCOperation *)v16 setPurpose:@"article"];
  [(FCResourcesFetchOperation *)v16 setCacheLifetimeHint:a4];
  v17 = 25;
  if (!a5)
  {
    v17 = 17;
  }

  if (a5 == -1)
  {
    v18 = 9;
  }

  else
  {
    v18 = v17;
  }

  [(FCOperation *)v16 setQualityOfService:v18];
  [(FCOperation *)v16 setRelativePriority:a5];
  [(FCFetchOperation *)v16 setFetchCompletionQueue:v14];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __136__FCFlintResourceManager_fetchResourcesWithIdentifiers_downloadAssets_cacheLifetimeHint_relativePriority_callBackQueue_completionBlock___block_invoke;
  v24[3] = &unk_1E7C37A38;
  v25 = v15;
  [(FCFetchOperation *)v16 setFetchCompletionBlock:v24];
  v19 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v19 addOperation:v16];

LABEL_13:
  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)cachedResourcesWithIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resourceIdentifiers"];
    *buf = 136315906;
    v14 = "[FCFlintResourceManager cachedResourcesWithIdentifiers:]";
    v15 = 2080;
    v16 = "FCFlintResourceManager.m";
    v17 = 1024;
    v18 = 80;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [FCResourcesFetchOperation alloc];
  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v7 = [(FCResourcesFetchOperation *)v5 initWithContext:context resourceIDs:v4 downloadAssets:0];
  [(FCOperation *)v7 setPurpose:@"article"];
  [(FCFetchOperation *)v7 setCachePolicy:3];
  [(FCFetchOperation *)v7 setCanSendFetchCompletionSynchronously:1];
  [(FCOperation *)v7 start];
  [(FCResourcesFetchOperation *)v7 waitUntilFinished];
  v8 = [(FCFetchOperation *)v7 result];
  v9 = [v8 fetchedObject];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)cachedResourceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [FCResource alloc];
  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v7 = [(FCResource *)v5 initWithPermanentURLForResourceID:v4 cacheLifetimeHint:0 contentContext:context];

  return v7;
}

void __136__FCFlintResourceManager_fetchResourcesWithIdentifiers_downloadAssets_cacheLifetimeHint_relativePriority_callBackQueue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 status])
  {
    v4 = [v3 error];
    v5 = 0;
  }

  else
  {
    v17 = a1;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v6 = [v3 fetchedObject];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 resourceID];

          if (!v13 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resource.resourceID"];
            *buf = 136315906;
            v24 = "[FCFlintResourceManager fetchResourcesWithIdentifiers:downloadAssets:cacheLifetimeHint:relativePriority:callBackQueue:completionBlock:]_block_invoke";
            v25 = 2080;
            v26 = "FCFlintResourceManager.m";
            v27 = 1024;
            v28 = 131;
            v29 = 2114;
            v30 = v15;
            _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v14 = [v12 resourceID];
          [v5 setObject:v12 forKey:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v8);
    }

    v4 = 0;
    a1 = v17;
    v3 = v18;
  }

  (*(*(a1 + 32) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

@end