@interface DDSMobileAssetv2Provider
+ (id)latestAssetsOnlyFromAssets:(id)a3;
+ (id)latestBetweenAssetA:(id)a3 AssetB:(id)a4;
+ (id)platformVersion;
+ (void)platformVersion;
- (BOOL)shouldMatchAttributeValue:(id)a3 givenValue:(id)a4;
- (DDSMobileAssetv2Provider)init;
- (DDSMobileAssetv2Provider)initWithDataSource:(id)a3;
- (id)allContentItemsMatchingQuery:(id)a3 error:(id *)a4;
- (id)assetsForQuery:(id)a3 errorPtr:(id *)a4;
- (id)assetsInCatalogForQuery:(id)a3 errorPtr:(id *)a4;
- (id)contentItemsFromAssets:(id)a3 matchingFilter:(id)a4;
- (id)updatableAssetsForAssertion:(id)a3;
- (int64_t)compatabilityVersionForAssetType:(id)a3;
- (void)beginDownloadForAssertions:(id)a3 discretionaryDownload:(BOOL)a4;
- (void)beginDownloadForAssets:(id)a3 withPolicy:(id)a4 discretionaryDownload:(BOOL)a5 error:(id *)a6 handler:(id)a7;
- (void)didChangeDownloadState:(unint64_t)a3 forAsset:(id)a4;
- (void)didCompleteDownloadForAssertion:(id)a3 error:(id)a4;
- (void)didUpdateCatalogWithAssetType:(id)a3 error:(id)a4;
- (void)removeAssets:(id)a3;
- (void)removeAssetsForAssertions:(id)a3;
- (void)removeOldAssetsForAssertions:(id)a3;
- (void)serverDidUpdateAssetsWithType:(id)a3;
- (void)setCompatabilityVersion:(int64_t)a3 forAssetType:(id)a4;
- (void)startCatalogDownloadForAssetType:(id)a3 withDownloadOptions:(id)a4 withCompletion:(id)a5;
- (void)startDownloadForAsset:(id)a3 withOptions:(id)a4 progress:(id)a5 handler:(id)a6;
@end

@implementation DDSMobileAssetv2Provider

- (DDSMobileAssetv2Provider)init
{
  v3 = objc_alloc_init(DDSMobileAssetv2ProviderDataSource);
  v4 = [(DDSMobileAssetv2Provider *)self initWithDataSource:v3];

  return v4;
}

- (DDSMobileAssetv2Provider)initWithDataSource:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DDSMobileAssetv2Provider;
  v6 = [(DDSMobileAssetv2Provider *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(DDSAssetQueryResultCache);
    assetQueryResultsCache = v6->_assetQueryResultsCache;
    v6->_assetQueryResultsCache = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    downloadStateByAssetID = v6->_downloadStateByAssetID;
    v6->_downloadStateByAssetID = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    compatibilityVersionByAssetType = v6->_compatibilityVersionByAssetType;
    v6->_compatibilityVersionByAssetType = v11;

    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

- (int64_t)compatabilityVersionForAssetType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.MobileAsset.LinguisticData"])
  {
    v5 = [(DDSMobileAssetv2Provider *)self dataSource];
    v6 = [v5 linguisticAssetCompatabilityVersion];
LABEL_7:
    v8 = v6;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"com.apple.MobileAsset.MecabraDictionaryRapidUpdates"])
  {
    v5 = [(DDSMobileAssetv2Provider *)self dataSource];
    v6 = [v5 mecabraDictionaryRapidUpdatesAssetCompatabilityVersion];
    goto LABEL_7;
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(DDSMobileAssetv2Provider *)self compatibilityVersionByAssetType];
  v5 = [v7 objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = [v5 integerValue];
    goto LABEL_7;
  }

  v10 = QueryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [DDSMobileAssetv2Provider compatabilityVersionForAssetType:];
  }

  v8 = -1;
LABEL_8:

  return v8;
}

