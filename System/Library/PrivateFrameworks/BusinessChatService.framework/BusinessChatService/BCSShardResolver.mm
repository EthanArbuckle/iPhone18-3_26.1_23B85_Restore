@interface BCSShardResolver
- (id)initWithShardCache:(void *)a3 cacheSkipper:(void *)a4 megashardFetchTrigger:(void *)a5 metricFactory:;
- (void)shardItemMatching:(id)a3 clientBundleID:(id)a4 cacheOnly:(BOOL)a5 metric:(id)a6 completion:(id)a7;
- (void)shardItemsMatching:(id)a3 metric:(id)a4 completion:(id)a5;
- (void)triggerMegashardFetchForShardType:(uint64_t)a3 reason:(void *)a4 completion:;
@end

@implementation BCSShardResolver

- (id)initWithShardCache:(void *)a3 cacheSkipper:(void *)a4 megashardFetchTrigger:(void *)a5 metricFactory:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = BCSShardResolver;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      v15 = dispatch_queue_create("com.apple.businessservicesd.BCSShardResolver", 0);
      v16 = a1[5];
      a1[5] = v15;
    }
  }

  return a1;
}

- (void)triggerMegashardFetchForShardType:(uint64_t)a3 reason:(void *)a4 completion:
{
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke;
    v10[3] = &unk_278D39E10;
    v10[4] = a1;
    v12 = a3;
    v13 = a2;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke_2;
  v4[3] = &unk_278D39DE8;
  v3 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 triggerFetchForReason:v3 completion:v4];
}

void __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ABSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBCSShardType(*(a1 + 40));
    v10 = 136315650;
    v11 = "[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:]_block_invoke_2";
    v12 = 2112;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Result of fetching megashards of type %@: %d", &v10, 0x1Cu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)shardItemsMatching:(id)a3 metric:(id)a4 completion:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v40 = a4;
  v38 = a5;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__5;
  v55 = __Block_byref_object_dispose__5;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = [v41 itemIdentifiers];
  v56 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  if (self)
  {
    shardCacheSkipper = self->_shardCacheSkipper;
  }

  else
  {
    shardCacheSkipper = 0;
  }

  v11 = shardCacheSkipper;
  v12 = [v41 shardType] - 2;
  if (v12 > 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = qword_2420E9270[v12];
  }

  v14 = [(BCSShardCacheSkipping *)v11 shouldSkipCacheForShardItemOfType:v13, v38];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = [v41 shardIdentifiers];
    v17 = [v16 countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (v17)
    {
      v18 = *v48;
      do
      {
        v19 = 0;
        do
        {
          if (*v48 != v18)
          {
            objc_enumerationMutation(v16);
          }

          if (self)
          {
            shardCache = self->_shardCache;
          }

          else
          {
            shardCache = 0;
          }

          v21 = *(*(&v47 + 1) + 8 * v19);
          v22 = shardCache;
          v23 = [(BCSShardCaching *)v22 shardItemMatching:v21];

          if (!v23 && [v52[5] count])
          {
            [v52[5] removeAllObjects];
            v15 = 0;
            goto LABEL_27;
          }

          if ([v23 isExpired])
          {
            v24 = ABSLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = NSStringFromBCSShardType([v21 type]);
              *buf = 136315394;
              v58 = "[BCSShardResolver shardItemsMatching:metric:completion:]";
              v59 = 2112;
              v60 = v25;
              _os_log_impl(&dword_242072000, v24, OS_LOG_TYPE_DEFAULT, "%s cached shard item found but expired - type: %@ --> will use expired shard but will attempt to download megashard from server in background", buf, 0x16u);
            }

            -[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:](self, [v21 type], 4, 0);
          }

          [v52[5] setObject:v23 forKeyedSubscript:v21];

          ++v19;
        }

        while (v17 != v19);
        v26 = [v16 countByEnumeratingWithState:&v47 objects:v61 count:16];
        v17 = v26;
      }

      while (v26);
    }

    v15 = 1;
LABEL_27:
  }

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v28 = metricFactory;
  v29 = [(BCSMetricFactoryProtocol *)v28 measurementFactory];
  v30 = [v41 shardIdentifiers];
  v31 = [v30 firstObject];
  v32 = [v29 shardCacheHitMeasurementForShardIdentifier:v31];
  [v40 setCacheHitMeasurement:v32];

  v33 = [v40 cacheHitMeasurement];
  [v33 setFlag:v15];

  if (v15 && [v52[5] count])
  {
    v39[2](v39, v52[5], 0);
  }

  else
  {
    v34 = ABSLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromBCSShardType([v41 shardType]);
      *buf = 136315394;
      v58 = "[BCSShardResolver shardItemsMatching:metric:completion:]";
      v59 = 2112;
      v60 = v37;
      _os_log_error_impl(&dword_242072000, v34, OS_LOG_TYPE_ERROR, "%s shard item missing!!! - type: %@ --> blocking to download megashard from server", buf, 0x16u);
    }

    v35 = [v41 shardType];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __57__BCSShardResolver_shardItemsMatching_metric_completion___block_invoke;
    v42[3] = &unk_278D39E38;
    v43 = v41;
    v44 = self;
    v46 = &v51;
    v45 = v39;
    [(BCSShardResolver *)self triggerMegashardFetchForShardType:v35 reason:5 completion:v42];
  }

  _Block_object_dispose(&v51, 8);

  v36 = *MEMORY[0x277D85DE8];
}

