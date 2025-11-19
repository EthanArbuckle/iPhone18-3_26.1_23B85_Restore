@interface MagnifierAssetsManager
+ (MagnifierAssetsManager)sharedInstance;
- (MagnifierAssetsManager)init;
- (MagnifierAssetsManagerDelegate)delegate;
- (double)totalDownloadedWithName:(id)a3;
- (id)_modelURLForType:(unint64_t)a3 baseURL:(id)a4;
- (id)assetPropertiesForModelType:(unint64_t)a3;
- (id)baseURLForType:(unint64_t)a3;
- (id)downloadAssetsWithName:(id)a3;
- (id)modelURLForType:(unint64_t)a3 timeout:(double)a4;
- (int64_t)totalSizeExpectedWithName:(id)a3;
- (int64_t)totalSizeOccupiedWithName:(id)a3;
- (void)_performWithLock:(id)a3;
- (void)_updateAsset:(id)a3;
- (void)_updateDownloadedValuesForAsset:(id)a3;
- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishPurgingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)manageImageCaptionModelAssets:(id)a3;
@end

@implementation MagnifierAssetsManager

+ (MagnifierAssetsManager)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[MagnifierAssetsManager sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

void __40__MagnifierAssetsManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MagnifierAssetsManager);
  v1 = sharedInstance__Shared;
  sharedInstance__Shared = v0;
}

- (MagnifierAssetsManager)init
{
  v24.receiver = self;
  v24.super_class = MagnifierAssetsManager;
  v2 = [(MagnifierAssetsManager *)&v24 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CE66A0] policy];
    assetPolicy = v2->_assetPolicy;
    v2->_assetPolicy = v3;

    v5 = [MEMORY[0x277CE6668] assetControllerWithPolicy:v2->_assetPolicy qosClass:25];
    assetController = v2->_assetController;
    v2->_assetController = v5;

    [(AXAssetController *)v2->_assetController setUserInitiated:1];
    [(AXAssetController *)v2->_assetController addObserver:v2];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cachedAssets = v2->_cachedAssets;
    v2->_cachedAssets = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cachedDownloadableAssets = v2->_cachedDownloadableAssets;
    v2->_cachedDownloadableAssets = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    assetsNeedingDownload = v2->_assetsNeedingDownload;
    v2->_assetsNeedingDownload = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    expectedDownloadSizes = v2->_expectedDownloadSizes;
    v2->_expectedDownloadSizes = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    totalInstalledSizes = v2->_totalInstalledSizes;
    v2->_totalInstalledSizes = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetDownloadPercent = v2->_assetDownloadPercent;
    v2->_assetDownloadPercent = v17;

    v19 = MEMORY[0x277CE6668];
    v20 = [MEMORY[0x277CE6698] policy];
    v21 = [v19 assetControllerWithPolicy:v20 qosClass:25];
    imageCaptionAssetController = v2->_imageCaptionAssetController;
    v2->_imageCaptionAssetController = v21;

    [(AXAssetController *)v2->_imageCaptionAssetController setUserInitiated:1];
    [(AXAssetController *)v2->_imageCaptionAssetController addObserver:v2];
  }

  return v2;
}

