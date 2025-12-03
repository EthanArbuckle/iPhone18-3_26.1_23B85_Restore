@interface FCAssetHandle
- (BOOL)isDownloadFailureRecoverable;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (NSString)filePath;
- (NSString)uniqueKey;
- (NSURL)fileURL;
- (id)_downloadIfNeededWithPriority:(uint64_t)priority flags:(void *)flags completionQueue:(void *)queue completion:;
- (id)downloadIfNeededWithCompletion:(id)completion;
- (id)downloadIfNeededWithCompletionQueue:(id)queue completion:(id)completion;
- (id)downloadIfNeededWithGroup:(id)group;
- (id)downloadIfNeededWithPriority:(int64_t)priority completion:(id)completion;
- (id)fetchDataProviderWithCompletion:(id)completion;
- (id)fetchDataProviderWithPriority:(int64_t)priority flags:(int64_t)flags completion:(id)completion;
- (uint64_t)_canRetryDownload;
- (uint64_t)_revisitDownloadRequestPriorities;
- (void)dealloc;
- (void)initWithDataProvider:(void *)provider;
- (void)setFetchGroup:(uint64_t)group;
- (void)setFetchOperation:(uint64_t)operation;
- (void)setHoldToken:(uint64_t)token;
- (void)setRemoteURL:(uint64_t)l;
@end

@implementation FCAssetHandle

- (NSString)filePath
{
  dataProvider = [(FCAssetHandle *)self dataProvider];
  filePath = [dataProvider filePath];

  return filePath;
}

- (NSURL)fileURL
{
  filePath = [(FCAssetHandle *)self filePath];
  if (filePath)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePath isDirectory:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_fetchOperation;
  }

  [(FCAssetHandle *)self cancel];
  [(FCAssetHandle *)selfCopy setFetchOperation:?];
  v3.receiver = selfCopy;
  v3.super_class = FCAssetHandle;
  [(FCAssetHandle *)&v3 dealloc];
}

- (void)initWithDataProvider:(void *)provider
{
  v4 = a2;
  if (provider)
  {
    v9.receiver = provider;
    v9.super_class = FCAssetHandle;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    provider = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_alloc_init(MEMORY[0x1E69B6920]);
      v7 = provider[9];
      provider[9] = v6;
    }
  }

  return provider;
}

- (void)setFetchOperation:(uint64_t)operation
{
  if (operation)
  {
    objc_storeStrong((operation + 32), a2);
  }
}

- (id)downloadIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = FCCurrentQoSOrUtilityIfMain();
  if (v5 == 9)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5 == 33 || v5 == 25;
  }

  v7 = FCDispatchQueueForQualityOfService(v5);
  v8 = [(FCAssetHandle *)&self->super.isa _downloadIfNeededWithPriority:v6 flags:0 completionQueue:v7 completion:completionCopy];

  return v8;
}

- (id)_downloadIfNeededWithPriority:(uint64_t)priority flags:(void *)flags completionQueue:(void *)queue completion:
{
  flagsCopy = flags;
  queueCopy = queue;
  if (self)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__16;
    v32 = __Block_byref_object_dispose__16;
    v33 = 0;
    dataProvider = [self dataProvider];
    if (dataProvider)
    {
    }

    else if ([(FCAssetHandle *)self _canRetryDownload])
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__16;
      v26 = __Block_byref_object_dispose__16;
      v27 = 0;
      v12 = self[9];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke;
      v15[3] = &unk_1E7C3A328;
      v15[4] = self;
      priorityCopy = priority;
      v21 = a2;
      v18 = &v22;
      v19 = &v28;
      v17 = queueCopy;
      v16 = flagsCopy;
      [v12 performWithLockSync:v15];

      [v23[5] start];
      _Block_object_dispose(&v22, 8);

LABEL_8:
      v13 = v29[5];
      _Block_object_dispose(&v28, 8);

      goto LABEL_9;
    }

    if (queueCopy)
    {
      dispatch_async(flagsCopy, queueCopy);
    }

    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)downloadIfNeededWithPriority:(int64_t)priority completion:(id)completion
{
  completionCopy = completion;
  v7 = 25;
  if (!priority)
  {
    v7 = 17;
  }

  if (priority == -1)
  {
    v8 = 9;
  }

  else
  {
    v8 = v7;
  }

  v9 = FCDispatchQueueForQualityOfService(v8);
  v10 = [(FCAssetHandle *)&self->super.isa _downloadIfNeededWithPriority:priority flags:0 completionQueue:v9 completion:completionCopy];

  return v10;
}

- (id)downloadIfNeededWithCompletionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = FCCurrentQoSOrUtilityIfMain();
  if (v8 == 9)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8 == 33 || v8 == 25;
  }

  v10 = [(FCAssetHandle *)&self->super.isa _downloadIfNeededWithPriority:v9 flags:0 completionQueue:queueCopy completion:completionCopy];

  return v10;
}

- (uint64_t)_canRetryDownload
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    downloadError = [self downloadError];
    v3 = downloadError;
    if (downloadError)
    {
      if (([downloadError fc_isOfflineError] & 1) != 0 || objc_msgSend(v3, "fc_isRecoverableNetworkError"))
      {
        v4 = +[FCNetworkReachability sharedNetworkReachability];
        selfCopy = [v4 isNetworkReachable];
      }

      else if ([v3 fc_isHTTPNotFoundError])
      {
        selfCopy = 0;
      }

      else
      {
        if (!*(selfCopy + 56) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't reach this point without at least one penalized download attempt"];
          v12 = 136315906;
          v13 = "[FCAssetHandle _canRetryDownload]";
          v14 = 2080;
          v15 = "FCAssetHandle.m";
          v16 = 1024;
          v17 = 381;
          v18 = 2114;
          v19 = v11;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
        }

        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:{objc_getProperty(selfCopy, v8, 64, 1)}];
        v10 = v9;

        selfCopy = v10 >= fmin(exp2((*(selfCopy + 56) - 1)) * 5.0, 60.0);
      }
    }

    else
    {
      selfCopy = 1;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataProvider];
  if (v2)
  {

    goto LABEL_34;
  }

  if ([(FCAssetHandle *)*(a1 + 32) _canRetryDownload])
  {
    v3 = *(a1 + 32);
    if (!v3 || !v3[5])
    {
      v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
      v5 = *(a1 + 32);
      if (v5)
      {
        objc_storeStrong((v5 + 40), v4);
      }

      v3 = *(a1 + 32);
      if (!v3)
      {
        goto LABEL_40;
      }
    }

    if (v3[6])
    {
LABEL_23:
      v15 = objc_alloc_init(FCAssetHandleDownloadRequest);
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      [*(*(*(a1 + 64) + 8) + 40) setRelativePriority:*(a1 + 80)];
      objc_initWeak(location, *(a1 + 32));
      objc_initWeak(from, *(*(*(a1 + 64) + 8) + 40));
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_2;
      newValue[3] = &unk_1E7C3A2B8;
      objc_copyWeak(&v36, location);
      objc_copyWeak(&v37, from);
      v19 = *(*(*(a1 + 64) + 8) + 40);
      if (v19)
      {
        objc_setProperty_nonatomic_copy(v19, v18, newValue, 16);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_6;
      v33[3] = &unk_1E7C3A300;
      objc_copyWeak(&v34, location);
      v21 = *(*(*(a1 + 64) + 8) + 40);
      if (v21)
      {
        objc_setProperty_nonatomic_copy(v21, v20, v33, 24);
      }

      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = v22[5];
      }

      v23 = v22;
      [v23 addObject:*(*(*(a1 + 64) + 8) + 40)];

      [(FCAssetHandle *)*(a1 + 32) _revisitDownloadRequestPriorities];
      v24 = *(a1 + 48);
      if (v24)
      {
        v25 = *(a1 + 32);
        if (v25)
        {
          v26 = *(v25 + 48);
        }

        else
        {
          v26 = 0;
        }

        dispatch_group_notify(v26, *(a1 + 40), v24);
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v37);
      objc_destroyWeak(&v36);
      objc_destroyWeak(from);
      objc_destroyWeak(location);
      goto LABEL_38;
    }

    if (!v3[4])
    {
      goto LABEL_12;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"asset handle should never have a non-nil fetch operation without a fetch group"];
    *location = 136315906;
    *&location[4] = "[FCAssetHandle _downloadIfNeededWithPriority:flags:completionQueue:completion:]_block_invoke";
    v40 = 2080;
    v41 = "FCAssetHandle.m";
    v42 = 1024;
    v43 = 150;
    v44 = 2114;
    v45 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", location, 0x26u);

    v3 = *(a1 + 32);
    if (v3)
    {
LABEL_12:
      v6 = v3[5];
    }

    else
    {
LABEL_40:
      v6 = 0;
    }

    if ([v6 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"asset handle should never have non-zero fetch interest without a fetch operation"];
      *location = 136315906;
      *&location[4] = "[FCAssetHandle _downloadIfNeededWithPriority:flags:completionQueue:completion:]_block_invoke";
      v40 = 2080;
      v41 = "FCAssetHandle.m";
      v42 = 1024;
      v43 = 151;
      v44 = 2114;
      v45 = v31;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", location, 0x26u);
    }

    v7 = dispatch_group_create();
    [(FCAssetHandle *)*(a1 + 32) setFetchGroup:v7];

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 48);
    }

    else
    {
      v9 = 0;
    }

    dispatch_group_enter(v9);
    v10 = *(a1 + 32);
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 80));
      v12 = *(a1 + 32);
    }

    else
    {
      v12 = 0;
      WeakRetained = 0;
    }

    from[1] = MEMORY[0x1E69E9820];
    from[2] = 3221225472;
    from[3] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_9;
    from[4] = &unk_1E7C3A240;
    from[5] = v12;
    v13 = [WeakRetained operationToFetchDataProviderForAssetHandle:? completion:?];
    [(FCAssetHandle *)*(a1 + 32) setFetchOperation:v13];

    if (*(a1 + 32))
    {
      v14 = *(*(a1 + 32) + 32);
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v14);
    [*(*(*(a1 + 56) + 8) + 40) setFlags:*(a1 + 72)];
    goto LABEL_23;
  }

