@interface PBBridgeAssetsManager
- (PBBridgeAssetsManager)init;
- (id)_assetQueries:(id)queries atlas:(id)atlas;
- (id)_assetQueryForBridgeLaunchSplash;
- (id)_assetQueryForDeviceAttributes:(unint64_t)attributes deviceAttributes:(id)deviceAttributes;
- (id)_assetQueryForFamilySetupImage;
- (id)_assetQueryForZeroDayForcedUpdate;
- (void)_beginAssetDownloads:(id)downloads;
- (void)_beginPullingAssetsForDeviceAttributes:(id)attributes completion:(id)completion;
- (void)_downloadAtlasAsset:(id)asset;
- (void)_linkDownloadedAsset:(id)asset;
- (void)_queryForImageAssets:(id)assets;
- (void)_runAssetQuery:(id)query completion:(id)completion;
- (void)_runNextQuery:(id)query;
- (void)_runQueries:(id)queries withCompletion:(id)completion;
- (void)_startAssetDownload:(id)download downloadGroup:(id)group;
- (void)_startAtlasDownloadAndQueryOnSuccess:(id)success;
- (void)beginPullingAssetsForAdvertisingName:(id)name completion:(id)completion;
- (void)beginPullingAssetsForDevice:(id)device completion:(id)completion;
- (void)beginPullingAssetsForDeviceMaterial:(unint64_t)material size:(unint64_t)size completion:(id)completion;
- (void)purgeAllAssetsLocalOnly:(BOOL)only;
@end

@implementation PBBridgeAssetsManager

- (PBBridgeAssetsManager)init
{
  v9.receiver = self;
  v9.super_class = PBBridgeAssetsManager;
  v2 = [(PBBridgeAssetsManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Bridge-AssetQueue-Serial", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.Bridge-AssetQueue-Concurrent", v5);
    concurrentQueue = v2->_concurrentQueue;
    v2->_concurrentQueue = v6;
  }

  return v2;
}

- (void)beginPullingAssetsForDeviceMaterial:(unint64_t)material size:(unint64_t)size completion:(id)completion
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"Material_Type";
  v8 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  v10 = [v8 numberWithUnsignedInteger:material];
  v15[0] = v10;
  v14[1] = @"Size_Type";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:SizeForInternalSize(size)];
  v14[2] = @"HW_Class";
  v15[1] = v11;
  v15[2] = &unk_286FB4190;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [(PBBridgeAssetsManager *)self _beginPullingAssetsForDeviceAttributes:v12 completion:completionCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)beginPullingAssetsForAdvertisingName:(id)name completion:(id)completion
{
  v19[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  v8 = PBAdvertisingInfoFromPayload(nameCopy);
  v9 = [v8 objectForKeyedSubscript:@"s"];
  integerValue = [v9 integerValue];

  v11 = [v8 objectForKeyedSubscript:@"m"];
  v12 = v11;
  if (v11)
  {
    v19[0] = v11;
    v18[0] = @"Material_Type";
    v18[1] = @"Size_Type";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:SizeForInternalSize(integerValue)];
    v18[2] = @"HW_Class";
    v19[1] = v13;
    v19[2] = &unk_286FB4190;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    [(PBBridgeAssetsManager *)self _beginPullingAssetsForDeviceAttributes:v14 completion:completionCopy];
  }

  else
  {
    v14 = pbb_mobileasset_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = nameCopy;
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "Ignored Pulling Assets for Malformed Advertising Name: %@", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)beginPullingAssetsForDevice:(id)device completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D2BBC0];
  completionCopy = completion;
  deviceCopy = device;
  v9 = [deviceCopy valueForProperty:v6];
  v10 = [PBBridgeWatchAttributeController materialFromDevice:deviceCopy];
  v11 = [deviceCopy valueForProperty:*MEMORY[0x277D2BA80]];

  if (MGGetBoolAnswer() && v11)
  {
    v12 = pbb_mobileasset_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[PBBridgeAssetsManager beginPullingAssetsForDevice:completion:]";
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyArtworkTraits to get PBBDeviceSize", buf, 0xCu);
    }

    v13 = [v11 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    [v13 unsignedIntegerValue];

    v14 = PBVariantSizeForArtworkDeviceSubType();
  }

  else
  {
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[PBBridgeAssetsManager beginPullingAssetsForDevice:completion:]";
      _os_log_impl(&dword_25DE64000, v15, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyProductType to get PBBDeviceSize", buf, 0xCu);
    }

    v14 = PBVariantSizeForProductType();
  }

  v16 = v14;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v10, @"Material_Type"}];
  v23[0] = v17;
  v22[1] = @"Size_Type";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v23[1] = v18;
  v22[2] = @"HW_Class";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PBBridgeAssetsManager hardwareGenerationForProductType:](self, "hardwareGenerationForProductType:", v9)}];
  v23[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  [(PBBridgeAssetsManager *)self _beginPullingAssetsForDeviceAttributes:v20 completion:completionCopy];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_beginPullingAssetsForDeviceAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  [(PBBridgeAssetsManager *)self setDeviceAttributes:attributes];
  v7 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v7 setDiscretionary:0];
  v8 = pbb_mobileasset_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Downloading asset catalog...", buf, 2u);
  }

  v9 = MEMORY[0x277D289C0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke;
  v11[3] = &unk_2799F4620;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 startCatalogDownload:@"com.apple.MobileAsset.BridgeAssets" options:v7 then:v11];
}

