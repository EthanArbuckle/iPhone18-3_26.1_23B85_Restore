@interface MSASAssetUploader
- (id)_orphanedAssetCollectionError;
- (void)MMCSEngine:(id)a3 didCreateRequestorContext:(id)a4 forAssets:(id)a5;
- (void)MMCSEngine:(id)a3 didFinishGettingAsset:(id)a4 path:(id)a5 error:(id)a6;
- (void)MMCSEngine:(id)a3 didFinishPuttingAsset:(id)a4 putReceipt:(id)a5 error:(id)a6;
- (void)MMCSEngine:(id)a3 didMakeGetProgress:(float)a4 state:(int)a5 onAsset:(id)a6;
- (void)MMCSEngine:(id)a3 didMakePutProgress:(float)a4 state:(int)a5 onAsset:(id)a6;
- (void)_workQueueStop;
- (void)cancelAssetCollections:(id)a3;
- (void)didFinishGettingAllAssets;
- (void)didFinishPuttingAllAssets;
- (void)registerAssetCollections:(id)a3 completionBlock:(id)a4;
- (void)unregisterAssetCollections:(id)a3 completionBlock:(id)a4;
- (void)workQueueCancel;
- (void)workQueueCancelAssetCollections:(id)a3;
- (void)workQueueDidFinishWithItem:(id)a3 error:(id)a4;
- (void)workQueueGoIdle;
- (void)workQueueRegisterAssetCollections:(id)a3 index:(unint64_t)a4 results:(id)a5 completionBlock:(id)a6;
- (void)workQueueRegisterAssets:(id)a3 index:(unint64_t)a4 completionBlock:(id)a5;
- (void)workQueueRetryOutstandingActivities;
- (void)workQueueShutDownCompletionBlock:(id)a3;
- (void)workQueueStop;
- (void)workQueueStopTrackingItem:(id)a3;
- (void)workQueueUploadNextBatch;
@end

@implementation MSASAssetUploader

- (void)didFinishGettingAllAssets
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback - MMCSEngine:didFinishGettingAllAssetsContext:", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)a3 didMakeGetProgress:(float)a4 state:(int)a5 onAsset:(id)a6
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback - MMCSEngine:didMakeGetProgress:state:onAsset:context:", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)a3 didFinishGettingAsset:(id)a4 path:(id)a5 error:(id)a6
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback - MMCSEngine:didFinishGettingAsset:context:error:", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didFinishPuttingAllAssets
{
  v3 = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSASAssetUploader_didFinishPuttingAllAssets__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __46__MSASAssetUploader_didFinishPuttingAllAssets__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = [*(v2 + 144) count];
    *buf = 138543618;
    v39 = v2;
    v40 = 2048;
    v41 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished uploading %ld asset collections.", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(*(a1 + 32) + 152);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = *MEMORY[0x277D25460];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:14 userInfo:0];
        [v11 workQueueDidFinishWithItem:v10 error:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 152) removeAllObjects];
  [*(*(a1 + 32) + 160) removeAllObjects];
  if ([*(*(a1 + 32) + 136) count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    v25 = [*(v24 + 136) count];
    *buf = 138543618;
    v39 = v24;
    v40 = 2048;
    v41 = v25;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found %ld orphaned assets. Ignoring.", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 120) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = [*(v26 + 120) count];
      *buf = 138543618;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found %ld orphaned asset collections.", buf, 0x16u);
    }

    v13 = [*(*(a1 + 32) + 120) copy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          v20 = *(a1 + 32);
          v21 = [v20 _orphanedAssetCollectionError];
          [v20 workQueueDidFinishWithItem:v19 error:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }
  }

  [*(a1 + 32) workQueueGoIdle];
  result = [*(a1 + 32) didEncounterNetworkConditionError];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)MMCSEngine:(id)a3 didMakePutProgress:(float)a4 state:(int)a5 onAsset:(id)a6
{
  v9 = a6;
  v10 = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASAssetUploader_MMCSEngine_didMakePutProgress_state_onAsset___block_invoke;
  block[3] = &unk_278E91AA0;
  v14 = a4;
  v15 = a5;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(v10, block);
}

