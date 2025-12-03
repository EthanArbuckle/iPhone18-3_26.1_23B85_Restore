@interface FCAVAssetPrewarmer
- (FCAVAssetPrewarmer)init;
- (id)keyedOperationQueue:(id)queue performAsyncOperationForKey:(id)key completion:(id)completion;
- (uint64_t)_didChangeInterestedAssets;
- (void)_reprocessInterestedAssets;
- (void)_revisitSuspendedState;
- (void)addInterestInAsset:(id)asset;
- (void)removeInterestInAsset:(id)asset;
@end

@implementation FCAVAssetPrewarmer

- (FCAVAssetPrewarmer)init
{
  v13.receiver = self;
  v13.super_class = FCAVAssetPrewarmer;
  v2 = [(FCAVAssetPrewarmer *)&v13 init];
  if (v2)
  {
    v3 = [[FCKeyedOperationQueue alloc] initWithDelegate:v2 maxConcurrentOperationCount:1];
    prefetchQueue = v2->_prefetchQueue;
    v2->_prefetchQueue = v3;

    [(FCKeyedOperationQueue *)v2->_prefetchQueue setExecutionQueue:MEMORY[0x1E69E96A0]];
    v5 = objc_alloc_init(MEMORY[0x1E696AB50]);
    interestedAssets = v2->_interestedAssets;
    v2->_interestedAssets = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    interestModificationDates = v2->_interestModificationDates;
    v2->_interestModificationDates = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    interestTokensByAsset = v2->_interestTokensByAsset;
    v2->_interestTokensByAsset = v9;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__revisitSuspendedState name:*MEMORY[0x1E696A7D8] object:0];

    [(FCAVAssetPrewarmer *)v2 _revisitSuspendedState];
  }

  return v2;
}

- (void)_revisitSuspendedState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__FCAVAssetPrewarmer__revisitSuspendedState__block_invoke;
  v2[3] = &unk_1E7C36EA0;
  v2[4] = self;
  FCPerformBlockOnMainThread(v2);
}

void __44__FCAVAssetPrewarmer__revisitSuspendedState__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  if ([v3 isLowPowerModeEnabled])
  {
    [*(*(a1 + 32) + 16) setSuspended:1];
  }

  else
  {
    v2 = +[FCNetworkReachability sharedNetworkReachability];
    [*(*(a1 + 32) + 16) setSuspended:{objc_msgSend(v2, "isLowDataModeEnabled")}];
  }
}

- (void)addInterestInAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    interestedAssets = self->_interestedAssets;
  }

  else
  {
    interestedAssets = 0;
  }

  v6 = [(NSCountedSet *)interestedAssets countForObject:assetCopy];
  if (self)
  {
    [(NSCountedSet *)self->_interestedAssets addObject:assetCopy];
    interestModificationDates = self->_interestModificationDates;
  }

  else
  {
    [0 addObject:assetCopy];
    interestModificationDates = 0;
  }

  v8 = MEMORY[0x1E695DF00];
  v9 = interestModificationDates;
  date = [v8 date];
  [(NSMutableDictionary *)v9 setObject:date forKey:assetCopy];

  if (!v6)
  {
    v11 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      identifier = [assetCopy identifier];
      v15 = 138543362;
      v16 = identifier;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "added prewarm interest in AV asset %{public}@", &v15, 0xCu);
    }

    [(FCAVAssetPrewarmer *)self _didChangeInterestedAssets];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_didChangeInterestedAssets
{
  if (result)
  {
    v1 = result;
    result = [MEMORY[0x1E696AF00] isMainThread];
    if (!*(v1 + 56))
    {
      v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v1 target:sel__reprocessInterestedAssets selector:0 userInfo:0 repeats:0.01];
      v3 = *(v1 + 56);
      *(v1 + 56) = v2;

      return MEMORY[0x1EEE66BB8](v2, v3);
    }
  }

  return result;
}