- (id)baseURLForType:(unint64_t)a3
{
  if (!a3)
  {
    v5 = 104;
LABEL_5:
    v6 = [*(&self->super.isa + v5) copy];

    return v6;
  }

  if (a3 == 1)
  {
    v5 = 120;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)modelURLForType:(unint64_t)a3 timeout:(double)a4
{
  v6 = [(MagnifierAssetsManager *)self baseURLForType:a4];
  if (v6)
  {
    self->_assetDownloadFailed = 0;
    v7 = [(MagnifierAssetsManager *)self _modelURLForType:a3 baseURL:v6];
  }

  else
  {
    v7 = 0;
    self->_assetDownloadFailed = 1;
  }

  return v7;
}

- (id)downloadAssetsWithName:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AXMagnifierAssetPolicy *)self->_assetPolicy assetsToDownloadFromRefreshedAssets:self->_cachedDownloadableAssets];
  assetsNeedingDownload = self->_assetsNeedingDownload;
  self->_assetsNeedingDownload = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v4;
  if ([(NSArray *)self->_assetsNeedingDownload count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_assetsNeedingDownload;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v27 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v11 properties];
          v13 = [v12 objectForKeyedSubscript:@"AssetName"];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            assetDownloadPercent = self->_assetDownloadPercent;
            v16 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v17 = [v11 properties];
            v18 = [v17 objectForKeyedSubscript:@"AssetName"];
            [(NSDictionary *)assetDownloadPercent setValue:v16 forKey:v18];

            assetController = self->_assetController;
            v33 = v11;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __49__MagnifierAssetsManager_downloadAssetsWithName___block_invoke;
            v28[3] = &unk_279854198;
            v28[4] = self;
            [(AXAssetController *)assetController downloadAssets:v20 successStartBlock:v28];

            v21 = [v7 arrayByAddingObject:v11];

            v7 = v21;
            v4 = v25;
          }
        }

        v9 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v22 = self->_assetDownloadPercent;
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:100.0];
    [(NSDictionary *)v22 setValue:v23 forKey:v25];

    v4 = v25;
  }

  return v7;
}

