@interface CDMAssetsCache
+ (id)getAssetsFromUAFAssetSet:(id)a3;
+ (id)getHashKeyForAssetSetName:(id)a3 withUsages:(id)a4;
+ (id)initUAFAssetSetWithAssetSetName:(id)a3 andUsages:(id)a4;
+ (void)subscribeToAssetSet:(int64_t)a3 withUsages:(id)a4 forSubscriber:(id)a5 withSubscriptionName:(id)a6 withExpiration:(id)a7;
- (CDMAssetsCache)initWithValidateAssetSetHandler:(id)a3;
- (id)getCurrentAssetSetForAssetSetName:(int64_t)a3 withUsages:(id)a4;
- (void)markAssetSetValidated:(id)a3;
@end

@implementation CDMAssetsCache

- (void)markAssetSetValidated:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_validatedAssetSets;
  objc_sync_enter(v5);
  v6 = [CDMAssetsCache getNameFromUAFAssetSet:v4];
  v7 = [CDMAssetsCache getUsagesFromUAFAssetSet:v4];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "[CDMAssetsCache markAssetSetValidated:]";
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s AssetSetName: %@ and usages: %@ can not be nil.", &v15, 0x20u);
    }
  }

  else
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315906;
      v16 = "[CDMAssetsCache markAssetSetValidated:]";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Start to mark asset set %@ validated for assetSetName: %@ and usages: %@.", &v15, 0x2Au);
    }

    v10 = [CDMAssetsCache getHashKeyForAssetSetName:v6 withUsages:v8];
    [(NSMutableDictionary *)self->_validatedAssetSets setObject:v4 forKey:v10];
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315906;
      v16 = "[CDMAssetsCache markAssetSetValidated:]";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Marked asset set %@ validated for assetSetName: %@ and usages: %@", &v15, 0x2Au);
    }
  }

  objc_sync_exit(v5);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)getCurrentAssetSetForAssetSetName:(int64_t)a3 withUsages:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self->_validatedAssetSets;
  objc_sync_enter(v7);
  v8 = [CDMAssetsUtils cdmAssetSetToStr:a3];
  v9 = [v6 getUsages];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "[CDMAssetsCache getCurrentAssetSetForAssetSetName:withUsages:]";
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v10;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: AssetSetName and usagesDict cannot be nil - assetSetName: %@ and usages: %@.", buf, 0x20u);
    }
  }

  else
  {
    v12 = [CDMAssetsCache getHashKeyForAssetSetName:v8 withUsages:v9];
    v13 = self->_assetSetObservers;
    objc_sync_enter(v13);
    v14 = [(NSMutableDictionary *)self->_assetSetObservers objectForKey:v12];

    if (!v14)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__CDMAssetsCache_getCurrentAssetSetForAssetSetName_withUsages___block_invoke;
      aBlock[3] = &unk_1E862E6F8;
      aBlock[4] = self;
      v26 = v8;
      v28 = v26;
      v25 = v10;
      v29 = v25;
      v15 = _Block_copy(aBlock);
      v16 = [MEMORY[0x1E69DEEF0] sharedManager];
      v17 = [v16 observeAssetSet:v26 queue:0 handler:v15];

      if (v17)
      {
        v18 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v31 = "[CDMAssetsCache getCurrentAssetSetForAssetSetName:withUsages:]";
          v32 = 2112;
          v33 = v26;
          v34 = 2112;
          v35 = v25;
          _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Registered asset set observer for assetSetName: %@ and usages: %@", buf, 0x20u);
        }

        [(NSMutableDictionary *)self->_assetSetObservers setObject:v17 forKeyedSubscript:v12];
      }

      v15[2](v15);
    }

    objc_sync_exit(v13);

    v19 = [(NSMutableDictionary *)self->_validatedAssetSets objectForKey:v12];
    v20 = v19 == 0;

    if (!v20)
    {
      v21 = [(NSMutableDictionary *)self->_validatedAssetSets objectForKey:v12];
      goto LABEL_20;
    }

    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v31 = "[CDMAssetsCache getCurrentAssetSetForAssetSetName:withUsages:]";
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v10;
      _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s Validated asset set does not exist for assetSetName: %@ and usages: %@.", buf, 0x20u);
    }
  }

  v21 = 0;
LABEL_20:

  objc_sync_exit(v7);
  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

