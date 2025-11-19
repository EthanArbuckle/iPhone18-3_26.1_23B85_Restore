@interface HUComfortSoundsAssetManager
- (HUComfortSoundsAssetManager)init;
- (HUComfortSoundsAssetManagerDelegate)delegate;
- (NSDictionary)assetDownloadProgress;
- (id)assetWithId:(id)a3;
- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishPurgingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)downloadAssetWithId:(id)a3;
- (void)refreshAssets;
- (void)removeAssetWithId:(id)a3;
@end

@implementation HUComfortSoundsAssetManager

- (HUComfortSoundsAssetManager)init
{
  v10.receiver = self;
  v10.super_class = HUComfortSoundsAssetManager;
  v2 = [(HUComfortSoundsAssetManager *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x1E69881B0];
    v4 = [MEMORY[0x1E69881C0] policy];
    v5 = [v3 assetControllerWithPolicy:v4 qosClass:25];
    assetController = v2->_assetController;
    v2->_assetController = v5;

    [(AXAssetController *)v2->_assetController setUserInitiated:1];
    [(AXAssetController *)v2->_assetController addObserver:v2];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    assetDownloadProgress = v2->_assetDownloadProgress;
    v2->_assetDownloadProgress = v7;

    [(HUComfortSoundsAssetManager *)v2 refreshAssets];
  }

  return v2;
}

- (void)refreshAssets
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing assets", v4, 2u);
  }

  -[AXAssetController refreshAssetsByForceUpdatingCatalog:updatingCatalogIfNeeded:catalogRefreshOverrideTimeout:completion:](self->_assetController, "refreshAssetsByForceUpdatingCatalog:updatingCatalogIfNeeded:catalogRefreshOverrideTimeout:completion:", [MEMORY[0x1E69A4560] isInternalInstall], 1, 0, 0);
}

- (NSDictionary)assetDownloadProgress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_assetDownloadProgress copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)assetWithId:(id)a3
{
  v4 = a3;
  v5 = [(HUComfortSoundsAssetManager *)self availableAssets];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__HUComfortSoundsAssetManager_assetWithId___block_invoke;
  v11[3] = &unk_1E85CA028;
  v6 = v4;
  v12 = v6;
  v7 = [v5 indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HUComfortSoundsAssetManager *)self availableAssets];
    v8 = [v9 objectAtIndex:v7];
  }

  return v8;
}

uint64_t __43__HUComfortSoundsAssetManager_assetWithId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)downloadAssetWithId:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(HUComfortSoundsAssetManager *)self assetWithId:a3];
  v5 = v4;
  if (v4)
  {
    assetController = self->_assetController;
    v11[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__HUComfortSoundsAssetManager_downloadAssetWithId___block_invoke;
    v9[3] = &unk_1E85CA050;
    v10 = v5;
    [(AXAssetController *)assetController downloadAssets:v7 successStartBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __51__HUComfortSoundsAssetManager_downloadAssetWithId___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Started downloading %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeAssetWithId:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(HUComfortSoundsAssetManager *)self assetWithId:a3];
  v5 = v4;
  if (v4)
  {
    assetController = self->_assetController;
    v9[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(AXAssetController *)assetController purgeAssets:v7 completion:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = HCLogComfortSounds();
  v12 = v11;
  if (v10 || !v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsAssetManager assetController:v7 didFinishRefreshingAssets:v10 wasSuccessful:v12 error:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Found Assets %@", &v17, 0xCu);
    }

    v12 = [v9 indexesOfObjectsPassingTest:&__block_literal_global_0];
    v13 = [v9 objectsAtIndexes:v12];
    v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_13];
    [(HUComfortSoundsAssetManager *)self setAvailableAssets:v14];

    v15 = [(HUComfortSoundsAssetManager *)self delegate];
    [v15 availableAssetsDidUpdate];
  }

  v16 = *MEMORY[0x1E69E9840];
}

BOOL __93__HUComfortSoundsAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 properties];
    v5 = [v4 valueForKey:@"SoundName"];
    v6 = [v2 properties];
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "The asset %@ property is %@", &v12, 0x16u);
  }

  v7 = [v2 properties];
  v8 = [v7 valueForKey:@"AssetType"];
  v9 = v8 != 0;

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __93__HUComfortSoundsAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 properties];
  v6 = [v5 valueForKey:@"SoundGroup"];
  v7 = [v4 properties];

  v8 = [v7 valueForKey:@"SoundGroup"];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8
{
  v19 = a3;
  v12 = a4;
  v13 = self;
  objc_sync_enter(v13);
  *&v14 = a5 / a6;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  assetDownloadProgress = v13->_assetDownloadProgress;
  v17 = [v12 assetId];
  [(NSMutableDictionary *)assetDownloadProgress setObject:v15 forKeyedSubscript:v17];

  objc_sync_exit(v13);
  v18 = [(HUComfortSoundsAssetManager *)v13 delegate];
  [v18 assetDownloadDidUpdate];
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a5;
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v32 = a6;
  v13 = 0.0;
  if (v8)
  {
    v14 = [HUComfortSound comfortSoundWithAsset:v12];
    v15 = +[HUComfortSoundsSettings sharedInstance];
    v16 = [v15 selectedComfortSound];
    v17 = [v16 soundGroup];
    if (v17 == [v14 soundGroup])
    {
      v18 = +[HUComfortSoundsSettings sharedInstance];
      v19 = [v18 selectedComfortSound];
      v20 = v11;
      v21 = [v14 isEqual:v19];

      if ((v21 & 1) == 0)
      {
        v22 = +[HUComfortSoundsSettings sharedInstance];
        [v22 setSelectedComfortSound:v14];

        v23 = HCLogComfortSounds();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v14;
          _os_log_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_DEFAULT, "Resetting selected bg sound %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v20 = v11;
    }

    v11 = v20;
    v13 = 1.0;
  }

  v24 = self;
  objc_sync_enter(v24);
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  assetDownloadProgress = v24->_assetDownloadProgress;
  v27 = [v12 assetId];
  [(NSMutableDictionary *)assetDownloadProgress setObject:v25 forKeyedSubscript:v27];

  objc_sync_exit(v24);
  v28 = [(HUComfortSoundsAssetManager *)v24 delegate];
  [v28 assetDownloadDidUpdate];

  v29 = HCLogComfortSounds();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [HUComfortSound comfortSoundWithAsset:v12];
    *buf = 138412546;
    v34 = v12;
    v35 = 2112;
    v36 = v30;
    _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "Finished downloading asset %@ - %@", buf, 0x16u);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)assetController:(id)a3 didFinishPurgingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = HCLogComfortSounds();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Finished purging assets %@", &v11, 0xCu);
  }

  v9 = [(HUComfortSoundsAssetManager *)self delegate];
  [v9 availableAssetsDidUpdate];

  v10 = *MEMORY[0x1E69E9840];
}

- (HUComfortSoundsAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)assetController:(os_log_t)log didFinishRefreshingAssets:wasSuccessful:error:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1DA5E2000, log, OS_LOG_TYPE_ERROR, "Error loading assets %d = %@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end