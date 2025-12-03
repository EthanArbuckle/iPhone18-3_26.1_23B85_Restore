@interface HMDMetricsDeviceStateManager
+ (id)lastUpdateForSoftwareVersion:(id)version dateProvider:(id)provider userDefaults:(id)defaults updateDefaultsIfNeeded:(BOOL)needed;
+ (int64_t)_daysSinceSoftwareUpdateFrom:(id)from dateProvider:(id)provider;
+ (int64_t)internalDeviceDaysSinceSoftwareUpdate;
- (HMDMetricsDeviceStateManager)initWithCurrentSoftwareVersion:(id)version logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler dateProvider:(id)provider keyCountProvider:(id)countProvider userDefaults:(id)defaults fileManager:(id)manager;
- (HMDMetricsDeviceStateManager)initWithLogEventSubmitter:(id)submitter dailyScheduler:(id)scheduler dateProvider:(id)provider;
- (HMMDateProvider)dateProvider;
- (int64_t)deviceDaysSinceSoftwareUpdate;
- (int64_t)fetchSizeInBytesForFilepath:(id)filepath;
- (unint64_t)bitMaskForKeyType:(unint64_t)type;
- (unint64_t)duplicateKeysBitMapFromKeyCounts:(id)counts;
- (unint64_t)fetchSqliteDatabaseSizeInKBForFileName:(id)name;
- (unint64_t)missingKeysBitMapFromKeyCounts:(id)counts;
- (void)configure;
- (void)handleHomeDataLoaded;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)runDailyTask;
- (void)updateCachedPairingKeyStates;
- (void)updateWithDataSyncState:(unint64_t)state;
- (void)updateWithHomeManagerStatus:(unint64_t)status;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@runDailyTask", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMetricsDeviceStateManager *)selfCopy updateCachedPairingKeyStates];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  eventCopy = event;
  [eventCopy setCoreDataRootSizeKB:{-[HMDMetricsDeviceStateManager coreDataRootSizeKB](self, "coreDataRootSizeKB")}];
  [eventCopy setCoreDataLocalStoreSizeKB:{-[HMDMetricsDeviceStateManager coreDataLocalStoreSizeKB](self, "coreDataLocalStoreSizeKB")}];
  [eventCopy setCoreDataCloudStoreSizeKB:{-[HMDMetricsDeviceStateManager coreDataCloudStoreSizeKB](self, "coreDataCloudStoreSizeKB")}];
  [eventCopy setCoreDataSharedCloudStoreSizeKB:{-[HMDMetricsDeviceStateManager coreDataSharedCloudStoreSizeKB](self, "coreDataSharedCloudStoreSizeKB")}];
  [eventCopy setLegacyV1DatabaseSizeKB:{-[HMDMetricsDeviceStateManager legacyV1DatabaseSizeKB](self, "legacyV1DatabaseSizeKB")}];
  [eventCopy setLegacyV3DatabaseSizeKB:{-[HMDMetricsDeviceStateManager legacyV3DatabaseSizeKB](self, "legacyV3DatabaseSizeKB")}];
  [eventCopy setEventStoreHH2SizeKB:{-[HMDMetricsDeviceStateManager eventStoreHH2SizeKB](self, "eventStoreHH2SizeKB")}];
}

- (void)handleHomeDataLoaded
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@handleHomeDataLoaded", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMetricsDeviceStateManager *)selfCopy updateCachedPairingKeyStates];
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

- (unint64_t)bitMaskForKeyType:(unint64_t)type
{
  if (type > 1751999336)
  {
    if (type == 1751999337)
    {
      return 8;
    }

    if (type != 1752001330)
    {
      if (type == 1752001641)
      {
        return 32;
      }

      return 1;
    }

    return 16;
  }

  else
  {
    if (type == 1751216195)
    {
      return 2;
    }

    if (type != 1751216211)
    {
      if (type == 1751216227)
      {
        return 4;
      }

      return 1;
    }

    return 64;
  }
}

