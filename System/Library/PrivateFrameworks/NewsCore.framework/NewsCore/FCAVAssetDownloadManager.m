@interface FCAVAssetDownloadManager
- (FCAVAssetDownloadManager)init;
- (id)_handleAssetDownloadFromNetwork:(void *)a3 completionHandler:;
- (id)_restoreBackgroundDownloadsWithCompletionHandler:(id)a3;
- (id)downloadAsset:(void *)a3 completionHandler:;
- (id)initWithAssetCache:(void *)a3 keyCache:(void *)a4 networkReachability:;
- (id)interestTokenForCachedAsset:(id *)a1;
- (uint64_t)_isAssetInCache:(uint64_t)a1;
- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_callCompletionHandlersForAssetID:(void *)a3 interestToken:(void *)a4 error:;
- (void)_completeRequestForAssetID:(void *)a3 withDownloadedURL:(void *)a4 remoteURL:(void *)a5 error:;
- (void)_ensureAssetIsPurgeable:(uint64_t)a1;
- (void)restoreBackgroundDownloadsWithCompletionHandler:(uint64_t)a1;
@end

@implementation FCAVAssetDownloadManager

- (FCAVAssetDownloadManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetDownloadManager init]";
    v10 = 2080;
    v11 = "FCAVAssetDownloadManager.m";
    v12 = 1024;
    v13 = 96;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetDownloadManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithAssetCache:(void *)a3 keyCache:(void *)a4 networkReachability:
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability"];
    *buf = 136315906;
    v32 = "[FCAVAssetDownloadManager initWithAssetCache:keyCache:networkReachability:]";
    v33 = 2080;
    v34 = "FCAVAssetDownloadManager.m";
    v35 = 1024;
    v36 = 103;
    v37 = 2114;
    v38 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v30.receiver = a1;
  v30.super_class = FCAVAssetDownloadManager;
  v12 = objc_msgSendSuper2(&v30, sel_init);
  if (v12)
  {
    v13 = v12;
    objc_storeStrong(v12 + 1, a2);
    objc_storeStrong(v13 + 2, a3);
    objc_storeStrong(v13 + 3, a4);
    v14 = objc_alloc_init(FCThreadSafeMutableDictionary);
    v15 = v13[6];
    v13[6] = v14;

    v16 = [[FCAsyncOnceOperation alloc] initWithTarget:v13 selector:sel__restoreBackgroundDownloadsWithCompletionHandler_];
    v17 = v13[4];
    v13[4] = v16;

    v18 = objc_alloc(MEMORY[0x1E69B68D8]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke;
    v28[3] = &unk_1E7C36F98;
    v19 = v13;
    v29 = v19;
    v20 = [v18 initWithConstructor:v28];
    v21 = v19[5];
    v19[5] = v20;

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke_2;
    v26[3] = &unk_1E7C36EA0;
    v22 = v19;
    v27 = v22;
    [FCTaskScheduler scheduleLowPriorityBlock:v26];
  }

  else
  {
LABEL_7:
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

id __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:@"com.apple.news.avasset"];
  [v2 setURLCache:0];
  [v2 setDiscretionary:0];
  [v2 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
  v3 = MEMORY[0x1E6987E58];
  v4 = *(a1 + 32);
  v5 = FCAVWorkOperationQueue();
  v6 = [v3 sessionWithConfiguration:v2 assetDownloadDelegate:v4 delegateQueue:v5];

  return v6;
}

void __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCURLForAVAssetDownloads();
  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:0];

    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 pathExtension];
          v11 = [v10 isEqualToString:@"movpkg"];

          if (v11)
          {
            [(FCAVAssetDownloadManager *)*(a1 + 32) _ensureAssetIsPurgeable:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_ensureAssetIsPurgeable:(uint64_t)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v10 = 67590;
      if (fsctl([v3 fileSystemRepresentation], 0xC0084A44uLL, &v10, 0))
      {
        v5 = FCAVAssetLog;
        if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
        {
          v7 = v5;
          v8 = [v4 path];
          v9 = [MEMORY[0x1E696AD98] numberWithInt:*__error()];
          *buf = 138543618;
          v12 = v8;
          v13 = 2114;
          v14 = v9;
          _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "AV asset download manager failed to mark asset as purgeable, URL=%{public}@, errno=%{public}@", buf, 0x16u);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)restoreBackgroundDownloadsWithCompletionHandler:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = *(a1 + 32);
    v4 = dispatch_get_global_queue(9, 0);
    v5 = [v3 executeWithCallbackQueue:v4 completionHandler:v6];
  }
}