LABEL_34:
  v27 = *(a1 + 48);
  if (!v27)
  {
LABEL_38:
    v30 = *MEMORY[0x1E69E9840];
    return;
  }

  v28 = *(a1 + 40);
  v29 = *MEMORY[0x1E69E9840];

  dispatch_async(v28, v27);
}

- (void)setFetchGroup:(uint64_t)group
{
  if (group)
  {
    objc_storeStrong((group + 48), a2);
  }
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__16;
    v17 = __Block_byref_object_dispose__16;
    v18 = 0;
    v7 = *(v4 + 72);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__FCAssetHandle__completeFetchWithDataProvider_error___block_invoke;
    v9[3] = &unk_1E7C3A350;
    v9[4] = v4;
    v10 = v5;
    v11 = v6;
    v12 = &v13;
    [v7 performWithLockSync:v9];

    v8 = v14[5];
    if (v8)
    {
      dispatch_group_leave(v8);
    }

    _Block_object_dispose(&v13, 8);
  }
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_3;
  v3[3] = &unk_1E7C3A290;
  objc_copyWeak(&v4, (a1 + 40));
  FCPerformIfNonNil(WeakRetained, v3);

  objc_destroyWeak(&v4);
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_4;
  v5[3] = &unk_1E7C3A268;
  v5[4] = v3;
  FCPerformIfNonNil(WeakRetained, v5);
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_5;
  v7[3] = &unk_1E7C36C58;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 performWithLockSync:v7];
}

uint64_t __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    [*(v2 + 40) removeObject:v3];
    if (![*(v2 + 40) count])
    {
      [*(v2 + 32) cancel];
      v4 = *(v2 + 32);
      *(v2 + 32) = 0;
    }
  }

  v5 = *(a1 + 32);

  return [(FCAssetHandle *)v5 _revisitDownloadRequestPriorities];
}

- (uint64_t)_revisitDownloadRequestPriorities
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(result + 40);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      v6 = -1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          relativePriority = [*(*(&v11 + 1) + 8 * i) relativePriority];
          if (v6 <= relativePriority)
          {
            v6 = relativePriority;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = -1;
    }

    [*(v1 + 32) setRelativePriority:v6];
    if (v6 <= 0)
    {
      v9 = -1;
    }

    else
    {
      v9 = 25;
    }

    result = [*(v1 + 32) setQualityOfService:{v9, v11}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  FCPerformIfNonNil(WeakRetained, &__block_literal_global_23);
}

void __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_7(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2[9];
  }

  else
  {
    v2 = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__FCAssetHandle__downloadIfNeededWithPriority_flags_completionQueue_completion___block_invoke_8;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = a2;
  v3 = a2;
  [v2 performWithLockSync:v4];
}

- (id)downloadIfNeededWithGroup:(id)group
{
  groupCopy = group;
  dataProvider = [(FCAssetHandle *)self dataProvider];

  if (dataProvider)
  {
    v6 = 0;
  }

  else
  {
    dispatch_group_enter(groupCopy);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__FCAssetHandle_downloadIfNeededWithGroup___block_invoke;
    v8[3] = &unk_1E7C36EA0;
    v9 = groupCopy;
    v6 = [(FCAssetHandle *)self downloadIfNeededWithCompletion:v8];
  }

  return v6;
}

