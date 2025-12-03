@interface GEOMetroRegionAssetProvider
+ (id)_maQueryForAssetCode:(id)code;
+ (id)sharedProvider;
+ (void)_downloadAsset:(id)asset completion:(id)completion;
+ (void)_downloadCatalogIfNeededThen:(id)then;
+ (void)_unavailableAssetForAssetCode:(id)code completion:(id)completion;
+ (void)_updateCatalogWithResult:(id)result;
+ (void)preloadAssetForCountryCode:(id)code preloadQueue:(id)queue completion:(id)completion;
- (GEOMetroRegionAssetProvider)init;
- (id)_acceptListForCountryCode:(id)code name:(id)name;
- (id)_bestAvailableAssetForAssetCode:(id)code;
- (id)urlForInstalledCountryCode:(id)code;
- (void)_catalogDownloadFinishedWithResult:(int64_t)result;
- (void)_updateCatalogAfterDelay:(double)delay;
@end

@implementation GEOMetroRegionAssetProvider

- (void)_catalogDownloadFinishedWithResult:(int64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = GEOGetMetroRegionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    resultCopy = result;
    _os_log_impl(&dword_1AB634000, v5, OS_LOG_TYPE_INFO, "catalog download reply: %ld", &v12, 0xCu);
  }

  if (result)
  {
    catalogLoadRetryMultiplier = self->_catalogLoadRetryMultiplier;
    if (catalogLoadRetryMultiplier <= 0xB)
    {
      self->_catalogLoadRetryMultiplier = ++catalogLoadRetryMultiplier;
    }

    v7 = (600 * catalogLoadRetryMultiplier);
  }

  else
  {
    v7 = 1800.0;
  }

  [(GEOMetroRegionAssetProvider *)self _updateCatalogAfterDelay:v7];
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  countryCode = [mEMORY[0x1E69A1CD8] countryCode];

  v10 = [(GEOMetroRegionAssetProvider *)self urlForInstalledCountryCode:countryCode];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateCatalogAfterDelay:(double)delay
{
  v5 = dispatch_get_global_queue(9, 0);
  v6 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__GEOMetroRegionAssetProvider__updateCatalogAfterDelay___block_invoke;
  block[3] = &unk_1E7959610;
  block[4] = self;
  dispatch_after(v6, v5, block);
}

uint64_t __56__GEOMetroRegionAssetProvider__updateCatalogAfterDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__GEOMetroRegionAssetProvider__updateCatalogAfterDelay___block_invoke_2;
  v5[3] = &unk_1E7953DB0;
  v5[4] = *(a1 + 32);
  return [v3 _updateCatalogWithResult:v5];
}

- (id)_acceptListForCountryCode:(id)code name:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(GEOMetroRegionAssetProvider *)self urlForInstalledCountryCode:code];
  v8 = MEMORY[0x1E695DF20];
  v9 = [v7 URLByAppendingPathComponent:@"AcceptLists.plist"];
  v16 = 0;
  v10 = [v8 dictionaryWithContentsOfURL:v9 error:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = GEOGetMetroRegionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1AB634000, v12, OS_LOG_TYPE_ERROR, "query result : %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v13 = [v10 objectForKeyedSubscript:nameCopy];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)urlForInstalledCountryCode:(id)code
{
  codeCopy = code;
  v5 = [(NSCache *)self->_fileURLCache objectForKey:codeCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(GEOMetroRegionAssetProvider *)self _bestAvailableAssetForAssetCode:codeCopy];
    getLocalFileUrl = [v7 getLocalFileUrl];
    if (getLocalFileUrl)
    {
      [(NSCache *)self->_fileURLCache setObject:getLocalFileUrl forKey:codeCopy];
    }

    v6 = getLocalFileUrl;
  }

  return v6;
}

