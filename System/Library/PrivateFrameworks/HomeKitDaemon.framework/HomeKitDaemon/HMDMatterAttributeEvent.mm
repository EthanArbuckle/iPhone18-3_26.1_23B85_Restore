@interface HMDMatterAttributeEvent
+ (id)logCategory;
- (BOOL)_compareEventValue:(id)a3;
- (BOOL)_evaluateNewValue:(id)a3;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDMatterAttributeEvent)initWithCoder:(id)a3;
- (HMDMatterAttributeEvent)initWithModel:(id)a3 home:(id)a4;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)description;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDMatterAttributeEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsAttributeEventData);
  v5 = [(HMDMatterAttributeEvent *)self eventValue];
  [(HMDAnalyticsAttributeEventData *)v4 setContainsValue:v5 != 0];

  [(HMDAnalyticsTriggerEventData *)v3 setAttributeEvent:v4];

  return v3;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = v9;
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
    v18 = [(HMDEvent *)v12 eventTrigger];
    v19 = [v10 name];
    v20 = [v19 isEqualToString:@"kMigratedEventsToRecordsRequest"];

    if (v20)
    {
      [v18 processEventRecords:v17 message:v10];
    }

    else
    {
      if ([v17 propertyWasSet:@"eventValue"])
      {
        v21 = [(HMDMatterAttributeEvent *)v12 eventValue];
        v22 = [v17 eventValue];
        v23 = HMFEqualObjects();

        if ((v23 & 1) == 0)
        {
          v24 = [v17 eventValue];
          [(HMDMatterAttributeEvent *)v12 setEventValue:v24];

          [v18 markChangedForMessage:v10];
        }
      }

      [v10 respondWithSuccess];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDMatterAttributeEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDMatterAttributeEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDMatterAttributeEventBase *)self matterPath];
  v12 = [v11 uuid];
  [(HMDMatterAttributeEventModel *)v9 setMatterPathUUID:v12];

  v13 = [(HMDMatterAttributeEvent *)self eventValue];
  [(HMDMatterAttributeEventModel *)v9 setEventValue:v13];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMDMatterAttributeEvent;
  [(HMDMatterAttributeEventBase *)&v7 encodeWithCoder:v4];
  v5 = [(HMDMatterAttributeEvent *)self eventValue];

  if (v5)
  {
    v6 = [(HMDMatterAttributeEvent *)self eventValue];
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CCF2E0]];
  }
}

- (HMDMatterAttributeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDMatterAttributeEvent;
  return [(HMDMatterAttributeEventBase *)&v4 isCompatibleWithEvent:a3];
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = HMDMatterAttributeEvent;
  v4 = [(HMDMatterAttributeEventBase *)&v9 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDMatterAttributeEvent *)self eventValue];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCF2E8]];

  v7 = [v5 copy];

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = HMDMatterAttributeEvent;
  v4 = [(HMDEvent *)&v10 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMDMatterAttributeEvent *)self eventValue];
  v8 = [v6 stringWithFormat:@"event value: %@", v7];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0F088]];

  return v5;
}

- (BOOL)_compareEventValue:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMatterAttributeEvent *)self eventValue];

  if (v5)
  {
    v6 = [(HMDMatterAttributeEvent *)self eventValue];
    v7 = [HMDMatterAttributeEventBase compareValueOfAttribute:v4 againstValue:v6 operatorType:&unk_283E72A10];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDMatterAttributeEventBase *)v10 matterPath];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Matter path %@ changed value due to any change, evaluating trigger", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_evaluateNewValue:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForKey:@"HMDMatterAttributeChangedNotificationDecodedValueKey"];
  if (v5)
  {
    v6 = [(HMDMatterAttributeEvent *)self _compareEventValue:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v12 = [(HMDMatterAttributeEvent *)v8 eventValue];
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, current value: %@, event monitor value: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_handleUpdateRequest:(id)a3
{
  v4 = a3;
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
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDMatterAttributeEvent;
  v4 = [(HMDMatterAttributeEventBase *)&v8 description];
  v5 = [(HMDMatterAttributeEvent *)self eventValue];
  v6 = [v3 stringWithFormat:@"[Attribute-Event: %@, event value: %@]", v4, v5];

  return v6;
}

- (HMDMatterAttributeEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMDMatterAttributeEvent;
  v7 = [(HMDMatterAttributeEventBase *)&v11 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 eventValue];
    eventValue = v7->_eventValue;
    v7->_eventValue = v8;
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