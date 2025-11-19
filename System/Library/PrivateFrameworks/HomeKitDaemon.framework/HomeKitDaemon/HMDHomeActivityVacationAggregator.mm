@interface HMDHomeActivityVacationAggregator
+ (id)logCategory;
- (BOOL)isStateEquivalentForExistingReport:(id)a3 newReport:(id)a4;
- (HMDHomeActivityVacationAggregator)initWithDataSource:(id)a3;
- (HMDHomeActivityVacationAggregator)initWithStorage:(id)a3 dataSource:(id)a4;
- (HMDHomeActivityVacationAggregatorState)computedState;
- (double)moveToVacationTimeIntervalFromDataSource:(id)a3;
- (id)_computedState;
- (id)_vacationTimestampFromHomeAwayAggregator:(id)a3;
- (id)nextRefreshTimestamp;
@end

@implementation HMDHomeActivityVacationAggregator

- (BOOL)isStateEquivalentForExistingReport:(id)a3 newReport:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v6;
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

  if (v8)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = [v8 state];
    v14 = v13 == [v11 state];
  }

  return v14;
}

- (id)nextRefreshTimestamp
{
  v10.receiver = self;
  v10.super_class = HMDHomeActivityVacationAggregator;
  v3 = [(HMDHomeActivityStateAggregator *)&v10 nextRefreshTimestamp];
  v4 = [(HMDHomeActivityVacationAggregator *)self homeAwayAggregator];
  v5 = [v4 computedState];
  v6 = [(HMDHomeActivityVacationAggregator *)self _vacationTimestampFromHomeAwayAggregator:v5];

  if (v6)
  {
    v7 = [v6 earlierDate:v3];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

- (id)_computedState
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDHomeActivityStateAggregator *)v4 userActivityMap];
    *buf = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Computing state from user activity map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDHomeActivityVacationAggregator *)v4 homeAwayAggregator];
  v9 = [v8 computedState];
  v10 = [(HMDHomeActivityVacationAggregator *)v4 _vacationTimestampFromHomeAwayAggregator:v9];

  if (v10)
  {
    v11 = [(HMDHomeActivityStateAggregator *)v4 dataSource];
    v12 = [v11 currentDate];
    v13 = [v10 compare:v12];

    if (v13 != 1)
    {
      v19 = [[HMDHomeActivityVacationAggregatorState alloc] initWithType:1 changedReason:2];
      goto LABEL_12;
    }
  }

  v14 = [(HMDHomeActivityStateAggregator *)v4 userActivityMap];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__HMDHomeActivityVacationAggregator__computedState__block_invoke;
  v22[3] = &unk_27866E388;
  v22[4] = v4;
  v15 = [v14 na_map:v22];

  if (![v15 count])
  {
    v17 = [HMDHomeActivityVacationAggregatorState alloc];
    goto LABEL_10;
  }

  v16 = [v15 na_all:&__block_literal_global_4367];
  v17 = [HMDHomeActivityVacationAggregatorState alloc];
  if (!v16)
  {
LABEL_10:
    v18 = [(HMDHomeActivityVacationAggregatorState *)v17 initWithType:0];
    goto LABEL_11;
  }

  v18 = [(HMDHomeActivityVacationAggregatorState *)v17 initWithType:1 changedReason:3];
LABEL_11:
  v19 = v18;

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __51__HMDHomeActivityVacationAggregator__computedState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 currentDate];
  v9 = [*(a1 + 32) dataSource];
  [v9 reportValidityInterval];
  v10 = [v6 isExpiredWithCurrentDate:v8 validInterval:?];

  if ((v10 & 1) == 0)
  {
    v12 = v6;
    v11 = v4;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (HMDHomeActivityVacationAggregatorState)computedState
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityVacationAggregator *)self _computedState];
  v4 = v3;
  if (self)
  {
    state = self->_state;
    if (state == [v3 type])
    {
      goto LABEL_11;
    }

    if (self->_state)
    {
      goto LABEL_5;
    }
  }

  else if (![v3 type])
  {
    goto LABEL_11;
  }

  v6 = -[HMDHomeActivityStateVacationTransitionLogEvent initWithReason:]([HMDHomeActivityStateVacationTransitionLogEvent alloc], "initWithReason:", [v4 changedReason]);
  v7 = [(HMDHomeActivityStateAggregator *)self dataSource];
  v8 = [v7 logEventSubmitter];
  [v8 submitLogEvent:v6];

LABEL_5:
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    if (self)
    {
      v13 = v10->_state;
    }

    else
    {
      v13 = 0;
    }

    v14 = HMDHomeActivityVacationAggregatorStateTypeAsString(v13);
    v15 = HMDHomeActivityVacationAggregatorStateTypeAsString([v4 type]);
    v19 = 138543874;
    v20 = v12;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Vacation aggregator state changed from %@ to %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v16 = [v4 type];
  if (self)
  {
    v10->_state = v16;
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_vacationTimestampFromHomeAwayAggregator:(id)a3
{
  v4 = a3;
  v5 = [v4 awayChangedTimestamp];
  if (v5)
  {
    v6 = [v4 awayChangedTimestamp];
    v7 = [(HMDHomeActivityStateAggregator *)self dataSource];
    [(HMDHomeActivityVacationAggregator *)self moveToVacationTimeIntervalFromDataSource:v7];
    v8 = [v6 dateByAddingTimeInterval:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)moveToVacationTimeIntervalFromDataSource:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 preferences];
  v6 = [v5 preferenceForKey:@"vacationAggregatorDefaultTimerInSec"];
  v7 = [v6 numberValue];

  if (v7)
  {
    v8 = [v7 integerValue];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v12;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Using user-defined vacation time interval: %ld", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v8;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2048;
      v23 = 86400;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Using the default vacation time interval: %ld", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 86400.0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HMDHomeActivityVacationAggregator)initWithStorage:(id)a3 dataSource:(id)a4
{
  v5.receiver = self;
  v5.super_class = HMDHomeActivityVacationAggregator;
  result = [(HMDHomeActivityStateAggregator *)&v5 initWithStorage:a3 dataSource:a4];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (HMDHomeActivityVacationAggregator)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregatorStorage *)[HMDHomeActivityVacationAggregatorStorage alloc] initWithDataSource:v4];
  v6 = [(HMDHomeActivityVacationAggregator *)self initWithStorage:v5 dataSource:v4];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_4384 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_4384, &__block_literal_global_10);
  }

  v3 = logCategory__hmf_once_v8_4385;

  return v3;
}

void __48__HMDHomeActivityVacationAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_4385;
  logCategory__hmf_once_v8_4385 = v1;
}

@end