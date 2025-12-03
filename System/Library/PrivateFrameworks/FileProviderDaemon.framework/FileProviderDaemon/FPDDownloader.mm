@interface FPDDownloader
- (FPDDomain)domain;
- (FPDDownloader)initWithDomain:(id)domain callbackQueue:(id)queue;
- (void)_cleanup;
- (void)_createChildItem:(id)item;
- (void)_didDownloadItem:(id)item withError:(id)error;
- (void)_downloadItem:(id)item recursively:(unint64_t)recursively retryCount:(int)count request:(id)request withCompletion:(id)completion;
- (void)_logRootProgress;
- (void)_nonRecursiveDownloadOfItem:(id)item request:(id)request perItemCompletion:(id)completion withCompletion:(id)withCompletion;
- (void)_progressComputationPreflightForRecursiveRoot:(id)root completion:(id)completion;
- (void)_recursiveDownloadOfItem:(id)item request:(id)request recursively:(unint64_t)recursively perItemCompletion:(id)completion withCompletion:(id)withCompletion;
- (void)_stopTrackingFileURLs;
- (void)cancel;
- (void)dealloc;
- (void)downloadURL:(id)l recursively:(unint64_t)recursively request:(id)request withCompletion:(id)completion;
@end

@implementation FPDDownloader

- (void)dealloc
{
  [(FPDDownloader *)self _cleanup];
  v3.receiver = self;
  v3.super_class = FPDDownloader;
  [(FPDDownloader *)&v3 dealloc];
}

- (void)cancel
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloader cancel];
  }

  [(NSProgress *)self->_cancellationProgress cancel];
}

- (FPDDownloader)initWithDomain:(id)domain callbackQueue:(id)queue
{
  domainCopy = domain;
  queueCopy = queue;
  v8 = [(FPDDownloader *)self init];
  if (v8)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [FPDDownloader initWithDomain:callbackQueue:];
    }

    objc_storeWeak(&v8->_domain, domainCopy);
    objc_storeStrong(&v8->_callbackQueue, queue);
    v10 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    cancellationProgress = v8->_cancellationProgress;
    v8->_cancellationProgress = v10;

    [(NSProgress *)v8->_cancellationProgress setCancellable:1];
    v12 = objc_opt_new();
    parentToChildMap = v8->_parentToChildMap;
    v8->_parentToChildMap = v12;

    v14 = objc_opt_new();
    childProxies = v8->_childProxies;
    v8->_childProxies = v14;
  }

  return v8;
}

- (void)_cleanup
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloader _cleanup];
  }

  progress = [(FPDDownloader *)self progress];
  [progress unpublish];

  [(FPDDownloader *)self _stopTrackingFileURLs];
  [(NSObservation *)self->_observation finishObserving];
  observation = self->_observation;
  self->_observation = 0;
}

- (void)_progressComputationPreflightForRecursiveRoot:(id)root completion:(id)completion
{
  rootCopy = root;
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(NSProgress *)self->_progress setCancellationHandler:&__block_literal_global];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_2;
  aBlock[3] = &unk_1E83BDDE8;
  aBlock[4] = self;
  objc_copyWeak(&v15, &location);
  v8 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_4;
  v12[3] = &unk_1E83BDDE8;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  v9 = _Block_copy(v12);
  v10 = +[FPDDownloadManager sharedInstance];
  v11 = objc_loadWeakRetained(&location);
  [v10 progressComputationPreflightForRecursiveRoot:rootCopy downloader:v11 itemProgressNeedsSetup:v9 itemProgressSetup:v8 completion:completionCopy];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_3;
  v6[3] = &unk_1E83BDDC0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _createChildItem:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_5;
  v6[3] = &unk_1E83BDDC0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __74__FPDDownloader__progressComputationPreflightForRecursiveRoot_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[2];
    objc_sync_enter(v3);
    v4 = [*(a1 + 32) parentItemID];
    v5 = [v6[2] objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = objc_opt_new();
    }

    [v5 addObject:*(a1 + 32)];
    [v6[2] setObject:v5 forKeyedSubscript:v4];

    objc_sync_exit(v3);
    WeakRetained = v6;
  }
}

