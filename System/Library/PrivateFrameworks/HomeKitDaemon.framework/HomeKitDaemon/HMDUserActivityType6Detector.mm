@interface HMDUserActivityType6Detector
+ (BOOL)supportsDataSource:(id)a3;
+ (id)logCategory;
+ (void)initialize;
- (BOOL)_shouldSuppressCurrentStateEvent:(id)a3;
- (HMDUserActivityType6Detector)initWithDataSource:(id)a3;
- (HMDUserActivityType6Detector)initWithDataSource:(id)a3 locationManager:(id)a4;
- (void)_evaluateCurrentStateEvent;
- (void)configureWithCompletion:(id)a3;
- (void)handleBackgroundTaskTimerFired:(id)a3;
- (void)handleLocationAuthorizationChange:(int64_t)a3;
- (void)stateUpdated;
- (void)updateLatestReportWithReason:(unint64_t)a3;
@end

@implementation HMDUserActivityType6Detector

- (void)handleBackgroundTaskTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HMD.BGTM.NK"];

  v6 = [(HMDUserActivityType6Detector *)self reportSuppressedTimerIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(HMDUserActivityStateDetector *)self dataSource];
    v9 = [v8 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDUserActivityType6Detector_handleBackgroundTaskTimerFired___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (void)handleLocationAuthorizationChange:(int64_t)a3
{
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserActivityType6Detector *)self tracker];
  [v7 handleLocationAuthorizationChange:a3];
}

- (void)stateUpdated
{
  v3 = [(HMDUserActivityStateDetector *)self dataSource];
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUserActivityType6Detector_stateUpdated__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_evaluateCurrentStateEvent
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserActivityStateDetector *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserActivityType6Detector *)self tracker];
  v6 = [v5 currentStateEvent];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v47 = 138543618;
    v48 = v10;
    v49 = 2112;
    v50 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@State has updated %@", &v47, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (![(HMDUserActivityType6Detector *)v8 _shouldSuppressCurrentStateEvent:v6])
  {
    v20 = [(HMDUserActivityType6Detector *)v8 previousStateEvent];
    if (v20)
    {
      v21 = v20;
      v22 = [(HMDUserActivityType6Detector *)v8 previousStateEvent];
      v23 = [v22 state];
      if (v23 == [v6 state])
      {
        v24 = [(HMDUserActivityType6Detector *)v8 previousStateEvent];
        v25 = [v24 stateEnd];
        v26 = [v6 stateEnd];
        v27 = HMFEqualObjects();

        if (v27)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v8;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            v32 = [(HMDUserActivityType6Detector *)v29 previousStateEvent];
            v47 = 138543618;
            v48 = v31;
            v49 = 2112;
            v50 = v32;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@State has not changed, not sending report %@", &v47, 0x16u);
          }

          v33 = v28;
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    [(HMDUserActivityType6Detector *)v8 setPreviousStateEvent:v6];
    goto LABEL_21;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = v8;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v47 = 138543362;
    v48 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@State suppressed to not coming home", &v47, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDUserActivityType6Detector *)v12 previousStateEvent];
  if (v15)
  {
    v16 = v15;
    v17 = [(HMDUserActivityType6Detector *)v12 previousStateEvent];
    v18 = [v17 state];

    if (v18 != 2)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v12;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [(HMDUserActivityType6Detector *)v35 previousStateEvent];
        v47 = 138543618;
        v48 = v37;
        v49 = 2112;
        v50 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@State has not changed, not sending report %@", &v47, 0x16u);
      }

      v33 = v34;
LABEL_18:
      objc_autoreleasePoolPop(v33);
      v39 = 0;
      goto LABEL_22;
    }
  }

  v19 = [[HMDUserActivityType6StateEvent alloc] initWithState:3 stateEnd:0 changedTimestamp:0 withReason:11];
  [(HMDUserActivityType6Detector *)v12 setPreviousStateEvent:v19];

LABEL_21:
  v39 = 1;