void __65__MSASAssetUploader_MMCSEngine_didMakePutProgress_state_onAsset___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MSASPlatform();
  v3 = [v2 shouldLogAtLevel:7];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v4 == -1.0)
    {
      if (v5)
      {
        v13 = *(a1 + 32);
        v7 = [MMCSEngine logStringForPutItemState:*(a1 + 52)];
        v14 = *(a1 + 40);
        v15 = 138543874;
        v16 = v13;
        v17 = 2114;
        v18 = *&v7;
        v19 = 2048;
        v20 = v14;
        v9 = MEMORY[0x277D86220];
        v10 = "%{public}@: Upload progress state: %{public}@, on asset: %p";
        v11 = 32;
        goto LABEL_8;
      }
    }

    else if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [MMCSEngine logStringForPutItemState:*(a1 + 52)];
      v8 = *(a1 + 40);
      v15 = 138544130;
      v16 = v6;
      v17 = 2048;
      v18 = v4;
      v19 = 2114;
      v20 = v7;
      v21 = 2048;
      v22 = v8;
      v9 = MEMORY[0x277D86220];
      v10 = "%{public}@: Upload progress: %.2f, state: %{public}@, on asset: %p";
      v11 = 42;
LABEL_8:
      _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, v10, &v15, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)a3 didCreateRequestorContext:(id)a4 forAssets:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MSASAssetUploader_MMCSEngine_didCreateRequestorContext_forAssets___block_invoke;
  block[3] = &unk_278E92638;
  v13 = v8;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

