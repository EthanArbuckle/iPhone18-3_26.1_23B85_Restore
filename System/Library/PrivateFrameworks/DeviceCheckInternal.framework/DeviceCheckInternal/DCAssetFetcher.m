@interface DCAssetFetcher
+ (id)sharedFetcher;
- (id)_assetQuery;
- (id)_validateAsset:(id)a3 error:(id *)a4;
- (void)_fetchAssetWithContext:(id)a3 completionHandler:(id)a4;
- (void)_handleMissingMetadataWithContext:(id)a3 completion:(id)a4;
- (void)_handleSuccessForQuery:(id)a3 completion:(id)a4;
- (void)_queryMetadataWithContext:(id)a3 completion:(id)a4;
- (void)fetchPublicKeyAssetWithCompletion:(id)a3;
- (void)initiateMetadataFetchIgnoringCachesWithCompletion:(id)a3;
@end

@implementation DCAssetFetcher

+ (id)sharedFetcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DCAssetFetcher_sharedFetcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedFetcher_onceToken != -1)
  {
    dispatch_once(&sharedFetcher_onceToken, block);
  }

  v2 = sharedFetcher_sharedFetcher;

  return v2;
}

uint64_t __31__DCAssetFetcher_sharedFetcher__block_invoke(uint64_t a1)
{
  sharedFetcher_sharedFetcher = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)fetchPublicKeyAssetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DCAssetFetcherContext);
  [(DCAssetFetcherContext *)v5 setAllowCatalogRefresh:0];
  [(DCAssetFetcher *)self _fetchAssetWithContext:v5 completionHandler:v4];
}

- (void)initiateMetadataFetchIgnoringCachesWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v4 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_1[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_1[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 1024;
    v15 = 44;
    _os_log_impl(&dword_2488FB000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initiating an out of band catalog download", &v12, 0x12u);
  }

  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.DeviceCheck" then:&__block_literal_global_1];
  v3[2](v3, 1, 0);

  v11 = *MEMORY[0x277D85DE8];
}

void __68__DCAssetFetcher_initiateMetadataFetchIgnoringCachesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v3 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0;
    v5 = 0;
    v6 = 47;
    do
    {
      v7 = &aLibraryCachesC_1[v4];
      if (v6 == 47)
      {
        v5 = &aLibraryCachesC_1[v4];
      }

      v6 = v7[1];
      if (!v7[1])
      {
        break;
      }
    }

    while (v4++ < 0xFFF);
    if (v5)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v11 = 136315650;
    v12 = v9;
    v13 = 1024;
    v14 = 47;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_2488FB000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initiated an out of band catalog download completed. { result=%ld }", &v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAssetWithContext:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v16 = 136315650;
    v17 = v14;
    v18 = 1024;
    v19 = 63;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to fetch asset, querying metadata. { context=%@ }", &v16, 0x1Cu);
  }

  [(DCAssetFetcher *)self _queryMetadataWithContext:v6 completion:v7];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queryMetadataWithContext:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }

      v13 = v9++ >= 0xFFF;
    }

    while (!v13);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v25 = 136315650;
    v26 = v14;
    v27 = 1024;
    v28 = 68;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetching asset. { context=%@ }", &v25, 0x1Cu);
  }

  v15 = [(DCAssetFetcher *)self _assetQuery];
  v16 = [v15 queryMetaDataSync];
  if (([v6 ignoreCachedMetadata] & 1) != 0 || v16 == 2)
  {
    [(DCAssetFetcher *)self _handleMissingMetadataWithContext:v6 completion:v7];
  }

  else if (v16)
  {
    if (DCInternalLogSystem_onceToken_1 != -1)
    {
      [DCAssetFetcher _queryMetadataWithContext:completion:];
    }

    v17 = DCInternalLogSystem_log_1;
    if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_1[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_1[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }

        v13 = v18++ >= 0xFFF;
      }

      while (!v13);
      if (v19)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
      }

      v25 = 136315650;
      v26 = v22;
      v27 = 1024;
      v28 = 81;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to query metadata. { result=%ld }", &v25, 0x1Cu);
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3000 userInfo:0];
    v7[2](v7, 0, v23);
  }

  else
  {
    [(DCAssetFetcher *)self _handleSuccessForQuery:v15 completion:v7];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_assetQuery
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.DeviceCheck"];

  return v2;
}

