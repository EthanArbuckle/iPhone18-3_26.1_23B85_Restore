@interface HMDHomeActivityVacationAggregator
+ (id)logCategory;
- (BOOL)isStateEquivalentForExistingReport:(id)report newReport:(id)newReport;
- (HMDHomeActivityVacationAggregator)initWithDataSource:(id)source;
- (HMDHomeActivityVacationAggregator)initWithStorage:(id)storage dataSource:(id)source;
- (HMDHomeActivityVacationAggregatorState)computedState;
- (double)moveToVacationTimeIntervalFromDataSource:(id)source;
- (id)_computedState;
- (id)_vacationTimestampFromHomeAwayAggregator:(id)aggregator;
- (id)nextRefreshTimestamp;
@end

@implementation HMDHomeActivityVacationAggregator

- (BOOL)isStateEquivalentForExistingReport:(id)report newReport:(id)newReport
{
  reportCopy = report;
  newReportCopy = newReport;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = reportCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = newReportCopy;
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
    state = [v8 state];
    v14 = state == [v11 state];
  }

  return v14;
}

- (id)nextRefreshTimestamp
{
  v10.receiver = self;
  v10.super_class = HMDHomeActivityVacationAggregator;
  nextRefreshTimestamp = [(HMDHomeActivityStateAggregator *)&v10 nextRefreshTimestamp];
  homeAwayAggregator = [(HMDHomeActivityVacationAggregator *)self homeAwayAggregator];
  computedState = [homeAwayAggregator computedState];
  v6 = [(HMDHomeActivityVacationAggregator *)self _vacationTimestampFromHomeAwayAggregator:computedState];

  if (v6)
  {
    v7 = [v6 earlierDate:nextRefreshTimestamp];
  }

  else
  {
    v7 = nextRefreshTimestamp;
  }

  v8 = v7;

  return v8;
}

- (id)_computedState
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    userActivityMap = [(HMDHomeActivityStateAggregator *)selfCopy userActivityMap];
    *buf = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = userActivityMap;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Computing state from user activity map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  homeAwayAggregator = [(HMDHomeActivityVacationAggregator *)selfCopy homeAwayAggregator];
  computedState = [homeAwayAggregator computedState];
  v10 = [(HMDHomeActivityVacationAggregator *)selfCopy _vacationTimestampFromHomeAwayAggregator:computedState];

  if (v10)
  {
    dataSource = [(HMDHomeActivityStateAggregator *)selfCopy dataSource];
    currentDate = [dataSource currentDate];
    v13 = [v10 compare:currentDate];

    if (v13 != 1)
    {
      v19 = [[HMDHomeActivityVacationAggregatorState alloc] initWithType:1 changedReason:2];
      goto LABEL_12;
    }
  }

  userActivityMap2 = [(HMDHomeActivityStateAggregator *)selfCopy userActivityMap];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__HMDHomeActivityVacationAggregator__computedState__block_invoke;
  v22[3] = &unk_27866E388;
  v22[4] = selfCopy;
  v15 = [userActivityMap2 na_map:v22];

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
  _computedState = [(HMDHomeActivityVacationAggregator *)self _computedState];
  v4 = _computedState;
  if (self)
  {
    state = self->_state;
    if (state == [_computedState type])
    {
      goto LABEL_11;
    }

    if (self->_state)
    {
      goto LABEL_5;
    }
  }

  else if (![_computedState type])
  {
    goto LABEL_11;
  }

  v6 = -[HMDHomeActivityStateVacationTransitionLogEvent initWithReason:]([HMDHomeActivityStateVacationTransitionLogEvent alloc], "initWithReason:", [v4 changedReason]);
  dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
  logEventSubmitter = [dataSource logEventSubmitter];
  [logEventSubmitter submitLogEvent:v6];

LABEL_5:
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    if (self)
    {
      v13 = selfCopy->_state;
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
  type = [v4 type];
  if (self)
  {
    selfCopy->_state = type;
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_vacationTimestampFromHomeAwayAggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  awayChangedTimestamp = [aggregatorCopy awayChangedTimestamp];
  if (awayChangedTimestamp)
  {
    awayChangedTimestamp2 = [aggregatorCopy awayChangedTimestamp];
    dataSource = [(HMDHomeActivityStateAggregator *)self dataSource];
    [(HMDHomeActivityVacationAggregator *)self moveToVacationTimeIntervalFromDataSource:dataSource];
    v8 = [awayChangedTimestamp2 dateByAddingTimeInterval:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)moveToVacationTimeIntervalFromDataSource:(id)source
{
  v24 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  preferences = [sourceCopy preferences];
  v6 = [preferences preferenceForKey:@"vacationAggregatorDefaultTimerInSec"];
  numberValue = [v6 numberValue];

  if (numberValue)
  {
    integerValue = [numberValue integerValue];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v12;
      v22 = 2048;
      v23 = integerValue;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Using user-defined vacation time interval: %ld", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = integerValue;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (HMDHomeActivityVacationAggregator)initWithStorage:(id)storage dataSource:(id)source
{
  v5.receiver = self;
  v5.super_class = HMDHomeActivityVacationAggregator;
  result = [(HMDHomeActivityStateAggregator *)&v5 initWithStorage:storage dataSource:source];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (HMDHomeActivityVacationAggregator)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(HMDHomeActivityStateAggregatorStorage *)[HMDHomeActivityVacationAggregatorStorage alloc] initWithDataSource:sourceCopy];
  v6 = [(HMDHomeActivityVacationAggregator *)self initWithStorage:v5 dataSource:sourceCopy];

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