- (void)setCompatabilityVersion:(int64_t)a3 forAssetType:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v9 = [v6 numberWithInteger:a3];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(DDSMobileAssetv2Provider *)self compatibilityVersionByAssetType];
  [v8 setObject:v9 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)contentItemsFromAssets:(id)a3 matchingFilter:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 attributes];
        v14 = [v13 objectForKeyedSubscript:@"Contents"];
        v15 = [v6 filters];
        v16 = [DDSContentItemMatcher assetContentItemsMatching:v15 contentItems:v14 parentAsset:v12];

        [v7 addObjectsFromArray:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)allContentItemsMatchingQuery:(id)a3 error:(id *)a4
{
  v6 = [(DDSMobileAssetv2Provider *)self assetsForQuery:a3 errorPtr:?];
  if (*a4)
  {
    v7 = QueryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DDSMobileAssetv2Provider *)a4 allContentItemsMatchingQuery:v7 error:v8, v9, v10, v11, v12, v13];
    }

    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = [(DDSMobileAssetv2Provider *)self contentItemsFromAssets:v6 matchingFilter:0];
  }

  return v14;
}

- (id)assetsForQuery:(id)a3 errorPtr:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(DDSMobileAssetv2Provider *)self assetQueryResultsCache];
  v8 = [v7 cachedAssetsForQuery:v6];

  if (v8)
  {
    v9 = v8;
  }

  else if ([v6 cachedOnly])
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:v6 errorPtr:a4];
    v10 = [(DDSMobileAssetv2Provider *)self assetQueryResultsCache];
    [v10 cacheAssets:v9 forQuery:v6];
  }

  v11 = QueryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [DDSAsset debuggingIDsForAssets:v9];
    v15 = 138544130;
    v16 = v6;
    v17 = 2114;
    v18 = v12;
    v19 = 1024;
    v20 = v8 != 0;
    v21 = 1024;
    v22 = [v6 cachedOnly];
    _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "assetsForQuery: %{public}@ final result: %{public}@ was cached: %d, cachedOnly: %d", &v15, 0x22u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)assetsInCatalogForQuery:(id)a3 errorPtr:(id *)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(DDSMobileAssetv2Provider *)self dataSource];
  v7 = [v5 assetType];
  v8 = [(DDSMobileAssetv2Provider *)self compatabilityVersionForAssetType:v7];
  v54 = self;
  v9 = [objc_opt_class() platformVersion];
  v10 = [v6 maAssetQueryForDDSAssetQuery:v5 compatabilityVersion:v8 platformVersion:v9 internalInstall:DDS_IS_INTERNAL_INSTALL()];

  [v10 returnTypes:2];
  v44 = v10;
  if ([v10 queryMetaDataSync])
  {
    v11 = QueryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
    }
  }

  v12 = QueryLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
  }

  v13 = [v5 filter];
  v14 = [v13 filters];
  v15 = [v14 objectForKeyedSubscript:?];
  v16 = [v15 allObjects];

  v17 = QueryLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [v44 results];
  v50 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v50)
  {
    v19 = *v61;
    v47 = v16;
    v48 = v5;
    v45 = *v61;
    v46 = v18;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v60 + 1) + 8 * i);
        if (v16)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
          }

          v51 = v21;
          v52 = i;
          v22 = [v21 attributes];
          v23 = [v22 objectForKeyedSubscript:@"AssetRegion"];

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v53 = v16;
          v24 = [v53 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v55 = *v57;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v57 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                v28 = *(*(&v56 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [DDSMobileAssetv2Provider assetsInCatalogForQuery:errorPtr:];
                }

                v29 = [v28 objectForKeyedSubscript:@"Country"];
                v30 = [v23 objectForKeyedSubscript:@"Country"];
                v31 = [(DDSMobileAssetv2Provider *)v54 shouldMatchAttributeValue:v29 givenValue:v30];

                v32 = [v28 objectForKeyedSubscript:@"Province"];
                v33 = [v23 objectForKeyedSubscript:@"Province"];
                v34 = [(DDSMobileAssetv2Provider *)v54 shouldMatchAttributeValue:v32 givenValue:v33];

                v35 = [v28 objectForKeyedSubscript:@"City"];
                v36 = [v23 objectForKeyedSubscript:@"City"];
                v37 = [(DDSMobileAssetv2Provider *)v54 shouldMatchAttributeValue:v35 givenValue:v36];

                if (!v26 && v31)
                {
                  v26 = v34 && v37;
                }

                v38 = QueryLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138478083;
                  v65 = v23;
                  v66 = 1024;
                  v67 = v26;
                  _os_log_debug_impl(&dword_1DF7C6000, v38, OS_LOG_TYPE_DEBUG, "Found asset region: %{private}@ didMatch: %d", buf, 0x12u);
                }
              }

              v25 = [v53 countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v25);
          }

          else
          {
            v26 = 0;
          }

          v5 = v48;
          if (([v48 installedOnly] & 1) == 0)
          {
            v18 = v46;
            v16 = v47;
            v19 = v45;
            v21 = v51;
            i = v52;
            if (!v26)
            {
              continue;
            }

LABEL_38:
            v39 = [[DDSMAAsset alloc] initWithMAAsset:v21];
            [v18 addObject:v39];

            continue;
          }

          v18 = v46;
          v16 = v47;
          v19 = v45;
          v21 = v51;
          i = v52;
          if (!v26)
          {
            continue;
          }
        }

        else if (([v5 installedOnly] & 1) == 0)
        {
          goto LABEL_38;
        }

        if ([v21 state] == 2 || objc_msgSend(v21, "state") == 3)
        {
          goto LABEL_38;
        }
      }

      v50 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v50);
  }

  if ([v5 latestOnly])
  {
    v40 = [objc_opt_class() latestAssetsOnlyFromAssets:v18];
  }

  else
  {
    v40 = v18;
  }

  v41 = v40;

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (BOOL)shouldMatchAttributeValue:(id)a3 givenValue:(id)a4
{
  v5 = a3;
  v6 = DDSObjectsAreEqualOrNil(v5, a4);
  v7 = [v5 isEqualToString:&stru_1F5ABCB80];

  return (a4 == 0) & ((v5 != 0) | v7) | v6 & 1;
}

