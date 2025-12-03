@interface HMDCameraClipsQuotaMessenger
+ (id)logCategory;
- (HMDCameraClipsQuotaMessenger)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (id)quotaManager;
- (void)configure;
- (void)handleFetchNamesForZonesWithEnabledCloudStorageMessage:(id)message;
- (void)handleUpdateCloudStorageMessage:(id)message;
@end

@implementation HMDCameraClipsQuotaMessenger

- (void)handleUpdateCloudStorageMessage:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v35 = v8;
    v36 = 2114;
    v37 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [messageCopy stringForKey:*MEMORY[0x277CCF4E8]];
  if (v10)
  {
    v11 = [messageCopy BOOLForKey:*MEMORY[0x277CCF4E0]];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating cloud storage to %@ for zone with name: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    quotaManager = [(HMDCameraClipsQuotaMessenger *)v13 quotaManager];
    v18 = quotaManager;
    if (v11)
    {
      v19 = [quotaManager enableCloudStorageForZoneWithName:v10];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __64__HMDCameraClipsQuotaMessenger_handleUpdateCloudStorageMessage___block_invoke;
      v32[3] = &unk_279733BC0;
      v33 = messageCopy;
      v20 = [v19 addCompletionBlock:v32];

      v21 = v33;
    }

    else
    {
      v27 = [quotaManager disableCloudStorageForZoneWithName:v10];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__HMDCameraClipsQuotaMessenger_handleUpdateCloudStorageMessage___block_invoke_2;
      v30[3] = &unk_279733BC0;
      v31 = messageCopy;
      v28 = [v27 addCompletionBlock:v30];

      v21 = v31;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = messagePayload;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find zone name in update cloud storage message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v21];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchNamesForZonesWithEnabledCloudStorageMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling fetch names for zones with enabled cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  quotaManager = [(HMDCameraClipsQuotaMessenger *)selfCopy quotaManager];
  fetchNamesForZonesWithEnabledCloudStorage = [quotaManager fetchNamesForZonesWithEnabledCloudStorage];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke;
  v19[3] = &unk_27972EB68;
  v19[4] = selfCopy;
  v12 = messageCopy;
  v20 = v12;
  v13 = [fetchNamesForZonesWithEnabledCloudStorage addSuccessBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__HMDCameraClipsQuotaMessenger_handleFetchNamesForZonesWithEnabledCloudStorageMessage___block_invoke_13;
  v17[3] = &unk_2797358C8;
  v17[4] = selfCopy;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched names for zones with enabled cloud storage: %@", buf, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch names for zones with enabled cloud storage: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)quotaManager
{
  quotaManagerFactory = [(HMDCameraClipsQuotaMessenger *)self quotaManagerFactory];
  v3 = quotaManagerFactory[2]();

  return v3;
}

- (void)configure
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:133];
  messageDispatcher = [(HMDCameraClipsQuotaMessenger *)self messageDispatcher];
  v5 = *MEMORY[0x277CCF4D8];
  v12[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [messageDispatcher registerForMessage:v5 receiver:self policies:v6 selector:sel_handleFetchNamesForZonesWithEnabledCloudStorageMessage_];

  messageDispatcher2 = [(HMDCameraClipsQuotaMessenger *)self messageDispatcher];
  v8 = *MEMORY[0x277CCF4F8];
  v11 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [messageDispatcher2 registerForMessage:v8 receiver:self policies:v9 selector:sel_handleUpdateCloudStorageMessage_];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDCameraClipsQuotaMessenger)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dispatcherCopy;
  if (!dispatcherCopy)
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
    objc_storeStrong(&v10->_workQueue, queue);
    objc_storeStrong(&v11->_messageDispatcher, dispatcher);
    quotaManagerFactory = v11->_quotaManagerFactory;
    v11->_quotaManagerFactory = &__block_literal_global_8869;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_19);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __43__HMDCameraClipsQuotaMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v7 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end