void __49__MagnifierAssetsManager_downloadAssetsWithName___block_invoke(uint64_t a1)
{
  v2 = AXLogAssetLoader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__MagnifierAssetsManager_downloadAssetsWithName___block_invoke_cold_1(a1, v2);
  }
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v109 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AXLogAssetLoader();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v104 = self;
    v105 = 2112;
    v106 = v11;
    v107 = 2112;
    v108 = v12;
    _os_log_impl(&dword_257BAC000, v13, OS_LOG_TYPE_INFO, "[%@]: didFinishRefreshingAssets: (%@). error: %@", buf, 0x20u);
  }

  if (v7)
  {
    if ([v11 count] && (objc_msgSend(v11, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "assetType"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", @"com.apple.MobileAsset.ImageCaptionModel"), v15, v14, v16))
    {
      [(MagnifierAssetsManager *)self manageImageCaptionModelAssets:v11];
    }

    else
    {
      v66 = v12;
      v68 = v10;
      v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v67 = v11;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v94 objects:v102 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v95;
        v69 = *v95;
        v70 = v18;
        do
        {
          v22 = 0;
          obj = v20;
          do
          {
            v23 = v21;
            if (*v95 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = v18;
            v75 = v22;
            v25 = *(*(&v94 + 1) + 8 * v22);
            v26 = AXLogAssetLoader();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v104 = self;
              v105 = 2112;
              v106 = v24;
              _os_log_impl(&dword_257BAC000, v26, OS_LOG_TYPE_INFO, "[%@]: Refreshed Assets:\n%@", buf, 0x16u);
            }

            expectedDownloadSizes = self->_expectedDownloadSizes;
            v28 = [v25 downloadSize];
            [v25 properties];
            v29 = v77 = v25;
            v30 = [v29 objectForKeyedSubscript:@"AssetName"];
            [(NSDictionary *)expectedDownloadSizes setValue:v28 forKey:v30];

            v31 = v25;
            v32 = [(NSArray *)self->_cachedDownloadableAssets arrayByAddingObject:v25];
            cachedDownloadableAssets = self->_cachedDownloadableAssets;
            self->_cachedDownloadableAssets = v32;

            if ([v25 isInstalled])
            {
              [(MagnifierAssetsManager *)self _updateDownloadedValuesForAsset:v25];
              v34 = v74;
              v74 = [v74 arrayByAddingObject:v25];
              v18 = v24;
              v21 = v23;
            }

            else
            {
              v35 = [v25 properties];
              v36 = [v35 objectForKeyedSubscript:@"AssetName"];
              v37 = [(MagnifierAssetsManager *)self downloadAssetsWithName:v36];

              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v34 = v37;
              v38 = [v34 countByEnumeratingWithState:&v90 objects:v101 count:16];
              if (v38)
              {
                v39 = v38;
                v40 = *v91;
                do
                {
                  for (i = 0; i != v39; ++i)
                  {
                    if (*v91 != v40)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v42 = *(*(&v90 + 1) + 8 * i);
                    v89[0] = MEMORY[0x277D85DD0];
                    v89[1] = 3221225472;
                    v89[2] = __88__MagnifierAssetsManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
                    v89[3] = &unk_2798541C0;
                    v89[4] = self;
                    v89[5] = v42;
                    [(MagnifierAssetsManager *)self _performWithLock:v89];
                    totalInstalledSizes = self->_totalInstalledSizes;
                    v44 = [v42 downloadSize];
                    v45 = [v42 properties];
                    v46 = [v45 objectForKeyedSubscript:@"AssetName"];
                    [(NSDictionary *)totalInstalledSizes setValue:v44 forKey:v46];
                  }

                  v39 = [v34 countByEnumeratingWithState:&v90 objects:v101 count:16];
                }

                while (v39);
              }

              v21 = v69;
              v18 = v70;
              v20 = obj;
              v31 = v77;
            }

            v47 = [MEMORY[0x277CE6670] store];
            [v47 recordLastAssetAccess:v31];

            v88[0] = MEMORY[0x277D85DD0];
            v88[1] = 3221225472;
            v88[2] = __88__MagnifierAssetsManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_2;
            v88[3] = &unk_2798541C0;
            v88[4] = self;
            v88[5] = v31;
            [(MagnifierAssetsManager *)self _performWithLock:v88];
            v22 = v75 + 1;
          }

          while (v75 + 1 != v20);
          v20 = [v18 countByEnumeratingWithState:&v94 objects:v102 count:16];
        }

        while (v20);
      }

      v48 = v74;
      if ([v74 count])
      {
        [(AXMagnifierAssetPolicy *)self->_assetPolicy assetsToPurgeFromInstalledAssets:v18];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obja = v87 = 0u;
        v76 = [obja countByEnumeratingWithState:&v84 objects:v100 count:16];
        if (v76)
        {
          v73 = *v85;
          do
          {
            v49 = 0;
            do
            {
              if (*v85 != v73)
              {
                objc_enumerationMutation(obja);
              }

              v78 = v49;
              v50 = *(*(&v84 + 1) + 8 * v49);
              assetController = self->_assetController;
              v99 = v50;
              v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
              [(AXAssetController *)assetController purgeAssets:v52 completion:0];

              v53 = [v50 properties];
              v54 = [v53 objectForKeyedSubscript:@"AssetName"];
              v55 = [(MagnifierAssetsManager *)self downloadAssetsWithName:v54];

              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v56 = v55;
              v57 = [v56 countByEnumeratingWithState:&v80 objects:v98 count:16];
              if (v57)
              {
                v58 = v57;
                v59 = *v81;
                do
                {
                  for (j = 0; j != v58; ++j)
                  {
                    if (*v81 != v59)
                    {
                      objc_enumerationMutation(v56);
                    }

                    v61 = *(*(&v80 + 1) + 8 * j);
                    v79[0] = MEMORY[0x277D85DD0];
                    v79[1] = 3221225472;
                    v79[2] = __88__MagnifierAssetsManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_3;
                    v79[3] = &unk_2798541C0;
                    v79[4] = self;
                    v79[5] = v61;
                    [(MagnifierAssetsManager *)self _performWithLock:v79];
                    v62 = self->_totalInstalledSizes;
                    v63 = [v61 downloadSize];
                    v64 = [v61 properties];
                    v65 = [v64 objectForKeyedSubscript:@"AssetName"];
                    [(NSDictionary *)v62 setValue:v63 forKey:v65];
                  }

                  v58 = [v56 countByEnumeratingWithState:&v80 objects:v98 count:16];
                }

                while (v58);
              }

              v49 = v78 + 1;
            }

            while (v78 + 1 != v76);
            v76 = [obja countByEnumeratingWithState:&v84 objects:v100 count:16];
          }

          while (v76);
        }

        v48 = v74;
      }

      self->_assetDownloadFailed = 0;

      v11 = v67;
      v10 = v68;
      v12 = v66;
    }
  }

  else
  {
    self->_assetDownloadFailed = 1;
    v17 = AXLogAssetLoader();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MagnifierAssetsManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
    }
  }
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  if (v8)
  {
    v12 = AXLogAssetLoader();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = self;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_257BAC000, v12, OS_LOG_TYPE_INFO, "[%@]:  Downloaded Asset:\n%@", &v18, 0x16u);
    }

    v13 = [v10 assetType];
    v14 = [v13 isEqualToString:@"com.apple.MobileAsset.ImageCaptionModel"];

    if ((v14 & 1) == 0)
    {
      [(MagnifierAssetsManager *)self _updateAsset:v10];
      v15 = [(NSArray *)self->_cachedAssets arrayByAddingObject:v10];
      cachedAssets = self->_cachedAssets;
      self->_cachedAssets = v15;

      [(MagnifierAssetsManager *)self _updateDownloadedValuesForAsset:v10];
      self->_assetDownloadFailed = 0;
    }
  }

  else
  {
    self->_assetDownloadFailed = 1;
    v17 = AXLogAssetLoader();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MagnifierAssetsManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:];
    }
  }
}

- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = AXLogAssetLoader();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = 138413058;
    v20 = self;
    v21 = 2112;
    v22 = v11;
    v23 = 2048;
    v24 = a5;
    v25 = 2048;
    v26 = a6;
    _os_log_impl(&dword_257BAC000, v12, OS_LOG_TYPE_INFO, "[%@]: Downloading Asset:\n%@ %lld written, %lld expected.", &v19, 0x2Au);
  }

  v13 = [v11 assetType];
  v14 = [v13 isEqualToString:@"com.apple.MobileAsset.ImageCaptionModel"];

  if ((v14 & 1) == 0)
  {
    assetDownloadPercent = self->_assetDownloadPercent;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:a5 / a6];
    v17 = [v11 properties];
    v18 = [v17 objectForKeyedSubscript:@"AssetName"];
    [(NSDictionary *)assetDownloadPercent setValue:v16 forKey:v18];
  }
}

- (void)assetController:(id)a3 didFinishPurgingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  v11 = AXLogAssetLoader();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MagnifierAssetsManager assetController:didFinishPurgingAssets:wasSuccessful:error:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = self;
    v15 = 2048;
    v16 = [v9 count];
    v17 = 1024;
    v18 = v7;
    _os_log_debug_impl(&dword_257BAC000, v12, OS_LOG_TYPE_DEBUG, "[%@]: %lu number of assets purged. Success status: %d", &v13, 0x1Cu);
  }
}

- (id)_modelURLForType:(unint64_t)a3 baseURL:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!a3)
  {
    v7 = @"DoorAttributesClassifier.mlmodel";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v7 = @"SignDetector.mlmodel";
LABEL_5:
    v8 = [v5 URLByAppendingPathComponent:v7];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)assetPropertiesForModelType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(MagnifierAssetsManager *)self signDetectorAssetProperties];
  }

  else
  {
    if (a3)
    {
      [MEMORY[0x277CBEAC0] dictionary];
    }

    else
    {
      [(MagnifierAssetsManager *)self doorAttributesAssetProperties];
    }
    v3 = ;
  }

  return v3;
}