void __68__MSASAssetUploader_MMCSEngine_didCreateRequestorContext_forAssets___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v19 + 1) + 8 * v7) assetCollectionGUID];
          [v2 addObject:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v2;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(a1 + 40) + 160) setObject:*(a1 + 48) forKey:{*(*(&v15 + 1) + 8 * v13++), v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)MMCSEngine:(id)a3 didFinishPuttingAsset:(id)a4 putReceipt:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASAssetTransferer *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = v11;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, v16);
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v75 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2[17] objectForKey:v1[6]];
    if (v4)
    {
      v5 = [*(v1[5] + 16) objectForKey:v4];
      if (v5)
      {
        v6 = [v1[4] MMCSRetryAfterDate];
        if (v6)
        {
          v7 = [v1[5] eventQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_2;
          block[3] = &unk_278E927C8;
          block[4] = v1[5];
          v66 = v6;
          dispatch_async(v7, block);
        }

        if ([v1[4] MMCSIsCancelError])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v8 = v1[5];
            *buf = 138543362;
            v69 = v8;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Asset upload was canceled. Ignoring.", buf, 0xCu);
          }

          [v1[5] workQueueStopTrackingItem:v5];
        }

        else if ([v1[4] MMCSIsNetworkConditionsError])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v26 = v1[5];
            *buf = 138543362;
            v69 = v26;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered temporary network error while uploading asset. Will retry later.", buf, 0xCu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v27 = v1[5];
            v28 = [v1[4] MSVerboseDescription];
            *buf = 138543618;
            v69 = v27;
            v70 = 2114;
            v71 = v28;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Error: %{public}@", buf, 0x16u);
          }

          [v1[5] workQueueStopTrackingItem:v5];
          [v1[5] setDidEncounterNetworkConditionError:1];
        }

        else if (([v1[4] MMCSIsFatalError] & 1) != 0 || (v32 = objc_msgSend(v5, "errorCount") + 1, v32 >= objc_msgSend(v1[5], "maxRetryCount")))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v47 = v1[5];
            v48 = [v1[4] MSVerboseDescription];
            *buf = 138543874;
            v69 = v47;
            v70 = 2114;
            v71 = v4;
            v72 = 2114;
            v73 = v48;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to upload asset collection: %{public}@. Error: %{public}@. Giving up.", buf, 0x20u);
          }

          [v1[5] workQueueDidFinishWithItem:v5 error:v1[4]];
        }

        else
        {
          v33 = [v1[5] model];
          [v33 setErrorCount:objc_msgSend(v5 forAssetCollectionInUploadQueue:{"errorCount") + 1, v4}];

          if ([v1[4] MMCSIsAuthorizationError])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v34 = v1[5];
              v35 = [v1[4] MSVerboseDescription];
              *buf = 138543618;
              v69 = v34;
              v70 = 2114;
              v71 = v35;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered MMCS auth error. Will reauthorize. Error: %{public}@", buf, 0x16u);
            }

            obja = v1;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v52 = [v4 assets];
            v36 = [v52 countByEnumeratingWithState:&v61 objects:v74 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v62;
              while (2)
              {
                for (i = 0; i != v37; ++i)
                {
                  if (*v62 != v38)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v40 = *(*(&v61 + 1) + 8 * i);
                  v41 = [v40 GUID];
                  v42 = [obja[6] GUID];
                  v43 = [v41 isEqualToString:v42];

                  if (v43)
                  {
                    [v40 setMMCSAccessHeader:0];
                    goto LABEL_65;
                  }
                }

                v37 = [v52 countByEnumeratingWithState:&v61 objects:v74 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }
            }

LABEL_65:

            [*(obja[5] + 19) addObject:v5];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v49 = v1[5];
              v50 = [v1[4] MSVerboseDescription];
              *buf = 138543874;
              v69 = v49;
              v70 = 2114;
              v71 = v4;
              v72 = 2114;
              v73 = v50;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to upload asset collection %{public}@. Error: %{public}@. Will retry later.", buf, 0x20u);
            }

            [v1[5] workQueueStopTrackingItem:v5];
            v45 = [v1[5] eventQueue];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_19;
            v60[3] = &unk_278E926D8;
            v60[4] = v1[5];
            dispatch_async(v45, v60);
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = v1[5];
        v23 = v1[6];
        *buf = 138543618;
        v69 = v22;
        v70 = 2114;
        v71 = v23;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Already reported error on asset %{public}@. Ignoring.", buf, 0x16u);
      }

      goto LABEL_59;
    }
  }

  else
  {
    v9 = [v2 eventQueue];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_20;
    v59[3] = &unk_278E926D8;
    v59[4] = v1[5];
    dispatch_async(v9, v59);

    v4 = [*(v1[5] + 17) objectForKey:v1[6]];
    if (v4)
    {
      [*(v1[5] + 17) removeObjectForKey:v1[6]];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v10 = [v4 assets];
      v11 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (v11)
      {
        v12 = v11;
        v51 = v4;
        obj = v10;
        v13 = *v56;
        v14 = 1;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v56 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v55 + 1) + 8 * j);
            v17 = [v16 GUID];
            [v1[6] GUID];
            v19 = v18 = v1;
            v20 = [v17 isEqualToString:v19];

            v1 = v18;
            if (v20)
            {
              [v16 setMMCSReceipt:v18[7]];
            }

            v21 = [*(v18[5] + 17) objectForKey:v16];

            v14 &= v21 == 0;
          }

          v12 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
        }

        while (v12);

        v4 = v51;
        if ((v14 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
      }

      v5 = [*(v1[5] + 16) objectForKey:v4];
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = v1[5];
          *buf = 138543618;
          v69 = v29;
          v70 = 2114;
          v71 = v4;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully uploaded asset collection: %{public}@", buf, 0x16u);
        }

        [v1[5] workQueueDidFinishWithItem:v5 error:0];
        v30 = *(v1[5] + 20);
        v31 = [v4 GUID];
        [v30 removeObjectForKey:v31];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v46 = v1[5];
          *buf = 138543362;
          v69 = v46;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not find upload item that matches the completed asset collection.", buf, 0xCu);
        }

        v31 = MSPlatform();
        [v31 didDetectUnrecoverableCondition];
      }

LABEL_59:
      goto LABEL_60;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = v1[5];
      v25 = v1[6];
      *buf = 138543618;
      v69 = v24;
      v70 = 2114;
      v71 = v25;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Successfully uploaded asset %{public}@, but can't find matching asset collection. Ignoring.", buf, 0x16u);
    }
  }

