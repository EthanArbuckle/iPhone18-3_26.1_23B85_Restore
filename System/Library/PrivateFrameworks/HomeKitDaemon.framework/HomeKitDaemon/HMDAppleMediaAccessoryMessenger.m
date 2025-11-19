@interface HMDAppleMediaAccessoryMessenger
+ (id)logCategory;
- (HMDAppleMediaAccessoryMessenger)initWithIdentifier:(id)a3 messageDispatcher:(id)a4 router:(id)a5 localHandler:(id)a6;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)a3;
- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)a3;
- (void)sendDeleteSiriHistoryRequestForAccessoryWithUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDAppleMediaAccessoryMessenger

- (id)logIdentifier
{
  v2 = [(HMDAppleMediaAccessoryMessenger *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing siri endpoint delete siri history message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAppleMediaAccessoryMessenger *)v6 router];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAppleMediaAccessoryMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke;
  v11[3] = &unk_27868A398;
  v11[4] = v6;
  [v9 routeMessage:v4 localHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __77__HMDAppleMediaAccessoryMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localHandler];
  [v4 handleSiriEndpointDeleteSiriHistoryMessage:v3];
}

- (void)sendDeleteSiriHistoryRequestForAccessoryWithUUID:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request message for accessory uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277CD1E18]) initWithAccessoryUUID:v6];
  v13 = objc_alloc(MEMORY[0x277D0F820]);
  v14 = [(HMDAppleMediaAccessoryMessenger *)v9 messageTargetUUID];
  v15 = [v13 initWithTarget:v14];

  v16 = objc_alloc(MEMORY[0x277D0F848]);
  v17 = [MEMORY[0x277CD1E18] messageName];
  v18 = [v12 payloadCopy];
  v19 = [v16 initWithName:v17 destination:v15 payload:v18];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __102__HMDAppleMediaAccessoryMessenger_sendDeleteSiriHistoryRequestForAccessoryWithUUID_completionHandler___block_invoke;
  v25 = &unk_278685AF8;
  v26 = v9;
  v27 = v7;
  v20 = v7;
  [v19 setResponseHandler:&v22];
  [(HMDAppleMediaAccessoryMessenger *)v9 routeSiriEndpointDeleteSiriHistoryMessage:v19, v22, v23, v24, v25, v26];

  v21 = *MEMORY[0x277D85DE8];
}

void __102__HMDAppleMediaAccessoryMessenger_sendDeleteSiriHistoryRequestForAccessoryWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:3 remoteAccessRequired:0];
  v12 = [(HMDAppleMediaAccessoryMessenger *)v6 messageDispatcher];
  v13 = [MEMORY[0x277CD1E18] messageName];
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v12 registerForMessage:v13 receiver:v6 policies:v14 selector:sel_routeSiriEndpointDeleteSiriHistoryMessage_];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoryMessenger)initWithIdentifier:(id)a3 messageDispatcher:(id)a4 router:(id)a5 localHandler:(id)a6
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
    return +[(HMDAppleMediaAccessoryMessenger *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDAppleMediaAccessoryMessenger;
  v16 = [(HMDAppleMediaAccessoryMessenger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    objc_storeStrong(&v17->_messageDispatcher, a4);
    objc_storeStrong(&v17->_router, a5);
    objc_storeStrong(&v17->_localHandler, a6);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_94994 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_94994, &__block_literal_global_94995);
  }

  v3 = logCategory__hmf_once_v5_94996;

  return v3;
}

void __46__HMDAppleMediaAccessoryMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_94996;
  logCategory__hmf_once_v5_94996 = v1;
}

@end