LABEL_22:
  if ([(HMDUserActivityType6Detector *)v8 queryingInitialState])
  {
    v40 = [HMDUserActivityType6StateEvent alloc];
    v41 = [v6 state];
    v42 = [v6 stateEnd];
    v43 = [v6 changedTimestamp];
    v44 = [(HMDUserActivityType6StateEvent *)v40 initWithState:v41 stateEnd:v42 changedTimestamp:v43 withReason:1];
    [(HMDUserActivityType6Detector *)v8 setPreviousStateEvent:v44];

    [(HMDUserActivityType6Detector *)v8 setQueryingInitialState:0];
  }

  if (v39)
  {
    v45 = [(HMDUserActivityType6Detector *)v8 previousStateEvent];
    -[HMDUserActivityType6Detector updateLatestReportWithReason:](v8, "updateLatestReportWithReason:", [v45 reason]);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSuppressCurrentStateEvent:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([v4 state] != 2)
  {
    goto LABEL_4;
  }

  v7 = [(HMDUserActivityStateDetector *)self dataSource];
  v8 = [v7 currentDate];

  v9 = [v4 stateEnd];
  [v9 timeIntervalSinceDate:v8];
  v11 = v10;

  v12 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v13 = [v12 preferenceForKey:@"detectorMaximumIntervalForStateEnd"];
  v14 = [v13 numberValue];
  [v14 doubleValue];
  v16 = v15;

  if (v11 <= v16)
  {

LABEL_4:
    v17 = [(HMDUserActivityStateDetector *)self dataSource];
    v18 = [v17 backgroundTaskManager];
    v19 = [(HMDUserActivityType6Detector *)self reportSuppressedTimerIdentifier];
    [v18 cancelTaskWithIdentifier:v19 onObserver:self];

    [(HMDUserActivityType6Detector *)self setReportSuppressionTimerPreviousStateEnd:0];
    v20 = 0;
    goto LABEL_17;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543874;
    v50 = v24;
    v51 = 2048;
    v52 = v11;
    v53 = 2048;
    v54 = v16;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@ETA is not within required range %lf sec (> %lf sec), suppressing report", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  v25 = [(HMDUserActivityType6Detector *)v22 reportSuppressionTimerPreviousStateEnd];
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = v25;
  v27 = [(HMDUserActivityType6Detector *)v22 reportSuppressionTimerPreviousStateEnd];
  v28 = [v4 stateEnd];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
LABEL_9:
    v30 = [v4 stateEnd];
    [(HMDUserActivityType6Detector *)v22 setReportSuppressionTimerPreviousStateEnd:v30];

    v31 = [v8 dateByAddingTimeInterval:v11 - v16];
    v32 = objc_autoreleasePoolPush();
    v33 = v22;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v31 hmf_localTimeDescription];
      *buf = 138543618;
      v50 = v35;
      v51 = 2112;
      v52 = *&v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Scheduling coming home report suppression timer firing at %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [(HMDUserActivityStateDetector *)v33 dataSource];
    v38 = [v37 backgroundTaskManager];
    v39 = [(HMDUserActivityType6Detector *)v33 reportSuppressedTimerIdentifier];
    v48 = 0;
    v40 = [v38 scheduleTaskWithIdentifier:v39 fireDate:v31 onObserver:v33 selector:sel_handleBackgroundTaskTimerFired_ error:&v48];
    v41 = v48;

    if ((v40 & 1) == 0)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = v33;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v45;
        v51 = 2112;
        v52 = *&v41;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to schedule coming home report suppression timer with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
    }
  }

  v20 = 1;
