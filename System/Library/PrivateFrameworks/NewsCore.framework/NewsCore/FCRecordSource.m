@interface FCRecordSource
+ (BOOL)recognizesRecordID:(id)a3 inRecordIDPrefixes:(id)a4;
+ (id)identifierFromCKRecord:(id)a3;
- (BOOL)isRecordStale:(id)a3 withCachePolicy:(id)a4;
- (BOOL)recognizesRecordID:(id)a3;
- (FCRecordSource)init;
- (FCRecordSource)initWithContentDatabase:(id)a3 contentDirectory:(id)a4 appActivityMonitor:(id)a5 backgroundTaskable:(id)a6 defaultTTL:(double)a7 experimentalizableFieldsPostfix:(id)a8 activeTreatmentID:(id)a9;
- (NSArray)desiredKeys;
- (NSDictionary)experimentalizedKeysByOriginalKey;
- (NSDictionary)localizedExperimentalizedKeysByOriginalKey;
- (NSDictionary)localizedKeysByOriginalKey;
- (NSDictionary)localizedLanguageSpecificKeysByOriginalKey;
- (id)_ckRecordIDFromIdentifier:(uint64_t)a1;
- (id)_deleteRecordsWithWriteLockWithIDs:(id *)a1;
- (id)_experimentalizedKeysByOriginalKeyForExperimentPostfix:(id)a3;
- (id)_faultableRecordsWithIdentifiers:(id *)a1;
- (id)_fetchErrorForKey:(id)a1;
- (id)_identifierFromCKRecordID:(void *)a1;
- (id)_localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:(id)a3 experimentPostfix:(id)a4;
- (id)_localizedKeysByOriginalKeyForContentStoreFrontID:(id)a3;
- (id)_localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:(void *)a3 languageCode:;
- (id)_recordFromCKRecord:(void *)a1;
- (id)_saveCKRecordsWithWriteLock:(void *)a3 updateFetchDateForRecordIdentifiers:(void *)a4 fetchContext:;
- (id)cachedRecordWithID:(id)a3;
- (id)cachedRecordsWithIDs:(id)a3;
- (id)convertRecords:(id)a3;
- (id)deleteRecordsWithIDs:(id)a3;
- (id)fetchCoordinator:(id)a3 fetchOperationForKeys:(id)a4 context:(id)a5 qualityOfService:(int64_t)a6 relativePriority:(int64_t)a7;
- (id)fetchOperationForRecordsWithIDs:(id)a3;
- (id)fetchOperationForRecordsWithIDs:(id)a3 ignoreCacheForRecordIDs:(id)a4;
- (id)interestTokenForRecordIDs:(id)a3;
- (id)jsonEncodableObject;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
- (id)recordType;
- (id)resolveLocalizableExperimentalizableFieldforKey:(id)a3 inRecord:(id)a4 activeExperimentIDKey:(id)a5;
- (id)savePBRecords:(id)a3;
- (id)saveRecords:(id)a3;
- (id)storeFilename;
- (id)valueFromCKRecord:(id)a3 baseKey:(id)a4 localizedKeys:(id)a5 localizedLanguageSpecificKeys:(id)a6;
- (int)pbRecordType;
- (int64_t)storageSize;
- (uint64_t)_prepareForUse;
- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)a3;
- (unint64_t)highThresholdDataSizeLimit;
- (unint64_t)lowThresholdDataSizeLimit;
- (unint64_t)storeVersion;
- (void)_deriveDesiredKeys;
- (void)_deriveDesiredKeysIfNeeded;
- (void)addCacheObserver:(id)a3;
- (void)cacheCoordinator:(id)a3 flushKeysWithWriteLock:(id)a4;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3;
- (void)fetchCoordinator:(id)a3 addFetchOperation:(id)a4 context:(id)a5;
- (void)fetchCoordinator:(id)a3 filterKeysToFetch:(id)a4 isFirstAttempt:(BOOL)a5 context:(id)a6;
- (void)forceRefreshDesiredKeys;
- (void)save;
- (void)t_startOverridingExperimentalizableFieldsPostfix:(id)a3 treatmentID:(id)a4;
- (void)t_stopOverridingExperimentalizableFieldsPostfixAndTreatmentID;
- (void)updateFetchDateForRecordIDs:(id)a3;
@end

@implementation FCRecordSource

- (NSDictionary)localizedKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  localizedKeysByOriginalKey = self->_localizedKeysByOriginalKey;

  return localizedKeysByOriginalKey;
}