LABEL_60:

  v44 = *MEMORY[0x277D85DE8];
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffManager];
  [v2 didReceiveRetryAfterDate:*(a1 + 40)];
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_19(uint64_t a1)
{
  v1 = [*(a1 + 32) backoffManager];
  [v1 backoff];
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffManager];
  [v2 reset];

  v4 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v4 didReceiveAuthSuccessForPersonID:v3];
}

- (void)workQueueDidFinishWithItem:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MSASAssetUploader *)self workQueueStopTrackingItem:v7];
  v8 = [v7 object];
  v9 = [(MSASAssetTransferer *)self model];
  v10 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
  [v9 removeAssetCollectionsFromUploadQueue:v10];

  [(NSMutableArray *)self->_finishedAssetCollections addObject:v8];
  v11 = [v7 album];

  v12 = [(MSASAssetTransferer *)self eventQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__MSASAssetUploader_workQueueDidFinishWithItem_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = v8;
  v18 = v11;
  v19 = v6;
  v13 = v6;
  v14 = v11;
  v15 = v8;
  dispatch_async(v12, v16);
}

void __54__MSASAssetUploader_workQueueDidFinishWithItem_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetUploader:*(a1 + 32) didFinishUploadingAssetCollection:*(a1 + 40) intoAlbum:*(a1 + 48) error:*(a1 + 56)];
}

- (void)workQueueStopTrackingItem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  [(NSMutableArray *)self->_itemsInFlight removeObject:v4];
  [(NSMutableDictionary *)self->_assetCollectionsToItemInFlightMap removeObjectForKey:v5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 assets];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self->_assetToAssetCollectionMap removeObjectForKey:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelAssetCollections:(id)a3
{
  v4 = a3;
  v5 = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MSASAssetUploader_cancelAssetCollections___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterAssetCollections:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSASAssetUploader_unregisterAssetCollections_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t __64__MSASAssetUploader_unregisterAssetCollections_completionBlock___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = [v6 assets];
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v17 + 1) + 8 * v11);
              v13 = [*(a1 + 40) engine];
              [v13 unregisterAsset:v12];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerAssetCollections:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke_2;
  v5[3] = &unk_278E91A50;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 workQueueRegisterAssetCollections:v3 index:0 results:v4 completionBlock:v5];
}

void __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) eventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke_3;
  v7[3] = &unk_278E927A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)workQueueRegisterAssetCollections:(id)a3 index:(unint64_t)a4 results:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  }

  if ([v10 count] <= a4)
  {
    v12[2](v12, v11);
  }

  else
  {
    v13 = [v10 objectAtIndex:a4];
    v14 = [v13 assets];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__MSASAssetUploader_workQueueRegisterAssetCollections_index_results_completionBlock___block_invoke;
    v15[3] = &unk_278E91A28;
    v16 = v11;
    v17 = self;
    v18 = v10;
    v20 = a4;
    v19 = v12;
    [(MSASAssetUploader *)self workQueueRegisterAssets:v14 index:0 completionBlock:v15];
  }
}

void __85__MSASAssetUploader_workQueueRegisterAssetCollections_index_results_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v3 addObject:v4];
  }

  v5 = [*(a1 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MSASAssetUploader_workQueueRegisterAssetCollections_index_results_completionBlock___block_invoke_2;
  block[3] = &unk_278E91A00;
  v10 = *(a1 + 40);
  v6 = *(&v10 + 1);
  v14 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

- (void)workQueueRegisterAssets:(id)a3 index:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count] <= a4)
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [v8 objectAtIndex:a4];
    [v10 setMMCSItemID:{-[MSASAssetTransferer workQueueNextItemID](self, "workQueueNextItemID")}];
    v11 = [(MSASAssetTransferer *)self engine];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MSASAssetUploader_workQueueRegisterAssets_index_completionBlock___block_invoke;
    v12[3] = &unk_278E919D8;
    v14 = v9;
    v12[4] = self;
    v13 = v8;
    v15 = a4;
    [v11 registerAssetForUpload:v10 completionBlock:v12];
  }
}

