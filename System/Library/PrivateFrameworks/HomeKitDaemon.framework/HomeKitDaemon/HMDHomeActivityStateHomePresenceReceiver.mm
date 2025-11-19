@interface HMDHomeActivityStateHomePresenceReceiver
+ (id)logCategory;
- (HMDHomeActivityStateHomePresenceReceiver)initWithMessageReceiveQueue:(id)a3;
- (HMDHomeActivityStateHomePresenceReceiverDelegate)delegate;
- (void)_registerForMessages;
- (void)handleUserPresenceUpdate:(id)a3;
@end

@implementation HMDHomeActivityStateHomePresenceReceiver

- (HMDHomeActivityStateHomePresenceReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleUserPresenceUpdate:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  if ([v5 hmf_BOOLForKey:@"kUserPresenceIsActivityStateEnabledKey"])
  {
    [v4 respondWithSuccess];
  }

  else
  {
    v6 = [(HMDHomeActivityStateHomePresenceReceiver *)self delegate];
    if (v6)
    {
      v7 = [(HMDHomePresenceBase *)self home];
      v8 = [v4 userForHome:v7];
      v9 = v8;
      if (v8)
      {
        v35 = v8;
        v10 = [MEMORY[0x277CD1F00] authWithDict:v5];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v23 = MEMORY[0x277CD1F00];
          v24 = [v5 hmf_numberForKey:@"kUserPresenceAuthStatusKey"];
          v12 = [v23 authWithNumber:v24];
        }

        v25 = [HMDUserPresenceRegion regionWithDict:v5];
        v26 = [HMDUserPresenceUpdateReason reasonWithDict:v5];
        context = objc_autoreleasePoolPush();
        v27 = self;
        v28 = HMFGetOSLogHandle();
        v9 = v35;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v29 = v33 = v7;
          v30 = [v35 userID];
          *buf = 138544386;
          v37 = v29;
          v38 = 2114;
          v39 = v12;
          v40 = 2114;
          v41 = v25;
          v42 = 2114;
          v43 = v26;
          v44 = 2112;
          v45 = v30;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Received user presence message with auth: %{public}@, region: %{public}@, reason: %{public}@, user: %@", buf, 0x34u);

          v9 = v35;
          v7 = v33;
        }

        objc_autoreleasePoolPop(context);
        v31 = [v4 remoteSourceDevice];
        [v6 didReceivePresenceUpdateForUser:v9 withAuthorization:v12 region:v25 updateReason:v26 fromDevice:v31];

        [v4 respondWithSuccess];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [v4 shortDescription];
          *buf = 138543618;
          v37 = v21;
          v38 = 2114;
          v39 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine sender of the message: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v12];
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
        v17 = [v4 name];
        *buf = 138543618;
        v37 = v16;
        v38 = 2114;
        v39 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle %{public}@ because delegate is not set", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [v4 respondWithSuccess];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomePresenceBase *)self home];
  v4 = [(HMDHomePresenceBase *)self msgDispatcher];
  v5 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
  v9[0] = v5;
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:5 remoteAccessRequired:0];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v4 registerForMessage:@"kRemoteUpdateUserPresenceNotificationKey" receiver:self policies:v7 selector:sel_handleUserPresenceUpdate_];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateHomePresenceReceiver)initWithMessageReceiveQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDHomeActivityStateHomePresenceReceiver;
  v6 = [(HMDHomeActivityStateHomePresenceReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageReceiveQueue, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_6131);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

void __55__HMDHomeActivityStateHomePresenceReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4;
  logCategory__hmf_once_v4 = v1;
}

@end