@interface MAAutoAssetUpdatePolicy
+ (id)activityIntervalString:(int64_t)a3;
- (MAAutoAssetUpdatePolicy)initWithCoder:(id)a3;
- (id)initUpdatePolicy:(id)a3 forAssetType:(id)a4;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetUpdatePolicy

- (id)initUpdatePolicy:(id)a3 forAssetType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = MAAutoAssetUpdatePolicy;
  v9 = [(MAAutoAssetUpdatePolicy *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updatePolicyName, a3);
    objc_storeStrong(&v10->_assetType, a4);
    categoryList = v10->_categoryList;
    v10->_categoryList = 0;

    *&v10->_checkForNewerAsUserInitiated = 0;
    v10->_newerFoundAutoDownloadPostponed = 0;
    *&v10->_checkForNewerIntervalSecs = xmmword_197B62300;
    *&v10->_newerFoundAutoDownloadJitterSecs = xmmword_197B62310;
    *&v10->_revokeIgnoredForUnlockedPurge = 0;
    v10->_allowLockWhenFilesystemSpaceCritical = 0;
    *&v10->_newerFoundUserInitiatedDownloadTimeoutSecs = xmmword_197B62320;
    *&v10->_maximumUnlockAfterUsageSecs = xmmword_197B62320;
    additionalUpdatePolicyControl = v10->_additionalUpdatePolicyControl;
    v10->_maximumPreventGarbageCollectionSecs = 900;
    v10->_additionalUpdatePolicyControl = 0;

    *&v10->_blockIfBeforeFirstUnlock = 0;
    *&v10->_allowAutoCheckForNewerWhenBatteryLow = 0;
    limitCellularByRestrictedTimePeriods = v10->_limitCellularByRestrictedTimePeriods;
    v10->_limitCellularByRestrictedTimePeriods = 0;

    limitWiFiByRestrictedTimePeriods = v10->_limitWiFiByRestrictedTimePeriods;
    v10->_limitWiFiByRestrictedTimePeriods = 0;

    limitCellularByFeeAgreement = v10->_limitCellularByFeeAgreement;
    v10->_limitCellularByFeeAgreement = 0;

    limitByNetworkType = v10->_limitByNetworkType;
    v10->_limitByNetworkType = 0;

    assetAudienceUUID = v10->_assetAudienceUUID;
    v10->_assetAudienceUUID = 0;
  }

  return v10;
}