void __67__MSASAssetUploader_workQueueRegisterAssets_index_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__MSASAssetUploader_workQueueRegisterAssets_index_completionBlock___block_invoke_2;
    v10[3] = &unk_278E91CF0;
    v6 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v7 = v6;
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = v7;
    v13 = v8;
    v12 = v9;
    dispatch_async(v5, v10);
  }
}

- (void)workQueueCancelAssetCollections:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableDictionary *)self->_assetCollectionGUIDToRequestorContext count]== 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277D86220];
      v8 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          assetCollectionGUIDToRequestorContext = self->_assetCollectionGUIDToRequestorContext;
          v12 = [v10 GUID];
          v13 = [(NSMutableDictionary *)assetCollectionGUIDToRequestorContext objectForKey:v12];

          v14 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v14)
            {
              *buf = 138543874;
              v24 = self;
              v25 = 2114;
              v26 = v10;
              v27 = 2114;
              v28 = v13;
              _os_log_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling in-progress upload for asset collection %{public}@ with context %{public}@", buf, 0x20u);
            }

            v15 = [(MSASAssetTransferer *)self engine];
            [v15 cancelOperationsWithContext:v13];
          }

          else if (v14)
          {
            *buf = 138543618;
            v24 = self;
            v25 = 2114;
            v26 = v10;
            _os_log_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot cancel upload for assetCollection %{public}@ which is not in progress", buf, 0x16u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v6);
    }

    v4 = v17;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot cancel upload for assetCollections %{public}@ which is either not in progress, or has more than one items in an upload batch", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)workQueueUploadNextBatch
{
  v151 = *MEMORY[0x277D85DE8];
  if (![(MSASAssetTransferer *)self hasShutDown])
  {
    [(MSASAssetUploader *)self setDidEncounterNetworkConditionError:0];
    v4 = [(MSASAssetTransferer *)self model];
    v5 = [(MSASAssetTransferer *)self focusAlbumGUID];
    v6 = [v4 nextItemsForUploadAlbumGUID:v5 maxPriority:0 maxCount:{-[MSASAssetTransferer maxBatchCount](self, "maxBatchCount")}];
    v7 = [v6 mutableCopy];

    if (![v7 count])
    {
      v8 = [(MSASAssetTransferer *)self model];
      v9 = [(MSASAssetTransferer *)self focusAlbumGUID];
      v10 = [v8 nextItemsForUploadAlbumGUID:v9 maxPriority:10 maxCount:1];
      v11 = [v10 mutableCopy];

      v7 = v11;
    }

    if (![v7 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v141 = self;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Nothing to upload.", buf, 0xCu);
      }

      [(MSASAssetUploader *)self workQueueGoIdle];
      goto LABEL_98;
    }

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    itemsInFlight = self->_itemsInFlight;
    self->_itemsInFlight = v12;

    v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    assetCollectionsToItemInFlightMap = self->_assetCollectionsToItemInFlightMap;
    self->_assetCollectionsToItemInFlightMap = v14;

    v16 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count")}];
    assetCollectionsWithAuthorizationError = self->_assetCollectionsWithAuthorizationError;
    self->_assetCollectionsWithAuthorizationError = v16;

    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    assetCollectionGUIDToRequestorContext = self->_assetCollectionGUIDToRequestorContext;
    self->_assetCollectionGUIDToRequestorContext = v18;

    assetToAssetCollectionMap = self->_assetToAssetCollectionMap;
    self->_assetToAssetCollectionMap = 0;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    finishedAssetCollections = self->_finishedAssetCollections;
    self->_finishedAssetCollections = v21;

    [MEMORY[0x277CBEB38] dictionary];
    v92 = v91 = v7;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = v7;
    v96 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
    v23 = 0;
    if (v96)
    {
      v94 = *v132;
      do
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v132 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v131 + 1) + 8 * i);
          v26 = [v25 object];
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v101 = v26;
          v27 = [v26 assets];
          v28 = [v27 countByEnumeratingWithState:&v127 objects:v149 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v128;
            v98 = v25;
            while (2)
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v128 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v127 + 1) + 8 * j);
                v33 = [v32 MMCSURL];

                if (!v33)
                {
                  v37 = MEMORY[0x277CBEAC0];
                  v38 = [(MSASAssetTransferer *)self _missingURLError];
                  v39 = [v98 album];
                  v40 = [v37 dictionaryWithObjectsAndKeys:{v38, @"error", v39, @"album", 0}];

                  [v92 setObject:v40 forKey:v101];
LABEL_27:

                  goto LABEL_28;
                }

                v34 = [v32 MMCSURL];
                v35 = v34;
                if (v23)
                {
                  v36 = [v23 isEqual:v34];

                  if (!v36)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  v23 = v34;
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v127 objects:v149 count:16];
              v25 = v98;
              if (v29)
              {
                continue;
              }

              break;
            }
          }

          [(NSMutableArray *)self->_itemsInFlight addObject:v25];
