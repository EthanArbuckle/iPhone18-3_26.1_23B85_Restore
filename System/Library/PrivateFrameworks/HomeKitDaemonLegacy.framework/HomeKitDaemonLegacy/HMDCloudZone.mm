@interface HMDCloudZone
+ (id)shortDescription;
+ (void)createZoneWithName:(id)name rootRecordName:(id)recordName subscriptionName:(id)subscriptionName owner:(id)owner cacheZone:(id)zone cloudCache:(id)cache completion:(id)completion;
- (BOOL)hasServerTokenAvailable;
- (BOOL)isRootCloudRecord:(id)record;
- (BOOL)isRootRecord:(id)record;
- (CKRecordID)privateZoneRootRecordID;
- (HMDCloudCache)cache;
- (HMDCloudZone)init;
- (HMDCloudZone)initWithBackingStoreCacheZone:(id)zone cloudCache:(id)cache;
- (NSString)owner;
- (NSString)subscriptionName;
- (NSString)zoneRootRecordName;
- (id)__cloudRecordWithObjectID:(id)d;
- (id)cloudRecordWithName:(id)name;
- (id)cloudRecordWithObjectID:(id)d;
- (id)createCloudRecordWithFetchResult:(id)result;
- (id)createCloudRecordWithObjectID:(id)d recordName:(id)name;
- (id)description;
- (id)shortDescription;
- (void)addCloudRecord:(id)record ownerID:(id)d;
- (void)allDescendentsCloudRecordsForParentID:(id)d completionHandler:(id)handler;
- (void)cloudRecordWithName:(id)name completionHandler:(id)handler;
- (void)cloudRecordWithNames:(id)names completionHandler:(id)handler;
- (void)cloudRecordWithObjectID:(id)d completionHandler:(id)handler;
- (void)cloudRecordWithObjectIDs:(id)ds completionHandler:(id)handler;
- (void)cloudRecordsForParentID:(id)d completionHandler:(id)handler;
- (void)deleteCloudRecord:(id)record;
- (void)deleteCloudRecordNames:(id)names;
- (void)deleteZone;
- (void)fetchAllObjects:(id)objects;
- (void)fetchMigratedObjects:(id)objects;
- (void)markMigratedObjectsAsMigrated;
- (void)setSubscription:(id)subscription;
- (void)updateCloudRecord:(id)record;
- (void)updateCloudRecord:(id)record completionHandler:(id)handler;
- (void)updateCurrentServerChangeToken;
- (void)updateServerChangeToken:(id)token;
@end

@implementation HMDCloudZone

