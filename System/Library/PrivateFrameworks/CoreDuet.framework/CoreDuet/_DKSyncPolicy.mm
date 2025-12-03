@interface _DKSyncPolicy
+ (Class)policyFromDictionary:(uint64_t)dictionary;
+ (id)configurationPlist;
+ (id)forceSyncPolicy;
+ (id)policy;
+ (id)syncPolicyConfigPath;
+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:;
- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)device;
- (id)description;
- (id)initWithSyncDisabled:(void *)disabled alwaysSyncUpAndDown:(void *)down assetThresholdInBytes:(void *)bytes firstSyncPeriodInDays:(void *)days maxSyncDownIntervalInDays:(void *)inDays minSyncIntervalInSeconds:(void *)seconds minSyncsPerDay:(void *)day maxSyncsPerDay:(void *)self0 numChangesTriggeringSync:(void *)self1 policyDownloadIntervalInDays:(void *)self2 pushTriggersSync:(void *)self3 singleDeviceSyncIntervalInDays:(void *)self4 streamNamesWithAdditionsTriggeringSync:(void *)self5 streamNamesWithDeletionsTriggeringSync:(void *)self6 syncTimeoutInSeconds:(void *)self7 triggeredSyncDelayInSeconds:;
@end

@implementation _DKSyncPolicy

