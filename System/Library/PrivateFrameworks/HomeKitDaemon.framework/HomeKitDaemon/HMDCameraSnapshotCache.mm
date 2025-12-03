@interface HMDCameraSnapshotCache
+ (id)logCategory;
- (BOOL)isEntryPresentForCharacteristicEventUUID:(id)d;
- (HMDCameraSnapshotCache)initWithWorkQueue:(id)queue logIdentifier:(id)identifier;
- (void)addEntryWithCharacteristicEventUUID:(id)d;
- (void)removeEntryWithCharacteristicEventUUID:(id)d error:(id)error;
- (void)requestSnapshot:(id)snapshot streamingTierType:(unint64_t)type completionHandler:(id)handler;
- (void)setSnapshotFile:(id)file forEntryWithCharacteristicEventUUID:(id)d;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraSnapshotCache

- (void)timerDidFire:(id)fire
{
  v31 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
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
        timer = [v13 timer];

        if (timer == fireCopy)
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
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
            v20 = selfCopy->_snapshotCacheMap;
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

- (BOOL)isEntryPresentForCharacteristicEventUUID:(id)d
{
  if (self)
  {
    workQueue = self->_workQueue;
    dCopy = d;
    dispatch_assert_queue_V2(workQueue);
    snapshotCacheMap = self->_snapshotCacheMap;
  }

  else
  {
    dCopy2 = d;
    dispatch_assert_queue_V2(0);
    snapshotCacheMap = 0;
  }

  v8 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:d];

  snapshotFile = [v8 snapshotFile];
  v10 = snapshotFile != 0;

  return v10;
}

- (void)requestSnapshot:(id)snapshot streamingTierType:(unint64_t)type completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  handlerCopy = handler;
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
  snapshotCharacteristicEventUUID = [snapshotCopy snapshotCharacteristicEventUUID];
  v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:snapshotCharacteristicEventUUID];

  if (!v12)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = snapshotCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Did not find the snapshot cache file for %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    snapshotFile2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, snapshotFile2);
    goto LABEL_11;
  }

  snapshotFile = [v12 snapshotFile];

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (snapshotFile)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = snapshotCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Found the snapshot cache file for %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    snapshotFile2 = [v12 snapshotFile];
    (handlerCopy)[2](handlerCopy, snapshotFile2, 0);
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
  [v12 setSnapshotRequestCompletion:handlerCopy];
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setSnapshotFile:(id)file forEntryWithCharacteristicEventUUID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  dCopy = d;
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

  v9 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:dCopy];
  snapshotRequestCompletion = [v9 snapshotRequestCompletion];

  if (snapshotRequestCompletion)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v14;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = fileCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Snapshot request completion is already set for %@, calling completion with %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    snapshotRequestCompletion2 = [v9 snapshotRequestCompletion];
    (snapshotRequestCompletion2)[2](snapshotRequestCompletion2, fileCopy, 0);
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
  v19 = [[HMDCameraSnapshotCacheEntry alloc] initWithSnapshotCharacteristicEventUUID:dCopy snapshotFile:fileCopy timer:v17];

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v23;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting Cache Entry %@ for snapshotCharacteristicEventUUID: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  if (self)
  {
    v24 = selfCopy2->_snapshotCacheMap;
  }

  else
  {
    v24 = 0;
  }

  [(NSMutableDictionary *)v24 setObject:v19 forKeyedSubscript:dCopy];
  [v17 resume];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)removeEntryWithCharacteristicEventUUID:(id)d error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
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

  v9 = [(NSMutableDictionary *)snapshotCacheMap objectForKeyedSubscript:dCopy];
  snapshotRequestCompletion = [v9 snapshotRequestCompletion];

  if (snapshotRequestCompletion)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v14;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Snapshot request completion is already set for %@, calling completion with error %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    snapshotRequestCompletion2 = [v9 snapshotRequestCompletion];
    (snapshotRequestCompletion2)[2](snapshotRequestCompletion2, 0, errorCopy);
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing Cache Entry for snapshotCharacteristicEventUUID: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (self)
  {
    v20 = selfCopy2->_snapshotCacheMap;
  }

  else
  {
    v20 = 0;
  }

  [(NSMutableDictionary *)v20 removeObjectForKey:dCopy];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addEntryWithCharacteristicEventUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v6 = [[HMDCameraSnapshotCacheEntry alloc] initWithSnapshotCharacteristicEventUUID:dCopy snapshotFile:0 timer:0];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Added Cache Entry %@ for snapshotCharacteristicEventUUID: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (self)
  {
    snapshotCacheMap = selfCopy->_snapshotCacheMap;
  }

  else
  {
    snapshotCacheMap = 0;
  }

  [(NSMutableDictionary *)snapshotCacheMap setObject:v6 forKeyedSubscript:dCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotCache)initWithWorkQueue:(id)queue logIdentifier:(id)identifier
{
  queueCopy = queue;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HMDCameraSnapshotCache;
  v9 = [(HMDCameraSnapshotCache *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_logIdentifier, identifier);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    snapshotCacheMap = v10->_snapshotCacheMap;
    v10->_snapshotCacheMap = dictionary;
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