- (void)_deriveDesiredKeysIfNeeded
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    if (!*(a1 + 16))
    {
      [(FCRecordSource *)a1 _deriveDesiredKeys];
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (void)_deriveDesiredKeys
{
  if (a1)
  {
    v2 = +[FCAppleAccount sharedAccount];
    v3 = [v2 contentStoreFrontID];

    v4 = +[FCAppleAccount sharedAccount];
    v5 = [v4 primaryLanguageCode];

    v6 = [a1 experimentalizableFieldsPostfix];
    v36 = v3;
    v7 = MEMORY[0x1E695DFA8];
    v8 = v5;
    v9 = v6;
    v10 = [a1 nonLocalizableKeys];
    v11 = [v7 setWithArray:v10];

    v12 = [a1 localizableKeys];
    [v11 addObjectsFromArray:v12];

    v13 = [a1 _localizedKeysByOriginalKeyForContentStoreFrontID:v36];
    v14 = [v13 allValues];
    [v11 addObjectsFromArray:v14];

    v15 = +[FCAppleAccount sharedAccount];
    LOBYTE(v14) = [v15 isContentStoreFrontSupported];

    if ((v14 & 1) == 0)
    {
      v16 = [a1 alwaysLocalizedKeys];
      [v11 addObjectsFromArray:v16];
    }

    v17 = [a1 experimentalizableKeys];
    [v11 addObjectsFromArray:v17];

    v18 = [a1 _experimentalizedKeysByOriginalKeyForExperimentPostfix:v9];
    v19 = [v18 allValues];
    [v11 addObjectsFromArray:v19];

    v20 = [a1 localizableExperimentalizableKeys];
    [v11 addObjectsFromArray:v20];

    v21 = [a1 _localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:v36 experimentPostfix:v9];

    v22 = [v21 allValues];
    [v11 addObjectsFromArray:v22];

    v23 = [a1 localizableLanguageSpecificKeys];
    [v11 addObjectsFromArray:v23];

    v24 = [(FCRecordSource *)a1 _localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:v36 languageCode:v8];

    v25 = [v24 allValues];
    [v11 addObjectsFromArray:v25];

    v26 = [v11 allObjects];

    v27 = a1[2];
    a1[2] = v26;

    v28 = [a1 _localizedKeysByOriginalKeyForContentStoreFrontID:v36];
    v29 = a1[3];
    a1[3] = v28;

    v30 = [a1 _experimentalizedKeysByOriginalKeyForExperimentPostfix:v9];
    v31 = a1[4];
    a1[4] = v30;

    v32 = [a1 _localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:v36 experimentPostfix:v9];
    v33 = a1[5];
    a1[5] = v32;

    v34 = [(FCRecordSource *)a1 _localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:v36 languageCode:v8];
    v35 = a1[6];
    a1[6] = v34;
  }
}

- (uint64_t)_prepareForUse
{
  if (result)
  {
    v1 = result;
    [*(result + 56) lock];
    if (!*(v1 + 104))
    {
      v2 = objc_autoreleasePoolPush();
      v3 = objc_alloc_init(FCKeyValueStoreClassRegistry);
      [(FCKeyValueStoreClassRegistry *)v3 registerClass:objc_opt_class()];
      [(FCKeyValueStoreClassRegistry *)v3 registerClass:objc_opt_class()];
      v4 = +[FCKeyValueStoreSavePolicy defaultPolicy];
      v5 = *(v1 + 88);
      if (v5)
      {
        v6 = *(v1 + 96);

        if (v6)
        {
          v7 = *(v1 + 96);
          v8 = *(v1 + 88);
          v9 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:v8 backgroundTaskable:v7];

          v4 = v9;
        }
      }

      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = [v10 bundleIdentifier];
      v12 = [v11 isEqualToString:@"com.apple.newsd"];

      if (v12)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v14 = [FCKeyValueStore alloc];
      v15 = [v1 storeFilename];
      v16 = *(v1 + 72);
      v17 = -[FCKeyValueStore initWithName:directory:version:options:classRegistry:migrator:savePolicy:](v14, "initWithName:directory:version:options:classRegistry:migrator:savePolicy:", v15, v16, [v1 storeVersion], v13, v3, 0, v4);
      v18 = *(v1 + 104);
      *(v1 + 104) = v17;

      [*(v1 + 104) setShouldExportJSONSidecar:1];
      [*(v1 + 104) setJSONEncodingHandlersWithObjectHandler:&__block_literal_global_96 arrayObjectHandler:0 dictionaryKeyHandler:0 dictionaryValueHandler:0];
      v19 = [*(v1 + 104) allKeys];
      v20 = [v19 fc_arrayByRemovingObject:@"cacheHints"];

      v21 = *(v1 + 112);
      v22 = [*(v1 + 104) objectForKeyedSubscript:@"cacheHints"];
      [v21 setupWithInitialKeys:v20 persistedHints:v22];

      objc_autoreleasePoolPop(v2);
    }

    v23 = *(v1 + 56);

    return [v23 unlock];
  }

  return result;
}

- (NSArray)desiredKeys
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  desiredKeys = self->_desiredKeys;

  return desiredKeys;
}

- (NSDictionary)localizedLanguageSpecificKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  localizedLanguageSpecificKeysByOriginalKey = self->_localizedLanguageSpecificKeysByOriginalKey;

  return localizedLanguageSpecificKeysByOriginalKey;
}

- (FCRecordSource)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecordSource init]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 114;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecordSource init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecordSource)initWithContentDatabase:(id)a3 contentDirectory:(id)a4 appActivityMonitor:(id)a5 backgroundTaskable:(id)a6 defaultTTL:(double)a7 experimentalizableFieldsPostfix:(id)a8 activeTreatmentID:(id)a9
{
  v49 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v39 = a5;
  v38 = a6;
  v37 = a8;
  v19 = a9;
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase != nil"];
    *buf = 136315906;
    v42 = "[FCRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v43 = 2080;
    v44 = "FCRecordSource.m";
    v45 = 1024;
    v46 = 125;
    v47 = 2114;
    v48 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v18)
    {
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDirectory != nil"];
    *buf = 136315906;
    v42 = "[FCRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v43 = 2080;
    v44 = "FCRecordSource.m";
    v45 = 1024;
    v46 = 126;
    v47 = 2114;
    v48 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v40.receiver = self;
  v40.super_class = FCRecordSource;
  v20 = [(FCRecordSource *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_contentDatabase, a3);
    objc_storeStrong(&v21->_contentDirectory, a4);
    v22 = 1.79769313e308;
    if (a7 > 0.0)
    {
      v22 = a7;
    }

    v23 = [FCCachePolicy cachePolicyWithSoftMaxAge:v22];
    defaultCachePolicy = v21->_defaultCachePolicy;
    v21->_defaultCachePolicy = v23;

    objc_storeStrong(&v21->_appActivityMonitor, a5);
    objc_storeStrong(&v21->_backgroundTaskable, a6);
    objc_storeStrong(&v21->_experimentalizableFieldsPostfix, a8);
    objc_storeStrong(&v21->_activeTreatmentID, a9);
    v25 = objc_alloc_init(FCThreadSafeMutableDictionary);
    fetchErrorsByKey = v21->_fetchErrorsByKey;
    v21->_fetchErrorsByKey = v25;

    v27 = objc_alloc_init(MEMORY[0x1E69B6920]);
    initializationLock = v21->_initializationLock;
    v21->_initializationLock = v27;

    v29 = objc_alloc_init(FCCacheCoordinator);
    cacheCoordinator = v21->_cacheCoordinator;
    v21->_cacheCoordinator = v29;

    [(FCCacheCoordinator *)v21->_cacheCoordinator setDelegate:v21];
    v31 = objc_alloc_init(FCFetchCoordinator);
    fetchCoordinator = v21->_fetchCoordinator;
    v21->_fetchCoordinator = v31;

    [(FCFetchCoordinator *)v21->_fetchCoordinator setDelegate:v21];
    v21->_derivedKeysLock._os_unfair_lock_opaque = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)recordType
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource recordType]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 185;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource recordType]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (int)pbRecordType
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource pbRecordType]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 191;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource pbRecordType]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)storeFilename
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource storeFilename]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 197;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource storeFilename]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)storeVersion
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource storeVersion]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 203;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource storeVersion]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)lowThresholdDataSizeLimit
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource lowThresholdDataSizeLimit]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 209;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource lowThresholdDataSizeLimit]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)highThresholdDataSizeLimit
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource highThresholdDataSizeLimit]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 215;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource highThresholdDataSizeLimit]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCRecordSource recordFromCKRecord:base:]";
    v15 = 2080;
    v16 = "FCRecordSource.m";
    v17 = 1024;
    v18 = 226;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource recordFromCKRecord:base:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (id)identifierFromCKRecord:(id)a3
{
  v3 = [a3 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (id)resolveLocalizableExperimentalizableFieldforKey:(id)a3 inRecord:(id)a4 activeExperimentIDKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FCRecordSource *)self localizedExperimentalizedKeysByOriginalKey];
  v12 = [v11 objectForKeyedSubscript:v10];
  v13 = [v9 fc_safeObjectForKey:v12];

  v14 = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v15 = [v14 objectForKeyedSubscript:v10];
  v16 = [v9 fc_safeObjectForKey:v15];

  v17 = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v18 = [v17 objectForKeyedSubscript:v10];
  v19 = [v9 fc_safeObjectForKey:v18];

  v20 = [v9 objectForKeyedSubscript:v10];

  v21 = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v22 = [v21 objectForKeyedSubscript:v8];

  v23 = [v9 objectForKeyedSubscript:v22];

  v24 = MEMORY[0x1E69E58C0];
  v25 = [(FCRecordSource *)self activeTreatmentID];
  v26 = [v24 nf_object:v23 isEqualToObject:v25];

  if (v19)
  {
    v27 = v19;
  }

  else
  {
    v27 = v20;
  }

  if (v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = v20;
  }

  if (v19)
  {
    v28 = v19;
  }

  if (v13)
  {
    v28 = v13;
  }

  if (v26)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29;

  return v29;
}

