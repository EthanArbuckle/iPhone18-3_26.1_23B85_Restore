@interface CDMAssetsDelegateHandler
- (BOOL)assetsAvailableForAssetSet:(id)set forLocale:(id)locale;
- (BOOL)assetsUnavailableForAssetSet:(id)set;
- (CDMAssetsDelegateHandler)initWithAssetsDelegate:(id)delegate forAssetSets:(id)sets withAssetAvailabilityType:(int64_t)type;
- (void)notifyDelegate;
@end

@implementation CDMAssetsDelegateHandler

- (void)notifyDelegate
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Start to notify assets delegate.", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = self->_assetSetNames;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v38;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v37 + 1) + 8 * v9);
        v12 = [(NSMutableDictionary *)self->_assetsAvailabilities objectForKey:v11, v37];

        if (!v12)
        {
          v7 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
            v43 = 2112;
            v44 = v11;
          }

          goto LABEL_20;
        }

        v7 = [(NSMutableDictionary *)self->_assetsAvailabilities valueForKey:v11];
        if (v10 && ([v10 isEqualToString:v7]& 1) == 0)
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
            v43 = 2112;
            v44 = v7;
            v45 = 2112;
            v46 = v11;
            v47 = 2112;
            v48 = v10;
          }

LABEL_20:
          v13 = 0;
          v7 = v10;
          goto LABEL_21;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v51 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v13 = 1;
  }