LABEL_28:
        }

        v96 = [obj countByEnumeratingWithState:&v131 objects:v150 count:16];
      }

      while (v96);
    }

    if ([v92 count])
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v41 = v92;
      v102 = [v41 countByEnumeratingWithState:&v123 objects:v148 count:16];
      if (v102)
      {
        v99 = *v124;
        do
        {
          for (k = 0; k != v102; ++k)
          {
            if (*v124 != v99)
            {
              objc_enumerationMutation(v41);
            }

            v43 = *(*(&v123 + 1) + 8 * k);
            v44 = [v41 objectForKey:v43];
            v45 = [v44 objectForKey:@"error"];
            v46 = [v44 objectForKey:@"album"];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138544130;
              v141 = self;
              v142 = 2114;
              v143 = v43;
              v144 = 2114;
              v145 = v46;
              v146 = 2114;
              v147 = v45;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Rejecting asset collection %{public}@ from album %{public}@. Error: %{public}@", buf, 0x2Au);
            }

            v47 = [(MSASAssetTransferer *)self eventQueue];
            v120[0] = MEMORY[0x277D85DD0];
            v120[1] = 3221225472;
            v120[2] = __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke_12;
            v120[3] = &unk_278E92660;
            v120[4] = self;
            v120[5] = v43;
            v121 = v46;
            v122 = v45;
            v48 = v45;
            v49 = v46;
            dispatch_async(v47, v120);
          }

          v102 = [v41 countByEnumeratingWithState:&v123 objects:v148 count:16];
        }

        while (v102);
      }

      v50 = [(MSASAssetTransferer *)self model];
      v51 = [v41 allKeys];
      [v50 removeAssetCollectionsFromUploadQueue:v51];
    }

    if ([(NSMutableArray *)self->_itemsInFlight count])
    {
      v52 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{2 * -[NSMutableArray count](self->_itemsInFlight, "count")}];
      v53 = self->_assetToAssetCollectionMap;
      self->_assetToAssetCollectionMap = v52;

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v95 = self->_itemsInFlight;
      v97 = v23;
      v103 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v116 objects:v139 count:16];
      if (v103)
      {
        v100 = *v117;
        do
        {
          for (m = 0; m != v103; ++m)
          {
            if (*v117 != v100)
            {
              objc_enumerationMutation(v95);
            }

            v55 = *(*(&v116 + 1) + 8 * m);
            v56 = [v55 object];
            if (v56)
            {
              [(NSMutableDictionary *)self->_assetCollectionsToItemInFlightMap setObject:v55 forKey:v56];
              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v57 = [v56 assets];
              v58 = [v57 countByEnumeratingWithState:&v112 objects:v138 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v113;
                do
                {
                  for (n = 0; n != v59; ++n)
                  {
                    if (*v113 != v60)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v62 = *(*(&v112 + 1) + 8 * n);
                    v63 = [v62 MMCSReceipt];

                    if (!v63)
                    {
                      [(NSMutableDictionary *)self->_assetToAssetCollectionMap setObject:v56 forKey:v62];
                    }
                  }

                  v59 = [v57 countByEnumeratingWithState:&v112 objects:v138 count:16];
                }

                while (v59);
              }

              v23 = v97;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v141 = self;
              v142 = 2114;
              v143 = v55;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Missing expected asset collection in person model item %{public}@.", buf, 0x16u);
            }
          }

          v103 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v116 objects:v139 count:16];
        }

        while (v103);
      }

      if (![(NSMutableDictionary *)self->_assetToAssetCollectionMap count])
      {
        v7 = v91;
        if ([(NSMutableArray *)self->_itemsInFlight count])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v90 = [(NSMutableArray *)self->_itemsInFlight count];
            *buf = 138543618;
            v141 = self;
            v142 = 2048;
            v143 = v90;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: No assets to upload, but detected %ld orphaned asset collections.", buf, 0x16u);
          }

          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v79 = self->_itemsInFlight;
          v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v104 objects:v136 count:16];
          if (v80)
          {
            v81 = v80;
            v82 = *v105;
            do
            {
              for (ii = 0; ii != v81; ++ii)
              {
                if (*v105 != v82)
                {
                  objc_enumerationMutation(v79);
                }

                v84 = *(*(&v104 + 1) + 8 * ii);
                v85 = [(MSASAssetUploader *)self _orphanedAssetCollectionError];
                [(MSASAssetUploader *)self workQueueDidFinishWithItem:v84 error:v85];
              }

              v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v104 objects:v136 count:16];
            }

            while (v81);
          }

          [(MSASAssetUploader *)self workQueueGoIdle];
          v7 = v91;
          v23 = v97;
        }

        goto LABEL_97;
      }

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v64 = self->_assetToAssetCollectionMap;
      v65 = [(NSMutableDictionary *)v64 countByEnumeratingWithState:&v108 objects:v137 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v109;
        do
        {
          for (jj = 0; jj != v66; ++jj)
          {
            if (*v109 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v108 + 1) + 8 * jj);
            v70 = [(MSASAssetTransferer *)self engine];
            [v70 reregisterAssetForUpload:v69];
          }

          v66 = [(NSMutableDictionary *)v64 countByEnumeratingWithState:&v108 objects:v137 count:16];
        }

        while (v66);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v71 = [(NSMutableDictionary *)self->_assetToAssetCollectionMap count];
        v72 = [(NSMutableArray *)self->_itemsInFlight count];
        *buf = 138543874;
        v141 = self;
        v142 = 2048;
        v143 = v71;
        v144 = 2048;
        v145 = v72;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Uploading %ld assets for %ld asset collections.", buf, 0x20u);
      }

      v73 = MSASPlatform();
      v74 = objc_opt_respondsToSelector();

      v23 = v97;
      if (v74)
      {
        v75 = MSASPlatform();
        v76 = [(MSASAssetTransferer *)self personID];
        v77 = [v75 MMCSUploadSocketOptionsForPersonID:v76];

        if (v77)
        {
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v77 forKey:*MEMORY[0x277D25610]];
        }

        else
        {
          v78 = 0;
        }
      }

      else
      {
        v78 = 0;
      }

      v86 = [(MSASAssetTransferer *)self engine];
      v87 = [(NSMutableDictionary *)self->_assetToAssetCollectionMap allKeys];
      v88 = [(MSASAssetTransferer *)self personID];
      [v86 putAssets:v87 requestURL:v97 DSID:v88 options:v78];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v141 = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: No assets to upload.", buf, 0xCu);
      }

      [(MSASAssetUploader *)self workQueueGoIdle];
    }

    v7 = v91;