void __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a2;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Got the metadata download reply: %ld", buf, 0xCu);
  }

  v5 = [*(a1 + 32) serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_296;
  v8[3] = &unk_2799F45F8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  dispatch_async(v5, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_296(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);
  v6 = [v5 deviceAttributes];
  v7 = [v5 _assetQueryForDeviceAttributes:1 deviceAttributes:v6];

  v8 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_2;
  v9[3] = &unk_2799F45D0;
  v9[4] = v8;
  [v8 _runAssetQuery:v7 completion:v9];
}

void __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = pbb_mobileasset_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Atlas Asset: %@", &v8, 0xCu);
    }

    [*(a1 + 32) _downloadAtlasAsset:v4];
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_runAssetQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  serialQueue = [(PBBridgeAssetsManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke;
  block[3] = &unk_2799F4698;
  v12 = queryCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = queryCopy;
  dispatch_async(serialQueue, block);
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_2;
  v4[3] = &unk_2799F4670;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v6 = v3;
  v5 = *(a1 + 32);
  [v2 queryMetaData:v4];
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[4] serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3;
  block[3] = &unk_2799F4648;
  v8 = a2;
  v7 = a1[6];
  v6 = a1[5];
  dispatch_async(v4, block);
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 48);
  if (*(a1 + 48))
  {
    v2 = pbb_mobileasset_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3_cold_1(v1, v2);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (*(a1 + 40))
  {
    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) results];
      v8 = 134217984;
      v9 = [v5 count];
      _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Single Query returned %lu assets", &v8, 0xCu);
    }

    v6 = *(a1 + 40);
    v2 = [*(a1 + 32) results];
    (*(v6 + 16))(v6, v2);
    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAtlasAsset:(id)asset
{
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  state = [assetCopy state];
  if (state == 1)
  {
    *v17 = 0;
    if ([assetCopy spaceCheck:v17])
    {
      [(PBBridgeAssetsManager *)self _startAtlasDownloadAndQueryOnSuccess:assetCopy];
      goto LABEL_13;
    }

    v8 = pbb_mobileasset_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeAssetsManager *)v8 _downloadAtlasAsset:v9, v10, v11, v12, v13, v14, v15];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (state != 2)
  {
    v8 = pbb_mobileasset_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Asset Download in Progress...", v17, 2u);
    }

    goto LABEL_12;
  }

  getLocalUrl = [assetCopy getLocalUrl];
  v7 = pbb_mobileasset_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 138412290;
    *&v17[4] = getLocalUrl;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Asset already installed: %@", v17, 0xCu);
  }

  [(PBBridgeAssetsManager *)self _queryForImageAssets:getLocalUrl];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startAtlasDownloadAndQueryOnSuccess:(id)success
{
  v13 = *MEMORY[0x277D85DE8];
  successCopy = success;
  v5 = objc_opt_new();
  [v5 setAllowsCellularAccess:1];
  [v5 setDiscretionary:0];
  v6 = pbb_mobileasset_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = successCopy;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Starting download on asset: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke;
  v9[3] = &unk_2799F46E8;
  v9[4] = self;
  v10 = successCopy;
  v7 = successCopy;
  [v7 startDownload:v5 then:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke_2;
  block[3] = &unk_2799F46C0;
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v1 = pbb_mobileasset_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke_2_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v1 = [*(a1 + 32) getLocalUrl];
    v10 = pbb_mobileasset_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v1;
      _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "Local URL data from asset download %@", &v12, 0xCu);
    }

    [*(a1 + 40) _queryForImageAssets:v1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queryForImageAssets:(id)assets
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAC0];
  v5 = MEMORY[0x277CCACA8];
  path = [assets path];
  v7 = [v5 stringWithFormat:@"%@/%@", path, @"Atlas.plist"];
  v8 = [v4 dictionaryWithContentsOfFile:v7];

  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Atlas Pointers: %@", buf, 0xCu);
  }

  deviceAttributes = [(PBBridgeAssetsManager *)self deviceAttributes];
  v11 = [(PBBridgeAssetsManager *)self _assetQueries:deviceAttributes atlas:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__PBBridgeAssetsManager__queryForImageAssets___block_invoke;
  v13[3] = &unk_2799F45D0;
  v13[4] = self;
  [(PBBridgeAssetsManager *)self _runQueries:v11 withCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __46__PBBridgeAssetsManager__queryForImageAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 _beginAssetDownloads:a2];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = pbb_mobileasset_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "No assets found after running multiple queries", v6, 2u);
    }
  }
}

