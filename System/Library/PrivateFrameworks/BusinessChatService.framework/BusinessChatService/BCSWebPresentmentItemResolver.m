@interface BCSWebPresentmentItemResolver
- (id)cachedItemMatching:(id)a3;
- (id)initWithMetadataEnvironment:(void *)a3 permissionsEnvironment:(void *)a4 itemCache:(void *)a5 cacheSkipper:(void *)a6 metricFactory:;
- (void)_metadataMatching:(id)a3 metric:(id)a4 completion:(id)a5;
- (void)_permissionsMatching:(id)a3 metric:(id)a4 completion:(id)a5;
- (void)itemMatching:(id)a3 metric:(id)a4 completion:(id)a5;
@end

@implementation BCSWebPresentmentItemResolver

- (id)initWithMetadataEnvironment:(void *)a3 permissionsEnvironment:(void *)a4 itemCache:(void *)a5 cacheSkipper:(void *)a6 metricFactory:
{
  if (!a1)
  {
    return 0;
  }

  v11 = a6;
  v30 = a5;
  v12 = a5;
  obj = a4;
  v13 = a4;
  v33 = a3;
  v14 = a3;
  v32 = a2;
  v15 = a2;
  v16 = [[BCSRemoteFetchPIR alloc] initWithEnvironment:v15 metricFactory:v11];
  v17 = [[BCSRemoteFetchPIR alloc] initWithEnvironment:v14 metricFactory:v11];
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v16;
  v23 = v17;
  v24 = v11;
  v34.receiver = a1;
  v34.super_class = BCSWebPresentmentItemResolver;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(v25 + 1, obj);
    objc_storeStrong(v26 + 2, v30);
    objc_storeStrong(v26 + 3, a6);
    objc_storeStrong(v26 + 4, v16);
    objc_storeStrong(v26 + 5, v17);
    objc_storeStrong(v26 + 6, v32);
    objc_storeStrong(v26 + 7, v33);
  }

  v27 = v26;
  return v27;
}

- (id)cachedItemMatching:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 type] != 5 || !objc_msgSend(v4, "conformsToProtocol:", &unk_285466B38))
  {
    v9 = 0;
    goto LABEL_27;
  }

  v5 = v4;
  v6 = [v5 serverType];
  if ((v6 - 1) >= 2)
  {
    if (v6 == 3)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v21 = [v5 serverType];
        v22 = NSStringFromBCSType([v5 type]);
        v23 = 136315650;
        v24 = "[BCSWebPresentmentItemResolver cachedItemMatching:]";
        v25 = 2048;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "%s - Invalid server type (Logos (%ld)) for type: %@", &v23, 0x20u);
      }

      goto LABEL_25;
    }

    if (v6 == 4)
    {
      v7 = [(BCSWebPresentmentItemResolver *)self permissionsEnvironment];
      v8 = [v7 disableCaching];

      if (v8)
      {
        v9 = ABSLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = NSStringFromBCSType([v5 type]);
          v23 = 136315394;
          v24 = "[BCSWebPresentmentItemResolver cachedItemMatching:]";
          v25 = 2112;
          v26 = v10;
          v11 = "%s - Caching disabled for web presentment permissions type: %@";
LABEL_13:
          _os_log_debug_impl(&dword_242072000, v9, OS_LOG_TYPE_DEBUG, v11, &v23, 0x16u);
LABEL_22:

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

LABEL_14:
    v14 = [(BCSWebPresentmentItemResolver *)self itemCacheSkipper];
    v15 = [v14 shouldSkipCacheForItemOfType:{objc_msgSend(v5, "type")}];

    if (v15)
    {
      v9 = 0;
    }

    else
    {
      v16 = [(BCSWebPresentmentItemResolver *)self itemCache];
      v9 = [v16 itemMatching:v5];
    }

    if (![v9 isExpired]|| [v9 type]== 5)
    {
      goto LABEL_26;
    }

    v17 = ABSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromBCSType([v5 type]);
      v23 = 136315394;
      v24 = "[BCSWebPresentmentItemResolver cachedItemMatching:]";
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "%s - Cached item found but expired - type: %@ --> deleting", &v23, 0x16u);
    }

    v10 = [(BCSWebPresentmentItemResolver *)self itemCache];
    [v10 deleteItemMatching:v5];
    goto LABEL_22;
  }

  v12 = [(BCSWebPresentmentItemResolver *)self metadataEnvironment];
  v13 = [v12 disableCaching];

  if (!v13)
  {
    goto LABEL_14;
  }

  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromBCSType([v5 type]);
    v23 = 136315394;
    v24 = "[BCSWebPresentmentItemResolver cachedItemMatching:]";
    v25 = 2112;
    v26 = v10;
    v11 = "%s - Caching disabled for web presentment item type: %@";
    goto LABEL_13;
  }

LABEL_25:

  v9 = 0;
LABEL_26:

