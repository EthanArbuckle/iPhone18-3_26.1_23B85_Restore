@interface CDMUAFClientManager
- (BOOL)shouldInitUAFAssetSetInSetupForLocale:(id)a3;
- (CDMUAFClientManager)initWithAssetSet:(id)a3 usages:(id)a4;
- (id)description;
- (id)getAssetSet;
- (id)getFactors;
- (id)getLocale;
- (void)initUAFAssetSet;
- (void)setAssetSet:(id)a3;
- (void)setLocale:(id)a3;
@end

@implementation CDMUAFClientManager

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[CDMUAFClientManager] - assetSetName: %@, Usages: %@.", v2->_assetSetName, v2->_usages];
  objc_sync_exit(v2);

  return v3;
}

- (id)getLocale
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [CDMAssetsUsages cdmAssetsUsageKeyToString:0];
  v4 = [CDMAssetsUsages cdmAssetsUsageKeyToString:3];
  v5 = [CDMAssetsUsages cdmAssetsUsageKeyToString:4];
  v6 = [(NSDictionary *)v2->_usages objectForKey:v3];

  usages = v2->_usages;
  if (v6)
  {
    v8 = v3;
LABEL_7:
    v11 = [(NSDictionary *)usages objectForKey:v8];
    goto LABEL_8;
  }

  v9 = [(NSDictionary *)usages objectForKey:v4];

  usages = v2->_usages;
  if (v9)
  {
    v8 = v4;
    goto LABEL_7;
  }

  v10 = [(NSDictionary *)usages objectForKey:v5];

  if (v10)
  {
    usages = v2->_usages;
    v8 = v5;
    goto LABEL_7;
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315138;
    v16 = "[CDMUAFClientManager getLocale]";
    _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Error fetching locale.", &v15, 0xCu);
  }

  v11 = 0;
LABEL_8:

  objc_sync_exit(v2);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)getFactors
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E69DEEF0] sharedManager];
  v4 = [v3 assetNamesForAssetSet:v2->_assetSetName usages:v2->_usages];

  objc_sync_exit(v2);

  return v4;
}

- (void)setAssetSet:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  assetSet = obj->_assetSet;
  obj->_assetSet = v4;

  objc_sync_exit(obj);
}

- (id)getAssetSet
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_assetSet;
  objc_sync_exit(v2);

  return v3;
}

- (void)initUAFAssetSet
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    assetSetName = v2->_assetSetName;
    v13 = 136315394;
    v14 = "[CDMUAFClientManager initUAFAssetSet]";
    v15 = 2112;
    v16 = assetSetName;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Start to init UAF client for AssetSet: %@.", &v13, 0x16u);
  }

  v4 = [MEMORY[0x1E69DEEF0] sharedManager];
  v5 = [v4 retrieveAssetSet:v2->_assetSetName usages:v2->_usages];
  assetSet = v2->_assetSet;
  v2->_assetSet = v5;

  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v2->_assetSet;
    v10 = v2->_assetSetName;
    usages = v2->_usages;
    v13 = 136315906;
    v14 = "[CDMUAFClientManager initUAFAssetSet]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = usages;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s uafClientManager.assetSetName %@ has new assetSet %@ has usages %@", &v13, 0x2Au);
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLocale:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CDMUAFClientManager *)v5 getLocale];

  if (v6 != v4)
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      usages = v5->_usages;
      *buf = 136315650;
      v36 = "[CDMUAFClientManager setLocale:]";
      v37 = 2112;
      v38 = usages;
      v39 = 2112;
      v40 = v4;
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Updating locale for usage: %@ to %@.", buf, 0x20u);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(NSDictionary *)v5->_usages keyEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = [(NSDictionary *)v5->_usages objectForKey:v13];
          [v8 setObject:v14 forKey:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    v15 = [CDMAssetsUsages cdmAssetsUsageKeyToString:0];
    v16 = [CDMAssetsUsages cdmAssetsUsageKeyToString:3];
    v17 = [CDMAssetsUsages cdmAssetsUsageKeyToString:4];
    v18 = [v8 objectForKey:v15];
    v19 = v18 == 0;

    v20 = v15;
    if (v19)
    {
      v21 = [v8 objectForKey:{v16, v15}];
      v22 = v21 == 0;

      if (!v22)
      {
        v23 = [CDMAssetsUtils extractAssetKeyFromLocale:v4];
        [v8 setObject:v23 forKey:v16];

        goto LABEL_15;
      }

      v27 = [v8 objectForKey:v17];
      v28 = v27 == 0;

      v20 = v17;
      if (v28)
      {
        goto LABEL_15;
      }
    }

    [v8 setObject:v4 forKey:v20];
LABEL_15:
    v24 = [v8 copy];
    v25 = v5->_usages;
    v5->_usages = v24;

    [(CDMUAFClientManager *)v5 initUAFAssetSet];
  }

  objc_sync_exit(v5);

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldInitUAFAssetSetInSetupForLocale:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v7 = os_signpost_id_generate(CDMLogContext);
  v8 = CDMLogContext;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    assetSetName = v5->_assetSetName;
    v23 = 138412290;
    v24 = assetSetName;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CDMUAFClientManager", "getAssets in shouldInitUAFAssetSetInSetup %@", &v23, 0xCu);
  }

  v11 = [(UAFAssetSet *)v5->_assetSet assets];

  v12 = CDMLogContext;
  v13 = v12;
  if (v7 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v12))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_END, v7, "CDMUAFClientManager", " enableTelemetry=YES ", &v23, 2u);
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    assetSet = v5->_assetSet;
    v20 = v5->_assetSetName;
    usages = v5->_usages;
    v23 = 136316162;
    v24 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = assetSet;
    v29 = 2112;
    v30 = usages;
    v31 = 2112;
    v32 = v11;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s uafClientManager.assetSetName %@ has assetSet %@ has usages %@ has assets %@", &v23, 0x34u);
  }

  if (!v5->_assetSet)
  {
    v15 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:
      v16 = 1;
      goto LABEL_18;
    }

    v23 = 136315138;
    v24 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    v17 = "%s assetSet does not exist. Asset cache miss. Return Yes";
LABEL_20:
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, v17, &v23, 0xCu);
    goto LABEL_17;
  }

  if (![v11 count])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v23 = 136315138;
    v24 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    v17 = "%s No assets exist in assetSet. Asset cache miss. Return Yes";
    goto LABEL_20;
  }

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v23 = 136315138;
    v24 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Asset cache hit. No need to get new assetSet in setup. Return No", &v23, 0xCu);
  }

  v16 = 0;
LABEL_18:

  objc_sync_exit(v5);
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (CDMUAFClientManager)initWithAssetSet:(id)a3 usages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMUAFClientManager;
  v9 = [(CDMUAFClientManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetSetName, a3);
    objc_storeStrong(&v10->_usages, a4);
  }

  return v10;
}

@end