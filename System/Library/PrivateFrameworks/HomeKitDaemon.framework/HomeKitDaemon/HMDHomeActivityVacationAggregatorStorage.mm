@interface HMDHomeActivityVacationAggregatorStorage
+ (id)logCategory;
- (id)userActivityReportWithActivityStatus:(id)status user:(id)user;
- (void)updateMKFUserActivityStatus:(id)status withReport:(id)report;
@end

@implementation HMDHomeActivityVacationAggregatorStorage

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_161463 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_161463, &__block_literal_global_161464);
  }

  v3 = logCategory__hmf_once_v3_161465;

  return v3;
}

void __55__HMDHomeActivityVacationAggregatorStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_161465;
  logCategory__hmf_once_v3_161465 = v1;
}

- (id)userActivityReportWithActivityStatus:(id)status user:(id)user
{
  userCopy = user;
  statusCopy = status;
  v7 = [HMDUserActivityType4Report alloc];
  state = [statusCopy state];
  unsignedIntegerValue = [state unsignedIntegerValue];
  statusChangeReason = [statusCopy statusChangeReason];
  unsignedIntegerValue2 = [statusChangeReason unsignedIntegerValue];
  statusChangedTimestamp = [statusCopy statusChangedTimestamp];
  lastReportTimestamp = [statusCopy lastReportTimestamp];

  v14 = [(HMDUserActivityType4Report *)v7 initWithUser:userCopy state:unsignedIntegerValue withReason:unsignedIntegerValue2 changedTimestamp:statusChangedTimestamp lastUpdateTimestamp:lastReportTimestamp];

  return v14;
}

- (void)updateMKFUserActivityStatus:(id)status withReport:(id)report
{
  v36 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  reportCopy = report;
  v8 = +[HMCContext currentContext];
  [v8 assertIsExecuting];

  v9 = reportCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
  }

  state = [statusCopy state];
  v13 = 0x277CCA000uLL;
  if (!state)
  {
    goto LABEL_13;
  }

  v14 = state;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
  state2 = [statusCopy state];
  if (![v15 isEqual:state2] || (objc_msgSend(statusCopy, "lastReportTimestamp"), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  v18 = v17;
  lastReportTimestamp = [statusCopy lastReportTimestamp];
  v19 = [lastReportTimestamp dateByAddingTimeInterval:3600.0];
  [v9 lastUpdateTimestamp];
  v21 = v20 = self;
  v33 = [v19 compare:v21];

  v22 = v20;
  v13 = 0x277CCA000;

  if (v33 == -1)
  {
LABEL_13:
    lastUpdateTimestamp = [v11 lastUpdateTimestamp];
    [statusCopy setLastReportTimestamp:lastUpdateTimestamp];

    changedTimestamp = [v11 changedTimestamp];
    [statusCopy setStatusChangedTimestamp:changedTimestamp];

    v29 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "reason")}];
    [statusCopy setStatusChangeReason:v29];

    v30 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
    [statusCopy setState:v30];

    goto LABEL_14;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v22;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Not storing activity report because the lastUpdateTimestamp is within the update interval", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

@end