LABEL_97:

LABEL_98:
    goto LABEL_99;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v141 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not uploading because we're shutting down.", buf, 0xCu);
  }

  v3 = [(MSASAssetTransferer *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);

LABEL_99:
  v89 = *MEMORY[0x277D85DE8];
}

void __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

void __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetUploader:*(a1 + 32) didFinishUploadingAssetCollection:*(a1 + 40) intoAlbum:*(a1 + 48) error:*(a1 + 56)];
}

- (id)_orphanedAssetCollectionError
{
  if (_orphanedAssetCollectionError_onceToken != -1)
  {
    dispatch_once(&_orphanedAssetCollectionError_onceToken, &__block_literal_global_5814);
  }

  v3 = _orphanedAssetCollectionError_error;

  return v3;
}

void __50__MSASAssetUploader__orphanedAssetCollectionError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_UPLOADER_ORPHANED");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetUploaderErrorDomain" code:0 description:v3];
  v2 = _orphanedAssetCollectionError_error;
  _orphanedAssetCollectionError_error = v1;
}

- (void)workQueueCancel
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling all uploads.", buf, 0xCu);
    }

    [(MSASAssetUploader *)self _workQueueStop];
  }

  v3 = [(MSASAssetTransferer *)self model];
  v4 = [v3 nextItemsForUploadMaxCount:10];

  v17 = v4;
  if ([v4 count])
  {
    do
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = v17;
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            v11 = [v10 object];
            v12 = [v10 album];
            v13 = [(MSASAssetTransferer *)self eventQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __36__MSASAssetUploader_workQueueCancel__block_invoke;
            block[3] = &unk_278E92638;
            block[4] = self;
            v19 = v11;
            v20 = v12;
            v14 = v12;
            v15 = v11;
            dispatch_async(v13, block);
          }

          v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v7);
      }
    }

    while ([v5 count]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __36__MSASAssetUploader_workQueueCancel__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASAssetUploader:v2 didFinishUploadingAssetCollection:v3 intoAlbum:v4 error:v5];
}