- (void)_updateAsset:(id)a3
{
  v13 = a3;
  v4 = [v13 properties];
  v5 = [v4 objectForKeyedSubscript:@"AssetName"];

  if ([v5 isEqualToString:@"DoorAttributesClassifier"])
  {
    v6 = [v13 localURL];
    v7 = [v6 copy];
    [(MagnifierAssetsManager *)self setDoorAttributesBaseURL:v7];

    v8 = [v13 properties];
    v9 = [v8 copy];
    [(MagnifierAssetsManager *)self setDoorAttributesAssetProperties:v9];
  }

  else
  {
    if (![v5 isEqualToString:@"SignDetector"])
    {
      goto LABEL_6;
    }

    v10 = [v13 localURL];
    v11 = [v10 copy];
    [(MagnifierAssetsManager *)self setSignDetectorBaseURL:v11];

    v8 = [v13 properties];
    v9 = [v8 copy];
    [(MagnifierAssetsManager *)self setSignDetectorAssetProperties:v9];
  }

LABEL_6:
  v12 = [(MagnifierAssetsManager *)self delegate];
  [v12 updateAssetURLs];
}

- (void)_performWithLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)totalSizeOccupiedWithName:(id)a3
{
  v3 = [(NSDictionary *)self->_totalInstalledSizes objectForKeyedSubscript:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (int64_t)totalSizeExpectedWithName:(id)a3
{
  v3 = [(NSDictionary *)self->_expectedDownloadSizes objectForKeyedSubscript:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (double)totalDownloadedWithName:(id)a3
{
  v3 = [(NSDictionary *)self->_assetDownloadPercent objectForKeyedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_updateDownloadedValuesForAsset:(id)a3
{
  totalInstalledSizes = self->_totalInstalledSizes;
  v5 = a3;
  v6 = [v5 downloadSize];
  v7 = [v5 properties];
  v8 = [v7 objectForKeyedSubscript:@"AssetName"];
  [(NSDictionary *)totalInstalledSizes setValue:v6 forKey:v8];

  assetDownloadPercent = self->_assetDownloadPercent;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:100.0];
  v10 = [v5 properties];

  v11 = [v10 objectForKeyedSubscript:@"AssetName"];
  [(NSDictionary *)assetDownloadPercent setValue:v12 forKey:v11];
}

void __52__MagnifierAssetsManager_downloadImageCaptionAssets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = AXLogAssetLoader();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__MagnifierAssetsManager_downloadImageCaptionAssets__block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)manageImageCaptionModelAssets:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CB84A8] currentLanguageCode];
  v7 = [v6 componentsSeparatedByString:@"-"];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
    v9 = [MEMORY[0x277CE6660] newsestCompatibleImageCaptionModelAssetFromAssets:v4 withStage:@"Stable" language:v8 isInstalled:1 isDownloadable:0];
    if (v9 || ([MEMORY[0x277CE6660] newsestCompatibleImageCaptionModelAssetFromAssets:v4 withStage:@"Stable" language:v8 isInstalled:0 isDownloadable:1], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      imageCaptionAssetController = self->_imageCaptionAssetController;
      v13[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [(AXAssetController *)imageCaptionAssetController downloadAssets:v12 successStartBlock:&__block_literal_global_321];
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __56__MagnifierAssetsManager_manageImageCaptionModelAssets___block_invoke()
{
  v0 = AXLogAssetLoader();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __56__MagnifierAssetsManager_manageImageCaptionModelAssets___block_invoke_cold_1(v0);
  }
}

- (MagnifierAssetsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__MagnifierAssetsManager_downloadAssetsWithName___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 48) count];
  v5 = *(*(a1 + 32) + 48);
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_257BAC000, a2, OS_LOG_TYPE_DEBUG, "Successfully started downloading %lu assets:\n%@ ", &v6, 0x16u);
}

void __52__MagnifierAssetsManager_downloadImageCaptionAssets__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_257BAC000, a2, OS_LOG_TYPE_ERROR, "Could not refresh image caption assets from Magnifier: %@", &v4, 0xCu);
}

@end