- (id)valueFromCKRecord:(id)a3 baseKey:(id)a4 localizedKeys:(id)a5 localizedLanguageSpecificKeys:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "ckRecord"];
    *buf = 136315906;
    v29 = "[FCRecordSource valueFromCKRecord:baseKey:localizedKeys:localizedLanguageSpecificKeys:]";
    v30 = 2080;
    v31 = "FCRecordSource.m";
    v32 = 1024;
    v33 = 314;
    v34 = 2114;
    v35 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "baseKey"];
    *buf = 136315906;
    v29 = "[FCRecordSource valueFromCKRecord:baseKey:localizedKeys:localizedLanguageSpecificKeys:]";
    v30 = 2080;
    v31 = "FCRecordSource.m";
    v32 = 1024;
    v33 = 315;
    v34 = 2114;
    v35 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13 = [v12 objectForKeyedSubscript:v10];
  if (v13)
  {
    v14 = v13;
    v15 = [v12 objectForKeyedSubscript:v10];
    v16 = [v9 objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = v12;
LABEL_12:
      v22 = [v17 objectForKeyedSubscript:v10];
      v23 = [v9 objectForKeyedSubscript:v22];

      goto LABEL_14;
    }
  }

  v18 = [v11 objectForKeyedSubscript:v10];
  if (v18)
  {
    v19 = v18;
    v20 = [v11 objectForKeyedSubscript:v10];
    v21 = [v9 objectForKeyedSubscript:v20];

    if (v21)
    {
      v17 = v11;
      goto LABEL_12;
    }
  }

  v23 = [v9 objectForKeyedSubscript:v10];
LABEL_14:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_recordFromCKRecord:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = MEMORY[0x1E69B6FA0];
    v6 = v3;
    v7 = objc_alloc_init(v5);
    v8 = [objc_opt_class() identifierFromCKRecord:v6];
    [v7 setIdentifier:v8];

    v9 = [objc_opt_class() changeTagFromCKRecord:v6];
    [v7 setChangeTag:v9];

    v10 = [objc_opt_class() modificationDateFromCKRecord:v6];

    v11 = [v10 pbDate];
    [v7 setModificationDate:v11];

    [v7 setRecordType:{objc_msgSend(a1, "pbRecordType")}];
    v12 = [MEMORY[0x1E695DF00] pbDate];
    [v7 setFetchDate:v12];
    [v7 setAssetURLsDate:v12];

    a1 = [a1 recordFromCKRecord:v6 base:v7];

    objc_autoreleasePoolPop(v4);
  }

  return a1;
}

- (NSDictionary)experimentalizedKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  experimentalizedKeysByOriginalKey = self->_experimentalizedKeysByOriginalKey;

  return experimentalizedKeysByOriginalKey;
}

- (NSDictionary)localizedExperimentalizedKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  localizedExperimentalizedKeysByOriginalKey = self->_localizedExperimentalizedKeysByOriginalKey;

  return localizedExperimentalizedKeysByOriginalKey;
}

- (id)_localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:(void *)a3 languageCode:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a1 localizableLanguageSpecificKeys];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = FCCKLocalizedLanguageSpecificRecordKey(v13, v5, v6);
          [v7 setObject:v14 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_localizedKeysByOriginalKeyForContentStoreFrontID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 length])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(FCRecordSource *)self localizableKeys];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = FCCKLocalizedRecordKey(v11, v4);
          [v5 setObject:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(FCRecordSource *)self alwaysLocalizedKeys];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * j);
          v19 = FCCKLocalizedRecordKey(v18, v4);
          [v5 setObject:v19 forKey:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_experimentalizedKeysByOriginalKeyForExperimentPostfix:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(FCRecordSource *)self experimentalizableKeys];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = FCCKExperimentizedRecordKey(v11, v4);
          [v5 setObject:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:(id)a3 experimentPostfix:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(FCRecordSource *)self localizableExperimentalizableKeys];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = FCCKLocalizedExperimentizedRecordKey(v14, v6, v7);
          [v8 setObject:v15 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fetchOperationForRecordsWithIDs:(id)a3
{
  v4 = a3;
  v5 = [FCRecordsFetchOperation alloc];
  v6 = self;
  v7 = v4;
  if (v5)
  {
    v12.receiver = v5;
    v12.super_class = FCRecordsFetchOperation;
    v8 = [(FCRecordSource *)&v12 init];
    v5 = v8;
    if (v8)
    {
      objc_storeStrong(&v8[2]._cacheCoordinator, self);
      v9 = [v7 copy];
      recordIdentifiers = v5->_recordIdentifiers;
      v5->_recordIdentifiers = v9;
    }
  }

  return v5;
}

- (id)fetchOperationForRecordsWithIDs:(id)a3 ignoreCacheForRecordIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FCRecordsFetchOperation alloc];
  v9 = self;
  v10 = v7;
  v11 = v6;
  if (v8)
  {
    v18.receiver = v8;
    v18.super_class = FCRecordsFetchOperation;
    v12 = [(FCRecordSource *)&v18 init];
    v8 = v12;
    if (v12)
    {
      objc_storeStrong(&v12[2]._cacheCoordinator, self);
      v13 = [v10 copy];
      recordIdentifiers = v8->_recordIdentifiers;
      v8->_recordIdentifiers = v13;

      v15 = [v11 copy];
      ignoreCacheForRecordIDs = v8->_ignoreCacheForRecordIDs;
      v8->_ignoreCacheForRecordIDs = v15;
    }
  }

  return v8;
}

