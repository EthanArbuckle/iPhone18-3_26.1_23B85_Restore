@interface BCSItemResolver
- (id)cachedItemMatching:(id)matching;
- (id)initWithItemCache:(void *)cache cacheSkipper:(void *)skipper remoteFetcher:(void *)fetcher metricFactory:;
- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion;
@end

@implementation BCSItemResolver

- (id)initWithItemCache:(void *)cache cacheSkipper:(void *)skipper remoteFetcher:(void *)fetcher metricFactory:
{
  v10 = a2;
  cacheCopy = cache;
  skipperCopy = skipper;
  fetcherCopy = fetcher;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = BCSItemResolver;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, cache);
      objc_storeStrong(self + 3, skipper);
      objc_storeStrong(self + 4, fetcher);
    }
  }

  return self;
}

- (id)cachedItemMatching:(id)matching
{
  v19 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if (self)
  {
    itemCacheSkipper = self->_itemCacheSkipper;
  }

  else
  {
    itemCacheSkipper = 0;
  }

  v6 = itemCacheSkipper;
  v7 = -[BCSItemCacheSkipping shouldSkipCacheForItemOfType:](v6, "shouldSkipCacheForItemOfType:", [matchingCopy type]);

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

    v8 = [(BCSItemCaching *)itemCache itemMatching:matchingCopy];
  }

  if ([v8 isExpired] && objc_msgSend(v8, "type") != 1)
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBCSType([matchingCopy type]);
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

    [(BCSItemCaching *)v12 deleteItemMatching:matchingCopy];

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  completionCopy = completion;
  metricCopy = metric;
  itemIdentifier = [matchingCopy itemIdentifier];
  config = [matchingCopy config];
  buckets = [config buckets];
  if (self)
  {
    if (0x7FFFFFFFFFFFFFFFLL / buckets <= 25)
    {
      v14 = 25;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL / buckets;
    }

    v15 = vcvtmd_s64_f64([itemIdentifier truncatedHash] / v14);
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
  v18 = matchingCopy;
  v37 = v18;
  v19 = completionCopy;
  v38 = v19;
  v20 = MEMORY[0x245D07100](v36);
  itemIdentifier2 = [v18 itemIdentifier];
  v22 = [(BCSItemResolver *)self cachedItemMatching:itemIdentifier2];

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v24 = metricFactory;
  measurementFactory = [(BCSMetricFactoryProtocol *)v24 measurementFactory];
  itemIdentifier3 = [v18 itemIdentifier];

  v27 = [measurementFactory itemCacheHitMeasurementForItemIdentifier:itemIdentifier3];
  [metricCopy setCacheHitMeasurement:v27];

  cacheHitMeasurement = [metricCopy cacheHitMeasurement];

  [cacheHitMeasurement setFlag:v22 != 0];
  v29 = ABSLogCommon();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v30)
    {
      itemIdentifier4 = [v18 itemIdentifier];
      v32 = NSStringFromBCSType([itemIdentifier4 type]);
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
      itemIdentifier5 = [v18 itemIdentifier];
      v34 = NSStringFromBCSType([itemIdentifier5 type]);
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