- (void)removeInterestInAsset:(id)asset
{
  v17 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    interestedAssets = self->_interestedAssets;
  }

  else
  {
    interestedAssets = 0;
  }

  v6 = [(NSCountedSet *)interestedAssets countForObject:assetCopy];
  if (self)
  {
    [(NSCountedSet *)self->_interestedAssets removeObject:assetCopy];
    interestModificationDates = self->_interestModificationDates;
  }

  else
  {
    [0 removeObject:assetCopy];
    interestModificationDates = 0;
  }

  v8 = MEMORY[0x1E695DF00];
  v9 = interestModificationDates;
  date = [v8 date];
  [(NSMutableDictionary *)v9 setObject:date forKey:assetCopy];

  if (v6 == 1)
  {
    v11 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      identifier = [assetCopy identifier];
      v15 = 138543362;
      v16 = identifier;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "removed prewarm interest in AV asset %{public}@", &v15, 0xCu);
    }

    [(FCAVAssetPrewarmer *)self _didChangeInterestedAssets];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)keyedOperationQueue:(id)queue performAsyncOperationForKey:(id)key completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  completionCopy = completion;
  [MEMORY[0x1E696AF00] isMainThread];
  v9 = [[FCOnce alloc] initWithOptions:1];
  v10 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    identifier = [keyCopy identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "will prewarm AV asset %{public}@", &buf, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke;
  v37 = &unk_1E7C401B0;
  v38 = keyCopy;
  selfCopy = self;
  v13 = v9;
  v40 = v13;
  v14 = completionCopy;
  v41 = v14;
  v15 = keyCopy;
  v16 = v35;
  if (self)
  {
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained(v15 + 5);
    }

    else
    {
      WeakRetained = 0;
    }

    identifier2 = [v15 identifier];
    v19 = [WeakRetained interestTokenForAssetIdentifier:identifier2];

    if (v15)
    {
      v20 = objc_loadWeakRetained(v15 + 5);
    }

    else
    {
      v20 = 0;
    }

    identifier3 = [v15 identifier];
    v22 = [v20 containsAssetWithIdentifier:identifier3];

    if (v22)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v43 = __54__FCAVAssetPrewarmer__prewarmAsset_completionHandler___block_invoke;
      v44 = &unk_1E7C37778;
      v23 = v16;
      v46 = v23;
      v45 = v19;
      (v36)(v23, v45, 0);
    }

    else
    {
      if (v15)
      {
        v24 = objc_loadWeakRetained(v15 + 7);
        v25 = v15[9];
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v26 = v25;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v43 = __54__FCAVAssetPrewarmer__prewarmAsset_completionHandler___block_invoke_2;
      v44 = &unk_1E7C401D8;
      v46 = v16;
      v45 = v15;
      [v24 prefetchMasterPlaylistForAssetURL:v26 completionHandler:&buf];
    }
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke_2_12;
  v32[3] = &unk_1E7C37BC0;
  v33 = v13;
  v34 = v14;
  v27 = v14;
  v28 = v13;
  v29 = [FCCancelHandler cancelHandlerWithBlock:v32];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

void __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke_2;
  v10[3] = &unk_1E7C40188;
  v11 = v3;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  FCPerformBlockOnMainThread(v10);
}

void __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = FCAVAssetLog;
  v4 = os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v5 identifier];
      *buf = 138543362;
      v38 = v7;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "successfully prewarmed AV asset %{public}@", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 40);
    }

    else
    {
      v9 = 0;
    }

    [v9 setObject:*(a1 + 32) forKey:*(a1 + 40)];
    v10 = *(a1 + 48);
    if (v10)
    {
      [MEMORY[0x1E696AF00] isMainThread];
      v11 = *(v10 + 40);
      v12 = [v11 count];
      v13 = *(v10 + 48);

      if (v12 > v13)
      {
        v14 = [MEMORY[0x1E695DF70] array];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = *(v10 + 40);
        v16 = [v15 countByEnumeratingWithState:&v33 objects:buf count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              if (![*(v10 + 24) countForObject:v20])
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:buf count:16];
          }

          while (v17);
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __36__FCAVAssetPrewarmer__flushIfNeeded__block_invoke;
        v32[3] = &unk_1E7C40200;
        v32[4] = v10;
        [v14 sortUsingComparator:v32];
        while ([v14 count])
        {
          v21 = *(v10 + 40);
          v22 = [v21 count];
          v23 = *(v10 + 48);

          if (v22 <= v23)
          {
            break;
          }

          v24 = *(v10 + 40);
          v25 = [v14 firstObject];
          [v24 removeObjectForKey:v25];

          [v14 fc_removeFirstObject];
        }

        goto LABEL_23;
      }
    }
  }

  else if (v4)
  {
    v26 = *(a1 + 40);
    v14 = v3;
    v27 = [v26 identifier];
    *buf = 138543362;
    v38 = v27;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "failed to prewarm AV asset %{public}@", buf, 0xCu);

