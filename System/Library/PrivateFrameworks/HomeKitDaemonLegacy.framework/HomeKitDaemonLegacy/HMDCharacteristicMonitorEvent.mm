@interface HMDCharacteristicMonitorEvent
+ (id)logCategory;
- (BOOL)_compareEventValue:(id)a3;
- (BOOL)_evaluateNewValue:(id)a3;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (id)description;
@end

@implementation HMDCharacteristicMonitorEvent

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicMonitorEvent;
  return [(HMDCharacteristicEvent *)&v4 isCompatibleWithEvent:a3];
}

- (BOOL)_compareEventValue:(id)a3
{
  v4 = [(HMDCharacteristicEventBase *)self characteristic];
  v5 = [(HMDCharacteristicEvent *)self eventValue];
  v6 = [HMDCharacteristicEventBase compareValueOfCharacteristic:v4 againstValue:v5 operatorType:&unk_286627AA8];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)_evaluateNewValue:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCharacteristicEventBase *)self previousValue];
  if (v4)
  {
    v6 = ![(HMDCharacteristicMonitorEvent *)self _compareEventValue:v4];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v10 = v19 = v5;
    v11 = HMFBooleanToString();
    v12 = [(HMDCharacteristicEventBase *)v8 characteristic];
    v13 = [v12 value];
    [(HMDCharacteristicEvent *)v8 eventValue];
    v14 = v18 = v7;
    v15 = [(HMDCharacteristicEventBase *)v8 characteristic];
    *buf = 138544642;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, previous value: %@, current value: %@, event monitor value: %@, %@", buf, 0x3Eu);

    v7 = v18;
    v5 = v19;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCharacteristicMonitorEvent;
  v4 = [(HMDCharacteristicEvent *)&v8 description];
  v5 = [(HMDCharacteristicEvent *)self eventValue];
  v6 = [v3 stringWithFormat:@"[Char-Monitor-Event: %@, event value: %@]", v4, v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_20956 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_20956, &__block_literal_global_20957);
  }

  v3 = logCategory__hmf_once_v1_20958;

  return v3;
}

uint64_t __44__HMDCharacteristicMonitorEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_20958;
  logCategory__hmf_once_v1_20958 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end