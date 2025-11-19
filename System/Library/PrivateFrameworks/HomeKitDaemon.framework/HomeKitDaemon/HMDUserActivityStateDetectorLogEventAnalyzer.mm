@interface HMDUserActivityStateDetectorLogEventAnalyzer
- (HMDUserActivityStateDetectorLogEventAnalyzer)initWithDataSource:(id)a3;
- (void)configure;
- (void)handleType6TransitionLogEvent:(id)a3;
- (void)observeEvent:(id)a3;
- (void)resetType6DetectorTransitionCounterGroup;
- (void)runDailyTask;
- (void)submitType6DetectorTransitionCounterGroups;
@end

@implementation HMDUserActivityStateDetectorLogEventAnalyzer

- (void)resetType6DetectorTransitionCounterGroup
{
  v3 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenInitialETAAndActualArrivalTime];
  [v3 removeAllObjects];

  v4 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndActualArrivalTime];
  [v4 removeAllObjects];

  v5 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndCancellingComingHome];
  [v5 removeAllObjects];

  v6 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenCancellingComingHomeAndEstimatedArrivalTime];
  [v6 removeAllObjects];

  v7 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndPausingComingHome];
  [v7 removeAllObjects];

  v8 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenPausingComingHomeAndEstimatedArrivalTime];
  [v8 removeAllObjects];

  v9 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self type6DetectorTransitionCounterGroup];
  [v9 resetEventCounters];
}

- (void)submitType6DetectorTransitionCounterGroups
{
  v53 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self type6DetectorTransitionCounterGroup];
  v3 = HMDUserActivityType6StateEventAsString(1, 1);
  v4 = [v53 fetchEventCounterForEventName:v3];
  v5 = HMDUserActivityType6StateEventAsString(2, 1);

  v6 = [v53 fetchEventCounterForEventName:v5];
  v7 = HMDUserActivityType6StateEventAsString(3, 1);

  v8 = [v53 fetchEventCounterForEventName:v7];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = HMDUserActivityType6StateEventAsString(2, 2);

  v11 = [v53 fetchEventCounterForEventName:v10];
  v12 = HMDUserActivityType6StateEventAsString(3, 2);

  v13 = [v53 fetchEventCounterForEventName:v12];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = HMDUserActivityType6StateEventAsString(2, 5);

  v48 = [v53 fetchEventCounterForEventName:v15];
  v16 = HMDUserActivityType6StateEventAsString(3, 5);

  v45 = [v53 fetchEventCounterForEventName:v16];
  v17 = HMDUserActivityType6StateEventAsString(2, 3);

  v18 = [v53 fetchEventCounterForEventName:v17];
  v19 = HMDUserActivityType6StateEventAsString(2, 4);

  v47 = [v53 fetchEventCounterForEventName:v19];
  v20 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenInitialETAAndActualArrivalTime];
  v21 = mediaForArray(v20);

  v22 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndActualArrivalTime];
  v52 = mediaForArray(v22);

  v23 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndCancellingComingHome];
  v51 = mediaForArray(v23);

  v24 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenCancellingComingHomeAndEstimatedArrivalTime];
  v50 = mediaForArray(v24);

  v25 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndPausingComingHome];
  v26 = mediaForArray(v25);

  v27 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenPausingComingHomeAndEstimatedArrivalTime];
  v28 = mediaForArray(v27);

  v29 = v4;
  if (v9 + v4 + v14 + v18)
  {
    v30 = v9;
    v31 = v14;
    v44 = v19;
    if (v45)
    {
      v32 = v45;
    }

    else
    {
      v32 = v48;
    }

    v46 = [HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent alloc];
    v33 = v26;
    v34 = v21;
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    v35 = v49 = v28;
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47];
    v41 = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)v46 initWithCountNotStartedAndEndedAtHome:v35 countStartedAndEndedAtHome:v36 durationBetweenInitialETAAndActualArrivalTime:v34 durationBetweenStartingComingHomeAndActualArrivalTime:v52 countStartedAndEndedNotAtHome:v37 durationBetweenStartingComingHomeAndCancellingComingHome:v51 durationBetweenCancellingComingHomeAndEstimatedArrivalTime:v50 countEndDateUpdated:v38 countPausedNotMakingProgress:v39 durationBetweenStartingComingHomeAndPausingComingHome:v33 durationBetweenPausingComingHomeAndEstimatedArrivalTime:v49 countResumedAfterPaused:v40];

    v21 = v34;
    v26 = v33;

    v28 = v49;
    v42 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
    v43 = [v42 logEventSubmitter];
    [v43 submitLogEvent:v41];

    v19 = v44;
  }
}