- (id)interestTokenForCachedAsset:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = a1[1];
    v5 = a2;
    v6 = [v5 identifier];
    v7 = [v4 interestTokenForAssetIdentifier:v6];

    v8 = [v5 identifier];

    if ([(FCAVAssetDownloadManager *)v2 _isAssetInCache:v8])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v2 = v9;
  }

  return v2;
}

- (uint64_t)_isAssetInCache:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 8) containsAssetWithIdentifier:v3])
    {
      v4 = [*(a1 + 8) contentKeyIdentifiersForAssetIdentifier:v3];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_32;
      v11[3] = &unk_1E7C38B40;
      v11[4] = a1;
      v5 = [v4 fc_arrayOfObjectsPassingTest:v11];
      if ([v5 count])
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_2;
        v8[3] = &unk_1E7C36F68;
        v9 = v3;
        v10 = v5;
        v6 = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_2(v8);
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke;
      v12[3] = &unk_1E7C36F40;
      v13 = v3;
      __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke(v12);
      v6 = 0;
      v4 = v13;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)downloadAsset:(void *)a3 completionHandler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(FCAVAssetDownloadManager *)a1 interestTokenForCachedAsset:v5];
    if (v7)
    {
      v10 = v6;
      v9 = v7;
      v10[2](v10, v9, 0);

      a1 = 0;
    }

    else
    {
      a1 = [(FCAVAssetDownloadManager *)a1 _handleAssetDownloadFromNetwork:v5 completionHandler:v6];
    }
  }

  return a1;
}

- (id)_handleAssetDownloadFromNetwork:(void *)a3 completionHandler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__47;
    v26 = __Block_byref_object_dispose__47;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__35;
    v20 = __Block_byref_object_dispose__36;
    v21 = 0;
    v7 = a1[6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke;
    v10[3] = &unk_1E7C41AE8;
    v11 = v5;
    v14 = &v22;
    v12 = a1;
    v13 = v6;
    v15 = &v16;
    [v7 readWriteWithAccessor:v10];

    v8 = v17[5];
    if (v8)
    {
      (*(v8 + 16))();
    }

    a1 = v23[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  return a1;
}

- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  [(FCAVAssetDownloadManager *)self _ensureAssetIsPurgeable:v8];
  v9 = [v7 taskDescription];

  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [v7 description];
    v17 = [v15 initWithFormat:@"AVAssetDownloadTask %@ is missing a task description", v16];
    *buf = 136315906;
    v19 = "[FCAVAssetDownloadManager URLSession:assetDownloadTask:didFinishDownloadingToURL:]";
    v20 = 2080;
    v21 = "FCAVAssetDownloadManager.m";
    v22 = 1024;
    v23 = 192;
    v24 = 2114;
    v25 = v17;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTaskDescription) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = [v7 taskDescription];
  v11 = [v7 URLAsset];
  v12 = [v11 URL];
  v13 = [v7 error];
  [(FCAVAssetDownloadManager *)self _completeRequestForAssetID:v10 withDownloadedURL:v8 remoteURL:v12 error:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_completeRequestForAssetID:(void *)a3 withDownloadedURL:(void *)a4 remoteURL:(void *)a5 error:
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a1 && v9)
  {
    if (v12)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_2;
      v34[3] = &unk_1E7C376A0;
      v35 = v9;
      v36 = v13;
      v37 = a1;
      __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_2(v34);

      v14 = v35;
LABEL_14:

      goto LABEL_15;
    }

    v15 = *(a1 + 8);
    v16 = [v15 interestTokenForAssetIdentifier:v9];

    v17 = [v10 pathExtension];
    v18 = [v11 pathExtension];
    if (([v18 isEqualToString:@"m3u8"] & 1) == 0)
    {
      v19 = [v11 pathExtension];
      v20 = [v19 isEqualToString:@"m3u"];

      if (v20)
      {
LABEL_9:
        v21 = FCAVAssetLog;
        if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v9;
          _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "AV asset download succeeded for assetID=%{public}@", &buf, 0xCu);
        }

        v14 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v10 options:0];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_52;
        v27[3] = &unk_1E7C41B10;
        v28 = v9;
        v29 = a1;
        v30 = v10;
        v31 = v11;
        v32 = v17;
        v33 = v16;
        v22 = v16;
        v23 = v17;
        v24 = v27;
        v25 = v24;
        if (v14)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v39 = __78__AVURLAsset_FCAdditions__fc_fetchContentKeyIdentifiersWithCompletionHandler___block_invoke;
          v40 = &unk_1E7C37BC0;
          v41 = v14;
          v42 = v24;
          [v14 loadValuesAsynchronouslyForKeys:&unk_1F2E6F9F0 completionHandler:&buf];
        }

        goto LABEL_14;
      }

      [v11 pathExtension];
      v17 = v18 = v17;
    }

    goto LABEL_9;
  }