- (id)_assetQueries:(id)queries atlas:(id)atlas
{
  v24[5] = *MEMORY[0x277D85DE8];
  atlasCopy = atlas;
  queriesCopy = queries;
  v8 = [(PBBridgeAssetsManager *)self _assetQueryForDeviceAttributes:0 deviceAttributes:queriesCopy];
  v9 = MEMORY[0x277CCACA8];
  v10 = [atlasCopy objectForKeyedSubscript:@"ImageAssetPointer"];
  v11 = [v9 stringWithFormat:@"%@", v10];

  [v8 addKeyValuePair:@"ImageAssetPointer" with:v11];
  v12 = [(PBBridgeAssetsManager *)self _assetQueryForDeviceAttributes:0 deviceAttributes:queriesCopy];

  v13 = MEMORY[0x277CCACA8];
  v14 = [atlasCopy objectForKeyedSubscript:@"UniqueVideoAssetPointer"];

  v15 = [v13 stringWithFormat:@"%@", v14];

  [v12 addKeyValuePair:@"UniqueVideoAssetPointer" with:v15];
  _assetQueryForBridgeLaunchSplash = [(PBBridgeAssetsManager *)self _assetQueryForBridgeLaunchSplash];
  _assetQueryForFamilySetupImage = [(PBBridgeAssetsManager *)self _assetQueryForFamilySetupImage];
  _assetQueryForZeroDayForcedUpdate = [(PBBridgeAssetsManager *)self _assetQueryForZeroDayForcedUpdate];
  v19 = MEMORY[0x277CBEB18];
  v24[0] = v8;
  v24[1] = v12;
  v24[2] = _assetQueryForFamilySetupImage;
  v24[3] = _assetQueryForBridgeLaunchSplash;
  v24[4] = _assetQueryForZeroDayForcedUpdate;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v21 = [v19 arrayWithArray:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_runQueries:(id)queries withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  queriesCopy = queries;
  completionCopy = completion;
  v7 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = queriesCopy;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        concurrentQueue = [(PBBridgeAssetsManager *)self concurrentQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PBBridgeAssetsManager__runQueries_withCompletion___block_invoke;
        block[3] = &unk_2799F4710;
        block[4] = self;
        block[5] = v12;
        dispatch_group_async(v7, concurrentQueue, block);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  serialQueue = [(PBBridgeAssetsManager *)self serialQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__PBBridgeAssetsManager__runQueries_withCompletion___block_invoke_2;
  v20[3] = &unk_2799F45F8;
  v21 = obj;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = obj;
  dispatch_group_notify(v7, serialQueue, v20);

  v17 = *MEMORY[0x277D85DE8];
}

void __52__PBBridgeAssetsManager__runQueries_withCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) results];
        [v2 addObjectsFromArray:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v2 count];
    *buf = 134217984;
    v17 = v10;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Queries returned %lu assets", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_runNextQuery:(id)query
{
  v12 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  queryMetaDataSync = [queryCopy queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v5 = queryMetaDataSync;
    v6 = pbb_mobileasset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = queryCopy;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Query: %@ failed with result: %ld", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_beginAssetDownloads:(id)downloads
{
  v26 = *MEMORY[0x277D85DE8];
  downloadsCopy = downloads;
  v5 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = downloadsCopy;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        concurrentQueue = [(PBBridgeAssetsManager *)self concurrentQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke;
        block[3] = &unk_2799F4738;
        block[4] = v10;
        block[5] = self;
        v20 = v5;
        dispatch_group_async(v20, concurrentQueue, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  serialQueue = [(PBBridgeAssetsManager *)self serialQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_309;
  v16[3] = &unk_2799F4710;
  v17 = obj;
  selfCopy = self;
  v13 = obj;
  dispatch_group_notify(v5, serialQueue, v16);

  v14 = *MEMORY[0x277D85DE8];
}

void __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if (v2 == 1)
  {
    v5 = *(a1 + 32);
    *v15 = 0;
    if ([v5 spaceCheck:v15])
    {
      [*(a1 + 40) _startAssetDownload:*(a1 + 32) downloadGroup:*(a1 + 48)];
      goto LABEL_13;
    }

    v6 = pbb_mobileasset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeAssetsManager *)v6 _downloadAtlasAsset:v7, v8, v9, v10, v11, v12, v13];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v2 != 2)
  {
    v6 = pbb_mobileasset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Atlas Asset Download in Progress...", v15, 2u);
    }

    goto LABEL_12;
  }

  v3 = [*(a1 + 32) getLocalFileUrl];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 138412290;
    *&v15[4] = v3;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Asset Already Installed! %@", v15, 0xCu);
  }

  [*(a1 + 40) _linkDownloadedAsset:*(a1 + 32)];
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

void __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_309(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v11 + 1) + 8 * v6) state] != 2)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_2;
  v9[3] = &unk_2799F4760;
  v9[4] = *(a1 + 40);
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (void)_startAssetDownload:(id)download downloadGroup:(id)group
{
  v19 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  groupCopy = group;
  v8 = objc_opt_new();
  [v8 setAllowsCellularAccess:1];
  [v8 setDiscretionary:0];
  dispatch_group_enter(groupCopy);
  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = downloadCopy;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Starting download on asset: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke;
  v13[3] = &unk_2799F4788;
  v14 = downloadCopy;
  selfCopy = self;
  v16 = groupCopy;
  v10 = groupCopy;
  v11 = downloadCopy;
  [v11 startDownload:v8 then:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v13 = v5;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Download for asset: %@ was not successful with result: %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke_310;
  block[3] = &unk_2799F4738;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v7 = *MEMORY[0x277D85DE8];
}

void __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke_310(uint64_t a1)
{
  [*(a1 + 32) _linkDownloadedAsset:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_linkDownloadedAsset:(id)asset
{
  v35 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [assetCopy refreshState];
  if ([assetCopy state] == 2)
  {
    v21 = assetCopy;
    getLocalFileUrl = [assetCopy getLocalFileUrl];
    path = [getLocalFileUrl path];
    v33 = 0;
    v6 = [defaultManager contentsOfDirectoryAtPath:path error:&v33];
    v7 = v33;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v6;
    v25 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v25)
    {
      v24 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v10 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
          if ([v10 count])
          {
            v11 = MEMORY[0x277CCACA8];
            firstObject = [v10 firstObject];
            v13 = [v11 stringWithFormat:@"%@/%@/", firstObject, @"BridgeAssets"];

            v28 = v7;
            [defaultManager createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v28];
            v14 = v28;

            v15 = MEMORY[0x277CCACA8];
            path2 = [getLocalFileUrl path];
            v17 = [v15 stringWithFormat:@"%@/%@", path2, v9];

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v13, v9];
            v27 = v14;
            [defaultManager removeItemAtPath:v18 error:&v27];
            v19 = v27;

            v26 = v19;
            [defaultManager createSymbolicLinkAtPath:v18 withDestinationPath:v17 error:&v26];
            v7 = v26;
          }
        }

        v25 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v25);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_2);
    assetCopy = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __46__PBBridgeAssetsManager__linkDownloadedAsset___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PBBridgeMobileAssetsChangedNotification" object:0];
}

