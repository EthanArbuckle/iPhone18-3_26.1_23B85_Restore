@interface HMDResidentMeshMeshStorage
- (HMDResidentMesh)owner;
- (HMDResidentMeshMeshStorage)initWithResidentDevice:(id)a3 owner:(id)a4;
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
  v3 = [(HMDResidentMeshMeshStorage *)self owner];
  if (!v3)
  {
    _HMFPreconditionFailure();
  }

  v4 = v3;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentMeshMeshStorage *)self nestedStatusRequests];
  v7 = [(HMDResidentMeshMeshStorage *)self residentDevice];
  v8 = [v7 isReachable];

  if (v8)
  {
    [(HMDResidentMeshMeshStorage *)self setNestedStatusRequests:[(HMDResidentMeshMeshStorage *)self nestedStatusRequests]+ 1];
    if (!v6)
    {
      v23[0] = @"kMeshDevice";
      v16 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      v17 = [v16 device];
      v18 = [v17 identifier];
      v19 = [v18 UUIDString];
      v23[1] = @"kMeshVersion";
      v24[0] = v19;
      v24[1] = &unk_283E736D0;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

      v21 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __44__HMDResidentMeshMeshStorage__requestStatus__block_invoke;
      v22[3] = &unk_278689DC0;
      v22[4] = self;
      [v4 _sendMessage:@"kDeviceMeshUpdateRequestKey" payload:v20 target:v21 force:0 responseHandler:v22];

      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = [(HMDResidentMeshMeshStorage *)self owner];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v14 = "%{public}@Not sending status request because we already have an outstanding request for device: %@";
LABEL_8:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, v14, buf, 0x16u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(HMDResidentMeshMeshStorage *)self owner];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDResidentMeshMeshStorage *)self residentDevice];
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
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
  v30 = *MEMORY[0x277D85DE8];
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
      v24 = 138543874;
      v25 = v12;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Got error result for kDeviceMeshUpdateRequestKey from %@: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if ([v5 code] == 54)
    {
      v15 = [v5 domain];
      v16 = [v15 isEqualToString:*MEMORY[0x277CCFD28]];

      if (v16)
      {
        [*(a1 + 32) setGenerationCount:0];
      }
    }

    if (v7 >= 2)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [*(a1 + 32) residentDevice];
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Retrying kDeviceMeshUpdateRequestKey message for %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 32) _requestStatus];
    }
  }

  else
  {
    [*(a1 + 32) setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kMeshDeviceStorageEnabled"}];
    v22 = [v6 hmf_numberForKey:@"kMeshDeviceStorageGenerationCount"];
    [*(a1 + 32) setGenerationCount:{objc_msgSend(v22, "unsignedIntegerValue")}];

    v10 = [v6 hmf_dictionaryForKey:@"kMeshDeviceStorageSystemLoad"];
    [*(a1 + 32) setMetrics:v10];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDResidentMeshMeshStorage)initWithResidentDevice:(id)a3 owner:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDResidentMeshMeshStorage;
  v9 = [(HMDResidentMeshMeshStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_residentDevice, a3);
    objc_storeWeak(&v10->_owner, v8);
    v11 = [MEMORY[0x277CBEAC0] dictionary];
    metrics = v10->_metrics;
    v10->_metrics = v11;

    v10->_generationCount = 1;
    v10->_enabled = 1;
  }

  return v10;
}

@end