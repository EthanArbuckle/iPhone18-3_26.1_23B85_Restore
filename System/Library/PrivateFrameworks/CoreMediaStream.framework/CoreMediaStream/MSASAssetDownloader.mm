@interface MSASAssetDownloader
- (id)_orphanedAssetError;
- (id)workQueueObjectGUID;
- (void)MMCSEngine:(id)engine didCreateRequestorContext:(id)context forAssets:(id)assets;
- (void)MMCSEngine:(id)engine didFinishGettingAsset:(id)asset path:(id)path error:(id)error;
- (void)MMCSEngine:(id)engine didFinishPuttingAsset:(id)asset error:(id)error;
- (void)MMCSEngine:(id)engine didMakeGetProgress:(float)progress state:(int)state onAsset:(id)asset;
- (void)MMCSEngine:(id)engine didMakePutProgress:(float)progress state:(int)state onAsset:(id)asset;
- (void)_workQueueDidFinishWithItem:(id)item error:(id)error;
- (void)_workQueueGoIdle;
- (void)_workQueueStopTrackingItem:(id)item;
- (void)didFinishGettingAllAssets;
- (void)didFinishPuttingAllAssets;
- (void)registerAssets:(id)assets completionBlock:(id)block;
- (void)unregisterAssets:(id)assets;
- (void)workQueueCancel;
- (void)workQueueDownloadNextBatch;
- (void)workQueueRegisterAssets:(id)assets completionBlock:(id)block;
- (void)workQueueRetryOutstandingActivities;
- (void)workQueueShutDownCompletionBlock:(id)block;
- (void)workQueueStop;
- (void)workQueueUnregisterAssets:(id)assets;
@end

@implementation MSASAssetDownloader

- (void)didFinishGettingAllAssets
{
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSASAssetDownloader_didFinishGettingAllAssets__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __48__MSASAssetDownloader_didFinishGettingAllAssets__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (![*(*(a1 + 32) + 120) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 32);
      v3 = [*(v2 + 136) count];
      *buf = 138543618;
      v30 = v2;
      v31 = 2048;
      v32 = v3;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished downloading %ld assets.", buf, 0x16u);
    }

    v4 = MSPlatform();
    v5 = &off_245C63000;
    if (objc_opt_respondsToSelector())
    {
      v6 = MSPlatform();
      v7 = [v6 isPerformanceLoggingEnabled];

      if (v7)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = *(*(a1 + 32) + 136);
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v25;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = [*(*(&v24 + 1) + 8 * i) metadata];
              v15 = [v14 objectForKey:@"MSAssetMetadataFileSize"];
              v11 += [v15 longLongValue];
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        v16 = [*(*(a1 + 32) + 136) count];
        v17 = +[MSPerformanceLogger sharedLogger];
        v18 = [*(a1 + 32) downloadBatchPerfGUID];
        v23[0] = MEMORY[0x277D85DD0];
        v5 = &off_245C63000;
        v23[1] = 3221225472;
        v23[2] = __48__MSASAssetDownloader_didFinishGettingAllAssets__block_invoke_36;
        v23[3] = &unk_278E91AC8;
        v23[4] = *(a1 + 32);
        v23[5] = v16;
        v23[6] = v11;
        [v17 summarizeOperation:@"MSASAssetDownloader.downloadRate" itemGUID:v18 formatBlock:v23];
      }
    }

    else
    {
    }

    [*(*(a1 + 32) + 136) removeAllObjects];
    v19 = [*(a1 + 32) eventQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = *(v5 + 485);
    v22[2] = __48__MSASAssetDownloader_didFinishGettingAllAssets__block_invoke_37;
    v22[3] = &unk_278E926D8;
    v22[4] = *(a1 + 32);
    dispatch_async(v19, v22);
  }

  [*(a1 + 32) _workQueueGoIdle];
  result = [*(a1 + 32) didEncounterNetworkConditionError];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void __48__MSASAssetDownloader_didFinishGettingAllAssets__block_invoke_36(void *a1, double a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544386;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v7 * 8.0 / a2 / 1000.0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished downloading batch of %lu files, for a total of %lld bytes, in %0.3f seconds. Effective download rate: %0.3f kbps.", &v8, 0x34u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __48__MSASAssetDownloader_didFinishGettingAllAssets__block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloaderDidFinishBatch:*(a1 + 32)];
}

- (void)MMCSEngine:(id)engine didMakeGetProgress:(float)progress state:(int)state onAsset:(id)asset
{
  assetCopy = asset;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MSASAssetDownloader_MMCSEngine_didMakeGetProgress_state_onAsset___block_invoke;
  block[3] = &unk_278E91AA0;
  stateCopy = state;
  progressCopy = progress;
  block[4] = self;
  v13 = assetCopy;
  v11 = assetCopy;
  dispatch_async(workQueue, block);
}