- (void)purgeAllAssetsLocalOnly:(BOOL)only
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  v5 = pbb_mobileasset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = 341;
    v8 = 2080;
    v9 = "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v7, 0x12u);
  }

  [(PBBridgeAssetsManager *)self _runAssetQuery:v4 completion:&__block_literal_global_318];
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  NSLog(&cfstr_DSAssets.isa, 344, "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]_block_invoke", v2);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 state] == 4)
        {
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_2;
          v11[3] = &unk_2799F47D0;
          v11[4] = v8;
          [v8 cancelDownload:v11];
        }

        else
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_322;
          v10[3] = &unk_2799F47D0;
          v10[4] = v8;
          [v8 purge:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7[0] = 67109890;
    v7[1] = 350;
    v8 = 2080;
    v9 = "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]_block_invoke_2";
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s CANCEL DOWNLOAD! %@ // %ld", v7, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_322(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7[0] = 67109890;
    v7[1] = 354;
    v8 = 2080;
    v9 = "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s PURGE ASSET! %@ // %ld", v7, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_assetQueryForBridgeLaunchSplash
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  stringValue = [&unk_286FB41A8 stringValue];
  [v2 addKeyValuePair:@"Asset_Type" with:stringValue];

  return v2;
}

- (id)_assetQueryForFamilySetupImage
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  stringValue = [&unk_286FB41C0 stringValue];
  [v2 addKeyValuePair:@"Asset_Type" with:stringValue];

  return v2;
}