- (HMDCloudCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

- (void)updateServerChangeToken:(id)token
{
  [(HMDCloudZone *)self setServerChangeToken:token];

  [(HMDCloudZone *)self updateCurrentServerChangeToken];
}

- (void)updateCurrentServerChangeToken
{
  v3 = [(HMDCloudZone *)self zone];
  zoneID = [v3 zoneID];
  zoneName = [zoneID zoneName];

  serverChangeToken = [(HMDCloudZone *)self serverChangeToken];
  objc_initWeak(&location, self);
  v7 = [HMDBackingStoreCacheUpdateGroupTokenOperation alloc];
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __46__HMDCloudZone_updateCurrentServerChangeToken__block_invoke;
  v18 = &unk_279731988;
  objc_copyWeak(&v21, &location);
  v10 = zoneName;
  v19 = v10;
  v11 = serverChangeToken;
  v20 = v11;
  v12 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)v7 initWithGroup:backingStoreGroup serverChangeToken:v11 resultBlock:&v15];

  v13 = [(HMDCloudZone *)self cache:v15];
  backingStore = [v13 backingStore];
  [backingStore submit:v12];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __46__HMDCloudZone_updateCurrentServerChangeToken__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to save server token with error %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[%@] Saved server change token %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)deleteZone
{
  v24 = *MEMORY[0x277D85DE8];
  backingStoreZone = [(HMDCloudZone *)self backingStoreZone];
  zoneName = [backingStoreZone zoneName];

  objc_initWeak(&location, self);
  v5 = [HMDBackingStoreCacheDeleteZoneOperation alloc];
  backingStoreZone2 = [(HMDCloudZone *)self backingStoreZone];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__HMDCloudZone_deleteZone__block_invoke;
  v16[3] = &unk_2797338E8;
  objc_copyWeak(&v18, &location);
  v7 = zoneName;
  v17 = v7;
  v8 = [(HMDBackingStoreCacheDeleteZoneOperation *)v5 initWithZone:backingStoreZone2 resultBlock:v16];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Deleting zone %@ from cached", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  cache = [(HMDCloudZone *)selfCopy cache];
  backingStore = [cache backingStore];
  [backingStore submit:v8];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __26__HMDCloudZone_deleteZone__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Finished deleting zone %@ in cache", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasServerTokenAvailable
{
  serverChangeToken = [(HMDCloudZone *)self serverChangeToken];

  return serverChangeToken != 0;
}

- (void)setSubscription:(id)subscription
{
  objc_storeStrong(&self->_subscription, subscription);
  subscriptionCopy = subscription;
  v6 = [HMDBackingStoreCacheUpdateGroupSubscriptionOperation alloc];
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__HMDCloudZone_setSubscription___block_invoke;
  v12[3] = &unk_2797359D8;
  v12[4] = self;
  v9 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)v6 initWithGroup:backingStoreGroup subscription:subscriptionCopy resultBlock:v12];

  cache = [(HMDCloudZone *)self cache];
  backingStore = [cache backingStore];
  [backingStore submit:v9];
}

void __32__HMDCloudZone_setSubscription___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to save subscription with error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)subscriptionName
{
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  subscriptionName = [backingStoreGroup subscriptionName];

  return subscriptionName;
}

- (NSString)owner
{
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  owner = [backingStoreGroup owner];

  return owner;
}

- (void)deleteCloudRecord:(id)record
{
  recordCopy = record;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  [rootGroup deleteCloudRecord:recordCopy];
}

- (void)deleteCloudRecordNames:(id)names
{
  namesCopy = names;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  [rootGroup deleteCloudRecordNames:namesCopy];
}

- (void)updateCloudRecord:(id)record completionHandler:(id)handler
{
  handlerCopy = handler;
  recordCopy = record;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  [rootGroup updateCloudRecord:recordCopy completionHandler:handlerCopy];
}

- (void)updateCloudRecord:(id)record
{
  recordCopy = record;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  [rootGroup updateCloudRecord:recordCopy];
}

- (BOOL)isRootCloudRecord:(id)record
{
  record = [record record];
  LOBYTE(self) = [(HMDCloudZone *)self isRootRecord:record];

  return self;
}

- (BOOL)isRootRecord:(id)record
{
  recordCopy = record;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  v6 = [rootGroup isRootRecord:recordCopy];

  return v6;
}

- (CKRecordID)privateZoneRootRecordID
{
  rootGroup = [(HMDCloudZone *)self rootGroup];
  privateZoneRootRecordID = [rootGroup privateZoneRootRecordID];

  return privateZoneRootRecordID;
}

- (void)addCloudRecord:(id)record ownerID:(id)d
{
  recordCopy = record;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  [rootGroup addCloudRecord:recordCopy];
}