LABEL_21:

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    assetsAvailabilities = self->_assetsAvailabilities;
    *buf = 136315394;
    v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
    v43 = 2112;
    v44 = assetsAvailabilities;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Current assets availabilities status: %@.", buf, 0x16u);
  }

  if (v7)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = CDMOSLoggerForCategory(0);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v16 == 1)
  {
    if (v18)
    {
      assetSetNames = self->_assetSetNames;
      assetAvailabilityType = self->_assetAvailabilityType;
      *buf = 136316162;
      v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
      v43 = 2112;
      v44 = assetSetNames;
      v45 = 2112;
      v46 = v7;
      v47 = 2112;
      v48 = v7;
      v49 = 2048;
      v50 = assetAvailabilityType;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s All assets are available for assetSetNames: %@ for locale: %@. Call assets delegate's assetsAvailable for locale: %@  for assetAvailabilityType: %ld", buf, 0x34u);
    }

    delegate = self->_delegate;
    v22 = objc_opt_respondsToSelector();
    v23 = CDMOSLoggerForCategory(0);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v22)
    {
      if (v24)
      {
        *buf = 136315138;
        v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s Selector found for assetsAvailableForLocale:withType:", buf, 0xCu);
      }

      v25 = self->_delegate;
      v26 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
      [(CDMTrialAssetsDelegate *)v25 assetsAvailableForLocale:v26 withType:self->_assetAvailabilityType];
    }

    else
    {
      if (v24)
      {
        *buf = 136315138;
        v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s Selector not found for assetsAvailableForLocale:withType:", buf, 0xCu);
      }

      v33 = self->_delegate;
      v34 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
      [(CDMTrialAssetsDelegate *)v33 assetsAvailableForLocale:v34];
    }
  }

  else
  {
    if (v18)
    {
      v27 = self->_assetSetNames;
      v28 = self->_assetAvailabilityType;
      *buf = 136315650;
      v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
      v43 = 2112;
      v44 = v27;
      v45 = 2048;
      v46 = v28;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s Not all assets are available for assetSetNames: %@. Call assets delegate's assetsUnavailable for assetAvailabilityType: %ld", buf, 0x20u);
    }

    v29 = self->_delegate;
    v30 = objc_opt_respondsToSelector();
    v31 = CDMOSLoggerForCategory(0);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
    if (v30)
    {
      if (v32)
      {
        *buf = 136315138;
        v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v31, OS_LOG_TYPE_INFO, "%s Selector found for assetsUnavailableWithType:", buf, 0xCu);
      }

      [(CDMTrialAssetsDelegate *)self->_delegate assetsUnavailableWithType:self->_assetAvailabilityType];
    }

    else
    {
      if (v32)
      {
        *buf = 136315138;
        v42 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v31, OS_LOG_TYPE_INFO, "%s Selector not found for assetsUnavailableWithType:", buf, 0xCu);
      }

      [(CDMTrialAssetsDelegate *)self->_delegate assetsUnavailable];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)assetsUnavailableForAssetSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = [(NSArray *)self->_assetSetNames containsObject:setCopy];
  v6 = CDMOSLoggerForCategory(0);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "[CDMAssetsDelegateHandler assetsUnavailableForAssetSet:]";
      v13 = 2112;
      v14 = setCopy;
      _os_log_debug_impl(&dword_1DC287000, &v7->super.super, OS_LOG_TYPE_DEBUG, "%s Asset is unavailable for assetSetName: %@.", &v11, 0x16u);
    }

    v7 = self->_assetsAvailabilities;
    objc_sync_enter(v7);
    [(NSMutableDictionary *)self->_assetsAvailabilities removeObjectForKey:setCopy];
    [(CDMAssetsDelegateHandler *)self notifyDelegate];
    objc_sync_exit(v7);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    assetSetNames = self->_assetSetNames;
    v11 = 136315650;
    v12 = "[CDMAssetsDelegateHandler assetsUnavailableForAssetSet:]";
    v13 = 2112;
    v14 = setCopy;
    v15 = 2112;
    v16 = assetSetNames;
    _os_log_impl(&dword_1DC287000, &v7->super.super, OS_LOG_TYPE_INFO, "%s [WARN]: Not able to find assetSetName: %@ in assetSetName array: %@", &v11, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)assetsAvailableForAssetSet:(id)set forLocale:(id)locale
{
  v20 = *MEMORY[0x1E69E9840];
  setCopy = set;
  localeCopy = locale;
  v8 = [(NSArray *)self->_assetSetNames containsObject:setCopy];
  v9 = CDMOSLoggerForCategory(0);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "[CDMAssetsDelegateHandler assetsAvailableForAssetSet:forLocale:]";
      v16 = 2112;
      v17 = setCopy;
      v18 = 2112;
      v19 = localeCopy;
      _os_log_debug_impl(&dword_1DC287000, &v10->super.super, OS_LOG_TYPE_DEBUG, "%s Asset is available for assetSetName: %@ for locale: %@.", &v14, 0x20u);
    }

    v10 = self->_assetsAvailabilities;
    objc_sync_enter(v10);
    [(NSMutableDictionary *)self->_assetsAvailabilities setObject:localeCopy forKeyedSubscript:setCopy];
    [(CDMAssetsDelegateHandler *)self notifyDelegate];
    objc_sync_exit(v10);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    assetSetNames = self->_assetSetNames;
    v14 = 136315650;
    v15 = "[CDMAssetsDelegateHandler assetsAvailableForAssetSet:forLocale:]";
    v16 = 2112;
    v17 = setCopy;
    v18 = 2112;
    v19 = assetSetNames;
    _os_log_impl(&dword_1DC287000, &v10->super.super, OS_LOG_TYPE_INFO, "%s [WARN]: Not able to find assetSetName: %@ in assetSetName array: %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (CDMAssetsDelegateHandler)initWithAssetsDelegate:(id)delegate forAssetSets:(id)sets withAssetAvailabilityType:(int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  setsCopy = sets;
  v17.receiver = self;
  v17.super_class = CDMAssetsDelegateHandler;
  v11 = [(CDMAssetsDelegateHandler *)&v17 init];
  if (v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[CDMAssetsDelegateHandler initWithAssetsDelegate:forAssetSets:withAssetAvailabilityType:]";
      v20 = 2112;
      v21 = setsCopy;
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Initialize CDMAssetsDelegateHandler for assetSetNames: %@.", buf, 0x16u);
    }

    objc_storeStrong(&v11->_delegate, delegate);
    objc_storeStrong(&v11->_assetSetNames, sets);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetsAvailabilities = v11->_assetsAvailabilities;
    v11->_assetsAvailabilities = v13;

    v11->_assetAvailabilityType = type;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

@end