+ (id)configurationPlist
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v0 = MEMORY[0x1E695DF20];
  v1 = +[_DKSyncPolicy syncPolicyConfigPath];
  v2 = [v0 dictionaryWithContentsOfFile:v1];

  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = +[_DKSyncPolicy syncPolicyConfigPath];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_INFO, "Failed to read policy file: %@", &v7, 0xCu);
    }

    v2 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (Class)policyFromDictionary:(uint64_t)dictionary
{
  v2 = a2;
  v94 = objc_opt_self();
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = MEMORY[0x1E695E0F8];
  }

  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 objectForKeyedSubscript:@"SyncDisabled"];
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v2 objectForKeyedSubscript:@"SyncDisabled"];
  v8 = v7;
  if (isKindOfClass)
  {
    v100 = v7;
  }

  else
  {

    if (v8)
    {
      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v9];
      }
    }

    v100 = 0;
  }

  v10 = [v2 objectForKeyedSubscript:@"AlwaysSyncUpAndDown"];
  v11 = objc_opt_isKindOfClass();

  v12 = [v2 objectForKeyedSubscript:@"AlwaysSyncUpAndDown"];
  v13 = v12;
  if (v11)
  {
    v99 = v12;
  }

  else
  {

    if (v13)
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v14];
      }
    }

    v99 = 0;
  }

  v15 = [v2 objectForKeyedSubscript:@"AssetThresholdInBytes"];
  v16 = objc_opt_isKindOfClass();

  v17 = [v2 objectForKeyedSubscript:@"AssetThresholdInBytes"];
  v18 = v17;
  if (v16)
  {
    v98 = v17;
  }

  else
  {

    if (v18)
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v19];
      }
    }

    v98 = 0;
  }

  v20 = [v2 objectForKeyedSubscript:@"FirstSyncPeriodInDays"];
  v21 = objc_opt_isKindOfClass();

  v22 = [v2 objectForKeyedSubscript:@"FirstSyncPeriodInDays"];
  v23 = v22;
  if (v21)
  {
    v96 = v22;
  }

  else
  {

    if (v23)
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v24];
      }
    }

    v96 = 0;
  }

  v25 = [v2 objectForKeyedSubscript:@"MaxSyncDownIntervalInDays"];
  v26 = objc_opt_isKindOfClass();

  v27 = [v2 objectForKeyedSubscript:@"MaxSyncDownIntervalInDays"];
  v28 = v27;
  if (v26)
  {
    v97 = v27;
  }

  else
  {

    if (v28)
    {
      v29 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v29];
      }
    }

    v97 = 0;
  }

  v30 = [v2 objectForKeyedSubscript:@"MinSyncIntervalInSeconds"];
  v31 = objc_opt_isKindOfClass();

  v32 = [v2 objectForKeyedSubscript:@"MinSyncIntervalInSeconds"];
  v33 = v32;
  if (v31)
  {
    v93 = v32;
  }

  else
  {

    if (v33)
    {
      v34 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v34];
      }
    }

    v93 = 0;
  }

  v35 = [v2 objectForKeyedSubscript:@"MinSyncsPerDay"];
  v36 = objc_opt_isKindOfClass();

  v37 = [v2 objectForKeyedSubscript:@"MinSyncsPerDay"];
  v38 = v37;
  if (v36)
  {
    v92 = v37;
  }

  else
  {

    if (v38)
    {
      v39 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v39];
      }
    }

    v92 = 0;
  }

  v40 = [v2 objectForKeyedSubscript:@"MaxSyncsPerDay"];
  v41 = objc_opt_isKindOfClass();

  v42 = [v2 objectForKeyedSubscript:@"MaxSyncsPerDay"];
  v43 = v42;
  if (v41)
  {
    v91 = v42;
  }

  else
  {

    if (v43)
    {
      v44 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v44];
      }
    }

    v91 = 0;
  }

  v45 = [v2 objectForKeyedSubscript:@"NumChangesTriggeringSync"];
  v46 = objc_opt_isKindOfClass();

  v47 = [v2 objectForKeyedSubscript:@"NumChangesTriggeringSync"];
  v48 = v47;
  if (v46)
  {
    v90 = v47;
  }

  else
  {

    if (v48)
    {
      v49 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v49];
      }
    }

    v90 = 0;
  }

  v50 = [v2 objectForKeyedSubscript:@"PolicyDownloadIntervalInDays"];
  v51 = objc_opt_isKindOfClass();

  v52 = [v2 objectForKeyedSubscript:@"PolicyDownloadIntervalInDays"];
  if (v51)
  {
    v89 = v52;
    v53 = v4;
  }

  else
  {
    v54 = v52;

    v53 = v4;
    if (v54)
    {
      v55 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v55];
      }
    }

    v89 = 0;
  }

  v56 = [v2 objectForKeyedSubscript:@"PushTriggersSync"];
  v57 = objc_opt_isKindOfClass();

  v58 = [v2 objectForKeyedSubscript:@"PushTriggersSync"];
  v59 = v58;
  if ((v57 & 1) == 0)
  {

    if (v59)
    {
      v60 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v60];
      }

      v59 = 0;
    }
  }

  v61 = [v2 objectForKeyedSubscript:@"SingleDeviceSyncIntervalInDays"];
  v62 = objc_opt_isKindOfClass();

  v63 = [v2 objectForKeyedSubscript:@"SingleDeviceSyncIntervalInDays"];
  v64 = v63;
  if (v62)
  {
    v65 = v63;
  }

  else
  {

    if (v64)
    {
      v66 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v66];
      }
    }

    v65 = 0;
  }

  v67 = [v2 objectForKeyedSubscript:@"StreamNamesWithAdditionsTriggeringSync"];
  v68 = objc_opt_isKindOfClass();

  v69 = [v2 objectForKeyedSubscript:@"StreamNamesWithAdditionsTriggeringSync"];
  v70 = v69;
  if (v68)
  {
    v71 = v69;
  }

  else
  {

    if (v70)
    {
      v72 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v53, v72];
      }
    }

    v71 = 0;
  }

  v73 = [v2 objectForKeyedSubscript:@"StreamNamesWithDeletionsTriggeringSync"];
  v74 = objc_opt_isKindOfClass();

  v75 = [v2 objectForKeyedSubscript:@"StreamNamesWithDeletionsTriggeringSync"];
  v76 = v75;
  if ((v74 & 1) == 0)
  {

    if (v76)
    {
      v77 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v53, v77];
      }

      v76 = 0;
    }
  }

  v78 = [v2 objectForKeyedSubscript:@"SyncTimeoutInSeconds"];
  v79 = objc_opt_isKindOfClass();

  v80 = [v2 objectForKeyedSubscript:@"SyncTimeoutInSeconds"];
  v81 = v80;
  if ((v79 & 1) == 0)
  {

    if (v81)
    {
      v82 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v82];
      }

      v81 = 0;
    }
  }

  v83 = [v2 objectForKeyedSubscript:@"TriggeredSyncDelayInSeconds"];
  v84 = objc_opt_isKindOfClass();

  v85 = [v2 objectForKeyedSubscript:@"TriggeredSyncDelayInSeconds"];
  v86 = v85;
  if ((v84 & 1) == 0)
  {

    if (v86)
    {
      v87 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        [(_DKSyncPolicy *)v2 policyFromDictionary:v3, v87];
      }

      v86 = 0;
    }
  }

  v95 = [(_DKSyncPolicy *)[v94 alloc] initWithSyncDisabled:v100 alwaysSyncUpAndDown:v99 assetThresholdInBytes:v98 firstSyncPeriodInDays:v96 maxSyncDownIntervalInDays:v97 minSyncIntervalInSeconds:v93 minSyncsPerDay:v92 maxSyncsPerDay:v91 numChangesTriggeringSync:v90 policyDownloadIntervalInDays:v89 pushTriggersSync:v59 singleDeviceSyncIntervalInDays:v65 streamNamesWithAdditionsTriggeringSync:v71 streamNamesWithDeletionsTriggeringSync:v76 syncTimeoutInSeconds:v81 triggeredSyncDelayInSeconds:v86];

  return v95;
}

