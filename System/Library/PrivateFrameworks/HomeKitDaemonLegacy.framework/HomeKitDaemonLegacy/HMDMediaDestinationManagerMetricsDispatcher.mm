@interface HMDMediaDestinationManagerMetricsDispatcher
+ (id)logCategory;
- (HMDMediaDestinationManagerMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (id)logIdentifier;
- (void)submitFailureEventWithFailureCode:(unint64_t)a3 error:(id)a4;
@end

@implementation HMDMediaDestinationManagerMetricsDispatcher

- (id)logIdentifier
{
  v2 = [(HMDMediaDestinationManagerMetricsDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)submitFailureEventWithFailureCode:(unint64_t)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMDMediaDestinationManagerFailureCodeAsString(a3);
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting failure event with failure code: %@ error: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [[HMDMediaDestinationManagerFailureEvent alloc] initWithFailureCode:a3 error:v6];
  v13 = [(HMDMediaDestinationManagerMetricsDispatcher *)v8 logEventSubmitter];
  [v13 submitLogEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationManagerMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDMediaDestinationManagerMetricsDispatcher;
  v9 = [(HMDMediaDestinationManagerMetricsDispatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_logEventSubmitter, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_191151 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_191151, &__block_literal_global_191152);
  }

  v3 = logCategory__hmf_once_v2_191153;

  return v3;
}

uint64_t __58__HMDMediaDestinationManagerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_191153;
  logCategory__hmf_once_v2_191153 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end