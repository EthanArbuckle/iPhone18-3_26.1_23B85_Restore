@interface DDSAnalytics
+ (BOOL)isInteger:(id)a3;
+ (id)assetDownloadDurationBuckets;
+ (id)roundNumber:(id)a3 toSignificantDigits:(id)a4;
+ (id)sharedInstance;
- (DDSAnalytics)init;
- (id)bucketForValue:(id)a3 fromBuckets:(id)a4;
- (id)dumpAssetLogWithAssertions:(id)a3 installedAssets:(id)a4;
- (id)processName;
- (id)stringForAction:(int)a3;
- (void)cancelRecordingForAsset:(id)a3;
- (void)reportAssetDownloadAnalytic:(id)a3;
- (void)reportUpdateCycleAnalytic:(id)a3;
@end

@implementation DDSAnalytics

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[DDSAnalytics sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__DDSAnalytics_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(DDSAnalytics);

  return MEMORY[0x1EEE66BB8]();
}

- (DDSAnalytics)init
{
  v9.receiver = self;
  v9.super_class = DDSAnalytics;
  v2 = [(DDSAnalytics *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    analyticByIdentifier = v2->_analyticByIdentifier;
    v2->_analyticByIdentifier = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.DataDeliveryServices.DDSAnalytics", v5);
    analyticQueue = v2->_analyticQueue;
    v2->_analyticQueue = v6;
  }

  return v2;
}

- (void)cancelRecordingForAsset:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = DefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueIdentifier];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Cancel recording asset analytic for %@", buf, 0xCu);
  }

  v7 = [(DDSAnalytics *)self analyticQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__DDSAnalytics_cancelRecordingForAsset___block_invoke;
  v10[3] = &unk_1E86C5C70;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_sync(v7, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __40__DDSAnalytics_cancelRecordingForAsset___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) analyticByIdentifier];
  v2 = [*(a1 + 40) uniqueIdentifier];
  [v3 removeObjectForKey:v2];
}

void __43__DDSAnalytics_recordAssetAction_forAsset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticByIdentifier];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v6 = [v2 objectForKey:v3];

  if (!v6)
  {
    v6 = [[DDSAssetDownloadAnalytic alloc] initWithAsset:*(a1 + 40)];
    v4 = [*(a1 + 32) analyticByIdentifier];
    v5 = [*(a1 + 40) uniqueIdentifier];
    [v4 setObject:v6 forKey:v5];
  }

  [(DDSTimedAnalytic *)v6 updateWithAction:*(a1 + 48)];
  if ((*(a1 + 48) - 3) <= 1)
  {
    [*(a1 + 32) reportAssetDownloadAnalytic:v6];
  }
}

- (void)reportAssetDownloadAnalytic:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "durationInSec")}];
  v7 = [objc_opt_class() assetDownloadDurationBuckets];
  v8 = [(DDSAnalytics *)self bucketForValue:v6 fromBuckets:v7];

  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "durationInSec")}];
  v11 = [v9 roundNumber:v10 toSignificantDigits:&unk_1F5AC5A48];

  [v5 setObject:v11 forKey:@"aggDuration"];
  [v5 setObject:v8 forKey:@"duration"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "success")}];
  [v5 setObject:v12 forKey:@"success"];

  v13 = MEMORY[0x1E696AD98];
  v14 = [v4 asset];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "compatibilityVersion")}];
  [v5 setObject:v15 forKey:@"compatibilityVersion"];

  v16 = MEMORY[0x1E696AD98];
  v17 = [v4 asset];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "contentVersion")}];
  [v5 setObject:v18 forKey:@"contentVersion"];

  v19 = [v4 asset];
  v20 = [v19 uniqueIdentifier];
  [v5 setObject:v20 forKey:@"assetName"];

  v21 = [(DDSAnalytics *)self processName];
  [v5 setObject:v21 forKey:@"process"];

  v22 = DefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [(DDSAnalytics *)v5 reportAssetDownloadAnalytic:v22];
  }

  v23 = [@"com.apple.keyboard.dataDeliveryServices." stringByAppendingString:@"assetDownload"];
  v27 = v5;
  v24 = v5;
  AnalyticsSendEventLazy();

  v25 = [(DDSAnalytics *)self analyticByIdentifier];
  v26 = [v4 identifier];
  [v25 removeObjectForKey:v26];
}

- (void)reportUpdateCycleAnalytic:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "durationInSec")}];
  [v5 setObject:v6 forKey:@"duration"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "retries")}];
  [v5 setObject:v7 forKey:@"retries"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "success")}];
  [v5 setObject:v8 forKey:@"success"];

  v9 = [(DDSAnalytics *)self processName];
  [v5 setObject:v9 forKey:@"process"];

  v10 = DefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(DDSAnalytics *)v5 reportUpdateCycleAnalytic:v10];
  }

  v11 = [@"com.apple.keyboard.dataDeliveryServices." stringByAppendingString:@"updateCycle"];
  v15 = v5;
  v12 = v5;
  AnalyticsSendEventLazy();

  v13 = [(DDSAnalytics *)self analyticByIdentifier];
  v14 = [v4 identifier];
  [v13 removeObjectForKey:v14];
}