- (NSString)uniqueKey
{
  if (self)
  {
    self = self->_assetKey;
  }

  return self;
}

- (BOOL)isDownloadFailureRecoverable
{
  downloadError = [(FCAssetHandle *)self downloadError];
  if (downloadError)
  {
    downloadError2 = [(FCAssetHandle *)self downloadError];
    v5 = [downloadError2 fc_isHTTPNotFoundError] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)fetchDataProviderWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = FCCurrentQoSOrUtilityIfMain();
  if (v5 == 9)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5 == 33 || v5 == 25;
  }

  v7 = FCDispatchQueueForQualityOfService(v5);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__FCAssetHandle_fetchDataProviderWithCompletion___block_invoke;
  v11[3] = &unk_1E7C37778;
  v11[4] = self;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = [(FCAssetHandle *)&self->super.isa _downloadIfNeededWithPriority:v6 flags:0 completionQueue:v7 completion:v11];

  return v9;
}

void __49__FCAssetHandle_fetchDataProviderWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) dataProvider];
    v3 = [*(a1 + 32) downloadError];
    (*(v1 + 16))(v1, v4, v3);
  }
}

- (id)fetchDataProviderWithPriority:(int64_t)priority flags:(int64_t)flags completion:(id)completion
{
  completionCopy = completion;
  v9 = 25;
  if (!priority)
  {
    v9 = 17;
  }

  if (priority == -1)
  {
    v10 = 9;
  }

  else
  {
    v10 = v9;
  }

  v11 = FCDispatchQueueForQualityOfService(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__FCAssetHandle_fetchDataProviderWithPriority_flags_completion___block_invoke;
  v15[3] = &unk_1E7C37778;
  v15[4] = self;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = [(FCAssetHandle *)&self->super.isa _downloadIfNeededWithPriority:priority flags:flags completionQueue:v11 completion:v15];

  return v13;
}

void __64__FCAssetHandle_fetchDataProviderWithPriority_flags_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) dataProvider];
  v3 = [*(a1 + 32) downloadError];
  (*(v2 + 16))(v2, v4, v3);
}

- (FCContentArchive)contentArchive
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained contentArchiveForAssetHandle:self];

  return v4;
}

- (FCContentManifest)contentManifest
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  remoteURL = [(FCAssetHandle *)self remoteURL];
  v17[0] = remoteURL;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  if (self)
  {
    Property = objc_getProperty(self, v5, 120, 1);
  }

  else
  {
    Property = 0;
  }

  wrappingKeyID = [Property wrappingKeyID];
  if (wrappingKeyID)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v8, 120, 1);
    }

    else
    {
      v10 = 0;
    }

    wrappingKeyID2 = [v10 wrappingKeyID];
    v16 = wrappingKeyID2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v13 = [(FCContentManifest *)v3 initWithAssetURLs:v6 assetWrappingKeyIDs:v12];
  }

  else
  {
    v13 = [(FCContentManifest *)v3 initWithAssetURLs:v6 assetWrappingKeyIDs:MEMORY[0x1E695E0F0]];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __54__FCAssetHandle__completeFetchWithDataProvider_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProvider];

  if (v2)
  {
    return;
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) setDataProvider:?];
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = 0;
  }

  else
  {
    if ([*(a1 + 48) fc_isCancellationError])
    {
      goto LABEL_10;
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 48);
  }

  objc_setProperty_atomic(v4, v3, v5, 16);
LABEL_10:
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 48);
    goto LABEL_12;
  }

LABEL_25:
  v7 = 0;
LABEL_12:
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  [(FCAssetHandle *)*(a1 + 32) setFetchOperation:?];
  [(FCAssetHandle *)*(a1 + 32) setFetchGroup:?];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 40);
  }

  else
  {
    v9 = 0;
  }

  [v9 removeAllObjects];
  v10 = *(a1 + 48);
  if (v10 && [v10 code] != -1009 && (objc_msgSend(*(a1 + 48), "fc_isCancellationError") & 1) == 0)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      ++*(v11 + 56);
    }

    v12 = [MEMORY[0x1E695DF00] date];
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = v12;
      objc_setProperty_atomic(v13, v12, v12, 64);
      v12 = v14;
    }

    MEMORY[0x1EEE66BB8](v13, v12);
  }
}

- (void)setRemoteURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 24), a2);
  }
}

- (void)setHoldToken:(uint64_t)token
{
  if (token)
  {
    objc_storeStrong((token + 88), a2);
  }
}

@end