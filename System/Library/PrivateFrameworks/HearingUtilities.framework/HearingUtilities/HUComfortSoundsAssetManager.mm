@interface HUComfortSoundsAssetManager
- (HUComfortSoundsAssetManager)init;
- (HUComfortSoundsAssetManagerDelegate)delegate;
- (NSDictionary)assetDownloadProgress;
- (id)assetWithId:(id)id;
- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)downloadAssetWithId:(id)id;
- (void)refreshAssets;
- (void)removeAssetWithId:(id)id;
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
    policy = [MEMORY[0x1E69881C0] policy];
    v5 = [v3 assetControllerWithPolicy:policy qosClass:25];
    assetController = v2->_assetController;
    v2->_assetController = v5;

    [(AXAssetController *)v2->_assetController setUserInitiated:1];
    [(AXAssetController *)v2->_assetController addObserver:v2];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    assetDownloadProgress = v2->_assetDownloadProgress;
    v2->_assetDownloadProgress = dictionary;

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_assetDownloadProgress copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)assetWithId:(id)id
{
  idCopy = id;
  availableAssets = [(HUComfortSoundsAssetManager *)self availableAssets];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__HUComfortSoundsAssetManager_assetWithId___block_invoke;
  v11[3] = &unk_1E85CA028;
  v6 = idCopy;
  v12 = v6;
  v7 = [availableAssets indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    availableAssets2 = [(HUComfortSoundsAssetManager *)self availableAssets];
    v8 = [availableAssets2 objectAtIndex:v7];
  }

  return v8;
}

uint64_t __43__HUComfortSoundsAssetManager_assetWithId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)downloadAssetWithId:(id)id
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(HUComfortSoundsAssetManager *)self assetWithId:id];
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

- (void)removeAssetWithId:(id)id
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(HUComfortSoundsAssetManager *)self assetWithId:id];
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

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v19 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  errorCopy = error;
  v11 = HCLogComfortSounds();
  v12 = v11;
  if (errorCopy || !successfulCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HUComfortSoundsAssetManager assetController:successfulCopy didFinishRefreshingAssets:errorCopy wasSuccessful:v12 error:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = assetsCopy;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Found Assets %@", &v17, 0xCu);
    }

    v12 = [assetsCopy indexesOfObjectsPassingTest:&__block_literal_global_0];
    v13 = [assetsCopy objectsAtIndexes:v12];
    v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_13];
    [(HUComfortSoundsAssetManager *)self setAvailableAssets:v14];

    delegate = [(HUComfortSoundsAssetManager *)self delegate];
    [delegate availableAssetsDidUpdate];
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

- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining
{
  controllerCopy = controller;
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&v14 = written / expected;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  assetDownloadProgress = selfCopy->_assetDownloadProgress;
  assetId = [assetCopy assetId];
  [(NSMutableDictionary *)assetDownloadProgress setObject:v15 forKeyedSubscript:assetId];

  objc_sync_exit(selfCopy);
  delegate = [(HUComfortSoundsAssetManager *)selfCopy delegate];
  [delegate assetDownloadDidUpdate];
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  successfulCopy = successful;
  v37 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  assetCopy = asset;
  errorCopy = error;
  v13 = 0.0;
  if (successfulCopy)
  {
    v14 = [HUComfortSound comfortSoundWithAsset:assetCopy];
    v15 = +[HUComfortSoundsSettings sharedInstance];
    selectedComfortSound = [v15 selectedComfortSound];
    soundGroup = [selectedComfortSound soundGroup];
    if (soundGroup == [v14 soundGroup])
    {
      v18 = +[HUComfortSoundsSettings sharedInstance];
      selectedComfortSound2 = [v18 selectedComfortSound];
      v20 = controllerCopy;
      v21 = [v14 isEqual:selectedComfortSound2];

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
      v20 = controllerCopy;
    }

    controllerCopy = v20;
    v13 = 1.0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  assetDownloadProgress = selfCopy->_assetDownloadProgress;
  assetId = [assetCopy assetId];
  [(NSMutableDictionary *)assetDownloadProgress setObject:v25 forKeyedSubscript:assetId];

  objc_sync_exit(selfCopy);
  delegate = [(HUComfortSoundsAssetManager *)selfCopy delegate];
  [delegate assetDownloadDidUpdate];

  v29 = HCLogComfortSounds();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [HUComfortSound comfortSoundWithAsset:assetCopy];
    *buf = 138412546;
    v34 = assetCopy;
    v35 = 2112;
    v36 = v30;
    _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "Finished downloading asset %@ - %@", buf, 0x16u);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)assetController:(id)controller didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v8 = HCLogComfortSounds();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = assetsCopy;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Finished purging assets %@", &v11, 0xCu);
  }

  delegate = [(HUComfortSoundsAssetManager *)self delegate];
  [delegate availableAssetsDidUpdate];

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