- (id)cachedRecordWithID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v12 count:1];

    v7 = [(FCRecordSource *)self cachedRecordsWithIDs:v6, v12, v13];
    v8 = [v7 allRecords];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)cachedRecordsWithIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(FCRecordSource *)self _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = [(FCCacheCoordinator *)cacheCoordinator holdTokensForKeys:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    if (self)
    {
      v8 = self->_cacheCoordinator;
    }

    else
    {
      v8 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__FCRecordSource_cachedRecordsWithIDs___block_invoke_2;
    v13[3] = &unk_1E7C376A0;
    v14 = v4;
    v15 = self;
    v16 = v7;
    v9 = v7;
    [(FCCacheCoordinator *)v8 performCacheRead:v13];
    v10 = [v9 fc_dictionaryWithKeyBlock:&__block_literal_global_42 valueBlock:&__block_literal_global_45];
    v11 = [[FCHeldRecords alloc] initWithRecordsByID:v10 interestTokensByID:v6];
  }

  else
  {
    v11 = objc_alloc_init(FCHeldRecords);
  }

  return v11;
}

void __39__FCRecordSource_cachedRecordsWithIDs___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 112);
        }

        else
        {
          v9 = 0;
        }

        if ([v9 cacheContainsKey:{*(*(&v16 + 1) + 8 * v6), v16}])
        {
          v10 = *(a1 + 40);
          if (v10)
          {
            v11 = *(v10 + 104);
          }

          else
          {
            v11 = 0;
          }

          v12 = [v11 objectForKey:v7];
          v13 = [(FCFaultableRecord *)v12 recordBase];
          if (![(NTPBRecordBase *)v13 hasExpiredAssetURLs])
          {
            [*(a1 + 48) addObject:v12];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v14 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v4 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

id __39__FCRecordSource_cachedRecordsWithIDs___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [(FCFaultableRecord *)a2 recordBase];
  v3 = [v2 identifier];

  return v3;
}

- (id)interestTokenForRecordIDs:(id)a3
{
  v4 = a3;
  [(FCRecordSource *)self _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = [(FCCacheCoordinator *)cacheCoordinator holdTokenForKeys:v4];

  return v6;
}

- (id)saveRecords:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  if ([v4 count])
  {
    [(FCRecordSource *)self _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = cacheCoordinator;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__FCRecordSource_saveRecords___block_invoke;
    v9[3] = &unk_1E7C37408;
    v9[4] = self;
    v10 = v4;
    v11 = &v12;
    [(FCCacheCoordinator *)v6 performCacheWrite:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __30__FCRecordSource_saveRecords___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [(FCRecordSource *)*(a1 + 32) _saveCKRecordsWithWriteLock:0 updateFetchDateForRecordIdentifiers:0 fetchContext:?];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectsForKeys:v2];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v7 objectForKey:{v12, v23}];
        v14 = [(FCFaultableRecord *)v13 record];
        [v6 setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = [FCHeldRecords alloc];
  v16 = *(a1 + 32);
  if (v16)
  {
    v16 = v16[14];
  }

  v17 = v16;
  v18 = [v17 holdTokensForKeys:v2];
  v19 = [(FCHeldRecords *)v15 initWithRecordsByID:v6 interestTokensByID:v18];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_saveCKRecordsWithWriteLock:(void *)a3 updateFetchDateForRecordIdentifiers:(void *)a4 fetchContext:
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v37 = a3;
  v8 = a4;
  if (a1)
  {
    v44 = [MEMORY[0x1E695DF90] dictionary];
    v43 = [MEMORY[0x1E695DF70] array];
    v41 = [MEMORY[0x1E695DF70] array];
    v40 = [MEMORY[0x1E695DF90] dictionary];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v7;
    obj = v7;
    v45 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v45)
    {
      v9 = *v47;
      v38 = *v47;
      v39 = v8;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          v12 = [objc_opt_class() identifierFromCKRecord:v11];
          if ([a1[14] cacheContainsKey:v12])
          {
            v13 = [a1[13] objectForKey:v12];
            v14 = [(FCFaultableRecord *)v13 recordBase];
            if (v8)
            {
              LODWORD(v8) = v8[2] == 1 && NSClassFromString(&cfstr_Xctest.isa) != 0;
            }

            v20 = MEMORY[0x1E695DF00];
            v21 = [v14 modificationDate];
            v19 = [v20 dateWithPBDate:v21];

            v22 = [objc_opt_class() modificationDateFromCKRecord:v11];
            v23 = [v22 fc_isLaterThan:v19 withPrecision:1];
            if ([(NTPBRecordBase *)v14 needsAssetURLRefresh]|| (v23 & 1) != 0 || v8)
            {
              v25 = [(FCRecordSource *)a1 _recordFromCKRecord:v11];
              v26 = [FCFaultableRecord faultableRecordWithRecord:v25];
              [v44 setObject:v26 forKey:v12];
            }

            else
            {
              v24 = [(FCFaultableRecord *)v13 record];
              v25 = [v24 copy];

              v26 = [v25 base];
              v27 = [MEMORY[0x1E695DF00] pbDate];
              [v26 setFetchDate:v27];

              v28 = [FCFaultableRecord faultableRecordWithRecord:v25];
              [v44 setObject:v28 forKey:v12];
            }

            v8 = v39;

            v9 = v38;
          }

          else
          {
            v13 = [(FCRecordSource *)a1 _recordFromCKRecord:v11];
            v14 = [v13 base];
            v15 = [FCFaultableRecord faultableRecordWithRecord:v13];
            [v44 setObject:v15 forKey:v12];

            [v41 addObject:v12];
            v16 = MEMORY[0x1E696AD98];
            v17 = [v14 cacheLifetimeHint];
            if (v17 == 2)
            {
              v18 = 2;
            }

            else
            {
              v18 = v17 == 1;
            }

            v19 = [v16 numberWithInteger:{v18, v36}];
            [v40 setObject:v19 forKey:v12];
          }

          [v43 addObject:v12];
        }

        v45 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v45);
    }

    v29 = v37;
    if ([v37 count])
    {
      [a1[13] updateObjectsForKeys:v37 withBlock:&__block_literal_global_104];
    }

    v30 = a1[13];
    v31 = [v44 allValues];
    v32 = [v44 allKeys];
    [v30 setObjects:v31 forKeys:v32];

    [a1[14] didInsertKeysIntoCache:v41 withLifetimeHints:v40];
    v33 = [a1[14] persistableHints];
    if (v33)
    {
      [a1[13] setObject:v33 forKey:@"cacheHints"];
    }

    v7 = v36;
  }

  else
  {
    v43 = 0;
    v29 = v37;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)savePBRecords:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  if ([v4 count])
  {
    [(FCRecordSource *)self _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = cacheCoordinator;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__FCRecordSource_savePBRecords___block_invoke;
    v9[3] = &unk_1E7C37408;
    v10 = v4;
    v11 = self;
    v12 = &v13;
    [(FCCacheCoordinator *)v6 performCacheWrite:v9];
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __32__FCRecordSource_savePBRecords___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF90] dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  v49 = a1;
  if (v3)
  {
    v4 = v3;
    v5 = *v53;
    v46 = *v53;
    v47 = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v52 + 1) + 8 * v6);
        v8 = [v7 base];
        v9 = [v8 identifier];
        if (v9)
        {
          v10 = *(a1 + 40);
          if (v10)
          {
            v11 = *(v10 + 112);
          }

          else
          {
            v11 = 0;
          }

          if ([v11 cacheContainsKey:v9])
          {
            v12 = *(a1 + 40);
            if (v12)
            {
              v13 = *(v12 + 104);
            }

            else
            {
              v13 = 0;
            }

            v14 = [v13 objectForKey:v9];
            v15 = [(FCFaultableRecord *)v14 recordBase];
            v16 = MEMORY[0x1E695DF00];
            v17 = [v15 modificationDate];
            v18 = [v16 dateWithPBDate:v17];

            v19 = MEMORY[0x1E695DF00];
            v20 = [v8 modificationDate];
            v21 = [v19 dateWithPBDate:v20];

            if ([v21 fc_isLaterThan:v18 withPrecision:1])
            {
              v22 = [FCFaultableRecord faultableRecordWithRecord:v7];
              [v50 setObject:v22 forKey:v9];
            }

            v5 = v46;
            v2 = v47;
            a1 = v49;
          }

          else
          {
            v23 = [FCFaultableRecord faultableRecordWithRecord:v7];
            [v50 setObject:v23 forKey:v9];

            v24 = MEMORY[0x1E696AD98];
            v25 = [v8 cacheLifetimeHint];
            if (v25 == 2)
            {
              v26 = 2;
            }

            else
            {
              v26 = v25 == 1;
            }

            v14 = [v24 numberWithInteger:v26];
            [v48 setObject:v14 forKey:v9];
          }

          [v2 addObject:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v27 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      v4 = v27;
    }

    while (v27);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v28 = v28[13];
  }

  v29 = v28;
  v30 = [v50 allValues];
  v31 = [v50 allKeys];
  [v29 setObjects:v30 forKeys:v31];

  v32 = *(v49 + 40);
  if (v32)
  {
    v32 = v32[14];
  }

  v33 = v32;
  v34 = [v50 allKeys];
  [v33 didInsertKeysIntoCache:v34 withLifetimeHints:v48];

  v35 = *(v49 + 40);
  if (v35)
  {
    v36 = *(v35 + 112);
  }

  else
  {
    v36 = 0;
  }

  v37 = [v36 persistableHints];
  if (v37)
  {
    v38 = *(v49 + 40);
    if (v38)
    {
      v39 = *(v38 + 104);
    }

    else
    {
      v39 = 0;
    }

    [v39 setObject:v37 forKey:@"cacheHints"];
  }

  v40 = *(v49 + 40);
  if (v40)
  {
    v40 = v40[14];
  }

  v41 = v40;
  v42 = [v41 holdTokenForKeys:v2];
  v43 = *(*(v49 + 48) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v42;

  v45 = *MEMORY[0x1E69E9840];
}

- (id)convertRecords:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [objc_opt_class() identifierFromCKRecord:{v12, v19}];
        v15 = [(FCRecordSource *)self _recordFromCKRecord:v12];
        [v5 setObject:v15 forKey:v14];
        [v6 setObject:v14 forKey:v14];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [[FCHeldRecords alloc] initWithRecordsByID:v5 interestTokensByID:v6];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)deleteRecordsWithIDs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([objc_opt_class() supportsDeletions] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should only attempt to delete when the record source supports deletions"];
    *buf = 136315906;
    *&buf[4] = "[FCRecordSource deleteRecordsWithIDs:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCRecordSource.m";
    *&buf[22] = 1024;
    LODWORD(v17) = 664;
    WORD2(v17) = 2114;
    *(&v17 + 6) = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v17 = __Block_byref_object_copy__9;
  *(&v17 + 1) = __Block_byref_object_dispose__9;
  v18 = 0;
  if ([v4 count])
  {
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = cacheCoordinator;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__FCRecordSource_deleteRecordsWithIDs___block_invoke;
    v13[3] = &unk_1E7C37138;
    v15 = buf;
    v13[4] = self;
    v14 = v4;
    [(FCCacheCoordinator *)v6 performCacheWrite:v13];
  }

  else
  {
    v7 = objc_opt_new();
    v8 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v7;
  }

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __39__FCRecordSource_deleteRecordsWithIDs___block_invoke(uint64_t a1)
{
  v2 = [(FCRecordSource *)*(a1 + 32) _deleteRecordsWithWriteLockWithIDs:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)_deleteRecordsWithWriteLockWithIDs:(id *)a1
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = v3;
  if (!a1)
  {
    goto LABEL_15;
  }

  v4 = v3;
  if (([objc_opt_class() supportsDeletions] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should only attempt to delete when the record source supports deletions"];
    *buf = 136315906;
    v32 = "[FCRecordSource _deleteRecordsWithWriteLockWithIDs:]";
    v33 = 2080;
    v34 = "FCRecordSource.m";
    v35 = 1024;
    v36 = 1275;
    v37 = 2114;
    v38 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v4)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordIDs != nil", v25];
        *buf = 136315906;
        v32 = "[FCRecordSource _deleteRecordsWithWriteLockWithIDs:]";
        v33 = 2080;
        v34 = "FCRecordSource.m";
        v35 = 1024;
        v36 = 1276;
        v37 = 2114;
        v38 = v24;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_5;
  }

  v5 = a1[13];
  v6 = [v4 allObjects];
  v7 = [v5 objectsForKeys:v6];

  v8 = [v7 allKeys];

  [a1[13] updateObjectsForKeys:v8 withBlock:&__block_literal_global_107];
  v9 = [a1[13] objectsForKeys:v8];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v11 objectForKey:v16];
        v18 = [(FCFaultableRecord *)v17 record];
        [v10 setObject:v18 forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v19 = [FCHeldRecords alloc];
  v20 = [a1[14] holdTokensForKeys:v8];
  a1 = [(FCHeldRecords *)v19 initWithRecordsByID:v10 interestTokensByID:v20];

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)updateFetchDateForRecordIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(FCRecordSource *)self _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__FCRecordSource_updateFetchDateForRecordIDs___block_invoke;
    v6[3] = &unk_1E7C36C58;
    v6[4] = self;
    v7 = v4;
    [(FCCacheCoordinator *)cacheCoordinator performCacheWrite:v6];
  }
}