- (void)beginDownloadForAssertions:(id)a3 discretionaryDownload:(BOOL)a4
{
  v17 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = DefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v5 count];
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Begin download for %lu assertions", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&buf + 1) + 40) addObject:*(*(&v28 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v7 allObjects];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke;
        v18[3] = &unk_1E86C6370;
        v18[4] = self;
        p_buf = &buf;
        v21 = v26;
        v19 = v7;
        [(DDSMobileAssetv2Provider *)self beginDownloadForAssertion:v15 discretionaryDownload:v17 handler:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_1();
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(*(a1 + 48) + 8) + 40) removeObject:v5];
  v8 = [*(*(*(a1 + 48) + 8) + 40) count];
  if (v6)
  {
    v9 = *(*(a1 + 56) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v10 = UpdateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_2();
  }

  if (!v8)
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error updating assertions"];
      v12 = MEMORY[0x1E696ABC0];
      v13 = ErrorDomainv2;
      v18 = @"message";
      v19[0] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v12 errorWithDomain:v13 code:1 userInfo:v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = [*(a1 + 32) delegate];
    [v16 didCompleteDownloadForAssertions:*(a1 + 40) error:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) didCompleteDownloadForAssertion:v7 error:v5];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312(void *a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = DefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_1();
  }

  if ((a3 - 9) > 1)
  {
    if (a3 == 11)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v5 debuggingID];
      v10 = [v8 stringWithFormat:@"Error downloading asset: %@", v9];

      v11 = MEMORY[0x1E696ABC0];
      v12 = ErrorDomainv2;
      v18 = @"message";
      v19[0] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v14 = [v11 errorWithDomain:v12 code:1 userInfo:v13];

      v15 = a1[4];
      (*(a1[5] + 16))();

      goto LABEL_12;
    }
  }

  else
  {
    [*(*(a1[6] + 8) + 40) removeObject:v5];
    if ([*(*(a1[6] + 8) + 40) count])
    {
      v7 = DefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_2((a1 + 6));
      }
    }
  }

  if (![*(*(a1[6] + 8) + 40) count])
  {
    v16 = a1[4];
    (*(a1[5] + 16))();
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)startDownloadForAsset:(id)a3 withOptions:(id)a4 progress:(id)a5 handler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [a3 maAsset];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke;
  v17[3] = &unk_1E86C63E8;
  v18 = v9;
  v13 = v9;
  [v12 attachProgressCallBack:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke_2;
  v15[3] = &unk_1E86C6410;
  v16 = v10;
  v14 = v10;
  [v12 startDownload:v11 then:v15];
}