void __67__MSASAssetDownloader_MMCSEngine_didMakeGetProgress_state_onAsset___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MSPlatform();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = MSPlatform();
  v4 = [v3 isPerformanceLoggingEnabled];

  if (v4 && *(a1 + 48) == 3 && [*(a1 + 32) isWaitingForFirstDownloadEvent])
  {
    [*(a1 + 32) setIsWaitingForFirstDownloadEvent:0];
    v2 = +[MSPerformanceLogger sharedLogger];
    v5 = [*(a1 + 32) workQueueObjectGUID];
    [v2 summarizeOperation:@"MSASAssetDownloader.downloadLatency" itemGUID:v5 formatBlock:&__block_literal_global_34];

LABEL_6:
  }

  v6 = MSASPlatform();
  v7 = [v6 shouldLogAtLevel:7];

  if (v7)
  {
    v8 = *(a1 + 52);
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v8 == -1.0)
    {
      if (v9)
      {
        v17 = *(a1 + 32);
        v11 = [MMCSEngine logStringForGetItemState:*(a1 + 48)];
        v18 = *(a1 + 40);
        v19 = 138543874;
        v20 = v17;
        v21 = 2114;
        v22 = *&v11;
        v23 = 2048;
        v24 = v18;
        v13 = MEMORY[0x277D86220];
        v14 = "%{public}@: Download progress state: %{public}@, on asset: %p";
        v15 = 32;
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [MMCSEngine logStringForGetItemState:*(a1 + 48)];
      v12 = *(a1 + 40);
      v19 = 138544130;
      v20 = v10;
      v21 = 2048;
      v22 = v8;
      v23 = 2114;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      v13 = MEMORY[0x277D86220];
      v14 = "%{public}@: Download progress: %.2f, state: %{public}@, on asset: %p";
      v15 = 42;
LABEL_14:
      _os_log_debug_impl(&dword_245B99000, v13, OS_LOG_TYPE_DEBUG, v14, &v19, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __67__MSASAssetDownloader_MMCSEngine_didMakeGetProgress_state_onAsset___block_invoke_2(double a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Download Latency: %0.3f seconds.", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_orphanedAssetError
{
  if (_orphanedAssetError_onceToken != -1)
  {
    dispatch_once(&_orphanedAssetError_onceToken, &__block_literal_global_5940);
  }

  v3 = _orphanedAssetError_error;

  return v3;
}

void __42__MSASAssetDownloader__orphanedAssetError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_DOWNLOADER_ORPHANED");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetDownloaderErrorDomain" code:0 description:v3];
  v2 = _orphanedAssetError_error;
  _orphanedAssetError_error = v1;
}

- (void)MMCSEngine:(id)engine didFinishGettingAsset:(id)asset path:(id)path error:(id)error
{
  assetCopy = asset;
  pathCopy = path;
  errorCopy = error;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = assetCopy;
  v18 = errorCopy;
  v19 = pathCopy;
  v13 = pathCopy;
  v14 = errorCopy;
  v15 = assetCopy;
  dispatch_async(workQueue, v16);
}

void __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v2)
    {
      v4 = [v3 MMCSRetryAfterDate];
      if (v4)
      {
        v5 = [*(a1 + 32) eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke_2;
        block[3] = &unk_278E927C8;
        block[4] = *(a1 + 32);
        v35 = v4;
        dispatch_async(v5, block);
      }

      if ([*(a1 + 48) MMCSIsCancelError])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 32);
          *buf = 138543362;
          v37 = v6;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Asset download was canceled. Ignoring.", buf, 0xCu);
        }

        [*(a1 + 32) _workQueueStopTrackingItem:v2];
        goto LABEL_32;
      }

      if ([*(a1 + 48) MMCSIsNetworkConditionsError])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          *buf = 138543362;
          v37 = v14;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered temporary network error while downloading asset. Will retry later.", buf, 0xCu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 32);
          v16 = [*(a1 + 48) MSVerboseDescription];
          *buf = 138543618;
          v37 = v15;
          v38 = 2114;
          v39 = v16;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Error: %{public}@", buf, 0x16u);
        }

        [*(a1 + 32) _workQueueStopTrackingItem:v2];
        [*(a1 + 32) setDidEncounterNetworkConditionError:1];
        goto LABEL_32;
      }

      if (([*(a1 + 48) MMCSIsFatalError] & 1) != 0 || (v19 = objc_msgSend(v2, "errorCount") + 1, v19 >= objc_msgSend(*(a1 + 32), "maxRetryCount")))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 32);
          v27 = *(a1 + 40);
          v28 = *(a1 + 48);
          *buf = 138543874;
          v37 = v26;
          v38 = 2114;
          v39 = v27;
          v40 = 2114;
          v41 = v28;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to download asset: %{public}@. Error: %{public}@. Giving up.", buf, 0x20u);
        }
      }

      else
      {
        v20 = [*(a1 + 32) model];
        [v20 setErrorCount:objc_msgSend(v2 forAssetInDownloadQueue:{"errorCount") + 1, *(a1 + 40)}];

        if (![*(a1 + 48) MMCSIsAuthorizationError])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 32);
            v30 = *(a1 + 40);
            v31 = [*(a1 + 48) MSVerboseDescription];
            *buf = 138543874;
            v37 = v29;
            v38 = 2114;
            v39 = v30;
            v40 = 2114;
            v41 = v31;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to download asset: %{public}@. Error: %{public}@. Will retry later.", buf, 0x20u);
          }

          [*(a1 + 32) _workQueueStopTrackingItem:v2];
          v25 = [*(a1 + 32) eventQueue];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke_26;
          v33[3] = &unk_278E926D8;
          v33[4] = *(a1 + 32);
          dispatch_async(v25, v33);

          goto LABEL_32;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v22 = *(a1 + 40);
          v23 = [*(a1 + 48) MSVerboseDescription];
          *buf = 138543874;
          v37 = v21;
          v38 = 2114;
          v39 = v22;
          v40 = 2114;
          v41 = v23;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to download asset: %{public}@ due to MMCS auth error: %{public}@. Will reauthorize now.", buf, 0x20u);
        }
      }

      v9 = *(a1 + 32);
      v11 = *(a1 + 48);
      v10 = v2;
