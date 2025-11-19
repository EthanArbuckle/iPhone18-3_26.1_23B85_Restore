@interface HMDCharacteristicEvent
+ (id)logCategory;
- (BOOL)_compareEventValue:(id)a3;
- (BOOL)_evaluateNewValue:(id)a3;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDCharacteristicEvent)initWithCoder:(id)a3;
- (HMDCharacteristicEvent)initWithModel:(id)a3 home:(id)a4;
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

@implementation HMDCharacteristicEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsCharacteristicEventData);
  v5 = [(HMDCharacteristicEvent *)self eventValue];
  [(HMDAnalyticsCharacteristicEventData *)v4 setContainsValue:v5 != 0];

  [(HMDAnalyticsTriggerEventData *)v3 setCharEvent:v4];

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
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v26, 0xCu);
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
        v21 = [(HMDCharacteristicEvent *)v12 eventValue];
        v22 = [v17 eventValue];
        v23 = HMFEqualObjects();

        if ((v23 & 1) == 0)
        {
          v24 = [v17 eventValue];
          [(HMDCharacteristicEvent *)v12 setEventValue:v24];

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
  v5 = [HMDCharacteristicEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDCharacteristicEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDCharacteristicEventBase *)self accessoryUUID];
  v12 = [v11 UUIDString];
  [(HMDCharacteristicEventModel *)v9 setAccessory:v12];

  v13 = [(HMDCharacteristicEventBase *)self serviceID];
  [(HMDCharacteristicEventModel *)v9 setServiceID:v13];

  v14 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [(HMDCharacteristicEventModel *)v9 setCharacteristicID:v14];

  v15 = [(HMDCharacteristicEvent *)self eventValue];
  [(HMDCharacteristicEventModel *)v9 setEventValue:v15];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMDCharacteristicEvent;
  [(HMDCharacteristicEventBase *)&v7 encodeWithCoder:v4];
  v5 = [(HMDCharacteristicEvent *)self eventValue];

  if (v5)
  {
    v6 = [(HMDCharacteristicEvent *)self eventValue];
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CD21B0]];
  }
}

- (HMDCharacteristicEvent)initWithCoder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicEvent;
  v5 = [(HMDCharacteristicEventBase *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = allowedCharValueTypes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:*MEMORY[0x277CD21B0]];
    eventValue = v5->_eventValue;
    v5->_eventValue = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicEvent;
  return [(HMDCharacteristicEventBase *)&v4 isCompatibleWithEvent:a3];
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = HMDCharacteristicEvent;
  v4 = [(HMDCharacteristicEventBase *)&v9 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDCharacteristicEvent *)self eventValue];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD21B8]];

  v7 = [v5 copy];

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [(HMDCharacteristicEventBase *)self characteristic];
  v6 = [v5 service];

  v21.receiver = self;
  v21.super_class = HMDCharacteristicEvent;
  v7 = [(HMDEvent *)&v21 dumpStateWithPrivacyLevel:a3];
  v20 = [v7 mutableCopy];

  v8 = [(HMDCharacteristicEventBase *)self characteristic];
  v9 = [v8 characteristicTypeDescription];

  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 accessory];
  v12 = [v11 uuid];
  v13 = [v12 UUIDString];
  v14 = [v6 instanceID];
  v15 = [(HMDCharacteristicEventBase *)self characteristic];
  v16 = [v15 instanceID];
  v17 = [(HMDCharacteristicEvent *)self eventValue];
  v18 = [v10 stringWithFormat:@"type: %@, accUUID: %@, svcInstanceID: %@, chrInstanceID: %@, event value: %@", v9, v13, v14, v16, v17];

  [v20 setObject:v18 forKeyedSubscript:*MEMORY[0x277D0F088]];

  return v20;
}

- (BOOL)_compareEventValue:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCharacteristicEvent *)self eventValue];

  if (v5)
  {
    v6 = [(HMDCharacteristicEventBase *)self characteristic];
    v7 = [(HMDCharacteristicEvent *)self eventValue];
    v8 = [HMDCharacteristicEventBase compareValueOfCharacteristic:v6 againstValue:v7 operatorType:&unk_286629CB0];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDCharacteristicEventBase *)v11 characteristic];
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Characteristic %@ changed value due to any change, evaluating trigger", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_evaluateNewValue:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCharacteristicEventBase *)self previousValue];
  if (v4 && [(HMDCharacteristicEvent *)self _compareEventValue:v4])
  {
    if (v5)
    {
      v6 = [(HMDCharacteristicEventBase *)self characteristic];
      v7 = [HMDCharacteristicEventBase compareValueOfCharacteristic:v6 againstValue:v5 operatorType:&unk_286629C98];
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    HMFBooleanToString();
    v13 = v20 = v4;
    v14 = [(HMDCharacteristicEventBase *)v10 characteristic];
    v15 = [v14 value];
    [(HMDCharacteristicEvent *)v10 eventValue];
    v16 = v21 = v8;
    v17 = [(HMDCharacteristicEventBase *)v10 characteristic];
    *buf = 138544642;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, previous value: %@, current value: %@, event monitor value: %@, %@", buf, 0x3Eu);

    v8 = v21;
    v4 = v20;
  }

  objc_autoreleasePoolPop(v9);
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_handleUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  v7 = v6;
  v8 = [(HMDCharacteristicEventBase *)self characteristic];
  v21 = v7;
  v9 = [v8 validateValueForNotify:v7 outValue:&v21];
  v10 = v21;

  if (v9)
  {
    [v4 respondWithError:v9];
  }

  else
  {
    v17 = [(HMDCharacteristicEvent *)self emptyModelObject];
    [v17 setEventValue:v10];
    v11 = [(HMDEvent *)self eventTrigger];
    v12 = [v11 home];
    v13 = [v12 backingStore];
    v14 = [v4 name];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v16 = [v13 transaction:v14 options:v15];

    [v16 add:v17];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__HMDCharacteristicEvent__handleUpdateRequest___block_invoke;
    v18[3] = &unk_2797358C8;
    v19 = v4;
    v20 = v10;
    [v16 run:v18];
  }
}

void __47__HMDCharacteristicEvent__handleUpdateRequest___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) respondWithError:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v8 = *MEMORY[0x277CD21B8];
      v9[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [v4 respondWithPayload:v6];
    }

    else
    {
      [*(a1 + 32) respondWithPayload:0];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)emptyModelObject
{
  v3 = [HMDCharacteristicEventModel alloc];
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
  v8.super_class = HMDCharacteristicEvent;
  v4 = [(HMDCharacteristicEventBase *)&v8 description];
  v5 = [(HMDCharacteristicEvent *)self eventValue];
  v6 = [v3 stringWithFormat:@"[Char-Event: %@, event value: %@]", v4, v5];

  return v6;
}

- (HMDCharacteristicEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicEvent;
  v7 = [(HMDCharacteristicEventBase *)&v11 initWithModel:v6 home:a4];
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
  if (logCategory__hmf_once_t0_149659 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_149659, &__block_literal_global_149660);
  }

  v3 = logCategory__hmf_once_v1_149661;

  return v3;
}

uint64_t __37__HMDCharacteristicEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_149661;
  logCategory__hmf_once_v1_149661 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end