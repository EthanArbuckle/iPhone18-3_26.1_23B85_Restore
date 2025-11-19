@interface HMDSiriEndpointProfilesMessenger
+ (id)logCategory;
- (HMDSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 messageRouter:(id)a5 messageHandler:(id)a6;
- (id)intermediateApplyOnboardingSelectionsRequestMessageForMessage:(id)a3 error:(id *)a4;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)a3;
- (void)routeSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)a3;
- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)a3;
@end

@implementation HMDSiriEndpointProfilesMessenger

- (id)logIdentifier
{
  v2 = [(HMDSiriEndpointProfilesMessenger *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)intermediateApplyOnboardingSelectionsRequestMessageForMessage:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CD1E08]);
  v8 = [v6 messagePayload];
  v9 = [v7 initWithPayload:v8];

  if (v9)
  {
    v10 = [v6 mutableCopy];
    v11 = [v6 identifier];
    [v10 setIdentifier:v11];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__HMDSiriEndpointProfilesMessenger_intermediateApplyOnboardingSelectionsRequestMessageForMessage_error___block_invoke;
    v18[3] = &unk_279730A88;
    v19 = v6;
    v20 = self;
    v21 = v9;
    [v10 setResponseHandler:v18];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory UUID for intermediate apply onboarding selections message handler using message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    *a4 = v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

void __104__HMDSiriEndpointProfilesMessenger_intermediateApplyOnboardingSelectionsRequestMessageForMessage_error___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [a1[4] respondWithPayload:v6 error:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CD1E10]) initWithPayload:v6];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v22[0] = @"accessoryUUID";
      v9 = a1[5];
      v10 = [a1[6] accessoryUUID];
      v22[1] = @"HMDSiriEndpointProfileNeedsOnboardingResultCodingKey";
      v23[0] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "onboardingResult")}];
      v23[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v8 postNotificationName:@"HMDSiriEndpointProfileUpdateNeedsOnboardingNotification" object:v9 userInfo:v12];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1[5];
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response using apply onboarding intermediate response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[5];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response payload for apply onboarding intermediate response with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDSiriEndpointProfilesMessenger *)self messageRouter];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__HMDSiriEndpointProfilesMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke;
  v6[3] = &unk_279733FD8;
  v6[4] = self;
  [v5 routeMessage:v4 localHandler:v6];
}

void __78__HMDSiriEndpointProfilesMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 messageHandler];
  [v4 handleSiriEndpointDeleteSiriHistoryRequestMessage:v3];
}

- (void)routeSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing siri endpoint apply onboarding selections request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v14 = 0;
  v9 = [(HMDSiriEndpointProfilesMessenger *)v6 intermediateApplyOnboardingSelectionsRequestMessageForMessage:v4 error:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [(HMDSiriEndpointProfilesMessenger *)v6 messageRouter];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __93__HMDSiriEndpointProfilesMessenger_routeSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke;
    v13[3] = &unk_279733FD8;
    v13[4] = v6;
    [v11 routeMessage:v9 localHandler:v13];
  }

  else
  {
    [v4 respondWithError:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __93__HMDSiriEndpointProfilesMessenger_routeSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 messageHandler];
  [v4 handleSiriEndpointApplyOnboardingSelectionsRequestMessage:v3];
}

- (void)registerForMessagesWithHome:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];

  v8 = [(HMDSiriEndpointProfilesMessenger *)self messageDispatcher];
  v9 = *MEMORY[0x277CD0FB8];
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v8 registerForMessage:v9 receiver:self policies:v10 selector:sel_routeSiriEndpointApplyOnboardingSelectionsRequestMessage_];

  v11 = [(HMDSiriEndpointProfilesMessenger *)self messageDispatcher];
  v12 = [MEMORY[0x277CD1E18] messageName];
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [v11 registerForMessage:v12 receiver:self policies:v13 selector:sel_routeSiriEndpointDeleteSiriHistoryMessage_];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 messageRouter:(id)a5 messageHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return +[(HMDSiriEndpointProfilesMessenger *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDSiriEndpointProfilesMessenger;
  v16 = [(HMDSiriEndpointProfilesMessenger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_messageTargetUUID, a3);
    objc_storeStrong(&v17->_messageDispatcher, a4);
    objc_storeStrong(&v17->_messageRouter, a5);
    objc_storeStrong(&v17->_messageHandler, a6);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_22952 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_22952, &__block_literal_global_22953);
  }

  v3 = logCategory__hmf_once_v5_22954;

  return v3;
}

uint64_t __47__HMDSiriEndpointProfilesMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_22954;
  logCategory__hmf_once_v5_22954 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end