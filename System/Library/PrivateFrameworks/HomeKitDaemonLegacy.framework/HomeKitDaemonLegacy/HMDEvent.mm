@interface HMDEvent
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler;
- (BOOL)isCompatibleWithEvent:(id)event;
- (BOOL)isConfigured;
- (BOOL)isEqual:(id)equal;
- (HMDEvent)initWithCoder:(id)coder;
- (HMDEvent)initWithModel:(id)model home:(id)home;
- (HMDEventDelegate)delegate;
- (HMDEventTrigger)eventTrigger;
- (HMDHome)home;
- (NSString)description;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (unint64_t)hash;
- (void)_registerForMessages;
- (void)_setup;
- (void)_transactionObjectRemoved:(id)removed message:(id)message;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)_updateTriggerType;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue delegate:(id)delegate;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation HMDEvent

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDEventDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDEventTrigger)eventTrigger
{
  WeakRetained = objc_loadWeakRetained(&self->_eventTrigger);

  return WeakRetained;
}

- (id)analyticsTriggerEventData
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)selfCopy activationType]);
    v12 = HMDEventTriggerActivationTypeAsString(_activate);
    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the activation type from %@ to %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  activationType = [(HMDEvent *)selfCopy activationType];
  if (activationType != _activate)
  {
    [(HMDEvent *)selfCopy setActivationType:_activate];
  }

  v14 = _Block_copy(handlerCopy);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
  return activationType != _activate;
}

- (void)_transactionObjectRemoved:(id)removed message:(id)message
{
  removedCopy = removed;
  messageCopy = message;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"HM.eventIdentifier"];

  eventTrigger = [(HMDEvent *)self eventTrigger];
  [coderCopy encodeConditionalObject:eventTrigger forKey:@"HM.eventTrigger"];

  isEndEvent = [(HMDEvent *)self isEndEvent];
  [coderCopy encodeBool:isEndEvent forKey:*MEMORY[0x277CD22A0]];
}

- (HMDEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDEvent;
  v5 = [(HMDEvent *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.eventIdentifier"];
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.eventTrigger"];
    objc_storeWeak(&v5->_eventTrigger, v9);

    v5->_endEvent = [coderCopy decodeBoolForKey:*MEMORY[0x277CD22A0]];
    [(HMDEvent *)v5 _setup];
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  eventCopy = event;
  triggerType = [(HMDEvent *)self triggerType];
  triggerType2 = [eventCopy triggerType];

  LOBYTE(eventCopy) = [triggerType isEqualToString:triggerType2];
  return eventCopy;
}

- (unint64_t)hash
{
  uuid = [(HMDEvent *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)createPayload
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CD2340];
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  v11[0] = uUIDString;
  v10[1] = *MEMORY[0x277CD22F0];
  triggerType = [(HMDEvent *)self triggerType];
  v11[1] = triggerType;
  v10[2] = *MEMORY[0x277CD22A0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(HMDEvent *)equalCopy uuid];
      uuid2 = [(HMDEvent *)self uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v5 = MEMORY[0x277CCACA8];
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  name = [eventTrigger name];
  v10 = [v5 stringWithFormat:@"uuid: %@, trigger: %@", uUIDString, name];

  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D0F170]];

  return v4;
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  home = [(HMDEvent *)self home];
  administratorHandler = [home administratorHandler];
  v5 = *MEMORY[0x277CD2318];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v10[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [administratorHandler registerForMessage:v5 receiver:self policies:v8 selector:sel__handleUpdateRequest_];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  msgDispatcher = [(HMDEvent *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDEvent *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  [(HMDEvent *)self setMsgDispatcher:0];

  [(HMDEvent *)self setEventTrigger:0];
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue delegate:(id)delegate
{
  v10 = MEMORY[0x277CCACA8];
  delegateCopy = delegate;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  configureCopy = configure;
  name = [configureCopy name];
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  v18 = [v10 stringWithFormat:@"%@/%@", name, uUIDString];
  [(HMDEvent *)self setLogString:v18];

  [(HMDEvent *)self setEventTrigger:configureCopy];
  home = [configureCopy home];

  [(HMDEvent *)self setHome:home];
  [(HMDEvent *)self setMsgDispatcher:dispatcherCopy];

  [(HMDEvent *)self setWorkQueue:queueCopy];
  [(HMDEvent *)self setDelegate:delegateCopy];

  [(HMDEvent *)self _registerForMessages];
}

- (BOOL)isConfigured
{
  workQueue = [(HMDEvent *)self workQueue];
  v3 = workQueue != 0;

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [v2 stringWithFormat:@"%@", uUIDString];

  return v5;
}

- (void)_updateTriggerType
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, *MEMORY[0x277CD22D8]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, *MEMORY[0x277CD22F8]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, *MEMORY[0x277CD22D0]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, *MEMORY[0x277CD2310]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, *MEMORY[0x277CD22E8]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_triggerType, *MEMORY[0x277CD22E0]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *MEMORY[0x277CD2308];

    objc_storeStrong(&self->_triggerType, v3);
  }
}

- (void)_setup
{
  self->_activationType = 0;
  [(HMDEvent *)self _updateTriggerType];
  v3 = MEMORY[0x277CCACA8];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  name = [eventTrigger name];
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];
  [(HMDEvent *)self setLogString:v7];
}

- (HMDEvent)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HMDEvent;
  v8 = [(HMDEvent *)&v13 init];
  if (v8)
  {
    uuid = [modelCopy uuid];
    uuid = v8->_uuid;
    v8->_uuid = uuid;

    objc_storeWeak(&v8->_home, homeCopy);
    endEvent = [modelCopy endEvent];
    v8->_endEvent = [endEvent BOOLValue];

    [(HMDEvent *)v8 _setup];
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_111471 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_111471, &__block_literal_global_111472);
  }

  v3 = logCategory__hmf_once_v1_111473;

  return v3;
}

uint64_t __23__HMDEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_111473;
  logCategory__hmf_once_v1_111473 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end