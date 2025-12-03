@interface HMDMessageHandlerMetricsDispatcher
+ (id)logCategory;
- (HMDMessageHandlerMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)submitFailureEventOfType:(unint64_t)type message:(id)message;
@end

@implementation HMDMessageHandlerMetricsDispatcher

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDMessageHandlerMetricsDispatcher *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  identifier = [(HMDMessageHandlerMetricsDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)submitFailureEventOfType:(unint64_t)type message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = v10;
    if (type > 2)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_27972BB10[type];
    }

    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = messageCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting failure event: %@ for message: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [HMDMessageHandlerFailureMetricEvent alloc];
  name = [messageCopy name];
  v15 = [(HMDMessageHandlerFailureMetricEvent *)v13 initWithFailureType:type messageName:name];

  logEventSubmitter = [(HMDMessageHandlerMetricsDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDMessageHandlerMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = submitterCopy;
  if (!submitterCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDMessageHandlerMetricsDispatcher *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDMessageHandlerMetricsDispatcher;
  v10 = [(HMDMessageHandlerMetricsDispatcher *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v11->_logEventSubmitter, submitter);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_117254 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_117254, &__block_literal_global_117255);
  }

  v3 = logCategory__hmf_once_v2_117256;

  return v3;
}

uint64_t __49__HMDMessageHandlerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_117256;
  logCategory__hmf_once_v2_117256 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end