@interface BCSItemResolver
- (id)cachedItemMatching:(id)a3;
- (id)initWithItemCache:(void *)a3 cacheSkipper:(void *)a4 remoteFetcher:(void *)a5 metricFactory:;
- (void)itemMatching:(id)a3 metric:(id)a4 completion:(id)a5;
@end

@implementation BCSItemResolver

- (id)initWithItemCache:(void *)a3 cacheSkipper:(void *)a4 remoteFetcher:(void *)a5 metricFactory:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = BCSItemResolver;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
    }
  }

  return a1;
}

- (id)cachedItemMatching:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    itemCacheSkipper = self->_itemCacheSkipper;
  }

  else
  {
    itemCacheSkipper = 0;
  }

  v6 = itemCacheSkipper;
  v7 = -[BCSItemCacheSkipping shouldSkipCacheForItemOfType:](v6, "shouldSkipCacheForItemOfType:", [v4 type]);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    if (self)
    {
      itemCache = self->_itemCache;
    }

    else
    {
      itemCache = 0;
    }

    v8 = [(BCSItemCaching *)itemCache itemMatching:v4];
  }

  if ([v8 isExpired] && objc_msgSend(v8, "type") != 1)
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBCSType([v4 type]);
      v15 = 136315394;
      v16 = "[BCSItemResolver cachedItemMatching:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s - Cached item found but expired - type: %@ --> deleting", &v15, 0x16u);
    }

    if (self)
    {
      v12 = self->_itemCache;
    }

    else
    {
      v12 = 0;
    }

    [(BCSItemCaching *)v12 deleteItemMatching:v4];

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)itemMatching:(id)a3 metric:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 itemIdentifier];
  v12 = [v8 config];
  v13 = [v12 buckets];
  if (self)
  {
    if (0x7FFFFFFFFFFFFFFFLL / v13 <= 25)
    {
      v14 = 25;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL / v13;
    }

    v15 = vcvtmd_s64_f64([v11 truncatedHash] / v14);
    v16 = v14 * v15;
    v17 = v14 * (v15 + 1);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __50__BCSItemResolver_itemMatching_metric_completion___block_invoke;
  v36[3] = &unk_278D38980;
  v36[4] = self;
  v39 = v16;
  v40 = v17;
  v18 = v8;
  v37 = v18;
  v19 = v9;
  v38 = v19;
  v20 = MEMORY[0x245D07100](v36);
  v21 = [v18 itemIdentifier];
  v22 = [(BCSItemResolver *)self cachedItemMatching:v21];

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v24 = metricFactory;
  v25 = [(BCSMetricFactoryProtocol *)v24 measurementFactory];
  v26 = [v18 itemIdentifier];

  v27 = [v25 itemCacheHitMeasurementForItemIdentifier:v26];
  [v10 setCacheHitMeasurement:v27];

  v28 = [v10 cacheHitMeasurement];

  [v28 setFlag:v22 != 0];
  v29 = ABSLogCommon();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v30)
    {
      v31 = [v18 itemIdentifier];
      v32 = NSStringFromBCSType([v31 type]);
      *buf = 136315394;
      v42 = "[BCSItemResolver itemMatching:metric:completion:]";
      v43 = 2112;
      v44 = v32;
      _os_log_impl(&dword_242072000, v29, OS_LOG_TYPE_DEFAULT, "%s - Item found in cache for - type: %@", buf, 0x16u);
    }

    (*(v19 + 2))(v19, v22, 0);
  }

  else
  {
    if (v30)
    {
      v33 = [v18 itemIdentifier];
      v34 = NSStringFromBCSType([v33 type]);
      *buf = 136315394;
      v42 = "[BCSItemResolver itemMatching:metric:completion:]";
      v43 = 2112;
      v44 = v34;
      _os_log_impl(&dword_242072000, v29, OS_LOG_TYPE_DEFAULT, "%s - Item not found in cache for - type: %@", buf, 0x16u);
    }

    v20[2](v20);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __50__BCSItemResolver_itemMatching_metric_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = [v5 itemIdentifier];
  v8 = [v7 type];
  v9 = [*(a1 + 40) clientBundleId];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__BCSItemResolver_itemMatching_metric_completion___block_invoke_2;
  v11[3] = &unk_278D38958;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  v13 = *(a1 + 48);
  [v6 fetchItemsWithBucketStartIndex:v3 endIndex:v4 type:v8 forClientBundleID:v9 completion:v11];
}

void __50__BCSItemResolver_itemMatching_metric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v46 = v6;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Error remote fetching buckets for - type: %@ - %@", buf, 0x20u);
    }

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) itemIdentifier];
  v14 = v5;
  v15 = v13;
  v16 = v15;
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy_;
    v47 = __Block_byref_object_dispose_;
    v48 = 0;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __47__BCSItemResolver__firstItemInBucket_matching___block_invoke;
    v42 = &unk_278D389A8;
    v43 = v15;
    v44 = buf;
    [v14 enumerateObjectsUsingBlock:&v39];
    v10 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = 0;
  }

  v7 = ABSLogCommon();
  v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v17)
    {
      v35 = [*(a1 + 40) itemIdentifier];
      v36 = NSStringFromBCSType([v35 type]);
      *buf = 136315394;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v36;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Failed to find matching item in bucket - type: %@", buf, 0x16u);
    }

    goto LABEL_4;
  }

  if (v17)
  {
    v18 = [*(a1 + 40) itemIdentifier];
    v19 = NSStringFromBCSType([v18 type]);
    *buf = 136315394;
    *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke_2";
    *&buf[12] = 2112;
    *&buf[14] = v19;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Successfully found matching item in bucket - type: %@", buf, 0x16u);
  }

  v20 = [*(a1 + 40) config];
  v21 = [v20 itemTTL];
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = [*(a1 + 40) config];
  v23 = [v22 itemTTL];
  [v23 doubleValue];
  v25 = v24 > 0.0;

  if (v25)
  {
    v26 = MEMORY[0x277CBEAA8];
    v27 = [*(a1 + 40) config];
    v28 = [v27 itemTTL];
    [v28 doubleValue];
    v20 = [v26 dateWithTimeIntervalSinceNow:?];

    [v10 setExpirationDate:v20];
LABEL_14:
  }

  if ([v10 isExpired] && objc_msgSend(v10, "type") != 1)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [*(a1 + 40) itemIdentifier];
      v38 = NSStringFromBCSType([v37 type]);
      *buf = 136315394;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Not caching matching item because it is already expired - type: %@", buf, 0x16u);
    }
  }

  else
  {
    v29 = ABSLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*(a1 + 40) itemIdentifier];
      v31 = NSStringFromBCSType([v30 type]);
      *buf = 136315394;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&dword_242072000, v29, OS_LOG_TYPE_DEFAULT, "%s - Caching matching item - type: %@", buf, 0x16u);
    }

    v32 = *(a1 + 32);
    if (v32)
    {
      v32 = v32[1];
    }

    v33 = *(a1 + 40);
    v34 = v32;
    v7 = [v33 itemIdentifier];
    [v34 updateItem:v10 withItemIdentifier:v7];
  }

LABEL_5:

  (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

void __47__BCSItemResolver__firstItemInBucket_matching___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 matchesItemIdentifying:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end