- (unint64_t)duplicateKeysBitMapFromKeyCounts:(id)counts
{
  v20 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [countsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(countsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [countsCopy objectForKeyedSubscript:v10];
        integerValue = [v11 integerValue];

        if (integerValue >= 2)
        {
          v7 |= -[HMDMetricsDeviceStateManager bitMaskForKeyType:](self, "bitMaskForKeyType:", [v10 unsignedIntegerValue]);
        }
      }

      v6 = [countsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (unint64_t)missingKeysBitMapFromKeyCounts:(id)counts
{
  v20 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [countsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(countsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [countsCopy objectForKeyedSubscript:v10];
        integerValue = [v11 integerValue];

        if (!integerValue)
        {
          v7 |= -[HMDMetricsDeviceStateManager bitMaskForKeyType:](self, "bitMaskForKeyType:", [v10 unsignedIntegerValue]);
        }
      }

      v6 = [countsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (int64_t)fetchSizeInBytesForFilepath:(id)filepath
{
  v29 = *MEMORY[0x277D85DE8];
  filepathCopy = filepath;
  if (filepathCopy && (-[HMDMetricsDeviceStateManager fileManager](self, "fileManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fileExistsAtPath:filepathCopy], v5, (v6 & 1) != 0))
  {
    fileManager = [(HMDMetricsDeviceStateManager *)self fileManager];
    v24 = 0;
    v8 = [fileManager attributesOfItemAtPath:filepathCopy error:&v24];
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

      integerValue = [v12 integerValue];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      integerValue = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v17;
      v27 = 2112;
      v28 = filepathCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Root path or database file path not found: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    integerValue = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (unint64_t)fetchSqliteDatabaseSizeInKBForFileName:(id)name
{
  nameCopy = name;
  v5 = determineHomeKitDaemonRootStorePath();
  v6 = [v5 stringByAppendingPathComponent:nameCopy];

  v7 = [(HMDMetricsDeviceStateManager *)self fetchSizeInBytesForFilepath:v6]>> 10;
  return v7;
}

- (void)updateCachedPairingKeyStates
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  keyCountProvider = [(HMDMetricsDeviceStateManager *)self keyCountProvider];
  countAccessoryPairingKeysForMetrics = [keyCountProvider countAccessoryPairingKeysForMetrics];

  self->_bitMappedMissingKeys = [(HMDMetricsDeviceStateManager *)self missingKeysBitMapFromKeyCounts:countAccessoryPairingKeysForMetrics];
  self->_bitMappedDuplicateKeys = [(HMDMetricsDeviceStateManager *)self duplicateKeysBitMapFromKeyCounts:countAccessoryPairingKeysForMetrics];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    bitMappedMissingKeys = self->_bitMappedMissingKeys;
    bitMappedDuplicateKeys = self->_bitMappedDuplicateKeys;
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = countAccessoryPairingKeysForMetrics;
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

- (void)updateWithHomeManagerStatus:(unint64_t)status
{
  os_unfair_lock_lock_with_options();
  if (self->_currentHomeManagerStatus != status)
  {
    self->_currentHomeManagerStatus = status;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateWithDataSyncState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  if (self->_currentDataSyncState != state)
  {
    self->_currentDataSyncState = state;
    logEventSubmitter = [(HMDMetricsDeviceStateManager *)self logEventSubmitter];
    v6 = [[HMDDataSyncStateLogEvent alloc] initWithDataSyncState:state];
    [logEventSubmitter submitLogEvent:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)configure
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@registerForEvents", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_handleHomeDataLoaded name:@"HMDHomeManagerHomeDataLoadedNotification" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDMetricsDeviceStateManager)initWithCurrentSoftwareVersion:(id)version logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler dateProvider:(id)provider keyCountProvider:(id)countProvider userDefaults:(id)defaults fileManager:(id)manager
{
  versionCopy = version;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  providerCopy = provider;
  countProviderCopy = countProvider;
  defaultsCopy = defaults;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = HMDMetricsDeviceStateManager;
  v21 = [(HMDMetricsDeviceStateManager *)&v27 init];
  v22 = v21;
  if (v21)
  {
    v21->_currentDataSyncState = 0;
    v23 = [objc_opt_class() lastUpdateForSoftwareVersion:versionCopy dateProvider:providerCopy userDefaults:defaultsCopy updateDefaultsIfNeeded:1];
    lastSoftwareUpdateDate = v22->_lastSoftwareUpdateDate;
    v22->_lastSoftwareUpdateDate = v23;

    objc_storeStrong(&v22->_logEventSubmitter, submitter);
    objc_storeWeak(&v22->_dateProvider, providerCopy);
    objc_storeStrong(&v22->_keyCountProvider, countProvider);
    objc_storeStrong(&v22->_fileManager, manager);
    [schedulerCopy registerDailyTaskRunner:v22];
  }

  return v22;
}

- (HMDMetricsDeviceStateManager)initWithLogEventSubmitter:(id)submitter dailyScheduler:(id)scheduler dateProvider:(id)provider
{
  v8 = MEMORY[0x277D0F8E8];
  providerCopy = provider;
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  productInfo = [v8 productInfo];
  softwareVersion = [productInfo softwareVersion];
  versionString = [softwareVersion versionString];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v17 = objc_alloc_init(HMDFileManager);
  v18 = [(HMDMetricsDeviceStateManager *)self initWithCurrentSoftwareVersion:versionString logEventSubmitter:submitterCopy dailyScheduler:schedulerCopy dateProvider:providerCopy keyCountProvider:systemStore userDefaults:standardUserDefaults fileManager:v17];

  return v18;
}

+ (int64_t)internalDeviceDaysSinceSoftwareUpdate
{
  mEMORY[0x277D17DB0] = [MEMORY[0x277D17DB0] sharedInstance];
  v4 = objc_opt_class();
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion = [productInfo softwareVersion];
  versionString = [softwareVersion versionString];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v4 lastUpdateForSoftwareVersion:versionString dateProvider:mEMORY[0x277D17DB0] userDefaults:standardUserDefaults updateDefaultsIfNeeded:0];

  v10 = [self _daysSinceSoftwareUpdateFrom:v9 dateProvider:mEMORY[0x277D17DB0]];
  return v10;
}

+ (int64_t)_daysSinceSoftwareUpdateFrom:(id)from dateProvider:(id)provider
{
  fromCopy = from;
  providerCopy = provider;
  v7 = providerCopy;
  if (!providerCopy || (v8 = MEMORY[0x277D17DB0], [providerCopy startOfCurrentDay], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "daysFromDate:toDate:", fromCopy, v9), v9, (v10 & 0x8000000000000000) != 0))
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

+ (id)lastUpdateForSoftwareVersion:(id)version dateProvider:(id)provider userDefaults:(id)defaults updateDefaultsIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  versionCopy = version;
  providerCopy = provider;
  defaultsCopy = defaults;
  v12 = [defaultsCopy stringForKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareVersionKey"];
  v13 = [defaultsCopy objectForKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareDateKey"];
  v14 = v13;
  if (v12 && v13 && ([v12 isEqualToString:versionCopy] & 1) != 0)
  {
    startOfCurrentDay = v14;
  }

  else
  {
    startOfCurrentDay = [providerCopy startOfCurrentDay];

    if (neededCopy)
    {
      [defaultsCopy setObject:versionCopy forKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareVersionKey"];
      [defaultsCopy setObject:startOfCurrentDay forKey:@"HMDMetricsDeviceStateManagerLastStoredSoftwareDateKey"];
    }
  }

  return startOfCurrentDay;
}

@end