uint64_t __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __79__DDSMobileAssetv2Provider_startDownloadForAsset_withOptions_progress_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)beginDownloadForAssets:(id)a3 withPolicy:(id)a4 discretionaryDownload:(BOOL)a5 error:(id *)a6 handler:(id)a7
{
  v20 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [(DDSMobileAssetv2Provider *)self downloadOptionsForPolicy:v11 discretionaryDownload:v20];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke;
        v23[3] = &unk_1E86C6438;
        v23[4] = self;
        v23[5] = v17;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2;
        v21[3] = &unk_1E86C6460;
        v21[4] = v17;
        v21[5] = self;
        v22 = v12;
        [(DDSMobileAssetv2Provider *)self startDownloadForAsset:v17 withOptions:v18 progress:v23 handler:v21];
        [(DDSMobileAssetv2Provider *)self didChangeDownloadState:1 forAsset:v17];
      }

      v14 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isStalled])
  {
    v3 = 4;
  }

  else if ([v5 totalWritten] < 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v5 totalWritten];
    if (v4 >= [v5 totalExpected])
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }
  }

  [*(a1 + 32) didChangeDownloadState:v3 forAsset:*(a1 + 40)];
}

uint64_t __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 > 22)
  {
    if (a2 == 23 || a2 == 36)
    {
      v2 = 10;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a2)
    {
      v2 = 9;
      goto LABEL_12;
    }

    if (a2 == 10)
    {
      goto LABEL_12;
    }
  }

  v4 = DefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2_cold_1(a1, v2, v4);
  }

  v2 = 11;
LABEL_12:
  [*(a1 + 40) didChangeDownloadState:v2 forAsset:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), v2);
  }

  return result;
}

- (void)startCatalogDownloadForAssetType:(id)a3 withDownloadOptions:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69B18D8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__DDSMobileAssetv2Provider_startCatalogDownloadForAssetType_withDownloadOptions_withCompletion___block_invoke;
  v10[3] = &unk_1E86C6410;
  v11 = v7;
  v9 = v7;
  [v8 startCatalogDownload:a3 options:a4 then:v10];
}

uint64_t __96__DDSMobileAssetv2Provider_startCatalogDownloadForAssetType_withDownloadOptions_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __91__DDSMobileAssetv2Provider_updateCatalogForAssetType_discretionaryDownload_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = UpdateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Fail";
    if (!a2)
    {
      v5 = @"Success";
    }

    *buf = 138543618;
    v17 = v5;
    v18 = 2048;
    v19 = a2;
    _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Updated catalog result %{public}@ (result: %lu)", buf, 0x16u);
  }

  if (a2)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error updating catalog for %@: %lu", *(a1 + 32), a2];
    v7 = MEMORY[0x1E696ABC0];
    v8 = ErrorDomainv2;
    v14 = @"message";
    v15 = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:1 userInfo:v9];

    v11 = UpdateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __91__DDSMobileAssetv2Provider_updateCatalogForAssetType_discretionaryDownload_withCompletion___block_invoke_cold_1();
    }
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 40) didUpdateCatalogWithAssetType:*(a1 + 32) error:v10];
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)latestAssetsOnlyFromAssets:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          v14 = [objc_opt_class() latestBetweenAssetA:v13 AssetB:v10];
          [v4 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
          [v4 setObject:v10 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 allValues];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)latestBetweenAssetA:(id)a3 AssetB:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 compatibilityVersion];
  v8 = [v6 compatibilityVersion];
  v9 = v5;
  if (v7 <= v8)
  {
    v9 = v6;
    if (v8 <= v7)
    {
      v10 = [v5 contentVersion];
      v11 = [v6 contentVersion];
      if (v11 <= v10)
      {
        v12 = v5;
      }

      else
      {
        v12 = v6;
      }

      if (v10 <= v11)
      {
        v9 = v12;
      }

      else
      {
        v9 = v5;
      }
    }
  }

  v13 = v9;

  return v9;
}

