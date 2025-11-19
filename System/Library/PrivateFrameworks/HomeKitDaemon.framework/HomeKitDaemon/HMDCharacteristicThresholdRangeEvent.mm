@interface HMDCharacteristicThresholdRangeEvent
+ (id)logCategory;
- (BOOL)_evaluateNewValue:(id)a3;
- (BOOL)_isValueInRange:(id)a3;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDCharacteristicThresholdRangeEvent)initWithCoder:(id)a3;
- (HMDCharacteristicThresholdRangeEvent)initWithModel:(id)a3 home:(id)a4;
- (NSString)description;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCharacteristicThresholdRangeEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsCharacteristicThresholdEventData);
  v5 = [(HMDCharacteristicThresholdRangeEvent *)self min];
  [(HMDAnalyticsCharacteristicThresholdEventData *)v4 setMinPresent:v5 != 0];

  v6 = [(HMDCharacteristicThresholdRangeEvent *)self max];
  [(HMDAnalyticsCharacteristicThresholdEventData *)v4 setMaxPresent:v6 != 0];

  [(HMDAnalyticsTriggerEventData *)v3 setCharThresholdEvent:v4];

  return v3;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v28, 0xCu);
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
    if (([v17 propertyWasSet:@"min"] & 1) != 0 || objc_msgSend(v17, "propertyWasSet:", @"max"))
    {
      v18 = [(HMDCharacteristicThresholdRangeEvent *)v12 min];
      v19 = [v17 min];
      v20 = HMFEqualObjects();

      if (!v20 || (-[HMDCharacteristicThresholdRangeEvent max](v12, "max"), v21 = objc_claimAutoreleasedReturnValue(), [v17 max], v22 = objc_claimAutoreleasedReturnValue(), v23 = HMFEqualObjects(), v22, v21, (v23 & 1) == 0))
      {
        v24 = [v17 min];
        [(HMDCharacteristicThresholdRangeEvent *)v12 setMin:v24];

        v25 = [v17 max];
        [(HMDCharacteristicThresholdRangeEvent *)v12 setMax:v25];

        v26 = [(HMDEvent *)v12 eventTrigger];
        [v26 markChangedForMessage:v10];
      }
    }

    [v10 respondWithSuccess];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDCharacteristicThresholdRangeEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDCharacteristicThresholdRangeEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDCharacteristicEventBase *)self accessoryUUID];
  v12 = [v11 UUIDString];
  [(HMDCharacteristicThresholdRangeEventModel *)v9 setAccessory:v12];

  v13 = [(HMDCharacteristicEventBase *)self serviceID];
  [(HMDCharacteristicThresholdRangeEventModel *)v9 setServiceID:v13];

  v14 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [(HMDCharacteristicThresholdRangeEventModel *)v9 setCharacteristicID:v14];

  v15 = [(HMDCharacteristicThresholdRangeEvent *)self min];
  [(HMDCharacteristicThresholdRangeEventModel *)v9 setMin:v15];

  v16 = [(HMDCharacteristicThresholdRangeEvent *)self max];
  [(HMDCharacteristicThresholdRangeEventModel *)v9 setMax:v16];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDCharacteristicThresholdRangeEvent;
  v4 = a3;
  [(HMDCharacteristicEventBase *)&v7 encodeWithCoder:v4];
  v5 = [(HMDCharacteristicThresholdRangeEvent *)self min:v7.receiver];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD21A0]];

  v6 = [(HMDCharacteristicThresholdRangeEvent *)self max];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD2198]];
}

- (HMDCharacteristicThresholdRangeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicThresholdRangeEvent;
  v5 = [(HMDCharacteristicEventBase *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD21A0]];
    min = v5->_min;
    v5->_min = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2198]];
    max = v5->_max;
    v5->_max = v8;
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicThresholdRangeEvent;
  return [(HMDCharacteristicEventBase *)&v4 isCompatibleWithEvent:a3];
}

- (BOOL)_evaluateNewValue:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCharacteristicEventBase *)self characteristic];
  v6 = [v5 previousValue];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [(HMDCharacteristicEventBase *)self characteristic];
    v9 = [HMDCharacteristicEventBase compareValueOfCharacteristic:v8 againstValue:v6 operatorType:&unk_283E736E8];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      if (![(HMDCharacteristicThresholdRangeEvent *)self _isValueInRange:v6])
      {
        v7 = [(HMDCharacteristicThresholdRangeEvent *)self _isValueInRange:v4];
        goto LABEL_10;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@The value hasn't changed from previous value, ignoring", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    v7 = 0;
  }