- (id)_assetQueryForZeroDayForcedUpdate
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  stringValue = [&unk_286FB41D8 stringValue];
  [v2 addKeyValuePair:@"Asset_Type" with:stringValue];

  return v2;
}

- (id)_assetQueryForDeviceAttributes:(unint64_t)attributes deviceAttributes:(id)deviceAttributes
{
  deviceAttributesCopy = deviceAttributes;
  v6 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  if (attributes)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:attributes];
    stringValue = [v7 stringValue];
    [v6 addKeyValuePair:@"Asset_Type" with:stringValue];

    if (!deviceAttributesCopy)
    {
      goto LABEL_7;
    }

    if (attributes == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [deviceAttributesCopy objectForKeyedSubscript:@"Material_Type"];
      v11 = [v9 stringWithFormat:@"%@", v10];

      [v6 addKeyValuePair:@"Material_Type" with:v11];
    }
  }

  else if (!deviceAttributesCopy)
  {
    goto LABEL_7;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [deviceAttributesCopy objectForKeyedSubscript:@"HW_Class"];
  v14 = [v12 stringWithFormat:@"%@", v13];

  [v6 addKeyValuePair:@"HW_Class" with:v14];
  v15 = MEMORY[0x277CCACA8];
  v16 = [deviceAttributesCopy objectForKeyedSubscript:@"Size_Type"];
  v17 = [v15 stringWithFormat:@"%@", v16];

  [v6 addKeyValuePair:@"Size_Type" with:v17];
LABEL_7:
  v18 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v20 = [v18 numberWithDouble:?];
  stringValue2 = [v20 stringValue];
  [v6 addKeyValuePair:@"Resolution_Scale" with:stringValue2];

  [v6 addKeyValuePair:@"Version_Number" with:@"1"];

  return v6;
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_25DE64000, a2, OS_LOG_TYPE_ERROR, "Query error with MAQueryResult: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end