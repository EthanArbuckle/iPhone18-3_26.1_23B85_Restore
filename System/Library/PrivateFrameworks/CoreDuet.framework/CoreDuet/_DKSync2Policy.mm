@interface _DKSync2Policy
+ (BOOL)cloudSyncDisabled;
+ (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4;
+ (BOOL)rapportSyncDisabled;
+ (NSObject)configurationPlistForFilename:(uint64_t)a1;
+ (id)_policyForSyncTransportType:(uint64_t)a1;
+ (id)disabledFeaturesForSyncType:(id)a3 transports:(int64_t)a4;
+ (id)featureNameFromFeatureType:(unint64_t)a3;
+ (id)getDisabledFeaturesForTransportType:(uint64_t)a1;
+ (id)internalFeatureNameFromFeatureName:(id)a3;
+ (id)policyCache;
+ (id)policyForSyncTransportType:(int64_t)a3;
+ (id)policyFromDictionary:(id)a3;
+ (id)productVersion;
+ (id)removeDisabledFeaturesStreamsForTransportType:(void *)a3 fromDictionary:;
+ (id)syncPolicyConfigPathForFilename:(uint64_t)a1;
+ (id)userDefaults;
+ (void)handleDownloadSyncPolicyResponse:(void *)a3 data:(void *)a4 error:;
+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(uint64_t)a1;
+ (void)setOkToDownloadPolicyUpdates:(BOOL)a3;
- (BOOL)canDeferSyncOperationWithSyncType:(id)a3;
- (BOOL)canPerformSyncOperationWithSyncType:(id)a3 lastSyncDate:(id)a4 lastDaySyncCount:(unint64_t)a5 isCharging:(BOOL)a6;
- (BOOL)highPriorityForSyncDownWithSyncType:(id)a3;
- (BOOL)highPriorityForSyncUpWithSyncType:(id)a3 lastSyncDate:(id)a4;
- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)a3 urgency:(unint64_t)a4;
- (id)description;
- (id)queryStartDateWithSyncType:(id)a3 lastSyncDate:(id)a4 lastDaySyncCount:(unint64_t)a5 previousHighWaterMark:(id)a6;
- (id)queryStartDateWithSyncType:(id)a3 previousHighWaterMark:(id)a4;
- (id)queryStartDateWithSyncType:(void *)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:(void *)a3;
- (id)streamNamesToSyncWithDisabledFeatures:(id)a3;
- (id)streamNamesToSyncWithSyncType:(id)a3 transportType:(int64_t)a4;
- (uint64_t)initWithDictionary:(uint64_t *)a1;
@end

@implementation _DKSync2Policy

+ (id)userDefaults
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];

  return v0;
}

+ (id)policyCache
{
  objc_opt_self();
  if (policyCache_onceToken != -1)
  {
    +[_DKSync2Policy policyCache];
  }

  v0 = policyCache_policyCache;

  return v0;
}

+ (id)policyForSyncTransportType:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = @"CloudDown";
  v5 = &stru_1F05B9908;
  if (a3 == 8)
  {
    v5 = @"CloudUp";
  }

  if (a3 != 4)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = @"Rapport";
  }

  else
  {
    v6 = v4;
  }

  v7 = +[_DKSync2Policy policyCache];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [_DKSync2Policy _policyForSyncTransportType:a3];
    if (v8)
    {
      v9 = +[_DKSync2Policy policyCache];
      [v9 setObject:v8 forKey:v6];

      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = [objc_opt_class() description];
        v14 = 138543874;
        v15 = v13;
        v16 = 2114;
        v17 = v6;
        v18 = 2114;
        v19 = v8;
        _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Policy for transport %{public}@: %{public}@", &v14, 0x20u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_policyForSyncTransportType:(uint64_t)a1
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  switch(a2)
  {
    case 1:
      v4 = @"Policies/com.apple.coreduet.knowledge.syncPolicies2.ios.rp.dn";
      goto LABEL_7;
    case 8:
      v4 = @"Policies/com.apple.coreduet.knowledge.syncPolicies2.ios.ck.up";
      goto LABEL_7;
    case 4:
      v4 = @"Policies/com.apple.coreduet.knowledge.syncPolicies2.ios.ck.dn";
LABEL_7:
      v5 = objc_opt_new();
      v6 = [(_DKSync2Policy *)v3 configurationPlistForFilename:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 addEntriesFromDictionary:v6];
      }

      v7 = [v6 objectForKeyedSubscript:@"Version"];
      [v7 floatValue];
      v9 = v8;

      v10 = +[_DKSync2Policy userDefaults];
      v11 = [v10 objectForKey:@"CloudSync2Policies"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = @"CloudDown";
        v13 = &stru_1F05B9908;
        if (a2 == 8)
        {
          v13 = @"CloudUp";
        }

        if (a2 != 4)
        {
          v12 = v13;
        }

        if (a2 == 1)
        {
          v14 = @"Rapport";
        }

        else
        {
          v14 = v12;
        }

        v15 = [v11 objectForKeyedSubscript:v14];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 objectForKeyedSubscript:@"Version"];
            if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v16 floatValue], v17 < v9))
            {
              v18 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v30 = [objc_opt_class() description];
                *buf = 138543618;
                v32 = v30;
                v33 = 2112;
                v34 = v14;
                _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Cloud policy for %@ is invalid and/or old. Removing saved policies from defaults.", buf, 0x16u);
              }

              v19 = +[_DKSync2Policy userDefaults];
              [v19 removeObjectForKey:@"CloudSync2Policies"];

              v15 = MEMORY[0x1E695E0F8];
              v11 = MEMORY[0x1E695E0F8];
            }
          }
        }

        if ([v15 count])
        {
          v20 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v29 = [objc_opt_class() description];
            *buf = 138543874;
            v32 = v29;
            v33 = 2114;
            v34 = v14;
            v35 = 2114;
            v36 = v15;
            _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Using remote policy override for %{public}@: %{public}@", buf, 0x20u);
          }
        }

        [v5 addEntriesFromDictionary:v15];
      }

      v21 = +[_DKSync2Policy userDefaults];
      v22 = [v21 objectForKey:@"CloudSync2Policy"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 count])
        {
          v23 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            +[_DKSync2Policy _policyForSyncTransportType:];
          }
        }

        [v5 addEntriesFromDictionary:v22];
      }

      [_DKSync2Policy removeDisabledFeaturesStreamsForTransportType:a2 fromDictionary:v5];
      objc_claimAutoreleasedReturnValue();

      v24 = [v3 policyFromDictionary:v5];
      if (+[_DKCloudUtilities isUnitTesting](_DKCloudUtilities, "isUnitTesting") && [v24 syncDisabled])
      {
        v25 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [objc_opt_class() description];
          *buf = 138543362;
          v32 = v26;
          _os_log_impl(&dword_191750000, v25, OS_LOG_TYPE_INFO, "%{public}@: Enabling sync due to unit testing", buf, 0xCu);
        }

        [v24 setSyncDisabled:0];
      }

      goto LABEL_45;
  }

  v24 = objc_opt_new();
  [v24 setSyncDisabled:1];
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[_DKSync2Policy _policyForSyncTransportType:];
  }