- (id)_bestAvailableAssetForAssetCode:(id)code
{
  v26 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v4 = [objc_opt_class() _maQueryForAssetCode:codeCopy];
  queryMetaDataSync = [v4 queryMetaDataSync];
  v6 = GEOGetMetroRegionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v25 = queryMetaDataSync;
    _os_log_impl(&dword_1AB634000, v6, OS_LOG_TYPE_INFO, "query result : %ld", buf, 0xCu);
  }

  results = [v4 results];

  if (!results)
  {
    results2 = GEOGetMetroRegionLog();
    if (os_log_type_enabled(results2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = codeCopy;
      _os_log_impl(&dword_1AB634000, results2, OS_LOG_TYPE_INFO, "query for '%@' has no results", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  results2 = [v4 results];
  v9 = [results2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
LABEL_19:
    v11 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v20;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(results2);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      [v14 logAsset];
      if ([v14 state] == 1)
      {
        [objc_opt_class() _downloadAsset:v14 completion:0];
      }

      else
      {
        if ([v14 state] == 2)
        {
          v16 = v14;

          v11 = v16;
          goto LABEL_21;
        }

        if ([v14 state] == 3)
        {
          v15 = v14;

          v11 = v15;
        }
      }
    }

    v10 = [results2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (GEOMetroRegionAssetProvider)init
{
  v6.receiver = self;
  v6.super_class = GEOMetroRegionAssetProvider;
  v2 = [(GEOMetroRegionAssetProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fileURLCache = v2->_fileURLCache;
    v2->_fileURLCache = v3;

    [(NSCache *)v2->_fileURLCache setName:@"metro regions file URL cache"];
    [(GEOMetroRegionAssetProvider *)v2 _updateCatalogAfterDelay:5.0];
  }

  return v2;
}

+ (void)preloadAssetForCountryCode:(id)code preloadQueue:(id)queue completion:(id)completion
{
  codeCopy = code;
  queueCopy = queue;
  completionCopy = completion;
  v11 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 1;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke;
  v18[3] = &unk_1E7953E28;
  v12 = codeCopy;
  v19 = v12;
  v13 = v11;
  v21 = v23;
  selfCopy = self;
  v20 = v13;
  [self _downloadCatalogIfNeededThen:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke_4;
  v15[3] = &unk_1E7953E50;
  v16 = completionCopy;
  v17 = v23;
  v14 = completionCopy;
  dispatch_group_notify(v13, queueCopy, v15);

  _Block_object_dispose(v23, 8);
}

void __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(a1 + 32), @"CCALLOW", 0}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        dispatch_group_enter(*(a1 + 40));
        v9 = *(a1 + 56);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke_2;
        v11[3] = &unk_1E7953E00;
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        [v9 _unavailableAssetForAssetCode:v8 completion:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((*(*(a1 + 40) + 8) + 24));
  return (*(v1 + 16))(v1, v2 & 1);
}

void __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__GEOMetroRegionAssetProvider_preloadAssetForCountryCode_preloadQueue_completion___block_invoke_3;
    v8[3] = &unk_1E7953DD8;
    v7 = *(a1 + 32);
    v5 = v7;
    v9 = v7;
    [v4 _downloadAsset:a2 completion:v8];
  }

  else
  {
    v6 = *(a1 + 32);

    dispatch_group_leave(v6);
  }
}

+ (void)_updateCatalogWithResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(getMADownloadOptionsClass());
  [v4 setAllowsCellularAccess:GEOConfigGetBOOL()];
  [v4 setAllowsExpensiveAccess:{objc_msgSend(v4, "allowsCellularAccess")}];
  [v4 setRequiresPowerPluggedIn:GEOConfigGetBOOL() ^ 1];
  [v4 setDiscretionary:GEOConfigGetBOOL()];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v5 = getMAAssetClass_softClass;
  v11 = getMAAssetClass_softClass;
  if (!getMAAssetClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getMAAssetClass_block_invoke;
    v7[3] = &unk_1E79595B8;
    v7[4] = &v8;
    __getMAAssetClass_block_invoke(v7);
    v5 = v9[3];
  }

  v6 = v5;
  _Block_object_dispose(&v8, 8);
  [v5 startCatalogDownload:@"com.apple.MobileAsset.GeoPolygonDataAssets" options:v4 then:resultCopy];
}

+ (void)_downloadCatalogIfNeededThen:(id)then
{
  thenCopy = then;
  v5 = [self _maQueryForAssetCode:@"CCALLOW"];
  if ([v5 isCatalogFetchedWithinThePastFewDays:1])
  {
    thenCopy[2](thenCopy);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__GEOMetroRegionAssetProvider__downloadCatalogIfNeededThen___block_invoke;
    v6[3] = &unk_1E7953D88;
    v7 = thenCopy;
    [self _updateCatalogWithResult:v6];
  }
}

+ (void)_unavailableAssetForAssetCode:(id)code completion:(id)completion
{
  completionCopy = completion;
  v7 = [self _maQueryForAssetCode:code];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__GEOMetroRegionAssetProvider__unavailableAssetForAssetCode_completion___block_invoke;
  v10[3] = &unk_1E7953D60;
  v11 = v7;
  v12 = completionCopy;
  v8 = v7;
  v9 = completionCopy;
  [v8 queryMetaDataWithError:v10];
}

void __72__GEOMetroRegionAssetProvider__unavailableAssetForAssetCode_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = GEOGetMetroRegionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1AB634000, v6, OS_LOG_TYPE_ERROR, "MA query error : (%@)", buf, 0xCu);
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [*(a1 + 32) results];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v12 + 1) + 8 * v10) state] == 1)
          {
            (*(*(a1 + 40) + 16))();

            goto LABEL_14;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_maQueryForAssetCode:(id)code
{
  codeCopy = code;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getMAAssetQueryClass_softClass;
  v12 = getMAAssetQueryClass_softClass;
  if (!getMAAssetQueryClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getMAAssetQueryClass_block_invoke;
    v8[3] = &unk_1E79595B8;
    v8[4] = &v9;
    __getMAAssetQueryClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithType:@"com.apple.MobileAsset.GeoPolygonDataAssets"];
  [v6 returnTypes:2];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 addKeyValuePair:@"Type" with:@"Metro"];
  [v6 addKeyValuePair:@"FormatVersion" with:@"1"];
  [v6 addKeyValuePair:@"MetrosInCountry" with:codeCopy];

  return v6;
}

+ (void)_downloadAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v7 = objc_alloc_init(getMADownloadOptionsClass());
  [v7 setAllowsCellularAccess:GEOConfigGetBOOL()];
  [v7 setAllowsExpensiveAccess:{objc_msgSend(v7, "allowsCellularAccess")}];
  [v7 setRequiresPowerPluggedIn:GEOConfigGetBOOL() ^ 1];
  [v7 setDiscretionary:GEOConfigGetBOOL()];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__GEOMetroRegionAssetProvider__downloadAsset_completion___block_invoke;
  v10[3] = &unk_1E7953D38;
  v11 = assetCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = assetCopy;
  [v9 startDownload:v7 then:v10];
}

uint64_t __57__GEOMetroRegionAssetProvider__downloadAsset_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = GEOGetMetroRegionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) getLocalUrl];
    v8 = 134218242;
    v9 = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1AB634000, v4, OS_LOG_TYPE_INFO, "Got the asset download reply: %ld, and %@", &v8, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_1459);
  }

  v3 = sharedProvider_instance;

  return v3;
}

uint64_t __45__GEOMetroRegionAssetProvider_sharedProvider__block_invoke()
{
  sharedProvider_instance = objc_alloc_init(GEOMetroRegionAssetProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end