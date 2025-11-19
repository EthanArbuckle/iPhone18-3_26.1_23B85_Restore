@interface HMDMetricsDeviceStateManager
+ (id)lastUpdateForSoftwareVersion:(id)a3 dateProvider:(id)a4 userDefaults:(id)a5 updateDefaultsIfNeeded:(BOOL)a6;
+ (int64_t)_daysSinceSoftwareUpdateFrom:(id)a3 dateProvider:(id)a4;
+ (int64_t)internalDeviceDaysSinceSoftwareUpdate;
- (HMDMetricsDeviceStateManager)initWithCurrentSoftwareVersion:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5 dateProvider:(id)a6 keyCountProvider:(id)a7 userDefaults:(id)a8 fileManager:(id)a9;
- (HMDMetricsDeviceStateManager)initWithLogEventSubmitter:(id)a3 dailyScheduler:(id)a4 dateProvider:(id)a5;
- (HMMDateProvider)dateProvider;
- (int64_t)deviceDaysSinceSoftwareUpdate;
- (int64_t)fetchSizeInBytesForFilepath:(id)a3;
- (unint64_t)bitMaskForKeyType:(unint64_t)a3;
- (unint64_t)duplicateKeysBitMapFromKeyCounts:(id)a3;
- (unint64_t)fetchSqliteDatabaseSizeInKBForFileName:(id)a3;
- (unint64_t)missingKeysBitMapFromKeyCounts:(id)a3;
- (void)configure;
- (void)handleHomeDataLoaded;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)runDailyTask;
- (void)updateCachedPairingKeyStates;
- (void)updateWithDataSyncState:(unint64_t)a3;
- (void)updateWithHomeManagerStatus:(unint64_t)a3;
@end

@implementation HMDMetricsDeviceStateManager

- (HMMDateProvider)dateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dateProvider);

  return WeakRetained;
}

- (void)runDailyTask
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@runDailyTask", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMetricsDeviceStateManager *)v4 updateCachedPairingKeyStates];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v5 = a3;
  [v5 setCoreDataRootSizeKB:{-[HMDMetricsDeviceStateManager coreDataRootSizeKB](self, "coreDataRootSizeKB")}];
  [v5 setCoreDataLocalStoreSizeKB:{-[HMDMetricsDeviceStateManager coreDataLocalStoreSizeKB](self, "coreDataLocalStoreSizeKB")}];
  [v5 setCoreDataCloudStoreSizeKB:{-[HMDMetricsDeviceStateManager coreDataCloudStoreSizeKB](self, "coreDataCloudStoreSizeKB")}];
  [v5 setCoreDataSharedCloudStoreSizeKB:{-[HMDMetricsDeviceStateManager coreDataSharedCloudStoreSizeKB](self, "coreDataSharedCloudStoreSizeKB")}];
  [v5 setLegacyV1DatabaseSizeKB:{-[HMDMetricsDeviceStateManager legacyV1DatabaseSizeKB](self, "legacyV1DatabaseSizeKB")}];
  [v5 setLegacyV3DatabaseSizeKB:{-[HMDMetricsDeviceStateManager legacyV3DatabaseSizeKB](self, "legacyV3DatabaseSizeKB")}];
  [v5 setEventStoreHH2SizeKB:{-[HMDMetricsDeviceStateManager eventStoreHH2SizeKB](self, "eventStoreHH2SizeKB")}];
}