- (void)runDailyTask
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
  v4 = [v3 isThisDeviceDesignatedFMFDevice];

  if (v4)
  {
    [(HMDUserActivityStateDetectorLogEventAnalyzer *)self submitCounterGroups];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Not submitting daily task because this device is not FMF Device", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  [(HMDUserActivityStateDetectorLogEventAnalyzer *)self resetCounterGroups];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleType6TransitionLogEvent:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventString];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing daily total counters for %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 type6DetectorTransitionCounterGroup];
  [v10 incrementEventCounterForEventName:v5];

  if (([v4 trackerType] == 2 || objc_msgSend(v4, "trackerType") == 3) && objc_msgSend(v4, "reason") == 1)
  {
    v11 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 durationsBetweenStartingComingHomeAndActualArrivalTime];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "timeInEvent")}];
    [v11 addObject:v12];

    v13 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 durationsBetweenInitialETAAndActualArrivalTime];
LABEL_14:
    v18 = v13;
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "secondaryOffset")}];
    [v18 addObject:v19];

    goto LABEL_15;
  }

  if (([v4 trackerType] == 2 || objc_msgSend(v4, "trackerType") == 3) && objc_msgSend(v4, "reason") == 2)
  {
    v14 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 durationsBetweenStartingComingHomeAndCancellingComingHome];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "timeInEvent")}];
    [v14 addObject:v15];

    v13 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 durationsBetweenCancellingComingHomeAndEstimatedArrivalTime];
    goto LABEL_14;
  }

  if ([v4 trackerType] == 2 && objc_msgSend(v4, "reason") == 3)
  {
    v16 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 durationsBetweenStartingComingHomeAndPausingComingHome];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "timeInEvent")}];
    [v16 addObject:v17];

    v13 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 durationsBetweenPausingComingHomeAndEstimatedArrivalTime];
    goto LABEL_14;
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)observeEvent:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDUserActivityStateDetectorLogEventAnalyzer *)self handleType6TransitionLogEvent:v5];
  }
}

- (void)configure
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
  v4 = [v3 dailyScheduler];
  [v4 registerDailyTaskRunner:self];

  v5 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
  v6 = [v5 logEventDispatcher];
  v9[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v6 addObserver:self forEventClasses:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDUserActivityStateDetectorLogEventAnalyzer)initWithDataSource:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = HMDUserActivityStateDetectorLogEventAnalyzer;
  v6 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [v5 legacyCountersManager];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMDUserActivityStateType6Transitions"];
    v10 = [v8 counterGroupForName:v9];
    type6DetectorTransitionCounterGroup = v7->_type6DetectorTransitionCounterGroup;
    v7->_type6DetectorTransitionCounterGroup = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    durationsBetweenInitialETAAndActualArrivalTime = v7->_durationsBetweenInitialETAAndActualArrivalTime;
    v7->_durationsBetweenInitialETAAndActualArrivalTime = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    durationsBetweenStartingComingHomeAndActualArrivalTime = v7->_durationsBetweenStartingComingHomeAndActualArrivalTime;
    v7->_durationsBetweenStartingComingHomeAndActualArrivalTime = v14;

    v16 = [MEMORY[0x277CBEB18] array];
    durationsBetweenStartingComingHomeAndCancellingComingHome = v7->_durationsBetweenStartingComingHomeAndCancellingComingHome;
    v7->_durationsBetweenStartingComingHomeAndCancellingComingHome = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    durationsBetweenCancellingComingHomeAndEstimatedArrivalTime = v7->_durationsBetweenCancellingComingHomeAndEstimatedArrivalTime;
    v7->_durationsBetweenCancellingComingHomeAndEstimatedArrivalTime = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    durationsBetweenStartingComingHomeAndPausingComingHome = v7->_durationsBetweenStartingComingHomeAndPausingComingHome;
    v7->_durationsBetweenStartingComingHomeAndPausingComingHome = v20;

    v22 = [MEMORY[0x277CBEB18] array];
    durationsBetweenPausingComingHomeAndEstimatedArrivalTime = v7->_durationsBetweenPausingComingHomeAndEstimatedArrivalTime;
    v7->_durationsBetweenPausingComingHomeAndEstimatedArrivalTime = v22;
  }

  [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 configure];

  return v7;
}

@end