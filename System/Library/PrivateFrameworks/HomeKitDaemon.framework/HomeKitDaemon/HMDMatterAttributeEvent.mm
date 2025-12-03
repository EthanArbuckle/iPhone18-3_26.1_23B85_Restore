@interface HMDMatterAttributeEvent
+ (id)logCategory;
- (BOOL)_compareEventValue:(id)value;
- (BOOL)_evaluateNewValue:(id)value;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDMatterAttributeEvent)initWithCoder:(id)coder;
- (HMDMatterAttributeEvent)initWithModel:(id)model home:(id)home;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)description;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_handleUpdateRequest:(id)request;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDMatterAttributeEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsAttributeEventData);
  eventValue = [(HMDMatterAttributeEvent *)self eventValue];
  [(HMDAnalyticsAttributeEventData *)v4 setContainsValue:eventValue != 0];

  [(HMDAnalyticsTriggerEventData *)v3 setAttributeEvent:v4];

  return v3;
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
    name = [messageCopy name];
    v20 = [name isEqualToString:@"kMigratedEventsToRecordsRequest"];

    if (v20)
    {
      [eventTrigger processEventRecords:v17 message:messageCopy];
    }

    else
    {
      if ([v17 propertyWasSet:@"eventValue"])
      {
        eventValue = [(HMDMatterAttributeEvent *)selfCopy eventValue];
        eventValue2 = [v17 eventValue];
        v23 = HMFEqualObjects();

        if ((v23 & 1) == 0)
        {
          eventValue3 = [v17 eventValue];
          [(HMDMatterAttributeEvent *)selfCopy setEventValue:eventValue3];

          [eventTrigger markChangedForMessage:messageCopy];
        }
      }

      [messageCopy respondWithSuccess];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDMatterAttributeEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDMatterAttributeEventModel *)v9 setEndEvent:v10];

  matterPath = [(HMDMatterAttributeEventBase *)self matterPath];
  uuid3 = [matterPath uuid];
  [(HMDMatterAttributeEventModel *)v9 setMatterPathUUID:uuid3];

  eventValue = [(HMDMatterAttributeEvent *)self eventValue];
  [(HMDMatterAttributeEventModel *)v9 setEventValue:eventValue];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMDMatterAttributeEvent;
  [(HMDMatterAttributeEventBase *)&v7 encodeWithCoder:coderCopy];
  eventValue = [(HMDMatterAttributeEvent *)self eventValue];

  if (eventValue)
  {
    eventValue2 = [(HMDMatterAttributeEvent *)self eventValue];
    [coderCopy encodeObject:eventValue2 forKey:*MEMORY[0x277CCF2E0]];
  }
}

- (HMDMatterAttributeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDMatterAttributeEvent;
  return [(HMDMatterAttributeEventBase *)&v4 isCompatibleWithEvent:event];
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = HMDMatterAttributeEvent;
  createPayload = [(HMDMatterAttributeEventBase *)&v9 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  eventValue = [(HMDMatterAttributeEvent *)self eventValue];
  [v5 setObject:eventValue forKeyedSubscript:*MEMORY[0x277CCF2E8]];

  v7 = [v5 copy];

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v10.receiver = self;
  v10.super_class = HMDMatterAttributeEvent;
  v4 = [(HMDEvent *)&v10 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x277CCACA8];
  eventValue = [(HMDMatterAttributeEvent *)self eventValue];
  v8 = [v6 stringWithFormat:@"event value: %@", eventValue];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0F088]];

  return v5;
}

- (BOOL)_compareEventValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  eventValue = [(HMDMatterAttributeEvent *)self eventValue];

  if (eventValue)
  {
    eventValue2 = [(HMDMatterAttributeEvent *)self eventValue];
    v7 = [HMDMatterAttributeEventBase compareValueOfAttribute:valueCopy againstValue:eventValue2 operatorType:&unk_283E72A10];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      matterPath = [(HMDMatterAttributeEventBase *)selfCopy matterPath];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = matterPath;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Matter path %@ changed value due to any change, evaluating trigger", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    bOOLValue = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)_evaluateNewValue:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = [valueCopy valueForKey:@"HMDMatterAttributeChangedNotificationDecodedValueKey"];
  if (v5)
  {
    v6 = [(HMDMatterAttributeEvent *)self _compareEventValue:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    eventValue = [(HMDMatterAttributeEvent *)selfCopy eventValue];
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = eventValue;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, current value: %@, event monitor value: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_handleUpdateRequest:(id)request
{
  requestCopy = request;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)emptyModelObject
{
  v3 = [HMDMatterAttributeEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDMatterAttributeEvent;
  v4 = [(HMDMatterAttributeEventBase *)&v8 description];
  eventValue = [(HMDMatterAttributeEvent *)self eventValue];
  v6 = [v3 stringWithFormat:@"[Attribute-Event: %@, event value: %@]", v4, eventValue];

  return v6;
}

- (HMDMatterAttributeEvent)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = HMDMatterAttributeEvent;
  v7 = [(HMDMatterAttributeEventBase *)&v11 initWithModel:modelCopy home:home];
  if (v7)
  {
    eventValue = [modelCopy eventValue];
    eventValue = v7->_eventValue;
    v7->_eventValue = eventValue;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_105384 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_105384, &__block_literal_global_105385);
  }

  v3 = logCategory__hmf_once_v1_105386;

  return v3;
}

void __38__HMDMatterAttributeEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_105386;
  logCategory__hmf_once_v1_105386 = v1;
}

@end