LABEL_45:

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)featureNameFromFeatureType:(unint64_t)a3
{
  if (a3)
  {
    return @"ScreenTime";
  }

  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[_DKSync2Policy featureNameFromFeatureType:];
  }

  return 0;
}

+ (id)internalFeatureNameFromFeatureName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ScreenTime"])
  {
    v4 = @"DigitalHealth";
  }

  else
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync2Policy internalFeatureNameFromFeatureName:];
    }

    v4 = @"No name";
  }

  return v4;
}

+ (id)getDisabledFeaturesForTransportType:(uint64_t)a1
{
  v48 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = _DKSyncTransportName(a2);
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = &getkUTTypeEmailMessageSymbolLoc_ptr;
  v5 = _DKSync2PolicyDisableSyncPolicyForFeatures;
  v6 = 0x1E7366000uLL;
  if (!_DKSync2PolicyDisableSyncPolicyForFeatures)
  {
    v7 = +[_DKSync2Policy userDefaults];
    v8 = [v7 objectForKey:@"DKSync2PolicyDisableSyncForFeature"];
    v9 = _DKSync2PolicyDisableSyncPolicyForFeatures;
    _DKSync2PolicyDisableSyncPolicyForFeatures = v8;

    v5 = _DKSync2PolicyDisableSyncPolicyForFeatures;
    if (!_DKSync2PolicyDisableSyncPolicyForFeatures)
    {
      v10 = +[_DKSync2Policy userDefaults];
      v11 = [v10 objectForKey:@"DKSync2PolicyDisableSyncForFeature"];
      v12 = _DKSync2PolicyDisableSyncPolicyForFeatures;
      _DKSync2PolicyDisableSyncPolicyForFeatures = v11;

      v5 = _DKSync2PolicyDisableSyncPolicyForFeatures;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v37;
    *&v14 = 138543874;
    v33 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v4[75] valueForKey:{v18, v33}];
        v20 = [v19 valueForKey:v3];
        if ([v20 BOOLValue])
        {
          v21 = v16;
          v22 = [*(v6 + 2312) internalFeatureNameFromFeatureName:v18];
          [v34 addObject:v22];

          v23 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [objc_opt_class() description];
            *buf = v33;
            v42 = v24;
            v43 = 2114;
            v44 = v18;
            v45 = 2114;
            v46 = v3;
            _os_log_impl(&dword_191750000, v23, OS_LOG_TYPE_INFO, "%{public}@: Sync policy is disabled for feature: %{public}@ on transport: %{public}@", buf, 0x20u);

            v4 = &getkUTTypeEmailMessageSymbolLoc_ptr;
            v6 = 0x1E7366000;
          }

          v16 = v21;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v15);
  }

  if (_os_feature_enabled_impl())
  {
    v40[0] = @"Eucalyptus";
    v40[1] = @"IDSMessageGating";
    v40[2] = @"OptimizedBatteryCharging";
    v40[3] = @"SiriPortrait";
    v40[4] = @"Supergreen";
    v40[5] = @"Tips";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:6];
    [v34 addObjectsFromArray:v25];

    LODWORD(v25) = [v34 containsObject:@"DigitalHealth"];
    v26 = +[_CDLogging syncChannel];
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
    if (v25)
    {
      if (v27)
      {
        v28 = [objc_opt_class() description];
        *buf = 138543362;
        v42 = v28;
        v29 = "%{public}@: Sync is decommisioned on this platform. All features, except DigitalHealth, have been disabled";
LABEL_21:
        _os_log_impl(&dword_191750000, v26, OS_LOG_TYPE_INFO, v29, buf, 0xCu);
      }
    }

    else if (v27)
    {
      v28 = [objc_opt_class() description];
      *buf = 138543362;
      v42 = v28;
      v29 = "%{public}@: Sync is decommisioned on this platform. All features, including DigitalHealth, have been disabled";
      goto LABEL_21;
    }
  }

  v30 = [v34 allObjects];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)removeDisabledFeaturesStreamsForTransportType:(void *)a3 fromDictionary:
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_self();
  v5 = [_DKSync2Policy getDisabledFeaturesForTransportType:a2];
  v6 = [v4 valueForKey:@"StreamNamesToSync"];
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if (([v5 containsObject:{v13, v18}] & 1) == 0)
          {
            v14 = [v8 valueForKey:v13];
            [v7 setValue:v14 forKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v4 setValue:v7 forKey:@"StreamNamesToSync"];
  }

  else
  {
    v7 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = [objc_opt_class() description];
      *buf = 138543874;
      v24 = v15;
      v25 = 2048;
      v26 = [v5 count];
      v27 = 2048;
      v28 = [v6 count];
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "%{public}@: No disabled features, featuresCount = %lu, originalFeatureCount = %lu", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (NSObject)configurationPlistForFilename:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(_DKSync2Policy *)v3 syncPolicyConfigPathForFilename:v2];
  if (!v4)
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync2Policy configurationPlistForFilename:];
    }

    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[_DKSync2Policy configurationPlistForFilename:];
    }