- (id)dumpAssetLogWithAssertions:(id)a3 installedAssets:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n"];
  if (DDS_IS_INTERNAL_INSTALL())
  {
    v25 = self;
    [v8 appendString:@"***********\n"];
    [v8 appendString:@"Assertions:\n"];
    [v8 appendString:@"***********\n"];
    [v8 appendString:@"***********************************"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v32 + 1) + 8 * i) dumpDescription];
          [v8 appendFormat:@"\n%@\n", v14];

          [v8 appendString:@"***********************************\n"];
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    [v8 appendString:@"\n\n"];
    [v8 appendString:@"*******************\n"];
    [v8 appendString:@"Installed Assets:\n"];
    [v8 appendString:@"*******************\n"];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * j);
          v21 = [v20 debuggingID];
          [v8 appendFormat:@"\n%@ (%lu)", v21, objc_msgSend(v20, "contentVersion")];
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    [v8 appendString:@"\n\n"];
    [v8 appendString:@"************\n"];
    [v8 appendString:@"In Progress:\n"];
    [v8 appendString:@"************\n"];
    v22 = [(DDSAnalytics *)v25 analyticByIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __59__DDSAnalytics_dumpAssetLogWithAssertions_installedAssets___block_invoke;
    v26[3] = &unk_1E86C62F0;
    v26[4] = v25;
    v27 = v8;
    [v22 enumerateKeysAndObjectsUsingBlock:v26];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

void __59__DDSAnalytics_dumpAssetLogWithAssertions_installedAssets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v11 asset];
    v6 = [v5 debuggingID];

    v4 = v6;
  }

  v7 = objc_alloc(MEMORY[0x1E695DF00]);
  [v11 startTime];
  v8 = [v7 initWithTimeIntervalSince1970:?];
  v9 = DDS_STRING_FROM_DATE(v8);
  v10 = [*(a1 + 32) stringForAction:{objc_msgSend(v11, "lastAction")}];
  [*(a1 + 40) appendFormat:@"\n%@, (start: %@, state: %@ retries: %lu)", v4, v9, v10, objc_msgSend(v11, "retries")];
}

+ (id)assetDownloadDurationBuckets
{
  if (assetDownloadDurationBuckets_onceToken != -1)
  {
    +[DDSAnalytics assetDownloadDurationBuckets];
  }

  v3 = assetDownloadDurationBuckets_sharedAssetDownloadDurationBuckets;

  return v3;
}

void __44__DDSAnalytics_assetDownloadDurationBuckets__block_invoke()
{
  v0 = assetDownloadDurationBuckets_sharedAssetDownloadDurationBuckets;
  assetDownloadDurationBuckets_sharedAssetDownloadDurationBuckets = &unk_1F5AC5AC0;
}

- (id)bucketForValue:(id)a3 fromBuckets:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__DDSAnalytics_bucketForValue_fromBuckets___block_invoke;
  v10[3] = &unk_1E86C6318;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __43__DDSAnalytics_bucketForValue_fromBuckets___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = a2;
  v8 = [*(a1 + 32) compare:*(*(*(a1 + 40) + 8) + 40)];

  *a4 = v8 != 1;
}

+ (id)roundNumber:(id)a3 toSignificantDigits:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v11 = v5;
    goto LABEL_11;
  }

  v7 = [objc_opt_class() isInteger:v5];
  [v5 doubleValue];
  if (v8 == 0.0)
  {
    v9 = MEMORY[0x1E696AD98];
    if (v7)
    {
      v10 = 0;
LABEL_8:
      v11 = [v9 numberWithInt:v10];
      goto LABEL_11;
    }

    v16 = 0.0;
  }

  else
  {
    v12 = v8;
    v13 = [v6 intValue];
    v14 = log10(fabs(v12));
    v15 = __exp10((v13 - vcvtpd_s64_f64(v14)));
    v16 = round(v12 * v15) / v15;
    v9 = MEMORY[0x1E696AD98];
    if (v7)
    {
      v10 = v16;
      goto LABEL_8;
    }
  }

  v11 = [v9 numberWithDouble:v16];
LABEL_11:
  v17 = v11;

  return v17;
}

+ (BOOL)isInteger:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v4 = CFGetTypeID(v3), v4 != CFBooleanGetTypeID()) && memchr("BcsilqCSILQ", *[v3 objCType], 0xCuLL) != 0;

  return v5;
}

- (id)processName
{
  if (processName_onceToken != -1)
  {
    [DDSAnalytics processName];
  }

  v3 = processName_processName;

  return v3;
}

void __27__DDSAnalytics_processName__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 processName];
  v1 = processName_processName;
  processName_processName = v0;
}

- (id)stringForAction:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E86C6338[a3];
  }
}

- (void)reportAssetDownloadAnalytic:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Report asset download analytic: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)reportUpdateCycleAnalytic:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Report update catalog analytic: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end