+ (id)forceSyncPolicy
{
  result = [self policy];
  if (result)
  {
    *(result + 11) = 1;
    *(result + 9) = 1;
  }

  return result;
}

+ (void)possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:
{
  objc_opt_self();
  if (!+[_DKCloudUtilities isUnitTesting])
  {
    v0 = +[_DKCloudUtilities sharedInstance];
    [v0 isCloudSyncAvailable];
  }
}

+ (id)syncPolicyConfigPath
{
  objc_opt_self();
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v0 pathForResource:@"com.apple.coreduet.knowledge.syncPolicies" ofType:@"plist"];

  return v1;
}

- (double)hoursBetweenSyncsWhenIsSingleDevice:(BOOL)device
{
  deviceCopy = device;
  if (![(_DKSyncPolicy *)self minSyncsPerDay])
  {
    return -1.0;
  }

  if (deviceCopy)
  {
    return [(_DKSyncPolicy *)self singleDeviceSyncIntervalInDays]* 24.0;
  }

  return 24.0 / [(_DKSyncPolicy *)self minSyncsPerDay];
}

+ (id)policy
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = +[_DKSyncPolicy configurationPlist];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = +[_DKSync2Policy userDefaults];
  v6 = [v5 valueForKey:@"CloudSyncPolicy"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 addEntriesFromDictionary:v6];
  }

  v7 = [(_DKSyncPolicy *)self policyFromDictionary:v3];
  if (([v3 isEqualToDictionary:policy_previousPolicyDict] & 1) == 0)
  {
    v8 = policy_previousPolicyDict;
    v9 = +[_CDLogging syncChannel];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        *v15 = 138412290;
        *&v15[4] = v7;
        v11 = "policy changed to: %@";
LABEL_21:
        _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, v11, v15, 0xCu);
      }
    }

    else if (v10)
    {
      *v15 = 138412290;
      *&v15[4] = v7;
      v11 = "policy: %@";
      goto LABEL_21;
    }

    objc_storeStrong(&policy_previousPolicyDict, v3);
  }

  if (+[_DKCloudUtilities isUnitTesting](_DKCloudUtilities, "isUnitTesting", *v15) && [v7 syncDisabled])
  {
    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Enabling sync due to unit testing", v15, 2u);
    }

    if (v7)
    {
      v7[8] = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)initWithSyncDisabled:(void *)disabled alwaysSyncUpAndDown:(void *)down assetThresholdInBytes:(void *)bytes firstSyncPeriodInDays:(void *)days maxSyncDownIntervalInDays:(void *)inDays minSyncIntervalInSeconds:(void *)seconds minSyncsPerDay:(void *)day maxSyncsPerDay:(void *)self0 numChangesTriggeringSync:(void *)self1 policyDownloadIntervalInDays:(void *)self2 pushTriggersSync:(void *)self3 singleDeviceSyncIntervalInDays:(void *)self4 streamNamesWithAdditionsTriggeringSync:(void *)self5 streamNamesWithDeletionsTriggeringSync:(void *)self6 syncTimeoutInSeconds:(void *)self7 triggeredSyncDelayInSeconds:
{
  v55 = a2;
  disabledCopy = disabled;
  downCopy = down;
  bytesCopy = bytes;
  daysCopy = days;
  inDaysCopy = inDays;
  secondsCopy = seconds;
  dayCopy = day;
  perDayCopy = perDay;
  syncCopy = sync;
  intervalInDaysCopy = intervalInDays;
  triggersSyncCopy = triggersSync;
  syncIntervalInDaysCopy = syncIntervalInDays;
  triggeringSyncCopy = triggeringSync;
  deletionsTriggeringSyncCopy = deletionsTriggeringSync;
  inSecondsCopy = inSeconds;
  if (!self)
  {
    v30 = 0;
    v31 = disabledCopy;
    v32 = v55;
    goto LABEL_64;
  }

  v61.receiver = self;
  v61.super_class = _DKSyncPolicy;
  v30 = objc_msgSendSuper2(&v61, sel_init);
  v31 = disabledCopy;
  if (!v30)
  {
    v32 = v55;
    goto LABEL_64;
  }

  v32 = v55;
  if (v55)
  {
    bOOLValue = [v55 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  *(v30 + 8) = bOOLValue;
  if (disabledCopy)
  {
    bOOLValue2 = [disabledCopy BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  *(v30 + 9) = bOOLValue2;
  if (downCopy)
  {
    unsignedIntegerValue = [downCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 20480;
  }

  *(v30 + 2) = unsignedIntegerValue;
  if (bytesCopy)
  {
    unsignedIntegerValue2 = [bytesCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 7;
  }

  *(v30 + 3) = unsignedIntegerValue2;
  if (daysCopy)
  {
    unsignedIntegerValue3 = [daysCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue3 = 7;
  }

  *(v30 + 4) = unsignedIntegerValue3;
  if (inDaysCopy)
  {
    unsignedIntegerValue4 = [inDaysCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue4 = 60;
  }

  *(v30 + 5) = unsignedIntegerValue4;
  if (secondsCopy)
  {
    unsignedIntegerValue5 = [secondsCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue5 = 4;
  }

  *(v30 + 6) = unsignedIntegerValue5;
  if (dayCopy)
  {
    unsignedIntegerValue6 = [dayCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue6 = 6;
  }

  *(v30 + 7) = unsignedIntegerValue6;
  if (perDayCopy)
  {
    unsignedIntegerValue7 = [perDayCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue7 = 0;
  }

  *(v30 + 8) = unsignedIntegerValue7;
  if (syncCopy)
  {
    unsignedIntegerValue8 = [syncCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue8 = 7;
  }

  *(v30 + 14) = unsignedIntegerValue8;
  if (intervalInDaysCopy)
  {
    bOOLValue3 = [intervalInDaysCopy BOOLValue];
  }

  else
  {
    bOOLValue3 = 1;
  }

  *(v30 + 10) = bOOLValue3;
  if (triggersSyncCopy)
  {
    unsignedIntegerValue9 = [triggersSyncCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue9 = 1;
  }

  *(v30 + 9) = unsignedIntegerValue9;
  objc_storeStrong(v30 + 10, syncIntervalInDays);
  objc_storeStrong(v30 + 11, triggeringSync);
  if (deletionsTriggeringSyncCopy)
  {
    unsignedIntegerValue10 = [deletionsTriggeringSyncCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue10 = 30;
  }

  *(v30 + 12) = unsignedIntegerValue10;
  if (inSecondsCopy)
  {
    unsignedIntegerValue11 = [inSecondsCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue11 = 10;
  }

  *(v30 + 13) = unsignedIntegerValue11;
  if (*(v30 + 5) > 0x15180uLL)
  {
    *(v30 + 5) = 86400;
  }

  v47 = *(v30 + 7);
  if (v47 >= 0x121)
  {
    v47 = 288;
    *(v30 + 7) = 288;
  }

  if (*(v30 + 6) > v47)
  {
    *(v30 + 3) = vdupq_n_s64(4uLL);
  }

  v48 = *(v30 + 14);
  if (!v48)
  {
    v49 = 1;
    goto LABEL_56;
  }

  if (v48 >= 0x16E)
  {
    v49 = 365;
LABEL_56:
    *(v30 + 14) = v49;
  }

  if (!*(v30 + 9))
  {
    *(v30 + 9) = 1;
  }

  if (!*(v30 + 12))
  {
    *(v30 + 12) = 30;
  }

  if (unsignedIntegerValue11 > 0x15180)
  {
    *(v30 + 13) = 86400;
  }

  +[_DKSyncPolicy possiblyDownloadSyncPolicyWithPolicyDownloadIntervalInDays:];
LABEL_64:

  return v30;
}

- (id)description
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"%@ { \n"];

  [(_DKSyncPolicy *)self syncDisabled];
  OUTLINED_FUNCTION_7_0();
  [v4 appendFormat:@"                           syncDisabled: %@\n"];
  if ([(_DKSyncPolicy *)self forceSync])
  {
    [(_DKSyncPolicy *)self forceSync];
    OUTLINED_FUNCTION_7_0();
    [v4 appendFormat:@"                              forceSync: %@\n"];
  }

  [(_DKSyncPolicy *)self alwaysSyncUpAndDown];
  OUTLINED_FUNCTION_7_0();
  [v4 appendFormat:@"                    alwaysSyncUpAndDown: %@\n"];
  [OUTLINED_FUNCTION_6_4() assetThresholdInBytes];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                  assetThresholdInBytes: %@\n"];

  [OUTLINED_FUNCTION_6_4() firstSyncPeriodInDays];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                  firstSyncPeriodInDays: %@\n"];

  [OUTLINED_FUNCTION_6_4() maxSyncDownIntervalInDays];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"              maxSyncDownIntervalInDays: %@\n"];

  [OUTLINED_FUNCTION_6_4() minSyncIntervalInSeconds];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"               minSyncIntervalInSeconds: %@\n"];

  [OUTLINED_FUNCTION_6_4() minSyncsPerDay];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                         minSyncsPerDay: %@\n"];

  [OUTLINED_FUNCTION_6_4() maxSyncsPerDay];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                         maxSyncsPerDay: %@\n"];

  if ([(_DKSyncPolicy *)self numChangesTriggeringSync])
  {
    [OUTLINED_FUNCTION_6_4() numChangesTriggeringSync];
    [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    [v4 appendFormat:@"               numChangesTriggeringSync: %@\n"];
  }

  else
  {
    [v4 appendFormat:@"               numChangesTriggeringSync: %@\n", @"disabled"];
  }

  if (self)
  {
    policyDownloadIntervalInDays = self->_policyDownloadIntervalInDays;
  }

  else
  {
    policyDownloadIntervalInDays = 0;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:policyDownloadIntervalInDays];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"           policyDownloadIntervalInDays: %@\n"];

  [(_DKSyncPolicy *)self pushTriggersSync];
  OUTLINED_FUNCTION_7_0();
  [v4 appendFormat:@"                       pushTriggersSync: %@\n"];
  [OUTLINED_FUNCTION_6_4() singleDeviceSyncIntervalInDays];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"         singleDeviceSyncIntervalInDays: %@\n"];

  [(_DKSyncPolicy *)self streamNamesWithAdditionsTriggeringSync];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_11_2();
  v11 = _CDPrettyPrintCollection(v7, v8, v9, v10);
  [v4 appendFormat:@" streamNamesWithAdditionsTriggeringSync: %@\n", v11];

  [(_DKSyncPolicy *)self streamNamesWithDeletionsTriggeringSync];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_11_2();
  v16 = _CDPrettyPrintCollection(v12, v13, v14, v15);
  [v4 appendFormat:@" streamNamesWithDeletionsTriggeringSync: %@\n", v16];

  [OUTLINED_FUNCTION_6_4() syncTimeoutInSeconds];
  [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4_0();
  [v4 appendFormat:@"                   syncTimeoutInSeconds: %@\n"];

  [OUTLINED_FUNCTION_6_4() triggeredSyncDelayInSeconds];
  v17 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  [v4 appendFormat:@"            triggeredSyncDelayInSeconds: %@\n", v17];

  [v4 appendString:@"}\n"];

  return v4;
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)queryStartDateFromLastDaySyncDates:lastSyncDate:isSingleDevice:isTriggeredSync:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end