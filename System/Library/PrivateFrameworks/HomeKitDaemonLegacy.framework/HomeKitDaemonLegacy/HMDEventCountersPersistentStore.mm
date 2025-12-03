@interface HMDEventCountersPersistentStore
- (HMDEventCountersPersistentStore)initWithPersistentStore:(id)store;
- (HMDPersistentStore)persistentStore;
- (id)unarchive;
- (void)archiveDictionary:(id)dictionary;
@end

@implementation HMDEventCountersPersistentStore

- (HMDPersistentStore)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

- (id)unarchive
{
  v31[3] = *MEMORY[0x277D85DE8];
  v3 = eventCountersDataStoreLegacyPath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    [defaultManager2 removeItemAtPath:v3 error:&v26];
  }

  v7 = eventCountersDataStorePath;
  v8 = +[HMDEventCountersManager allowedSpecifierClasses];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v10 = [v8 setByAddingObjectsFromArray:v9];

  persistentStore = [(HMDEventCountersPersistentStore *)self persistentStore];
  v12 = [persistentStore unarchiveDictionaryWithPath:v7 allowedClasses:v10 forKey:@"HMDEventCountersDataStoreKey"];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (!v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Archived event counters not found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v17;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Unarchived event counters: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [v12 objectForKeyedSubscript:@"HMDEventCountersArchivedEventCountersModifiedDateKey"];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:v18];
  v21 = v20;

  if (v21 > 86400.0)
  {

LABEL_11:
    v23 = 0;
    goto LABEL_13;
  }

  v23 = [v12 objectForKeyedSubscript:@"HMDEventCountersArchivedEventCountersKey"];

LABEL_13:
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)archiveDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v4 dictionary];
  v6 = [dictionaryCopy copy];

  [dictionary setObject:v6 forKeyedSubscript:@"HMDEventCountersArchivedEventCountersKey"];
  date = [MEMORY[0x277CBEAA8] date];
  [dictionary setObject:date forKeyedSubscript:@"HMDEventCountersArchivedEventCountersModifiedDateKey"];

  v8 = eventCountersDataStorePath;
  persistentStore = [(HMDEventCountersPersistentStore *)self persistentStore];
  v10 = [persistentStore archiveDictionary:dictionary withPath:v8 forKey:@"HMDEventCountersDataStoreKey"];
}

- (HMDEventCountersPersistentStore)initWithPersistentStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = HMDEventCountersPersistentStore;
  v5 = [(HMDEventCountersPersistentStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_persistentStore, storeCopy);
  }

  return v6;
}

@end