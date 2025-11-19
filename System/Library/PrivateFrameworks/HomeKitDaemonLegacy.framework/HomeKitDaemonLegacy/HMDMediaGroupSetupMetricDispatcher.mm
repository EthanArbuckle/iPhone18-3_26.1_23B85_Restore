@interface HMDMediaGroupSetupMetricDispatcher
+ (id)logCategory;
- (HMDMediaGroupSetupMetricDispatcher)initWithDataSource:(id)a3 logEventSubmitter:(id)a4 currentUpTicksFactory:(id)a5 submissionTimerFactory:(id)a6;
- (HMDMediaGroupSetupMetricDispatcherDataSource)dataSource;
- (HMMLogEventSubmitting)logEventSubmitter;
- (id)setupLatencyLogEvent:(unint64_t)a3 groupIdentifier:(id)a4 isController:(BOOL)a5 isPrimaryResident:(BOOL)a6 totalDuration:(unint64_t)a7 setupSessionIdentifier:(id)a8 setupRequestOption:(unint64_t)a9 totalDurationSinceSetupSessionStart:(unint64_t)a10 errorStage:(id)a11;
- (void)_resetActiveTracking;
- (void)_submitLogEvent:(id)a3 error:(id)a4;
- (void)_submitLogEventWithTotalDuration:(unint64_t)a3 totalDurationSinceSetupSessionStart:(unint64_t)a4 error:(id)a5;
- (void)markRequestCommittedForGroupIdentifier:(id)a3 metricType:(unint64_t)a4 error:(id)a5;
- (void)markRequestReceivedForGroupIdentifier:(id)a3 metricType:(unint64_t)a4 setupSessionIdentifier:(id)a5 setupRequestOption:(unint64_t)a6 setupSessionStartTimeMS:(unint64_t)a7;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDMediaGroupSetupMetricDispatcher

- (HMMLogEventSubmitting)logEventSubmitter
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);

  return WeakRetained;
}

- (HMDMediaGroupSetupMetricDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDMediaGroupSetupMetricDispatcher *)self activeGroupIdentifier];

  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13 reason:@"Timeout in getting commited group"];
    v7 = [(HMDMediaGroupSetupMetricDispatcher *)self currentUpTicksFactory];
    v8 = v7[2]();

    requestReceivedTimeMS = self->_requestReceivedTimeMS;
    if (v8 <= requestReceivedTimeMS || requestReceivedTimeMS == 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 - requestReceivedTimeMS;
    }

    if (self->_setupSessionIdentifier)
    {
      v12 = v8 - self->_setupSessionStartTimeMS;
    }

    else
    {
      v12 = 0;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v20;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Timer fired, submitting log event with duration: %llu error: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDMediaGroupSetupMetricDispatcher *)v18 _submitLogEventWithTotalDuration:v11 totalDurationSinceSetupSessionStart:v12 error:v6];
    [(HMDMediaGroupSetupMetricDispatcher *)v18 _resetActiveTracking];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer fired but no active metric type being tracked.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDMediaGroupSetupMetricDispatcher *)v14 _resetActiveTracking];
  }

  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x277D85DE8];
}

- (id)setupLatencyLogEvent:(unint64_t)a3 groupIdentifier:(id)a4 isController:(BOOL)a5 isPrimaryResident:(BOOL)a6 totalDuration:(unint64_t)a7 setupSessionIdentifier:(id)a8 setupRequestOption:(unint64_t)a9 totalDurationSinceSetupSessionStart:(unint64_t)a10 errorStage:(id)a11
{
  v12 = a6;
  v13 = a5;
  v16 = a11;
  v17 = a8;
  v18 = a4;
  v19 = [HMDMediaGroupSetupLatencyLogEvent alloc];
  if (a3 - 1 > 3)
  {
    v20 = @"Unknown Metric Type";
  }

  else
  {
    v20 = off_27972A4F0[a3 - 1];
  }

  v21 = @"Unknown Role";
  if (v12)
  {
    v21 = @"Primary Resident";
  }

  if (v13)
  {
    v22 = @"Controller";
  }

  else
  {
    v22 = v21;
  }

  v23 = [v18 UUIDString];

  v24 = [v17 UUIDString];

  v25 = [(HMDMediaGroupSetupLatencyLogEvent *)v19 initWithRequestType:v20 systemUUID:v23 deviceRole:v22 totalDurationMS:a7 setupSessionIdentifier:v24 setupRequestOption:a9 totalDurationSinceAccessorySetupStartMS:a10 errorStage:v16];

  return v25;
}