LABEL_9:
    v5 = 0;
  }

  return v5;
}

+ (BOOL)rapportSyncDisabled
{
  v2 = +[_DKSync2Policy userDefaults];
  v3 = [v2 objectForKey:@"CloudSync2Policy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"RapportSyncDisabled"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [_DKSync2Policy policyForSyncTransportType:a4];
  v6 = v5;
  if (v5 && ![v5 syncDisabled])
  {
    v7 = [_DKSync2Policy featureNameFromFeatureType:a3];
    v10 = [_DKSync2Policy internalFeatureNameFromFeatureName:v7];
    v12 = [v6 valueForKey:@"_streamNamesToSync"];
    v13 = [v12 valueForKey:v10];
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [objc_opt_class() description];
      v18 = 138544130;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v10;
      v24 = 2048;
      v25 = [v12 count];
      _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "%{public}@: isSyncPolicyDisabledForFeature: featureName:%@ internal:%@ streamNamesToSync.count = %lu", &v18, 0x2Au);
    }

    v8 = v13 == 0;
    goto LABEL_10;
  }

  v7 = +[_CDLogging syncChannel];
  v8 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [objc_opt_class() description];
    v10 = v9;
    v11 = @"has syncDisabled == YES";
    if (!v6)
    {
      v11 = @"is nil";
    }

    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "%{public}@: Sync Policy %@", &v18, 0x16u);
LABEL_10:
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)cloudSyncDisabled
{
  v2 = +[_DKSync2Policy userDefaults];
  v3 = [v2 objectForKey:@"CloudSync2Policy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"CloudSyncDisabled"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setOkToDownloadPolicyUpdates:(BOOL)a3
{
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[_DKSync2Policy setOkToDownloadPolicyUpdates:];
  }

  _DKSync2PolicyOkToDownloadPolicyUpdates = a3;
}

+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:(uint64_t)a1
{
  v3 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___DKSync2Policy_possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays___block_invoke;
  block[3] = &unk_1E7367370;
  v5 = @"com.apple.coreduet.sync-policy.policy-download";
  v6 = v3;
  v7 = a2;
  if (possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__initialized != -1)
  {
    dispatch_once(&possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays__initialized, block);
  }
}

+ (id)productVersion
{
  objc_opt_self();
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:*MEMORY[0x1E695E208]];
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)handleDownloadSyncPolicyResponse:(void *)a3 data:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  if (v8)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
    }

    goto LABEL_5;
  }

  if ([v6 statusCode] != 200)
  {
    if ([v6 statusCode] != 204 && objc_msgSend(v6, "statusCode") != 205 && objc_msgSend(v6, "statusCode") != 404 && objc_msgSend(v6, "statusCode") != 410)
    {
      goto LABEL_5;
    }

    v11 = objc_opt_new();
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_26:
    v17 = +[_DKSync2Policy userDefaults];
    v18 = [v17 objectForKey:@"CloudSync2Policies"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    v21 = v20;

    [v17 setValue:v11 forKey:@"CloudSync2Policies"];
    if (([v11 isEqualToDictionary:v21]& 1) == 0)
    {
      v22 = +[_DKSync2Policy policyCache];
      [v22 removeAllObjects];

      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 postNotificationName:@"_DKSync2PolicyDidChangeNotification" object:v9 userInfo:0];
    }

    goto LABEL_32;
  }

  if (v7)
  {
    v24 = 0;
    v11 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v24];
    v12 = v24;
    if (!v11)
    {
      v13 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
      }
    }
  }

  else
  {
    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
    }

    v11 = 0;
  }

  v14 = [v6 allHeaderFields];
  v15 = [_CDServerRequest getHTTPModifiedSinceFromHeaders:v14];

  if (v15)
  {
    v16 = +[_DKSync2Policy userDefaults];
    [v16 setValue:v15 forKey:@"CloudSyncPoliciesLastModified"];
  }

  if (v11)
  {
    goto LABEL_26;
  }

LABEL_5:
  if ([v6 statusCode] == 304)
  {
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[_DKSync2Policy handleDownloadSyncPolicyResponse:data:error:];
    }

LABEL_32:
  }
}

+ (id)syncPolicyConfigPathForFilename:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:v2 ofType:@"plist"];

  return v4;
}