- (BOOL)isRecordStale:(id)a3 withCachePolicy:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ![(FCCachePolicy *)v7 cachePolicy])
  {
    if (self)
    {
      defaultCachePolicy = self->_defaultCachePolicy;
    }

    else
    {
      defaultCachePolicy = 0;
    }

    v10 = defaultCachePolicy;

    v8 = v10;
  }

  v11 = [(FCCachePolicy *)v8 cachePolicy];
  if (v11 > 3)
  {
    if ((v11 - 4) < 2)
    {
LABEL_13:
      v14 = [v6 base];
      [(FCCachePolicy *)v8 maximumCachedAge];
      v12 = [v14 fc_isCachedAgeGreaterThan:?];

      goto LABEL_17;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if ((v11 - 2) < 2)
  {
    [(FCCachePolicy *)v8 maximumCachedAge];
    if (v13 != 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record sources must provide a real cache policy as the default fallback"];
      v18 = 136315906;
      v19 = "[FCRecordSource isRecordStale:withCachePolicy:]";
      v20 = 2080;
      v21 = "FCRecordSource.m";
      v22 = 1024;
      v23 = 708;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v18, 0x26u);
    }

    goto LABEL_16;
  }

  v12 = v11 == 1;
LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)recognizesRecordID:(id)a3
{
  v4 = a3;
  v5 = [(FCRecordSource *)self recordIDPrefixes];
  v6 = [FCRecordSource recognizesRecordID:v4 inRecordIDPrefixes:v5];

  return v6;
}

