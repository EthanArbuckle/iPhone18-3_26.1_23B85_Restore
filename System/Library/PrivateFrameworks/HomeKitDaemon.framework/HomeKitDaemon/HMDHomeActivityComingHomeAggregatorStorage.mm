@interface HMDHomeActivityComingHomeAggregatorStorage
+ (id)logCategory;
- (id)userActivityReportWithActivityStatus:(id)status user:(id)user;
- (void)updateMKFUserActivityStatus:(id)status withReport:(id)report;
@end

@implementation HMDHomeActivityComingHomeAggregatorStorage

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_18697 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_18697, &__block_literal_global_18698);
  }

  v3 = logCategory__hmf_once_v3_18699;

  return v3;
}

void __57__HMDHomeActivityComingHomeAggregatorStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_18699;
  logCategory__hmf_once_v3_18699 = v1;
}

- (id)userActivityReportWithActivityStatus:(id)status user:(id)user
{
  userCopy = user;
  statusCopy = status;
  v7 = [HMDUserActivityType6Report alloc];
  state = [statusCopy state];
  unsignedIntegerValue = [state unsignedIntegerValue];
  transitionTimestamp = [statusCopy transitionTimestamp];
  statusChangeReason = [statusCopy statusChangeReason];
  unsignedIntegerValue2 = [statusChangeReason unsignedIntegerValue];
  statusChangedTimestamp = [statusCopy statusChangedTimestamp];
  lastReportTimestamp = [statusCopy lastReportTimestamp];

  v15 = [(HMDUserActivityType6Report *)v7 initWithUser:userCopy state:unsignedIntegerValue stateEnd:transitionTimestamp withReason:unsignedIntegerValue2 changedTimestamp:statusChangedTimestamp lastUpdateTimestamp:lastReportTimestamp];

  return v15;
}

- (void)updateMKFUserActivityStatus:(id)status withReport:(id)report
{
  v40 = *MEMORY[0x277D85DE8];
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
    goto LABEL_14;
  }

  v14 = state;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
  state2 = [statusCopy state];
  if (![v15 isEqual:state2])
  {
    goto LABEL_13;
  }

  transitionTimestamp = [statusCopy transitionTimestamp];
  stateEnd = [v11 stateEnd];
  v19 = HMFEqualObjects();

  v13 = 0x277CCA000;
  if (!v19 || ([statusCopy lastReportTimestamp], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  v21 = v20;
  lastReportTimestamp = [statusCopy lastReportTimestamp];
  v22 = [lastReportTimestamp dateByAddingTimeInterval:3600.0];
  [v9 lastUpdateTimestamp];
  v24 = v23 = self;
  v37 = [v22 compare:v24];

  v25 = v23;
  v13 = 0x277CCA000;

  if (v37 == -1)
  {
LABEL_14:
    lastUpdateTimestamp = [v11 lastUpdateTimestamp];
    [statusCopy setLastReportTimestamp:lastUpdateTimestamp];

    changedTimestamp = [v11 changedTimestamp];
    [statusCopy setStatusChangedTimestamp:changedTimestamp];

    v32 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "reason")}];
    [statusCopy setStatusChangeReason:v32];

    v33 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
    [statusCopy setState:v33];

    stateEnd2 = [v11 stateEnd];
    [statusCopy setTransitionTimestamp:stateEnd2];

    goto LABEL_15;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v25;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v29;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Not storing activity report because the lastUpdateTimestamp is within the update interval", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
LABEL_15:

  v35 = *MEMORY[0x277D85DE8];
}

@end