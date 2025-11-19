@interface FCArticleDownloadService
- (BOOL)isArticleDownloadedEnoughToListen:(id)a3;
- (BOOL)isArticleDownloadedEnoughToRead:(id)a3;
- (FCArticleDownloadService)init;
- (FCArticleDownloadService)initWithContext:(id)a3 ANFHelper:(id)a4;
- (id)fetchCachedArticleWithID:(id)a3 completionHandler:(id)a4;
- (id)fetchCachedAudioWithArticleID:(id)a3 completionHandler:(id)a4;
@end

@implementation FCArticleDownloadService

- (FCArticleDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleDownloadService init]";
    v10 = 2080;
    v11 = "FCArticleDownloadService.m";
    v12 = 1024;
    v13 = 44;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleDownloadService)initWithContext:(id)a3 ANFHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCArticleDownloadService;
  v9 = [(FCArticleDownloadService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_ANFHelper, a4);
  }

  return v10;
}

- (id)fetchCachedArticleWithID:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [FCOfflineArticleFetchOperation alloc];
  v9 = [(FCArticleDownloadService *)self context];
  v10 = [(FCArticleDownloadService *)self ANFHelper];
  v11 = [(FCOfflineArticleFetchOperation *)v8 initWithContext:v9 ANFHelper:v10 articleID:v6];

  [(FCOperation *)v11 setQualityOfService:9];
  [(FCOfflineArticleFetchOperation *)v11 setQueuePriority:0];
  [(FCOfflineArticleFetchOperation *)v11 setCachedOnly:1];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__37;
  v28[4] = __Block_byref_object_dispose__37;
  v29 = +[FCContentArchive empty];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__FCArticleDownloadService_fetchCachedArticleWithID_completionHandler___block_invoke;
  v27[3] = &unk_1E7C36EF0;
  v27[4] = v28;
  [(FCOfflineArticleFetchOperation *)v11 setArchiveHandler:v27];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __71__FCArticleDownloadService_fetchCachedArticleWithID_completionHandler___block_invoke_2;
  v23 = &unk_1E7C36F18;
  v12 = v6;
  v24 = v12;
  v13 = v7;
  v25 = v13;
  v26 = v28;
  [(FCOfflineArticleFetchOperation *)v11 setFetchCompletionHandler:&v20];
  v14 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FCOperation *)v11 shortOperationDescription:v20];
    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Will check cache for article %{public}@ with operation %{public}@", buf, 0x16u);
  }

  [FCTaskScheduler scheduleBackgroundDownloadOperation:v11];
  v16 = v25;
  v17 = v11;

  _Block_object_dispose(v28, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __71__FCArticleDownloadService_fetchCachedArticleWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __71__FCArticleDownloadService_fetchCachedArticleWithID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for article %{public}@ with status %{public}@", &v12, 0x16u);
  }

  v10 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)fetchCachedAudioWithArticleID:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [FCOfflineAudioFetchOperation alloc];
  v9 = [(FCArticleDownloadService *)self context];
  v10 = [(FCOfflineAudioFetchOperation *)v8 initWithContext:v9 articleID:v6];

  [(FCOperation *)v10 setQualityOfService:9];
  [(FCOfflineAudioFetchOperation *)v10 setQueuePriority:0];
  [(FCOfflineAudioFetchOperation *)v10 setCachedOnly:1];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__37;
  v27[4] = __Block_byref_object_dispose__37;
  v28 = +[FCContentArchive empty];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__FCArticleDownloadService_fetchCachedAudioWithArticleID_completionHandler___block_invoke;
  v26[3] = &unk_1E7C36EF0;
  v26[4] = v27;
  [(FCOfflineAudioFetchOperation *)v10 setArchiveHandler:v26];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __76__FCArticleDownloadService_fetchCachedAudioWithArticleID_completionHandler___block_invoke_2;
  v22 = &unk_1E7C36F18;
  v11 = v6;
  v23 = v11;
  v12 = v7;
  v24 = v12;
  v25 = v27;
  [(FCOfflineAudioFetchOperation *)v10 setFetchCompletionHandler:&v19];
  v13 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(FCOperation *)v10 shortOperationDescription:v19];
    *buf = 138543618;
    v30 = v11;
    v31 = 2114;
    v32 = v14;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Will check cache for audio %{public}@ with operation %{public}@", buf, 0x16u);
  }

  [FCTaskScheduler scheduleBackgroundDownloadOperation:v10];
  v15 = v24;
  v16 = v10;

  _Block_object_dispose(v27, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __76__FCArticleDownloadService_fetchCachedAudioWithArticleID_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __76__FCArticleDownloadService_fetchCachedAudioWithArticleID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for audio %{public}@ with status %{public}@", &v12, 0x16u);
  }

  v10 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isArticleDownloadedEnoughToRead:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCArticleDownloadService *)self context];
  v6 = [v5 internalContentContext];
  v7 = [v6 articleRecordSource];
  v8 = [v7 cachedRecordWithID:v4];

  if (v8)
  {
    v9 = v8;
    v10 = [FCArticleContent alloc];
    v11 = [(FCArticleDownloadService *)self context];
    v12 = [(FCArticleContent *)v10 initWithContext:v11 articleRecord:v9];

    if (v12)
    {
      v13 = [(FCArticleContent *)v12 anfContent];
      if (v13)
      {
        v14 = v13;
        if ([v14 isANFDocumentCached])
        {
          v15 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = v4;
            _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is readable", buf, 0xCu);
          }

          v16 = 1;
        }

        else
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_23;
          v19[3] = &unk_1E7C36F68;
          v20 = v4;
          v21 = v14;
          v16 = __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_23(v19);
        }
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_22;
        v22[3] = &unk_1E7C36F40;
        v23 = v4;
        __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_22(v22);

        v14 = 0;
        v16 = 0;
      }
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_21;
      v24[3] = &unk_1E7C36F40;
      v25 = v4;
      __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_21(v24);
      v16 = 0;
      v14 = v25;
    }
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke;
    v26[3] = &unk_1E7C36F40;
    v27 = v4;
    __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke(v26);
    v16 = 0;
    v9 = v27;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not readable because its article record is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_21(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not readable because it has an unknown content type", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_22(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not readable because it is not ANF", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __60__FCArticleDownloadService_isArticleDownloadedEnoughToRead___block_invoke_23(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 anfDocumentAssetHandles];
    v7 = [v6 firstObject];
    v8 = [v7 uniqueKey];
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not readable because its ANF document is not cached, document=%{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)isArticleDownloadedEnoughToListen:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCArticleDownloadService *)self context];
  v6 = [v5 internalContentContext];
  v7 = [v6 articleRecordSource];
  v8 = [v7 cachedRecordWithID:v4];

  if (v8)
  {
    v9 = [v8 narrativeTrackFullIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = [(FCArticleDownloadService *)self context];
      v12 = [v11 internalContentContext];
      v13 = [v12 avAssetDownloadManager];
      if (v13)
      {
        v14 = v13;
        v15 = [(FCAVAssetDownloadManager *)v13 _isAssetInCache:v10];

        if (v15)
        {
          v16 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v27 = v4;
            _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is listenable", buf, 0xCu);
          }

          v17 = 1;
          goto LABEL_12;
        }
      }

      else
      {
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke_25;
      v20[3] = &unk_1E7C36F40;
      v21 = v10;
      __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke_25(v20);

      v17 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke_24;
    v22[3] = &unk_1E7C36F40;
    v23 = v4;
    __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke_24(v22);

    v10 = 0;
    v17 = 0;
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke;
    v24[3] = &unk_1E7C36F40;
    v25 = v4;
    __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke(v24);
    v17 = 0;
    v10 = v25;
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not listenable because its article record is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke_24(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not listenable because it has no narrative track", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __62__FCArticleDownloadService_isArticleDownloadedEnoughToListen___block_invoke_25(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Article %{public}@ is not listenable because its narrative track is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

@end