+ (id)disabledFeaturesForSyncType:(id)a3 transports:(int64_t)a4
{
  v5 = a3;
  v6 = +[_DKSyncedFeatures sharedInstance];
  v7 = objc_opt_new();
  v8 = [(_DKSyncType *)v5 isSingleDevice];

  if ([(_DKSyncedFeatures *)v6 isDigitalHealthDisabledWithIsSingleDevice:v8 forTransports:a4])
  {
    [v7 addObject:@"DigitalHealth"];
  }

  if ([(_DKSyncedFeatures *)v6 isIDSMessageGatingDisabled])
  {
    [v7 addObject:@"IDSMessageGating"];
  }

  if ([(_DKSyncedFeatures *)v6 isSiriPortraitDisabled])
  {
    [v7 addObject:@"SiriPortrait"];
  }

  if ([(_DKSyncedFeatures *)v6 isSupergreenDisabledForTransports:a4])
  {
    [v7 addObject:@"Supergreen"];
  }

  if ([(_DKSyncedFeatures *)v6 isEucalyptusDisabled])
  {
    [v7 addObject:@"Eucalyptus"];
  }

  if ([(_DKSyncedFeatures *)v6 isOptimizedBatteryChargingDisabled])
  {
    [v7 addObject:@"OptimizedBatteryCharging"];
  }

  if ([(_DKSyncedFeatures *)v6 isTipsDisabled])
  {
    [v7 addObject:@"Tips"];
  }

  if ([v7 count])
  {
    v9 = [v7 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)streamNamesToSyncWithDisabledFeatures:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_streamNamesToAlwaysSync)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithArray:?];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_streamNamesToSync;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (!v4 || ([v4 containsObject:{*(*(&v17 + 1) + 8 * i), v17}] & 1) == 0)
        {
          v13 = [(NSDictionary *)self->_streamNamesToSync objectForKeyedSubscript:v12, v17];
          [v6 addObjectsFromArray:v13];
        }
      }

      v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v6 allObjects];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)streamNamesToSyncWithSyncType:(id)a3 transportType:(int64_t)a4
{
  v5 = [_DKSync2Policy disabledFeaturesForSyncType:a3 transports:a4];
  v6 = [(_DKSync2Policy *)self streamNamesToSyncWithDisabledFeatures:v5];

  return v6;
}

- (BOOL)canDeferSyncOperationWithSyncType:(id)a3
{
  v3 = a3;
  v4 = [(_DKSyncType *)v3 isPeriodicSync]&& ([(_DKSyncType *)v3 forceSync]& 1) == 0 && [(_DKSyncType *)v3 urgency]< 8;

  return v4;
}

- (BOOL)canPerformSyncOperationWithSyncType:(id)a3 lastSyncDate:(id)a4 lastDaySyncCount:(unint64_t)a5 isCharging:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(_DKSyncType *)v10 forceSync];
  v13 = [(_DKSyncType *)v10 isTriggeredSync];
  v14 = [(_DKSyncType *)v10 isSingleDevice];
  if (![(_DKSync2Policy *)self syncDisabled])
  {
    if (v12)
    {
      goto LABEL_7;
    }

    if (([(_DKSyncType *)v10 didReceivePush]& v13) == 1)
    {
      if (![(_DKSync2Policy *)self pushTriggersSync])
      {
LABEL_17:
        v16 = 0;
        goto LABEL_18;
      }
    }

    else if ((v13 & 1) == 0 && ![(_DKSync2Policy *)self minSyncsPerDay])
    {
      goto LABEL_17;
    }

    if ([(_DKSync2Policy *)self requireCharging]&& !a6)
    {
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_DKSync2Policy canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:];
      }

      goto LABEL_4;
    }

    if (v11)
    {
      if (v13)
      {
        if ([(_DKSync2Policy *)self maxSyncsPerDay]<= a5)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [_DKSync2Policy canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:];
          }

          goto LABEL_4;
        }
      }

      else
      {
        if ([(_DKSyncType *)v10 isPeriodicSync])
        {
          v18 = +[_DKSync2Policy userDefaults];
          v19 = [v18 BOOLForKey:@"IgnorePeriodicSyncLimits"];

          if (v19)
          {
            v15 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [_DKSync2Policy canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:];
            }

            v16 = 1;
            goto LABEL_5;
          }
        }

        if ([(_DKSync2Policy *)self maxSyncsPerDay]<= a5)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [_DKSync2Policy canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:];
          }

          goto LABEL_4;
        }

        [v11 timeIntervalSinceNow];
        v21 = -v20;
        [(_DKSync2Policy *)self hoursBetweenSyncsWhenIsSingleDevice:v14];
        if (v22 * 3600.0 * 0.75 > v21)
        {
          v15 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [_DKSync2Policy canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:];
          }

          goto LABEL_4;
        }
      }
    }

LABEL_7:
    v16 = 1;
    goto LABEL_18;
  }

  v15 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_DKSync2Policy canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:];
  }

LABEL_4:
  v16 = 0;
LABEL_5:

LABEL_18:
  return v16;
}

- (BOOL)highPriorityForSyncDownWithSyncType:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncUrgencyTracker sharedInstance];
  v5 = [(_DKSyncType *)v3 forceSync];

  v6 = (v5 & 1) != 0 || [(_DKEventData *)v4 version]>= 0xA;
  return v6;
}