- (void)_handleMissingMetadataWithContext:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }

      v13 = v9++ >= 0xFFF;
    }

    while (!v13);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    *buf = 136315394;
    v34 = v14;
    v35 = 1024;
    v36 = 92;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Query sync result indicated missing asset catalog.", buf, 0x12u);
  }

  if ([v6 allowCatalogRefresh])
  {
    [v6 setAllowCatalogRefresh:0];
    [v6 setIgnoreCachedMetadata:0];
    if (DCInternalLogSystem_onceToken_1 != -1)
    {
      [DCAssetFetcher _queryMetadataWithContext:completion:];
    }

    v15 = DCInternalLogSystem_log_1;
    if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v17 = 0;
      v18 = 47;
      do
      {
        v19 = &aLibraryCachesC_1[v16];
        if (v18 == 47)
        {
          v17 = &aLibraryCachesC_1[v16];
        }

        v18 = v19[1];
        if (!v19[1])
        {
          break;
        }

        v13 = v16++ >= 0xFFF;
      }

      while (!v13);
      if (v17)
      {
        v20 = v17 + 1;
      }

      else
      {
        v20 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
      }

      *buf = 136315394;
      v34 = v20;
      v35 = 1024;
      v36 = 100;
      _os_log_impl(&dword_2488FB000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to download catalog.", buf, 0x12u);
    }

    v21 = MEMORY[0x277D289C0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __63__DCAssetFetcher__handleMissingMetadataWithContext_completion___block_invoke;
    v30[3] = &unk_278F59C88;
    v32 = v7;
    v30[4] = self;
    v31 = v6;
    [v21 startCatalogDownload:@"com.apple.MobileAsset.DeviceCheck" then:v30];

    v22 = v32;
  }

  else
  {
    if (DCInternalLogSystem_onceToken_1 != -1)
    {
      [DCAssetFetcher _queryMetadataWithContext:completion:];
    }

    v23 = DCInternalLogSystem_log_1;
    if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_ERROR))
    {
      v24 = 0;
      v25 = 0;
      v26 = 47;
      do
      {
        v27 = &aLibraryCachesC_1[v24];
        if (v26 == 47)
        {
          v25 = &aLibraryCachesC_1[v24];
        }

        v26 = v27[1];
        if (!v27[1])
        {
          break;
        }

        v13 = v24++ >= 0xFFF;
      }

      while (!v13);
      if (v25)
      {
        v28 = v25 + 1;
      }

      else
      {
        v28 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
      }

      *buf = 136315394;
      v34 = v28;
      v35 = 1024;
      v36 = 110;
      _os_log_impl(&dword_2488FB000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch catalog, not allowed.", buf, 0x12u);
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3001 userInfo:0];
    (*(v7 + 2))(v7, 0, v22);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __63__DCAssetFetcher__handleMissingMetadataWithContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v4 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(DCInternalLogSystem_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_1[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_1[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v14 = 136315650;
    v15 = v10;
    v16 = 1024;
    v17 = 102;
    v18 = 2048;
    v19 = a2;
    _os_log_impl(&dword_2488FB000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Downloaded catalog. { result=%ld }", &v14, 0x1Cu);
  }

  if (a2)
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3001 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    [*(a1 + 32) _queryMetadataWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSuccessForQuery:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v8 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_1[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_1[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }

      v13 = v9++ >= 0xFFF;
    }

    while (!v13);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v15 = [v6 results];
    *buf = 136315650;
    v35 = v14;
    v36 = 1024;
    v37 = 116;
    v38 = 2048;
    v39 = [v15 count];
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Executed query successfully. { numResults=%lu }", buf, 0x1Cu);
  }

  v16 = [v6 results];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v6 results];
    v19 = [v18 count];

    if (v19 >= 2)
    {
      if (DCInternalLogSystem_onceToken_1 != -1)
      {
        [DCAssetFetcher _queryMetadataWithContext:completion:];
      }

      v20 = DCInternalLogSystem_log_1;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 0;
        v22 = 0;
        v23 = 47;
        do
        {
          v24 = &aLibraryCachesC_1[v21];
          if (v23 == 47)
          {
            v22 = &aLibraryCachesC_1[v21];
          }

          v23 = v24[1];
          if (!v24[1])
          {
            break;
          }

          v13 = v21++ >= 0xFFF;
        }

        while (!v13);
        if (v22)
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
        }

        v26 = [v6 results];
        v27 = [v26 count];
        *buf = 136315650;
        v35 = v25;
        v36 = 1024;
        v37 = 129;
        v38 = 2048;
        v39 = v27;
        _os_log_impl(&dword_2488FB000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected result count. { numResults=%lu }", buf, 0x1Cu);
      }
    }

    v28 = [v6 results];
    v29 = [v28 firstObject];

    v33 = 0;
    v30 = [(DCAssetFetcher *)self _validateAsset:v29 error:&v33];
    v31 = v33;
    v7[2](v7, v30, v31);
  }

  else
  {
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3100 userInfo:0];
    v7[2](v7, 0, v29);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_validateAsset:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (DCInternalLogSystem_onceToken_1 != -1)
  {
    [DCAssetFetcher initiateMetadataFetchIgnoringCachesWithCompletion:];
  }

  v6 = DCInternalLogSystem_log_1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    v8 = 0;
    v9 = 47;
    do
    {
      v10 = &aLibraryCachesC_1[v7];
      if (v9 == 47)
      {
        v8 = &aLibraryCachesC_1[v7];
      }

      v9 = v10[1];
      if (!v10[1])
      {
        break;
      }
    }

    while (v7++ < 0xFFF);
    if (v8)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Mobile Asset/DCAssetFetcher.m";
    }

    v13 = [v5 state];
    v14 = [v5 attributes];
    v19 = 136316162;
    v20 = v12;
    v21 = 1024;
    v22 = 139;
    v23 = 2112;
    v24 = v5;
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_2488FB000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to validate asset: { asset=%@, state=%ld, attributes=%@ }", &v19, 0x30u);
  }

  v15 = [DCAsset assetWithMobileAsset:v5];
  if (v15)
  {
    v16 = +[DCBGSTaskController sharedInstance];
    [v15 publicKeyRefreshInterval];
    [v16 updateTaskWithIdentifier:@"com.apple.devicecheck.notify" withRefreshInterval:?];
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.twobit.fetcherror" code:-3200 userInfo:0];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

@end