+ (BOOL)recognizesRecordID:(id)a3 inRecordIDPrefixes:(id)a4
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__FCRecordSource_recognizesRecordID_inRecordIDPrefixes___block_invoke;
  v8[3] = &unk_1E7C38B40;
  v9 = v5;
  v6 = v5;
  LOBYTE(a4) = [a4 fc_containsObjectPassingTest:v8];

  return a4;
}

- (int64_t)storageSize
{
  [(FCRecordSource *)self _prepareForUse];
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  return [(FCKeyValueStore *)localStore storeSize];
}

- (void)save
{
  if (self)
  {
    [(NFUnfairLock *)self->_initializationLock lock];
    v4 = self->_localStore;
    initializationLock = self->_initializationLock;
  }

  else
  {
    [0 lock];
    v4 = 0;
    initializationLock = 0;
  }

  [(NFUnfairLock *)initializationLock unlock];
  [(FCKeyValueStore *)v4 save];
}

- (void)addCacheObserver:(id)a3
{
  v5 = a3;
  [(FCRecordSource *)self _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  [(FCCacheCoordinator *)cacheCoordinator addObserver:v5];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = @"zero-interest";
  if (a3 == 1)
  {
    v5 = @"low";
  }

  if (a3 == 2)
  {
    v5 = @"high";
  }

  v6 = v5;
  v7 = FCRecordSourceLog;
  if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(FCRecordSource *)self recordType];
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "will enable flushing %{public}@ records with %{public}@ threshold", buf, 0x16u);
  }

  if (a3 == 2)
  {
    v12 = [(FCRecordSource *)self highThresholdDataSizeLimit];
  }

  else
  {
    if (a3 != 1)
    {
      v10 = a3 == 0;
      v11 = 0;
      goto LABEL_13;
    }

    v12 = [(FCRecordSource *)self lowThresholdDataSizeLimit];
  }

  v11 = v12;
  v10 = 0;
LABEL_13:
  v13 = [[FCCacheCoordinatorFlushPolicy alloc] initWithLowWaterMark:(v11 * 0.7) highWaterMark:v11 alwaysFlushKeysWithZeroInterest:v10];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  [(FCCacheCoordinator *)cacheCoordinator enableFlushingWithPolicy:v13];

  v15 = *MEMORY[0x1E69E9840];
}

__CFString *__54__FCRecordSource_enableFlushingWithFlushingThreshold___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @"zero-interest";
  if (v1 == 1)
  {
    v2 = @"low";
  }

  if (v1 == 2)
  {
    return @"high";
  }

  else
  {
    return v2;
  }
}

- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)a3
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCRecordSource *)self storeSize];
}