LABEL_27:
  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)itemMatching:(id)a3 metric:(id)a4 completion:(id)a5
{
  v49[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[BCSWebPresentmentItemResolver itemMatching:metric:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = [v8 itemIdentifier];
  v13 = [v12 type];

  if (v13 != 5)
  {
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"Invalid type";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v15 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v25];

    v10[2](v10, 0, v15);
    goto LABEL_9;
  }

  v14 = [v8 itemIdentifier];
  v15 = [(BCSWebPresentmentItemResolver *)self cachedItemMatching:v14];

  v16 = [(BCSWebPresentmentItemResolver *)self metricFactory];
  v17 = [v16 measurementFactory];
  v18 = [v8 itemIdentifier];
  v19 = [v17 itemCacheHitMeasurementForItemIdentifier:v18];
  [v9 setCacheHitMeasurement:v19];

  v20 = [v9 cacheHitMeasurement];
  [v20 setFlag:v15 != 0];

  v21 = ABSLogCommon();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v22)
    {
      v27 = [v8 itemIdentifier];
      v28 = NSStringFromBCSType([v27 type]);
      *buf = 136315394;
      v45 = "[BCSWebPresentmentItemResolver itemMatching:metric:completion:]";
      v46 = 2112;
      v47 = v28;
      _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s - Item not found in cache for - type: %@", buf, 0x16u);
    }

    if ([v8 cacheOnly])
    {
      v29 = ABSLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v8 itemIdentifier];
        v31 = NSStringFromBCSType([v30 type]);
        *buf = 136315394;
        v45 = "[BCSWebPresentmentItemResolver itemMatching:metric:completion:]";
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&dword_242072000, v29, OS_LOG_TYPE_DEFAULT, "%s - Query is cache-only, skipping fetch for item of type: %@", buf, 0x16u);
      }

      v32 = [BCSError errorWithDomain:@"com.apple.businessservices" code:47 errorDescription:@"Item not found in cache"];
    }

    else
    {
      v33 = [v8 itemIdentifier];
      v34 = [v33 conformsToProtocol:&unk_285466B38];

      if (v34)
      {
        v35 = [v8 itemIdentifier];
        v36 = [v35 serverType];
        if ((v36 - 1) >= 2)
        {
          if (v36 == 4)
          {
            [(BCSWebPresentmentItemResolver *)self _permissionsMatching:v8 metric:v9 completion:v10];
          }

          else
          {
            v42 = *MEMORY[0x277CCA450];
            v43 = @"Invalid identifier type";
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            v39 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v38];

            v10[2](v10, 0, v39);
          }
        }

        else
        {
          [(BCSWebPresentmentItemResolver *)self _metadataMatching:v8 metric:v9 completion:v10];
        }

        goto LABEL_25;
      }

      v40 = *MEMORY[0x277CCA450];
      v41 = @"Invalid identifier type";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v32 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v37];
    }

    v10[2](v10, 0, v32);

LABEL_25:
    v15 = 0;
    goto LABEL_9;
  }

  if (v22)
  {
    v23 = [v8 itemIdentifier];
    v24 = NSStringFromBCSType([v23 type]);
    *buf = 136315394;
    v45 = "[BCSWebPresentmentItemResolver itemMatching:metric:completion:]";
    v46 = 2112;
    v47 = v24;
    _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s - Item found in cache for - type: %@", buf, 0x16u);
  }

  (v10)[2](v10, v15, 0);
LABEL_9:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_metadataMatching:(id)a3 metric:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(BCSWebPresentmentItemResolver *)self metricFactory];
  v10 = [v9 measurementFactory];
  v11 = [v7 itemIdentifier];
  v12 = [v10 businessEmailFetchTimingMeasurementForItemIdentifier:v11];

  [v12 begin];
  v13 = [(BCSWebPresentmentItemResolver *)self pirFetchMetadata];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__BCSWebPresentmentItemResolver__metadataMatching_metric_completion___block_invoke;
  v17[3] = &unk_278D38C78;
  v18 = v12;
  v19 = v7;
  v20 = self;
  v21 = v8;
  v14 = v8;
  v15 = v7;
  v16 = v12;
  [v13 fetchDataMatching:v15 timeout:30000000000 completion:v17];
}

