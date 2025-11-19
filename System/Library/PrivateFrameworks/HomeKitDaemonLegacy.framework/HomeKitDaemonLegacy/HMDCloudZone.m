@interface HMDCloudZone
+ (id)shortDescription;
+ (void)createZoneWithName:(id)a3 rootRecordName:(id)a4 subscriptionName:(id)a5 owner:(id)a6 cacheZone:(id)a7 cloudCache:(id)a8 completion:(id)a9;
- (BOOL)hasServerTokenAvailable;
- (BOOL)isRootCloudRecord:(id)a3;
- (BOOL)isRootRecord:(id)a3;
- (CKRecordID)privateZoneRootRecordID;
- (HMDCloudCache)cache;
- (HMDCloudZone)init;
- (HMDCloudZone)initWithBackingStoreCacheZone:(id)a3 cloudCache:(id)a4;
- (NSString)owner;
- (NSString)subscriptionName;
- (NSString)zoneRootRecordName;
- (id)__cloudRecordWithObjectID:(id)a3;
- (id)cloudRecordWithName:(id)a3;
- (id)cloudRecordWithObjectID:(id)a3;
- (id)createCloudRecordWithFetchResult:(id)a3;
- (id)createCloudRecordWithObjectID:(id)a3 recordName:(id)a4;
- (id)description;
- (id)shortDescription;
- (void)addCloudRecord:(id)a3 ownerID:(id)a4;
- (void)allDescendentsCloudRecordsForParentID:(id)a3 completionHandler:(id)a4;
- (void)cloudRecordWithName:(id)a3 completionHandler:(id)a4;
- (void)cloudRecordWithNames:(id)a3 completionHandler:(id)a4;
- (void)cloudRecordWithObjectID:(id)a3 completionHandler:(id)a4;
- (void)cloudRecordWithObjectIDs:(id)a3 completionHandler:(id)a4;
- (void)cloudRecordsForParentID:(id)a3 completionHandler:(id)a4;
- (void)deleteCloudRecord:(id)a3;
- (void)deleteCloudRecordNames:(id)a3;
- (void)deleteZone;
- (void)fetchAllObjects:(id)a3;
- (void)fetchMigratedObjects:(id)a3;
- (void)markMigratedObjectsAsMigrated;
- (void)setSubscription:(id)a3;
- (void)updateCloudRecord:(id)a3;
- (void)updateCloudRecord:(id)a3 completionHandler:(id)a4;
- (void)updateCurrentServerChangeToken;
- (void)updateServerChangeToken:(id)a3;
@end

@implementation HMDCloudZone

- (HMDCloudCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

- (void)updateServerChangeToken:(id)a3
{
  [(HMDCloudZone *)self setServerChangeToken:a3];

  [(HMDCloudZone *)self updateCurrentServerChangeToken];
}

- (void)updateCurrentServerChangeToken
{
  v3 = [(HMDCloudZone *)self zone];
  v4 = [v3 zoneID];
  v5 = [v4 zoneName];

  v6 = [(HMDCloudZone *)self serverChangeToken];
  objc_initWeak(&location, self);
  v7 = [HMDBackingStoreCacheUpdateGroupTokenOperation alloc];
  v8 = [(HMDCloudZone *)self rootGroup];
  v9 = [v8 backingStoreGroup];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __46__HMDCloudZone_updateCurrentServerChangeToken__block_invoke;
  v18 = &unk_279731988;
  objc_copyWeak(&v21, &location);
  v10 = v5;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  v12 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)v7 initWithGroup:v9 serverChangeToken:v11 resultBlock:&v15];

  v13 = [(HMDCloudZone *)self cache:v15];
  v14 = [v13 backingStore];
  [v14 submit:v12];

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
  v3 = [(HMDCloudZone *)self backingStoreZone];
  v4 = [v3 zoneName];

  objc_initWeak(&location, self);
  v5 = [HMDBackingStoreCacheDeleteZoneOperation alloc];
  v6 = [(HMDCloudZone *)self backingStoreZone];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__HMDCloudZone_deleteZone__block_invoke;
  v16[3] = &unk_2797338E8;
  objc_copyWeak(&v18, &location);
  v7 = v4;
  v17 = v7;
  v8 = [(HMDBackingStoreCacheDeleteZoneOperation *)v5 initWithZone:v6 resultBlock:v16];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
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
  v13 = [(HMDCloudZone *)v10 cache];
  v14 = [v13 backingStore];
  [v14 submit:v8];

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
  v2 = [(HMDCloudZone *)self serverChangeToken];

  return v2 != 0;
}