LABEL_15:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = a5;
    v8 = a4;
    v9 = objc_opt_class();
    v10 = FCCheckedDynamicCast(v9, v8);

    v11 = [v10 taskDescription];

    if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = [v10 description];
      v18 = [v16 initWithFormat:@"AVAssetDownloadTask %@ is missing a task description", v17];
      *buf = 136315906;
      v20 = "[FCAVAssetDownloadManager URLSession:task:didCompleteWithError:]";
      v21 = 2080;
      v22 = "FCAVAssetDownloadManager.m";
      v23 = 1024;
      v24 = 205;
      v25 = 2114;
      v26 = v18;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTaskDescription) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v12 = [v10 taskDescription];
    v13 = [v10 URLAsset];
    v14 = [v13 URL];
    [(FCAVAssetDownloadManager *)self _completeRequestForAssetID:v12 withDownloadedURL:0 remoteURL:v14 error:v7];
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset does not have its content in the cache assetID=%{public}@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_32(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[2];
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = v3;
  v6 = [v4 URLWithString:a2];
  v7 = [v5 assetKeyForURI:v6];

  return v7 == 0;
}

uint64_t __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset does not have all its keys in the cache assetID=%{public}@, missing=%{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_2;
    v54[3] = &unk_1E7C41A98;
    v57 = *(a1 + 56);
    v55 = v5;
    v56 = *(a1 + 48);
    __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_2(v54);

    v6 = v55;
  }

  else
  {
    v6 = [*(a1 + 32) asset];
    if (*(a1 + 40) && [(FCAVAsset *)*(a1 + 32) isHLS])
    {
      v7 = MEMORY[0x1E6987E40];
      v8 = [*(a1 + 32) identifier];
      v9 = [v7 downloadConfigurationWithAsset:v6 title:v8];

      v10 = FCDownloadDestinationURLForAsset(*(a1 + 32));
      [(FCAssetDownloadOperation *)v9 _setDestinationURL:v10];

      v11 = *(a1 + 40);
      if (v11)
      {
        v11 = v11[5];
      }

      v12 = v11;
      v13 = [v12 value];
      v14 = [v13 assetDownloadTaskWithConfiguration:v9];

      v15 = [*(a1 + 32) identifier];
      [v14 setTaskDescription:v15];

      v16 = [FCAVAssetDownload alloc];
      v17 = [*(a1 + 32) identifier];
      v18 = [(FCAVAssetDownload *)&v16->super.isa initWithAssetID:v17 underlyingOperation:v14];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_3;
      aBlock[3] = &unk_1E7C36EA0;
      v53 = v14;
      v21 = v14;
      v22 = _Block_copy(aBlock);
      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    else
    {
      v25 = [FCAssetDownloadOperation alloc];
      v26 = *(a1 + 40);
      if (v26)
      {
        v27 = *(v26 + 24);
      }

      else
      {
        v27 = 0;
      }

      v28 = [(FCAssetDownloadOperation *)v25 initWithNetworkReachability:v27];
      v29 = [v6 URL];
      [(FCAssetDownloadOperation *)v28 setURL:v29];

      [(FCAssetDownloadOperation *)v28 setDownloadDestination:0];
      v30 = [*(a1 + 32) identifier];
      [(FCAssetDownloadOperation *)v28 setLoggingKey:v30];

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_4;
      v49[3] = &unk_1E7C41AC0;
      v46 = *(a1 + 32);
      v31 = v46.i64[0];
      v50 = vextq_s8(v46, v46, 8uLL);
      v51 = v6;
      [(FCAssetDownloadOperation *)v28 setFileDownloadCompletionHandler:v49];
      v32 = [FCAVAssetDownload alloc];
      v33 = [*(a1 + 32) identifier];
      v34 = [(FCAVAssetDownload *)&v32->super.isa initWithAssetID:v33 underlyingOperation:v28];
      v35 = *(*(a1 + 56) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_5;
      v47[3] = &unk_1E7C36EA0;
      v48 = v28;
      v9 = v28;
      v37 = _Block_copy(v47);
      v38 = *(*(a1 + 64) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;
    }

    v40 = *(*(*(a1 + 56) + 8) + 40);
    if (v40)
    {
      v40 = v40[3];
    }

    v41 = *(a1 + 48);
    v42 = v40;
    v43 = _Block_copy(v41);
    [v42 fc_safelyAddObject:v43];

    v44 = *(*(*(a1 + 56) + 8) + 40);
    v45 = [*(a1 + 32) identifier];
    [v3 setObject:v44 forKeyedSubscript:v45];
  }
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = _Block_copy(v3);
  [v4 fc_safelyAddObject:v5];
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  v9 = a2;
  v11 = [v7 identifier];
  v10 = [*(a1 + 48) URL];
  [(FCAVAssetDownloadManager *)v6 _completeRequestForAssetID:v11 withDownloadedURL:v9 remoteURL:v10 error:v8];
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v2 addOperation:*(a1 + 32)];
}

void __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset download failed for assetID=%{public}@ with error=%{public}@", &v6, 0x16u);
  }

  [(FCAVAssetDownloadManager *)*(a1 + 48) _callCompletionHandlersForAssetID:0 interestToken:*(a1 + 40) error:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_callCompletionHandlersForAssetID:(void *)a3 interestToken:(void *)a4 error:
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__47;
    v27 = __Block_byref_object_dispose__47;
    v28 = 0;
    v10 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__FCAVAssetDownloadManager__callCompletionHandlersForAssetID_interestToken_error___block_invoke;
    v20[3] = &unk_1E7C3C0E0;
    v22 = &v23;
    v21 = v7;
    [v10 readWriteWithAccessor:v20];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v24[5];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v29 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v16 + 1) + 8 * v14) + 16))(*(*(&v16 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v29 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v23, 8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_52(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "AV asset download will save assetID=%{public}@ with keyIdentifiers=%{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  [v7 adoptFileAtURL:*(a1 + 48) forAssetIdentifier:*(a1 + 32) remoteURL:*(a1 + 56) contentKeyIdentifiers:v3 extension:*(a1 + 64)];
  [(FCAVAssetDownloadManager *)*(a1 + 40) _callCompletionHandlersForAssetID:*(a1 + 72) interestToken:0 error:?];

  v8 = *MEMORY[0x1E69E9840];
}

void __82__FCAVAssetDownloadManager__callCompletionHandlersForAssetID_interestToken_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  v4 = [v11 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [v11 removeObjectForKey:*(a1 + 32)];
}

- (id)_restoreBackgroundDownloadsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "AV asset download manager will look for background downloads to restore", buf, 2u);
  }

  if (self)
  {
    URLSession = self->_URLSession;
  }

  else
  {
    URLSession = 0;
  }

  v7 = URLSession;
  v8 = [(NFLazy *)v7 value];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke;
  v16 = &unk_1E7C41B38;
  v17 = self;

  v18 = v4;
  v9 = v4;
  [v8 getAllTasksWithCompletionHandler:&v13];

  v10 = [FCPseudoOperation alloc];
  v11 = [(FCPseudoOperation *)v10 initWithCancelBlock:0 priorityBlock:0, v13, v14, v15, v16, v17];

  return v11;
}

