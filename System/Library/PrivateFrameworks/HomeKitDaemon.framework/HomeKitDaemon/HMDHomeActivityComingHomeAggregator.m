@interface HMDHomeActivityComingHomeAggregator
+ (id)logCategory;
- (BOOL)isExpiredReport:(id)a3;
- (BOOL)isStateEquivalentForExistingReport:(id)a3 newReport:(id)a4;
- (BOOL)shouldSuppressIsComingHome:(BOOL)a3 withStateEnd:(id)a4;
- (HMDHomeActivityComingHomeAggregator)initWithDataSource:(id)a3;
- (HMDHomeActivityComingHomeAggregatorState)computedState;
- (double)timeIntervalFromETAExpiredToCurrentDate:(id)a3;
- (double)timeIntervalFromETAReportingThresholdToStateEnd:(id)a3;
- (id)nextRefreshTimestamp;
@end

@implementation HMDHomeActivityComingHomeAggregator

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_285923 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_285923, &__block_literal_global_285924);
  }

  v3 = logCategory__hmf_once_v10_285925;

  return v3;
}

void __50__HMDHomeActivityComingHomeAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_285925;
  logCategory__hmf_once_v10_285925 = v1;
}

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

- (BOOL)isExpiredReport:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregator *)self dataSource];
  v6 = [v5 currentDate];
  v7 = [(HMDHomeActivityStateAggregator *)self dataSource];
  [v7 reportValidityInterval];
  v8 = [v4 isExpiredWithCurrentDate:v6 validInterval:?];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12 && [v12 state] == 2)
    {
      v13 = [v12 stateEnd];
      [(HMDHomeActivityComingHomeAggregator *)self timeIntervalFromETAExpiredToCurrentDate:v13];
      v15 = v14;

      v9 = v15 > 0.0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)nextRefreshTimestamp
{
  v3 = [(HMDHomeActivityStateAggregator *)self userActivityMap];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDHomeActivityComingHomeAggregator_nextRefreshTimestamp__block_invoke;
  v7[3] = &unk_27868A818;
  v7[4] = self;
  v5 = [v3 na_reduceWithInitialValue:v4 reducer:v7];

  return v5;
}

id __59__HMDHomeActivityComingHomeAggregator_nextRefreshTimestamp__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) isExpiredReport:v8];
  v11 = v9;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    v13 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = v11;
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v11;
    if ([v15 state] != 2)
    {
      goto LABEL_14;
    }

    v17 = *(a1 + 32);
    v18 = [v15 stateEnd];
    [v17 timeIntervalFromETAReportingThresholdToStateEnd:v18];
    v20 = v19;

    if (v20 <= 0.0)
    {
      v29 = [v15 stateEnd];
      v23 = [v29 dateByAddingTimeInterval:900.0];

      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v27 = v35 = v24;
        *buf = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = v23;
        v28 = "%{public}@ETA expires at %@";
        goto LABEL_12;
      }
    }

    else
    {
      v21 = [*(a1 + 32) dataSource];
      v22 = [v21 currentDate];
      v23 = [v22 dateByAddingTimeInterval:v20];

      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v27 = v35 = v24;
        *buf = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = v23;
        v28 = "%{public}@ETA is outside required range, suppressing expires at %@";
LABEL_12:
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, v28, buf, 0x16u);

        v24 = v35;
      }
    }

    objc_autoreleasePoolPop(v24);
    v16 = [v11 earlierDate:v23];

LABEL_14:
    v30 = [v13 lastUpdateTimestamp];
    v31 = [*(a1 + 32) dataSource];
    [v31 reportValidityInterval];
    v32 = [v30 dateByAddingTimeInterval:?];

    v12 = [v16 earlierDate:v32];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDHomeActivityComingHomeAggregatorState)computedState
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDHomeActivityStateAggregator *)v4 userActivityMap];
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Computing state from user activity map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDHomeActivityStateAggregator *)v4 userActivityMap];
  v9 = [v8 copy];

  if ([v9 count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__285954;
    v21 = __Block_byref_object_dispose__285955;
    v22 = [MEMORY[0x277CBEAA8] distantFuture];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__HMDHomeActivityComingHomeAggregator_computedState__block_invoke;
    v14[3] = &unk_27868A7F0;
    v14[4] = v4;
    v14[5] = &v15;
    v14[6] = buf;
    [v9 na_each:v14];
    if ([(HMDHomeActivityComingHomeAggregator *)v4 shouldSuppressIsComingHome:*(v16 + 24) withStateEnd:*(*&buf[8] + 40)])
    {
      *(v16 + 24) = 0;
      v10 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = 0;
    }

    if (*(v16 + 24) == 1)
    {
      [HMDHomeActivityComingHomeAggregatorState comingHomeWithEstimatedEndDate:*(*&buf[8] + 40)];
    }

    else
    {
      +[HMDHomeActivityComingHomeAggregatorState notComingHome];
    }
    v11 = ;
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = +[HMDHomeActivityComingHomeAggregatorState notComingHome];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __52__HMDHomeActivityComingHomeAggregator_computedState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 state] == 2)
  {
    if ([*(a1 + 32) isExpiredReport:v6])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v10;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring expired report %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = [v6 stateEnd];
      v13 = [v11 earlierDate:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSuppressIsComingHome:(BOOL)a3 withStateEnd:(id)a4
{
  LODWORD(v4) = a3;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v4)
  {
    [(HMDHomeActivityComingHomeAggregator *)self timeIntervalFromETAReportingThresholdToStateEnd:v6];
    if (v7 > 0.0)
    {
      v8 = v7;
      v4 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v11;
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Suppressing Coming Home because ETA is outside of required range by %lf sec", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (double)timeIntervalFromETAExpiredToCurrentDate:(id)a3
{
  v4 = [a3 dateByAddingTimeInterval:900.0];
  v5 = [(HMDHomeActivityStateAggregator *)self dataSource];
  v6 = [v5 currentDate];
  [v6 timeIntervalSinceDate:v4];
  v8 = v7;

  return v8;
}

- (double)timeIntervalFromETAReportingThresholdToStateEnd:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregator *)self dataSource];
  v6 = [v5 currentDate];
  v7 = [v6 dateByAddingTimeInterval:3600.0];

  [v4 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (HMDHomeActivityComingHomeAggregator)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregatorStorage *)[HMDHomeActivityComingHomeAggregatorStorage alloc] initWithDataSource:v4];
  v6 = [(HMDHomeActivityStateAggregator *)self initWithStorage:v5 dataSource:v4];

  return v6;
}

@end