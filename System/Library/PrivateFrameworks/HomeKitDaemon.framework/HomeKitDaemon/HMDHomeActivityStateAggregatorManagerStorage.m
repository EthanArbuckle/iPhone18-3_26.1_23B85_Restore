@interface HMDHomeActivityStateAggregatorManagerStorage
+ (id)logCategory;
- (HMDHomeActivityStateAggregatorManagerStorage)initWithDataSource:(id)a3;
- (id)logIdentifier;
- (void)writeEnabledContributors:(id)a3;
- (void)writeHomeActivityState:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6;
@end

@implementation HMDHomeActivityStateAggregatorManagerStorage

- (id)logIdentifier
{
  v2 = [(HMDHomeActivityStateAggregatorManagerStorage *)self dataSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)writeEnabledContributors:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityStateAggregatorManagerStorage *)self dataSource];
  v6 = [v5 workingStoreContext];

  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HMDHomeActivityStateAggregatorManagerStorage_writeEnabledContributors___block_invoke;
    v12[3] = &unk_27868A010;
    v12[4] = self;
    v13 = v4;
    v14 = v6;
    [v14 performBlock:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@dataSource.workingStoreContext is unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __73__HMDHomeActivityStateAggregatorManagerStorage_writeEnabledContributors___block_invoke(uint64_t a1)
{
  v1 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeUUID];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (!v3)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(v1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v19;
      v20 = "%{public}@Failed to save to activityStateEnabledContributors because we could not find a backing store model";
      v21 = v18;
      v22 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_229538000, v21, v22, v20, buf, 0xCu);
    }