- (void)_stopTrackingFileURLs
{
  v8 = *MEMORY[0x1E69E9840];
  progress = [self progress];
  fileURL = [progress fileURL];
  v6 = 138412290;
  v7 = fileURL;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: Will stop tracking all urls for root URL %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createChildItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_new();
  fileURL = [itemCopy fileURL];
  [v5 setFileURL:fileURL];

  progress = [(FPDDownloader *)self progress];
  documentSize = [itemCopy documentSize];
  [progress addChild:v5 withPendingUnitCount:{objc_msgSend(documentSize, "integerValue")}];

  fileURL2 = [itemCopy fileURL];
  [v5 startTrackingFileURL:fileURL2 kind:*MEMORY[0x1E696A848] allowReadPausedProgressFromDisk:0];

  childProxies = self->_childProxies;
  itemID = [itemCopy itemID];

  [(NSMutableDictionary *)childProxies setObject:v5 forKey:itemID];
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(FPDDownloader *)self _createChildItem:v12];
  }
}

- (void)_logRootProgress
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloader _logRootProgress];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E696ADA8];
  progress = [(FPDDownloader *)self progress];
  v6 = [v4 keyPathWithRootObject:progress path:"fractionCompleted"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__FPDDownloader__logRootProgress__block_invoke;
  v9[3] = &unk_1E83BDE10;
  objc_copyWeak(&v10, &location);
  v9[4] = v12;
  v7 = [v6 addObserverBlock:v9];
  observation = self->_observation;
  self->_observation = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(v12, 8);
}

void __33__FPDDownloader__logRootProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained progress];
    v5 = [v4 fileCompletedCount];
    v6 = [v5 unsignedIntegerValue];
    v7 = *(*(*(a1 + 32) + 8) + 24);

    if (v6 != v7)
    {
      v8 = [v3 progress];
      v9 = [v8 fileCompletedCount];
      *(*(*(a1 + 32) + 8) + 24) = [v9 unsignedIntegerValue];

      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __33__FPDDownloader__logRootProgress__block_invoke_cold_1(v3);
      }
    }
  }
}

- (void)downloadURL:(id)l recursively:(unint64_t)recursively request:(id)request withCompletion:(id)completion
{
  lCopy = l;
  requestCopy = request;
  completionCopy = completion;
  v13 = +[FPDDownloadManager sharedInstance];
  domain = [(FPDDownloader *)self domain];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__FPDDownloader_downloadURL_recursively_request_withCompletion___block_invoke;
  v18[3] = &unk_1E83BDE38;
  v19 = lCopy;
  selfCopy = self;
  v22 = completionCopy;
  recursivelyCopy = recursively;
  v21 = requestCopy;
  v15 = requestCopy;
  v16 = completionCopy;
  v17 = lCopy;
  [v13 retrieveFPItemForURL:v17 domain:domain request:v15 completion:v18];
}

void __64__FPDDownloader_downloadURL_recursively_request_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__FPDDownloader_downloadURL_recursively_request_withCompletion___block_invoke_cold_1(v6, a1);
    }

    [*(a1 + 40) _cleanup];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [v5 fileURL];

    if (!v8)
    {
      [v5 setFileURL:*(a1 + 32)];
    }

    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __64__FPDDownloader_downloadURL_recursively_request_withCompletion___block_invoke_cold_2(v5, a1);
    }

    [*(a1 + 40) downloadItem:v5 recursively:*(a1 + 64) request:*(a1 + 48) withCompletion:*(a1 + 56)];
  }
}

- (void)_downloadItem:(id)item recursively:(unint64_t)recursively retryCount:(int)count request:(id)request withCompletion:(id)completion
{
  itemCopy = item;
  requestCopy = request;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke;
  aBlock[3] = &unk_1E83BDE88;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_3;
  v20[3] = &unk_1E83BDED8;
  v20[4] = self;
  v16 = itemCopy;
  v21 = v16;
  recursivelyCopy = recursively;
  countCopy = count;
  v17 = requestCopy;
  v22 = v17;
  v23 = completionCopy;
  v18 = completionCopy;
  v19 = _Block_copy(v20);
  if (recursively && (([v16 isFolder] & 1) != 0 || objc_msgSend(v16, "isPackage")))
  {
    [(FPDDownloader *)self _recursiveDownloadOfItem:v16 request:v17 recursively:recursively perItemCompletion:v15 withCompletion:v19];
  }

  else
  {
    [(FPDDownloader *)self _nonRecursiveDownloadOfItem:v16 request:v17 perItemCompletion:v15 withCompletion:v19];
  }
}

