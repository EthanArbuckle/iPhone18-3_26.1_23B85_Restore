@interface DDSMAAutoAssetManager
- (DDSMAAutoAssetManager)init;
- (DDSMAAutoAssetManager)initWithProvider:(id)a3 dataSource:(id)a4;
- (id)assetsAvailableOnDeviceForQuery:(id)a3;
- (id)assetsForQuery:(id)a3;
- (id)autoAssetSelectorsForQuery:(id)a3;
- (id)autoAssetTypeForAsserType:(id)a3;
- (id)autoAssetsForQuery:(id)a3;
- (void)fetchAssetUpdateStatusForQuery:(id)a3 callback:(id)a4;
- (void)lockAssetsForQuery:(id)a3;
- (void)registerInterestInContentForQuery:(id)a3;
- (void)serverDidUpdateAssetsWithType:(id)a3;
- (void)unregisterInterestInContentForAssetSelector:(id)a3;
- (void)updateAssetForQuery:(id)a3 callback:(id)a4;
@end

@implementation DDSMAAutoAssetManager

- (DDSMAAutoAssetManager)init
{
  v3 = objc_alloc_init(DDSMAAutoAssetProvider);
  v4 = objc_alloc_init(DDSMAAutoAssetManagerDataSource);
  v5 = [(DDSMAAutoAssetManager *)self initWithProvider:v3 dataSource:v4];

  return v5;
}

- (DDSMAAutoAssetManager)initWithProvider:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DDSMAAutoAssetManager;
  v9 = [(DDSMAAutoAssetManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, a3);
    objc_storeStrong(&v10->_dataSource, a4);
    v11 = objc_alloc_init(DDSAssetQueryResultCache);
    assetQueryResultsCache = v10->_assetQueryResultsCache;
    v10->_assetQueryResultsCache = v11;
  }

  return v10;
}