- (void)removeAssetsForAssertions:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke;
  v3[3] = &unk_1E86C6488;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 query];
  v4 = [v3 copy];

  [v4 setInstalledOnly:1];
  [v4 setLocalOnly:1];
  [v4 setLatestOnly:0];
  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 assetsForQuery:v4 errorPtr:&v9];
  v7 = v9;
  if (v7)
  {
    v8 = UpdateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) removeAssets:v6];
  }
}

- (void)removeOldAssetsForAssertions:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Removing old assets for assertions: %{public}@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__DDSMobileAssetv2Provider_removeOldAssetsForAssertions___block_invoke;
  v7[3] = &unk_1E86C6488;
  v7[4] = self;
  [v4 enumerateObjectsUsingBlock:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __57__DDSMobileAssetv2Provider_removeOldAssetsForAssertions___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a2 query];
  v4 = [v3 copy];

  [v4 setInstalledOnly:1];
  [v4 setLocalOnly:1];
  [v4 setLatestOnly:0];
  v5 = *(a1 + 32);
  v21 = 0;
  v6 = [v5 assetsInCatalogForQuery:v4 errorPtr:&v21];
  v7 = v21;
  v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v9 = UpdateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [DDSAsset debuggingIDsForAssets:v6];
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "All assets being evaluated for removal: %{public}@", buf, 0xCu);
  }

  v11 = MEMORY[0x1E695DFD8];
  v12 = *(a1 + 32);
  v13 = [objc_opt_class() latestAssetsOnlyFromAssets:v6];
  v14 = [v11 setWithArray:v13];

  v15 = UpdateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 allObjects];
    v17 = [DDSAsset debuggingIDsForAssets:v16];
    *buf = 138543362;
    v23 = v17;
    _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Latest assets not eligible for removal: %{public}@", buf, 0xCu);
  }

  [v8 minusSet:v14];
  v18 = *(a1 + 32);
  v19 = [v8 allObjects];
  [v18 removeAssets:v19];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeAssets:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = UpdateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [DDSAsset debuggingIDsForAssets:v3];
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Removing assets: %{public}@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 maAsset];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __41__DDSMobileAssetv2Provider_removeAssets___block_invoke;
        v14[3] = &unk_1E86C64B0;
        v14[4] = v11;
        [v12 purge:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __41__DDSMobileAssetv2Provider_removeAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = DefaultLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__DDSMobileAssetv2Provider_removeAssets___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) debuggingID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Purged asset (%{public}@) successfully", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)serverDidUpdateAssetsWithType:(id)a3
{
  v4 = a3;
  v5 = [(DDSMobileAssetv2Provider *)self assetQueryResultsCache];
  [v5 clearCacheForAssetType:v4];
}

- (void)didChangeDownloadState:(unint64_t)a3 forAsset:(id)a4
{
  v16 = a4;
  v6 = [(DDSMobileAssetv2Provider *)self downloadStateByAssetID];
  v7 = [v16 uniqueIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  if (v9 != a3)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v11 = [(DDSMobileAssetv2Provider *)self downloadStateByAssetID];
    v12 = [v16 uniqueIdentifier];
    [v11 setObject:v10 forKeyedSubscript:v12];

    if (a3 - 9 <= 2)
    {
      v13 = [(DDSMobileAssetv2Provider *)self downloadStateByAssetID];
      v14 = [v16 uniqueIdentifier];
      [v13 removeObjectForKey:v14];
    }

    v15 = [(DDSMobileAssetv2Provider *)self delegate];
    [v15 didChangeDownloadState:a3 forAsset:v16];
  }
}

