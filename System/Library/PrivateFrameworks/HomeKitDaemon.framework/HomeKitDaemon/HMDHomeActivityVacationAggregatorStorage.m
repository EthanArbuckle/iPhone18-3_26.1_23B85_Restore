@interface HMDHomeActivityVacationAggregatorStorage
+ (id)logCategory;
- (id)userActivityReportWithActivityStatus:(id)a3 user:(id)a4;
- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4;
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

- (id)userActivityReportWithActivityStatus:(id)a3 user:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HMDUserActivityType4Report alloc];
  v8 = [v6 state];
  v9 = [v8 unsignedIntegerValue];
  v10 = [v6 statusChangeReason];
  v11 = [v10 unsignedIntegerValue];
  v12 = [v6 statusChangedTimestamp];
  v13 = [v6 lastReportTimestamp];

  v14 = [(HMDUserActivityType4Report *)v7 initWithUser:v5 state:v9 withReason:v11 changedTimestamp:v12 lastUpdateTimestamp:v13];

  return v14;
}

- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
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
    goto LABEL_13;
  }

  v14 = v12;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
  v16 = [v6 state];
  if (![v15 isEqual:v16] || (objc_msgSend(v6, "lastReportTimestamp"), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  v18 = v17;
  v32 = [v6 lastReportTimestamp];
  v19 = [v32 dateByAddingTimeInterval:3600.0];
  [v9 lastUpdateTimestamp];
  v21 = v20 = self;
  v33 = [v19 compare:v21];

  v22 = v20;
  v13 = 0x277CCA000;

  if (v33 == -1)
  {
LABEL_13:
    v27 = [v11 lastUpdateTimestamp];
    [v6 setLastReportTimestamp:v27];

    v28 = [v11 changedTimestamp];
    [v6 setStatusChangedTimestamp:v28];

    v29 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "reason")}];
    [v6 setStatusChangeReason:v29];

    v30 = [*(v13 + 2992) numberWithUnsignedInteger:{objc_msgSend(v11, "state")}];
    [v6 setState:v30];

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