@interface HMDCameraSnapshotCache
+ (id)logCategory;
- (BOOL)isEntryPresentForCharacteristicEventUUID:(id)a3;
- (HMDCameraSnapshotCache)initWithWorkQueue:(id)a3 logIdentifier:(id)a4;
- (void)addEntryWithCharacteristicEventUUID:(id)a3;
- (void)removeEntryWithCharacteristicEventUUID:(id)a3 error:(id)a4;
- (void)requestSnapshot:(id)a3 streamingTierType:(unint64_t)a4 completionHandler:(id)a5;
- (void)setSnapshotFile:(id)a3 forEntryWithCharacteristicEventUUID:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraSnapshotCache

- (void)timerDidFire:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  v6 = [(NSMutableDictionary *)snapshotCacheMap copy];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        if (self)
        {
          v12 = self->_snapshotCacheMap;
        }

        else
        {
          v12 = 0;
        }

        v13 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v10)];
        v14 = [v13 timer];

        if (v14 == v4)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v27 = v19;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Cache entry for %@ has expired", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          if (self)
          {
            v20 = v17->_snapshotCacheMap;
          }

          else
          {
            v20 = 0;
          }

          [(NSMutableDictionary *)v20 removeObjectForKey:v11];

          goto LABEL_21;
        }

        ++v10;
      }

      while (v8 != v10);
      v15 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v8 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEntryPresentForCharacteristicEventUUID:(id)a3
{
  if (self)
  {
    workQueue = self->_workQueue;
    v6 = a3;
    dispatch_assert_queue_V2(workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    v12 = a3;
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v8 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:a3];

  v9 = [v8 snapshotFile];
  v10 = v9 != 0;

  return v10;
}

- (void)requestSnapshot:(id)a3 streamingTierType:(unint64_t)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v10 = snapshotCacheMap;
  v11 = [v7 snapshotCharacteristicEventUUID];
  v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not find the snapshot cache file for %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v8[2](v8, 0, v19);
    goto LABEL_11;
  }

  v13 = [v12 snapshotFile];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Found the snapshot cache file for %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [v12 snapshotFile];
    (v8)[2](v8, v19, 0);
LABEL_11:

    goto LABEL_15;
  }

  if (v17)
  {
    v24 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v24;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Found the snapshot cache file placeholder, saving the completion handler", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  [v12 setSnapshotRequestCompletion:v8];
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setSnapshotFile:(id)a3 forEntryWithCharacteristicEventUUID:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v9 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:v7];
  v10 = [v9 snapshotRequestCompletion];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Snapshot request completion is already set for %@, calling completion with %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v9 snapshotRequestCompletion];
    (v15)[2](v15, v6, 0);
  }

  v16 = objc_alloc(MEMORY[0x277D0F920]);
  v17 = [v16 initWithTimeInterval:1 options:*&snapshotCacheValidPeriod];
  [v17 setDelegate:self];
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  [v17 setDelegateQueue:workQueue];
  v19 = [[HMDCameraSnapshotCacheEntry alloc] initWithSnapshotCharacteristicEventUUID:v7 snapshotFile:v6 timer:v17];

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v23;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting Cache Entry %@ for snapshotCharacteristicEventUUID: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  if (self)
  {
    v24 = v21->_snapshotCacheMap;
  }

  else
  {
    v24 = 0;
  }

  [(NSMutableDictionary *)v24 setObject:v19 forKeyedSubscript:v7];
  [v17 resume];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)removeEntryWithCharacteristicEventUUID:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v9 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:v6];
  v10 = [v9 snapshotRequestCompletion];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Snapshot request completion is already set for %@, calling completion with error %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v9 snapshotRequestCompletion];
    (v15)[2](v15, 0, v7);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing Cache Entry for snapshotCharacteristicEventUUID: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (self)
  {
    v20 = v17->_snapshotCacheMap;
  }

  else
  {
    v20 = 0;
  }

  [(NSMutableDictionary *)v20 removeObjectForKey:v6];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addEntryWithCharacteristicEventUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v6 = [[HMDCameraSnapshotCacheEntry alloc] initWithSnapshotCharacteristicEventUUID:v4 snapshotFile:0 timer:0];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Added Cache Entry %@ for snapshotCharacteristicEventUUID: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (self)
  {
    snapshotCacheMap = v8->_snapshotCacheMap;
  }

  else
  {
    snapshotCacheMap = 0;
  }

  [(NSMutableDictionary *)snapshotCacheMap setObject:v6 forKeyedSubscript:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotCache)initWithWorkQueue:(id)a3 logIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDCameraSnapshotCache;
  v9 = [(HMDCameraSnapshotCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, a3);
    objc_storeStrong(&v10->_logIdentifier, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    snapshotCacheMap = v10->_snapshotCacheMap;
    v10->_snapshotCacheMap = v11;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_260979 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_260979, &__block_literal_global_260980);
  }

  v3 = logCategory__hmf_once_v9_260981;

  return v3;
}

void __37__HMDCameraSnapshotCache_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_260981;
  logCategory__hmf_once_v9_260981 = v1;
}

@end