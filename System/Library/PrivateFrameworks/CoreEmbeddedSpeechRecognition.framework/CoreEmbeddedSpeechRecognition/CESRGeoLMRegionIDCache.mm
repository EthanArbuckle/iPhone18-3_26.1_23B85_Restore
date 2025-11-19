@interface CESRGeoLMRegionIDCache
+ (id)sharedInstance;
- (CESRGeoLMRegionIDCache)init;
- (CESRGeoLMRegionIDCache)initWithUserDefaults:(id)a3;
- (id)_geoLMAssetsInfoDictForLanguage:(id)a3;
- (id)_userDefaultsGeoLMAssetsInfoDictKeyForLanguage:(id)a3;
- (id)lastUsedGeoLMRegionIdForLanguage:(id)a3;
- (id)purgeUnusedGeoLMRegionIdFromCacheForLanguage:(id)a3;
- (void)_updateUserDefaultsWithGeoLMAssetsInfoDict:(id)a3 language:(id)a4;
- (void)purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:(id)a3;
- (void)updateGeoLMAssetsInfoDictWithRegionId:(id)a3 language:(id)a4;
@end

@implementation CESRGeoLMRegionIDCache

- (id)_userDefaultsGeoLMAssetsInfoDictKeyForLanguage:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v4 = [@"GeoLMAssetsInfo" stringByAppendingString:@"."];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

- (void)_updateUserDefaultsWithGeoLMAssetsInfoDict:(id)a3 language:(id)a4
{
  userDefaults = self->_userDefaults;
  v7 = a3;
  v8 = [(CESRGeoLMRegionIDCache *)self _userDefaultsGeoLMAssetsInfoDictKeyForLanguage:a4];
  [(NSUserDefaults *)userDefaults setObject:v7 forKey:v8];
}

- (id)_geoLMAssetsInfoDictForLanguage:(id)a3
{
  userDefaults = self->_userDefaults;
  v4 = [(CESRGeoLMRegionIDCache *)self _userDefaultsGeoLMAssetsInfoDictKeyForLanguage:a3];
  v5 = [(NSUserDefaults *)userDefaults dictionaryForKey:v4];

  return v5;
}

- (void)purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    v9 = MEMORY[0x277CEF0E8];
    *&v6 = 136315394;
    v14 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(CESRGeoLMRegionIDCache *)self _userDefaultsGeoLMAssetsInfoDictKeyForLanguage:*(*(&v15 + 1) + 8 * v10), v14];
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          v20 = "[CESRGeoLMRegionIDCache purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:]";
          v21 = 2112;
          v22 = v11;
          _os_log_debug_impl(&dword_225EEB000, v12, OS_LOG_TYPE_DEBUG, "%s GeoLM: Going to delete: %@", buf, 0x16u);
        }

        [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v11];

        ++v10;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)lastUsedGeoLMRegionIdForLanguage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CESRGeoLMRegionIDCache *)self _geoLMAssetsInfoDictForLanguage:v4];
  if ([v5 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:{v13, v23}];
          v15 = v14;
          if (v10 | v9)
          {
            if (v14 && [v14 compare:v9] == 1)
            {
              v16 = v13;

              v17 = v15;
              v9 = v17;
              v10 = v16;
            }
          }

          else
          {
            v10 = v13;
            v9 = v15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v19 = v10;
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v28 = "[CESRGeoLMRegionIDCache lastUsedGeoLMRegionIdForLanguage:]";
      v29 = 2112;
      v30 = v19;
      _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s GeoLM: Last used GeoLM regionId: %@", buf, 0x16u);
    }
  }

  else
  {
    v18 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v28 = "[CESRGeoLMRegionIDCache lastUsedGeoLMRegionIdForLanguage:]";
      _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s GeoLM: No history of GeoLM usage. regionId: nil", buf, 0xCu);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)purgeUnusedGeoLMRegionIdFromCacheForLanguage:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _AFPreferencesBoolValueForKeyWithContext();
  v6 = [(CESRGeoLMRegionIDCache *)self _geoLMAssetsInfoDictForLanguage:v4];
  v7 = [v6 mutableCopy];

  v8 = [v7 count];
  v9 = v8;
  if (v5)
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v40 = "[CESRGeoLMRegionIDCache purgeUnusedGeoLMRegionIdFromCacheForLanguage:]";
      v41 = 2048;
      v42 = v9;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s GeoLM: GeoLM region specific assets deletion is disabled, number of regionIds used till now: %ld", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (v8 < 2)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_26;
  }

  v34 = v8;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
  v32 = self;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = [v12 objectForKeyedSubscript:{v19, v32}];
        v21 = v20;
        if (v16 | v15)
        {
          if ([v20 compare:v15] == -1)
          {
            v22 = v19;

            v23 = v21;
            v15 = v23;
            v16 = v22;
          }
        }

        else
        {
          v16 = v19;
          v15 = v21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v11 = v16;
  if (v34 != 2)
  {
    v29 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v40 = "[CESRGeoLMRegionIDCache purgeUnusedGeoLMRegionIdFromCacheForLanguage:]";
      v41 = 2112;
      v42 = v11;
      v43 = 2048;
      v44 = v34;
      v27 = "%s GeoLM: regionIdToBePurged: %@, _geoLMAssetsInfoDict count: %ld";
      v28 = v29;
      goto LABEL_30;
    }

LABEL_24:
    [v12 removeObjectForKey:{v11, v32}];
    [v33 _updateUserDefaultsWithGeoLMAssetsInfoDict:v12 language:v4];
    goto LABEL_25;
  }

  v24 = [v12 valueForKey:v11];
  v25 = [CESRUtilities calculateDiffInDaysFromTimestamp:v24];

  if (v25 >= 8)
  {
    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v40 = "[CESRGeoLMRegionIDCache purgeUnusedGeoLMRegionIdFromCacheForLanguage:]";
      v41 = 2112;
      v42 = v11;
      v43 = 2048;
      v44 = v25;
      v27 = "%s GeoLM: regionIdToBePurged: %@, lastWhenUsed: %ld days ago";
      v28 = v26;
LABEL_30:
      _os_log_debug_impl(&dword_225EEB000, v28, OS_LOG_TYPE_DEBUG, v27, buf, 0x20u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

LABEL_25:

LABEL_26:
  v30 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateGeoLMAssetsInfoDictWithRegionId:(id)a3 language:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CESRGeoLMRegionIDCache *)self _geoLMAssetsInfoDictForLanguage:v6];
  v13 = [v8 mutableCopy];

  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v13 setObject:v12 forKey:v7];

  [(CESRGeoLMRegionIDCache *)self _updateUserDefaultsWithGeoLMAssetsInfoDict:v13 language:v6];
}

- (CESRGeoLMRegionIDCache)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CESRGeoLMRegionIDCache;
  v6 = [(CESRGeoLMRegionIDCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
  }

  return v7;
}

- (CESRGeoLMRegionIDCache)init
{
  v6.receiver = self;
  v6.super_class = CESRGeoLMRegionIDCache;
  v2 = [(CESRGeoLMRegionIDCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_3767);
  }

  v3 = sharedInstance_geoLMRegionIDCache;

  return v3;
}

uint64_t __40__CESRGeoLMRegionIDCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CESRGeoLMRegionIDCache);
  v1 = sharedInstance_geoLMRegionIDCache;
  sharedInstance_geoLMRegionIDCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end