- (void)didCompleteDownloadForAssertion:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider didCompleteDownloadForAssertion:error:];
  }

  v9 = [(DDSMobileAssetv2Provider *)self delegate];
  [v9 didCompleteDownloadForAssertion:v6 error:v7];
}

- (void)didUpdateCatalogWithAssetType:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DDSMobileAssetv2Provider didUpdateCatalogWithAssetType:error:];
  }

  v9 = [(DDSMobileAssetv2Provider *)self delegate];
  [v9 didUpdateCatalogWithAssetType:v6 error:v7];
}

+ (id)platformVersion
{
  v2 = MGCopyAnswer();
  v3 = [v2 intValue];
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = v3 - 1;
  if (v3 - 1) < 0xB && ((0x52Fu >> v4))
  {
    return off_1E86C64D0[v4];
  }

  v6 = DefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[(DDSMobileAssetv2Provider *)v3];
  }

  return 0;
}

- (id)updatableAssetsForAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 query];
  v15 = 0;
  v6 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:v5 errorPtr:&v15];
  v7 = v15;

  v8 = [v4 query];

  v9 = [v8 copy];
  [v9 setInstalledOnly:1];
  [v9 setLocalOnly:1];
  [v9 setLatestOnly:0];
  v14 = 0;
  v10 = [(DDSMobileAssetv2Provider *)self assetsInCatalogForQuery:v9 errorPtr:&v14];
  v11 = [MEMORY[0x1E695DFA8] setWithArray:v6];
  v12 = [MEMORY[0x1E695DFA8] setWithArray:v10];
  [v11 minusSet:v12];

  return v11;
}

- (void)compatabilityVersionForAssetType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Missing compatibility version for asset type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)allContentItemsMatchingQuery:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, a2, a3, "assets query: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)assetsInCatalogForQuery:errorPtr:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Error for queryMetaDataSync: %{public}lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)assetsInCatalogForQuery:errorPtr:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [v0 results];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v2, v3, "assetsForQuery raw results: %{public}@, result value: %{public}lu", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)assetsInCatalogForQuery:errorPtr:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 filter];
  v2 = [v1 filters];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v3, v4, "Searching for regions in filters: %@, found allowed regions: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Encountered error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__DDSMobileAssetv2Provider_beginDownloadForAssertions_discretionaryDownload___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "Downloading assertions remaining: %lu", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)beginDownloadForAssertion:(void *)a1 discretionaryDownload:handler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 query];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [v0 debuggingID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v2, v3, "handling asset: %{public}@, state: %ld", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __84__DDSMobileAssetv2Provider_beginDownloadForAssertion_discretionaryDownload_handler___block_invoke_312_cold_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(*(*a1 + 8) + 40) count];
  v2 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1DF7C6000, v3, v4, "Remaining: %ld in set: %{public}@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void __98__DDSMobileAssetv2Provider_beginDownloadForAssets_withPolicy_discretionaryDownload_error_handler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_1DF7C6000, log, OS_LOG_TYPE_ERROR, "Unexpected error downloading asset %{public}@, result: %ld", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __91__DDSMobileAssetv2Provider_updateCatalogForAssetType_discretionaryDownload_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__DDSMobileAssetv2Provider_removeAssetsForAssertions___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [DDSAsset debuggingIDsForAssets:v0];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __41__DDSMobileAssetv2Provider_removeAssets___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) debuggingID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)didCompleteDownloadForAssertion:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "didCompleteDownloadForAssertion: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateCatalogWithAssetType:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_DEBUG, "didUpdateCatalogWithAssetType for asset type: %{public}@ error: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)platformVersion
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Unrecognized device class: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end