LABEL_17:

  v46 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)updateLatestReportWithReason:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserActivityStateDetector *)self dataSource];
  v8 = [v7 home];

  if (v8)
  {
    v9 = [(HMDUserActivityType6Detector *)self previousStateEvent];
    if ([v9 state] == 2)
    {
      v10 = [(HMDUserActivityType6Detector *)self previousStateEvent];
      v11 = [v10 stateEnd];

      if (!v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v15;
          v16 = "%{public}@Not sending report because Coming Home ETA is not known yet.";
          v17 = v14;
          v18 = OS_LOG_TYPE_INFO;
LABEL_8:
          _os_log_impl(&dword_229538000, v17, v18, v16, &v28, 0xCu);

          goto LABEL_9;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v19 = [(HMDUserActivityType6Detector *)self previousStateEvent];
    v20 = [HMDUserActivityType6Report alloc];
    v21 = [v8 currentUser];
    v22 = [v19 state];
    v23 = [v19 stateEnd];
    v24 = [v19 changedTimestamp];
    v25 = [(HMDUserActivityType6Report *)v20 initWithUser:v21 state:v22 stateEnd:v23 withReason:a3 changedTimestamp:v24 lastUpdateTimestamp:0];

    v26 = [[HMDUserActivityReportSetValue alloc] initWithReport:v25];
    [(HMDUserActivityStateDetector *)self setLatestReport:v26];

    [(HMDUserActivityStateDetector *)self notifyDetectorStateChangedWithReason:a3];
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v15;
    v16 = "%{public}@Home is nil, unable to send the coming home report to primary";
    v17 = v14;
    v18 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v12);
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)configureWithCompletion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring ComingHomeDetector", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDUserActivityType6Detector *)v8 setQueryingInitialState:1];
  v11 = [(HMDUserActivityType6Detector *)v8 tracker];
  [v11 configureWithDelegate:v8];

  v12 = [(HMDUserActivityType6Detector *)v8 tracker];
  v13 = [v12 currentStateEvent];
  [(HMDUserActivityType6Detector *)v8 setPreviousStateEvent:v13];

  v14 = objc_autoreleasePoolPush();
  v15 = v8;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = MEMORY[0x277CCABB0];
    v19 = [(HMDUserActivityType6Detector *)v15 previousStateEvent];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "state")}];
    v24 = 138543618;
    v25 = v17;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Configured ComingHomeDetector with initial state %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v21 = _Block_copy(v4);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDUserActivityType6Detector)initWithDataSource:(id)a3 locationManager:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = HMDUserActivityType6Detector;
  v8 = [(HMDUserActivityStateDetector *)&v26 initWithDataSource:v6];
  if (v8)
  {
    v9 = [v6 home];
    v10 = [v6 featuresDataSource];
    v11 = [v10 isUserActivityComingHomeArrivalPredictionEnabled];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v8;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Initializing ComingHomeDetector with CoreRoutine Tracker", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [[HMDUserComingHomeCoreRoutineTracker alloc] initWithDataSource:v6 locationManager:v7];
      tracker = v13->_tracker;
      v13->_tracker = v16;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [v9 uuid];
    v20 = [v19 UUIDString];
    v21 = [v18 stringWithFormat:@"HMDUserActivityType6Detector.ReportSuppressedTimer.%@", v20];
    reportSuppressedTimerIdentifier = v8->_reportSuppressedTimerIdentifier;
    v8->_reportSuppressedTimerIdentifier = v21;
  }

  if (v8->_tracker)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (HMDUserActivityType6Detector)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = +[HMDLocation sharedManager];
  v6 = [(HMDUserActivityType6Detector *)self initWithDataSource:v4 locationManager:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_161905 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_161905, &__block_literal_global_161906);
  }

  v3 = logCategory__hmf_once_v14_161907;

  return v3;
}

void __43__HMDUserActivityType6Detector_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_161907;
  logCategory__hmf_once_v14_161907 = v1;
}

+ (BOOL)supportsDataSource:(id)a3
{
  v3 = [a3 featuresDataSource];
  v4 = [v3 isUserActivityComingHomeArrivalPredictionEnabled];

  return v4;
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F68 forPreferenceKey:@"detectorMaximumIntervalForStateEnd"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_283E75F78 forPreferenceKey:@"minimumDurationToStateEndWhenLeavingHome"];
}

@end