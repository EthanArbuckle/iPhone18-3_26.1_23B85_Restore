@interface FCPuzzleDownloadService
- (BOOL)isPuzzleDownloadedEnoughToUse:(id)use;
- (FCPuzzleDownloadService)init;
- (FCPuzzleDownloadService)initWithContext:(id)context;
- (id)fetchCachedPuzzleWithID:(id)d completionHandler:(id)handler;
@end

@implementation FCPuzzleDownloadService

- (FCPuzzleDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPuzzleDownloadService init]";
    v10 = 2080;
    v11 = "FCPuzzleDownloadService.m";
    v12 = 1024;
    v13 = 37;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPuzzleDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleDownloadService)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCPuzzleDownloadService;
  v6 = [(FCPuzzleDownloadService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (id)fetchCachedPuzzleWithID:(id)d completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = [FCOfflinePuzzleFetchOperation alloc];
  context = [(FCPuzzleDownloadService *)self context];
  v10 = [(FCOfflinePuzzleFetchOperation *)v8 initWithContext:context puzzleID:dCopy];

  [(FCOperation *)v10 setQualityOfService:9];
  [(FCOfflinePuzzleFetchOperation *)v10 setCachedOnly:1];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = +[FCContentArchive empty];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke;
  v26[3] = &unk_1E7C36EF0;
  v26[4] = v27;
  [(FCOfflinePuzzleFetchOperation *)v10 setArchiveHandler:v26];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke_2;
  v22 = &unk_1E7C36F18;
  v11 = dCopy;
  v23 = v11;
  v12 = handlerCopy;
  v24 = v12;
  v25 = v27;
  [(FCOfflinePuzzleFetchOperation *)v10 setFetchCompletionHandler:&v19];
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

void __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for puzzle %{public}@ with status %{public}@", &v12, 0x16u);
  }

  v10 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPuzzleDownloadedEnoughToUse:(id)use
{
  v51 = *MEMORY[0x1E69E9840];
  useCopy = use;
  context = [(FCPuzzleDownloadService *)self context];
  internalContentContext = [context internalContentContext];
  puzzleRecordSource = [internalContentContext puzzleRecordSource];
  v8 = [puzzleRecordSource cachedRecordWithID:useCopy];

  if (v8)
  {
    v9 = v8;
    context2 = [(FCPuzzleDownloadService *)self context];
    internalContentContext2 = [context2 internalContentContext];
    puzzleTypeRecordSource = [internalContentContext2 puzzleTypeRecordSource];
    puzzleTypeID = [v9 puzzleTypeID];
    v14 = [puzzleTypeRecordSource cachedRecordWithID:puzzleTypeID];

    if (!v14)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_19;
      v44[3] = &unk_1E7C36F68;
      v45 = useCopy;
      v46 = v9;
      v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_19(v44);

      v15 = v45;
LABEL_19:

      goto LABEL_20;
    }

    v15 = v14;
    context3 = [(FCPuzzleDownloadService *)self context];
    flintResourceManager = [context3 flintResourceManager];
    dataResourceID = [v9 dataResourceID];
    v19 = [flintResourceManager cachedResourceWithIdentifier:dataResourceID];

    v31 = v19;
    if (!v19)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_20;
      v41[3] = &unk_1E7C36F68;
      v42 = useCopy;
      v43 = v9;
      v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_20(v41);

      v20 = v42;
LABEL_18:

      goto LABEL_19;
    }

    v20 = v19;
    context4 = [(FCPuzzleDownloadService *)self context];
    flintResourceManager2 = [context4 flintResourceManager];
    engineResourceID = [v15 engineResourceID];
    v24 = [flintResourceManager2 cachedResourceWithIdentifier:engineResourceID];

    if (v24)
    {
      v25 = v24;
      if ([v20 isOnDisk])
      {
        if ([v25 isOnDisk])
        {
          v26 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v50 = useCopy;
            _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is usable", buf, 0xCu);
          }

          v27 = 1;
          goto LABEL_17;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_23;
        v32[3] = &unk_1E7C36F68;
        v33 = useCopy;
        v34 = v25;
        v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_23(v32);

        v28 = v33;
      }

      else
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_22;
        v35[3] = &unk_1E7C36F68;
        v36 = useCopy;
        v37 = v20;
        v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_22(v35);

        v28 = v36;
      }
    }

    else
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_21;
      v38[3] = &unk_1E7C36F68;
      v39 = useCopy;
      v40 = v15;
      v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_21(v38);

      v25 = v39;
    }

LABEL_17:

    goto LABEL_18;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke;
  v47[3] = &unk_1E7C36F40;
  v48 = useCopy;
  __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke(v47);
  v27 = 0;
  v9 = v48;
LABEL_20:

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its puzzle record is not cached", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_19(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 puzzleTypeID];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its puzzle type record is not cached, type=%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_20(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 dataResourceID];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its data resource is not cached, resource=%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_21(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 engineResourceID];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its engine resource is not cached, resource=%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_22(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 assetHandle];
    v7 = [v6 uniqueKey];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its data asset is not cached, asset=%{public}@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_23(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 assetHandle];
    v7 = [v6 uniqueKey];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its engine asset is not cached, asset=%{public}@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

@end