- (BOOL)highPriorityForSyncUpWithSyncType:(id)a3 lastSyncDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_DKSyncUrgencyTracker sharedInstance];
  v9 = [(_DKSyncType *)v7 forceSync];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(_DKEventData *)v8 version];
    v10 = 1;
    if (v6 && v11 <= 9)
    {
      maxSyncDownIntervalInDays = self->_maxSyncDownIntervalInDays;
      if (maxSyncDownIntervalInDays)
      {
        v13 = (86400 * maxSyncDownIntervalInDays);
        [v6 timeIntervalSinceNow];
        v10 = -v14 > v13;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)a3 urgency:(unint64_t)a4
{
  v5 = a3;
  if (![(_DKSync2Policy *)self minSyncsPerDay])
  {
    return -1.0;
  }

  if (v5)
  {
    return [(_DKSync2Policy *)self singleDeviceSyncIntervalInDays]* 24.0;
  }

  result = 24.0 / [(_DKSync2Policy *)self minSyncsPerDay];
  v8 = 1.0;
  if (a4 <= 5)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v8 = 1.75;
      }

      else if (a4 == 4)
      {
        v8 = 2.0;
      }

      else
      {
        v8 = 2.33;
      }

      return result / v8;
    }

    if (!a4)
    {
      return result;
    }

    v9 = 1.25;
    if (a4 == 2)
    {
      v8 = 1.5;
    }

    v10 = a4 == 1;
    goto LABEL_22;
  }

  if (a4 <= 8)
  {
    if (a4 == 6)
    {
      v8 = 2.66;
    }

    else if (a4 == 7)
    {
      v8 = 3.0;
    }

    else
    {
      v8 = 3.33;
    }

    return result / v8;
  }

  if (a4 != 9)
  {
    v9 = 4.0;
    if (a4 == 11)
    {
      v8 = 4.0;
    }

    v10 = a4 == 10;
LABEL_22:
    if (v10)
    {
      v8 = v9;
    }

    return result / v8;
  }

  v8 = 3.66;
  return result / v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@ { \n", v5];

  v6 = [(_DKSync2Policy *)self name];
  [v3 appendFormat:@"                                   name: %@\n", v6];

  if ([(_DKSync2Policy *)self syncDisabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"                           syncDisabled: %@\n", v7];
  if (+[_DKSync2Policy cloudSyncDisabled])
  {
    if (+[_DKSync2Policy cloudSyncDisabled])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    [v3 appendFormat:@"                      cloudSyncDisabled: %@\n", v8];
  }

  if (+[_DKSync2Policy rapportSyncDisabled])
  {
    if (+[_DKSync2Policy rapportSyncDisabled])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    [v3 appendFormat:@"                    rapportSyncDisabled: %@\n", v9];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxSyncDownIntervalInDays](self, "maxSyncDownIntervalInDays")}];
  [v3 appendFormat:@"              maxSyncDownIntervalInDays: %@\n", v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxSyncPeriodInDays](self, "maxSyncPeriodInDays")}];
  [v3 appendFormat:@"                    maxSyncPeriodInDays: %@\n", v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy minSyncIntervalInSeconds](self, "minSyncIntervalInSeconds")}];
  [v3 appendFormat:@"               minSyncIntervalInSeconds: %@\n", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy minSyncWindowInSeconds](self, "minSyncWindowInSeconds")}];
  [v3 appendFormat:@"                 minSyncWindowInSeconds: %@\n", v13];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy minSyncsPerDay](self, "minSyncsPerDay")}];
  [v3 appendFormat:@"                         minSyncsPerDay: %@\n", v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxSyncsPerDay](self, "maxSyncsPerDay")}];
  [v3 appendFormat:@"                         maxSyncsPerDay: %@\n", v15];

  if ([(_DKSync2Policy *)self numChangesTriggeringSync])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy numChangesTriggeringSync](self, "numChangesTriggeringSync")}];
    [v3 appendFormat:@"               numChangesTriggeringSync: %@\n", v16];
  }

  else
  {
    [v3 appendFormat:@"               numChangesTriggeringSync: %@\n", @"disabled"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy policyDownloadIntervalInDays](self, "policyDownloadIntervalInDays")}];
  [v3 appendFormat:@"           policyDownloadIntervalInDays: %@\n", v17];

  if ([(_DKSync2Policy *)self pushTriggersSync])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"                       pushTriggersSync: %@\n", v18];
  if ([(_DKSync2Policy *)self requireCharging])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"                        requireCharging: %@\n", v19];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy singleDeviceSyncIntervalInDays](self, "singleDeviceSyncIntervalInDays")}];
  [v3 appendFormat:@"         singleDeviceSyncIntervalInDays: %@\n", v20];

  v21 = [(_DKSync2Policy *)self streamNamesToSync];
  v22 = _CDPrettyPrintCollection(v21, 0, 0, 0);
  [v3 appendFormat:@"                      streamNamesToSync: %@\n", v22];

  v23 = [(_DKSync2Policy *)self streamNamesToAlwaysSync];
  v24 = _CDPrettyPrintCollection(v23, 0, 0, 0);
  [v3 appendFormat:@"                streamNamesToAlwaysSync: %@\n", v24];

  v25 = [(_DKSync2Policy *)self streamNamesWithAdditionsTriggeringSync];
  v26 = _CDPrettyPrintCollection(v25, 0, 0, 0);
  [v3 appendFormat:@" streamNamesWithAdditionsTriggeringSync: %@\n", v26];

  v27 = [(_DKSync2Policy *)self streamNamesWithDeletionsTriggeringSync];
  v28 = _CDPrettyPrintCollection(v27, 0, 0, 0);
  [v3 appendFormat:@" streamNamesWithDeletionsTriggeringSync: %@\n", v28];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy syncBatchSizeInEvents](self, "syncBatchSizeInEvents")}];
  [v3 appendFormat:@"                  syncBatchSizeInEvents: %@\n", v29];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy maxBatchesPerSync](self, "maxBatchesPerSync")}];
  [v3 appendFormat:@"                      maxBatchesPerSync: %@\n", v30];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy syncTimeoutInSeconds](self, "syncTimeoutInSeconds")}];
  [v3 appendFormat:@"                   syncTimeoutInSeconds: %@\n", v31];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSync2Policy triggeredSyncDelayInSeconds](self, "triggeredSyncDelayInSeconds")}];
  [v3 appendFormat:@"            triggeredSyncDelayInSeconds: %@\n", v32];

  [v3 appendString:@"}\n"];

  return v3;
}

