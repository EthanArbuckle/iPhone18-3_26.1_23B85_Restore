@interface HMDPrimaryResidentMessageRouterMetricsDispatcher
- (HMDPrimaryResidentMessageRouterMetricsDispatcher)initWithLogEventSubmitter:(id)submitter;
- (void)submitFailureEventWithMessageName:(id)name failureType:(int64_t)type;
@end

@implementation HMDPrimaryResidentMessageRouterMetricsDispatcher

- (void)submitFailureEventWithMessageName:(id)name failureType:(int64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    if ((type - 1) > 4)
    {
      v11 = @"UnknownValue";
    }

    else
    {
      v11 = off_279720C78[type - 1];
    }

    v12 = v11;
    v16 = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = nameCopy;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Submitting failure event with message name: %@ failure type: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [[HMDPrimaryResidentMessageRouterFailureEvent alloc] initWithMessageName:nameCopy failureType:type];
  logEventSubmitter = [(HMDPrimaryResidentMessageRouterMetricsDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDPrimaryResidentMessageRouterMetricsDispatcher)initWithLogEventSubmitter:(id)submitter
{
  submitterCopy = submitter;
  v9.receiver = self;
  v9.super_class = HMDPrimaryResidentMessageRouterMetricsDispatcher;
  v6 = [(HMDPrimaryResidentMessageRouterMetricsDispatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logEventSubmitter, submitter);
  }

  return v7;
}

@end