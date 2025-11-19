@interface HMDResidentMeshResidentStorage
+ (id)logCategory;
- (BOOL)_addAccessoryWithLinkQuality:(id)a3 toList:(id)a4;
- (BOOL)_residentDidChange;
- (BOOL)_testCanSkipReachabilityUpdateForAccessory:(id)a3;
- (HMDResidentDevice)residentDevice;
- (HMDResidentMesh)owner;
- (HMDResidentMeshResidentStorage)initWithResidentDevice:(id)a3 owner:(id)a4;
- (id)_buildPayload;
- (id)logIdentifier;
- (void)_addAccessory:(id)a3 activateTimer:(BOOL)a4;
- (void)_removeAccessory:(id)a3 activateTimer:(BOOL)a4;
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Transmit timer fired; sending status update", &v18, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident mesh owner reference is nil", &v18, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to send status update to %{public}@: %@", &v15, 0x20u);
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
  v35 = *MEMORY[0x277D85DE8];
  v27 = [(HMDResidentMeshResidentStorage *)self owner];
  v3 = [v27 resident];
  v4 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v3 accessoryUUIDs];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v28 + 1) + 8 * i) UUIDString];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v33[0] = &unk_286628C78;
  v32[0] = @"kMeshVersion";
  v32[1] = @"kMeshDeviceStorageGenerationCount";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "generationCount")}];
  v33[1] = v26;
  v32[2] = @"kMeshDevice";
  v25 = [v3 residentDevice];
  v23 = [v25 device];
  [v23 identifier];
  v11 = v3;
  v12 = v24 = v3;
  v13 = [v12 UUIDString];
  v33[2] = v13;
  v32[3] = @"kMeshDeviceStorageEnabled";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "enabled")}];
  v33[3] = v14;
  v32[4] = @"kMeshDeviceStorageAcccessories";
  v15 = [v4 copy];
  v33[4] = v15;
  v32[5] = @"kMeshDeviceStorageAccessoriesWithLinkQuality";
  v16 = [(HMDResidentMeshResidentStorage *)self accessoryListWithLinkQuality];
  v17 = [v16 copy];
  v33[5] = v17;
  v32[6] = @"kMeshDeviceStorageSystemLoad";
  v18 = [v27 loadMetrics];
  v19 = [v18 copy];
  v33[6] = v19;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v22;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot transmit after delay because owner reference is nil", &v32, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Not scheduling transmit timer because one already exists", &v32, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Not scheduling transmit timer because metrics didn't change", &v32, 0xCu);
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
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting transmit timer for %{public}@ for %fs", &v32, 0x20u);
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
  if ([v3 isEqualToDictionary:v4])
  {
    v5 = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
    v6 = [(HMDResidentMeshResidentStorage *)self lastSentAccessoryUUIDs];
    v7 = [v5 isEqual:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_removeAccessory:(id)a3 activateTimer:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [(HMDResidentMeshResidentStorage *)self accessoryListWithLinkQuality];
    v9 = [v6 identifier];
    [v8 removeObjectForKey:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v13;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory: %@ with nil identifier sent to remove", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
  v15 = [v6 uuid];
  v16 = [v14 containsObject:v15];

  if (v16 && ![(HMDResidentMeshResidentStorage *)self _testCanSkipReachabilityUpdateForAccessory:v6])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [(HMDResidentMeshResidentStorage *)self owner];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v20 = v36 = v4;
      v34 = [(HMDResidentMeshResidentStorage *)self owner];
      v33 = [v34 resident];
      v32 = [v33 residentDevice];
      v31 = [v32 device];
      [v31 shortDescription];
      v21 = v35 = v17;
      v22 = [v6 uuid];
      v23 = [(HMDResidentMeshResidentStorage *)self residentDevice];
      v24 = [v23 device];
      v25 = [v24 shortDescription];
      v26 = v25;
      *buf = 138544386;
      v27 = "NO";
      v38 = v20;
      if (v36)
      {
        v27 = "YES";
      }

      v39 = 2114;
      v40 = v21;
      v41 = 2114;
      v42 = v22;
      v43 = 2114;
      v44 = v25;
      v45 = 2080;
      v46 = v27;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing connectivity from %{public}@ to %{public}@ for %{public}@ (activateTimer=%s)", buf, 0x34u);

      v17 = v35;
      v4 = v36;
    }

    objc_autoreleasePoolPop(v17);
    v28 = [(HMDResidentMeshResidentStorage *)self accessoryUUIDs];
    v29 = [v6 uuid];
    [v28 removeObject:v29];

    if (v4)
    {
      [(HMDResidentMeshResidentStorage *)self _transmitAfter:10.0];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessory:(id)a3 activateTimer:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uuid];
  v8 = [(HMDResidentMeshResidentStorage *)self owner];
  v9 = objc_autoreleasePoolPush();
  if (v8)
  {
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v12;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding accessory to mesh: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if ([v15 hasBTLELink])
    {
      v16 = [(HMDResidentMeshResidentStorage *)v10 accessoryListWithLinkQuality];
      v17 = [(HMDResidentMeshResidentStorage *)v10 _addAccessoryWithLinkQuality:v15 toList:v16];
    }

    else
    {
      v17 = 0;
    }

    v20 = [(HMDResidentMeshResidentStorage *)v10 accessoryUUIDs];
    v21 = [v20 containsObject:v7];

    if ((v21 & 1) == 0 && ![(HMDResidentMeshResidentStorage *)v10 _testCanSkipReachabilityUpdateForAccessory:v13])
    {
      v38 = v4;
      v22 = objc_autoreleasePoolPush();
      v23 = [(HMDResidentMeshResidentStorage *)v10 owner];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v35 = [(HMDResidentMeshResidentStorage *)v10 owner];
        v34 = [v35 resident];
        v33 = [v34 residentDevice];
        v32 = [v33 device];
        v25 = [v32 shortDescription];
        v31 = [(HMDResidentMeshResidentStorage *)v10 residentDevice];
        v29 = [v31 device];
        [v29 shortDescription];
        v26 = v36 = v22;
        v30 = HMFBooleanToString();
        *buf = 138544386;
        v40 = v37;
        v41 = 2114;
        v42 = v25;
        v43 = 2114;
        v44 = v7;
        v45 = 2114;
        v46 = v26;
        v47 = 2112;
        v48 = v30;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Adding connectivity from %{public}@ to %{public}@ for %{public}@ (activateTimer=%@)", buf, 0x34u);

        v22 = v36;
      }

      objc_autoreleasePoolPop(v22);
      v27 = [(HMDResidentMeshResidentStorage *)v10 accessoryUUIDs];
      [v27 addObject:v7];

      if (v38 || v17)
      {
        [(HMDResidentMeshResidentStorage *)v10 _transmitAfter:10.0];
      }
    }
  }

  else
  {
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[HMDResidentMesh] Owner of Resident Device node disappeared out from under us.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_testCanSkipReachabilityUpdateForAccessory:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 cameraProfiles];
    v8 = [v7 count] == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_addAccessoryWithLinkQuality:(id)a3 toList:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  v16 = 0;
  v15 = 5;
  v8 = [v6 home];

  [v8 retrieveStateForTrackedAccessory:v7 stateNumber:0 isReachable:&v16 linkQuality:&v15 lastSeen:0];
  v9 = [v5 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v16 != 1)
  {
    if (v9)
    {
      [v5 setObject:0 forKeyedSubscript:v7];
      goto LABEL_7;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [v9 integerValue];
  if (v11 == v15)
  {
    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [v5 setObject:v12 forKeyedSubscript:v7];

LABEL_7:
  v13 = 1;
LABEL_9:

  return v13;
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
    v23 = _HMFPreconditionFailure();
    return +[(HMDResidentMeshResidentStorage *)v23];
  }

  v25.receiver = self;
  v25.super_class = HMDResidentMeshResidentStorage;
  v9 = [(HMDResidentMeshResidentStorage *)&v25 init];
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

    v16 = [MEMORY[0x277CBEB58] set];
    accessoryUUIDs = v10->_accessoryUUIDs;
    v10->_accessoryUUIDs = v16;

    v18 = [MEMORY[0x277CBEB98] set];
    lastSentAccessoryUUIDs = v10->_lastSentAccessoryUUIDs;
    v10->_lastSentAccessoryUUIDs = v18;

    v20 = [MEMORY[0x277CBEB38] dictionary];
    accessoryListWithLinkQuality = v10->_accessoryListWithLinkQuality;
    v10->_accessoryListWithLinkQuality = v20;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23_106818 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_106818, &__block_literal_global_106819);
  }

  v3 = logCategory__hmf_once_v24_106820;

  return v3;
}

uint64_t __45__HMDResidentMeshResidentStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24_106820;
  logCategory__hmf_once_v24_106820 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end