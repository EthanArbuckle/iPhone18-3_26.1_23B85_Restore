@interface HMDResidentMeshResidentStorage
+ (id)logCategory;
- (BOOL)_residentDidChange;
- (HMDResidentDevice)residentDevice;
- (HMDResidentMesh)owner;
- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)device owner:(id)owner;
- (id)_buildPayload;
- (id)logIdentifier;
- (void)_transmitAfter:(double)after;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentMeshResidentStorage

- (HMDResidentDevice)residentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_residentDevice);

  return WeakRetained;
}

- (HMDResidentMesh)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v20 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  v6 = owner;
  if (owner)
  {
    workQueue = [owner workQueue];
    dispatch_assert_queue_V2(workQueue);

    transmitTimer = [(HMDResidentMeshResidentStorage *)self transmitTimer];

    if (transmitTimer == fireCopy)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Transmit timer fired; sending status update", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDResidentMeshResidentStorage *)selfCopy _transmitStatus:0];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident mesh owner reference is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  residentDevice = [(HMDResidentMeshResidentStorage *)self residentDevice];
  device = [residentDevice device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

void __50__HMDResidentMeshResidentStorage__transmitStatus___block_invoke(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] device];
      v13 = [v12 shortDescription];
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to send status update to %{public}@: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    [a1[6] setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kMeshDeviceStorageEnabled"}];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_buildPayload
{
  v16[5] = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  resident = [owner resident];
  v16[0] = &unk_283E736D0;
  v15[0] = @"kMeshVersion";
  v15[1] = @"kMeshDeviceStorageGenerationCount";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resident, "generationCount")}];
  v16[1] = v14;
  v15[2] = @"kMeshDevice";
  residentDevice = [resident residentDevice];
  device = [residentDevice device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v16[2] = uUIDString;
  v15[3] = @"kMeshDeviceStorageEnabled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resident, "enabled")}];
  v16[3] = v8;
  v15[4] = @"kMeshDeviceStorageSystemLoad";
  loadMetrics = [owner loadMetrics];
  v10 = [loadMetrics copy];
  v16[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_transmitAfter:(double)after
{
  v38 = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshResidentStorage *)self owner];
  if (!owner)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot transmit after delay because owner reference is nil", &v32, 0xCu);
    }

    v11 = v12;
    goto LABEL_16;
  }

  transmitTimer = [(HMDResidentMeshResidentStorage *)self transmitTimer];

  if (transmitTimer)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = owner;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Not scheduling transmit timer because one already exists", &v32, 0xCu);
    }

    v11 = v7;
LABEL_16:
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  _residentDidChange = [(HMDResidentMeshResidentStorage *)self _residentDidChange];
  v17 = objc_autoreleasePoolPush();
  v18 = owner;
  v19 = HMFGetOSLogHandle();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (!_residentDidChange)
  {
    if (v20)
    {
      v30 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v30;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not scheduling transmit timer because metrics didn't change", &v32, 0xCu);
    }

    v11 = v17;
    goto LABEL_16;
  }

  if (v20)
  {
    v21 = HMFGetLogIdentifier();
    residentDevice = [(HMDResidentMeshResidentStorage *)self residentDevice];
    device = [residentDevice device];
    shortDescription = [device shortDescription];
    v32 = 138543874;
    v33 = v21;
    v34 = 2114;
    v35 = shortDescription;
    v36 = 2048;
    afterCopy = after;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting transmit timer for %{public}@ for %fs", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v25 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:after];
  [(HMDResidentMeshResidentStorage *)self setTransmitTimer:v25];

  transmitTimer2 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  [transmitTimer2 setDelegate:self];

  transmitTimer3 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  workQueue = [v18 workQueue];
  [transmitTimer3 setDelegateQueue:workQueue];

  transmitTimer4 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  [transmitTimer4 resume];

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_residentDidChange
{
  metrics = [(HMDResidentMeshResidentStorage *)self metrics];
  lastSentMetrics = [(HMDResidentMeshResidentStorage *)self lastSentMetrics];
  v5 = [metrics isEqualToDictionary:lastSentMetrics];

  return v5 ^ 1;
}

- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)device owner:(id)owner
{
  deviceCopy = device;
  ownerCopy = owner;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = ownerCopy;
  if (!ownerCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return +[(HMDResidentMeshResidentStorage *)v17];
  }

  v19.receiver = self;
  v19.super_class = HMDResidentMeshResidentStorage;
  v9 = [(HMDResidentMeshResidentStorage *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_owner, v8);
    objc_storeWeak(&v10->_residentDevice, deviceCopy);
    loadMetrics = [v8 loadMetrics];
    v12 = [loadMetrics mutableCopy];
    metrics = v10->_metrics;
    v10->_metrics = v12;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    lastSentMetrics = v10->_lastSentMetrics;
    v10->_lastSentMetrics = dictionary;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_159887 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_159887, &__block_literal_global_159888);
  }

  v3 = logCategory__hmf_once_v17_159889;

  return v3;
}

void __45__HMDResidentMeshResidentStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_159889;
  logCategory__hmf_once_v17_159889 = v1;
}

@end