@interface FCRecipeDownloadService
- (BOOL)isRecipeDownloadedEnoughToUse:(id)a3;
- (FCRecipeDownloadService)init;
- (FCRecipeDownloadService)initWithContext:(id)a3;
- (id)fetchCachedRecipeWithID:(id)a3 completionHandler:(id)a4;
@end

@implementation FCRecipeDownloadService

- (FCRecipeDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecipeDownloadService init]";
    v10 = 2080;
    v11 = "FCRecipeDownloadService.m";
    v12 = 1024;
    v13 = 36;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecipeDownloadService)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCRecipeDownloadService;
  v6 = [(FCRecipeDownloadService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (id)fetchCachedRecipeWithID:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [FCOfflineRecipesFetchOperation alloc];
  v9 = [(FCRecipeDownloadService *)self context];
  v10 = [(FCOfflineRecipesFetchOperation *)v8 initWithContext:v9 recipeID:v6];

  [(FCOperation *)v10 setQualityOfService:9];
  [(FCOfflineRecipesFetchOperation *)v10 setCachedOnly:1];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__76;
  v27[4] = __Block_byref_object_dispose__76;
  v28 = +[FCContentArchive empty];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke;
  v26[3] = &unk_1E7C36EF0;
  v26[4] = v27;
  [(FCOfflineRecipesFetchOperation *)v10 setArchiveHandler:v26];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke_2;
  v22 = &unk_1E7C36F18;
  v11 = v6;
  v23 = v11;
  v12 = v7;
  v24 = v12;
  v25 = v27;
  [(FCOfflineRecipesFetchOperation *)v10 setFetchCompletionHandler:&v19];
  v13 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(FCOperation *)v10 shortOperationDescription:v19];
    *buf = 138543618;
    v30 = v11;
    v31 = 2114;
    v32 = v14;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Will check cache for puzzle %{public}@ with operation %{public}@", buf, 0x16u);
  }

  [FCTaskScheduler scheduleBackgroundDownloadOperation:v10];
  v15 = v24;
  v16 = v10;

  _Block_object_dispose(v27, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = *(*(*(a1 + 32) + 8) + 40);
  v10[1] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v10 count:2];
  v6 = [FCContentArchive archiveWithChildArchives:v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x1E69E9840];
}

void __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"not cached";
    v9 = a1[4];
    if (!v6)
    {
      v8 = @"success";
    }

    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for recipe %{public}@ with status %{public}@", &v12, 0x16u);
  }

  v10 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRecipeDownloadedEnoughToUse:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCRecipeDownloadService *)self context];
  v6 = [v5 internalContentContext];
  v7 = [v6 recipeRecordSource];
  v8 = [v7 cachedRecordWithID:v4];

  if (v8)
  {
    v9 = v8;
    v10 = [(FCRecipeDownloadService *)self context];
    v11 = [v10 tagController];
    v12 = [v9 sourceChannelTagID];
    v13 = [v11 slowCachedTagForID:v12];

    if (!v13)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_19;
      v42[3] = &unk_1E7C36F68;
      v43 = v4;
      v44 = v9;
      v27 = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_19(v42);

      v31 = v43;
LABEL_13:

      goto LABEL_14;
    }

    v37 = v4;
    v39 = v13;
    v14 = v13;
    v15 = [FCRecipe alloc];
    v16 = [(FCRecipeDownloadService *)self context];
    v17 = [v16 assetManager];
    v18 = [(FCRecipeDownloadService *)self context];
    v19 = [v9 base];
    v20 = [v19 contentManifest];
    v21 = [v18 interestTokenForContentManifest:v20];
    v38 = v14;
    v22 = [(FCRecipe *)v15 initWithRecipeRecord:v9 sourceChannel:v14 articles:MEMORY[0x1E695E0F0] assetManager:v17 interestToken:v21];

    v23 = v22;
    v24 = [(FCRecipe *)v22 contentAssetHandle];
    v25 = [v24 downloadError];

    if (v25)
    {
      v26 = FCOfflineDownloadsLog;
      v27 = 0;
      v4 = v37;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v26;
        v29 = [(FCRecipe *)v23 contentAssetHandle];
        v30 = [v29 downloadError];
        *buf = 138543618;
        v48 = v37;
        v49 = 2114;
        v50 = v30;
        _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its content data had a download error=%{public}@", buf, 0x16u);

LABEL_11:
        v27 = 0;
      }
    }

    else
    {
      v32 = [(FCRecipe *)v22 contentAssetHandle];
      v33 = [v32 dataProvider];
      v34 = [v33 data];

      v4 = v37;
      if (!v34)
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_21;
        v40[3] = &unk_1E7C36F40;
        v41 = v37;
        __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_21(v40);

        goto LABEL_11;
      }

      v27 = 1;
    }

    v31 = v38;
    v13 = v39;
    goto LABEL_13;
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke;
  v45[3] = &unk_1E7C36F40;
  v46 = v4;
  __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke(v45);
  v27 = 0;
  v9 = v46;
LABEL_14:

  v35 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its recipe record is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_19(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 sourceChannelTagID];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its source channel with channelID %{public}@ is not cached", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_21(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its content data is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

@end