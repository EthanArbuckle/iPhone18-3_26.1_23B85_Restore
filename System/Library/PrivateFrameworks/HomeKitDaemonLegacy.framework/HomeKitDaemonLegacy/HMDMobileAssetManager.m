@interface HMDMobileAssetManager
- (HMDMobileAssetManager)init;
- (HMDMobileAssetManagerDelegate)delegate;
- (void)_downloadCatalogAndUpdateMetadataIfAble;
- (void)_downloadNewAsset:(id)a3 availableVersion:(unint64_t)a4 newVersion:(unint64_t)a5;
- (void)_handleMetadataAssetUpdated;
- (void)_installAvailableAsset:(id)a3 version:(unint64_t)a4;
- (void)_updateMetadata;
- (void)handleMetadataAssetUpdated;
- (void)purgeAllInstalledAssets;
@end

@implementation HMDMobileAssetManager

- (HMDMobileAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleMetadataAssetUpdated
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.HomeKit"];
  v5 = [v4 queryMetaDataSync];
  if (v5)
  {
    v6 = v5;
    if (v5 == 2)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v9;
        v10 = "%{public}@XML file not found. Need to download the catalog first.";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, v10, &v17, 0xCu);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = v13;
      if ((v6 - 1) > 9)
      {
        v15 = @"MAQueryUnknownResult";
      }

      else
      {
        v15 = off_279734CC0[v6 - 1];
      }

      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to query the asset due to %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (![(HMDMobileAssetManager *)self indexDownloaded])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v9;
        v10 = "%{public}@First time download or periodically update the mobile catalog and metadata asset.";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v7);
      [(HMDMobileAssetManager *)self _downloadCatalogAndUpdateMetadataIfAble];
      goto LABEL_17;
    }

    [(HMDMobileAssetManager *)self _updateMetadata];
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_downloadCatalogAndUpdateMetadataIfAble
{
  v3 = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  [v4 setDiscretionary:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke;
  v5[3] = &unk_279734B68;
  v5[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.HomeKit" options:v4 then:v5];
}

void __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke_2;
  v5[3] = &unk_279734BB8;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v5 = *(a1 + 40) - 1;
      if (v5 > 0x1C)
      {
        v6 = @"MADownloadUnknownResult";
      }

      else
      {
        v6 = off_279734BD8[v5];
      }

      v9 = v6;
      v11 = 138543618;
      v12 = v4;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "%{public}@Failed to download the cataloag due to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D85DE8];

    [v7 _updateMetadata];
  }
}

- (void)_updateMetadata
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.HomeKit"];
  [v4 queryMetaDataSync];
  v5 = [v4 results];
  if ([v5 count])
  {
    v45 = v4;
    v43 = self;
    [(HMDMobileAssetManager *)self setIndexDownloaded:1];
    v48 = +[HMDHAPMetadata getSharedInstance];
    v6 = [v48 version];
    v7 = [v6 unsignedIntegerValue];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v44 = v5;
    obj = v5;
    v54 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
    if (!v54)
    {
      v47 = 0;
      v8 = 0;
      v46 = 0;
      goto LABEL_32;
    }

    v47 = 0;
    v8 = 0;
    v46 = 0;
    v53 = *v58;
    v52 = *MEMORY[0x277D288E8];
    v9 = *MEMORY[0x277D28900];
    v50 = *MEMORY[0x277D28900];
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v58 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v57 + 1) + 8 * v10);
        v12 = [v11 attributes];
        v13 = [v12 objectForKeyedSubscript:v52];
        v14 = [v13 intValue];

        v15 = [v11 attributes];
        v16 = [v15 objectForKeyedSubscript:v9];
        v17 = [v16 intValue];

        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = v18;
          v22 = v10;
          v23 = v14;
          v24 = v17;
          v25 = v7;
          v26 = v8;
          v27 = [v11 state];
          [v48 version];
          v28 = v51 = v11;
          *buf = 138544642;
          v62 = v20;
          v63 = 2048;
          v64 = v27;
          v8 = v26;
          v7 = v25;
          v17 = v24;
          v14 = v23;
          v10 = v22;
          v18 = v21;
          v65 = 2048;
          v66 = v17;
          v67 = 2112;
          v68 = v28;
          v69 = 2048;
          v70 = v7;
          v71 = 2048;
          v72 = v8;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Asset (state %ld  Version %ld)  Current version %@  best installed version %ld  best not installed version %ld", buf, 0x3Eu);

          v11 = v51;
          v9 = v50;
        }

        objc_autoreleasePoolPop(v18);
        if (v14 == 1)
        {
          if ([v11 state] == 2)
          {
            if (v7 >= v17)
            {
              goto LABEL_23;
            }

            v29 = v11;
            if (v8 <= v17)
            {

              v30 = 0;
              v8 = 0;
            }

            else
            {
              v30 = v47;
            }

            if (v46)
            {
              v32 = [v46 attributes];
              v33 = [v32 objectForKeyedSubscript:v9];

              v34 = objc_autoreleasePoolPush();
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543618;
                v62 = v36;
                v63 = 2112;
                v64 = v33;
                _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Requesting purge of asset with version %@", buf, 0x16u);

                v9 = v50;
              }

              objc_autoreleasePoolPop(v34);
              v55[0] = MEMORY[0x277D85DD0];
              v55[1] = 3221225472;
              v55[2] = __40__HMDMobileAssetManager__updateMetadata__block_invoke;
              v55[3] = &unk_279734B68;
              v56 = v33;
              v37 = v33;
              [v46 purge:v55];

              v31 = v46;
              v46 = v29;
              v7 = v17;
              goto LABEL_22;
            }

            v47 = v30;
            v46 = v29;
            v7 = v17;
          }

          else if (v8 < v17 && v7 < v17)
          {
            v30 = v11;
            v8 = v17;
            v31 = v47;
LABEL_22:

            v47 = v30;
          }
        }

