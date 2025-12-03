@interface HMDResidentMeshMeshStorage
- (HMDResidentMesh)owner;
- (HMDResidentMeshMeshStorage)initWithResidentDevice:(id)device owner:(id)owner;
- (void)_requestStatus;
@end

@implementation HMDResidentMeshMeshStorage

- (HMDResidentMesh)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)_requestStatus
{
  v29 = *MEMORY[0x277D85DE8];
  owner = [(HMDResidentMeshMeshStorage *)self owner];
  if (!owner)
  {
    _HMFPreconditionFailure();
  }

  v4 = owner;
  workQueue = [owner workQueue];
  dispatch_assert_queue_V2(workQueue);

  nestedStatusRequests = [(HMDResidentMeshMeshStorage *)self nestedStatusRequests];
  residentDevice = [(HMDResidentMeshMeshStorage *)self residentDevice];
  isReachable = [residentDevice isReachable];

  if (isReachable)
  {
    [(HMDResidentMeshMeshStorage *)self setNestedStatusRequests:[(HMDResidentMeshMeshStorage *)self nestedStatusRequests]+ 1];
    if (!nestedStatusRequests)
    {
      v23[0] = @"kMeshDevice";
      residentDevice2 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      device = [residentDevice2 device];
      identifier = [device identifier];
      uUIDString = [identifier UUIDString];
      v23[1] = @"kMeshVersion";
      v24[0] = uUIDString;
      v24[1] = &unk_286628C78;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

      residentDevice3 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __44__HMDResidentMeshMeshStorage__requestStatus__block_invoke;
      v22[3] = &unk_279734E00;
      v22[4] = self;
      [v4 _sendMessage:@"kDeviceMeshUpdateRequestKey" payload:v20 target:residentDevice3 force:0 responseHandler:v22];

      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    owner2 = [(HMDResidentMeshMeshStorage *)self owner];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      residentDevice4 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = residentDevice4;
      v14 = "%{public}@Not sending status request because we already have an outstanding request for device: %@";
LABEL_8:
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, v14, buf, 0x16u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    owner2 = [(HMDResidentMeshMeshStorage *)self owner];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      residentDevice4 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = residentDevice4;
      v14 = "%{public}@skipping update to unreachable resident %@";
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

void __44__HMDResidentMeshMeshStorage__requestStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) nestedStatusRequests];
  [*(a1 + 32) setNestedStatusRequests:0];
  if (v5)
  {
    v8 = [*(a1 + 32) owner];
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) residentDevice];
      v14 = [v13 device];
      v30 = 138543874;
      v31 = v12;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Got error result for kDeviceMeshUpdateRequestKey from %@: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if ([v5 code] == 54)
    {
      v15 = [v5 domain];
      v16 = [v15 isEqualToString:*MEMORY[0x277CCFD28]];

      if (v16)
      {
        [*(a1 + 32) setGenerationCount:0];
        v17 = [*(a1 + 32) accessoryUUIDs];
        [v17 removeAllObjects];

        v18 = [MEMORY[0x277CBEB38] dictionary];
        [*(a1 + 32) setAccessoryListWithLinkQuality:v18];
      }
    }

    if (v7 >= 2)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v10;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 32) residentDevice];
        v30 = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Retrying kDeviceMeshUpdateRequestKey message for %@", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 32) _requestStatus];
    }
  }

  else
  {
    [*(a1 + 32) setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kMeshDeviceStorageEnabled"}];
    v24 = [v6 hmf_numberForKey:@"kMeshDeviceStorageGenerationCount"];
    [*(a1 + 32) setGenerationCount:{objc_msgSend(v24, "unsignedIntegerValue")}];

    v25 = [v6 hmf_dictionaryForKey:@"kMeshDeviceStorageSystemLoad"];
    [*(a1 + 32) setMetrics:v25];

    v26 = [v6 hmf_arrayForKey:@"kMeshDeviceStorageAcccessories"];
    v27 = uuidSetFromArrayOfStrings(v26);
    [*(a1 + 32) setAccessoryUUIDs:v27];

    v10 = [v6 hmf_dictionaryForKey:@"kMeshDeviceStorageAccessoriesWithLinkQuality"];
    v28 = [v10 mutableCopy];
    [*(a1 + 32) setAccessoryListWithLinkQuality:v28];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (HMDResidentMeshMeshStorage)initWithResidentDevice:(id)device owner:(id)owner
{
  deviceCopy = device;
  ownerCopy = owner;
  v18.receiver = self;
  v18.super_class = HMDResidentMeshMeshStorage;
  v9 = [(HMDResidentMeshMeshStorage *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_residentDevice, device);
    objc_storeWeak(&v10->_owner, ownerCopy);
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    metrics = v10->_metrics;
    v10->_metrics = dictionary;

    v10->_generationCount = 1;
    v10->_enabled = 1;
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accessoryUUIDs = v10->_accessoryUUIDs;
    v10->_accessoryUUIDs = v13;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    accessoryListWithLinkQuality = v10->_accessoryListWithLinkQuality;
    v10->_accessoryListWithLinkQuality = dictionary2;
  }

  return v10;
}

@end