- (uint64_t)initWithDictionary:(uint64_t *)a1
{
  v295 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v284.receiver = a1;
    v284.super_class = _DKSync2Policy;
    v4 = objc_msgSendSuper2(&v284, sel_init);

    if (!v4)
    {
LABEL_152:
      a1 = v4;

      goto LABEL_153;
    }

    objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
    v11 = v10;
    v12 = 0x1E7366000uLL;
    if (isKindOfClass)
    {
      [v4 setName:v10];
    }

    else
    {

      if (!v11)
      {
        goto LABEL_9;
      }

      v13 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_18(v13))
      {
        v283 = [objc_opt_class() description];
        v281 = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
        isKindOfClass = [OUTLINED_FUNCTION_21() objectForKeyedSubscript:?];
        v109 = objc_opt_class();
        *buf = 138544386;
        v286 = v283;
        OUTLINED_FUNCTION_10_0();
        v288 = @"Name";
        v289 = v110;
        v111 = v281;
        v290 = v281;
        v291 = v110;
        v292 = v112;
        v113 = v112;
        v293 = v110;
        v294 = v6;
        OUTLINED_FUNCTION_6_2(&dword_191750000, v114, v115, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v116, v117, v118, v119, v281, v283, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_9:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v14 = OUTLINED_FUNCTION_19_0();

    v15 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v16 = v15;
    if (v14)
    {
      [v4 setVersion:v15];
    }

    else
    {

      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v17))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v120 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v121 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v122, v123, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v124, v125, v126, v127, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_15:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v18 = OUTLINED_FUNCTION_19_0();

    v19 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v20 = v19;
    if (v18)
    {
      [v4 setSyncDisabled:{objc_msgSend(v19, "BOOLValue")}];
    }

    else
    {

      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v21))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v128 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v129 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v130, v131, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v132, v133, v134, v135, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_21:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v22 = OUTLINED_FUNCTION_19_0();

    v23 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v24 = v23;
    if (v22)
    {
      [v23 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxBatchesPerSync:?];
    }

    else
    {

      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v25))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v136 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v137 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v138, v139, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v140, v141, v142, v143, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_27:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v26 = OUTLINED_FUNCTION_19_0();

    v27 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v28 = v27;
    if (v26)
    {
      [v27 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxSyncPeriodInDays:?];
    }

    else
    {

      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v29))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v144 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v145 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v146, v147, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v148, v149, v150, v151, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_33:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v30 = OUTLINED_FUNCTION_19_0();

    v31 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v32 = v31;
    if (v30)
    {
      [v31 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxSyncDownIntervalInDays:?];
    }

    else
    {

      if (!v32)
      {
        goto LABEL_39;
      }

      v33 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v33))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v152 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v153 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v154, v155, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v156, v157, v158, v159, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_39:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v34 = OUTLINED_FUNCTION_19_0();

    v35 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v36 = v35;
    if (v34)
    {
      [v35 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMinSyncIntervalInSeconds:?];
    }

    else
    {

      if (!v36)
      {
        goto LABEL_45;
      }

      v37 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v37))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v160 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v161 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v162, v163, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v164, v165, v166, v167, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_45:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v38 = OUTLINED_FUNCTION_19_0();

    v39 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v40 = v39;
    if (v38)
    {
      [v39 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMinSyncWindowInSeconds:?];
    }

    else
    {

      if (!v40)
      {
        goto LABEL_51;
      }

      v41 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v41))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v168 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v169 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v170, v171, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v172, v173, v174, v175, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_51:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v42 = OUTLINED_FUNCTION_19_0();

    v43 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v44 = v43;
    if (v42)
    {
      [v43 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMinSyncsPerDay:?];
    }

    else
    {

      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v45))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v176 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v177 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v178, v179, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v180, v181, v182, v183, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_57:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v46 = OUTLINED_FUNCTION_19_0();

    v47 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v48 = v47;
    if (v46)
    {
      [v47 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setMaxSyncsPerDay:?];
    }

    else
    {

      if (!v48)
      {
        goto LABEL_63;
      }

      v49 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v49))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v184 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v185 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v186, v187, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v188, v189, v190, v191, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_63:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v50 = OUTLINED_FUNCTION_19_0();

    v51 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v52 = v51;
    if (v50)
    {
      [v51 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setNumChangesTriggeringSync:?];
    }

    else
    {

      if (!v52)
      {
        goto LABEL_69;
      }

      v53 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v53))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v192 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v193 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v194, v195, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v196, v197, v198, v199, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_69:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v54 = OUTLINED_FUNCTION_19_0();

    v55 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v56 = v55;
    if (v54)
    {
      [v55 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setPolicyDownloadIntervalInDays:?];
    }

    else
    {

      if (!v56)
      {
        goto LABEL_75;
      }

      v57 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v57))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v200 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v201 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v202, v203, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v204, v205, v206, v207, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_75:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v58 = OUTLINED_FUNCTION_19_0();

    v59 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v60 = v59;
    if (v58)
    {
      [v4 setPushTriggersSync:{objc_msgSend(v59, "BOOLValue")}];
    }

    else
    {

      if (!v60)
      {
        goto LABEL_81;
      }

      v61 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v61))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v208 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v209 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v210, v211, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v212, v213, v214, v215, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_81:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v62 = OUTLINED_FUNCTION_19_0();

    v63 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v64 = v63;
    if (v62)
    {
      [v4 setRequireCharging:{objc_msgSend(v63, "BOOLValue")}];
    }

    else
    {

      if (!v64)
      {
        goto LABEL_87;
      }

      v65 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v65))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v216 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v217 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v218, v219, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v220, v221, v222, v223, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_87:
    [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v66 = OUTLINED_FUNCTION_19_0();

    v67 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v68 = v67;
    if (v66)
    {
      [v67 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setSingleDeviceSyncIntervalInDays:?];
    }

    else
    {

      if (!v68)
      {
        goto LABEL_93;
      }

      v69 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v69))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v224 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v225 = objc_opt_class();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_6_2(&dword_191750000, v226, v227, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v228, v229, v230, v231, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_93:
    v70 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v71 = objc_opt_isKindOfClass();

    v72 = [OUTLINED_FUNCTION_9() objectForKeyedSubscript:?];
    v73 = v72;
    if (v71)
    {
      [v4 setStreamNamesToSync:v72];
    }

    else
    {

      if (!v73)
      {
        goto LABEL_99;
      }

      v74 = [*(v12 + 648) syncChannel];
      if (OUTLINED_FUNCTION_18(v74))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3_1() objectForKeyedSubscript:?];
        objc_claimAutoreleasedReturnValue();
        v232 = [OUTLINED_FUNCTION_4_1() objectForKeyedSubscript:?];
        v233 = objc_opt_class();
        *buf = 138544386;
        v286 = isKindOfClass;
        OUTLINED_FUNCTION_10_0();
        v288 = @"StreamNamesToSync";
        v289 = v234;
        v235 = v282;
        v290 = v282;
        OUTLINED_FUNCTION_2_2();
        v294 = v7;
        OUTLINED_FUNCTION_6_2(&dword_191750000, v236, v237, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", v238, v239, v240, v241, v280, v282, v284.receiver, v284.super_class, buf[0]);

        v12 = 0x1E7366000;
      }
    }