void __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_2;
  block[3] = &unk_1E83BDE60;
  block[4] = v8;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4;
  block[3] = &unk_1E83BDEB0;
  v13 = v3;
  v5 = *(a1 + 40);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 32);
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_1(a1, v2, v3);
  }

  if (!v2)
  {
    v4 = [*(a1 + 48) progress];
    v5 = [v4 fileTotalCount];

    if (v5)
    {
      v6 = [*(a1 + 48) progress];
      v7 = [v6 fileTotalCount];
      v8 = [*(a1 + 48) progress];
      [v8 setFileCompletedCount:v7];
    }
  }

  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_2(a1);
  }

  [*(a1 + 48) _cleanup];
  v10 = [v2 domain];
  if (![v10 isEqual:*MEMORY[0x1E6967210]])
  {
    goto LABEL_21;
  }

  v11 = [v2 code];

  if (v11 != 14)
  {
LABEL_22:
    (*(*(a1 + 64) + 16))();
    goto LABEL_23;
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
LABEL_19:
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_4(a1, v10);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (*(a1 + 80) > 49)
  {
    if (v12 == 1)
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] downloader: tree changes too much when downloading its content, lying about download", v15, 2u);
      }

      v2 = 0;
    }

    goto LABEL_19;
  }

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_3();
  }

  [*(a1 + 48) _downloadItem:*(a1 + 40) recursively:*(a1 + 72) retryCount:(*(a1 + 80) + 1) request:*(a1 + 56) withCompletion:*(a1 + 64)];
LABEL_23:
}

- (void)_nonRecursiveDownloadOfItem:(id)item request:(id)request perItemCompletion:(id)completion withCompletion:(id)withCompletion
{
  itemCopy = item;
  requestCopy = request;
  completionCopy = completion;
  withCompletionCopy = withCompletion;
  objc_initWeak(&location, self);
  v14 = +[FPDDownloadManager sharedInstance];
  v15 = objc_loadWeakRetained(&location);
  [v14 downloadItem:itemCopy recursively:0 downloader:v15 request:requestCopy perItemCompletion:completionCopy withCompletion:withCompletionCopy];

  objc_destroyWeak(&location);
}

- (void)_recursiveDownloadOfItem:(id)item request:(id)request recursively:(unint64_t)recursively perItemCompletion:(id)completion withCompletion:(id)withCompletion
{
  itemCopy = item;
  requestCopy = request;
  completionCopy = completion;
  withCompletionCopy = withCompletion;
  objc_initWeak(&location, self);
  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
  progress = self->_progress;
  self->_progress = v16;

  [(NSProgress *)self->_progress fp_setFileOperationKind:*MEMORY[0x1E696A848]];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__FPDDownloader__recursiveDownloadOfItem_request_recursively_perItemCompletion_withCompletion___block_invoke;
  v22[3] = &unk_1E83BDF28;
  v22[4] = self;
  v18 = itemCopy;
  v23 = v18;
  v27[1] = recursively;
  objc_copyWeak(v27, &location);
  v19 = requestCopy;
  v24 = v19;
  v20 = completionCopy;
  v25 = v20;
  v21 = withCompletionCopy;
  v26 = v21;
  [(FPDDownloader *)self _progressComputationPreflightForRecursiveRoot:v18 completion:v22];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __95__FPDDownloader__recursiveDownloadOfItem_request_recursively_perItemCompletion_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _logRootProgress];
  v2 = +[FPDDownloadManager sharedInstance];
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__FPDDownloader__recursiveDownloadOfItem_request_recursively_perItemCompletion_withCompletion___block_invoke_2;
  v10[3] = &unk_1E83BDF00;
  v12 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = *(a1 + 80);
  v11 = v8;
  v13[1] = v9;
  objc_copyWeak(v13, (a1 + 72));
  [v2 downloadItem:v3 recursively:v4 downloader:WeakRetained request:v6 perItemCompletion:v7 withCompletion:v10];
  objc_destroyWeak(v13);
}

void __95__FPDDownloader__recursiveDownloadOfItem_request_recursively_perItemCompletion_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = +[FPDDownloadManager sharedInstance];
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v8 verifyIfSubtreeIsFullyMaterializedBelowItem:v5 recursively:v6 downloader:WeakRetained completion:*(a1 + 40)];
  }
}