- (void)markMigratedObjectsAsMigrated
{
  objc_initWeak(&location, self);
  v3 = [HMDBackingStoreCacheFetchMigratedResult alloc];
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __45__HMDCloudZone_markMigratedObjectsAsMigrated__block_invoke;
  v12 = &unk_279728810;
  objc_copyWeak(&v13, &location);
  v6 = [(HMDBackingStoreCacheFetchMigratedResult *)v3 initWithGroup:backingStoreGroup update:1 migration:1 fetchResult:&v9];

  v7 = [(HMDCloudZone *)self cache:v9];
  backingStore = [v7 backingStore];
  [backingStore submit:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __45__HMDCloudZone_markMigratedObjectsAsMigrated__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Completed marking migrated objects as migrated with error %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchMigratedObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [HMDBackingStoreCacheFetchMigratedResult alloc];
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__HMDCloudZone_fetchMigratedObjects___block_invoke;
  v12[3] = &unk_2797252A8;
  v13 = objectsCopy;
  v8 = objectsCopy;
  v9 = [(HMDBackingStoreCacheFetchMigratedResult *)v5 initWithGroup:backingStoreGroup update:0 migration:1 fetchResult:v12];

  cache = [(HMDCloudZone *)self cache];
  backingStore = [cache backingStore];
  [backingStore submit:v9];
}

uint64_t __37__HMDCloudZone_fetchMigratedObjects___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchAllObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [HMDBackingStoreCacheFetchMigratedResult alloc];
  rootGroup = [(HMDCloudZone *)self rootGroup];
  backingStoreGroup = [rootGroup backingStoreGroup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__HMDCloudZone_fetchAllObjects___block_invoke;
  v12[3] = &unk_2797252A8;
  v13 = objectsCopy;
  v8 = objectsCopy;
  v9 = [(HMDBackingStoreCacheFetchMigratedResult *)v5 initWithGroup:backingStoreGroup update:0 migration:0 fetchResult:v12];

  cache = [(HMDCloudZone *)self cache];
  backingStore = [cache backingStore];
  [backingStore submit:v9];
}

void __32__HMDCloudZone_fetchAllObjects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = _Block_copy(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, v5);
  }
}

