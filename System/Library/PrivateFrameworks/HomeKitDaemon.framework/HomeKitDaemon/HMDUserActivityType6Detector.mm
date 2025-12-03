@interface HMDUserActivityType6Detector
+ (BOOL)supportsDataSource:(id)source;
+ (id)logCategory;
+ (void)initialize;
- (BOOL)_shouldSuppressCurrentStateEvent:(id)event;
- (HMDUserActivityType6Detector)initWithDataSource:(id)source;
- (HMDUserActivityType6Detector)initWithDataSource:(id)source locationManager:(id)manager;
- (void)_evaluateCurrentStateEvent;
- (void)configureWithCompletion:(id)completion;
- (void)handleBackgroundTaskTimerFired:(id)fired;
- (void)handleLocationAuthorizationChange:(int64_t)change;
- (void)stateUpdated;
- (void)updateLatestReportWithReason:(unint64_t)reason;
@end

@implementation HMDUserActivityType6Detector

- (void)handleBackgroundTaskTimerFired:(id)fired
{
  userInfo = [fired userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMD.BGTM.NK"];

  reportSuppressedTimerIdentifier = [(HMDUserActivityType6Detector *)self reportSuppressedTimerIdentifier];
  v7 = [v5 isEqualToString:reportSuppressedTimerIdentifier];

  if (v7)
  {
    dataSource = [(HMDUserActivityStateDetector *)self dataSource];
    queue = [dataSource queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDUserActivityType6Detector_handleBackgroundTaskTimerFired___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)handleLocationAuthorizationChange:(int64_t)change
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  tracker = [(HMDUserActivityType6Detector *)self tracker];
  [tracker handleLocationAuthorizationChange:change];
}

- (void)stateUpdated
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUserActivityType6Detector_stateUpdated__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_evaluateCurrentStateEvent
{
  v51 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  tracker = [(HMDUserActivityType6Detector *)self tracker];
  currentStateEvent = [tracker currentStateEvent];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v47 = 138543618;
    v48 = v10;
    v49 = 2112;
    v50 = currentStateEvent;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@State has updated %@", &v47, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (![(HMDUserActivityType6Detector *)selfCopy _shouldSuppressCurrentStateEvent:currentStateEvent])
  {
    previousStateEvent = [(HMDUserActivityType6Detector *)selfCopy previousStateEvent];
    if (previousStateEvent)
    {
      v21 = previousStateEvent;
      previousStateEvent2 = [(HMDUserActivityType6Detector *)selfCopy previousStateEvent];
      state = [previousStateEvent2 state];
      if (state == [currentStateEvent state])
      {
        previousStateEvent3 = [(HMDUserActivityType6Detector *)selfCopy previousStateEvent];
        stateEnd = [previousStateEvent3 stateEnd];
        stateEnd2 = [currentStateEvent stateEnd];
        v27 = HMFEqualObjects();

        if (v27)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            previousStateEvent4 = [(HMDUserActivityType6Detector *)v29 previousStateEvent];
            v47 = 138543618;
            v48 = v31;
            v49 = 2112;
            v50 = previousStateEvent4;
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

    [(HMDUserActivityType6Detector *)selfCopy setPreviousStateEvent:currentStateEvent];
    goto LABEL_21;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v47 = 138543362;
    v48 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@State suppressed to not coming home", &v47, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  previousStateEvent5 = [(HMDUserActivityType6Detector *)v12 previousStateEvent];
  if (previousStateEvent5)
  {
    v16 = previousStateEvent5;
    previousStateEvent6 = [(HMDUserActivityType6Detector *)v12 previousStateEvent];
    state2 = [previousStateEvent6 state];

    if (state2 != 2)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v12;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        previousStateEvent7 = [(HMDUserActivityType6Detector *)v35 previousStateEvent];
        v47 = 138543618;
        v48 = v37;
        v49 = 2112;
        v50 = previousStateEvent7;
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
  if ([(HMDUserActivityType6Detector *)selfCopy queryingInitialState])
  {
    v40 = [HMDUserActivityType6StateEvent alloc];
    state3 = [currentStateEvent state];
    stateEnd3 = [currentStateEvent stateEnd];
    changedTimestamp = [currentStateEvent changedTimestamp];
    v44 = [(HMDUserActivityType6StateEvent *)v40 initWithState:state3 stateEnd:stateEnd3 changedTimestamp:changedTimestamp withReason:1];
    [(HMDUserActivityType6Detector *)selfCopy setPreviousStateEvent:v44];

    [(HMDUserActivityType6Detector *)selfCopy setQueryingInitialState:0];
  }

  if (v39)
  {
    previousStateEvent8 = [(HMDUserActivityType6Detector *)selfCopy previousStateEvent];
    -[HMDUserActivityType6Detector updateLatestReportWithReason:](selfCopy, "updateLatestReportWithReason:", [previousStateEvent8 reason]);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSuppressCurrentStateEvent:(id)event
{
  v55 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([eventCopy state] != 2)
  {
    goto LABEL_4;
  }

  dataSource2 = [(HMDUserActivityStateDetector *)self dataSource];
  currentDate = [dataSource2 currentDate];

  stateEnd = [eventCopy stateEnd];
  [stateEnd timeIntervalSinceDate:currentDate];
  v11 = v10;

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v13 = [mEMORY[0x277D0F8D0] preferenceForKey:@"detectorMaximumIntervalForStateEnd"];
  numberValue = [v13 numberValue];
  [numberValue doubleValue];
  v16 = v15;

  if (v11 <= v16)
  {

LABEL_4:
    dataSource3 = [(HMDUserActivityStateDetector *)self dataSource];
    backgroundTaskManager = [dataSource3 backgroundTaskManager];
    reportSuppressedTimerIdentifier = [(HMDUserActivityType6Detector *)self reportSuppressedTimerIdentifier];
    [backgroundTaskManager cancelTaskWithIdentifier:reportSuppressedTimerIdentifier onObserver:self];

    [(HMDUserActivityType6Detector *)self setReportSuppressionTimerPreviousStateEnd:0];
    v20 = 0;
    goto LABEL_17;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  reportSuppressionTimerPreviousStateEnd = [(HMDUserActivityType6Detector *)selfCopy reportSuppressionTimerPreviousStateEnd];
  if (!reportSuppressionTimerPreviousStateEnd)
  {
    goto LABEL_9;
  }

  v26 = reportSuppressionTimerPreviousStateEnd;
  reportSuppressionTimerPreviousStateEnd2 = [(HMDUserActivityType6Detector *)selfCopy reportSuppressionTimerPreviousStateEnd];
  stateEnd2 = [eventCopy stateEnd];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
LABEL_9:
    stateEnd3 = [eventCopy stateEnd];
    [(HMDUserActivityType6Detector *)selfCopy setReportSuppressionTimerPreviousStateEnd:stateEnd3];

    v31 = [currentDate dateByAddingTimeInterval:v11 - v16];
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      hmf_localTimeDescription = [v31 hmf_localTimeDescription];
      *buf = 138543618;
      v50 = v35;
      v51 = 2112;
      v52 = *&hmf_localTimeDescription;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Scheduling coming home report suppression timer firing at %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    dataSource4 = [(HMDUserActivityStateDetector *)v33 dataSource];
    backgroundTaskManager2 = [dataSource4 backgroundTaskManager];
    reportSuppressedTimerIdentifier2 = [(HMDUserActivityType6Detector *)v33 reportSuppressedTimerIdentifier];
    v48 = 0;
    v40 = [backgroundTaskManager2 scheduleTaskWithIdentifier:reportSuppressedTimerIdentifier2 fireDate:v31 onObserver:v33 selector:sel_handleBackgroundTaskTimerFired_ error:&v48];
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

- (void)updateLatestReportWithReason:(unint64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserActivityStateDetector *)self dataSource];
  home = [dataSource2 home];

  if (home)
  {
    previousStateEvent = [(HMDUserActivityType6Detector *)self previousStateEvent];
    if ([previousStateEvent state] == 2)
    {
      previousStateEvent2 = [(HMDUserActivityType6Detector *)self previousStateEvent];
      stateEnd = [previousStateEvent2 stateEnd];

      if (!stateEnd)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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

    previousStateEvent3 = [(HMDUserActivityType6Detector *)self previousStateEvent];
    v20 = [HMDUserActivityType6Report alloc];
    currentUser = [home currentUser];
    state = [previousStateEvent3 state];
    stateEnd2 = [previousStateEvent3 stateEnd];
    changedTimestamp = [previousStateEvent3 changedTimestamp];
    v25 = [(HMDUserActivityType6Report *)v20 initWithUser:currentUser state:state stateEnd:stateEnd2 withReason:reason changedTimestamp:changedTimestamp lastUpdateTimestamp:0];

    v26 = [[HMDUserActivityReportSetValue alloc] initWithReport:v25];
    [(HMDUserActivityStateDetector *)self setLatestReport:v26];

    [(HMDUserActivityStateDetector *)self notifyDetectorStateChangedWithReason:reason];
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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

- (void)configureWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring ComingHomeDetector", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDUserActivityType6Detector *)selfCopy setQueryingInitialState:1];
  tracker = [(HMDUserActivityType6Detector *)selfCopy tracker];
  [tracker configureWithDelegate:selfCopy];

  tracker2 = [(HMDUserActivityType6Detector *)selfCopy tracker];
  currentStateEvent = [tracker2 currentStateEvent];
  [(HMDUserActivityType6Detector *)selfCopy setPreviousStateEvent:currentStateEvent];

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = MEMORY[0x277CCABB0];
    previousStateEvent = [(HMDUserActivityType6Detector *)v15 previousStateEvent];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(previousStateEvent, "state")}];
    v24 = 138543618;
    v25 = v17;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Configured ComingHomeDetector with initial state %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v21 = _Block_copy(completionCopy);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDUserActivityType6Detector)initWithDataSource:(id)source locationManager:(id)manager
{
  v29 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = HMDUserActivityType6Detector;
  v8 = [(HMDUserActivityStateDetector *)&v26 initWithDataSource:sourceCopy];
  if (v8)
  {
    home = [sourceCopy home];
    featuresDataSource = [sourceCopy featuresDataSource];
    isUserActivityComingHomeArrivalPredictionEnabled = [featuresDataSource isUserActivityComingHomeArrivalPredictionEnabled];

    if (isUserActivityComingHomeArrivalPredictionEnabled)
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
      v16 = [[HMDUserComingHomeCoreRoutineTracker alloc] initWithDataSource:sourceCopy locationManager:managerCopy];
      tracker = v13->_tracker;
      v13->_tracker = v16;
    }

    v18 = MEMORY[0x277CCACA8];
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    v21 = [v18 stringWithFormat:@"HMDUserActivityType6Detector.ReportSuppressedTimer.%@", uUIDString];
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

- (HMDUserActivityType6Detector)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = +[HMDLocation sharedManager];
  v6 = [(HMDUserActivityType6Detector *)self initWithDataSource:sourceCopy locationManager:v5];

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

+ (BOOL)supportsDataSource:(id)source
{
  featuresDataSource = [source featuresDataSource];
  isUserActivityComingHomeArrivalPredictionEnabled = [featuresDataSource isUserActivityComingHomeArrivalPredictionEnabled];

  return isUserActivityComingHomeArrivalPredictionEnabled;
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F68 forPreferenceKey:@"detectorMaximumIntervalForStateEnd"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_283E75F78 forPreferenceKey:@"minimumDurationToStateEndWhenLeavingHome"];
}

@end