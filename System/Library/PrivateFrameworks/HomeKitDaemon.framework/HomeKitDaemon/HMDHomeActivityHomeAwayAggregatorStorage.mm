@interface HMDHomeActivityHomeAwayAggregatorStorage
+ (id)logCategory;
- (id)fetchLegacyPresenceMapOnManagedObjectContext;
- (id)fetchUserActivityReportsOnManagedObjectContext;
- (void)updateMKFUserActivityStatus:(id)a3 withReport:(id)a4;
@end

@implementation HMDHomeActivityHomeAwayAggregatorStorage

- (id)fetchLegacyPresenceMapOnManagedObjectContext
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateAggregatorStorage *)self home];
  v4 = [v3 usersSupportingPresence];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [v3 uuid];
  v7 = [HMCContext findHomeWithModelID:v6];

  if (v7)
  {
    v8 = [v7 homeMembers];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__HMDHomeActivityHomeAwayAggregatorStorage_fetchLegacyPresenceMapOnManagedObjectContext__block_invoke;
    v17[3] = &unk_2786784D0;
    v18 = v4;
    v19 = self;
    v20 = v5;
    v9 = v5;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

    v5 = [v9 copy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v3 uuid];
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void __88__HMDHomeActivityHomeAwayAggregatorStorage_fetchLegacyPresenceMapOnManagedObjectContext__block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__HMDHomeActivityHomeAwayAggregatorStorage_fetchLegacyPresenceMapOnManagedObjectContext__block_invoke_2;
  v37[3] = &unk_278688680;
  v5 = v3;
  v38 = v5;
  v6 = [v4 na_firstObjectPassingTest:v37];
  if (v6)
  {
    v7 = [v5 presenceUpdateTimeStamp];

    if (v7)
    {
      v8 = [v5 presenceRegionStatus];
      v9 = [HMDUserPresenceRegion regionWithNumber:v8];

      if (!v9)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = *(a1 + 40);
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v30;
          v41 = 2112;
          v42 = v5;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@No presence report for the home member [%@], no presenceRegionStatus", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
        goto LABEL_22;
      }

      v10 = MEMORY[0x277CD1F00];
      v11 = [v5 presenceAuthorizationStatus];
      v12 = [v10 authWithNumber:v11];

      if (v12)
      {
        v13 = HMDUserActivityHomeAwayStateFromPresenceRegion(v9, v12);
        if (v13 > 1)
        {
          v32 = [HMDUserActivityHomeAwayReport alloc];
          v33 = [v5 presenceUpdateTimeStamp];
          v34 = [v5 presenceUpdateTimeStamp];
          v35 = [(HMDUserActivityHomeAwayReport *)v32 initWithUser:v6 state:v13 fromDevice:0 reason:1 changedTimestamp:v33 lastUpdatedTimeStamp:v34];

          [*(a1 + 48) addObject:v35];
          goto LABEL_21;
        }

        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [v6 shortDescription];
          v19 = off_278672FD8[v13];
          *buf = 138543874;
          v40 = v17;
          v41 = 2112;
          v42 = v18;
          v43 = 2112;
          v44 = v19;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring presence region which is unknown for the user [%@], %@", buf, 0x20u);
        }
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v31;
          v41 = 2112;
          v42 = v5;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No presence report for the home member [%@], no presenceAuthorizationStatus", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v14);
LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v23;
      v41 = 2112;
      v42 = v5;
      v24 = "%{public}@No presence report for the home member [%@], no presenceUpdateTimeStamp";
      v25 = v22;
      v26 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v23;
      v41 = 2112;
      v42 = v5;
      v24 = "%{public}@Did not find the home member [%@] which exist in working store but not in HMDHome.users";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_229538000, v25, v26, v24, buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v20);
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMDHomeActivityHomeAwayAggregatorStorage_fetchLegacyPresenceMapOnManagedObjectContext__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 modelID];
  v5 = [v3 uuid];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (id)fetchUserActivityReportsOnManagedObjectContext
{
  v48 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HMDHomeActivityHomeAwayAggregatorStorage;
  v3 = [(HMDHomeActivityStateAggregatorStorage *)&v40 fetchUserActivityReportsOnManagedObjectContext];
  v4 = [v3 mutableCopy];

  v5 = [(HMDHomeActivityHomeAwayAggregatorStorage *)self fetchLegacyPresenceMapOnManagedObjectContext];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v43 = v9;
    v44 = 2112;
    v45 = v4;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetched home away reports %@ and presence reports %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v12 = v10;
    v34 = *v37;
    *&v11 = 138543874;
    v32 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [v4 allObjects];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __90__HMDHomeActivityHomeAwayAggregatorStorage_fetchUserActivityReportsOnManagedObjectContext__block_invoke;
        v35[3] = &unk_2786784A8;
        v35[4] = v14;
        v16 = [v15 hmf_objectPassingTest:v35];

        if (v16)
        {
          v17 = [v14 lastUpdateTimestamp];
          v18 = [v16 lastUpdateTimestamp];
          [v17 timeIntervalSinceDate:v18];
          v20 = v19;

          if (v20 < 0.0)
          {
            goto LABEL_17;
          }

          v21 = objc_autoreleasePoolPush();
          v22 = v7;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = HMFGetLogIdentifier();
            *buf = v32;
            v43 = v24;
            v44 = 2112;
            v45 = v14;
            v46 = 2112;
            v47 = v16;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Using presence report instead of home away report because its more recent %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v21);
          [v4 removeObject:v16];
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v7;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v28;
            v44 = 2112;
            v45 = v14;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Merging presence report for user that does not have home away report %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
        }

        [v4 addObject:v14];
LABEL_17:
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v12);
  }

  v29 = [v4 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __90__HMDHomeActivityHomeAwayAggregatorStorage_fetchUserActivityReportsOnManagedObjectContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 user];
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) user];
  v6 = [v5 uuid];
  v7 = HMFEqualObjects();

  return v7;
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_111039 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_111039, &__block_literal_global_111040);
  }

  v3 = logCategory__hmf_once_v12_111041;

  return v3;
}

void __55__HMDHomeActivityHomeAwayAggregatorStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_111041;
  logCategory__hmf_once_v12_111041 = v1;
}

@end