- (void)handleHomeDataLoaded
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@handleHomeDataLoaded", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMetricsDeviceStateManager *)v4 updateCachedPairingKeyStates];
  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)deviceDaysSinceSoftwareUpdate
{
  os_unfair_lock_lock_with_options();
  v3 = objc_opt_class();
  lastSoftwareUpdateDate = self->_lastSoftwareUpdateDate;
  WeakRetained = objc_loadWeakRetained(&self->_dateProvider);
  v6 = [v3 _daysSinceSoftwareUpdateFrom:lastSoftwareUpdateDate dateProvider:WeakRetained];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (unint64_t)bitMaskForKeyType:(unint64_t)a3
{
  if (a3 > 1751999336)
  {
    if (a3 == 1751999337)
    {
      return 8;
    }

    if (a3 != 1752001330)
    {
      if (a3 == 1752001641)
      {
        return 32;
      }

      return 1;
    }

    return 16;
  }

  else
  {
    if (a3 == 1751216195)
    {
      return 2;
    }

    if (a3 != 1751216211)
    {
      if (a3 == 1751216227)
      {
        return 4;
      }

      return 1;
    }

    return 64;
  }
}

- (unint64_t)duplicateKeysBitMapFromKeyCounts:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [v11 integerValue];

        if (v12 >= 2)
        {
          v7 |= -[HMDMetricsDeviceStateManager bitMaskForKeyType:](self, "bitMaskForKeyType:", [v10 unsignedIntegerValue]);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)missingKeysBitMapFromKeyCounts:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [v11 integerValue];

        if (!v12)
        {
          v7 |= -[HMDMetricsDeviceStateManager bitMaskForKeyType:](self, "bitMaskForKeyType:", [v10 unsignedIntegerValue]);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)fetchSizeInBytesForFilepath:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (-[HMDMetricsDeviceStateManager fileManager](self, "fileManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fileExistsAtPath:v4], v5, (v6 & 1) != 0))
  {
    v7 = [(HMDMetricsDeviceStateManager *)self fileManager];
    v24 = 0;
    v8 = [v7 attributesOfItemAtPath:v4 error:&v24];
    v9 = v24;

    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [v12 integerValue];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v21;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@File attributes fetch error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v17;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Root path or database file path not found: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)fetchSqliteDatabaseSizeInKBForFileName:(id)a3
{
  v4 = a3;
  v5 = determineHomeKitDaemonRootStorePath();
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [(HMDMetricsDeviceStateManager *)self fetchSizeInBytesForFilepath:v6]>> 10;
  return v7;
}

- (void)updateCachedPairingKeyStates
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(HMDMetricsDeviceStateManager *)self keyCountProvider];
  v4 = [v3 countAccessoryPairingKeysForMetrics];

  self->_bitMappedMissingKeys = [(HMDMetricsDeviceStateManager *)self missingKeysBitMapFromKeyCounts:v4];
  self->_bitMappedDuplicateKeys = [(HMDMetricsDeviceStateManager *)self duplicateKeysBitMapFromKeyCounts:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    bitMappedMissingKeys = self->_bitMappedMissingKeys;
    bitMappedDuplicateKeys = self->_bitMappedDuplicateKeys;
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    v16 = 2048;
    v17 = bitMappedMissingKeys;
    v18 = 2048;
    v19 = bitMappedDuplicateKeys;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetched key counts: %@ \n Cached bitMappedMissingKeys: %lu Cached bitMappedDuplicateKeys: %lu", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateWithHomeManagerStatus:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_currentHomeManagerStatus != a3)
  {
    self->_currentHomeManagerStatus = a3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateWithDataSyncState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_currentDataSyncState != a3)
  {
    self->_currentDataSyncState = a3;
    v5 = [(HMDMetricsDeviceStateManager *)self logEventSubmitter];
    v6 = [[HMDDataSyncStateLogEvent alloc] initWithDataSyncState:a3];
    [v5 submitLogEvent:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)configure
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@registerForEvents", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:v4 selector:sel_handleHomeDataLoaded name:@"HMDHomeManagerHomeDataLoadedNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDMetricsDeviceStateManager)initWithCurrentSoftwareVersion:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5 dateProvider:(id)a6 keyCountProvider:(id)a7 userDefaults:(id)a8 fileManager:(id)a9
{
  v15 = a3;
  v26 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v27.receiver = self;
  v27.super_class = HMDMetricsDeviceStateManager;
  v21 = [(HMDMetricsDeviceStateManager *)&v27 init];
  v22 = v21;
  if (v21)
  {
    v21->_currentDataSyncState = 0;
    v23 = [objc_opt_class() lastUpdateForSoftwareVersion:v15 dateProvider:v17 userDefaults:v19 updateDefaultsIfNeeded:1];
    lastSoftwareUpdateDate = v22->_lastSoftwareUpdateDate;
    v22->_lastSoftwareUpdateDate = v23;

    objc_storeStrong(&v22->_logEventSubmitter, a4);
    objc_storeWeak(&v22->_dateProvider, v17);
    objc_storeStrong(&v22->_keyCountProvider, a7);
    objc_storeStrong(&v22->_fileManager, a9);
    [v16 registerDailyTaskRunner:v22];
  }

  return v22;
}

- (HMDMetricsDeviceStateManager)initWithLogEventSubmitter:(id)a3 dailyScheduler:(id)a4 dateProvider:(id)a5
{
  v8 = MEMORY[0x277D0F8E8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 productInfo];
  v13 = [v12 softwareVersion];
  v14 = [v13 versionString];
  v15 = [MEMORY[0x277CFEC78] systemStore];
  v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v17 = objc_alloc_init(HMDFileManager);
  v18 = [(HMDMetricsDeviceStateManager *)self initWithCurrentSoftwareVersion:v14 logEventSubmitter:v11 dailyScheduler:v10 dateProvider:v9 keyCountProvider:v15 userDefaults:v16 fileManager:v17];

  return v18;
}

+ (int64_t)internalDeviceDaysSinceSoftwareUpdate
{
  v3 = [MEMORY[0x277D17DB0] sharedInstance];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277D0F8E8] productInfo];
  v6 = [v5 softwareVersion];
  v7 = [v6 versionString];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v4 lastUpdateForSoftwareVersion:v7 dateProvider:v3 userDefaults:v8 updateDefaultsIfNeeded:0];

  v10 = [a1 _daysSinceSoftwareUpdateFrom:v9 dateProvider:v3];
  return v10;
}

+ (int64_t)_daysSinceSoftwareUpdateFrom:(id)a3 dateProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || (v8 = MEMORY[0x277D17DB0], [v6 startOfCurrentDay], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "daysFromDate:toDate:", v5, v9), v9, (v10 & 0x8000000000000000) != 0))
  {
    v11 = -1;
  }

  else if (v10 > 0x1E)
  {
    v11 = 9999;
  }

  else
  {
    v11 = qword_253D4B620[v10];
  }

  return v11;
}

+ (id)lastUpdateForSoftwareVersion:(id)a3 dateProvider:(id)a4 userDefaults:(id)a5 updateDefaultsIfNeeded:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 stringForKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareVersionKey"];
  v13 = [v11 objectForKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareDateKey"];
  v14 = v13;
  if (v12 && v13 && ([v12 isEqualToString:v9] & 1) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = [v10 startOfCurrentDay];

    if (v6)
    {
      [v11 setObject:v9 forKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareVersionKey"];
      [v11 setObject:v15 forKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareDateKey"];
    }
  }

  return v15;
}

@end