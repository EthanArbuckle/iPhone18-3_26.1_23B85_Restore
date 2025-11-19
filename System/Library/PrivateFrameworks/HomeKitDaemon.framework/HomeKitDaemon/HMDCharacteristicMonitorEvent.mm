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
  v6 = [HMDCharacteristicEventBase compareValueOfCharacteristic:v4 againstValue:v5 operatorType:&unk_283E71D38];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)_evaluateNewValue:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCharacteristicEventBase *)self characteristic];
  v6 = [v5 previousValue];

  if (v4)
  {
    LODWORD(v7) = ![(HMDCharacteristicMonitorEvent *)self _compareEventValue:v4];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    v13 = [(HMDCharacteristicEventBase *)v9 characteristic];
    v14 = [v13 value];
    [(HMDCharacteristicEvent *)v9 eventValue];
    v15 = v20 = v8;
    [(HMDCharacteristicEventBase *)v9 characteristic];
    v19 = v7;
    v16 = v7 = v6;
    *buf = 138544642;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluated event, should fire: %@, previous value: %@, current value: %@, event monitor value: %@, %@", buf, 0x3Eu);

    v6 = v7;
    LOBYTE(v7) = v19;

    v8 = v20;
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
  return v7;
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
  if (logCategory__hmf_once_t0_30260 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_30260, &__block_literal_global_30261);
  }

  v3 = logCategory__hmf_once_v1_30262;

  return v3;
}

void __44__HMDCharacteristicMonitorEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_30262;
  logCategory__hmf_once_v1_30262 = v1;
}

@end