- (void)setSubscription:(id)a3
{
  objc_storeStrong(&self->_subscription, a3);
  v5 = a3;
  v6 = [HMDBackingStoreCacheUpdateGroupSubscriptionOperation alloc];
  v7 = [(HMDCloudZone *)self rootGroup];
  v8 = [v7 backingStoreGroup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__HMDCloudZone_setSubscription___block_invoke;
  v12[3] = &unk_2797359D8;
  v12[4] = self;
  v9 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)v6 initWithGroup:v8 subscription:v5 resultBlock:v12];

  v10 = [(HMDCloudZone *)self cache];
  v11 = [v10 backingStore];
  [v11 submit:v9];
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
  v2 = [(HMDCloudZone *)self rootGroup];
  v3 = [v2 backingStoreGroup];
  v4 = [v3 subscriptionName];

  return v4;
}

- (NSString)owner
{
  v2 = [(HMDCloudZone *)self rootGroup];
  v3 = [v2 backingStoreGroup];
  v4 = [v3 owner];

  return v4;
}

- (void)deleteCloudRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  [v5 deleteCloudRecord:v4];
}

- (void)deleteCloudRecordNames:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  [v5 deleteCloudRecordNames:v4];
}

- (void)updateCloudRecord:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCloudZone *)self rootGroup];
  [v8 updateCloudRecord:v7 completionHandler:v6];
}

- (void)updateCloudRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  [v5 updateCloudRecord:v4];
}

- (BOOL)isRootCloudRecord:(id)a3
{
  v4 = [a3 record];
  LOBYTE(self) = [(HMDCloudZone *)self isRootRecord:v4];

  return self;
}

- (BOOL)isRootRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  v6 = [v5 isRootRecord:v4];

  return v6;
}

- (CKRecordID)privateZoneRootRecordID
{
  v2 = [(HMDCloudZone *)self rootGroup];
  v3 = [v2 privateZoneRootRecordID];

  return v3;
}

- (void)addCloudRecord:(id)a3 ownerID:(id)a4
{
  v5 = a3;
  v6 = [(HMDCloudZone *)self rootGroup];
  [v6 addCloudRecord:v5];
}