LABEL_99:
    v75 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v76 = objc_opt_isKindOfClass();

    v77 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v78 = v77;
    if (v76)
    {
      [v4 setStreamNamesToAlwaysSync:v77];
    }

    else
    {

      if (!v78)
      {
        goto LABEL_105;
      }

      v78 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v242 = [objc_opt_class() description];
        v243 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v244 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v245 = objc_opt_class();
        *buf = 138544386;
        v286 = v242;
        OUTLINED_FUNCTION_10_0();
        v288 = @"StreamNamesToAlwaysSync";
        v289 = v246;
        v290 = v243;
        OUTLINED_FUNCTION_2_2();
        v294 = v5;
        OUTLINED_FUNCTION_17(&dword_191750000, v78, v247, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);

        v12 = 0x1E7366000;
      }
    }

LABEL_105:
    v79 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v80 = objc_opt_isKindOfClass();

    v81 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v82 = v81;
    if (v80)
    {
      [v4 setStreamNamesWithAdditionsTriggeringSync:v81];
    }

    else
    {

      if (!v82)
      {
        goto LABEL_111;
      }

      v82 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v248 = [objc_opt_class() description];
        v249 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v250 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v251 = objc_opt_class();
        *buf = 138544386;
        v286 = v248;
        OUTLINED_FUNCTION_10_0();
        v288 = @"StreamNamesWithAdditionsTriggeringSync";
        v289 = v252;
        v290 = v249;
        OUTLINED_FUNCTION_2_2();
        v294 = v5;
        OUTLINED_FUNCTION_17(&dword_191750000, v82, v253, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);

        v12 = 0x1E7366000;
      }
    }

LABEL_111:
    v83 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v84 = objc_opt_isKindOfClass();

    v85 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
    v86 = v85;
    if (v84)
    {
      [v4 setStreamNamesWithDeletionsTriggeringSync:v85];
    }

    else
    {

      if (!v86)
      {
        goto LABEL_117;
      }

      v86 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v254 = [objc_opt_class() description];
        v255 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v256 = [OUTLINED_FUNCTION_13_0() objectForKeyedSubscript:?];
        v257 = objc_opt_class();
        *buf = 138544386;
        v286 = v254;
        OUTLINED_FUNCTION_10_0();
        v288 = @"StreamNamesWithDeletionsTriggeringSync";
        v289 = v258;
        v290 = v255;
        OUTLINED_FUNCTION_2_2();
        v294 = v5;
        OUTLINED_FUNCTION_17(&dword_191750000, v86, v259, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);

        v12 = 0x1E7366000;
      }
    }

LABEL_117:
    v87 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v88 = objc_opt_isKindOfClass();

    v89 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v90 = v89;
    if (v88)
    {
      [v89 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setSyncBatchSizeInEvents:?];
    }

    else
    {

      if (!v90)
      {
        goto LABEL_123;
      }

      v90 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v260 = [objc_opt_class() description];
        v261 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v262 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v263 = objc_opt_class();
        *buf = 138544386;
        v286 = v260;
        OUTLINED_FUNCTION_10_0();
        v288 = @"SyncBatchSizeInEvents";
        v289 = v264;
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_17(&dword_191750000, v90, v265, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);
      }
    }

