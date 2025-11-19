@interface FCIssueDownloadService
- (FCIssueDownloadService)init;
- (FCIssueDownloadService)initWithContext:(id)a3 ANFHelper:(id)a4 articleDownloadService:(id)a5;
- (id)fetchCachedIssueWithID:(id)a3 completionHandler:(id)a4;
- (int64_t)isIssueDownloadedEnoughToRead:(id)a3;
@end

@implementation FCIssueDownloadService

- (FCIssueDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssueDownloadService init]";
    v10 = 2080;
    v11 = "FCIssueDownloadService.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssueDownloadService)initWithContext:(id)a3 ANFHelper:(id)a4 articleDownloadService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCIssueDownloadService;
  v12 = [(FCIssueDownloadService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_ANFHelper, a4);
    objc_storeStrong(&v13->_articleDownloadService, a5);
  }

  return v13;
}

- (id)fetchCachedIssueWithID:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [FCOfflineIssueFetchOperation alloc];
  v9 = [(FCIssueDownloadService *)self context];
  v10 = [(FCIssueDownloadService *)self ANFHelper];
  v11 = [(FCOfflineIssueFetchOperation *)v8 initWithContext:v9 ANFHelper:v10 issueID:v6];

  [(FCOperation *)v11 setQualityOfService:9];
  [(FCOfflineIssueFetchOperation *)v11 setCachedOnly:1];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__53;
  v28[4] = __Block_byref_object_dispose__53;
  v29 = +[FCContentArchive empty];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke;
  v27[3] = &unk_1E7C36EF0;
  v27[4] = v28;
  [(FCOfflineIssueFetchOperation *)v11 setArchiveHandler:v27];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke_2;
  v23 = &unk_1E7C36F18;
  v12 = v6;
  v24 = v12;
  v13 = v7;
  v25 = v13;
  v26 = v28;
  [(FCOfflineIssueFetchOperation *)v11 setFetchCompletionHandler:&v20];
  v14 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FCOperation *)v11 shortOperationDescription:v20];
    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Will check cache for issue %{public}@ with operation %{public}@", buf, 0x16u);
  }

  [FCTaskScheduler scheduleBackgroundDownloadOperation:v11];
  v16 = v25;
  v17 = v11;

  _Block_object_dispose(v28, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for issue %{public}@ with status %{public}@", &v12, 0x16u);
  }

  v10 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (int64_t)isIssueDownloadedEnoughToRead:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCIssueDownloadService *)self context];
  v6 = [v5 internalContentContext];
  v7 = [v6 issueRecordSource];
  v8 = [v7 cachedRecordWithID:v4];

  if (v8)
  {
    v9 = v8;
    v10 = [(FCIssueDownloadService *)self context];
    v11 = [v10 assetManager];
    v12 = [v9 generateMetadataJSONAssetHandleWithAssetManager:v11];

    if (v12)
    {
      v13 = [v12 dataProvider];

      if (v13)
      {
        v14 = [v9 type];
        if (v14 == 2)
        {
          v21 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v33 = v4;
            _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ has unknown readability because it's a PDF issue'", buf, 0xCu);
          }

          v19 = -1;
          goto LABEL_18;
        }

        if (v14 != 1 || (-[FCIssueDownloadService articleDownloadService](self, "articleDownloadService"), v15 = objc_claimAutoreleasedReturnValue(), [v9 coverArticleID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isArticleDownloadedEnoughToRead:", v16), v16, v15, (v17 & 1) != 0))
        {
          v18 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v33 = v4;
            _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is readable", buf, 0xCu);
          }

          v19 = 1;
          goto LABEL_18;
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_21;
        v24[3] = &unk_1E7C3F068;
        v25 = v4;
        __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_21(v24);
        v20 = v25;
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_20;
        v26[3] = &unk_1E7C3F068;
        v27 = v4;
        __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_20(v26);
        v20 = v27;
      }
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_19;
      v28[3] = &unk_1E7C3F068;
      v29 = v4;
      __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_19(v28);
      v20 = v29;
    }

    v19 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke;
  v30[3] = &unk_1E7C3F068;
  v31 = v4;
  __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke(v30);
  v19 = 0;
  v9 = v31;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because its issue record is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_19(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because it has no metadata asset handle", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_20(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because its metadata is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_21(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because its cover article is not readable", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

@end