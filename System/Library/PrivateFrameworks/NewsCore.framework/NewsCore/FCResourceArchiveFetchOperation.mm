@interface FCResourceArchiveFetchOperation
- (BOOL)validateOperation;
- (FCResourceArchiveFetchOperation)initWithArchiveURL:(id)l context:(id)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)setDownloadTask:(uint64_t)task;
@end

@implementation FCResourceArchiveFetchOperation

- (FCResourceArchiveFetchOperation)initWithArchiveURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = FCResourceArchiveFetchOperation;
  v8 = [(FCOperation *)&v12 init];
  if (v8)
  {
    v9 = [lCopy copy];
    archiveURL = v8->_archiveURL;
    v8->_archiveURL = v9;

    objc_storeStrong(&v8->_context, context);
  }

  return v8;
}

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  if (self && self->_archiveURL)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resource archive fetch operation requires a URL"];
      v9 = 136315906;
      v10 = "[FCResourceArchiveFetchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCResourceArchiveFetchOperation.m";
      v13 = 1024;
      v14 = 81;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
      goto LABEL_9;
    }
  }

  if (self->_context)
  {
    v4 = 1;
    goto LABEL_12;
  }

LABEL_9:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resource archive fetch operation requires a context"];
    v9 = 136315906;
    v10 = "[FCResourceArchiveFetchOperation validateOperation]";
    v11 = 2080;
    v12 = "FCResourceArchiveFetchOperation.m";
    v13 = 1024;
    v14 = 85;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v4 = 0;
LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v4 & v3;
}

- (void)performOperation
{
  if (self)
  {
    archiveURL = self->_archiveURL;
  }

  else
  {
    archiveURL = 0;
  }

  v4 = [MEMORY[0x1E695AC18] requestWithURL:archiveURL];
  FCOperationFlagsApplyToURLRequest([(FCOperation *)self flags], v4);
  mEMORY[0x1E695AC78] = [MEMORY[0x1E695AC78] sharedSession];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__FCResourceArchiveFetchOperation_performOperation__block_invoke;
  v11[3] = &unk_1E7C3B7A0;
  v11[4] = self;
  v6 = [mEMORY[0x1E695AC78] downloadTaskWithRequest:v4 completionHandler:v11];
  [(FCResourceArchiveFetchOperation *)self setDownloadTask:v6];

  if (self)
  {
    downloadTask = self->_downloadTask;
  }

  else
  {
    downloadTask = 0;
  }

  [(NSURLSessionDownloadTask *)downloadTask addObserver:self forKeyPath:@"countOfBytesReceived" options:0 context:FCResourceArchiveFetchOperationKVOContext];
  progressHandler = [(FCResourceArchiveFetchOperation *)self progressHandler];

  if (progressHandler)
  {
    progressHandler2 = [(FCResourceArchiveFetchOperation *)self progressHandler];
    progressHandler2[2](0.0);
  }

  if (self)
  {
    [(FCOperation *)self associateChildOperation:self->_downloadTask];
    v10 = self->_downloadTask;
  }

  else
  {
    [0 associateChildOperation:0];
    v10 = 0;
  }

  [(NSURLSessionDownloadTask *)v10 resume];
}