- (id)autoAssetTypeForAsserType:(id)a3
{
  v4 = a3;
  v5 = [(DDSMAAutoAssetManager *)self dataSource];
  v6 = [v5 shouldDownloadAutoAsset];

  if (v6)
  {
    if ([v4 isEqualToString:@"com.apple.MobileAsset.LinguisticData"])
    {
      v7 = @"com.apple.MobileAsset.LinguisticDataAuto";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = AutoAssetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "AutoAsset support is disabled", v10, 2u);
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)autoAssetSelectorsForQuery:(id)a3
{
  v4 = a3;
  v5 = [(DDSMAAutoAssetManager *)self dataSource];
  v6 = [v5 shouldDownloadAutoAsset];

  if (v6)
  {
    v7 = [(DDSMAAutoAssetManager *)self dataSource];
    v8 = [v7 supportedAutoAssetSpecifiers];
    v9 = [DDSMAAutoAssetSelector createWithQuery:v4 supportedAssetSpecifiers:v8];
  }

  else
  {
    v10 = AutoAssetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "AutoAsset support is disabled", v12, 2u);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)autoAssetsForQuery:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(DDSMAAutoAssetManager *)self autoAssetSelectorsForQuery:v4];
  if ([v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = v6;
      v19 = v4;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(DDSMAAutoAssetManager *)self provider:v18];
          v14 = [v13 autoAssetForAssetSelector:v12];

          if (v14)
          {
            [v5 addObject:v14];
          }

          else
          {
            v15 = AutoAssetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v26 = v12;
              _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Auto asset object cannot be created for asset selector: %{public}@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
      v6 = v18;
      v4 = v19;
    }
  }

  else
  {
    v7 = AutoAssetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset is not supported for query: %{public}@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)registerInterestInContentForQuery:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AutoAssetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Register interest in auto assets for query: %{public}@", buf, 0xCu);
  }

  [(DDSMAAutoAssetManager *)self autoAssetsForQuery:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(DDSMAAutoAssetManager *)self provider];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke;
        v14[3] = &unk_1E86C6838;
        v14[4] = v10;
        v14[5] = self;
        v15 = @"dds-add-assertion-lock";
        [v11 interestInContentForAutoAsset:v10 completion:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = AutoAssetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) assetSelector];
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Interest in auto asset: %{public}@ submitted, now lock the auto asset to download the content", buf, 0xCu);
    }

    v5 = [*(a1 + 40) provider];
    v6 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke_8;
    v8[3] = &unk_1E86C6810;
    v9 = *(a1 + 32);
    v10 = v6;
    [v5 lockAutoAsset:v9 forReason:v10 withTimeout:-1 completion:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __59__DDSMAAutoAssetManager_registerInterestInContentForQuery___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AutoAssetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) assetSelector];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Auto asset content is downloaded now unlock the auto asset: %{public}@", &v11, 0xCu);
    }

    v6 = [*(a1 + 40) provider];
    [v6 unlockAutoAsset:*(a1 + 32) forReason:*(a1 + 48)];
  }

  else if (v7)
  {
    v9 = [*(a1 + 32) assetSelector];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Auto asset lock failed for asset: %{public}@ with error: %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterInterestInContentForAssetSelector:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AutoAssetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Eliminate interest in content for asset selector: %{public}@", &v9, 0xCu);
  }

  v6 = [(DDSMAAutoAssetManager *)self provider];
  v7 = [v4 assetSelector];
  [v6 eliminateInterestForAutoAsset:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)lockAssetsForQuery:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AutoAssetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Locking auto asset for query: %{public}@", buf, 0xCu);
  }

  [(DDSMAAutoAssetManager *)self autoAssetsForQuery:v4];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(DDSMAAutoAssetManager *)self provider];
        v20 = 0;
        v12 = [v11 lockAutoAssetSync:v10 forReason:@"dds-periodic-update-lock" error:&v20];
        v13 = v20;

        v14 = AutoAssetLog();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v15)
          {
            v16 = [v10 assetSelector];
            *buf = 138543362;
            v26 = v16;
            _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Unlocking auto asset: %{public}@", buf, 0xCu);
          }

          v14 = [(DDSMAAutoAssetManager *)self provider];
          [v14 unlockAutoAsset:v10 forReason:@"dds-periodic-update-lock"];
        }

        else if (v15)
        {
          v17 = [v10 assetSelector];
          *buf = 138543618;
          v26 = v17;
          v27 = 2114;
          v28 = v13;
          _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Failed to lock the auto asset: %{public}@, with error: %{public}@", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)assetsAvailableOnDeviceForQuery:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = objc_opt_new();
  [(DDSMAAutoAssetManager *)self autoAssetsForQuery:v20];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [(DDSMAAutoAssetManager *)self provider];
        v24 = 0;
        v9 = [v8 lockAutoAssetSync:v7 forReason:@"dds-asset-for-query" error:&v24];
        v10 = v24;

        if (v9)
        {
          v11 = [v9 compatibilityVersion];
          v12 = [(DDSMAAutoAssetManager *)self dataSource];
          v13 = [v12 linguisticAssetCompatabilityVersion];

          if (v11 == v13)
          {
            [v21 addObject:v9];
            v14 = [(DDSMAAutoAssetManager *)self provider];
            [v14 unlockAutoAsset:v7 forReason:@"dds-asset-for-query"];
          }

          else
          {
            v14 = AutoAssetLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v7 assetSelector];
              v17 = [v9 contentVersion];
              *buf = 138543618;
              v30 = v16;
              v31 = 2048;
              v32 = v17;
              _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Skip auto asset: %{public}@ with content version: %lu due to mismatch in compatibility version", buf, 0x16u);
            }
          }
        }

        else
        {
          v14 = AutoAssetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v7 assetSelector];
            *buf = 138543618;
            v30 = v15;
            v31 = 2114;
            v32 = v10;
            _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Failed to lock the auto asset: %{public}@, with error: %{public}@", buf, 0x16u);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)assetsForQuery:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DDSMAAutoAssetManager *)self assetQueryResultsCache];
  v6 = [v5 cachedAssetsForQuery:v4];

  if (v6)
  {
    v7 = v6;
  }

  else if ([v4 cachedOnly])
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(DDSMAAutoAssetManager *)self assetsAvailableOnDeviceForQuery:v4];
    v8 = [(DDSMAAutoAssetManager *)self assetQueryResultsCache];
    [v8 cacheAssets:v7 forQuery:v4];

    v9 = QueryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [DDSAsset debuggingIDsForAssets:v7];
      v16 = 138544130;
      v17 = v4;
      v18 = 2114;
      v19 = v10;
      v20 = 1024;
      v21 = 0;
      v22 = 1024;
      v23 = [v4 cachedOnly];
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Updated cache for query: %{public}@ assets: %{public}@ was cached: %d, cachedOnly: %d", &v16, 0x22u);
    }
  }

  v11 = QueryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [DDSAsset debuggingIDsForAssets:v7];
    v13 = [v4 cachedOnly];
    v16 = 138544130;
    v17 = v4;
    v18 = 2114;
    v19 = v12;
    v20 = 1024;
    v21 = v6 != 0;
    v22 = 1024;
    v23 = v13;
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "assetsForQuery: %{public}@ final result: %{public}@ was cached: %d, cachedOnly: %d", &v16, 0x22u);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)serverDidUpdateAssetsWithType:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AutoAssetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Updated the assets for asset type: %@", &v8, 0xCu);
  }

  v6 = [(DDSMAAutoAssetManager *)self assetQueryResultsCache];
  [v6 clearCacheForAssetType:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetUpdateStatusForQuery:(id)a3 callback:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v16 = a4;
  v5 = AutoAssetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Fetch asset update status for query: %{public}@", &buf, 0xCu);
  }

  v13 = [(DDSMAAutoAssetManager *)self autoAssetsForQuery:v12];
  if ([v13 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x2020000000;
    v33 = [v13 count];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 1;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v13;
    v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v10 = [(DDSMAAutoAssetManager *)self provider];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke;
          v17[3] = &unk_1E86C6860;
          p_buf = &buf;
          v20 = v28;
          v17[4] = v9;
          v21 = v26;
          v18 = v16;
          [v10 fetchUpdateStatusForAutoAsset:v9 completion:v17];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v6);
    }

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(v16 + 2))(v16, 0, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  --*(*(a1[6] + 8) + 24);
  *(*(a1[7] + 8) + 24) |= a2;
  if (v5 && [v5 code] != 6201)
  {
    v7 = AutoAssetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1(a1, v6, v7);
    }

    *(*(a1[8] + 8) + 24) = 0;
  }

  if (!*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      v8 = *(*(a1[7] + 8) + 24);
      (*(a1[5] + 16))();
    }

    else
    {
      v9 = a1[5];
      v10 = DDSAssetDownloadUIError(4);
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (void)updateAssetForQuery:(id)a3 callback:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v16 = a4;
  v6 = AutoAssetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Update auto asset for query: %{public}@", &buf, 0xCu);
  }

  v14 = [(DDSMAAutoAssetManager *)self autoAssetsForQuery:v13];
  if ([v14 count])
  {
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = [v14 count];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__5;
    v31 = __Block_byref_object_dispose__5;
    v32 = MEMORY[0x1E695E118];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v14;
    v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * v9);
          v11 = [(DDSMAAutoAssetManager *)self provider];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __54__DDSMAAutoAssetManager_updateAssetForQuery_callback___block_invoke;
          v17[3] = &unk_1E86C6888;
          v17[4] = v10;
          v17[5] = self;
          v20 = v26;
          p_buf = &buf;
          v18 = @"dds-asset-download-ui-lock";
          v19 = v16;
          [v11 updateAutoAsset:v10 forReason:@"dds-asset-download-ui-lock" completion:v17];

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v26, 8);
  }

  else
  {
    (*(v16 + 2))(v16, MEMORY[0x1E695E118], 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __54__DDSMAAutoAssetManager_updateAssetForQuery_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  --*(*(*(a1 + 64) + 8) + 24);
  v7 = AutoAssetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = [*(a1 + 32) assetSelector];
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset content is updated, now unlock the auto asset: %{public}@", &v16, 0xCu);
    }

    v10 = [*(a1 + 40) provider];
    [v10 unlockAutoAsset:*(a1 + 32) forReason:*(a1 + 48)];
    goto LABEL_5;
  }

  if (v8)
  {
    v12 = [*(a1 + 32) assetSelector];
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset lock failed for asset: %{public}@ with error: %{public}@", &v16, 0x16u);
  }

  if (v6 && [v6 code] != 6201)
  {
    v13 = *(*(a1 + 72) + 8);
    v10 = *(v13 + 40);
    *(v13 + 40) = MEMORY[0x1E695E110];
LABEL_5:
  }

  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = DDSAssetDownloadUIError(2);
    }

    v14 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __65__DDSMAAutoAssetManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) assetSelector];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1DF7C6000, a3, OS_LOG_TYPE_ERROR, "Fetch auto asset update status failed for asset: %{public}@ with error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end