LABEL_10:
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    HMFBooleanToString();
    v19 = v27 = v7;
    v26 = [(HMDCharacteristicEventBase *)v16 characteristic];
    v20 = [v26 value];
    [(HMDCharacteristicThresholdRangeEvent *)v16 min];
    v21 = v28 = v15;
    v22 = [(HMDCharacteristicThresholdRangeEvent *)v16 max];
    v23 = [(HMDCharacteristicEventBase *)v16 characteristic];
    *buf = 138544898;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v6;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v23;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire (did enter range): %@, previous value: %@, current value: %@, min: %@, max: %@, %@", buf, 0x48u);

    v15 = v28;
    v7 = v27;
  }

  objc_autoreleasePoolPop(v15);
  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_isValueInRange:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [(HMDCharacteristicThresholdRangeEvent *)self min];
  if (v5)
  {
  }

  else
  {
    v6 = [(HMDCharacteristicThresholdRangeEvent *)self max];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [(HMDCharacteristicThresholdRangeEvent *)self min];

  if (!v7 || (-[HMDCharacteristicThresholdRangeEvent min](self, "min"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v4 compare:v8], v8, v9 != -1))
  {
    v10 = [(HMDCharacteristicThresholdRangeEvent *)self max];

    if (!v10 || (-[HMDCharacteristicThresholdRangeEvent max](self, "max"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v4 compare:v11], v11, v12 != 1))
    {
      v13 = 1;
      goto LABEL_11;
    }
  }

LABEL_9:
  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_handleUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:*MEMORY[0x277CD21A0]];
  v6 = [v4 numberForKey:*MEMORY[0x277CD2198]];
  if (v5 | v6)
  {
    v8 = [(HMDCharacteristicThresholdRangeEvent *)self emptyModelObject];
    [v8 setMin:v5];
    [v8 setMax:v6];
    v9 = [(HMDEvent *)self eventTrigger];
    v10 = [v9 home];
    v11 = [v10 backingStore];
    v12 = [v4 name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [v11 transaction:v12 options:v13];

    [v14 add:v8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HMDCharacteristicThresholdRangeEvent__handleUpdateRequest___block_invoke;
    v16[3] = &unk_27868A1D8;
    v17 = v4;
    v18 = v8;
    v15 = v8;
    [v14 run:v16];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v4 respondWithError:v7];
  }
}

void __61__HMDCharacteristicThresholdRangeEvent__handleUpdateRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [*(a1 + 40) min];
    [v8 setObject:v4 forKeyedSubscript:*MEMORY[0x277CD21A0]];

    v5 = [*(a1 + 40) max];
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD2198]];

    v6 = *(a1 + 32);
    v7 = [v8 copy];
    [v6 respondWithPayload:v7];
  }
}

- (id)emptyModelObject
{
  v3 = [HMDCharacteristicThresholdRangeEventModel alloc];
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v12.receiver = self;
  v12.super_class = HMDCharacteristicThresholdRangeEvent;
  v4 = [(HMDCharacteristicEventBase *)&v12 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDCharacteristicThresholdRangeEvent *)self min];

  if (v6)
  {
    v7 = [(HMDCharacteristicThresholdRangeEvent *)self min];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD21A0]];
  }

  v8 = [(HMDCharacteristicThresholdRangeEvent *)self max];

  if (v8)
  {
    v9 = [(HMDCharacteristicThresholdRangeEvent *)self max];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2198]];
  }

  v10 = [v5 copy];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDCharacteristicThresholdRangeEvent;
  v4 = [(HMDCharacteristicEventBase *)&v9 description];
  v5 = [(HMDCharacteristicThresholdRangeEvent *)self min];
  v6 = [(HMDCharacteristicThresholdRangeEvent *)self max];
  v7 = [v3 stringWithFormat:@"[Char-Threshold-Event: %@, min: %@, max: %@]", v4, v5, v6];

  return v7;
}

- (HMDCharacteristicThresholdRangeEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = HMDCharacteristicThresholdRangeEvent;
  v7 = [(HMDCharacteristicEventBase *)&v13 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 min];
    min = v7->_min;
    v7->_min = v8;

    v10 = [v6 max];
    max = v7->_max;
    v7->_max = v10;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_162067 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_162067, &__block_literal_global_162068);
  }

  v3 = logCategory__hmf_once_v1_162069;

  return v3;
}

void __51__HMDCharacteristicThresholdRangeEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_162069;
  logCategory__hmf_once_v1_162069 = v1;
}

@end