LABEL_23:
        ++v10;
      }

      while (v54 != v10);
      v38 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
      v54 = v38;
      if (!v38)
      {
LABEL_32:

        [(HMDMobileAssetManager *)v43 _downloadNewAsset:v47 availableVersion:v7 newVersion:v8];
        [(HMDMobileAssetManager *)v43 _installAvailableAsset:v46 version:v7];

        v5 = v44;
        v4 = v45;
        goto LABEL_33;
      }
    }
  }

  v39 = objc_autoreleasePoolPush();
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543362;
    v62 = v41;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Empty results for asset update query", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
LABEL_33:

  v42 = *MEMORY[0x277D85DE8];
}

void __40__HMDMobileAssetManager__updateMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v9 = "%{public}@Failed to purge the asset with version %@";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v12;
    v9 = "%{public}@Asset with version %@ purged";
    v10 = v6;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_installAvailableAsset:(id)a3 version:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = +[HMDHAPMetadata getSharedInstance];
    v9 = [v6 getLocalFileUrl];
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 version];
      v14 = [v9 path];
      v22 = 138544130;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2048;
      v27 = a4;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Current version: %@,  Best installed asset version: %ld,  path: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [v9 URLByAppendingPathComponent:@"plain-metadata.config"];
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Trying to update metadata in URL %@ from mobile asset.", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (v15)
    {
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v15];
      v20 = [(HMDMobileAssetManager *)self delegate];
      [v20 mobileAssetManager:self didReceiveMetadata:v19];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_downloadNewAsset:(id)a3 availableVersion:(unint64_t)a4 newVersion:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(v9);

  if (v8)
  {
    v10 = +[HMDHAPMetadata getSharedInstance];
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v10 version];
      *buf = 138544130;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = a5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Current version %@  best installed version %ld  best not installed version %ld - requesting download", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v15 = objc_alloc_init(MEMORY[0x277D28A10]);
    [v15 setDiscretionary:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__HMDMobileAssetManager__downloadNewAsset_availableVersion_newVersion___block_invoke;
    v17[3] = &unk_279734B90;
    v19 = a5;
    v18 = v8;
    [v18 startDownload:v15 then:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDMobileAssetManager__downloadNewAsset_availableVersion_newVersion___block_invoke(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      if (a2 > 0x1D)
      {
        v8 = @"MADownloadUnknownResult";
      }

      else
      {
        v8 = off_279734BD8[a2 - 1];
      }

      v11 = v8;
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Asset download failed with result %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 40);
    v13 = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully download the new asset %ld", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleMetadataAssetUpdated
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Asset installed/updated - processing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = [(HMDMobileAssetManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDMobileAssetManager_handleMetadataAssetUpdated__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllInstalledAssets
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.HomeKit"];
  [v2 returnTypes:2];
  if (![v2 queryMetaDataSync])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = v2;
    obj = [v2 results];
    v3 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      v6 = *MEMORY[0x277D28900];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [v8 attributes];
          v10 = [v9 objectForKeyedSubscript:v6];

          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v25 = v13;
            v26 = 2112;
            v27 = v10;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Requesting purge of asset with version %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __48__HMDMobileAssetManager_purgeAllInstalledAssets__block_invoke;
          v18[3] = &unk_279734B68;
          v19 = v10;
          v14 = v10;
          [v8 purge:v18];
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v4);
    }

    v2 = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __48__HMDMobileAssetManager_purgeAllInstalledAssets__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v9 = "%{public}@Failed to purge the asset with version %@";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v12;
    v9 = "%{public}@Asset with version %@ purged successfully";
    v10 = v6;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMobileAssetManager)init
{
  v19.receiver = self;
  v19.super_class = HMDMobileAssetManager;
  v2 = [(HMDMobileAssetManager *)&v19 init];
  if (v2)
  {
    v3 = HMFDispatchQueueName();
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_get_global_queue(9, 0);
    v6 = dispatch_queue_create_with_target_V2(v3, v4, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.homed.HMDMobileAssetManager.BackgroundActivityScheduler"];
    scheduler = v2->_scheduler;
    v2->_scheduler = v8;

    [(NSBackgroundActivityScheduler *)v2->_scheduler setRepeats:1];
    v10 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v11 = [v10 preferenceForKey:@"mobileCatalogUpdatePeriodSeconds"];
    v12 = [v11 numberValue];

    if (v12)
    {
      v13 = [v12 integerValue];
    }

    else
    {
      v13 = 86400.0;
    }

    [(NSBackgroundActivityScheduler *)v2->_scheduler setInterval:v13];
    objc_initWeak(&location, v2);
    v14 = v2->_scheduler;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __29__HMDMobileAssetManager_init__block_invoke;
    v16[3] = &unk_279734B40;
    objc_copyWeak(&v17, &location);
    [(NSBackgroundActivityScheduler *)v14 scheduleWithBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__HMDMobileAssetManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleMetadataAssetUpdated];
  v3[2](v3, 1);
}

@end