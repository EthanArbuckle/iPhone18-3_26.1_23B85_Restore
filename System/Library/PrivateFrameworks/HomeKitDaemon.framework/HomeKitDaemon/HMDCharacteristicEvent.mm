@interface HMDCharacteristicEvent
+ (id)logCategory;
- (BOOL)_compareEventValue:(id)value;
- (BOOL)_evaluateNewValue:(id)value;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDCharacteristicEvent)initWithCoder:(id)coder;
- (HMDCharacteristicEvent)initWithModel:(id)model home:(id)home;
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

@implementation HMDCharacteristicEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsCharacteristicEventData);
  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  [(HMDAnalyticsCharacteristicEventData *)v4 setContainsValue:eventValue != 0];

  [(HMDAnalyticsTriggerEventData *)v3 setCharEvent:v4];

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
        eventValue = [(HMDCharacteristicEvent *)selfCopy eventValue];
        eventValue2 = [v17 eventValue];
        v23 = HMFEqualObjects();

        if ((v23 & 1) == 0)
        {
          eventValue3 = [v17 eventValue];
          [(HMDCharacteristicEvent *)selfCopy setEventValue:eventValue3];

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
  v5 = [HMDCharacteristicEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDCharacteristicEventModel *)v9 setEndEvent:v10];

  accessoryUUID = [(HMDCharacteristicEventBase *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [(HMDCharacteristicEventModel *)v9 setAccessory:uUIDString];

  serviceID = [(HMDCharacteristicEventBase *)self serviceID];
  [(HMDCharacteristicEventModel *)v9 setServiceID:serviceID];

  characteristicInstanceID = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [(HMDCharacteristicEventModel *)v9 setCharacteristicID:characteristicInstanceID];

  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  [(HMDCharacteristicEventModel *)v9 setEventValue:eventValue];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMDCharacteristicEvent;
  [(HMDCharacteristicEventBase *)&v7 encodeWithCoder:coderCopy];
  eventValue = [(HMDCharacteristicEvent *)self eventValue];

  if (eventValue)
  {
    eventValue2 = [(HMDCharacteristicEvent *)self eventValue];
    [coderCopy encodeObject:eventValue2 forKey:*MEMORY[0x277CD21B0]];
  }
}

- (HMDCharacteristicEvent)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicEvent;
  v5 = [(HMDCharacteristicEventBase *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = allowedCharValueTypes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:*MEMORY[0x277CD21B0]];
    eventValue = v5->_eventValue;
    v5->_eventValue = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicEvent;
  return [(HMDCharacteristicEventBase *)&v4 isCompatibleWithEvent:event];
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = HMDCharacteristicEvent;
  createPayload = [(HMDCharacteristicEventBase *)&v9 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  [v5 setObject:eventValue forKeyedSubscript:*MEMORY[0x277CD21B8]];

  v7 = [v5 copy];

  return v7;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  service = [characteristic service];

  v21.receiver = self;
  v21.super_class = HMDCharacteristicEvent;
  v7 = [(HMDEvent *)&v21 dumpStateWithPrivacyLevel:level];
  v20 = [v7 mutableCopy];

  characteristic2 = [(HMDCharacteristicEventBase *)self characteristic];
  characteristicTypeDescription = [characteristic2 characteristicTypeDescription];

  v10 = MEMORY[0x277CCACA8];
  accessory = [service accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  instanceID = [service instanceID];
  characteristic3 = [(HMDCharacteristicEventBase *)self characteristic];
  instanceID2 = [characteristic3 instanceID];
  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  v18 = [v10 stringWithFormat:@"type: %@, accUUID: %@, svcInstanceID: %@, chrInstanceID: %@, event value: %@", characteristicTypeDescription, uUIDString, instanceID, instanceID2, eventValue];

  [v20 setObject:v18 forKeyedSubscript:*MEMORY[0x277D0F088]];

  return v20;
}

- (BOOL)_compareEventValue:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  eventValue = [(HMDCharacteristicEvent *)self eventValue];

  if (eventValue)
  {
    characteristic = [(HMDCharacteristicEventBase *)self characteristic];
    eventValue2 = [(HMDCharacteristicEvent *)self eventValue];
    v8 = [HMDCharacteristicEventBase compareValueOfCharacteristic:characteristic againstValue:eventValue2 operatorType:&unk_283E74738];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      characteristic2 = [(HMDCharacteristicEventBase *)selfCopy characteristic];
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = characteristic2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Characteristic %@ changed value due to any change, evaluating trigger", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    bOOLValue = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)_evaluateNewValue:(id)value
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  previousValue = [characteristic previousValue];

  if (valueCopy && [(HMDCharacteristicEvent *)self _compareEventValue:valueCopy])
  {
    if (!previousValue)
    {
      goto LABEL_5;
    }

    v7 = +[HMDHAPMetadata getSharedInstance];
    characteristic2 = [(HMDCharacteristicEventBase *)self characteristic];
    type = [characteristic2 type];
    v10 = [v7 shouldNotCacheCharacteristicOfType:type];

    if ((v10 & 1) == 0)
    {
      characteristic3 = [(HMDCharacteristicEventBase *)self characteristic];
      v26 = [HMDCharacteristicEventBase compareValueOfCharacteristic:characteristic3 againstValue:previousValue operatorType:&unk_283E74720];
      bOOLValue = [v26 BOOLValue];
    }

    else
    {
LABEL_5:
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    characteristic4 = [(HMDCharacteristicEventBase *)selfCopy characteristic];
    value = [characteristic4 value];
    [(HMDCharacteristicEvent *)selfCopy eventValue];
    v28 = v12;
    v20 = v19 = previousValue;
    [(HMDCharacteristicEventBase *)selfCopy characteristic];
    v27 = bOOLValue;
    v22 = v21 = valueCopy;
    *buf = 138544642;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = value;
    v37 = 2112;
    v38 = v20;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, previous value: %@, current value: %@, event monitor value: %@, %@", buf, 0x3Eu);

    valueCopy = v21;
    bOOLValue = v27;

    previousValue = v19;
    v12 = v28;
  }

  objc_autoreleasePoolPop(v12);
  v23 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)_handleUpdateRequest:(id)request
{
  requestCopy = request;
  messagePayload = [requestCopy messagePayload];
  v6 = [messagePayload objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  v7 = v6;
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  v21 = v7;
  v9 = [characteristic validateValueForNotify:v7 outValue:&v21];
  v10 = v21;

  if (v9)
  {
    [requestCopy respondWithError:v9];
  }

  else
  {
    emptyModelObject = [(HMDCharacteristicEvent *)self emptyModelObject];
    [emptyModelObject setEventValue:v10];
    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v16 = [backingStore transaction:name options:v15];

    [v16 add:emptyModelObject];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__HMDCharacteristicEvent__handleUpdateRequest___block_invoke;
    v18[3] = &unk_27868A1D8;
    v19 = requestCopy;
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
  v8.super_class = HMDCharacteristicEvent;
  v4 = [(HMDCharacteristicEventBase *)&v8 description];
  eventValue = [(HMDCharacteristicEvent *)self eventValue];
  v6 = [v3 stringWithFormat:@"[Char-Event: %@, event value: %@]", v4, eventValue];

  return v6;
}

- (HMDCharacteristicEvent)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicEvent;
  v7 = [(HMDCharacteristicEventBase *)&v11 initWithModel:modelCopy home:home];
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
  if (logCategory__hmf_once_t0_224342 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_224342, &__block_literal_global_224343);
  }

  v3 = logCategory__hmf_once_v1_224344;

  return v3;
}

void __37__HMDCharacteristicEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_224344;
  logCategory__hmf_once_v1_224344 = v1;
}

@end