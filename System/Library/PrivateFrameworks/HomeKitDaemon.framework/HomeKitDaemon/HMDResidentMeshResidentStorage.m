@interface HMDResidentMeshResidentStorage
+ (id)logCategory;
- (BOOL)_residentDidChange;
- (HMDResidentDevice)residentDevice;
- (HMDResidentMesh)owner;
- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)a3 owner:(id)a4;
- (id)_buildPayload;
- (id)logIdentifier;
- (void)_transmitAfter:(double)a3;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMeshResidentStorage *)self owner];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = [(HMDResidentMeshResidentStorage *)self transmitTimer];

    if (v8 == v4)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Transmit timer fired; sending status update", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDResidentMeshResidentStorage *)v10 _transmitStatus:0];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
  v2 = [(HMDResidentMeshResidentStorage *)self residentDevice];
  v3 = [v2 device];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];

  return v5;
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
  v2 = [(HMDResidentMeshResidentStorage *)self owner];
  v3 = [v2 resident];
  v16[0] = &unk_283E736D0;
  v15[0] = @"kMeshVersion";
  v15[1] = @"kMeshDeviceStorageGenerationCount";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "generationCount")}];
  v16[1] = v14;
  v15[2] = @"kMeshDevice";
  v4 = [v3 residentDevice];
  v5 = [v4 device];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  v16[2] = v7;
  v15[3] = @"kMeshDeviceStorageEnabled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "enabled")}];
  v16[3] = v8;
  v15[4] = @"kMeshDeviceStorageSystemLoad";
  v9 = [v2 loadMetrics];
  v10 = [v9 copy];
  v16[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_transmitAfter:(double)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [(HMDResidentMeshResidentStorage *)self owner];
  if (!v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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

  v6 = [(HMDResidentMeshResidentStorage *)self transmitTimer];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
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

  v16 = [(HMDResidentMeshResidentStorage *)self _residentDidChange];
  v17 = objc_autoreleasePoolPush();
  v18 = v5;
  v19 = HMFGetOSLogHandle();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (!v16)
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
    v22 = [(HMDResidentMeshResidentStorage *)self residentDevice];
    v23 = [v22 device];
    v24 = [v23 shortDescription];
    v32 = 138543874;
    v33 = v21;
    v34 = 2114;
    v35 = v24;
    v36 = 2048;
    v37 = a3;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting transmit timer for %{public}@ for %fs", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v25 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];
  [(HMDResidentMeshResidentStorage *)self setTransmitTimer:v25];

  v26 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  [v26 setDelegate:self];

  v27 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  v28 = [v18 workQueue];
  [v27 setDelegateQueue:v28];

  v29 = [(HMDResidentMeshResidentStorage *)self transmitTimer];
  [v29 resume];

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_residentDidChange
{
  v3 = [(HMDResidentMeshResidentStorage *)self metrics];
  v4 = [(HMDResidentMeshResidentStorage *)self lastSentMetrics];
  v5 = [v3 isEqualToDictionary:v4];

  return v5 ^ 1;
}

- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)a3 owner:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
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
    objc_storeWeak(&v10->_residentDevice, v6);
    v11 = [v8 loadMetrics];
    v12 = [v11 mutableCopy];
    metrics = v10->_metrics;
    v10->_metrics = v12;

    v14 = [MEMORY[0x277CBEAC0] dictionary];
    lastSentMetrics = v10->_lastSentMetrics;
    v10->_lastSentMetrics = v14;
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