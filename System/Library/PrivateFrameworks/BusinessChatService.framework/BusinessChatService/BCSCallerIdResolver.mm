@interface BCSCallerIdResolver
- (id)cachedItemMatching:(id)matching;
- (id)initWithEnvironment:(void *)environment itemCache:(void *)cache cacheSkipper:(void *)skipper metricFactory:;
- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion;
@end

@implementation BCSCallerIdResolver

- (id)initWithEnvironment:(void *)environment itemCache:(void *)cache cacheSkipper:(void *)skipper metricFactory:
{
  v10 = a2;
  environmentCopy = environment;
  cacheCopy = cache;
  skipperCopy = skipper;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = BCSCallerIdResolver;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, environment);
      objc_storeStrong(self + 3, cache);
      objc_storeStrong(self + 4, skipper);
      v15 = [[BCSRemoteFetchPIR alloc] initWithEnvironment:v10 metricFactory:skipperCopy];
      v16 = self[5];
      self[5] = v15;
    }
  }

  return self;
}

- (id)cachedItemMatching:(id)matching
{
  v18 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if ([matchingCopy type] == 3)
  {
    itemCacheSkipper = [(BCSCallerIdResolver *)self itemCacheSkipper];
    v6 = [itemCacheSkipper shouldSkipCacheForItemOfType:{objc_msgSend(matchingCopy, "type")}];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      itemCache = [(BCSCallerIdResolver *)self itemCache];
      v7 = [itemCache itemMatching:matchingCopy];
    }

    if (![v7 isExpired] || objc_msgSend(v7, "type") == 3)
    {
      goto LABEL_11;
    }

    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBCSType([matchingCopy type]);
      v14 = 136315394;
      v15 = "[BCSCallerIdResolver cachedItemMatching:]";
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s - Cached item found but expired - type: %@ --> deleting", &v14, 0x16u);
    }

    itemCache2 = [(BCSCallerIdResolver *)self itemCache];
    [itemCache2 deleteItemMatching:matchingCopy];
  }

  v7 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion
{
  v44[1] = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  metricCopy = metric;
  completionCopy = completion;
  itemIdentifier = [matchingCopy itemIdentifier];
  type = [itemIdentifier type];

  if (type == 3)
  {
    itemIdentifier2 = [matchingCopy itemIdentifier];
    v14 = [(BCSCallerIdResolver *)self cachedItemMatching:itemIdentifier2];

    metricFactory = [(BCSCallerIdResolver *)self metricFactory];
    measurementFactory = [metricFactory measurementFactory];
    itemIdentifier3 = [matchingCopy itemIdentifier];
    v18 = [measurementFactory itemCacheHitMeasurementForItemIdentifier:itemIdentifier3];
    [metricCopy setCacheHitMeasurement:v18];

    cacheHitMeasurement = [metricCopy cacheHitMeasurement];
    [cacheHitMeasurement setFlag:v14 != 0];

    v20 = ABSLogCommon();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v21)
      {
        itemIdentifier4 = [matchingCopy itemIdentifier];
        v23 = NSStringFromBCSType([itemIdentifier4 type]);
        *buf = 136315394;
        v40 = "[BCSCallerIdResolver itemMatching:metric:completion:]";
        v41 = 2112;
        v42 = v23;
        _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "%s - Item found in cache for - type: %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, v14, 0);
    }

    else
    {
      if (v21)
      {
        itemIdentifier5 = [matchingCopy itemIdentifier];
        v27 = NSStringFromBCSType([itemIdentifier5 type]);
        *buf = 136315394;
        v40 = "[BCSCallerIdResolver itemMatching:metric:completion:]";
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "%s - Item not found in cache for - type: %@", buf, 0x16u);
      }

      metricFactory2 = [(BCSCallerIdResolver *)self metricFactory];
      measurementFactory2 = [metricFactory2 measurementFactory];
      itemIdentifier6 = [matchingCopy itemIdentifier];
      v31 = [measurementFactory2 businessCallerFetchTimingMeasurementForItemIdentifier:itemIdentifier6];

      [v31 begin];
      pirFetch = [(BCSCallerIdResolver *)self pirFetch];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __54__BCSCallerIdResolver_itemMatching_metric_completion___block_invoke;
      v34[3] = &unk_278D38C78;
      v35 = v31;
      v36 = matchingCopy;
      selfCopy = self;
      v38 = completionCopy;
      v33 = v31;
      [pirFetch fetchDataMatching:v36 timeout:30000000000 completion:v34];

      v14 = 0;
    }
  }

  else
  {
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"Invalid type";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v14 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v24];

    (completionCopy)[2](completionCopy, 0, v14);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __54__BCSCallerIdResolver_itemMatching_metric_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
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
      v29 = v9;
      v10 = "No match found in PIR for type: %@";
      v11 = v7;
      v12 = 12;
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_17;
  }

  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      v29 = "[BCSCallerIdResolver itemMatching:metric:completion:]_block_invoke";
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v6;
      v10 = "%s - Error fetching from PIR for - type: %@, error: %@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [[BCSCallerIdParquetMessage alloc] initWithData:v5];
  if (v13)
  {
    v14 = [[BCSBusinessCallerItem alloc] initWithParquetMessage:v13];
    v15 = [*(a1 + 48) itemCache];
    v16 = [*(a1 + 40) itemIdentifier];
    [v15 updateItem:v14 withItemIdentifier:v16];

    v17 = ABSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 40) itemIdentifier];
      v19 = NSStringFromBCSType([v18 type]);
      *buf = 136315650;
      v29 = "[BCSCallerIdResolver itemMatching:metric:completion:]_block_invoke";
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "%s - Item fetched from PIR for - type: %@, item: %@", buf, 0x20u);
    }

    v20 = *(*(a1 + 56) + 16);
  }

  else
  {
    v26 = *MEMORY[0x277CCA450];
    v27 = @"Failed to decode PIR record";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v21];

    v22 = ABSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 40) itemIdentifier];
      v24 = NSStringFromBCSType([v23 type]);
      *buf = 136315650;
      v29 = "[BCSCallerIdResolver itemMatching:metric:completion:]_block_invoke";
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "%s - Invalid message from PIR for - type: %@, data: %@", buf, 0x20u);
    }

    v20 = *(*(a1 + 56) + 16);
  }

  v20();

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
}

@end