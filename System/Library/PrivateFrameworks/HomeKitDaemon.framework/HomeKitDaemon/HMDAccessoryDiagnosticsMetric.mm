@interface HMDAccessoryDiagnosticsMetric
+ (id)logCategory;
- (HMDAccessoryDiagnosticsMetric)initWithAccessory:(id)accessory;
- (HMDHAPAccessory)accessory;
- (id)collectMetric;
- (id)logIdentifier;
- (void)reset;
- (void)submitMetric:(id)metric;
@end

@implementation HMDAccessoryDiagnosticsMetric

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  identifier = [accessory identifier];
  v6 = [v3 stringWithFormat:@"%@ : %@", name, identifier];

  return v6;
}

- (void)reset
{
  accessory = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 resetAccessoryDiagnosticCounters];
}

- (void)submitMetric:(id)metric
{
  v25 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  accessory = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  if (metricCopy)
  {
    v6 = [[HMDAccessoryDiagnosticMetricEvent alloc] initWithAccessory:accessory diagnostics:metricCopy];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      name = [accessory name];
      identifier = [accessory identifier];
      coreAnalyticsEventDictionary = [(HMDAccessoryDiagnosticMetricEvent *)v6 coreAnalyticsEventDictionary];
      v17 = 138544130;
      v18 = v10;
      v19 = 2114;
      v20 = name;
      v21 = 2114;
      v22 = identifier;
      v23 = 2114;
      v24 = coreAnalyticsEventDictionary;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting AccessoryDiagnosticMetric for accessory: %{public}@/%{public}@ - %{public}@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    home = [accessory home];
    logEventSubmitter = [home logEventSubmitter];
    [logEventSubmitter submitLogEvent:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)collectMetric
{
  accessory = [(HMDAccessoryDiagnosticsMetric *)self accessory];
  accessoryDiagnosticCounters = [accessory accessoryDiagnosticCounters];

  return accessoryDiagnosticCounters;
}

- (HMDAccessoryDiagnosticsMetric)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v8.receiver = self;
  v8.super_class = HMDAccessoryDiagnosticsMetric;
  v5 = [(HMDAccessoryDiagnosticsMetric *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, accessoryCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_101173 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_101173, &__block_literal_global_256_101174);
  }

  v3 = logCategory__hmf_once_v9_101175;

  return v3;
}

void __44__HMDAccessoryDiagnosticsMetric_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_101175;
  logCategory__hmf_once_v9_101175 = v1;
}

@end