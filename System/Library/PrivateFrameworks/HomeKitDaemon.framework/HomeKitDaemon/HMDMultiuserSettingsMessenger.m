@interface HMDMultiuserSettingsMessenger
+ (id)logCategory;
- (HMDHome)home;
- (HMDMultiuserSettingsMessenger)initWithHome:(id)a3 messageDispatcher:(id)a4;
- (NSUUID)messageTargetUUID;
- (id)logIdentifier;
- (void)handleFetchMultiuserSettingsRequest:(id)a3;
- (void)registerForMessages;
@end

@implementation HMDMultiuserSettingsMessenger

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMultiuserSettingsMessenger *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDMultiuserSettingsMessenger *)self home];
  v3 = [v2 uuid];

  return v3;
}

- (void)handleFetchMultiuserSettingsRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDMultiuserSettingsMessenger *)v6 home];
    v10 = [v9 multiUserSettings];
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling fetch Multiuser Settings Request, %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMDMultiuserSettingsMessenger *)v6 home];
  v12 = [v11 multiUserSettings];

  v13 = [v12 payloadCopy];
  [v4 respondWithPayload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v4 = [(HMDMultiuserSettingsMessenger *)self home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:3 remoteAccessRequired:0];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registered for Multiuser Settings Metrics Messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDMultiuserSettingsMessenger *)v7 messageDispatcher];
  v11 = *MEMORY[0x277CD09C0];
  v14[0] = v3;
  v14[1] = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v10 registerForMessage:v11 receiver:v7 policies:v12 selector:sel_handleFetchMultiuserSettingsRequest_];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMultiuserSettingsMessenger)initWithHome:(id)a3 messageDispatcher:(id)a4
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
    v12 = _HMFPreconditionFailure();
    return +[(HMDMultiuserSettingsMessenger *)v12];
  }

  v14.receiver = self;
  v14.super_class = HMDMultiuserSettingsMessenger;
  v9 = [(HMDMultiuserSettingsMessenger *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageDispatcher, a4);
    objc_storeWeak(&v10->_home, v6);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_196207 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_196207, &__block_literal_global_196208);
  }

  v3 = logCategory__hmf_once_v3_196209;

  return v3;
}

void __44__HMDMultiuserSettingsMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_196209;
  logCategory__hmf_once_v3_196209 = v1;
}

@end