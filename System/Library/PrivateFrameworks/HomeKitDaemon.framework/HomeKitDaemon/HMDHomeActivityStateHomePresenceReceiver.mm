@interface HMDHomeActivityStateHomePresenceReceiver
+ (id)logCategory;
- (HMDHomeActivityStateHomePresenceReceiver)initWithMessageReceiveQueue:(id)queue;
- (HMDHomeActivityStateHomePresenceReceiverDelegate)delegate;
- (void)_registerForMessages;
- (void)handleUserPresenceUpdate:(id)update;
@end

@implementation HMDHomeActivityStateHomePresenceReceiver

- (HMDHomeActivityStateHomePresenceReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleUserPresenceUpdate:(id)update
{
  v46 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  messagePayload = [updateCopy messagePayload];
  if ([messagePayload hmf_BOOLForKey:@"kUserPresenceIsActivityStateEnabledKey"])
  {
    [updateCopy respondWithSuccess];
  }

  else
  {
    delegate = [(HMDHomeActivityStateHomePresenceReceiver *)self delegate];
    if (delegate)
    {
      home = [(HMDHomePresenceBase *)self home];
      v8 = [updateCopy userForHome:home];
      v9 = v8;
      if (v8)
      {
        v35 = v8;
        v10 = [MEMORY[0x277CD1F00] authWithDict:messagePayload];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v23 = MEMORY[0x277CD1F00];
          v24 = [messagePayload hmf_numberForKey:@"kUserPresenceAuthStatusKey"];
          v12 = [v23 authWithNumber:v24];
        }

        v25 = [HMDUserPresenceRegion regionWithDict:messagePayload];
        v26 = [HMDUserPresenceUpdateReason reasonWithDict:messagePayload];
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        v9 = v35;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v29 = v33 = home;
          userID = [v35 userID];
          *buf = 138544386;
          v37 = v29;
          v38 = 2114;
          v39 = v12;
          v40 = 2114;
          v41 = v25;
          v42 = 2114;
          v43 = v26;
          v44 = 2112;
          v45 = userID;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Received user presence message with auth: %{public}@, region: %{public}@, reason: %{public}@, user: %@", buf, 0x34u);

          v9 = v35;
          home = v33;
        }

        objc_autoreleasePoolPop(context);
        remoteSourceDevice = [updateCopy remoteSourceDevice];
        [delegate didReceivePresenceUpdateForUser:v9 withAuthorization:v12 region:v25 updateReason:v26 fromDevice:remoteSourceDevice];

        [updateCopy respondWithSuccess];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          shortDescription = [updateCopy shortDescription];
          *buf = 138543618;
          v37 = v21;
          v38 = 2114;
          v39 = shortDescription;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine sender of the message: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [updateCopy respondWithError:v12];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        name = [updateCopy name];
        *buf = 138543618;
        v37 = v16;
        v38 = 2114;
        v39 = name;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle %{public}@ because delegate is not set", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [updateCopy respondWithSuccess];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v9[2] = *MEMORY[0x277D85DE8];
  home = [(HMDHomePresenceBase *)self home];
  msgDispatcher = [(HMDHomePresenceBase *)self msgDispatcher];
  v5 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
  v9[0] = v5;
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:5 remoteAccessRequired:0];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [msgDispatcher registerForMessage:@"kRemoteUpdateUserPresenceNotificationKey" receiver:self policies:v7 selector:sel_handleUserPresenceUpdate_];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateHomePresenceReceiver)initWithMessageReceiveQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HMDHomeActivityStateHomePresenceReceiver;
  v6 = [(HMDHomeActivityStateHomePresenceReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageReceiveQueue, queue);
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