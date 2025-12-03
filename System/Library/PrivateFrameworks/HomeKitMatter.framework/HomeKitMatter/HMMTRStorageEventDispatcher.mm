@interface HMMTRStorageEventDispatcher
+ (id)logCategory;
+ (id)shortDescription;
- (HMMTRStorageDataSource)dataSource;
- (HMMTRStorageDelegate)delegate;
- (HMMTRStorageEventDispatcher)initWithQueue:(id)queue;
- (id)logIdentifier;
- (void)_handleUpdatedDataWithIsLocalChange:(BOOL)change;
- (void)handlePrimaryResidentDataReady;
- (void)handleUpdatedCurrentFabricIndex;
- (void)handleUpdatedDataWithIsLocalChange:(BOOL)change;
- (void)setDataSource:(id)source;
@end

@implementation HMMTRStorageEventDispatcher

- (HMMTRStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  fabricID = [(HMMTRStorageEventDispatcher *)self fabricID];
  stringValue = [fabricID stringValue];

  return stringValue;
}

- (void)handleUpdatedDataWithIsLocalChange:(BOOL)change
{
  workQueue = [(HMMTRStorageEventDispatcher *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HMMTRStorageEventDispatcher_handleUpdatedDataWithIsLocalChange___block_invoke;
  v6[3] = &unk_2786F0C80;
  v6[4] = self;
  changeCopy = change;
  dispatch_async(workQueue, v6);
}

- (void)handlePrimaryResidentDataReady
{
  delegate = [(HMMTRStorageEventDispatcher *)self delegate];
  [delegate handlePrimaryResidentDataReady];
}

- (void)handleUpdatedCurrentFabricIndex
{
  v35 = *MEMORY[0x277D85DE8];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform != 4)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring resident updates on non-tvOS device", buf, 0xCu);
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v13);
LABEL_10:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  fabricUUID = [(HMMTRStorageEventDispatcher *)self fabricUUID];
  dataSource = [(HMMTRStorageEventDispatcher *)self dataSource];
  currentFabricUUID = [dataSource currentFabricUUID];
  if ([fabricUUID isEqual:currentFabricUUID])
  {
    fabricID = [(HMMTRStorageEventDispatcher *)self fabricID];
    dataSource2 = [(HMMTRStorageEventDispatcher *)self dataSource];
    fabricUUID2 = [(HMMTRStorageEventDispatcher *)self fabricUUID];
    v11 = [dataSource2 fabricIDFromFabricUUID:fabricUUID2];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        fabricID2 = [(HMMTRStorageEventDispatcher *)selfCopy2 fabricID];
        *buf = 138543618;
        v32 = v16;
        v33 = 2112;
        v34 = fabricID2;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring spurious fabric index update notification for fabric ID %@", buf, 0x16u);

LABEL_8:
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  fabricUUID3 = [(HMMTRStorageEventDispatcher *)self fabricUUID];
  dataSource3 = [(HMMTRStorageEventDispatcher *)self dataSource];
  currentFabricUUID2 = [dataSource3 currentFabricUUID];
  if ([fabricUUID3 isEqual:currentFabricUUID2])
  {
  }

  else
  {
    dataSource4 = [(HMMTRStorageEventDispatcher *)self dataSource];
    currentFabricUUID3 = [dataSource4 currentFabricUUID];

    if (!currentFabricUUID3)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v28;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Current device is no longer the primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      delegate = [(HMMTRStorageEventDispatcher *)selfCopy3 delegate];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __62__HMMTRStorageEventDispatcher_handleUpdatedCurrentFabricIndex__block_invoke;
      v30[3] = &unk_2786F0CA8;
      v30[4] = selfCopy3;
      [delegate handleDeviceNoLongerPrimaryResidentWithCompletion:v30];

      goto LABEL_10;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  [(HMMTRStorageEventDispatcher *)self handleUpdatedDataWithIsLocalChange:0];
}

void __62__HMMTRStorageEventDispatcher_handleUpdatedCurrentFabricIndex__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting fabric ID to nil", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = 0;

  os_unfair_lock_unlock(v6 + 2);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedDataWithIsLocalChange:(BOOL)change
{
  changeCopy = change;
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = v8;
    v10 = "remote";
    if (changeCopy)
    {
      v10 = "local";
    }

    *buf = 138543618;
    v34 = v8;
    v35 = 2080;
    v36 = v10;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling updated data storage due to %s change", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  dataSource = [(HMMTRStorageEventDispatcher *)selfCopy dataSource];
  currentFabricUUID = [dataSource currentFabricUUID];

  if (currentFabricUUID)
  {
    dataSource2 = [(HMMTRStorageEventDispatcher *)selfCopy dataSource];
    v14 = [dataSource2 fabricIDFromFabricUUID:currentFabricUUID];
  }

  else
  {
    v14 = 0;
  }

  fabricUUID = [(HMMTRStorageEventDispatcher *)selfCopy fabricUUID];
  v16 = HMFEqualObjects();

  if (v16)
  {
    fabricID = [(HMMTRStorageEventDispatcher *)selfCopy fabricID];
    v18 = HMFEqualObjects();

    if (!currentFabricUUID || (v18 & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  else if (!currentFabricUUID)
  {
    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    fabricUUID2 = [(HMMTRStorageEventDispatcher *)v20 fabricUUID];
    fabricID2 = [(HMMTRStorageEventDispatcher *)v20 fabricID];
    *buf = 138544386;
    v34 = v22;
    v35 = 2112;
    v36 = fabricUUID2;
    v37 = 2112;
    v38 = fabricID2;
    v39 = 2112;
    v40 = currentFabricUUID;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Current target fabric changed from %@/%@ to %@/%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v19);
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&v20->_fabricUUID, currentFabricUUID);
  objc_storeStrong(&v20->_fabricID, v14);
  os_unfair_lock_unlock(&v20->_lock);
LABEL_16:
  fabricUUID3 = [(HMMTRStorageEventDispatcher *)selfCopy fabricUUID];

  if (fabricUUID3)
  {
    dataSource3 = [(HMMTRStorageEventDispatcher *)selfCopy dataSource];
    fabricUUID4 = [(HMMTRStorageEventDispatcher *)selfCopy fabricUUID];
    v28 = [dataSource3 storageDataSourceForFabricUUID:fabricUUID4];
    [(HMMTRStorageEventDispatcher *)selfCopy setFabricDataSource:v28];
  }

  workQueue = [(HMMTRStorageEventDispatcher *)selfCopy workQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__HMMTRStorageEventDispatcher__handleUpdatedDataWithIsLocalChange___block_invoke;
  v31[3] = &unk_2786F0C80;
  v31[4] = selfCopy;
  v32 = changeCopy;
  dispatch_async(workQueue, v31);

  v30 = *MEMORY[0x277D85DE8];
}

void __67__HMMTRStorageEventDispatcher__handleUpdatedDataWithIsLocalChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 storageDidUpdateData:*(a1 + 32) isLocalChange:*(a1 + 40)];
}

- (void)setDataSource:(id)source
{
  obj = source;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_dataSource, obj);
  currentFabricUUID = [obj currentFabricUUID];
  fabricUUID = self->_fabricUUID;
  self->_fabricUUID = currentFabricUUID;

  v6 = [obj fabricIDFromFabricUUID:self->_fabricUUID];
  fabricID = self->_fabricID;
  self->_fabricID = v6;

  if (self->_fabricID)
  {
    v8 = [obj storageDataSourceForFabricUUID:self->_fabricUUID];
    fabricDataSource = self->_fabricDataSource;
    self->_fabricDataSource = v8;
  }

  os_unfair_lock_unlock(&self->_lock);
  delegate = [(HMMTRStorageEventDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate storageDidBecomeAvailable:obj];
  }
}

- (HMMTRStorageDataSource)dataSource
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMMTRStorageEventDispatcher)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HMMTRStorageEventDispatcher;
  v6 = [(HMMTRStorageEventDispatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
  }

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_12168 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_12168, &__block_literal_global_12169);
  }

  v3 = logCategory__hmf_once_v11_12170;

  return v3;
}

uint64_t __42__HMMTRStorageEventDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_12170;
  logCategory__hmf_once_v11_12170 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end