LABEL_31:
      [v9 _workQueueDidFinishWithItem:v10 error:v11];
LABEL_32:

      goto LABEL_33;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138543618;
      v37 = v12;
      v38 = 2114;
      v39 = v13;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Already reported on asset %{public}@. Ignoring.", buf, 0x16u);
    }
  }

  else
  {
    if (v2)
    {
      v4 = [v2 object];
      [v4 setPath:*(a1 + 56)];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        *buf = 138543618;
        v37 = v7;
        v38 = 2114;
        v39 = v4;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully downloaded asset %{public}@.", buf, 0x16u);
      }

      v8 = [*(a1 + 32) eventQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke_27;
      v32[3] = &unk_278E926D8;
      v32[4] = *(a1 + 32);
      dispatch_async(v8, v32);

      [*(*(a1 + 32) + 136) addObject:v4];
      v9 = *(a1 + 32);
      v10 = v2;
      v11 = 0;
      goto LABEL_31;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138543618;
      v37 = v17;
      v38 = 2114;
      v39 = v18;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: We aren't expecting an event for asset %{public}@. Ignoring.", buf, 0x16u);
    }
  }

LABEL_33:

  v24 = *MEMORY[0x277D85DE8];
}

void __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffManager];
  [v2 didReceiveRetryAfterDate:*(a1 + 40)];
}

void __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke_26(uint64_t a1)
{
  v1 = [*(a1 + 32) backoffManager];
  [v1 backoff];
}

void __67__MSASAssetDownloader_MMCSEngine_didFinishGettingAsset_path_error___block_invoke_27(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffManager];
  [v2 reset];

  v4 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v4 didReceiveAuthSuccessForPersonID:v3];
}

- (void)didFinishPuttingAllAssets
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback: MMCSEngine:didFinishPuttingAllAssetsContext:", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)engine didMakePutProgress:(float)progress state:(int)state onAsset:(id)asset
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback: MMCSEngine:didMakePutProgress:state:context:", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)engine didCreateRequestorContext:(id)context forAssets:(id)assets
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback: MMCSEngine:didCreateRequestorContext:context:error:", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)engine didFinishPuttingAsset:(id)asset error:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback: MMCSEngine:didFinishPuttingAsset:context:error:", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_workQueueDidFinishWithItem:(id)item error:(id)error
{
  errorCopy = error;
  itemCopy = item;
  [(MSASAssetDownloader *)self _workQueueStopTrackingItem:itemCopy];
  object = [itemCopy object];
  albumGUID = [itemCopy albumGUID];

  model = [(MSASAssetTransferer *)self model];
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:object];
  [model removeAssetsFromDownloadQueue:v11];

  eventQueue = [(MSASAssetTransferer *)self eventQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__MSASAssetDownloader__workQueueDidFinishWithItem_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = object;
  v18 = albumGUID;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = albumGUID;
  v15 = object;
  dispatch_async(eventQueue, v16);
}

void __57__MSASAssetDownloader__workQueueDidFinishWithItem_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloader:*(a1 + 32) didFinishDownloadingAsset:*(a1 + 40) inAlbumGUID:*(a1 + 48) error:*(a1 + 56)];
}

- (void)_workQueueStopTrackingItem:(id)item
{
  itemCopy = item;
  object = [itemCopy object];
  [(NSMutableArray *)self->_itemsInFlight removeObject:itemCopy];

  [(NSMutableDictionary *)self->_assetToItemInFlightMap removeObjectForKey:object];
}

- (void)workQueueUnregisterAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        engine = [(MSASAssetTransferer *)self engine];
        [engine unregisterAsset:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAssets:(id)assets
{
  assetsCopy = assets;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MSASAssetDownloader_unregisterAssets___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = assetsCopy;
  v6 = assetsCopy;
  dispatch_async(workQueue, v7);
}

- (void)workQueueRegisterAssets:(id)assets completionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [assetsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(assetsCopy);
        }

        [*(*(&v17 + 1) + 8 * v11++) setMMCSItemID:{-[MSASAssetTransferer workQueueNextItemID](self, "workQueueNextItemID")}];
      }

      while (v9 != v11);
      v9 = [assetsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  engine = [(MSASAssetTransferer *)self engine];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MSASAssetDownloader_workQueueRegisterAssets_completionBlock___block_invoke;
  v15[3] = &unk_278E927A0;
  v15[4] = self;
  v16 = blockCopy;
  v13 = blockCopy;
  [engine registerAssets:assetsCopy forDownloadCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __63__MSASAssetDownloader_workQueueRegisterAssets_completionBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) workQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)registerAssets:(id)assets completionBlock:(id)block
{
  assetsCopy = assets;
  blockCopy = block;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASAssetDownloader_registerAssets_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = assetsCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = assetsCopy;
  dispatch_async(workQueue, block);
}