- (void)workQueueShutDownCompletionBlock:(id)a3
{
  v4 = a3;
  [(MSASAssetUploader *)self workQueueStop];
  v5.receiver = self;
  v5.super_class = MSASAssetUploader;
  [(MSASAssetTransferer *)&v5 workQueueShutDownCompletionBlock:v4];
}

- (void)workQueueStop
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping all uploads.", &v4, 0xCu);
    }

    [(MSASAssetUploader *)self _workQueueStop];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_workQueueStop
{
  if (self->_state == 1)
  {
    v4 = [(MSASAssetTransferer *)self engine];
    [v4 cancelAllOperations];

    [(MSASAssetUploader *)self workQueueGoIdle];
  }
}

- (void)workQueueGoIdle
{
  if ([(MSASAssetUploader *)self state])
  {
    assetToAssetCollectionMap = self->_assetToAssetCollectionMap;
    self->_assetToAssetCollectionMap = 0;

    itemsInFlight = self->_itemsInFlight;
    self->_itemsInFlight = 0;

    v5 = self->_assetToAssetCollectionMap;
    self->_assetToAssetCollectionMap = 0;

    finishedAssetCollections = self->_finishedAssetCollections;
    self->_finishedAssetCollections = 0;

    assetCollectionsWithAuthorizationError = self->_assetCollectionsWithAuthorizationError;
    self->_assetCollectionsWithAuthorizationError = 0;

    assetCollectionGUIDToRequestorContext = self->_assetCollectionGUIDToRequestorContext;
    self->_assetCollectionGUIDToRequestorContext = 0;

    self->_state = 0;
    [(MSASAssetTransferer *)self _sendDidIdleNotification];
    v9 = [(MSASAssetTransferer *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__MSASAssetUploader_workQueueGoIdle__block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

void __36__MSASAssetUploader_workQueueGoIdle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

- (void)workQueueRetryOutstandingActivities
{
  v14 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state != 1)
  {
    if (state)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v11 = self;
        v12 = 1024;
        v13 = state;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unknown state: %d", buf, 0x12u);
      }

      v7 = MSPlatform();
      [v7 didDetectUnrecoverableCondition];
    }

    else
    {
      v4 = MSASPlatform();
      v5 = [v4 MSASIsAllowedToUploadAssets];

      if (v5)
      {
        self->_state = 1;
        v6 = [(MSASAssetTransferer *)self eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__MSASAssetUploader_workQueueRetryOutstandingActivities__block_invoke;
        block[3] = &unk_278E926D8;
        block[4] = self;
        dispatch_async(v6, block);

        [(MSASAssetUploader *)self workQueueUploadNextBatch];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__MSASAssetUploader_workQueueRetryOutstandingActivities__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

@end