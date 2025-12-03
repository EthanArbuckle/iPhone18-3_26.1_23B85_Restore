@interface HMDEventTriggerSession
+ (id)logCategory;
- (BOOL)sendMessage:(id)message payload:(id)payload device:(id)device responseHandler:(id)handler;
- (BOOL)sendMessage:(id)message payload:(id)payload device:(id)device target:(id)target responseHandler:(id)handler;
- (BOOL)sendResidentMessage:(id)message payload:(id)payload responseHandler:(id)handler;
- (HMDEventTrigger)eventTrigger;
- (HMDEventTriggerSession)initWithSessionID:(id)d eventTrigger:(id)trigger workQueue:(id)queue msgDispatcher:(id)dispatcher;
- (NSString)description;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (void)dealloc;
@end

@implementation HMDEventTriggerSession

- (HMDEventTrigger)eventTrigger
{
  WeakRetained = objc_loadWeakRetained(&self->_eventTrigger);

  return WeakRetained;
}

- (BOOL)sendMessage:(id)message payload:(id)payload device:(id)device target:(id)target responseHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  payloadCopy = payload;
  deviceCopy = device;
  targetCopy = target;
  handlerCopy = handler;
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  home = [eventTrigger home];
  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];

  v21 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:targetCopy device:deviceCopy];
  if (v21)
  {
    v22 = messageDispatcher == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if (!v22)
  {
    v32 = payloadCopy;
    v24 = [HMDRemoteMessage secureMessageWithName:messageCopy qualityOfService:25 destination:v21 messagePayload:payloadCopy];
    identifier = [v24 identifier];
    [v24 setResponseHandler:handlerCopy];
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v27 = v30 = v23;
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = messageCopy;
      v38 = 2112;
      v39 = identifier;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ with identifier %@", buf, 0x20u);

      v23 = v30;
    }

    objc_autoreleasePoolPop(context);
    [messageDispatcher sendMessage:v24 completionHandler:0];

    payloadCopy = v32;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)sendMessage:(id)message payload:(id)payload device:(id)device responseHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  payloadCopy = payload;
  messageCopy = message;
  sessionID = [(HMDEventTriggerSession *)self sessionID];
  LOBYTE(self) = [(HMDEventTriggerSession *)self sendMessage:messageCopy payload:payloadCopy device:deviceCopy target:sessionID responseHandler:handlerCopy];

  return self;
}

- (BOOL)sendResidentMessage:(id)message payload:(id)payload responseHandler:(id)handler
{
  messageCopy = message;
  payloadCopy = payload;
  handlerCopy = handler;
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  home = [eventTrigger home];
  primaryResident = [home primaryResident];

  device = [primaryResident device];
  if ([primaryResident supportsSharedEventTriggerActivation])
  {
    v15 = [(HMDEventTriggerSession *)self sendMessage:messageCopy payload:payloadCopy device:device responseHandler:handlerCopy];
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
  logString = [(HMDEventTriggerSession *)self logString];
  sessionID = [(HMDEventTriggerSession *)self sessionID];
  uUIDString = [sessionID UUIDString];
  v7 = [v3 stringWithFormat:@"[Event Trigger Session: %@/%@]", logString, uUIDString];

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sessionID = [(HMDEventTriggerSession *)self sessionID];
  uUIDString = [sessionID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"uuid"];

  v7 = [dictionary copy];

  return v7;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  eventTriggerUUID = [(HMDEventTriggerSession *)selfCopy eventTriggerUUID];
  uUIDString = [eventTriggerUUID UUIDString];
  [v9 removeBulletinsForTrigger:uUIDString];

  v13.receiver = selfCopy;
  v13.super_class = HMDEventTriggerSession;
  [(HMDEventTriggerSession *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDEventTriggerSession)initWithSessionID:(id)d eventTrigger:(id)trigger workQueue:(id)queue msgDispatcher:(id)dispatcher
{
  dCopy = d;
  triggerCopy = trigger;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  v31.receiver = self;
  v31.super_class = HMDEventTriggerSession;
  v15 = [(HMDEventTriggerSession *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, d);
    objc_storeWeak(&v16->_eventTrigger, triggerCopy);
    uuid = [triggerCopy uuid];
    eventTriggerUUID = v16->_eventTriggerUUID;
    v16->_eventTriggerUUID = uuid;

    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_msgDispatcher, dispatcher);
    v30 = MEMORY[0x277CCACA8];
    name = [triggerCopy name];
    uuid2 = [triggerCopy uuid];
    uUIDString = [uuid2 UUIDString];
    sessionID = [(HMDEventTriggerSession *)v16 sessionID];
    [sessionID UUIDString];
    v23 = dispatcherCopy;
    v24 = queueCopy;
    v26 = v25 = dCopy;
    v27 = [v30 stringWithFormat:@"%@/%@/%@", name, uUIDString, v26];
    logString = v16->_logString;
    v16->_logString = v27;

    dCopy = v25;
    queueCopy = v24;
    dispatcherCopy = v23;

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