void __54__MSASAssetDownloader_registerAssets_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__MSASAssetDownloader_registerAssets_completionBlock___block_invoke_2;
  v5[3] = &unk_278E927A0;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 workQueueRegisterAssets:v3 completionBlock:v5];
}

void __54__MSASAssetDownloader_registerAssets_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)workQueueDownloadNextBatch
{
  v217 = *MEMORY[0x277D85DE8];
  if ([(MSASAssetTransferer *)self hasShutDown])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not downloading any more assets because we're shutting down.", buf, 0xCu);
    }

    goto LABEL_127;
  }

  [(MSASAssetDownloader *)self setDidEncounterNetworkConditionError:0];
  [(MSASAssetDownloader *)self setCurrentFocusAssetCollectionGUID:0];
  [(MSASAssetDownloader *)self setCurrentFocusAlbumGUID:0];
  [(MSASAssetDownloader *)self setIsDownloadingThumbnails:0];
  eventQueue = [(MSASAssetTransferer *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  focusAssetCollectionGUID = [(MSASAssetTransferer *)self focusAssetCollectionGUID];

  if (focusAssetCollectionGUID)
  {
    model = [(MSASAssetTransferer *)self model];
    focusAssetCollectionGUID2 = [(MSASAssetTransferer *)self focusAssetCollectionGUID];
    v7 = [model nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:focusAssetCollectionGUID2 thumbnails:1 maxCount:100 isInflight:0];

    v8 = [v7 count];
    if (v8)
    {
      v9 = v7;
LABEL_9:
      [(MSASAssetDownloader *)self setIsDownloadingThumbnails:v8 != 0];
      focusAssetCollectionGUID3 = [(MSASAssetTransferer *)self focusAssetCollectionGUID];
      [(MSASAssetDownloader *)self setCurrentFocusAssetCollectionGUID:focusAssetCollectionGUID3];

      goto LABEL_10;
    }

    model2 = [(MSASAssetTransferer *)self model];
    focusAssetCollectionGUID4 = [(MSASAssetTransferer *)self focusAssetCollectionGUID];
    v9 = [model2 nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:focusAssetCollectionGUID4 thumbnails:0 maxCount:100 isInflight:0];

    if ([v9 count])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  if (![v9 count])
  {
    focusAlbumGUID = [(MSASAssetTransferer *)self focusAlbumGUID];

    if (focusAlbumGUID)
    {
      model3 = [(MSASAssetTransferer *)self model];
      focusAlbumGUID2 = [(MSASAssetTransferer *)self focusAlbumGUID];
      v16 = [model3 nextItemsForDownloadFocusAlbumGUID:focusAlbumGUID2 focusAssetCollectionGUID:0 thumbnails:1 maxCount:100 isInflight:0];

      v17 = [v16 count];
      if (v17)
      {
        v9 = v16;
      }

      else
      {
        model4 = [(MSASAssetTransferer *)self model];
        focusAlbumGUID3 = [(MSASAssetTransferer *)self focusAlbumGUID];
        v9 = [model4 nextItemsForDownloadFocusAlbumGUID:focusAlbumGUID3 focusAssetCollectionGUID:0 thumbnails:0 maxCount:100 isInflight:0];

        if (![v9 count])
        {
          goto LABEL_16;
        }
      }

      [(MSASAssetDownloader *)self setIsDownloadingThumbnails:v17 != 0];
      focusAlbumGUID4 = [(MSASAssetTransferer *)self focusAlbumGUID];
      [(MSASAssetDownloader *)self setCurrentFocusAlbumGUID:focusAlbumGUID4];
    }
  }

LABEL_16:
  if ([v9 count])
  {
    goto LABEL_21;
  }

  model5 = [(MSASAssetTransferer *)self model];
  v22 = [model5 nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:0 thumbnails:1 maxCount:100 isInflight:0];

  v23 = [v22 count];
  if (v23)
  {
    v9 = v22;
  }

  else
  {
    model6 = [(MSASAssetTransferer *)self model];
    v9 = [model6 nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:0 thumbnails:0 maxCount:100 isInflight:0];

    if (![v9 count])
    {
      goto LABEL_21;
    }
  }

  [(MSASAssetDownloader *)self setIsDownloadingThumbnails:v23 != 0];
LABEL_21:
  selfCopy2 = self;
  if (![v9 count])
  {
    itemsInFlight = self->_itemsInFlight;
    if (!itemsInFlight || ![(NSMutableArray *)itemsInFlight count])
    {
      model7 = [(MSASAssetTransferer *)self model];
      v27 = [model7 nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:0 thumbnails:1 maxCount:100 isInflight:1];

      v28 = [v27 count];
      if (v28)
      {
        v9 = v27;
      }

      else
      {
        model8 = [(MSASAssetTransferer *)self model];
        v9 = [model8 nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:0 thumbnails:0 maxCount:100 isInflight:1];

        if (![v9 count])
        {
          goto LABEL_28;
        }
      }

      [(MSASAssetDownloader *)self setIsDownloadingThumbnails:v28 != 0];
    }

LABEL_28:
    if (![v9 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Nothing to download.", buf, 0xCu);
      }

      [(MSASAssetDownloader *)self _workQueueGoIdle];
      goto LABEL_126;
    }
  }

  self->_state = 1;
  v157 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if (!self->_itemsInFlight)
  {
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v31 = self->_itemsInFlight;
    self->_itemsInFlight = v30;
  }

  if (!self->_assetToItemInFlightMap)
  {
    v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    assetToItemInFlightMap = self->_assetToItemInFlightMap;
    self->_assetToItemInFlightMap = v32;
  }

  if (!self->_finishedAssets)
  {
    v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    finishedAssets = self->_finishedAssets;
    self->_finishedAssets = v34;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v37 = v9;
  v38 = [v37 countByEnumeratingWithState:&v198 objects:v216 count:16];
  if (!v38)
  {
    v163 = 0;
    goto LABEL_51;
  }

  v39 = v38;
  v163 = 0;
  v40 = *v199;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v199 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v42 = *(*(&v198 + 1) + 8 * i);
      object = [v42 object];
      mMCSURL = [object MMCSURL];

      if (!mMCSURL)
      {
        v47 = MEMORY[0x277CBEAC0];
        _missingURLError = [(MSASAssetTransferer *)selfCopy2 _missingURLError];
        albumGUID = [v42 albumGUID];
        v50 = [v47 dictionaryWithObjectsAndKeys:{_missingURLError, @"error", albumGUID, @"albumGUID", 0}];

        [dictionary setObject:v50 forKey:object];
        goto LABEL_47;
      }

      mMCSURL2 = [object MMCSURL];
      if (!v163)
      {
        v163 = mMCSURL2;
LABEL_46:
        [v36 addObject:v42];
        goto LABEL_47;
      }

      v46 = [v163 isEqual:mMCSURL2];

      if (v46)
      {
        goto LABEL_46;
      }

LABEL_47:
    }

    v39 = [v37 countByEnumeratingWithState:&v198 objects:v216 count:16];
  }

  while (v39);
LABEL_51:
  v155 = v37;

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = v36;
  v51 = [obj countByEnumeratingWithState:&v194 objects:v215 count:16];
  if (!v51)
  {
    goto LABEL_65;
  }

  v52 = v51;
  v53 = *v195;
  while (2)
  {
    v54 = 0;
    while (2)
    {
      if (*v195 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v55 = *(*(&v194 + 1) + 8 * v54);
      object2 = [v55 object];
      mMCSAccessHeader = [object2 MMCSAccessHeader];

      if (mMCSAccessHeader)
      {
        mMCSAccessHeaderTimeStamp = [object2 MMCSAccessHeaderTimeStamp];
        if (mMCSAccessHeaderTimeStamp)
        {
          v59 = mMCSAccessHeaderTimeStamp;
          date = [MEMORY[0x277CBEAA8] date];
          mMCSAccessHeaderTimeStamp2 = [object2 MMCSAccessHeaderTimeStamp];
          [date timeIntervalSinceDate:mMCSAccessHeaderTimeStamp2];
          v63 = v62;
          [(MSASAssetTransferer *)selfCopy2 workQueueMaxMMCSTokenValidityTimeInterval];
          v65 = v64;

          if (v63 > v65)
          {
            v66 = MEMORY[0x277CBEAC0];
            _MMCSTokenTooOldError = [(MSASAssetTransferer *)selfCopy2 _MMCSTokenTooOldError];
            albumGUID2 = [v55 albumGUID];
            v69 = [v66 dictionaryWithObjectsAndKeys:{_MMCSTokenTooOldError, @"error", albumGUID2, @"albumGUID", 0}];

            v70 = dictionary;
            goto LABEL_62;
          }
        }

        [v157 addObject:v55];
      }

      else
      {
        v71 = MEMORY[0x277CBEAC0];
        _missingMMCSTokenError = [(MSASAssetTransferer *)selfCopy2 _missingMMCSTokenError];
        albumGUID3 = [v55 albumGUID];
        v69 = [v71 dictionaryWithObjectsAndKeys:{_missingMMCSTokenError, @"error", albumGUID3, @"albumGUID", 0}];

        v70 = dictionary2;
LABEL_62:
        [v70 setObject:v69 forKey:object2];
      }

      if (v52 != ++v54)
      {
        continue;
      }

      break;
    }

    v52 = [obj countByEnumeratingWithState:&v194 objects:v215 count:16];
    if (v52)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v74 = [dictionary count];
  v75 = [dictionary2 count] + v74;
  if (v75)
  {
    eventQueue2 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
    v193[0] = MEMORY[0x277D85DD0];
    v193[1] = 3221225472;
    v193[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_18;
    v193[3] = &unk_278E92750;
    v193[4] = selfCopy2;
    v193[5] = v75;
    dispatch_async(eventQueue2, v193);

    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v162 = dictionary;
    v77 = [v162 countByEnumeratingWithState:&v189 objects:v214 count:16];
    if (v77)
    {
      v78 = v77;
      v160 = *v190;
      v79 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v190 != v160)
          {
            objc_enumerationMutation(v162);
          }

          v81 = *(*(&v189 + 1) + 8 * j);
          v82 = [v162 objectForKey:v81];
          v83 = [v82 objectForKey:@"error"];
          v84 = [v82 objectForKey:@"albumGUID"];
          v85 = v79;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            selfCopy3 = selfCopy2;
            v208 = 2114;
            v209 = v81;
            v210 = 2114;
            v211 = v84;
            v212 = 2114;
            v213 = v83;
            _os_log_error_impl(&dword_245B99000, v79, OS_LOG_TYPE_ERROR, "%{public}@: Rejecting asset %{public}@ from albumGUID %{public}@. Error: %{public}@", buf, 0x2Au);
          }

          eventQueue3 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
          v186[0] = MEMORY[0x277D85DD0];
          v186[1] = 3221225472;
          v186[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_19;
          v186[3] = &unk_278E92660;
          v186[4] = selfCopy2;
          v186[5] = v81;
          v87 = v84;
          v187 = v87;
          v88 = v83;
          v188 = v88;
          dispatch_async(eventQueue3, v186);
        }

        v78 = [v162 countByEnumeratingWithState:&v189 objects:v214 count:16];
      }

      while (v78);
    }

    v89 = selfCopy2;
    if ([dictionary2 count])
    {
      v90 = MEMORY[0x277D86220];
      v91 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v92 = [dictionary2 count];
        *buf = 138543618;
        selfCopy3 = selfCopy2;
        v208 = 2048;
        v209 = v92;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Needing to get auth token for %lu assets", buf, 0x16u);
      }

      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v93 = dictionary2;
      v94 = [v93 countByEnumeratingWithState:&v182 objects:v205 count:16];
      if (v94)
      {
        v95 = v94;
        v161 = *v183;
        do
        {
          for (k = 0; k != v95; ++k)
          {
            if (*v183 != v161)
            {
              objc_enumerationMutation(v93);
            }

            v97 = *(*(&v182 + 1) + 8 * k);
            v98 = [v93 objectForKey:v97];
            v99 = [v98 objectForKey:@"error"];
            v100 = [v98 objectForKey:@"albumGUID"];
            eventQueue4 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
            v179[0] = MEMORY[0x277D85DD0];
            v179[1] = 3221225472;
            v179[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_20;
            v179[3] = &unk_278E92660;
            v179[4] = selfCopy2;
            v179[5] = v97;
            v102 = v100;
            v180 = v102;
            v103 = v99;
            v181 = v103;
            dispatch_async(eventQueue4, v179);
          }

          v95 = [v93 countByEnumeratingWithState:&v182 objects:v205 count:16];
        }

        while (v95);
      }

      v89 = selfCopy2;
    }

    model9 = [(MSASAssetTransferer *)v89 model];
    allKeys = [v162 allKeys];
    [model9 removeAssetsFromDownloadQueue:allKeys];

    model10 = [(MSASAssetTransferer *)v89 model];
    allKeys2 = [dictionary2 allKeys];
    [model10 removeAssetsFromDownloadQueue:allKeys2];

    eventQueue5 = [(MSASAssetTransferer *)v89 eventQueue];
    v178[0] = MEMORY[0x277D85DD0];
    v178[1] = 3221225472;
    v178[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_2;
    v178[3] = &unk_278E926D8;
    v178[4] = v89;
    dispatch_async(eventQueue5, v178);
  }

  v109 = v157;
  if ([v157 count])
  {
    v110 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v157, "count")}];
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v111 = v157;
    v112 = [v111 countByEnumeratingWithState:&v174 objects:v204 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v175;
      do
      {
        for (m = 0; m != v113; ++m)
        {
          if (*v175 != v114)
          {
            objc_enumerationMutation(v111);
          }

          v116 = *(*(&v174 + 1) + 8 * m);
          object3 = [v116 object];
          [v110 addObject:object3];
          [(NSMutableArray *)selfCopy2->_itemsInFlight addObject:v116];
          [(NSMutableDictionary *)selfCopy2->_assetToItemInFlightMap setObject:v116 forKey:object3];
          engine = [(MSASAssetTransferer *)selfCopy2 engine];
          [engine reregisterAssetForDownload:object3];
        }

        v113 = [v111 countByEnumeratingWithState:&v174 objects:v204 count:16];
      }

      while (v113);
    }

    v119 = MEMORY[0x277D86220];
    v120 = MEMORY[0x277D86220];
    v121 = selfCopy2;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      v154 = [v110 count];
      *buf = 138543618;
      selfCopy3 = selfCopy2;
      v208 = 2048;
      v209 = v154;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Downloading %ld assets.", buf, 0x16u);
    }

    eventQueue6 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
    v172[0] = MEMORY[0x277D85DD0];
    v172[1] = 3221225472;
    v172[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_21;
    v172[3] = &unk_278E927C8;
    v172[4] = selfCopy2;
    v123 = v110;
    v173 = v123;
    dispatch_async(eventQueue6, v172);

    v124 = MSPlatform();
    if (objc_opt_respondsToSelector())
    {
      v125 = MSPlatform();
      isPerformanceLoggingEnabled = [v125 isPerformanceLoggingEnabled];

      if (isPerformanceLoggingEnabled)
      {
        [(MSASAssetDownloader *)selfCopy2 setIsWaitingForFirstDownloadEvent:1];
        v127 = +[MSPerformanceLogger sharedLogger];
        workQueueObjectGUID = [(MSASAssetDownloader *)selfCopy2 workQueueObjectGUID];
        [v127 startOperation:@"MSASAssetDownloader.downloadLatency" itemGUID:workQueueObjectGUID];

        mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
        [(MSASAssetDownloader *)selfCopy2 setDownloadBatchPerfGUID:mSMakeUUID];

        v121 = selfCopy2;
        v124 = +[MSPerformanceLogger sharedLogger];
        downloadBatchPerfGUID = [(MSASAssetDownloader *)selfCopy2 downloadBatchPerfGUID];
        [v124 startOperation:@"MSASAssetDownloader.downloadRate" itemGUID:downloadBatchPerfGUID];

        goto LABEL_100;
      }
    }

    else
    {
LABEL_100:
    }

    v131 = MSASPlatform();
    v132 = objc_opt_respondsToSelector();

    if (v132)
    {
      v133 = MSASPlatform();
      personID = [(MSASAssetTransferer *)v121 personID];
      v135 = [v133 MMCSDownloadSocketOptionsForPersonID:personID];

      if (v135)
      {
        v136 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v135 forKey:*MEMORY[0x277D25610]];
      }

      else
      {
        v136 = 0;
      }
    }

    else
    {
      v136 = 0;
    }

    v137 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v138 = v123;
    v139 = [v138 countByEnumeratingWithState:&v168 objects:v203 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = 0;
      v142 = *v169;
      do
      {
        for (n = 0; n != v140; ++n)
        {
          if (*v169 != v142)
          {
            objc_enumerationMutation(v138);
          }

          [v137 addObject:*(*(&v168 + 1) + 8 * n)];
          if (++v141 == [(MSASAssetTransferer *)selfCopy2 maxBatchCount])
          {
            eventQueue7 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
            v167[0] = MEMORY[0x277D85DD0];
            v167[1] = 3221225472;
            v167[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_2_24;
            v167[3] = &unk_278E926D8;
            v167[4] = selfCopy2;
            dispatch_async(eventQueue7, v167);

            engine2 = [(MSASAssetTransferer *)selfCopy2 engine];
            v146 = [v137 copy];
            personID2 = [(MSASAssetTransferer *)selfCopy2 personID];
            [engine2 getAssets:v146 requestURL:v163 DSID:personID2 options:v136];

            [v137 removeAllObjects];
            v141 = 0;
          }
        }

        v140 = [v138 countByEnumeratingWithState:&v168 objects:v203 count:16];
      }

      while (v140);
    }

    if ([v137 count])
    {
      eventQueue8 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_3;
      v166[3] = &unk_278E926D8;
      v166[4] = selfCopy2;
      dispatch_async(eventQueue8, v166);

      engine3 = [(MSASAssetTransferer *)selfCopy2 engine];
      personID3 = [(MSASAssetTransferer *)selfCopy2 personID];
      [engine3 getAssets:v137 requestURL:v163 DSID:personID3 options:v136];
    }

    model11 = [(MSASAssetTransferer *)selfCopy2 model];
    [model11 setInFlightAssets:v138];

    eventQueue9 = [(MSASAssetTransferer *)selfCopy2 eventQueue];
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 3221225472;
    v165[2] = __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_4;
    v165[3] = &unk_278E926D8;
    v165[4] = selfCopy2;
    dispatch_async(eventQueue9, v165);

    v9 = v155;
    v109 = v157;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy3 = selfCopy2;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: No assets to download.", buf, 0xCu);
    }

    [(MSASAssetDownloader *)selfCopy2 _workQueueGoIdle];
    v9 = v155;
  }