- (void)_submitLogEvent:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 coreAnalyticsEventDictionary];
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitting log event: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDMediaGroupSetupMetricDispatcher *)v9 logEventSubmitter];
  [v13 submitLogEvent:v6 error:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_submitLogEventWithTotalDuration:(unint64_t)a3 totalDurationSinceSetupSessionStart:(unint64_t)a4 error:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [(HMDMediaGroupSetupMetricDispatcher *)self dataSource];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v14;
      v25 = 2048;
      v26 = a3;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting log event: %llu error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [v9 isCurrentDeviceIOSDevice];
    v16 = [v9 isPrimaryResidentDevice];
    v17 = [(HMDMediaGroupSetupMetricDispatcher *)v11 metricType];
    v18 = [(HMDMediaGroupSetupMetricDispatcher *)v11 activeGroupIdentifier];
    v19 = [(HMDMediaGroupSetupMetricDispatcher *)v11 setupSessionIdentifier];
    v20 = [(HMDMediaGroupSetupMetricDispatcher *)v11 setupLatencyLogEvent:v17 groupIdentifier:v18 isController:v15 isPrimaryResident:v16 totalDuration:a3 setupSessionIdentifier:v19 setupRequestOption:[(HMDMediaGroupSetupMetricDispatcher *)v11 setupRequestOption] totalDurationSinceSetupSessionStart:a4 errorStage:@"Committed Group"];

    [(HMDMediaGroupSetupMetricDispatcher *)v11 _submitLogEvent:v20 error:v8];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v21;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data source for metric event submission", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDMediaGroupSetupMetricDispatcher *)v11 _resetActiveTracking];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)markRequestCommittedForGroupIdentifier:(id)a3 metricType:(unint64_t)a4 error:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    os_unfair_lock_lock_with_options();
    activeGroupIdentifier = self->_activeGroupIdentifier;
    if (activeGroupIdentifier)
    {
      if (([(NSUUID *)activeGroupIdentifier hmf_isEqualToUUID:v8]& 1) != 0)
      {
        metricType = self->_metricType;
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        if (metricType == a4)
        {
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = v15;
            v17 = self->_activeGroupIdentifier;
            if (a4 > 4)
            {
              v18 = @"Unknown Metric Type";
            }

            else
            {
              v18 = off_27972A4F0[a4 - 1];
            }

            v45 = 138543874;
            v46 = v15;
            v47 = 2112;
            v48 = v17;
            v49 = 2112;
            v50 = v18;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Request committed for group identifier %@ metric type: %@", &v45, 0x20u);
          }

          objc_autoreleasePoolPop(v12);
          v36 = [(HMDMediaGroupSetupMetricDispatcher *)v13 currentUpTicksFactory];
          v13->_requestCommittedTimeMS = v36[2]();

          requestReceivedTimeMS = v13->_requestReceivedTimeMS;
          if (requestReceivedTimeMS)
          {
            requestCommittedTimeMS = v13->_requestCommittedTimeMS;
            v39 = requestCommittedTimeMS >= requestReceivedTimeMS;
            v40 = requestCommittedTimeMS - requestReceivedTimeMS;
            if (v39)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          if (v13->_setupSessionIdentifier)
          {
            v42 = v13->_requestCommittedTimeMS - v13->_setupSessionStartTimeMS;
          }

          else
          {
            v42 = 0;
          }

          [(HMDMediaGroupSetupMetricDispatcher *)v13 _submitLogEventWithTotalDuration:v41 totalDurationSinceSetupSessionStart:v42 error:v9];
          [(HMDMediaGroupSetupMetricDispatcher *)v13 _resetActiveTracking];
          goto LABEL_38;
        }

        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = v32;
          v34 = self->_metricType - 1;
          if (v34 > 3)
          {
            v35 = @"Unknown Metric Type";
          }

          else
          {
            v35 = off_27972A4F0[v34];
          }

          if (a4 > 4)
          {
            v43 = @"Unknown Metric Type";
          }

          else
          {
            v43 = off_27972A4F0[a4 - 1];
          }

          v45 = 138543874;
          v46 = v32;
          v47 = 2112;
          v48 = v35;
          v49 = 2112;
          v50 = v43;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher is tracking metric type %@ but ask to mark metric type %@", &v45, 0x20u);
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        v29 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v31 = self->_activeGroupIdentifier;
          v45 = 138543874;
          v46 = v30;
          v47 = 2112;
          v48 = v8;
          v49 = 2112;
          v50 = v31;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Tracking different group identifier: %@ active group identifier: %@", &v45, 0x20u);
        }
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = v25;
        v27 = v23->_metricType - 1;
        if (v27 > 3)
        {
          v28 = @"Unknown Metric Type";
        }

        else
        {
          v28 = off_27972A4F0[v27];
        }

        v45 = 138543618;
        v46 = v25;
        v47 = 2112;
        v48 = v28;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@No active setup tracking for metric type: %@", &v45, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v12);
LABEL_38:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_39;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v45 = 138543362;
    v46 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher cannot track unknown metric type for committed request", &v45, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_39:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)markRequestReceivedForGroupIdentifier:(id)a3 metricType:(unint64_t)a4 setupSessionIdentifier:(id)a5 setupRequestOption:(unint64_t)a6 setupSessionStartTimeMS:(unint64_t)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v48 = a5;
  if (a4)
  {
    os_unfair_lock_lock_with_options();
    if (self->_activeGroupIdentifier)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = v16;
        activeGroupIdentifier = self->_activeGroupIdentifier;
        v19 = v14->_metricType - 1;
        if (v19 > 3)
        {
          v20 = @"Unknown Metric Type";
        }

        else
        {
          v20 = off_27972A4F0[v19];
        }

        *buf = 138543874;
        v50 = v16;
        v51 = 2112;
        v52 = activeGroupIdentifier;
        v53 = 2112;
        v54 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Already has active setup tracking for metric identifier: %@ group type: %@", buf, 0x20u);
      }
    }

    else
    {
      metricType = self->_metricType;
      v13 = objc_autoreleasePoolPush();
      v26 = self;
      if (!metricType)
      {
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          if (a4 > 4)
          {
            v33 = @"Unknown Metric Type";
          }

          else
          {
            v33 = off_27972A4F0[a4 - 1];
          }

          *buf = 138544386;
          v50 = v32;
          v51 = 2112;
          v52 = v47;
          v53 = 2112;
          v54 = v33;
          v55 = 2112;
          v56 = v48;
          v57 = 2048;
          v58 = a7;
          v46 = v32;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Request received for group identifier %@ metric type: %@ session identifier: %@ setup start time: %llu", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v13);
        submissionTimer = v26->_submissionTimer;
        if (submissionTimer)
        {
          [(HMFTimer *)submissionTimer cancel];
          v36 = v26->_submissionTimer;
          v26->_submissionTimer = 0;

          context = objc_autoreleasePoolPush();
          v37 = v26;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543362;
            v50 = v39;
            v44 = v39;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Resetting the submission timer", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }

        objc_storeStrong(&self->_activeGroupIdentifier, a3);
        self->_metricType = a4;
        v40 = [(HMDMediaGroupSetupMetricDispatcher *)v26 currentUpTicksFactory];
        v26->_requestReceivedTimeMS = v40[2]();

        if (v48)
        {
          objc_storeStrong(&v26->_setupSessionIdentifier, a5);
          v26->_setupSessionStartTimeMS = a7;
        }

        v26->_setupRequestOption = a6;
        v41 = [(HMDMediaGroupSetupMetricDispatcher *)v26 submissionTimerFactory];
        v42 = v41[2]();
        v43 = v26->_submissionTimer;
        v26->_submissionTimer = v42;

        [(HMFTimer *)v26->_submissionTimer setDelegate:v26];
        [(HMFTimer *)v26->_submissionTimer resume];
        goto LABEL_21;
      }

      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = v27;
        v29 = self->_metricType - 1;
        if (v29 > 3)
        {
          v30 = @"Unknown Metric Type";
        }

        else
        {
          v30 = off_27972A4F0[v29];
        }

        *buf = 138543618;
        v50 = v27;
        v51 = 2112;
        v52 = v30;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher already tracking metric type: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v13);
LABEL_21:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_22;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v24;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher cannot track unknown metric type for request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
LABEL_22:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_resetActiveTracking
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    activeGroupIdentifier = v4->_activeGroupIdentifier;
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = activeGroupIdentifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Reset active tracking for group identifier: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v4->_metricType = 0;
  v8 = v4->_activeGroupIdentifier;
  v4->_activeGroupIdentifier = 0;

  v4->_requestReceivedTimeMS = 0;
  v4->_requestCommittedTimeMS = 0;
  submissionTimer = v4->_submissionTimer;
  v4->_submissionTimer = 0;

  setupSessionIdentifier = v4->_setupSessionIdentifier;
  v4->_setupSessionIdentifier = 0;

  v4->_setupRequestOption = 0;
  v4->_setupSessionStartTimeMS = 0;
  v11 = *MEMORY[0x277D85DE8];
}

id __75__HMDMediaGroupSetupMetricDispatcher_initWithDataSource_logEventSubmitter___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:900.0];

  return v0;
}

- (HMDMediaGroupSetupMetricDispatcher)initWithDataSource:(id)a3 logEventSubmitter:(id)a4 currentUpTicksFactory:(id)a5 submissionTimerFactory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HMDMediaGroupSetupMetricDispatcher;
  v14 = [(HMDMediaGroupSetupMetricDispatcher *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v14->_dataSource, v10);
    v15->_metricType = 0;
    v16 = _Block_copy(v12);
    currentUpTicksFactory = v15->_currentUpTicksFactory;
    v15->_currentUpTicksFactory = v16;

    objc_storeWeak(&v15->_logEventSubmitter, v11);
    v18 = _Block_copy(v13);
    submissionTimerFactory = v15->_submissionTimerFactory;
    v15->_submissionTimerFactory = v18;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_96209 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_96209, &__block_literal_global_36_96210);
  }

  v3 = logCategory__hmf_once_v20_96211;

  return v3;
}

uint64_t __49__HMDMediaGroupSetupMetricDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_96211;
  logCategory__hmf_once_v20_96211 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end