LABEL_123:
    v91 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v92 = objc_opt_isKindOfClass();

    v93 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v94 = v93;
    if (v92)
    {
      [v93 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setSyncTimeoutInSeconds:?];
    }

    else
    {

      if (!v94)
      {
        goto LABEL_129;
      }

      v94 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v266 = [objc_opt_class() description];
        v267 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v268 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v269 = objc_opt_class();
        *buf = 138544386;
        v286 = v266;
        OUTLINED_FUNCTION_10_0();
        v288 = @"SyncTimeoutInSeconds";
        v289 = v270;
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_17(&dword_191750000, v94, v271, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);
      }
    }

LABEL_129:
    v95 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v96 = objc_opt_isKindOfClass();

    v97 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
    v98 = v97;
    if (v96)
    {
      [v97 unsignedIntegerValue];
      [OUTLINED_FUNCTION_12() setTriggeredSyncDelayInSeconds:?];
    }

    else
    {

      if (!v98)
      {
LABEL_135:
        [@"com.apple.CoreDuet" UTF8String];
        if (os_variant_has_internal_diagnostics())
        {
          v99 = [*(v12 + 648) syncChannel];
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v108 = [objc_opt_class() description];
            *buf = 138543362;
            v286 = v108;
            _os_log_debug_impl(&dword_191750000, v99, OS_LOG_TYPE_DEBUG, "%{public}@: Enabling always sync stream", buf, 0xCu);
          }

          v100 = v4[20];
          if (v100)
          {
            v101 = [v100 mutableCopy];
          }

          else
          {
            v101 = objc_opt_new();
          }

          v102 = v101;

          [v102 addObject:@"/always/sync"];
          v103 = [v102 copy];
          v104 = v4[20];
          v4[20] = v103;
        }

        if ([v3 count] && (v4[1] & 1) == 0 && !v4[16])
        {
          *(v4 + 8) = 1;
          v105 = [*(v12 + 648) syncChannel];
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            v278 = [objc_opt_class() description];
            v279 = v4[2];
            *buf = 138543618;
            v286 = v278;
            v287 = 2114;
            v288 = v279;
            _os_log_error_impl(&dword_191750000, v105, OS_LOG_TYPE_ERROR, "%{public}@: Disabling %{public}@ sync policy due to invalid MaxBatchesPerSync", buf, 0x16u);
          }
        }

        if (_DKSync2PolicyOkToDownloadPolicyUpdates == 1 && [v3 count] && (v4[1] & 1) == 0)
        {
          [_DKSync2Policy possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:?];
        }

        goto LABEL_152;
      }

      v98 = [*(v12 + 648) syncChannel];
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        v272 = [objc_opt_class() description];
        v273 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v274 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v275 = objc_opt_class();
        *buf = 138544386;
        v286 = v272;
        OUTLINED_FUNCTION_10_0();
        v288 = @"TriggeredSyncDelayInSeconds";
        v289 = v276;
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_17(&dword_191750000, v98, v277, "%{public}@: Not setting %@ because %@ is a %@ instead of a %@", buf);
      }
    }

    goto LABEL_135;
  }

LABEL_153:

  v106 = *MEMORY[0x1E69E9840];
  return a1;
}

+ (id)policyFromDictionary:(id)a3
{
  v3 = a3;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = [[_DKSync2Policy alloc] initWithDictionary:v3];

  return v4;
}

- (id)queryStartDateWithSyncType:(void *)a1 lastSyncDate:(uint64_t)a2 lastDaySyncCount:(void *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    v5 = [a1 maxSyncPeriodInDays];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(86400 * v5)];
    if (v4 && ([MEMORY[0x1E695DF00] distantPast], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "isEqualToDate:", v7), v7, (v8 & 1) == 0))
    {
      v9 = [v4 laterDate:v6];
    }

    else
    {
      v9 = v6;
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        v14 = v9;
        _os_log_debug_impl(&dword_191750000, v10, OS_LOG_TYPE_DEBUG, "No last sync date, using: %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)queryStartDateWithSyncType:(id)a3 lastSyncDate:(id)a4 lastDaySyncCount:(unint64_t)a5 previousHighWaterMark:(id)a6
{
  v8 = a6;
  v10 = [_DKSync2Policy queryStartDateWithSyncType:v9 lastSyncDate:a4 lastDaySyncCount:?];
  v11 = [v10 laterDate:v8];

  return v11;
}

- (id)queryStartDateWithSyncType:(id)a3 previousHighWaterMark:(id)a4
{
  v5 = a4;
  v7 = [_DKSync2Policy queryStartDateWithSyncType:v6 lastSyncDate:0 lastDaySyncCount:?];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 laterDate:v5];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

+ (void)_policyForSyncTransportType:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_policyForSyncTransportType:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)featureNameFromFeatureType:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)internalFeatureNameFromFeatureName:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)configurationPlistForFilename:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)configurationPlistForFilename:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setOkToDownloadPolicyUpdates:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() description];
  v2 = [v0 domain];
  [v0 code];
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() description];
  v2 = [v0 domain];
  [v0 code];
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v6 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  v5 = v1;
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "%{public}@: Policy download returned status 200 but no data. Response: %@", v4, 0x16u);

  v3 = *MEMORY[0x1E69E9840];
}

+ (void)handleDownloadSyncPolicyResponse:data:error:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:.cold.5()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canPerformSyncOperationWithSyncType:lastSyncDate:lastDaySyncCount:isCharging:.cold.6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end