void __57__BCSShardResolver_shardItemsMatching_metric_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v21 = v5;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [*(a1 + 32) shardIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = *(v13 + 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = [v14 shardItemMatching:*(*(&v22 + 1) + 8 * v11)];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKeyedSubscript:v12];
          if (!v15)
          {
            v16 = ABSLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = NSStringFromBCSShardType([*(a1 + 32) shardType]);
              *buf = 136315394;
              v27 = "[BCSShardResolver shardItemsMatching:metric:completion:]_block_invoke";
              v28 = 2112;
              v29 = v17;
              _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s - Successfully fetched megashard of type %@ but did not find shard in cache", buf, 0x16u);
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v18 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        v9 = v18;
      }

      while (v18);
    }

    v6 = v21;
  }

  v19 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();

  v20 = *MEMORY[0x277D85DE8];
}

- (void)shardItemMatching:(id)a3 clientBundleID:(id)a4 cacheOnly:(BOOL)a5 metric:(id)a6 completion:(id)a7
{
  v9 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  if (self)
  {
    shardCacheSkipper = self->_shardCacheSkipper;
  }

  else
  {
    shardCacheSkipper = 0;
  }

  v14 = shardCacheSkipper;
  v15 = a6;
  v16 = [v11 type] - 2;
  if (v16 > 4)
  {
    v17 = 1;
  }

  else
  {
    v17 = qword_2420E9270[v16];
  }

  v18 = [(BCSShardCacheSkipping *)v14 shouldSkipCacheForShardItemOfType:v17];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    if (self)
    {
      shardCache = self->_shardCache;
    }

    else
    {
      shardCache = 0;
    }

    v19 = [(BCSShardCaching *)shardCache shardItemMatching:v11];
  }

  if ([v19 isExpired])
  {
    v21 = ABSLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromBCSShardType([v11 type]);
      *buf = 136315394;
      v40 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]";
      v41 = 2112;
      v42 = v22;
      _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s cached shard item found but expired - type: %@ --> will use expired shard but will attempt to download megashard from server in background", buf, 0x16u);
    }

    -[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:](self, [v11 type], 4, 0);
  }

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
  v26 = [v25 shardCacheHitMeasurementForShardIdentifier:v11];

  [v15 setCacheHitMeasurement:v26];
  v27 = [v15 cacheHitMeasurement];

  [v27 setFlag:v19 != 0];
  if (v19)
  {
    v12[2](v12, v19, 0);
  }

  else
  {
    v28 = ABSLogCommon();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v29)
      {
        v33 = NSStringFromBCSShardType([v11 type]);
        *buf = 136315394;
        v40 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]";
        v41 = 2112;
        v42 = v33;
        _os_log_error_impl(&dword_242072000, v28, OS_LOG_TYPE_ERROR, "%s shard item missing!!! - type: %@ --> triggering BACKGROUND download of megashard from server", buf, 0x16u);
      }

      -[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:](self, [v11 type], 5, &__block_literal_global_9);
      v30 = [BCSError errorWithDomain:@"com.apple.businessservices" code:47 errorDescription:@"Query is cache-only, skipping shard fetch"];
      (v12)[2](v12, 0, v30);
    }

    else
    {
      if (v29)
      {
        v34 = NSStringFromBCSShardType([v11 type]);
        *buf = 136315394;
        v40 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]";
        v41 = 2112;
        v42 = v34;
        _os_log_error_impl(&dword_242072000, v28, OS_LOG_TYPE_ERROR, "%s shard item missing!!! - type: %@ --> blocking to download megashard from server", buf, 0x16u);
      }

      v31 = [v11 type];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __81__BCSShardResolver_shardItemMatching_clientBundleID_cacheOnly_metric_completion___block_invoke_5;
      v35[3] = &unk_278D39E60;
      v36 = v11;
      v37 = self;
      v38 = v12;
      [(BCSShardResolver *)self triggerMegashardFetchForShardType:v31 reason:5 completion:v35];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __81__BCSShardResolver_shardItemMatching_clientBundleID_cacheOnly_metric_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ABSLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v7)
    {
      v12 = NSStringFromBCSShardType([*(a1 + 32) type]);
      v14 = 136315650;
      v15 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Failed to fetch Megashard of type %@ - Error: %@", &v14, 0x20u);
      goto LABEL_11;
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = NSStringFromBCSShardType([*(a1 + 32) type]);
    v14 = 136315394;
    v15 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Successfully fetched megashard of type %@", &v14, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 shardItemMatching:*(a1 + 32)];
  if (!v11)
  {
    v6 = ABSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromBCSShardType([*(a1 + 32) type]);
      v14 = 136315394;
      v15 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
      v16 = 2112;
      v17 = v12;
      _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "%s - Successfully fetched megashard of type %@ but did not find shard in cache", &v14, 0x16u);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

@end