void __51__FCResourceArchiveFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_2;
    v44 = &unk_1E7C36C58;
    v45 = *(a1 + 32);
    v46 = v6;
    [v45 finishedPerformingOperationWithError:v46];
  }

  else
  {
    v8 = *(a1 + 32);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_3;
    v39 = &unk_1E7C37750;
    v40 = v8;
    v9 = v37;
    v10 = v9;
    if (v8)
    {
      v36 = v9;
      v11 = a2;
      v12 = [v8 progressHandler];

      if (v12)
      {
        v13 = [v8 progressHandler];
        v13[2](0.85);
      }

      v14 = NSTemporaryDirectory();
      v15 = [MEMORY[0x1E696AFB0] UUID];
      v16 = [v15 UUIDString];
      v17 = [v14 stringByAppendingString:v16];

      v18 = [MEMORY[0x1E696AC08] defaultManager];
      [v18 createDirectoryAtPath:v17 withIntermediateDirectories:0 attributes:0 error:0];

      BOMCopierNew();
      v19 = [MEMORY[0x1E695DF70] array];
      BOMCopierSetUserData();
      BOMCopierSetCopyFileFinishedHandler();
      v52 = @"extractPKZip";
      v53[0] = MEMORY[0x1E695E118];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v22 = v21;
      [v11 fileSystemRepresentation];

      [v17 fileSystemRepresentation];
      v23 = BOMCopierCopyWithOptions();
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v25 = v24;
      BOMCopierFree();
      if (v23)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __80__FCResourceArchiveFetchOperation__unzipResourcesFromArchiveFileURL_completion___block_invoke;
        v48 = COERCE_DOUBLE(&unk_1E7C379C8);
        v10 = v36;
        v49 = v36;
        __80__FCResourceArchiveFetchOperation__unzipResourcesFromArchiveFileURL_completion___block_invoke(buf);
        v26 = v49;
      }

      else
      {
        v27 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = [v8 shortOperationDescription];
          v30 = [v19 count];
          *buf = 138543874;
          *&buf[4] = v29;
          *&buf[12] = 2048;
          *&buf[14] = v30;
          *&buf[22] = 2048;
          v48 = v25 - v22;
          _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully extracted %lu files from zip archive in %.2fs", buf, 0x20u);
        }

        v31 = [v8 progressHandler];

        if (v31)
        {
          v32 = [v8 progressHandler];
          v32[2](0.95);
        }

        v33 = [MEMORY[0x1E695DF70] array];
        v34 = [v8 maxConcurrentFetchCount];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __80__FCResourceArchiveFetchOperation__unzipResourcesFromArchiveFileURL_completion___block_invoke_28;
        v48 = COERCE_DOUBLE(&unk_1E7C3B7C8);
        v49 = v17;
        v50 = v8;
        v51 = v33;
        v26 = v33;
        [v19 fc_visitSubarraysWithMaxCount:v34 block:buf];
        v10 = v36;
        v38(v36, v26, 0);
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_4;
    v22 = &unk_1E7C36C58;
    v23 = *(a1 + 32);
    v24 = v5;
    [v23 finishedPerformingOperationWithError:v24];
  }

  else
  {
    v7 = *(a1 + 32);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_5;
    v17 = &unk_1E7C37750;
    v18 = v7;
    v8 = a2;
    v9 = &v14;
    if (v7)
    {
      v10 = [v8 fc_arrayByTransformingWithBlock:{&__block_literal_global_32, v14, v15, v16, v17, v18}];
      v11 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v10];
      [(FCFetchOperation *)v11 setShouldFailOnMissingObjects:1];
      -[FCAssetsFetchOperation setMaxConcurrentFetchCount:](v11, "setMaxConcurrentFetchCount:", [v7 maxConcurrentFetchCount]);
      v12 = [v7 interestTokenHandler];
      [(FCAssetsFetchOperation *)v11 setInterestTokenHandler:v12];

      v13 = [v7 archiveHandler];
      [(FCAssetsFetchOperation *)v11 setArchiveHandler:v13];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_2;
      v28[3] = &unk_1E7C3B810;
      v28[4] = v7;
      [(FCAssetsFetchOperation *)v11 setProgressHandler:v28];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_3;
      v25[3] = &unk_1E7C3B838;
      v27 = v9;
      v26 = v8;
      [(FCFetchOperation *)v11 setFetchCompletionBlock:v25];
      [v7 associateChildOperation:v11];
      [(FCOperation *)v11 start];
    }
  }
}

void __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = *(a1 + 32);
    v11 = v5;
    [v10 finishedPerformingOperationWithError:{v11, v9, 3221225472, __51__FCResourceArchiveFetchOperation_performOperation__block_invoke_6, &unk_1E7C36C58, v10}];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeStrong((v7 + 432), a2);
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }

    [v8 finishedPerformingOperationWithError:0];
  }
}

