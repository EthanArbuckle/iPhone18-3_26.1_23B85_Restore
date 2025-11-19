@interface HMDMessageHandlerMetricsDispatcher
+ (id)logCategory;
- (HMDMessageHandlerMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)submitFailureEventOfType:(unint64_t)a3 message:(id)a4;
@end

@implementation HMDMessageHandlerMetricsDispatcher

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMessageHandlerMetricsDispatcher *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMDMessageHandlerMetricsDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)submitFailureEventOfType:(unint64_t)a3 message:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = v10;
    if (a3 > 2)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_27867D1C0[a3];
    }

    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting failure event: %@ for message: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [HMDMessageHandlerFailureMetricEvent alloc];
  v14 = [v6 name];
  v15 = [(HMDMessageHandlerFailureMetricEvent *)v13 initWithFailureType:a3 messageName:v14];

  v16 = [(HMDMessageHandlerMetricsDispatcher *)v8 logEventSubmitter];
  [v16 submitLogEvent:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDMessageHandlerMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_identifier, a3);
    objc_storeStrong(&v11->_logEventSubmitter, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_176684 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_176684, &__block_literal_global_176685);
  }

  v3 = logCategory__hmf_once_v2_176686;

  return v3;
}

void __49__HMDMessageHandlerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_176686;
  logCategory__hmf_once_v2_176686 = v1;
}

@end