- (void)markMigratedObjectsAsMigrated
{
  objc_initWeak(&location, self);
  v3 = [HMDBackingStoreCacheFetchMigratedResult alloc];
  v4 = [(HMDCloudZone *)self rootGroup];
  v5 = [v4 backingStoreGroup];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __45__HMDCloudZone_markMigratedObjectsAsMigrated__block_invoke;
  v12 = &unk_279728810;
  objc_copyWeak(&v13, &location);
  v6 = [(HMDBackingStoreCacheFetchMigratedResult *)v3 initWithGroup:v5 update:1 migration:1 fetchResult:&v9];

  v7 = [(HMDCloudZone *)self cache:v9];
  v8 = [v7 backingStore];
  [v8 submit:v6];

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

- (void)fetchMigratedObjects:(id)a3
{
  v4 = a3;
  v5 = [HMDBackingStoreCacheFetchMigratedResult alloc];
  v6 = [(HMDCloudZone *)self rootGroup];
  v7 = [v6 backingStoreGroup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__HMDCloudZone_fetchMigratedObjects___block_invoke;
  v12[3] = &unk_2797252A8;
  v13 = v4;
  v8 = v4;
  v9 = [(HMDBackingStoreCacheFetchMigratedResult *)v5 initWithGroup:v7 update:0 migration:1 fetchResult:v12];

  v10 = [(HMDCloudZone *)self cache];
  v11 = [v10 backingStore];
  [v11 submit:v9];
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

- (void)fetchAllObjects:(id)a3
{
  v4 = a3;
  v5 = [HMDBackingStoreCacheFetchMigratedResult alloc];
  v6 = [(HMDCloudZone *)self rootGroup];
  v7 = [v6 backingStoreGroup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__HMDCloudZone_fetchAllObjects___block_invoke;
  v12[3] = &unk_2797252A8;
  v13 = v4;
  v8 = v4;
  v9 = [(HMDBackingStoreCacheFetchMigratedResult *)v5 initWithGroup:v7 update:0 migration:0 fetchResult:v12];

  v10 = [(HMDCloudZone *)self cache];
  v11 = [v10 backingStore];
  [v11 submit:v9];
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

- (void)allDescendentsCloudRecordsForParentID:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudZone *)self rootGroup];

  if (v8)
  {
    v9 = [(HMDCloudZone *)self rootGroup];
    [v9 allDescendentsCloudRecordsForParentID:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get descendant records.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v7[2](v7, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordsForParentID:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudZone *)self rootGroup];

  if (v8)
  {
    v9 = [(HMDCloudZone *)self rootGroup];
    [v9 cloudRecordsForParentID:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get child record.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v7[2](v7, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithObjectID:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudZone *)self rootGroup];

  if (v8)
  {
    v9 = [(HMDCloudZone *)self rootGroup];
    [v9 cloudRecordWithObjectID:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud record.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v7[2](v7, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithObjectIDs:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudZone *)self rootGroup];

  if (v8)
  {
    v9 = [(HMDCloudZone *)self rootGroup];
    [v9 cloudRecordWithObjectIDs:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud records.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v7 + 2))(v7, 0, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)cloudRecordWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  v6 = [v5 cloudRecordWithObjectID:v4];

  return v6;
}

- (id)__cloudRecordWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  v6 = [v5 __cloudRecordWithObjectID:v4];

  return v6;
}

- (id)createCloudRecordWithFetchResult:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 record];
    v7 = [v6 recordID];
    v8 = [v7 recordName];

    if (v8)
    {
      v9 = [v5 uuid];
      v10 = [v5 record];
      v11 = [v10 recordID];
      v12 = [v11 recordName];
      v13 = [(HMDCloudZone *)self createCloudRecordWithObjectID:v9 recordName:v12];

      v14 = [v5 record];
      [v13 setRecord:v14];

      v15 = [v5 data];
      [v13 setCachedData:v15];

      goto LABEL_10;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = self;
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
    v17 = self;
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

- (id)createCloudRecordWithObjectID:(id)a3 recordName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HMDCloudRecord alloc] initWithObjectID:v7 recordName:v6 cloudZone:self];

  return v8;
}

- (void)cloudRecordWithName:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudZone *)self rootGroup];

  if (v8)
  {
    v9 = [(HMDCloudZone *)self rootGroup];
    [v9 cloudRecordWithName:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud record.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v7[2](v7, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithNames:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudZone *)self rootGroup];

  if (v8)
  {
    v9 = [(HMDCloudZone *)self rootGroup];
    [v9 cloudRecordWithNames:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to get cloud records.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v7 + 2))(v7, 0, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)cloudRecordWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudZone *)self rootGroup];
  v6 = [v5 cloudRecordWithName:v4];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCloudZone *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDCloudZone *)self backingStoreZone];
  v6 = [v5 zoneName];
  v7 = [v3 stringWithFormat:@"%@ Zone = %@", v4, v6];

  return v7;
}