- (void)cacheCoordinator:(id)a3 flushKeysWithWriteLock:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = FCRecordSourceLog;
  if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 count];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v12 = localStore;
    v13 = [(FCKeyValueStore *)v12 allKeys];
    v14 = [v13 count] - 1;
    v15 = [(FCRecordSource *)self recordType];
    v20 = 134218754;
    v21 = v10;
    v22 = 2048;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "record source is flushing %lu of %lu %{public}@ records: %{public}@", &v20, 0x2Au);
  }

  if (self)
  {
    v16 = self->_localStore;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v7 allObjects];
  [(FCKeyValueStore *)v17 removeObjectsForKeys:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchCoordinator:(id)a3 filterKeysToFetch:(id)a4 isFirstAttempt:(BOOL)a5 context:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = objc_opt_class();
  v12 = FCCheckedDynamicCast(v11, v10);
  v13 = v12;
  if (v12 && (*(v12 + 8) & 1) != 0)
  {
    v37 = v10;
    v39 = v12;
    if ((*(v12 + 16) | 4) == 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't be filtering for this cache policy"];
      *buf = 136315906;
      v50 = "[FCRecordSource fetchCoordinator:filterKeysToFetch:isFirstAttempt:context:]";
      v51 = 2080;
      v52 = "FCRecordSource.m";
      v53 = 1024;
      v54 = 865;
      v55 = 2114;
      v56 = v36;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v14 = [v9 allObjects];
    v15 = [(FCRecordSource *)&self->super.isa _faultableRecordsWithIdentifiers:v14];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      v38 = *v41;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:v21];
          v23 = [(FCFaultableRecord *)v22 recordBase];
          if (![(NTPBRecordBase *)v23 needsAssetURLRefresh])
          {
            v24 = [v23 fetchDate];
            if (!v24)
            {
              goto LABEL_14;
            }

            v25 = v24;
            v26 = v9;
            v27 = MEMORY[0x1E695DF00];
            [v23 fetchDate];
            v29 = v28 = v18;
            v30 = [v27 dateWithPBDate:v29];
            [v30 fc_timeIntervalUntilNow];
            v32 = v31;
            v33 = v39[3];

            v9 = v26;
            v19 = v38;

            v18 = v28;
            if (v32 < v33)
            {
LABEL_14:
              [v9 removeObject:v21];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v18);
    }

    v10 = v37;
    v13 = v39;
  }

  else
  {
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __76__FCRecordSource_fetchCoordinator_filterKeysToFetch_isFirstAttempt_context___block_invoke;
    v44[3] = &unk_1E7C37678;
    v45 = v9;
    v46 = self;
    v47 = a5;
    [(FCCacheCoordinator *)cacheCoordinator performCacheRead:v44];
    v16 = v45;
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __76__FCRecordSource_fetchCoordinator_filterKeysToFetch_isFirstAttempt_context___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) copy];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 112);
        }

        else
        {
          v9 = 0;
        }

        if ([v9 cacheContainsKey:*(*(&v14 + 1) + 8 * v6)])
        {
          [*(a1 + 32) removeObject:v7];
        }

        v10 = [*(a1 + 40) fetchErrorsByKey];
        v11 = [v10 objectForKey:v7];

        if (v11)
        {
          if ([v11 fc_isCKUnknownItemError])
          {
            [*(a1 + 32) removeObject:v7];
          }

          if ((*(a1 + 48) & 1) == 0)
          {
            [*(a1 + 32) removeObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v12 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
    }

    while (v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_faultableRecordsWithIdentifiers:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__9;
    v13 = __Block_byref_object_dispose__9;
    v14 = 0;
    v4 = a1[14];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__FCRecordSource__faultableRecordsWithIdentifiers___block_invoke;
    v6[3] = &unk_1E7C37138;
    v8 = &v9;
    v6[4] = a1;
    v7 = v3;
    [v4 performCacheRead:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

- (id)fetchCoordinator:(id)a3 fetchOperationForKeys:(id)a4 context:(id)a5 qualityOfService:(int64_t)a6 relativePriority:(int64_t)a7
{
  v110 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_class();
  v13 = FCCheckedDynamicCast(v12, v11);
  v80 = v13;
  v81 = v11;
  if (v13 && (*(v13 + 8) & 1) != 0)
  {
    v77 = a6;
    v14 = [v10 allObjects];
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_77;
    v91[3] = &unk_1E7C38BD8;
    v91[4] = self;
    v79 = [v14 fc_arrayByTransformingWithBlock:v91];

    v78 = v10;
    v15 = [v10 allObjects];
    v16 = [(FCRecordSource *)&self->super.isa _faultableRecordsWithIdentifiers:v15];

    v17 = [MEMORY[0x1E695DF90] dictionary];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v88;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v88 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v87 + 1) + 8 * i);
          v24 = [v18 objectForKey:v23];
          v25 = [(FCFaultableRecord *)v24 recordBase];
          v26 = [(NTPBRecordBase *)v25 needsAssetURLRefresh];

          if (!v26)
          {
            v27 = [(FCFaultableRecord *)v24 recordBase];
            v28 = [v27 changeTag];

            if (v28)
            {
              v29 = [(FCRecordSource *)self _ckRecordIDFromIdentifier:v23];
              [v17 setObject:v28 forKeyedSubscript:v29];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v20);
    }

    v30 = objc_alloc_init(FCCKContentBatchedRefreshRecordsOperation);
    v31 = v30;
    if (self)
    {
      contentDatabase = self->_contentDatabase;
    }

    else
    {
      contentDatabase = 0;
    }

    v33 = v79;
    [(FCCKContentBatchedRefreshRecordsOperation *)v30 setDatabase:?];
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v34, v79, 384);
      objc_setProperty_nonatomic_copy(v31, v35, v17, 392);
      v36 = [(FCRecordSource *)self desiredKeys];
      objc_setProperty_nonatomic_copy(v31, v37, v36, 400);
    }

    else
    {
      v36 = [(FCRecordSource *)self desiredKeys];
    }

    v10 = v78;

    [v31 setQualityOfService:v77];
    if ([objc_opt_class() supportsDeletions])
    {
      if (v31)
      {
        v31[368] = 1;
      }

      v38 = [objc_opt_class() canaryRecordName];
      if (v38)
      {
        v40 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v38];
        if (v31)
        {
          objc_setProperty_nonatomic_copy(v31, v39, v40, 408);
        }
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v42 = v41;
    v43 = [v31 operationID];
    v44 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v45 = v44;
      v46 = [v79 count];
      v47 = [(FCRecordSource *)self recordType];
      *buf = 134218498;
      v105 = v46;
      v106 = 2114;
      v107 = v47;
      v108 = 2114;
      v109 = v43;
      _os_log_impl(&dword_1B63EF000, v45, OS_LOG_TYPE_INFO, "will refresh %lu %{public}@ records with operation ID %{public}@", buf, 0x20u);

      v33 = v79;
    }

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_81;
    newValue[3] = &unk_1E7C38C28;
    newValue[4] = self;
    v48 = v80;
    v83 = v80;
    v84 = v43;
    v86 = v42;
    v85 = v33;
    v49 = v33;
    v51 = v43;
    v52 = v49;
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v50, newValue, 416);
      v52 = v85;
    }

    v53 = v83;
  }

  else
  {
    v54 = [v10 allObjects];
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke;
    v102[3] = &unk_1E7C38D38;
    v102[4] = self;
    v55 = [v54 fc_arrayByTransformingWithBlock:v102];

    v56 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
    v31 = v56;
    if (self)
    {
      v57 = self->_contentDatabase;
    }

    else
    {
      v57 = 0;
    }

    [(FCCKContentBatchedFetchRecordsOperation *)v56 setDatabase:v57];
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v58, v55, 376);
      v59 = [(FCRecordSource *)self desiredKeys];
      objc_setProperty_nonatomic_copy(v31, v60, v59, 384);
    }

    else
    {
      v59 = [(FCRecordSource *)self desiredKeys];
    }

    [v31 setQualityOfService:a6];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v62 = v61;
    v63 = [v31 operationID];
    v64 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v65 = v64;
      v66 = [v55 count];
      v67 = [(FCRecordSource *)self recordType];
      *buf = 134218498;
      v105 = v66;
      v106 = 2114;
      v107 = v67;
      v108 = 2112;
      v109 = v63;
      _os_log_impl(&dword_1B63EF000, v65, OS_LOG_TYPE_INFO, "will fetch %lu %{public}@ records with operation ID %@", buf, 0x20u);
    }

    v68 = objc_opt_new();
    v69 = objc_opt_new();
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_74;
    v99[3] = &unk_1E7C38B88;
    v70 = v68;
    v100 = v70;
    v72 = v69;
    v101 = v72;
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v71, v99, 416);
    }

    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_2;
    v92[3] = &unk_1E7C38BB0;
    v93 = v72;
    v94 = self;
    v95 = v70;
    v96 = v63;
    v98 = v62;
    v97 = v55;
    v49 = v55;
    v51 = v63;
    v17 = v70;
    v18 = v72;
    v74 = v49;
    v48 = v80;
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v73, v92, 424);
      v74 = v97;
    }

    v53 = v100;
  }

  v75 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)_ckRecordIDFromIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x1E695BA70];
    v3 = a2;
    v4 = [v2 alloc];
    v5 = [v4 fc_initSafeWithRecordName:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = 32;
    v11 = v7;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = 40;
    v11 = v8;
  }

  [*(a1 + v10) setObject:v11 forKey:v12];
LABEL_6:
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [*(a1 + 32) readOnlyDictionary];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKey:v10];
        if (v11)
        {
          v12 = [(FCRecordSource *)*(a1 + 40) _identifierFromCKRecordID:v10];
          [v4 setObject:v11 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [*(a1 + 40) fetchErrorsByKey];
    [v13 addEntriesFromDictionary:v4];
  }

  if ([*(a1 + 48) count])
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) allValues];
    v16 = [v14 saveRecords:v15];

    v17 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      v19 = v17;
      v20 = [v18 count];
      v21 = [*(a1 + 40) recordType];
      v22 = *(a1 + 56);
      v23 = v3 - *(a1 + 72);
      *buf = 134218754;
      v37 = v20;
      v38 = 2114;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2048;
      v43 = v23;
      v24 = "successfully fetched %lu %{public}@ records with operation ID %@, total time: %f";
      v25 = v19;
      v26 = 42;