- (MAAutoAssetUpdatePolicy)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MAAutoAssetUpdatePolicy;
  v5 = [(MAAutoAssetUpdatePolicy *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatePolicyName"];
    updatePolicyName = v5->_updatePolicyName;
    v5->_updatePolicyName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [v10 initWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"categoryList"];
    categoryList = v5->_categoryList;
    v5->_categoryList = v13;

    v5->_checkForNewerIntervalSecs = [v4 decodeIntegerForKey:@"checkForNewerIntervalSecs"];
    v5->_checkForNewerTimeoutSecs = [v4 decodeIntegerForKey:@"checkForNewerTimeoutSecs"];
    v5->_checkForNewerAsUserInitiated = [v4 decodeBoolForKey:@"checkForNewerAsUserInitiated"];
    v5->_checkForNewerWithoutRampEnabled = [v4 decodeBoolForKey:@"checkForNewerWithoutRampEnabled"];
    v5->_newerFoundAutoDownloadPostponed = [v4 decodeBoolForKey:@"newerFoundAutoDownloadPostponed"];
    v5->_newerFoundAutoDownloadJitterSecs = [v4 decodeIntegerForKey:@"newerFoundAutoDownloadJitterSecs"];
    v5->_newerFoundAutoDownloadTimeoutSecs = [v4 decodeIntegerForKey:@"newerFoundAutoDownloadTimeoutSecs"];
    v5->_newerFoundUserInitiatedDownloadTimeoutSecs = [v4 decodeIntegerForKey:@"newerFoundUserInitiatedDownloadTimeoutSecs"];
    v5->_revokeIgnoredForUnlockedPurge = [v4 decodeBoolForKey:@"revokeIgnoredForUnlockedPurge"];
    v5->_revokeIgnoredForLockedContent = [v4 decodeBoolForKey:@"revokeIgnoredForLockedContent"];
    v5->_revokeTriggersLockedPurge = [v4 decodeBoolForKey:@"revokeTriggersLockedPurge"];
    v5->_allowInterestAcrossTermination = [v4 decodeBoolForKey:@"allowInterestAcrossTermination"];
    v5->_allowLockAcrossTermination = [v4 decodeBoolForKey:@"allowLockAcrossTermination"];
    v5->_allowLockAcrossReboot = [v4 decodeBoolForKey:@"allowLockAcrossReboot"];
    v5->_allowLockAcrossOTAUpdate = [v4 decodeBoolForKey:@"allowLockAcrossOTAUpdate"];
    v5->_allowLockOfRevokedContent = [v4 decodeBoolForKey:@"allowLockOfRevokedContent"];
    v5->_allowLockWhenFilesystemSpaceCritical = [v4 decodeBoolForKey:@"allowLockWhenFilesystemSpaceCritical"];
    v5->_defaultUnlockAfterUsageSecs = [v4 decodeIntegerForKey:@"defaultUnlockAfterUsageSecs"];
    v5->_maximumUnlockAfterUsageSecs = [v4 decodeIntegerForKey:@"maximumUnlockAfterUsageSecs"];
    v5->_defaultPreventGarbageCollectionSecs = [v4 decodeIntegerForKey:@"defaultPreventGarbageCollectionSecs"];
    v5->_maximumPreventGarbageCollectionSecs = [v4 decodeIntegerForKey:@"maximumPreventGarbageCollectionSecs"];
    v15 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v25[4] = objc_opt_class();
    v25[5] = objc_opt_class();
    v25[6] = objc_opt_class();
    v25[7] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:8];
    v17 = [v15 setWithArray:v16];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"additionalUpdatePolicyControl"];
    additionalUpdatePolicyControl = v5->_additionalUpdatePolicyControl;
    v5->_additionalUpdatePolicyControl = v18;

    v5->_allowAutoCheckForNewerWhenBatteryLow = [v4 decodeBoolForKey:@"allowAutoCheckForNewerWhenBatteryLow"];
    v5->_allowAutoCheckForNewerWhenCPUHigh = [v4 decodeBoolForKey:@"allowAutoCheckForNewerWhenCPUHigh"];
    v5->_allowAutoCheckForNewerOverExpensive = [v4 decodeBoolForKey:@"allowAutoCheckForNewerOverExpensive"];
    v5->_allowAutoDownloadWhenBatteryLow = [v4 decodeBoolForKey:@"allowAutoDownloadWhenBatteryLow"];
    v5->_allowAutoDownloadWhenCPUHigh = [v4 decodeBoolForKey:@"allowAutoDownloadWhenCPUHigh"];
    v5->_blockIfBeforeFirstUnlock = [v4 decodeBoolForKey:@"blockIfBeforeFirstUnlock"];
    v5->_blockAutoCheckForNewerOverCellular = [v4 decodeBoolForKey:@"blockAutoCheckForNewerOverCellular"];
    v5->_blockAutoDownloadOverCellular = [v4 decodeBoolForKey:@"blockAutoDownloadOverCellular"];
    v5->_blockUserInitiatedDownloadOverCellular = [v4 decodeBoolForKey:@"blockUserInitiatedDownloadOverCellular"];
    v5->_blockUserInitiatedDownloadWhenBatteryLow = [v4 decodeBoolForKey:@"blockUserInitiatedDownloadWhenBatteryLow"];
    v5->_blockUserInitiatedDownloadWhenCPUHigh = [v4 decodeBoolForKey:@"blockUserInitiatedDownloadWhenCPUHigh"];
    v5->_blockUserInitiatedDownloadOverExpensive = [v4 decodeBoolForKey:@"blockUserInitiatedDownloadOverExpensive"];
    v5->_downloadWithoutPreferenceForWiFi = [v4 decodeBoolForKey:@"downloadWithoutPreferenceForWiFi"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetAudienceUUID"];
    assetAudienceUUID = v5->_assetAudienceUUID;
    v5->_assetAudienceUUID = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetUpdatePolicy *)self updatePolicyName];
  [v4 encodeObject:v5 forKey:@"updatePolicyName"];

  v6 = [(MAAutoAssetUpdatePolicy *)self assetType];
  [v4 encodeObject:v6 forKey:@"assetType"];

  v7 = [(MAAutoAssetUpdatePolicy *)self categoryList];
  [v4 encodeObject:v7 forKey:@"categoryList"];

  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy checkForNewerIntervalSecs](self forKey:{"checkForNewerIntervalSecs"), @"checkForNewerIntervalSecs"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy checkForNewerTimeoutSecs](self forKey:{"checkForNewerTimeoutSecs"), @"checkForNewerTimeoutSecs"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy checkForNewerAsUserInitiated](self forKey:{"checkForNewerAsUserInitiated"), @"checkForNewerAsUserInitiated"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy checkForNewerWithoutRampEnabled](self forKey:{"checkForNewerWithoutRampEnabled"), @"checkForNewerWithoutRampEnabled"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy newerFoundAutoDownloadPostponed](self forKey:{"newerFoundAutoDownloadPostponed"), @"newerFoundAutoDownloadPostponed"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy newerFoundAutoDownloadJitterSecs](self forKey:{"newerFoundAutoDownloadJitterSecs"), @"newerFoundAutoDownloadJitterSecs"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy newerFoundAutoDownloadTimeoutSecs](self forKey:{"newerFoundAutoDownloadTimeoutSecs"), @"newerFoundAutoDownloadTimeoutSecs"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy newerFoundUserInitiatedDownloadTimeoutSecs](self forKey:{"newerFoundUserInitiatedDownloadTimeoutSecs"), @"newerFoundUserInitiatedDownloadTimeoutSecs"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy revokeIgnoredForUnlockedPurge](self forKey:{"revokeIgnoredForUnlockedPurge"), @"revokeIgnoredForUnlockedPurge"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy revokeIgnoredForLockedContent](self forKey:{"revokeIgnoredForLockedContent"), @"revokeIgnoredForLockedContent"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy revokeTriggersLockedPurge](self forKey:{"revokeTriggersLockedPurge"), @"revokeTriggersLockedPurge"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowInterestAcrossTermination](self forKey:{"allowInterestAcrossTermination"), @"allowInterestAcrossTermination"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowLockAcrossTermination](self forKey:{"allowLockAcrossTermination"), @"allowLockAcrossTermination"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowLockAcrossReboot](self forKey:{"allowLockAcrossReboot"), @"allowLockAcrossReboot"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowLockAcrossOTAUpdate](self forKey:{"allowLockAcrossOTAUpdate"), @"allowLockAcrossOTAUpdate"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowLockOfRevokedContent](self forKey:{"allowLockOfRevokedContent"), @"allowLockOfRevokedContent"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowLockWhenFilesystemSpaceCritical](self forKey:{"allowLockWhenFilesystemSpaceCritical"), @"allowLockWhenFilesystemSpaceCritical"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy defaultUnlockAfterUsageSecs](self forKey:{"defaultUnlockAfterUsageSecs"), @"defaultUnlockAfterUsageSecs"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy maximumUnlockAfterUsageSecs](self forKey:{"maximumUnlockAfterUsageSecs"), @"maximumUnlockAfterUsageSecs"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy defaultPreventGarbageCollectionSecs](self forKey:{"defaultPreventGarbageCollectionSecs"), @"defaultPreventGarbageCollectionSecs"}];
  [v4 encodeInteger:-[MAAutoAssetUpdatePolicy maximumPreventGarbageCollectionSecs](self forKey:{"maximumPreventGarbageCollectionSecs"), @"maximumPreventGarbageCollectionSecs"}];
  v8 = [(MAAutoAssetUpdatePolicy *)self additionalUpdatePolicyControl];
  [v4 encodeObject:v8 forKey:@"additionalUpdatePolicyControl"];

  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowAutoCheckForNewerWhenBatteryLow](self forKey:{"allowAutoCheckForNewerWhenBatteryLow"), @"allowAutoCheckForNewerWhenBatteryLow"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowAutoCheckForNewerWhenCPUHigh](self forKey:{"allowAutoCheckForNewerWhenCPUHigh"), @"allowAutoCheckForNewerWhenCPUHigh"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowAutoCheckForNewerOverExpensive](self forKey:{"allowAutoCheckForNewerOverExpensive"), @"allowAutoCheckForNewerOverExpensive"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowAutoDownloadWhenBatteryLow](self forKey:{"allowAutoDownloadWhenBatteryLow"), @"allowAutoDownloadWhenBatteryLow"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy allowAutoDownloadWhenCPUHigh](self forKey:{"allowAutoDownloadWhenCPUHigh"), @"allowAutoDownloadWhenCPUHigh"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockIfBeforeFirstUnlock](self forKey:{"blockIfBeforeFirstUnlock"), @"blockIfBeforeFirstUnlock"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockAutoCheckForNewerOverCellular](self forKey:{"blockAutoCheckForNewerOverCellular"), @"blockAutoCheckForNewerOverCellular"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockAutoDownloadOverCellular](self forKey:{"blockAutoDownloadOverCellular"), @"blockAutoDownloadOverCellular"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadOverCellular](self forKey:{"blockUserInitiatedDownloadOverCellular"), @"blockUserInitiatedDownloadOverCellular"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadWhenBatteryLow](self forKey:{"blockUserInitiatedDownloadWhenBatteryLow"), @"blockUserInitiatedDownloadWhenBatteryLow"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadWhenCPUHigh](self forKey:{"blockUserInitiatedDownloadWhenCPUHigh"), @"blockUserInitiatedDownloadWhenCPUHigh"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadOverExpensive](self forKey:{"blockUserInitiatedDownloadOverExpensive"), @"blockUserInitiatedDownloadOverExpensive"}];
  [v4 encodeBool:-[MAAutoAssetUpdatePolicy downloadWithoutPreferenceForWiFi](self forKey:{"downloadWithoutPreferenceForWiFi"), @"downloadWithoutPreferenceForWiFi"}];
  v9 = [(MAAutoAssetUpdatePolicy *)self assetAudienceUUID];
  [v4 encodeObject:v9 forKey:@"assetAudienceUUID"];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetUpdatePolicy *)self updatePolicyName];
  v5 = [(MAAutoAssetUpdatePolicy *)self assetType];
  if (v5)
  {
    v6 = [(MAAutoAssetUpdatePolicy *)self assetType];
  }

  else
  {
    v6 = @"ALL-ASSET-TYPES";
  }

  v7 = [MAAutoAssetUpdatePolicy activityIntervalString:[(MAAutoAssetUpdatePolicy *)self checkForNewerIntervalSecs]];
  v8 = [MAAutoAssetUpdatePolicy activityIntervalString:[(MAAutoAssetUpdatePolicy *)self newerFoundAutoDownloadJitterSecs]];
  v9 = [(MAAutoAssetUpdatePolicy *)self blockIfBeforeFirstUnlock];
  v10 = @"N";
  if (v9)
  {
    v10 = @"Y";
  }

  v11 = [v3 stringWithFormat:@"[%@(%@)|checkForNewerInterval:%@, newerFoundAutoDownloadJitter:%@, blockIfBeforeFirstUnlock:%@]", v4, v6, v7, v8, v10];

  if (v5)
  {
  }

  return v11;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MAAutoAssetUpdatePolicy *)self updatePolicyName];
  [v3 setSafeObject:v4 forKey:@"updatePolicyName"];

  v5 = [(MAAutoAssetUpdatePolicy *)self assetType];
  if (v5)
  {
    v6 = [(MAAutoAssetUpdatePolicy *)self assetType];
    [v3 setSafeObject:v6 forKey:@"assetType"];
  }

  else
  {
    [v3 setSafeObject:@"ALL-ASSET-TYPES" forKey:@"assetType"];
  }

  v7 = [MAAutoAssetUpdatePolicy activityIntervalString:[(MAAutoAssetUpdatePolicy *)self checkForNewerIntervalSecs]];
  [v3 setSafeObject:v7 forKey:@"checkForNewerIntervalSecs"];

  v8 = [MAAutoAssetUpdatePolicy activityIntervalString:[(MAAutoAssetUpdatePolicy *)self newerFoundAutoDownloadJitterSecs]];
  [v3 setSafeObject:v8 forKey:@"newerFoundAutoDownloadJitterSecs"];

  if ([(MAAutoAssetUpdatePolicy *)self blockIfBeforeFirstUnlock])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setSafeObject:v9 forKey:@"blockIfBeforeFirstUnlock"];
  return v3;
}

+ (id)activityIntervalString:(int64_t)a3
{
  if (a3 < 1)
  {
    v7 = @"DISABLED";
  }

  else
  {
    v4 = (a3 % 0x15180uLL) % 3600;
    v5 = v4 / 60;
    v6 = v4 % 60;
    if (a3 >> 7 >= 0x2A3)
    {
      if ((a3 - 86400) >= 0x15180)
      {
        v9 = @"s";
      }

      else
      {
        v9 = &stru_1F0C1B388;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld day%@ %02ld:%02ld:%02ld", a3 / 0x15180uLL, v9, (a3 % 0x15180uLL) / 3600, v5, v6];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld:%02ld:%02ld", (a3 % 0x15180uLL) / 3600, v5, v6, v10, v11];
    }
    v7 = ;
  }

  return v7;
}

@end