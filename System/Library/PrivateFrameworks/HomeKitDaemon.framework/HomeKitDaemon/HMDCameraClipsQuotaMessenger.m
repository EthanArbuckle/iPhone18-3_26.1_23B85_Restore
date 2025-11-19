@interface HMDCameraClipsQuotaMessenger
+ (id)logCategory;
- (HMDCameraClipsQuotaMessenger)initWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (id)quotaManager;
- (void)configure;
- (void)handleFetchNamesForZonesWithEnabledCloudStorageMessage:(id)a3;
- (void)handleUpdateCloudStorageMessage:(id)a3;
@end

@implementation HMDCameraClipsQuotaMessenger

- (void)handleUpdateCloudStorageMessage:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    *buf = 138543618;
    v35 = v8;
    v36 = 2114;
    v37 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 stringForKey:*MEMORY[0x277CCF4E8]];
  if (v10)
  {
    v11 = [v4 BOOLForKey:*MEMORY[0x277CCF4E0]];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFEnabledStatusToString();
      *buf = 138543874;
      v35 = v15;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating cloud storage to %@ for zone with name: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [(HMDCameraClipsQuotaMessenger *)v13 quotaManager];
    v18 = v17;
    if (v11)
    {
      v19 = [v17 enableCloudStorageForZoneWithName:v10];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __64__HMDCameraClipsQuotaMessenger_handleUpdateCloudStorageMessage___block_invoke;
      v32[3] = &unk_278687CC0;
      v33 = v4;
      v20 = [v19 addCompletionBlock:v32];

      v21 = v33;
    }

    else
    {
      v27 = [v17 disableCloudStorageForZoneWithName:v10];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__HMDCameraClipsQuotaMessenger_handleUpdateCloudStorageMessage___block_invoke_2;
      v30[3] = &unk_278687CC0;
      v31 = v4;
      v28 = [v27 addCompletionBlock:v30];

      v21 = v31;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v4 messagePayload];
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find zone name in update cloud storage message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v21];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchNamesForZonesWithEnabledCloudStorageMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    *buf = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling fetch names for zones with enabled cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDCameraClipsQuotaMessenger *)v6 quotaManager];
  v11 = [v10 fetchNamesForZonesWithEnabledCloudStorage];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke;
  v19[3] = &unk_2786811A0;
  v19[4] = v6;
  v12 = v4;
  v20 = v12;
  v13 = [v11 addSuccessBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke_13;
  v17[3] = &unk_27868A1D8;
  v17[4] = v6;
  v18 = v12;
  v14 = v12;
  v15 = [v13 addFailureBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched names for zones with enabled cloud storage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  v11 = *MEMORY[0x277CCF4F0];
  v12 = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v8 respondWithPayload:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke_13(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch names for zones with enabled cloud storage: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)quotaManager
{
  v2 = [(HMDCameraClipsQuotaMessenger *)self quotaManagerFactory];
  v3 = v2[2]();

  return v3;
}

- (void)configure
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:133];
  v4 = [(HMDCameraClipsQuotaMessenger *)self messageDispatcher];
  v5 = *MEMORY[0x277CCF4D8];
  v12[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v4 registerForMessage:v5 receiver:self policies:v6 selector:sel_handleFetchNamesForZonesWithEnabledCloudStorageMessage_];

  v7 = [(HMDCameraClipsQuotaMessenger *)self messageDispatcher];
  v8 = *MEMORY[0x277CCF4F8];
  v11 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v7 registerForMessage:v8 receiver:self policies:v9 selector:sel_handleUpdateCloudStorageMessage_];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDCameraClipsQuotaMessenger)initWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return __68__HMDCameraClipsQuotaMessenger_initWithWorkQueue_messageDispatcher___block_invoke(v14);
  }

  v15.receiver = self;
  v15.super_class = HMDCameraClipsQuotaMessenger;
  v10 = [(HMDCameraClipsQuotaMessenger *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workQueue, a3);
    objc_storeStrong(&v11->_messageDispatcher, a4);
    quotaManagerFactory = v11->_quotaManagerFactory;
    v11->_quotaManagerFactory = &__block_literal_global_133106;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_133118 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_133118, &__block_literal_global_19_133119);
  }

  v3 = logCategory__hmf_once_v7_133120;

  return v3;
}

void __43__HMDCameraClipsQuotaMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_133120;
  logCategory__hmf_once_v7_133120 = v1;
}

@end