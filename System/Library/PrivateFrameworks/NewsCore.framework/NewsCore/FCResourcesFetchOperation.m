@interface FCResourcesFetchOperation
- (BOOL)validateOperation;
- (FCResourcesFetchOperation)init;
- (FCResourcesFetchOperation)initWithContext:(id)a3 resourceIDs:(id)a4 downloadAssets:(BOOL)a5;
- (id)completeFetchOperation;
- (id)downloadAssetsWithCompletion:(id)a3;
- (id)fetchResourcesWithCompletion:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)setResources:(uint64_t)a1;
@end

@implementation FCResourcesFetchOperation

- (BOOL)validateOperation
{
  v15 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = FCResourcesFetchOperation;
  v2 = [(FCOperation *)&v6 validateOperation];
  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resources fetch operation's superclass failed validation"];
    *buf = 136315906;
    v8 = "[FCResourcesFetchOperation validateOperation]";
    v9 = 2080;
    v10 = "FCResourcesFetchOperation.m";
    v11 = 1024;
    v12 = 66;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)completeFetchOperation
{
  if (self)
  {
    self = self->_resources;
  }

  return self;
}

- (FCResourcesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCResourcesFetchOperation init]";
    v10 = 2080;
    v11 = "FCResourcesFetchOperation.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCResourcesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCResourcesFetchOperation)initWithContext:(id)a3 resourceIDs:(id)a4 downloadAssets:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = FCResourcesFetchOperation;
  v11 = [(FCMultiStepFetchOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
    objc_storeStrong(&v12->_resourceIDs, a4);
    v12->_downloadAssets = a5;
    v12->_cacheLifetimeHint = 0;
    [(FCMultiStepFetchOperation *)v12 addFetchStep:sel_fetchResourcesWithCompletion_];
    [(FCMultiStepFetchOperation *)v12 addFetchStep:sel_downloadAssetsWithCompletion_];
  }

  return v12;
}

- (id)fetchResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__41;
  v31 = __Block_byref_object_dispose__41;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__41;
  v25 = __Block_byref_object_dispose__41;
  v26 = 0;
  if (self)
  {
    resourceIDs = self->_resourceIDs;
  }

  else
  {
    resourceIDs = 0;
  }

  v6 = resourceIDs;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke;
  v20[3] = &unk_1E7C40F20;
  v20[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_2;
  v19[3] = &unk_1E7C3B658;
  v19[4] = &v27;
  v19[5] = &v21;
  [(NSArray *)v6 fc_splitArrayWithTest:v20 result:v19];

  v7 = v28[5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_3;
  v18[3] = &unk_1E7C40F48;
  v18[4] = self;
  v8 = [v7 fc_arrayByTransformingWithBlock:v18];
  if ([v22[5] count])
  {
    if (self)
    {
      context = self->_context;
    }

    else
    {
      context = 0;
    }

    v10 = context;
    v11 = [(FCContentContext *)v10 internalContentContext];
    v12 = [v11 resourceRecordSource];
    v13 = [v12 fetchOperationForRecordsWithIDs:v22[5]];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_4;
    v15[3] = &unk_1E7C37CB0;
    v15[4] = self;
    v16 = v8;
    v17 = v4;
    [v13 setFetchCompletionBlock:v15];

    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(FCResourcesFetchOperation *)self setResources:v8];
  }

  (*(v4 + 2))(v4, 0);
  v13 = 0;
LABEL_10:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

uint64_t __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    if (qword_1EDB266D8[0] != -1)
    {
      dispatch_once(qword_1EDB266D8, &__block_literal_global_86);
    }

    if (_MergedGlobals_1)
    {
      v2 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
      v2 = v4 != 0;
    }
  }

  return v2;
}

void __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

FCResource *__58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCResource alloc];
  v5 = [*(a1 + 32) cacheLifetimeHint];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 488);
  }

  else
  {
    v7 = 0;
  }

  v8 = [(FCResource *)v4 initWithPermanentURLForResourceID:v3 cacheLifetimeHint:v5 contentContext:v7];

  return v8;
}

- (void)setResources:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 504), a2);
  }
}

void __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_4(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchedObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_5;
  v7[3] = &unk_1E7C40F70;
  v7[4] = a1[4];
  v5 = [v4 transformRecordsWithBlock:v7];

  v6 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v5 toArray:a1[5]];
  [(FCResourcesFetchOperation *)a1[4] setResources:v6];

  (*(a1[6] + 16))();
}

FCResource *__58__FCResourcesFetchOperation_fetchResourcesWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 interestTokenHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) interestTokenHandler];
    (v9)[2](v9, v5);
  }

  v10 = [FCResource alloc];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 488);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 assetManager];
  v14 = [(FCResource *)v10 initWithRecord:v7 interestToken:v5 assetManager:v13];

  return v14;
}

- (id)downloadAssetsWithCompletion:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (self && self->_downloadAssets)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_resources;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 assetHandle];

          if (v12)
          {
            v13 = [v11 assetHandle];
            [v5 addObject:v13];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  v14 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v5];
  [(FCAssetsFetchOperation *)v14 setMaxConcurrentFetchCount:[(FCResourcesFetchOperation *)self maxConcurrentFetchCount]];
  v15 = [(FCResourcesFetchOperation *)self progressHandler];
  [(FCAssetsFetchOperation *)v14 setProgressHandler:v15];

  [(FCFetchOperation *)v14 setFetchCompletionBlock:v4];
  v16 = [(FCResourcesFetchOperation *)self interestTokenHandler];
  [(FCAssetsFetchOperation *)v14 setInterestTokenHandler:v16];

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)operationWillFinishWithError:(id)a3
{
  if (!a3)
  {
    v4 = [(FCResourcesFetchOperation *)self archiveHandler];

    if (v4)
    {
      v7 = [(FCResourcesFetchOperation *)self archiveHandler];
      if (self)
      {
        resources = self->_resources;
      }

      else
      {
        resources = 0;
      }

      v6 = [(NSArray *)resources contentArchive];
      v7[2](v7, v6);
    }
  }
}

void __65__FCResourcesFetchOperation__shouldUsePermanentURLForResourceID___block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_1 = [v0 BOOLForKey:@"disable_permanent_resource_urls"];
}

@end