LABEL_126:
LABEL_127:
  v153 = *MEMORY[0x277D85DE8];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloader:*(a1 + 32) willBeginBatchCount:*(a1 + 40)];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloader:*(a1 + 32) didFinishDownloadingAsset:*(a1 + 40) inAlbumGUID:*(a1 + 48) error:*(a1 + 56)];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloader:*(a1 + 32) didFinishDownloadingAsset:*(a1 + 40) inAlbumGUID:*(a1 + 48) error:*(a1 + 56)];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloaderDidFinishBatch:*(a1 + 32)];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_21(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetDownloader:*(a1 + 32) willBeginBatchCount:{objc_msgSend(*(a1 + 40), "count")}];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_2_24(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

void __49__MSASAssetDownloader_workQueueDownloadNextBatch__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

- (void)_workQueueGoIdle
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Work queue go idle.", buf, 0xCu);
  }

  eventQueue = [(MSASAssetTransferer *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MSASAssetDownloader__workQueueGoIdle__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  if ([(MSASAssetDownloader *)self state]&& ![(NSMutableArray *)self->_itemsInFlight count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting idle state.", buf, 0xCu);
    }

    itemsInFlight = self->_itemsInFlight;
    self->_itemsInFlight = 0;

    assetToItemInFlightMap = self->_assetToItemInFlightMap;
    self->_assetToItemInFlightMap = 0;

    finishedAssets = self->_finishedAssets;
    self->_finishedAssets = 0;

    self->_state = 0;
    [(MSASAssetTransferer *)self _sendDidIdleNotification];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__MSASAssetDownloader__workQueueGoIdle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

- (void)workQueueCancel
{
  v36 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling all downloads.", buf, 0xCu);
    }

    engine = [(MSASAssetTransferer *)self engine];
    [engine cancelAllOperations];

    v4 = MSPlatform();
    if (objc_opt_respondsToSelector())
    {
      v5 = MSPlatform();
      isPerformanceLoggingEnabled = [v5 isPerformanceLoggingEnabled];

      if (!isPerformanceLoggingEnabled)
      {
        goto LABEL_8;
      }

      [(MSASAssetDownloader *)self setIsWaitingForFirstDownloadEvent:0];
      v7 = +[MSPerformanceLogger sharedLogger];
      workQueueObjectGUID = [(MSASAssetDownloader *)self workQueueObjectGUID];
      [v7 discardOperation:@"MSASAssetDownloader.downloadLatency" itemGUID:workQueueObjectGUID];

      v4 = +[MSPerformanceLogger sharedLogger];
      downloadBatchPerfGUID = [(MSASAssetDownloader *)self downloadBatchPerfGUID];
      [v4 discardOperation:@"MSASAssetDownloader.downloadRate" itemGUID:downloadBatchPerfGUID];
    }
  }

LABEL_8:
  model = [(MSASAssetTransferer *)self model];
  v11 = [model nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:0 maxCount:10];

  while ([v11 count])
  {
    context = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          object = [v18 object];
          eventQueue = [(MSASAssetTransferer *)self eventQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__MSASAssetDownloader_workQueueCancel__block_invoke;
          block[3] = &unk_278E92638;
          block[4] = self;
          v27 = object;
          v28 = v18;
          v21 = object;
          dispatch_async(eventQueue, block);

          [v12 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    model2 = [(MSASAssetTransferer *)self model];
    [model2 removeAssetsFromDownloadQueue:v12];

    model3 = [(MSASAssetTransferer *)self model];
    v11 = [model3 nextItemsForDownloadFocusAlbumGUID:0 focusAssetCollectionGUID:0 maxCount:10];

    objc_autoreleasePoolPop(context);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __38__MSASAssetDownloader_workQueueCancel__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) albumGUID];
  v5 = [*(a1 + 32) _canceledError];
  [v6 MSASAssetDownloader:v2 didFinishDownloadingAsset:v3 inAlbumGUID:v4 error:v5];
}

- (void)workQueueShutDownCompletionBlock:(id)block
{
  blockCopy = block;
  [(MSASAssetDownloader *)self workQueueStop];
  v5.receiver = self;
  v5.super_class = MSASAssetDownloader;
  [(MSASAssetTransferer *)&v5 workQueueShutDownCompletionBlock:blockCopy];
}

- (void)workQueueStop
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping all downloads.", &v11, 0xCu);
    }

    engine = [(MSASAssetTransferer *)self engine];
    [engine cancelAllOperations];

    [(MSASAssetDownloader *)self _workQueueGoIdle];
    v4 = MSPlatform();
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = MSPlatform();
    isPerformanceLoggingEnabled = [v5 isPerformanceLoggingEnabled];

    if (isPerformanceLoggingEnabled)
    {
      [(MSASAssetDownloader *)self setIsWaitingForFirstDownloadEvent:0];
      v7 = +[MSPerformanceLogger sharedLogger];
      workQueueObjectGUID = [(MSASAssetDownloader *)self workQueueObjectGUID];
      [v7 stopOperation:@"MSASAssetDownloader.downloadLatency" itemGUID:workQueueObjectGUID];

      v4 = +[MSPerformanceLogger sharedLogger];
      downloadBatchPerfGUID = [(MSASAssetDownloader *)self downloadBatchPerfGUID];
      [v4 stopOperation:@"MSASAssetDownloader.downloadRate" itemGUID:downloadBatchPerfGUID];

LABEL_7:
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)workQueueObjectGUID
{
  objectGUID = self->_objectGUID;
  if (!objectGUID)
  {
    mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
    v5 = self->_objectGUID;
    self->_objectGUID = mSMakeUUID;

    objectGUID = self->_objectGUID;
  }

  return objectGUID;
}

- (void)workQueueRetryOutstandingActivities
{
  v14 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state > 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 1024;
      v13 = state;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unknown state: %d", &v10, 0x12u);
    }

    v8 = MSPlatform();
    [v8 didDetectUnrecoverableCondition];

    goto LABEL_9;
  }

  v4 = MSASPlatform();
  personID = [(MSASAssetTransferer *)self personID];
  v6 = [v4 MSASPersonIDIsAllowedToDownloadAssets:personID];

  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not allowed to download assets at this time.", &v10, 0xCu);
    }

LABEL_9:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *MEMORY[0x277D85DE8];

  [(MSASAssetDownloader *)self workQueueDownloadNextBatch];
}

@end