LABEL_23:
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke_9;
  v30[3] = &unk_1E7C379C8;
  v28 = *(a1 + 56);
  v31 = *(a1 + 64);
  [v28 executeOnce:v30];

  v29 = *MEMORY[0x1E69E9840];
}

void __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke_2_12(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __81__FCAVAssetPrewarmer_keyedOperationQueue_performAsyncOperationForKey_completion___block_invoke_3;
  v2[3] = &unk_1E7C379C8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 executeOnce:v2];
}

void __54__FCAVAssetPrewarmer__prewarmAsset_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v23[1] = MEMORY[0x1E69E9820];
    v23[2] = 3221225472;
    v23[3] = __54__FCAVAssetPrewarmer__prewarmAsset_completionHandler___block_invoke_3;
    v23[4] = &unk_1E7C37778;
    v25 = *(a1 + 40);
    v24 = v8;
    v25[2](v25, 0, v24);

    v9 = v25;
  }

  else
  {
    if (a2)
    {
      v10 = *(a2 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 objectForKeyedSubscript:@"com.apple.hls.keys"];
    v9 = FCKeyIdentifiersFromHLSMetadata(v12);

    if ([v9 count])
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        WeakRetained = objc_loadWeakRetained((v13 + 64));
      }

      else
      {
        WeakRetained = 0;
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__FCAVAssetPrewarmer__prewarmAsset_completionHandler___block_invoke_5;
      v18[3] = &unk_1E7C39710;
      v15 = v20;
      v20[0] = *(a1 + 40);
      v16 = &v19;
      v19 = v7;
      [WeakRetained fetchKeysWithIdentifiers:v9 completionHandler:v18];
    }

    else
    {
      v20[1] = MEMORY[0x1E69E9820];
      v20[2] = 3221225472;
      v20[3] = __54__FCAVAssetPrewarmer__prewarmAsset_completionHandler___block_invoke_4;
      v20[4] = &unk_1E7C3A060;
      v15 = v23;
      v17 = *(a1 + 40);
      v23[0] = v17;
      v16 = &v21;
      v21 = v7;
      v22 = 0;
      v17[2](v17, v21, 0);
      WeakRetained = v22;
    }
  }
}

- (void)_reprocessInterestedAssets
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    highWaterMark = self->_highWaterMark;
    v4 = [(NSCountedSet *)self->_interestedAssets count];
    if (highWaterMark <= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = highWaterMark;
    }

    self->_highWaterMark = v5;
    interestedAssets = self->_interestedAssets;
  }

  else
  {
    [0 count];
    interestedAssets = 0;
  }

  v7 = MEMORY[0x1E695DFB8];
  v8 = interestedAssets;
  allObjects = [(NSCountedSet *)v8 allObjects];
  v10 = [v7 orderedSetWithArray:allObjects];
  if (self)
  {
    [(FCKeyedOperationQueue *)self->_prefetchQueue setKeyQueue:v10];

    [(NSTimer *)self->_reprocessTimer invalidate];

    objc_storeStrong(&self->_reprocessTimer, 0);
  }

  else
  {
    [0 setKeyQueue:v10];

    [0 invalidate];
  }
}

uint64_t __36__FCAVAssetPrewarmer__flushIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[4];
  }

  v7 = v6;
  v8 = a3;
  v9 = [v7 objectForKey:a2];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectForKey:v8];

  v13 = [v9 compare:v12];
  return v13;
}

@end