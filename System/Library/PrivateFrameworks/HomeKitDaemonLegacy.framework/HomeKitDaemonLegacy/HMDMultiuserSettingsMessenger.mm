@interface HMDMultiuserSettingsMessenger
+ (id)logCategory;
- (HMDHome)home;
- (HMDMultiuserSettingsMessenger)initWithHome:(id)home messageDispatcher:(id)dispatcher;
- (NSUUID)messageTargetUUID;
- (id)logIdentifier;
- (void)handleFetchMultiuserSettingsRequest:(id)request;
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
  messageTargetUUID = [(HMDMultiuserSettingsMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDMultiuserSettingsMessenger *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)handleFetchMultiuserSettingsRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    home = [(HMDMultiuserSettingsMessenger *)selfCopy home];
    multiUserSettings = [home multiUserSettings];
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = multiUserSettings;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling fetch Multiuser Settings Request, %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home2 = [(HMDMultiuserSettingsMessenger *)selfCopy home];
  multiUserSettings2 = [home2 multiUserSettings];

  payloadCopy = [multiUserSettings2 payloadCopy];
  [requestCopy respondWithPayload:payloadCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  home = [(HMDMultiuserSettingsMessenger *)self home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registered for Multiuser Settings Metrics Messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  messageDispatcher = [(HMDMultiuserSettingsMessenger *)selfCopy messageDispatcher];
  v11 = *MEMORY[0x277CD09C0];
  v14[0] = v3;
  v14[1] = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [messageDispatcher registerForMessage:v11 receiver:selfCopy policies:v12 selector:sel_handleFetchMultiuserSettingsRequest_];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMultiuserSettingsMessenger)initWithHome:(id)home messageDispatcher:(id)dispatcher
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = dispatcherCopy;
  if (!dispatcherCopy)
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
    objc_storeStrong(&v9->_messageDispatcher, dispatcher);
    objc_storeWeak(&v10->_home, homeCopy);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_132141 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_132141, &__block_literal_global_132142);
  }

  v3 = logCategory__hmf_once_v3_132143;

  return v3;
}

uint64_t __44__HMDMultiuserSettingsMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_132143;
  logCategory__hmf_once_v3_132143 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end