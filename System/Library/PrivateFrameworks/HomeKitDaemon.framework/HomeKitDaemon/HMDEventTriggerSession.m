@interface HMDEventTriggerSession
+ (id)logCategory;
- (BOOL)sendMessage:(id)a3 payload:(id)a4 device:(id)a5 responseHandler:(id)a6;
- (BOOL)sendMessage:(id)a3 payload:(id)a4 device:(id)a5 target:(id)a6 responseHandler:(id)a7;
- (BOOL)sendResidentMessage:(id)a3 payload:(id)a4 responseHandler:(id)a5;
- (HMDEventTrigger)eventTrigger;
- (HMDEventTriggerSession)initWithSessionID:(id)a3 eventTrigger:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6;
- (NSString)description;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (void)dealloc;
@end

@implementation HMDEventTriggerSession

- (HMDEventTrigger)eventTrigger
{
  WeakRetained = objc_loadWeakRetained(&self->_eventTrigger);

  return WeakRetained;
}

- (BOOL)sendMessage:(id)a3 payload:(id)a4 device:(id)a5 target:(id)a6 responseHandler:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDEventTriggerSession *)self eventTrigger];
  v18 = [v17 home];
  v19 = [v18 homeManager];
  v20 = [v19 messageDispatcher];

  v21 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:v15 device:v14];
  if (v21)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if (!v22)
  {
    v32 = v13;
    v24 = [HMDRemoteMessage secureMessageWithName:v12 qualityOfService:25 destination:v21 messagePayload:v13];
    v33 = [v24 identifier];
    [v24 setResponseHandler:v16];
    context = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v27 = v30 = v23;
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ with identifier %@", buf, 0x20u);

      v23 = v30;
    }

    objc_autoreleasePoolPop(context);
    [v20 sendMessage:v24 completionHandler:0];

    v13 = v32;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)sendMessage:(id)a3 payload:(id)a4 device:(id)a5 responseHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HMDEventTriggerSession *)self sessionID];
  LOBYTE(self) = [(HMDEventTriggerSession *)self sendMessage:v13 payload:v12 device:v11 target:v14 responseHandler:v10];

  return self;
}

- (BOOL)sendResidentMessage:(id)a3 payload:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDEventTriggerSession *)self eventTrigger];
  v12 = [v11 home];
  v13 = [v12 primaryResident];

  v14 = [v13 device];
  if ([v13 supportsSharedEventTriggerActivation])
  {
    v15 = [(HMDEventTriggerSession *)self sendMessage:v8 payload:v9 device:v14 responseHandler:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDEventTriggerSession *)self logString];
  v5 = [(HMDEventTriggerSession *)self sessionID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"[Event Trigger Session: %@/%@]", v4, v6];

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDEventTriggerSession *)self sessionID];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"uuid"];

  v7 = [v4 copy];

  return v7;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating the %@ session", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = +[HMDBulletinBoard sharedBulletinBoard];
  v10 = [(HMDEventTriggerSession *)v4 eventTriggerUUID];
  v11 = [v10 UUIDString];
  [v9 removeBulletinsForTrigger:v11];

  v13.receiver = v4;
  v13.super_class = HMDEventTriggerSession;
  [(HMDEventTriggerSession *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDEventTriggerSession)initWithSessionID:(id)a3 eventTrigger:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v31.receiver = self;
  v31.super_class = HMDEventTriggerSession;
  v15 = [(HMDEventTriggerSession *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, a3);
    objc_storeWeak(&v16->_eventTrigger, v12);
    v17 = [v12 uuid];
    eventTriggerUUID = v16->_eventTriggerUUID;
    v16->_eventTriggerUUID = v17;

    objc_storeStrong(&v16->_workQueue, a5);
    objc_storeStrong(&v16->_msgDispatcher, a6);
    v30 = MEMORY[0x277CCACA8];
    v19 = [v12 name];
    v20 = [v12 uuid];
    v21 = [v20 UUIDString];
    v22 = [(HMDEventTriggerSession *)v16 sessionID];
    [v22 UUIDString];
    v23 = v14;
    v24 = v13;
    v26 = v25 = v11;
    v27 = [v30 stringWithFormat:@"%@/%@/%@", v19, v21, v26];
    logString = v16->_logString;
    v16->_logString = v27;

    v11 = v25;
    v13 = v24;
    v14 = v23;

    [(HMDEventTriggerSession *)v16 _registerForMessages];
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_105499 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_105499, &__block_literal_global_105500);
  }

  v3 = logCategory__hmf_once_v2_105501;

  return v3;
}

void __37__HMDEventTriggerSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_105501;
  logCategory__hmf_once_v2_105501 = v1;
}

@end