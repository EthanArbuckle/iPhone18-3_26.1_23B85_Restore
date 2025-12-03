@interface HMDMediaDestinationManagerMetricsDispatcher
+ (id)logCategory;
- (HMDMediaDestinationManagerMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)logIdentifier;
- (void)submitFailureEventWithFailureCode:(unint64_t)code error:(id)error;
@end

@implementation HMDMediaDestinationManagerMetricsDispatcher

- (id)logIdentifier
{
  identifier = [(HMDMediaDestinationManagerMetricsDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)submitFailureEventWithFailureCode:(unint64_t)code error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMDMediaDestinationManagerFailureCodeAsString(code);
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting failure event with failure code: %@ error: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [[HMDMediaDestinationManagerFailureEvent alloc] initWithFailureCode:code error:errorCopy];
  logEventSubmitter = [(HMDMediaDestinationManagerMetricsDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationManagerMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  v12.receiver = self;
  v12.super_class = HMDMediaDestinationManagerMetricsDispatcher;
  v9 = [(HMDMediaDestinationManagerMetricsDispatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_logEventSubmitter, submitter);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_278850 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_278850, &__block_literal_global_278851);
  }

  v3 = logCategory__hmf_once_v2_278852;

  return v3;
}

void __58__HMDMediaDestinationManagerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_278852;
  logCategory__hmf_once_v2_278852 = v1;
}

@end