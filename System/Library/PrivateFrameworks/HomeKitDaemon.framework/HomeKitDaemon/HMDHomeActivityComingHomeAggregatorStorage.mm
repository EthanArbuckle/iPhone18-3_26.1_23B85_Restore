@interface HMDHomeActivityComingHomeAggregatorStorage
+ (id)logCategory;
- (id)userActivityReportWithActivityStatus:(id)a3 user:(id)a4;
- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4;
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

- (id)userActivityReportWithActivityStatus:(id)a3 user:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HMDUserActivityType6Report alloc];
  v8 = [v6 state];
  v9 = [v8 unsignedIntegerValue];
  v10 = [v6 transitionTimestamp];
  v11 = [v6 statusChangeReason];
  v12 = [v11 unsignedIntegerValue];
  v13 = [v6 statusChangedTimestamp];
  v14 = [v6 lastReportTimestamp];

  v15 = [(HMDUserActivityType6Report *)v7 initWithUser:v5 state:v9 stateEnd:v10 withReason:v12 changedTimestamp:v13 lastUpdateTimestamp:v14];

  return v15;
}

- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMCContext currentContext];
  [v8 assertIsExecuting];

  v9 = v7;
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

  v12 = [v6 state];
  v13 = 0x277CCA000uLL;
  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = v12;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
  v16 = [v6 state];
  if (![v15 isEqual:v16])
  {
    goto LABEL_13;
  }

  v17 = [v6 transitionTimestamp];
  v18 = [v11 stateEnd];
  v19 = HMFEqualObjects();

  v13 = 0x277CCA000;
  if (!v19 || ([v6 lastReportTimestamp], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  v21 = v20;
  v36 = [v6 lastReportTimestamp];
  v22 = [v36 dateByAddingTimeInterval:3600.0];
  [v9 lastUpdateTimestamp];
  v24 = v23 = self;
  v37 = [v22 compare:v24];

  v25 = v23;
  v13 = 0x277CCA000;

  if (v37 == -1)
  {
LABEL_14:
    v30 = [v11 lastUpdateTimestamp];
    [v6 setLastReportTimestamp:v30];

    v31 = [v11 changedTimestamp];
    [v6 setStatusChangedTimestamp:v31];

    v32 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "reason")}];
    [v6 setStatusChangeReason:v32];

    v33 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
    [v6 setState:v33];

    v34 = [v11 stateEnd];
    [v6 setTransitionTimestamp:v34];

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