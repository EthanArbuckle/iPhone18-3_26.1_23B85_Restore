@interface MAAutoAssetUpdatePolicy
+ (id)activityIntervalString:(int64_t)string;
- (MAAutoAssetUpdatePolicy)initWithCoder:(id)coder;
- (id)initUpdatePolicy:(id)policy forAssetType:(id)type;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetUpdatePolicy

- (id)initUpdatePolicy:(id)policy forAssetType:(id)type
{
  policyCopy = policy;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = MAAutoAssetUpdatePolicy;
  v9 = [(MAAutoAssetUpdatePolicy *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updatePolicyName, policy);
    objc_storeStrong(&v10->_assetType, type);
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

- (MAAutoAssetUpdatePolicy)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = MAAutoAssetUpdatePolicy;
  v5 = [(MAAutoAssetUpdatePolicy *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatePolicyName"];
    updatePolicyName = v5->_updatePolicyName;
    v5->_updatePolicyName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"categoryList"];
    categoryList = v5->_categoryList;
    v5->_categoryList = v13;

    v5->_checkForNewerIntervalSecs = [coderCopy decodeIntegerForKey:@"checkForNewerIntervalSecs"];
    v5->_checkForNewerTimeoutSecs = [coderCopy decodeIntegerForKey:@"checkForNewerTimeoutSecs"];
    v5->_checkForNewerAsUserInitiated = [coderCopy decodeBoolForKey:@"checkForNewerAsUserInitiated"];
    v5->_checkForNewerWithoutRampEnabled = [coderCopy decodeBoolForKey:@"checkForNewerWithoutRampEnabled"];
    v5->_newerFoundAutoDownloadPostponed = [coderCopy decodeBoolForKey:@"newerFoundAutoDownloadPostponed"];
    v5->_newerFoundAutoDownloadJitterSecs = [coderCopy decodeIntegerForKey:@"newerFoundAutoDownloadJitterSecs"];
    v5->_newerFoundAutoDownloadTimeoutSecs = [coderCopy decodeIntegerForKey:@"newerFoundAutoDownloadTimeoutSecs"];
    v5->_newerFoundUserInitiatedDownloadTimeoutSecs = [coderCopy decodeIntegerForKey:@"newerFoundUserInitiatedDownloadTimeoutSecs"];
    v5->_revokeIgnoredForUnlockedPurge = [coderCopy decodeBoolForKey:@"revokeIgnoredForUnlockedPurge"];
    v5->_revokeIgnoredForLockedContent = [coderCopy decodeBoolForKey:@"revokeIgnoredForLockedContent"];
    v5->_revokeTriggersLockedPurge = [coderCopy decodeBoolForKey:@"revokeTriggersLockedPurge"];
    v5->_allowInterestAcrossTermination = [coderCopy decodeBoolForKey:@"allowInterestAcrossTermination"];
    v5->_allowLockAcrossTermination = [coderCopy decodeBoolForKey:@"allowLockAcrossTermination"];
    v5->_allowLockAcrossReboot = [coderCopy decodeBoolForKey:@"allowLockAcrossReboot"];
    v5->_allowLockAcrossOTAUpdate = [coderCopy decodeBoolForKey:@"allowLockAcrossOTAUpdate"];
    v5->_allowLockOfRevokedContent = [coderCopy decodeBoolForKey:@"allowLockOfRevokedContent"];
    v5->_allowLockWhenFilesystemSpaceCritical = [coderCopy decodeBoolForKey:@"allowLockWhenFilesystemSpaceCritical"];
    v5->_defaultUnlockAfterUsageSecs = [coderCopy decodeIntegerForKey:@"defaultUnlockAfterUsageSecs"];
    v5->_maximumUnlockAfterUsageSecs = [coderCopy decodeIntegerForKey:@"maximumUnlockAfterUsageSecs"];
    v5->_defaultPreventGarbageCollectionSecs = [coderCopy decodeIntegerForKey:@"defaultPreventGarbageCollectionSecs"];
    v5->_maximumPreventGarbageCollectionSecs = [coderCopy decodeIntegerForKey:@"maximumPreventGarbageCollectionSecs"];
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

    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"additionalUpdatePolicyControl"];
    additionalUpdatePolicyControl = v5->_additionalUpdatePolicyControl;
    v5->_additionalUpdatePolicyControl = v18;

    v5->_allowAutoCheckForNewerWhenBatteryLow = [coderCopy decodeBoolForKey:@"allowAutoCheckForNewerWhenBatteryLow"];
    v5->_allowAutoCheckForNewerWhenCPUHigh = [coderCopy decodeBoolForKey:@"allowAutoCheckForNewerWhenCPUHigh"];
    v5->_allowAutoCheckForNewerOverExpensive = [coderCopy decodeBoolForKey:@"allowAutoCheckForNewerOverExpensive"];
    v5->_allowAutoDownloadWhenBatteryLow = [coderCopy decodeBoolForKey:@"allowAutoDownloadWhenBatteryLow"];
    v5->_allowAutoDownloadWhenCPUHigh = [coderCopy decodeBoolForKey:@"allowAutoDownloadWhenCPUHigh"];
    v5->_blockIfBeforeFirstUnlock = [coderCopy decodeBoolForKey:@"blockIfBeforeFirstUnlock"];
    v5->_blockAutoCheckForNewerOverCellular = [coderCopy decodeBoolForKey:@"blockAutoCheckForNewerOverCellular"];
    v5->_blockAutoDownloadOverCellular = [coderCopy decodeBoolForKey:@"blockAutoDownloadOverCellular"];
    v5->_blockUserInitiatedDownloadOverCellular = [coderCopy decodeBoolForKey:@"blockUserInitiatedDownloadOverCellular"];
    v5->_blockUserInitiatedDownloadWhenBatteryLow = [coderCopy decodeBoolForKey:@"blockUserInitiatedDownloadWhenBatteryLow"];
    v5->_blockUserInitiatedDownloadWhenCPUHigh = [coderCopy decodeBoolForKey:@"blockUserInitiatedDownloadWhenCPUHigh"];
    v5->_blockUserInitiatedDownloadOverExpensive = [coderCopy decodeBoolForKey:@"blockUserInitiatedDownloadOverExpensive"];
    v5->_downloadWithoutPreferenceForWiFi = [coderCopy decodeBoolForKey:@"downloadWithoutPreferenceForWiFi"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetAudienceUUID"];
    assetAudienceUUID = v5->_assetAudienceUUID;
    v5->_assetAudienceUUID = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  updatePolicyName = [(MAAutoAssetUpdatePolicy *)self updatePolicyName];
  [coderCopy encodeObject:updatePolicyName forKey:@"updatePolicyName"];

  assetType = [(MAAutoAssetUpdatePolicy *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  categoryList = [(MAAutoAssetUpdatePolicy *)self categoryList];
  [coderCopy encodeObject:categoryList forKey:@"categoryList"];

  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy checkForNewerIntervalSecs](self forKey:{"checkForNewerIntervalSecs"), @"checkForNewerIntervalSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy checkForNewerTimeoutSecs](self forKey:{"checkForNewerTimeoutSecs"), @"checkForNewerTimeoutSecs"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy checkForNewerAsUserInitiated](self forKey:{"checkForNewerAsUserInitiated"), @"checkForNewerAsUserInitiated"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy checkForNewerWithoutRampEnabled](self forKey:{"checkForNewerWithoutRampEnabled"), @"checkForNewerWithoutRampEnabled"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy newerFoundAutoDownloadPostponed](self forKey:{"newerFoundAutoDownloadPostponed"), @"newerFoundAutoDownloadPostponed"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy newerFoundAutoDownloadJitterSecs](self forKey:{"newerFoundAutoDownloadJitterSecs"), @"newerFoundAutoDownloadJitterSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy newerFoundAutoDownloadTimeoutSecs](self forKey:{"newerFoundAutoDownloadTimeoutSecs"), @"newerFoundAutoDownloadTimeoutSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy newerFoundUserInitiatedDownloadTimeoutSecs](self forKey:{"newerFoundUserInitiatedDownloadTimeoutSecs"), @"newerFoundUserInitiatedDownloadTimeoutSecs"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy revokeIgnoredForUnlockedPurge](self forKey:{"revokeIgnoredForUnlockedPurge"), @"revokeIgnoredForUnlockedPurge"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy revokeIgnoredForLockedContent](self forKey:{"revokeIgnoredForLockedContent"), @"revokeIgnoredForLockedContent"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy revokeTriggersLockedPurge](self forKey:{"revokeTriggersLockedPurge"), @"revokeTriggersLockedPurge"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowInterestAcrossTermination](self forKey:{"allowInterestAcrossTermination"), @"allowInterestAcrossTermination"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowLockAcrossTermination](self forKey:{"allowLockAcrossTermination"), @"allowLockAcrossTermination"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowLockAcrossReboot](self forKey:{"allowLockAcrossReboot"), @"allowLockAcrossReboot"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowLockAcrossOTAUpdate](self forKey:{"allowLockAcrossOTAUpdate"), @"allowLockAcrossOTAUpdate"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowLockOfRevokedContent](self forKey:{"allowLockOfRevokedContent"), @"allowLockOfRevokedContent"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowLockWhenFilesystemSpaceCritical](self forKey:{"allowLockWhenFilesystemSpaceCritical"), @"allowLockWhenFilesystemSpaceCritical"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy defaultUnlockAfterUsageSecs](self forKey:{"defaultUnlockAfterUsageSecs"), @"defaultUnlockAfterUsageSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy maximumUnlockAfterUsageSecs](self forKey:{"maximumUnlockAfterUsageSecs"), @"maximumUnlockAfterUsageSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy defaultPreventGarbageCollectionSecs](self forKey:{"defaultPreventGarbageCollectionSecs"), @"defaultPreventGarbageCollectionSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetUpdatePolicy maximumPreventGarbageCollectionSecs](self forKey:{"maximumPreventGarbageCollectionSecs"), @"maximumPreventGarbageCollectionSecs"}];
  additionalUpdatePolicyControl = [(MAAutoAssetUpdatePolicy *)self additionalUpdatePolicyControl];
  [coderCopy encodeObject:additionalUpdatePolicyControl forKey:@"additionalUpdatePolicyControl"];

  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowAutoCheckForNewerWhenBatteryLow](self forKey:{"allowAutoCheckForNewerWhenBatteryLow"), @"allowAutoCheckForNewerWhenBatteryLow"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowAutoCheckForNewerWhenCPUHigh](self forKey:{"allowAutoCheckForNewerWhenCPUHigh"), @"allowAutoCheckForNewerWhenCPUHigh"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowAutoCheckForNewerOverExpensive](self forKey:{"allowAutoCheckForNewerOverExpensive"), @"allowAutoCheckForNewerOverExpensive"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowAutoDownloadWhenBatteryLow](self forKey:{"allowAutoDownloadWhenBatteryLow"), @"allowAutoDownloadWhenBatteryLow"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy allowAutoDownloadWhenCPUHigh](self forKey:{"allowAutoDownloadWhenCPUHigh"), @"allowAutoDownloadWhenCPUHigh"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockIfBeforeFirstUnlock](self forKey:{"blockIfBeforeFirstUnlock"), @"blockIfBeforeFirstUnlock"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockAutoCheckForNewerOverCellular](self forKey:{"blockAutoCheckForNewerOverCellular"), @"blockAutoCheckForNewerOverCellular"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockAutoDownloadOverCellular](self forKey:{"blockAutoDownloadOverCellular"), @"blockAutoDownloadOverCellular"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadOverCellular](self forKey:{"blockUserInitiatedDownloadOverCellular"), @"blockUserInitiatedDownloadOverCellular"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadWhenBatteryLow](self forKey:{"blockUserInitiatedDownloadWhenBatteryLow"), @"blockUserInitiatedDownloadWhenBatteryLow"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadWhenCPUHigh](self forKey:{"blockUserInitiatedDownloadWhenCPUHigh"), @"blockUserInitiatedDownloadWhenCPUHigh"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy blockUserInitiatedDownloadOverExpensive](self forKey:{"blockUserInitiatedDownloadOverExpensive"), @"blockUserInitiatedDownloadOverExpensive"}];
  [coderCopy encodeBool:-[MAAutoAssetUpdatePolicy downloadWithoutPreferenceForWiFi](self forKey:{"downloadWithoutPreferenceForWiFi"), @"downloadWithoutPreferenceForWiFi"}];
  assetAudienceUUID = [(MAAutoAssetUpdatePolicy *)self assetAudienceUUID];
  [coderCopy encodeObject:assetAudienceUUID forKey:@"assetAudienceUUID"];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  updatePolicyName = [(MAAutoAssetUpdatePolicy *)self updatePolicyName];
  assetType = [(MAAutoAssetUpdatePolicy *)self assetType];
  if (assetType)
  {
    assetType2 = [(MAAutoAssetUpdatePolicy *)self assetType];
  }

  else
  {
    assetType2 = @"ALL-ASSET-TYPES";
  }

  v7 = [MAAutoAssetUpdatePolicy activityIntervalString:[(MAAutoAssetUpdatePolicy *)self checkForNewerIntervalSecs]];
  v8 = [MAAutoAssetUpdatePolicy activityIntervalString:[(MAAutoAssetUpdatePolicy *)self newerFoundAutoDownloadJitterSecs]];
  blockIfBeforeFirstUnlock = [(MAAutoAssetUpdatePolicy *)self blockIfBeforeFirstUnlock];
  v10 = @"N";
  if (blockIfBeforeFirstUnlock)
  {
    v10 = @"Y";
  }

  v11 = [v3 stringWithFormat:@"[%@(%@)|checkForNewerInterval:%@, newerFoundAutoDownloadJitter:%@, blockIfBeforeFirstUnlock:%@]", updatePolicyName, assetType2, v7, v8, v10];

  if (assetType)
  {
  }

  return v11;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  updatePolicyName = [(MAAutoAssetUpdatePolicy *)self updatePolicyName];
  [v3 setSafeObject:updatePolicyName forKey:@"updatePolicyName"];

  assetType = [(MAAutoAssetUpdatePolicy *)self assetType];
  if (assetType)
  {
    assetType2 = [(MAAutoAssetUpdatePolicy *)self assetType];
    [v3 setSafeObject:assetType2 forKey:@"assetType"];
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

+ (id)activityIntervalString:(int64_t)string
{
  if (string < 1)
  {
    v7 = @"DISABLED";
  }

  else
  {
    v4 = (string % 0x15180uLL) % 3600;
    v5 = v4 / 60;
    v6 = v4 % 60;
    if (string >> 7 >= 0x2A3)
    {
      if ((string - 86400) >= 0x15180)
      {
        v9 = @"s";
      }

      else
      {
        v9 = &stru_1F0C1B388;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld day%@ %02ld:%02ld:%02ld", string / 0x15180uLL, v9, (string % 0x15180uLL) / 3600, v5, v6];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld:%02ld:%02ld", (string % 0x15180uLL) / 3600, v5, v6, v10, v11];
    }
    v7 = ;
  }

  return v7;
}

@end