- (void)setDownloadTask:(uint64_t)task
{
  if (task)
  {
    objc_storeStrong((task + 424), a2);
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    downloadTask = self->_downloadTask;
  }

  else
  {
    downloadTask = 0;
  }

  [(NSURLSessionDownloadTask *)downloadTask removeObserver:self forKeyPath:@"countOfBytesReceived"];
  [(FCResourceArchiveFetchOperation *)self setDownloadTask:?];
  fetchCompletionHandler = [(FCResourceArchiveFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCResourceArchiveFetchOperation *)self fetchCompletionHandler];
    v7 = fetchCompletionHandler2;
    if (self)
    {
      resultResources = self->_resultResources;
    }

    else
    {
      resultResources = 0;
    }

    (*(fetchCompletionHandler2 + 16))(fetchCompletionHandler2, resultResources, errorCopy);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (FCResourceArchiveFetchOperationKVOContext == context)
  {
    if (self)
    {
      downloadTask = self->_downloadTask;
    }

    else
    {
      downloadTask = 0;
    }

    longLongValue = [(NSURLSessionDownloadTask *)downloadTask countOfBytesExpectedToReceive:path];
    if (longLongValue < 0)
    {
      objc_opt_class();
      if (self)
      {
        v9 = self->_downloadTask;
      }

      else
      {
        v9 = 0;
      }

      response = [(NSURLSessionDownloadTask *)v9 response];
      if (response)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = response;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      allHeaderFields = [v12 allHeaderFields];
      v14 = [allHeaderFields objectForKeyedSubscript:@"Content-Length"];

      longLongValue = [v14 longLongValue];
    }

    if (self)
    {
      v15 = self->_downloadTask;
    }

    else
    {
      v15 = 0;
    }

    countOfBytesReceived = [(NSURLSessionDownloadTask *)v15 countOfBytesReceived];
    progressHandler = [(FCResourceArchiveFetchOperation *)self progressHandler];

    if (progressHandler)
    {
      progressHandler2 = [(FCResourceArchiveFetchOperation *)self progressHandler];
      progressHandler2[2](countOfBytesReceived / longLongValue * 0.85 + 0.0);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = FCResourceArchiveFetchOperation;
    [(FCResourceArchiveFetchOperation *)&v19 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void __80__FCResourceArchiveFetchOperation__unzipResourcesFromArchiveFileURL_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_unzipFailedErrorWithErrorCode:*__error()];
  (*(v1 + 16))(v1, 0, v2);
}

void __80__FCResourceArchiveFetchOperation__unzipResourcesFromArchiveFileURL_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v24 = *v26;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * v5);
        v7 = [*(a1 + 32) stringByAppendingPathComponent:v6];
        v8 = *(a1 + 40);
        if (v8)
        {
          v8 = v8[52];
        }

        v9 = v8;
        v10 = [v9 internalContentContext];
        v11 = [v10 contentDatabase];
        v12 = [v11 permanentURLForRecordID:v6 field:3];

        v13 = *(a1 + 40);
        if (v13)
        {
          v14 = *(v13 + 416);
        }

        else
        {
          v14 = 0;
        }

        v15 = [v14 assetManager];
        v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
        v17 = [v15 assetHandleForURL:v12 prefetchedFileURL:v16 importMethod:1 lifetimeHint:0];

        v18 = [FCResource alloc];
        v19 = [MEMORY[0x1E695DF00] date];
        v20 = [(FCResource *)v18 initWithResourceID:v6 assetHandle:v17 fetchDate:v19];

        [*(a1 + 48) addObject:v20];
        ++v5;
      }

      while (v4 != v5);
      v21 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v4 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_2(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) progressHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) progressHandler];
    v5[2](a2 * 0.05 + 0.95);
  }
}

void __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_4;
    v5[3] = &unk_1E7C37778;
    v7 = *(a1 + 40);
    v6 = v3;
    __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_4(v5);
  }

  else
  {
    v4 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

void __77__FCResourceArchiveFetchOperation__ensureResourcesAreReadyForUse_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, v2);
}

@end