LABEL_17:
      _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    }
  }

  else
  {
    v27 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 64);
      v19 = v27;
      v29 = [v28 count];
      v21 = [*(a1 + 40) recordType];
      v30 = *(a1 + 56);
      *buf = 134218498;
      v37 = v29;
      v38 = 2114;
      v39 = v21;
      v40 = 2112;
      v41 = v30;
      v24 = "failed to fetch %lu %{public}@ records with operation ID %@";
      v25 = v19;
      v26 = 32;
      goto LABEL_17;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_identifierFromCKRecordID:(void *)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "ckRrecordID != nil"];
      *buf = 136315906;
      v9 = "[FCRecordSource _identifierFromCKRecordID:]";
      v10 = 2080;
      v11 = "FCRecordSource.m";
      v12 = 1024;
      v13 = 1169;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    a1 = [v4 recordName];
  }

  v5 = *MEMORY[0x1E69E9840];

  return a1;
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_81(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  if ([v10 count] || objc_msgSend(v9, "count") || objc_msgSend(v11, "count"))
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_2_82;
    v45[3] = &unk_1E7C38C00;
    v45[4] = *(a1 + 32);
    v15 = [v9 fc_arrayByTransformingWithBlock:v45];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_3;
    v44[3] = &unk_1E7C38C00;
    v44[4] = *(a1 + 32);
    v16 = [v11 fc_arrayByTransformingWithBlock:v44];
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 112);
    }

    else
    {
      v18 = 0;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_4;
    v38[3] = &unk_1E7C376C8;
    v39 = v10;
    v40 = v15;
    v19 = *(a1 + 40);
    v41 = *(a1 + 32);
    v42 = v19;
    v43 = v16;
    v20 = v16;
    v21 = v15;
    [v18 performCacheWrite:v38];
  }

  if (v12 && [v12 code] != 2)
  {
    v33 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v34 = *(a1 + 56);
      v23 = v33;
      v35 = [v34 count];
      v25 = [*(a1 + 32) recordType];
      v36 = *(a1 + 48);
      *buf = 134218498;
      v47 = v35;
      v48 = 2114;
      v49 = v25;
      v50 = 2114;
      v51 = v36;
      v30 = "failed to refresh %lu %{public}@ records with operation ID %{public}@";
      v31 = v23;
      v32 = 32;
      goto LABEL_13;
    }
  }

  else
  {
    v22 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = [v9 count];
      v25 = [*(a1 + 32) recordType];
      v26 = [v10 count];
      v27 = [v11 count];
      v28 = *(a1 + 48);
      v29 = v14 - *(a1 + 64);
      *buf = 134219266;
      v47 = v24;
      v48 = 2114;
      v49 = v25;
      v50 = 2048;
      v51 = v26;
      v52 = 2048;
      v53 = v27;
      v54 = 2114;
      v55 = v28;
      v56 = 2048;
      v57 = v29;
      v30 = "successfully refreshed %lu %{public}@ records with %lu changes and %lu deletions, operation ID %{public}@, total time: %f";
      v31 = v23;
      v32 = 62;
LABEL_13:
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) allValues];
    v4 = [(FCRecordSource *)v2 _saveCKRecordsWithWriteLock:v3 updateFetchDateForRecordIdentifiers:*(a1 + 40) fetchContext:*(a1 + 56)];
  }

  if ([*(a1 + 64) count])
  {
    v5 = *(a1 + 48);
    v7 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 64)];
    v6 = [(FCRecordSource *)v5 _deleteRecordsWithWriteLockWithIDs:v7];
  }
}

- (void)fetchCoordinator:(id)a3 addFetchOperation:(id)a4 context:(id)a5
{
  v5 = MEMORY[0x1E696ADC8];
  v6 = a4;
  v7 = [v5 fc_sharedConcurrentQueue];
  [v7 addOperation:v6];
}

id __34__FCRecordSource__initializeStore__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [(FCFaultableRecord *)v4 record];
    v6 = [v5 dictionaryRepresentation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)forceRefreshDesiredKeys
{
  os_unfair_lock_lock(&self->_derivedKeysLock);
  [(FCRecordSource *)self _deriveDesiredKeys];

  os_unfair_lock_unlock(&self->_derivedKeysLock);
}

id __95__FCRecordSource__saveCKRecordsWithWriteLock_updateFetchDateForRecordIdentifiers_fetchContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(FCFaultableRecord *)a2 record];
  v3 = [v2 copy];

  v4 = [v3 base];
  v5 = [MEMORY[0x1E695DF00] pbDate];
  [v4 setFetchDate:v5];

  v6 = [FCFaultableRecord faultableRecordWithRecord:v3];

  return v6;
}

void __51__FCRecordSource__faultableRecordsWithIdentifiers___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectsForKeys:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_fetchErrorForKey:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 fetchErrorsByKey];
    v2 = [v4 objectForKey:v3];
  }

  return v2;
}

id __53__FCRecordSource__deleteRecordsWithWriteLockWithIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(FCFaultableRecord *)a2 record];
  v3 = [v2 copy];

  v4 = [v3 base];
  [v4 setDeletedFromCloud:1];
  v5 = [MEMORY[0x1E695DF00] pbDate];
  [v4 setModificationDate:v5];

  v6 = [MEMORY[0x1E695DF00] pbDate];
  [v4 setFetchDate:v6];

  v7 = [FCFaultableRecord faultableRecordWithRecord:v3];

  return v7;
}

- (void)t_startOverridingExperimentalizableFieldsPostfix:(id)a3 treatmentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  experimentalizableFieldsPostfix = self->_experimentalizableFieldsPostfix;
  self->_experimentalizableFieldsPostfix = v6;
  v12 = v6;

  activeTreatmentID = self->_activeTreatmentID;
  self->_activeTreatmentID = v7;
  v10 = v7;

  desiredKeys = self->_desiredKeys;
  self->_desiredKeys = 0;
}

- (void)t_stopOverridingExperimentalizableFieldsPostfixAndTreatmentID
{
  experimentalizableFieldsPostfix = self->_experimentalizableFieldsPostfix;
  self->_experimentalizableFieldsPostfix = 0;

  activeTreatmentID = self->_activeTreatmentID;
  self->_activeTreatmentID = 0;

  desiredKeys = self->_desiredKeys;
  self->_desiredKeys = 0;
}

- (id)jsonEncodableObject
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCRecordSource *)self jsonEncodableObject];
}

@end