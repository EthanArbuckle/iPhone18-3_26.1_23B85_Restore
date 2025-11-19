@interface HMDAccessoryDiagnosticsMetric
+ (id)logCategory;
- (HMDAccessoryDiagnosticsMetric)initWithAccessory:(id)a3;
- (HMDHAPAccessory)accessory;
- (id)collectMetric;
- (id)logIdentifier;
- (void)reset;
- (void)submitMetric:(id)a3;
@end

@implementation HMDAccessoryDiagnosticsMetric

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 identifier];
  v6 = [v3 stringWithFormat:@"%@ : %@", v4, v5];

  return v6;
}

- (void)reset
{
  v2 = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 resetAccessoryDiagnosticCounters];
}

- (void)submitMetric:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  if (v4)
  {
    v6 = [[HMDAccessoryDiagnosticMetricEvent alloc] initWithAccessory:v5 diagnostics:v4];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 name];
      v12 = [v5 identifier];
      v13 = [(HMDAccessoryDiagnosticMetricEvent *)v6 coreAnalyticsEventDictionary];
      v17 = 138544130;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting AccessoryDiagnosticMetric for accessory: %{public}@/%{public}@ - %{public}@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [v5 home];
    v15 = [v14 logEventSubmitter];
    [v15 submitLogEvent:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)collectMetric
{
  v2 = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  v3 = [v2 accessoryDiagnosticCounters];

  return v3;
}

- (HMDAccessoryDiagnosticsMetric)initWithAccessory:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDAccessoryDiagnosticsMetric;
  v5 = [(HMDAccessoryDiagnosticsMetric *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_64892 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_64892, &__block_literal_global_256_64893);
  }

  v3 = logCategory__hmf_once_v9_64894;

  return v3;
}

uint64_t __44__HMDAccessoryDiagnosticsMetric_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_64894;
  logCategory__hmf_once_v9_64894 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end