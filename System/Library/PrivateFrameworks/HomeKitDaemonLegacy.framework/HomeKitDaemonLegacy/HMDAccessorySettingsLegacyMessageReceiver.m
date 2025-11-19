@interface HMDAccessorySettingsLegacyMessageReceiver
- (HMDAccessorySettingsLegacyMessageReceiver)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4;
- (HMDAccessorySettingsMessenger)messenger;
- (void)registerForMessagesWithHome:(id)a3;
- (void)routeAccessorySettingsFetchRequestMessage:(id)a3;
- (void)routeAccessorySettingsUpdateRequestMessage:(id)a3;
@end

@implementation HMDAccessorySettingsLegacyMessageReceiver

- (HMDAccessorySettingsMessenger)messenger
{
  WeakRetained = objc_loadWeakRetained(&self->_messenger);

  return WeakRetained;
}

- (void)routeAccessorySettingsUpdateRequestMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing legacy update request message: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessorySettingsLegacyMessageReceiver *)v6 messenger];
  v10 = v9;
  if (v9)
  {
    [v9 routeAccessorySettingsUpdateRequestMessage:v4];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle legacy update request message due to unconfigured messenger error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v4 respondWithError:v11];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)routeAccessorySettingsFetchRequestMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing legacy fetch request message: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessorySettingsLegacyMessageReceiver *)v6 messenger];
  v10 = v9;
  if (v9)
  {
    [v9 routeAccessorySettingsFetchRequestMessage:v4];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle legacy fetch request message due to unconfigured messenger error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v4 respondWithError:v11];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];

  v9 = [(HMDAccessorySettingsLegacyMessageReceiver *)self messageDispatcher];
  v10 = *MEMORY[0x277CCEDB8];
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v9 registerForMessage:v10 receiver:self policies:v11 selector:sel_routeAccessorySettingsFetchRequestMessage_];

  v12 = [(HMDAccessorySettingsLegacyMessageReceiver *)self messageDispatcher];
  v13 = *MEMORY[0x277CCEDC8];
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v12 registerForMessage:v13 receiver:self policies:v14 selector:sel_routeAccessorySettingsUpdateRequestMessage_];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySettingsLegacyMessageReceiver)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4
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
    v13 = _HMFPreconditionFailure();
    return [(HMDAnnounceUserSettingsModel *)v13 initWithUserUUID:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = HMDAccessorySettingsLegacyMessageReceiver;
  v10 = [(HMDAccessorySettingsLegacyMessageReceiver *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageTargetUUID, a3);
    objc_storeStrong(&v11->_messageDispatcher, a4);
  }

  return v11;
}

@end