LABEL_28:

    objc_autoreleasePoolPop(v16);
    goto LABEL_33;
  }

  v41 = v3;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = *(v1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
  v42 = v1;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        v11 = [v10 unsignedIntegerValue];
        if (v11 < 0x3F)
        {
          v7 |= 1 << v11;
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(v1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v49 = v15;
            v50 = 2112;
            v51 = v10;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Specified contributor bit position is too large for signed 64-bit: %@, skipping", buf, 0x16u);

            v1 = v42;
          }

          objc_autoreleasePoolPop(v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = *(v1 + 32);
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v41 activityStateEnabledContributors];
    *buf = 138543874;
    v49 = v26;
    v50 = 2112;
    v51 = v27;
    v52 = 2048;
    v53 = v7;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@activityStateEnabledContributors: %@ -> %llu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v3 = v41;
  [v41 setActivityStateEnabledContributors:v28];

  v29 = [*(v42 + 48) managedObjectContext];
  v30 = [v29 hasChanges];

  if ((v30 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(v42 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v19;
      v20 = "%{public}@Skipping saving activityStateEnabledContributors because no changes were made";
      v21 = v18;
      v22 = OS_LOG_TYPE_INFO;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v31 = *(v42 + 48);
  v43 = 0;
  v32 = [v31 save:&v43];
  v33 = v43;
  v34 = objc_autoreleasePoolPush();
  v35 = *(v42 + 32);
  v36 = HMFGetOSLogHandle();
  v37 = v36;
  if (v32)
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Successfully saved activityStateEnabledContributors", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
  }

  else
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v39;
      v50 = 2112;
      v51 = v33;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to save activityStateEnabledContributors with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    [*(v42 + 48) rollback];
  }

LABEL_33:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)writeHomeActivityState:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = [(HMDHomeActivityStateAggregatorManagerStorage *)self dataSource];
  v13 = [v12 workingStoreContext];

  if (v13)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __116__HMDHomeActivityStateAggregatorManagerStorage_writeHomeActivityState_withHoldInfo_transitionalStateEndDate_reason___block_invoke;
    v19[3] = &unk_27867A828;
    v19[4] = self;
    v23 = a3;
    v20 = v10;
    v21 = v13;
    v24 = a6;
    v22 = v11;
    [v21 performBlock:v19];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@dataSource.workingStoreContext is unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __116__HMDHomeActivityStateAggregatorManagerStorage_writeHomeActivityState_withHoldInfo_transitionalStateEndDate_reason___block_invoke(uint64_t a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeUUID];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (!v3)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v110 = v15;
      v16 = "%{public}@Failed to save details of activity state change because we could not find backing store model";
LABEL_15:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v12);
    goto LABEL_60;
  }

  if (!*(a1 + 64))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v110 = v15;
      v16 = "%{public}@Skipping storage of activity state change because unknown state was provided";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v4 = *(a1 + 40);
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

  if (!*(a1 + 40) || v6)
  {
    v17 = [v3 activityState];
    v18 = [v17 unsignedIntegerValue];

    v107 = v6;
    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        if (v18 > 7)
        {
          v23 = @"Unknown";
        }

        else
        {
          v23 = off_278671F60[v18 - 1];
        }

        v24 = v23;
        v25 = *(a1 + 64) - 1;
        if (v25 > 6)
        {
          v26 = @"Unknown";
        }

        else
        {
          v26 = off_278671F60[v25];
        }

        v27 = v26;
        v28 = *(a1 + 72) - 1;
        if (v28 > 3)
        {
          v29 = @"Other";
        }

        else
        {
          v29 = off_278671F98[v28];
        }

        v30 = v29;
        *buf = 138544130;
        v110 = v22;
        v111 = 2112;
        v112 = v24;
        v113 = 2112;
        v114 = v27;
        v115 = 2112;
        *v116 = v30;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Recording HMDHomeActivityStateTransitionLogEvent with: %@ - %@ for reason %@", buf, 0x2Au);

        v6 = v107;
      }

      objc_autoreleasePoolPop(v19);
      v31 = [HMDHomeActivityStateTransitionLogEvent alloc];
      v32 = [*(a1 + 32) homeUUID];
      v33 = [(HMDHomeActivityStateTransitionLogEvent *)v31 initWithHomeUUID:v32 fromState:v18 toState:*(a1 + 64) reason:*(a1 + 72)];

      v34 = [*(a1 + 32) dataSource];
      v35 = [v34 logEventSubmitter];
      [v35 submitLogEvent:v33];

      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 32);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v110 = v39;
        v111 = 2112;
        v112 = v33;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Submitted HMDHomeActivityStateTransitionLogEvent: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
    }

    v40 = [v3 activityStateChangedTimestamp];
    if (v18 != *(a1 + 64))
    {
      v41 = [*(a1 + 32) dataSource];
      v42 = [v41 currentDate];

      if (v40)
      {
        v105 = v40;
        [v42 timeIntervalSinceDate:v40];
        v44 = v43 / 60.0;
        v45 = [HMDHomeActivityStateDurationLogEvent alloc];
        v46 = [*(a1 + 32) homeUUID];
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
        v49 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
        v50 = [*(a1 + 32) dataSource];
        v51 = -[HMDHomeActivityStateDurationLogEvent initWithHomeUUID:state:nextState:durationInMinutes:supportsAdaptiveTemperatureAutomations:](v45, "initWithHomeUUID:state:nextState:durationInMinutes:supportsAdaptiveTemperatureAutomations:", v46, v47, v48, v49, [v50 supportsAdaptiveTemperatureAutomations]);

        v52 = [*(a1 + 32) dataSource];
        v53 = [v52 logEventSubmitter];
        [v53 submitLogEvent:v51];

        v54 = objc_autoreleasePoolPush();
        v55 = *(a1 + 32);
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          v58 = [(HMDHomeActivityStateDurationLogEvent *)v51 coreAnalyticsEventDictionary];
          *buf = 138543618;
          v110 = v57;
          v111 = 2112;
          v112 = v58;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Submitted HMDHomeActivityStateDurationLogEvent: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v54);
        v40 = v105;
        v6 = v107;
      }

      else
      {
        v59 = objc_autoreleasePoolPush();
        v60 = *(a1 + 32);
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543618;
          v110 = v62;
          v111 = 2112;
          v112 = 0;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Not submitting HMDHomeActivityStateDurationLogEvent. Invalid MKFHome.activityStateChangedTimestamp: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v59);
      }

      [v3 setActivityStateChangedTimestamp:v42];
    }

    v63 = objc_autoreleasePoolPush();
    v64 = *(a1 + 32);
    v65 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      log = v65;
      v104 = HMFGetLogIdentifier();
      v103 = HMHomeActivityStateToString();
      v66 = *(a1 + 64);
      v102 = HMHomeActivityStateToString();
      v100 = [v3 isActivityStateHoldActive];
      v67 = [v100 BOOLValue];
      v98 = [v3 activityStateHoldEndDate];
      v101 = [v98 hmf_localTimeDescription];
      v95 = [v6 endDate];
      v99 = [v95 hmf_localTimeDescription];
      v93 = [v3 activityStateTransitionalStateEndDate];
      v97 = [v93 hmf_localTimeDescription];
      v94 = [*(a1 + 56) hmf_localTimeDescription];
      v68 = *(a1 + 72) - 1;
      v96 = v64;
      if (v68 > 3)
      {
        v69 = @"Other";
      }

      else
      {
        v69 = off_278671F98[v68];
      }

      v91 = v69;
      v70 = [v40 hmf_localTimeDescription];
      v71 = [v3 activityStateChangedTimestamp];
      [v71 hmf_localTimeDescription];
      v72 = v106 = v40;
      *buf = 138546178;
      v110 = v104;
      v111 = 2112;
      v112 = v103;
      v113 = 2112;
      v114 = v102;
      v115 = 1024;
      *v116 = v67;
      *&v116[4] = 1024;
      *&v116[6] = v6 != 0;
      v117 = 2112;
      v118 = v101;
      v119 = 2112;
      v120 = v99;
      v121 = 2112;
      v122 = v97;
      v123 = 2112;
      v124 = v94;
      v125 = 2112;
      v126 = v91;
      v127 = 2112;
      v128 = v70;
      v73 = v70;
      v129 = 2112;
      v130 = v72;
      v65 = log;
      _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_INFO, "%{public}@activityState: %@ -> %@, isActivityStateHoldActive: %{BOOL}d -> %{BOOL}d, activityStateHoldEndDate: %@ -> %@, activityStateTransitionalStateEndDate: %@ -> %@, reason: %@, activityStateChangedTimestamp: %@ -> %@", buf, 0x72u);

      v40 = v106;
      v6 = v107;
      v64 = v96;
    }

    objc_autoreleasePoolPop(v63);
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
    [v3 setActivityState:v74];

    v75 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    [v3 setIsActivityStateHoldActive:v75];

    v76 = [v6 endDate];
    [v3 setActivityStateHoldEndDate:v76];

    [v3 setActivityStateTransitionalStateEndDate:*(a1 + 56)];
    v77 = [*(a1 + 48) managedObjectContext];
    LOBYTE(v74) = [v77 hasChanges];

    if (v74)
    {
      v78 = *(a1 + 48);
      v108 = 0;
      [v78 save:&v108];
      v79 = v108;
      v80 = objc_autoreleasePoolPush();
      v81 = *(a1 + 32);
      v82 = HMFGetOSLogHandle();
      v83 = v82;
      if (v79)
      {
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          v110 = v84;
          v111 = 2112;
          v112 = v79;
          _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_ERROR, "%{public}@Failed to save with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v80);
        [*(a1 + 48) rollback];
      }

      else
      {
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          v89 = HMFGetLogIdentifier();
          *buf = 138543362;
          v110 = v89;
          _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_DEBUG, "%{public}@Successfully saved", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v80);
      }
    }

    else
    {
      v85 = objc_autoreleasePoolPush();
      v86 = *(a1 + 32);
      v87 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        v88 = HMFGetLogIdentifier();
        *buf = 138543362;
        v110 = v88;
        _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Skipping context save because no changes were made", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v85);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543618;
      v110 = v10;
      v111 = 2112;
      v112 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Skipping storage of activity state change because the provided holdInfo is not a timed hold: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) rollback];
  }

LABEL_60:
  v90 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateAggregatorManagerStorage)initWithDataSource:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateAggregatorManagerStorage;
  v6 = [(HMDHomeActivityStateAggregatorManagerStorage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [v5 home];
    v9 = [v8 uuid];
    homeUUID = v7->_homeUUID;
    v7->_homeUUID = v9;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_138158 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_138158, &__block_literal_global_138159);
  }

  v3 = logCategory__hmf_once_v21_138160;

  return v3;
}

void __59__HMDHomeActivityStateAggregatorManagerStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_138160;
  logCategory__hmf_once_v21_138160 = v1;
}

@end