@interface BCSConfigResolver
- (id)initWithConfigCache:(void *)a3 cacheSkipper:(void *)a4 megashardFetchTrigger:(void *)a5 metricFactory:;
- (void)configItemWithType:(int64_t)a3 clientBundleID:(id)a4 cacheOnly:(BOOL)a5 metric:(id)a6 completion:(id)a7;
@end

@implementation BCSConfigResolver

- (id)initWithConfigCache:(void *)a3 cacheSkipper:(void *)a4 megashardFetchTrigger:(void *)a5 metricFactory:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = BCSConfigResolver;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      v15 = dispatch_queue_create("com.apple.businessservicesd.BCSConfigResolver", 0);
      v16 = a1[5];
      a1[5] = v15;
    }
  }

  return a1;
}

- (void)configItemWithType:(int64_t)a3 clientBundleID:(id)a4 cacheOnly:(BOOL)a5 metric:(id)a6 completion:(id)a7
{
  v8 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = a7;
  if (v12)
  {
    if (self)
    {
      if (([(BCSConfigCacheSkipping *)self->_configCacheSkipper shouldSkipCacheForConfigItemOfType:a3]& 1) != 0)
      {
        v13 = 0;
        goto LABEL_7;
      }

      configCache = self->_configCache;
    }

    else
    {
      v27 = [0 shouldSkipCacheForConfigItemOfType:a3];
      configCache = 0;
      v13 = 0;
      if (v27)
      {
LABEL_7:
        if ([v13 isExpired])
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = NSStringFromBCSType(a3);
            *buf = 136315394;
            v33 = "[BCSConfigResolver configItemWithType:clientBundleID:cacheOnly:metric:completion:]";
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "%s cached config item found but expired - type: %@ --> still using it but will download megashard in background with new config for later use", buf, 0x16u);
          }

          if (self)
          {
            serialDispatchQueue = self->_serialDispatchQueue;
          }

          else
          {
            serialDispatchQueue = 0;
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __83__BCSConfigResolver_configItemWithType_clientBundleID_cacheOnly_metric_completion___block_invoke;
          block[3] = &unk_278D38768;
          block[4] = self;
          block[5] = a3;
          dispatch_async(serialDispatchQueue, block);
        }

        if (v8)
        {
          if (!v13)
          {
            v22 = [BCSError errorWithDomain:@"com.apple.businessservices" code:47 errorDescription:@"Query is cache-only, skipping config fetch"];
            v12[2](v12, 0, v22);

            goto LABEL_26;
          }
        }

        else
        {
          if (self)
          {
            metricFactory = self->_metricFactory;
          }

          else
          {
            metricFactory = 0;
          }

          v19 = [(BCSMetricFactoryProtocol *)metricFactory measurementFactory];
          v20 = [v19 configCacheHitMeasurementForConfigType:a3];
          [v11 setCacheHitMeasurement:v20];

          v21 = [v11 cacheHitMeasurement];
          [v21 setFlag:v13 != 0];

          if (!v13)
          {
            v23 = ABSLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v26 = NSStringFromBCSType(a3);
              *buf = 136315394;
              v33 = "[BCSConfigResolver configItemWithType:clientBundleID:cacheOnly:metric:completion:]";
              v34 = 2112;
              v35 = v26;
              _os_log_error_impl(&dword_242072000, v23, OS_LOG_TYPE_ERROR, "%s config missing!!! - type: %@ --> blocking to download megashard from server", buf, 0x16u);
            }

            if (self)
            {
              megashardFetchTrigger = self->_megashardFetchTrigger;
            }

            else
            {
              megashardFetchTrigger = 0;
            }

            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __83__BCSConfigResolver_configItemWithType_clientBundleID_cacheOnly_metric_completion___block_invoke_4;
            v28[3] = &unk_278D38790;
            v30 = a3;
            v28[4] = self;
            v29 = v12;
            [(BCSFetchTrigger *)megashardFetchTrigger triggerFetchForReason:5 completion:v28];

            goto LABEL_26;
          }
        }

        (v12)[2](v12, v13, 0);
LABEL_26:

        goto LABEL_27;
      }
    }

    v13 = [(BCSConfigCaching *)configCache configItemForType:a3];
    goto LABEL_7;
  }

LABEL_27:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __83__BCSConfigResolver_configItemWithType_clientBundleID_cacheOnly_metric_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[3];
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__BCSConfigResolver_configItemWithType_clientBundleID_cacheOnly_metric_completion___block_invoke_2;
  v3[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
  v3[4] = *(a1 + 40);
  return [v1 triggerFetchForReason:2 completion:v3];
}

void __83__BCSConfigResolver_configItemWithType_clientBundleID_cacheOnly_metric_completion___block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromBCSType(*(a1 + 32));
    v7 = 136315650;
    v8 = "[BCSConfigResolver configItemWithType:clientBundleID:cacheOnly:metric:completion:]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "%s - Result of fetching megashards of type %@: %d", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __83__BCSConfigResolver_configItemWithType_clientBundleID_cacheOnly_metric_completion___block_invoke_4(void *a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ABSLogCommon();
  v7 = v6;
  if (!a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = NSStringFromBCSType(a1[6]);
    *buf = 136315650;
    v22 = "[BCSConfigResolver configItemWithType:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v5;
    v14 = "%s - Failed to fetch Config and Megashard of type %@ - Error: %@";
    v15 = v7;
    v16 = 32;
LABEL_16:
    _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);

    goto LABEL_11;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBCSType(a1[6]);
    *buf = 136315394;
    v22 = "[BCSConfigResolver configItemWithType:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Successfully fetched megashards of type %@", buf, 0x16u);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 configItemForType:a1[6]];
  if (v11)
  {
    v12 = v11;
    goto LABEL_14;
  }

  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = NSStringFromBCSType(a1[6]);
    *buf = 136315394;
    v22 = "[BCSConfigResolver configItemWithType:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
    v23 = 2112;
    v24 = v13;
    v14 = "%s - Successfully fetched megashard of type %@ but did not find config in cache";
    v15 = v7;
    v16 = 22;
    goto LABEL_16;
  }

LABEL_11:

  if (!v5)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = NSStringFromBCSType(a1[6]);
    v19 = [v17 stringWithFormat:@"Successfully fetched megashard of type %@ but did receive a valid config (nil)", v18];
    v5 = [BCSError errorWithDomain:@"com.apple.businessservices" code:46 errorDescription:v19];
  }

  v12 = 0;
LABEL_14:
  (*(a1[5] + 16))();

  v20 = *MEMORY[0x277D85DE8];
}

@end