- (void)allDescendentsCloudRecordsForParentID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  rootGroup = [(HMDCloudZone *)self rootGroup];

  if (rootGroup)
  {
    rootGroup2 = [(HMDCloudZone *)self rootGroup];
    [rootGroup2 allDescendentsCloudRecordsForParentID:dCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get descendant records.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    rootGroup2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, rootGroup2);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordsForParentID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  rootGroup = [(HMDCloudZone *)self rootGroup];

  if (rootGroup)
  {
    rootGroup2 = [(HMDCloudZone *)self rootGroup];
    [rootGroup2 cloudRecordsForParentID:dCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get child record.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    rootGroup2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, rootGroup2);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithObjectID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  rootGroup = [(HMDCloudZone *)self rootGroup];

  if (rootGroup)
  {
    rootGroup2 = [(HMDCloudZone *)self rootGroup];
    [rootGroup2 cloudRecordWithObjectID:dCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud record.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    rootGroup2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, rootGroup2);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithObjectIDs:(id)ds completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  rootGroup = [(HMDCloudZone *)self rootGroup];

  if (rootGroup)
  {
    rootGroup2 = [(HMDCloudZone *)self rootGroup];
    [rootGroup2 cloudRecordWithObjectIDs:dsCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud records.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    rootGroup2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, rootGroup2);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)cloudRecordWithObjectID:(id)d
{
  dCopy = d;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  v6 = [rootGroup cloudRecordWithObjectID:dCopy];

  return v6;
}

- (id)__cloudRecordWithObjectID:(id)d
{
  dCopy = d;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  v6 = [rootGroup __cloudRecordWithObjectID:dCopy];

  return v6;
}

- (id)createCloudRecordWithFetchResult:(id)result
{
  v29 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy)
  {
    record = [resultCopy record];
    recordID = [record recordID];
    recordName = [recordID recordName];

    if (recordName)
    {
      uuid = [v5 uuid];
      record2 = [v5 record];
      recordID2 = [record2 recordID];
      recordName2 = [recordID2 recordName];
      v13 = [(HMDCloudZone *)self createCloudRecordWithObjectID:uuid recordName:recordName2];

      record3 = [v5 record];
      [v13 setRecord:record3];

      data = [v5 data];
      [v13 setCachedData:data];

      goto LABEL_10;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v5;
      v20 = "%{public}@Cannot create cloud record because fetch result record is incomplete %@";
      v21 = v18;
      v22 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      v20 = "%{public}@Cannot create cloud record without fetch result";
      v21 = v18;
      v22 = 12;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v20, &v25, v22);
    }
  }

  objc_autoreleasePoolPop(v16);
  v13 = 0;
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createCloudRecordWithObjectID:(id)d recordName:(id)name
{
  nameCopy = name;
  dCopy = d;
  v8 = [[HMDCloudRecord alloc] initWithObjectID:dCopy recordName:nameCopy cloudZone:self];

  return v8;
}

- (void)cloudRecordWithName:(id)name completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  rootGroup = [(HMDCloudZone *)self rootGroup];

  if (rootGroup)
  {
    rootGroup2 = [(HMDCloudZone *)self rootGroup];
    [rootGroup2 cloudRecordWithName:nameCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud record.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    rootGroup2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, rootGroup2);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithNames:(id)names completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  handlerCopy = handler;
  rootGroup = [(HMDCloudZone *)self rootGroup];

  if (rootGroup)
  {
    rootGroup2 = [(HMDCloudZone *)self rootGroup];
    [rootGroup2 cloudRecordWithNames:namesCopy completionHandler:handlerCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud records.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    rootGroup2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, rootGroup2);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)cloudRecordWithName:(id)name
{
  nameCopy = name;
  rootGroup = [(HMDCloudZone *)self rootGroup];
  v6 = [rootGroup cloudRecordWithName:nameCopy];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudZone *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", shortDescription];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  backingStoreZone = [(HMDCloudZone *)self backingStoreZone];
  zoneName = [backingStoreZone zoneName];
  v7 = [v3 stringWithFormat:@"%@ Zone = %@", shortDescription, zoneName];

  return v7;
}

- (HMDCloudZone)initWithBackingStoreCacheZone:(id)zone cloudCache:(id)cache
{
  zoneCopy = zone;
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = HMDCloudZone;
  v9 = [(HMDCloudZone *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStoreZone, zone);
    objc_storeWeak(&v10->_cache, cacheCopy);
    v11 = objc_alloc(MEMORY[0x277CBC5E8]);
    zoneName = [zoneCopy zoneName];
    v13 = [v11 initWithZoneName:zoneName];
    zone = v10->_zone;
    v10->_zone = v13;
  }

  return v10;
}

- (HMDCloudZone)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (NSString)zoneRootRecordName
{
  v2 = objc_opt_class();

  return [v2 zoneRootRecordName];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)createZoneWithName:(id)name rootRecordName:(id)recordName subscriptionName:(id)subscriptionName owner:(id)owner cacheZone:(id)zone cloudCache:(id)cache completion:(id)completion
{
  v82 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  recordNameCopy = recordName;
  subscriptionNameCopy = subscriptionName;
  ownerCopy = owner;
  zoneCopy = zone;
  cacheCopy = cache;
  completionCopy = completion;
  if (!cacheCopy)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v24 = ownerCopy;
      v25 = nameCopy;
      v26 = subscriptionNameCopy;
      v28 = v27 = recordNameCopy;
      *buf = 138543618;
      v77 = v28;
      v78 = 2112;
      v79 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot create cloud zone without a cache %@", buf, 0x16u);

      recordNameCopy = v27;
      subscriptionNameCopy = v26;
      nameCopy = v25;
      ownerCopy = v24;
      cacheCopy = 0;
    }

    objc_autoreleasePoolPop(v22);
    if (completionCopy)
    {
      v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      completionCopy[2](completionCopy, 0, v29);
    }
  }

  if (zoneCopy)
  {
    v30 = [objc_alloc(objc_opt_class()) initWithBackingStoreCacheZone:zoneCopy cloudCache:cacheCopy];
    if (v30)
    {
      groups = [zoneCopy groups];
      v32 = [groups count];

      if (v32)
      {
        groups2 = [zoneCopy groups];
        v34 = [groups2 count];

        if (v34 >= 2)
        {
          v60 = ownerCopy;
          v35 = subscriptionNameCopy;
          v36 = recordNameCopy;
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v39 = v58 = v37;
            groups3 = [zoneCopy groups];
            v41 = [groups3 count];
            *buf = 138543618;
            v77 = v39;
            v78 = 2048;
            v79 = v41;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cloud zone has more that one group, %tu, using first group", buf, 0x16u);

            v37 = v58;
          }

          objc_autoreleasePoolPop(v37);
          recordNameCopy = v36;
          subscriptionNameCopy = v35;
          ownerCopy = v60;
        }

        groups4 = [zoneCopy groups];
        firstObject = [groups4 firstObject];

        v44 = [[HMDCloudGroup alloc] initWithBackingStoreCacheGroup:firstObject cloudZone:v30];
        [v30 setRootGroup:v44];

        subscription = [firstObject subscription];
        [v30 _initializeSubscription:subscription];

        serverChangeToken = [firstObject serverChangeToken];
        [v30 _initializeServerChangeToken:serverChangeToken];

        rootGroup = [v30 rootGroup];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_71;
        v65[3] = &unk_279725280;
        v66 = v30;
        v67 = completionCopy;
        [rootGroup rootRecordCompletionHandler:v65];
      }

      else
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_2_73;
        v62[3] = &unk_279725230;
        v63 = v30;
        v64 = completionCopy;
        [HMDCloudGroup createGroupWithRootRecordName:recordNameCopy owner:ownerCopy subscriptionName:subscriptionNameCopy cloudZone:v63 completion:v62];
      }

      v52 = 0;
    }

    else
    {
      v59 = recordNameCopy;
      v52 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      v53 = objc_autoreleasePoolPush();
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v61 = ownerCopy;
        v56 = v55 = subscriptionNameCopy;
        *buf = 138543874;
        v77 = v56;
        v78 = 2112;
        v79 = nameCopy;
        v80 = 2112;
        v81 = v52;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to create zone %@ with error %@", buf, 0x20u);

        subscriptionNameCopy = v55;
        ownerCopy = v61;
      }

      objc_autoreleasePoolPop(v53);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v52);
      }

      recordNameCopy = v59;
    }
  }

  else
  {
    v48 = [HMDBackingStoreCacheCreateZoneOperation alloc];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke;
    v68[3] = &unk_279725258;
    selfCopy = self;
    v49 = cacheCopy;
    v69 = v49;
    v70 = recordNameCopy;
    v71 = ownerCopy;
    v72 = subscriptionNameCopy;
    v74 = completionCopy;
    v73 = nameCopy;
    v50 = [(HMDBackingStoreCacheCreateZoneOperation *)v48 initWithZoneName:v73 creationBlock:v68];
    backingStore = [v49 backingStore];
    [backingStore submit:v50];

    v30 = v69;
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v13 = *(a1 + 80);
    v14 = [objc_alloc(objc_opt_class()) initWithBackingStoreCacheZone:v5 cloudCache:*(a1 + 32)];
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_2;
      v21[3] = &unk_279725230;
      v22 = v14;
      v23 = *(a1 + 72);
      v19 = v15;
      [HMDCloudGroup createGroupWithRootRecordName:v16 owner:v17 subscriptionName:v18 cloudZone:v19 completion:v21];

      v7 = 0;
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 64);
    *buf = 138543874;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create zone %@ with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *(a1 + 72);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, v7);
  }

LABEL_8:

  v20 = *MEMORY[0x277D85DE8];
}

void __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setRecordsAvailable:1];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), 0);
  }
}

void __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_2_73(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) setRootGroup:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), v5);
  }
}

void __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) setRootGroup:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), v5);
  }
}

@end