void __69__BCSWebPresentmentItemResolver__metadataMatching_metric_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (!v5)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 138412290;
      v35 = v9;
      v10 = "No match found in PIR for metadata of type: %@";
      v11 = v7;
      v12 = 12;
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_20;
  }

  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      v35 = "[BCSWebPresentmentItemResolver _metadataMatching:metric:completion:]_block_invoke";
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v6;
      v10 = "%s - Error fetching from PIR for metadata - type: %@, error: %@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [[BCSWebPresentmentParquetMessage alloc] initWithData:v5];
  v14 = v13;
  if (v13)
  {
    if (![(BCSWebPresentmentParquetMessage *)v13 hasItemTtl])
    {
      v15 = [*(a1 + 40) config];
      v16 = [v15 itemTTL];

      if (v16)
      {
        v17 = [*(a1 + 40) config];
        v18 = [v17 itemTTL];
        -[BCSWebPresentmentParquetMessage setItemTtl:](v14, "setItemTtl:", [v18 unsignedIntegerValue]);
      }
    }

    v19 = [[BCSWebPresentmentItem alloc] initWithMessage:v14 logoURL:0];
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{-[BCSWebPresentmentItem itemTTL](v19, "itemTTL")}];
    [(BCSItem *)v19 setExpirationDate:v20];

    v21 = [*(a1 + 48) itemCache];
    v22 = [*(a1 + 40) itemIdentifier];
    [v21 updateItem:v19 withItemIdentifier:v22];

    v23 = ABSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 40) itemIdentifier];
      v25 = NSStringFromBCSType([v24 type]);
      *buf = 136315394;
      v35 = "[BCSWebPresentmentItemResolver _metadataMatching:metric:completion:]_block_invoke";
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_242072000, v23, OS_LOG_TYPE_DEFAULT, "%s - Item successfully fetched from PIR for metadata - type: %@", buf, 0x16u);
    }

    v26 = *(*(a1 + 56) + 16);
  }

  else
  {
    v32 = *MEMORY[0x277CCA450];
    v33 = @"Failed to decode PIR record";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v27];

    v28 = ABSLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 40) itemIdentifier];
      v30 = NSStringFromBCSType([v29 type]);
      *buf = 136315650;
      v35 = "[BCSWebPresentmentItemResolver _metadataMatching:metric:completion:]_block_invoke";
      v36 = 2112;
      v37 = v30;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_242072000, v28, OS_LOG_TYPE_DEFAULT, "%s - Invalid message from PIR for metadata - type: %@, data: %@", buf, 0x20u);
    }

    v26 = *(*(a1 + 56) + 16);
  }

  v26();

LABEL_20:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_permissionsMatching:(id)a3 metric:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(BCSWebPresentmentItemResolver *)self metricFactory];
  v10 = [v9 measurementFactory];
  v11 = [v7 itemIdentifier];
  v12 = [v10 businessEmailFetchTimingMeasurementForItemIdentifier:v11];

  [v12 begin];
  v13 = [(BCSWebPresentmentItemResolver *)self pirFetchPermissions];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__BCSWebPresentmentItemResolver__permissionsMatching_metric_completion___block_invoke;
  v17[3] = &unk_278D38C78;
  v18 = v12;
  v19 = v7;
  v20 = self;
  v21 = v8;
  v14 = v8;
  v15 = v7;
  v16 = v12;
  [v13 fetchDataMatching:v15 timeout:30000000000 completion:v17];
}

void __72__BCSWebPresentmentItemResolver__permissionsMatching_metric_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (!v5)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 138412290;
      v37 = v9;
      v10 = "No match found in PIR for metadata of type: %@";
      v11 = v7;
      v12 = 12;
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_20;
  }

  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      v37 = "[BCSWebPresentmentItemResolver _permissionsMatching:metric:completion:]_block_invoke";
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v41 = v6;
      v10 = "%s - Error fetching from PIR for metadata - type: %@, error: %@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [*(a1 + 40) itemIdentifier];
  v14 = [BCSWebPresentmentPermissionsItem alloc];
  v15 = [v13 brandId];
  v16 = [(BCSWebPresentmentPermissionsItem *)v14 initWithBrandID:v15 data:v5];

  if (v16)
  {
    v17 = [*(a1 + 40) config];
    v18 = [v17 itemTTL];
    if (v18)
    {
      v19 = [*(a1 + 40) config];
      v20 = [v19 itemTTL];
      v21 = [v20 unsignedIntegerValue];
    }

    else
    {
      v21 = 86400.0;
    }

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v21];
    [(BCSItem *)v16 setExpirationDate:v27];

    v28 = [*(a1 + 48) itemCache];
    v29 = [*(a1 + 40) itemIdentifier];
    [v28 updateItem:v16 withItemIdentifier:v29];

    v30 = ABSLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 40) itemIdentifier];
      v32 = NSStringFromBCSType([v31 type]);
      *buf = 136315650;
      v37 = "[BCSWebPresentmentItemResolver _permissionsMatching:metric:completion:]_block_invoke";
      v38 = 2112;
      v39 = v32;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_242072000, v30, OS_LOG_TYPE_DEFAULT, "%s - Item fetched from PIR for metadata - type: %@, item: %@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v34 = *MEMORY[0x277CCA450];
    v35 = @"Failed to decode PIR record";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v23 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v22];

    v24 = ABSLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 40) itemIdentifier];
      v26 = NSStringFromBCSType([v25 type]);
      *buf = 136315650;
      v37 = "[BCSWebPresentmentItemResolver _permissionsMatching:metric:completion:]_block_invoke";
      v38 = 2112;
      v39 = v26;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_242072000, v24, OS_LOG_TYPE_DEFAULT, "%s - Invalid message from PIR for metadata - type: %@, data: %@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
}

@end