- (void)_didDownloadItem:(id)item withError:(id)error
{
  v55 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  errorCopy = error;
  if (errorCopy)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(FPDDownloader *)itemCopy _didDownloadItem:errorCopy withError:v5];
    }
  }

  if ([itemCopy isFolder])
  {
    v6 = self->_parentToChildMap;
    objc_sync_enter(v6);
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      itemID = [itemCopy itemID];
      identifier = [itemID identifier];
      fileURL = [itemCopy fileURL];
      *buf = 138412546;
      v52 = identifier;
      v53 = 2112;
      v54 = fileURL;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: Finished downloading folder (%@) %@.", buf, 0x16u);
    }

    parentToChildMap = self->_parentToChildMap;
    itemID2 = [itemCopy itemID];
    v10 = [(NSMutableDictionary *)parentToChildMap objectForKeyedSubscript:itemID2];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v12)
    {
      v13 = *v47;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          fileURL2 = [v15 fileURL];
          v17 = fileURL2 == 0;

          if (v17)
          {
            fileURL3 = [itemCopy fileURL];
            filename = [v15 filename];
            v20 = [fileURL3 URLByAppendingPathComponent:filename isDirectory:{objc_msgSend(v15, "isFolder")}];

            v21 = fp_current_or_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v23 = v6;
              fileURL4 = [itemCopy fileURL];
              filename2 = [v15 filename];
              *buf = 138412546;
              v52 = fileURL4;
              v53 = 2112;
              v54 = filename2;
              _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] downloader: folder %@ child filename %@.", buf, 0x16u);

              v6 = v23;
            }

            [v15 setFileURL:v20];
          }

          fileURL5 = [v15 fileURL];

          if (fileURL5)
          {
            [(FPDDownloader *)self _createChildItem:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v12);
    }

    v26 = self->_parentToChildMap;
    itemID3 = [itemCopy itemID];
    [(NSMutableDictionary *)v26 removeObjectForKey:itemID3];

    objc_sync_exit(v6);
  }

  else
  {
    childProxies = self->_childProxies;
    itemID4 = [itemCopy itemID];
    v6 = [(NSMutableDictionary *)childProxies objectForKeyedSubscript:itemID4];

    if (v6)
    {
      v30 = errorCopy == 0;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      [(NSMutableDictionary *)v6 stopTrackingIfStarted];
      v31 = self->_childProxies;
      itemID5 = [itemCopy itemID];
      [(NSMutableDictionary *)v31 removeObjectForKey:itemID5];

      v33 = MEMORY[0x1E696AD98];
      progress = [(FPDDownloader *)self progress];
      fileCompletedCount = [progress fileCompletedCount];
      v36 = [v33 numberWithInt:{objc_msgSend(fileCompletedCount, "intValue") + 1}];
      progress2 = [(FPDDownloader *)self progress];
      [progress2 setFileCompletedCount:v36];

      v38 = fp_current_or_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [(FPDDownloader *)itemCopy _didDownloadItem:v6 withError:v38];
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (FPDDomain)domain
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);

  return WeakRetained;
}

- (void)_createChildItem:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 progress];
  v5 = [v4 fileURL];
  v6 = [v5 fp_shortDescription];
  v7 = [a1 progress];
  v9 = 138412546;
  v10 = v6;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: Added child %@\n %@@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __33__FPDDownloader__logRootProgress__block_invoke_cold_1(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 progress];
  v3 = [v2 fileURL];
  v4 = [a1 progress];
  v5 = [v4 fileCompletedCount];
  v6 = [a1 progress];
  v7 = [v6 fileTotalCount];
  v8 = [a1 progress];
  v9 = [v8 localizedAdditionalDescription];
  v10 = [a1 progress];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_1CEFC7000, v11, v12, "[DEBUG] downloader: %@\n %@ / %@ files: %@\n%@", v13, v14, v15, v16, v18);

  v17 = *MEMORY[0x1E69E9840];
}

void __64__FPDDownloader_downloadURL_recursively_request_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_ERROR, "[ERROR] downloader: Error %@ trying to retrieve item for URL %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __64__FPDDownloader_downloadURL_recursively_request_withCompletion___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3_2();
  _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: Retrieved item %@ for URL %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v4;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: finished full download of root %@ (error: %@)", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 48) progress];
  v3 = [v2 fileURL];
  v4 = [*(a1 + 48) progress];
  v5 = [v4 fileCompletedCount];
  v6 = [*(a1 + 48) progress];
  v7 = [v6 fileTotalCount];
  v8 = [*(a1 + 48) progress];
  v9 = [v8 localizedAdditionalDescription];
  v10 = [*(a1 + 48) progress];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_1CEFC7000, v11, v12, "[DEBUG] downloader final progress: %@\n %@ / %@ files: %@\n%@", v13, v14, v15, v16, v18);

  v17 = *MEMORY[0x1E69E9840];
}

void __77__FPDDownloader__downloadItem_recursively_retryCount_request_withCompletion___block_invoke_4_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: tree changed during download, failing since we're at our %dth retry", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_didDownloadItem:(NSObject *)a3 withError:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 itemID];
  v6 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = v5;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] downloader: failed to download item %@ : %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didDownloadItem:(NSObject *)a3 withError:.cold.2(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 fileURL];
  v6 = [a2 localizedAdditionalDescription];
  v9 = 138412802;
  v10 = v5;
  OUTLINED_FUNCTION_1();
  v11 = v7;
  v12 = a2;
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] downloader: per item final progress: %@\n%@\n%@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

@end