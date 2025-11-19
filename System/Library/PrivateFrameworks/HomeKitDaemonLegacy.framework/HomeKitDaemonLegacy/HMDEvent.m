@interface HMDEvent
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (BOOL)isConfigured;
- (BOOL)isEqual:(id)a3;
- (HMDEvent)initWithCoder:(id)a3;
- (HMDEvent)initWithModel:(id)a3 home:(id)a4;
- (HMDEventDelegate)delegate;
- (HMDEventTrigger)eventTrigger;
- (HMDHome)home;
- (NSString)description;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (unint64_t)hash;
- (void)_registerForMessages;
- (void)_setup;
- (void)_transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)_updateTriggerType;
- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5 delegate:(id)a6;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)v8 activationType]);
    v12 = HMDEventTriggerActivationTypeAsString(a3);
    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the activation type from %@ to %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [(HMDEvent *)v8 activationType];
  if (v13 != a3)
  {
    [(HMDEvent *)v8 setActivationType:a3];
  }

  v14 = _Block_copy(v6);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13 != a3;
}

- (void)_transactionObjectRemoved:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HMDEvent *)self uuid];
  v5 = [v4 UUIDString];
  [v8 encodeObject:v5 forKey:@"HM.eventIdentifier"];

  v6 = [(HMDEvent *)self eventTrigger];
  [v8 encodeConditionalObject:v6 forKey:@"HM.eventTrigger"];

  v7 = [(HMDEvent *)self isEndEvent];
  [v8 encodeBool:v7 forKey:*MEMORY[0x277CD22A0]];
}

- (HMDEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDEvent;
  v5 = [(HMDEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.eventIdentifier"];
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.eventTrigger"];
    objc_storeWeak(&v5->_eventTrigger, v9);

    v5->_endEvent = [v4 decodeBoolForKey:*MEMORY[0x277CD22A0]];
    [(HMDEvent *)v5 _setup];
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self triggerType];
  v6 = [v4 triggerType];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(HMDEvent *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)createPayload
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CD2340];
  v3 = [(HMDEvent *)self uuid];
  v4 = [v3 UUIDString];
  v11[0] = v4;
  v10[1] = *MEMORY[0x277CD22F0];
  v5 = [(HMDEvent *)self triggerType];
  v11[1] = v5;
  v10[2] = *MEMORY[0x277CD22A0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMDEvent *)v4 uuid];
      v6 = [(HMDEvent *)self uuid];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HMDEvent *)self uuid];
  v7 = [v6 UUIDString];
  v8 = [(HMDEvent *)self eventTrigger];
  v9 = [v8 name];
  v10 = [v5 stringWithFormat:@"uuid: %@, trigger: %@", v7, v9];

  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D0F170]];

  return v4;
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDEvent *)self home];
  v4 = [v3 administratorHandler];
  v5 = *MEMORY[0x277CD2318];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v10[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v4 registerForMessage:v5 receiver:self policies:v8 selector:sel__handleUpdateRequest_];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = [(HMDEvent *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDEvent *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  [(HMDEvent *)self setMsgDispatcher:0];

  [(HMDEvent *)self setEventTrigger:0];
}

- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5 delegate:(id)a6
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v14 name];
  v16 = [(HMDEvent *)self uuid];
  v17 = [v16 UUIDString];
  v18 = [v10 stringWithFormat:@"%@/%@", v15, v17];
  [(HMDEvent *)self setLogString:v18];

  [(HMDEvent *)self setEventTrigger:v14];
  v19 = [v14 home];

  [(HMDEvent *)self setHome:v19];
  [(HMDEvent *)self setMsgDispatcher:v13];

  [(HMDEvent *)self setWorkQueue:v12];
  [(HMDEvent *)self setDelegate:v11];

  [(HMDEvent *)self _registerForMessages];
}

- (BOOL)isConfigured
{
  v2 = [(HMDEvent *)self workQueue];
  v3 = v2 != 0;

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDEvent *)self uuid];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"%@", v4];

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
  v8 = [(HMDEvent *)self eventTrigger];
  v4 = [v8 name];
  v5 = [(HMDEvent *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", v4, v6];
  [(HMDEvent *)self setLogString:v7];
}

- (HMDEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMDEvent;
  v8 = [(HMDEvent *)&v13 init];
  if (v8)
  {
    v9 = [v6 uuid];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    objc_storeWeak(&v8->_home, v7);
    v11 = [v6 endEvent];
    v8->_endEvent = [v11 BOOLValue];

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