void __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = &FCAVAssetLog;
  v5 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v32 = [v3 count];
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "AV asset download manager found %lu background downloads to restore", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        objc_opt_class();
        if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v13 = v12;
          v14 = [v13 taskDescription];

          if (v14)
          {
            v15 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              [v13 taskDescription];
              v17 = a1;
              v19 = v18 = v4;
              *buf = 138543362;
              v32 = v19;
              _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "AV asset download manager will restore background download for asset ID %{public}@", buf, 0xCu);

              v4 = v18;
              a1 = v17;
            }

            v20 = *(a1 + 32);
            if (v20)
            {
              v21 = *(v20 + 48);
            }

            else
            {
              v21 = 0;
            }

            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke_54;
            v24[3] = &unk_1E7C36EC8;
            v13 = v13;
            v25 = v13;
            [v21 readWriteWithAccessor:v24];
          }
        }

        else
        {
          v13 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v22 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v9 = v22;
    }

    while (v22);
  }

  (*(*(a1 + 40) + 16))();
  v23 = *MEMORY[0x1E69E9840];
}

void __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCAVAssetDownload alloc];
  v7 = [*(a1 + 32) taskDescription];
  v5 = [(FCAVAssetDownload *)&v4->super.isa initWithAssetID:v7 underlyingOperation:*(a1 + 32)];
  v6 = [*(a1 + 32) taskDescription];
  [v3 setObject:v5 forKeyedSubscript:v6];
}

@end