- (HMDCloudZone)initWithBackingStoreCacheZone:(id)a3 cloudCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMDCloudZone;
  v9 = [(HMDCloudZone *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStoreZone, a3);
    objc_storeWeak(&v10->_cache, v8);
    v11 = objc_alloc(MEMORY[0x277CBC5E8]);
    v12 = [v7 zoneName];
    v13 = [v11 initWithZoneName:v12];
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

+ (void)createZoneWithName:(id)a3 rootRecordName:(id)a4 subscriptionName:(id)a5 owner:(id)a6 cacheZone:(id)a7 cloudCache:(id)a8 completion:(id)a9
{
  v82 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (!v20)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v24 = v18;
      v25 = v15;
      v26 = v17;
      v28 = v27 = v16;
      *buf = 138543618;
      v77 = v28;
      v78 = 2112;
      v79 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot create cloud zone without a cache %@", buf, 0x16u);

      v16 = v27;
      v17 = v26;
      v15 = v25;
      v18 = v24;
      v20 = 0;
    }

    objc_autoreleasePoolPop(v22);
    if (v21)
    {
      v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v21[2](v21, 0, v29);
    }
  }

  if (v19)
  {
    v30 = [objc_alloc(objc_opt_class()) initWithBackingStoreCacheZone:v19 cloudCache:v20];
    if (v30)
    {
      v31 = [v19 groups];
      v32 = [v31 count];

      if (v32)
      {
        v33 = [v19 groups];
        v34 = [v33 count];

        if (v34 >= 2)
        {
          v60 = v18;
          v35 = v17;
          v36 = v16;
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v39 = v58 = v37;
            v40 = [v19 groups];
            v41 = [v40 count];
            *buf = 138543618;
            v77 = v39;
            v78 = 2048;
            v79 = v41;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cloud zone has more that one group, %tu, using first group", buf, 0x16u);

            v37 = v58;
          }

          objc_autoreleasePoolPop(v37);
          v16 = v36;
          v17 = v35;
          v18 = v60;
        }

        v42 = [v19 groups];
        v43 = [v42 firstObject];

        v44 = [[HMDCloudGroup alloc] initWithBackingStoreCacheGroup:v43 cloudZone:v30];
        [v30 setRootGroup:v44];

        v45 = [v43 subscription];
        [v30 _initializeSubscription:v45];

        v46 = [v43 serverChangeToken];
        [v30 _initializeServerChangeToken:v46];

        v47 = [v30 rootGroup];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_71;
        v65[3] = &unk_279725280;
        v66 = v30;
        v67 = v21;
        [v47 rootRecordCompletionHandler:v65];
      }

      else
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke_2_73;
        v62[3] = &unk_279725230;
        v63 = v30;
        v64 = v21;
        [HMDCloudGroup createGroupWithRootRecordName:v16 owner:v18 subscriptionName:v17 cloudZone:v63 completion:v62];
      }

      v52 = 0;
    }

    else
    {
      v59 = v16;
      v52 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      v53 = objc_autoreleasePoolPush();
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v61 = v18;
        v56 = v55 = v17;
        *buf = 138543874;
        v77 = v56;
        v78 = 2112;
        v79 = v15;
        v80 = 2112;
        v81 = v52;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to create zone %@ with error %@", buf, 0x20u);

        v17 = v55;
        v18 = v61;
      }

      objc_autoreleasePoolPop(v53);
      if (v21)
      {
        v21[2](v21, 0, v52);
      }

      v16 = v59;
    }
  }

  else
  {
    v48 = [HMDBackingStoreCacheCreateZoneOperation alloc];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __105__HMDCloudZone_createZoneWithName_rootRecordName_subscriptionName_owner_cacheZone_cloudCache_completion___block_invoke;
    v68[3] = &unk_279725258;
    v75 = a1;
    v49 = v20;
    v69 = v49;
    v70 = v16;
    v71 = v18;
    v72 = v17;
    v74 = v21;
    v73 = v15;
    v50 = [(HMDBackingStoreCacheCreateZoneOperation *)v48 initWithZoneName:v73 creationBlock:v68];
    v51 = [v49 backingStore];
    [v51 submit:v50];

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