void __63__CDMAssetsCache_getCurrentAssetSetForAssetSetName_withUsages___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  v3 = [CDMAssetsCache initUAFAssetSetWithAssetSetName:*(a1 + 40) andUsages:*(a1 + 48)];
  if ((*(*(*(a1 + 32) + 8) + 16))())
  {
    [*(a1 + 32) markAssetSetValidated:v3];
  }

  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = 136315650;
    v9 = "[CDMAssetsCache getCurrentAssetSetForAssetSetName:withUsages:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Validation failed for assetSetName: %@ and usages: %@.", &v8, 0x20u);
  }

  objc_sync_exit(v2);
  v5 = *MEMORY[0x1E69E9840];
}

- (CDMAssetsCache)initWithValidateAssetSetHandler:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CDMAssetsCache;
  v5 = [(CDMAssetsCache *)&v13 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    validateAssetSetHandler = v5->_validateAssetSetHandler;
    v5->_validateAssetSetHandler = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    validatedAssetSets = v5->_validatedAssetSets;
    v5->_validatedAssetSets = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetObservers = v5->_assetSetObservers;
    v5->_assetSetObservers = v10;
  }

  return v5;
}

+ (id)initUAFAssetSetWithAssetSetName:(id)a3 andUsages:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = os_signpost_id_generate(CDMLogContext);
  v8 = CDMLogContext;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CDMAssetsCache", "init UAFAssetSet with assetSetName: %@ and usage: %@", &v16, 0x16u);
  }

  v10 = [MEMORY[0x1E69DEEF0] sharedManager];
  v11 = [v10 retrieveAssetSet:v5 usages:v6];

  v12 = CDMLogContext;
  v13 = v12;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_END, v7, "CDMAssetsCache", " enableTelemetry=YES ", &v16, 2u);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)getAssetsFromUAFAssetSet:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [CDMAssetsCache getNameFromUAFAssetSet:v3];
  v5 = [CDMAssetsCache getUsagesFromUAFAssetSet:v3];
  v6 = os_signpost_id_generate(CDMLogContext);
  v7 = CDMLogContext;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CDMAssetsCache", "assets from UAFAssetSet with assetSetName: %@ and usage: %@", &v14, 0x16u);
  }

  v9 = [v3 assets];
  v10 = CDMLogContext;
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v11, OS_SIGNPOST_INTERVAL_END, v6, "CDMAssetsCache", " enableTelemetry=YES ", &v14, 2u);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)subscribeToAssetSet:(int64_t)a3 withUsages:(id)a4 forSubscriber:(id)a5 withSubscriptionName:(id)a6 withExpiration:(id)a7
{
  v31[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [CDMAssetsUtils cdmAssetSetToStr:a3];
  v30 = v15;
  v16 = [v14 getUsages];

  v31[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];

  v18 = [objc_alloc(MEMORY[0x1E69DEEF8]) initWithName:v13 assetSets:v17 usageAliases:0 expires:v12];
  if (v18)
  {
    v19 = [MEMORY[0x1E69DEEF0] sharedManager];
    v25 = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __99__CDMAssetsCache_subscribeToAssetSet_withUsages_forSubscriber_withSubscriptionName_withExpiration___block_invoke;
    v23[3] = &unk_1E862F7B0;
    v24 = v17;
    [v19 subscribe:v11 subscriptions:v20 queue:0 completion:v23];

    v21 = v24;
  }

  else
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "+[CDMAssetsCache subscribeToAssetSet:withUsages:forSubscriber:withSubscriptionName:withExpiration:]";
      v28 = 2112;
      v29 = v17;
      _os_log_error_impl(&dword_1DC287000, v21, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to initialize UAFAssetSetSubscription subscription; aborting subscription for assetSetName: usage - %@ ", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __99__CDMAssetsCache_subscribeToAssetSet_withUsages_forSubscriber_withSubscriptionName_withExpiration___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315394;
      v7 = "+[CDMAssetsCache subscribeToAssetSet:withUsages:forSubscriber:withSubscriptionName:withExpiration:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: Creating subscription failed assetSetName: usage - %@ ", &v6, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)getHashKeyForAssetSetName:(id)a3 withUsages:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = v5;
  v7 = [MEMORY[0x1E696AD60] stringWithString:v5];
  v8 = [v6 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      v15 = v7;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        v17 = [v6 objectForKey:v16];
        v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@.%@.%@", v15, v16, v17];

        ++v14;
        v15 = v7;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v12);
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithString:v7];
  v19 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v28 = "+[CDMAssetsCache getHashKeyForAssetSetName:withUsages:]";
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Hash key for assetSetName: %@ and usages: %@ is %@", buf, 0x2Au);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

@end