@interface HMDUserActivityStateDetectorLogEventAnalyzer
- (HMDUserActivityStateDetectorLogEventAnalyzer)initWithDataSource:(id)source;
- (void)configure;
- (void)handleType6TransitionLogEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)resetType6DetectorTransitionCounterGroup;
- (void)runDailyTask;
- (void)submitType6DetectorTransitionCounterGroups;
@end

@implementation HMDUserActivityStateDetectorLogEventAnalyzer

- (void)resetType6DetectorTransitionCounterGroup
{
  durationsBetweenInitialETAAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenInitialETAAndActualArrivalTime];
  [durationsBetweenInitialETAAndActualArrivalTime removeAllObjects];

  durationsBetweenStartingComingHomeAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndActualArrivalTime];
  [durationsBetweenStartingComingHomeAndActualArrivalTime removeAllObjects];

  durationsBetweenStartingComingHomeAndCancellingComingHome = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndCancellingComingHome];
  [durationsBetweenStartingComingHomeAndCancellingComingHome removeAllObjects];

  durationsBetweenCancellingComingHomeAndEstimatedArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenCancellingComingHomeAndEstimatedArrivalTime];
  [durationsBetweenCancellingComingHomeAndEstimatedArrivalTime removeAllObjects];

  durationsBetweenStartingComingHomeAndPausingComingHome = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndPausingComingHome];
  [durationsBetweenStartingComingHomeAndPausingComingHome removeAllObjects];

  durationsBetweenPausingComingHomeAndEstimatedArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenPausingComingHomeAndEstimatedArrivalTime];
  [durationsBetweenPausingComingHomeAndEstimatedArrivalTime removeAllObjects];

  type6DetectorTransitionCounterGroup = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self type6DetectorTransitionCounterGroup];
  [type6DetectorTransitionCounterGroup resetEventCounters];
}

- (void)submitType6DetectorTransitionCounterGroups
{
  type6DetectorTransitionCounterGroup = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self type6DetectorTransitionCounterGroup];
  v3 = HMDUserActivityType6StateEventAsString(1, 1);
  v4 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v3];
  v5 = HMDUserActivityType6StateEventAsString(2, 1);

  v6 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v5];
  v7 = HMDUserActivityType6StateEventAsString(3, 1);

  v8 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v7];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = HMDUserActivityType6StateEventAsString(2, 2);

  v11 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v10];
  v12 = HMDUserActivityType6StateEventAsString(3, 2);

  v13 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v12];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = HMDUserActivityType6StateEventAsString(2, 5);

  v48 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v15];
  v16 = HMDUserActivityType6StateEventAsString(3, 5);

  v45 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v16];
  v17 = HMDUserActivityType6StateEventAsString(2, 3);

  v18 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v17];
  v19 = HMDUserActivityType6StateEventAsString(2, 4);

  v47 = [type6DetectorTransitionCounterGroup fetchEventCounterForEventName:v19];
  durationsBetweenInitialETAAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenInitialETAAndActualArrivalTime];
  v21 = mediaForArray(durationsBetweenInitialETAAndActualArrivalTime);

  durationsBetweenStartingComingHomeAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndActualArrivalTime];
  v52 = mediaForArray(durationsBetweenStartingComingHomeAndActualArrivalTime);

  durationsBetweenStartingComingHomeAndCancellingComingHome = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndCancellingComingHome];
  v51 = mediaForArray(durationsBetweenStartingComingHomeAndCancellingComingHome);

  durationsBetweenCancellingComingHomeAndEstimatedArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenCancellingComingHomeAndEstimatedArrivalTime];
  v50 = mediaForArray(durationsBetweenCancellingComingHomeAndEstimatedArrivalTime);

  durationsBetweenStartingComingHomeAndPausingComingHome = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenStartingComingHomeAndPausingComingHome];
  v26 = mediaForArray(durationsBetweenStartingComingHomeAndPausingComingHome);

  durationsBetweenPausingComingHomeAndEstimatedArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self durationsBetweenPausingComingHomeAndEstimatedArrivalTime];
  v28 = mediaForArray(durationsBetweenPausingComingHomeAndEstimatedArrivalTime);

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
    dataSource = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
    logEventSubmitter = [dataSource logEventSubmitter];
    [logEventSubmitter submitLogEvent:v41];

    v19 = v44;
  }
}

- (void)runDailyTask
{
  v12 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
  isThisDeviceDesignatedFMFDevice = [dataSource isThisDeviceDesignatedFMFDevice];

  if (isThisDeviceDesignatedFMFDevice)
  {
    [(HMDUserActivityStateDetectorLogEventAnalyzer *)self submitCounterGroups];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)handleType6TransitionLogEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  eventString = [eventCopy eventString];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = eventString;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing daily total counters for %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  type6DetectorTransitionCounterGroup = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy type6DetectorTransitionCounterGroup];
  [type6DetectorTransitionCounterGroup incrementEventCounterForEventName:eventString];

  if (([eventCopy trackerType] == 2 || objc_msgSend(eventCopy, "trackerType") == 3) && objc_msgSend(eventCopy, "reason") == 1)
  {
    durationsBetweenStartingComingHomeAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy durationsBetweenStartingComingHomeAndActualArrivalTime];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "timeInEvent")}];
    [durationsBetweenStartingComingHomeAndActualArrivalTime addObject:v12];

    durationsBetweenInitialETAAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy durationsBetweenInitialETAAndActualArrivalTime];
LABEL_14:
    v18 = durationsBetweenInitialETAAndActualArrivalTime;
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "secondaryOffset")}];
    [v18 addObject:v19];

    goto LABEL_15;
  }

  if (([eventCopy trackerType] == 2 || objc_msgSend(eventCopy, "trackerType") == 3) && objc_msgSend(eventCopy, "reason") == 2)
  {
    durationsBetweenStartingComingHomeAndCancellingComingHome = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy durationsBetweenStartingComingHomeAndCancellingComingHome];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "timeInEvent")}];
    [durationsBetweenStartingComingHomeAndCancellingComingHome addObject:v15];

    durationsBetweenInitialETAAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy durationsBetweenCancellingComingHomeAndEstimatedArrivalTime];
    goto LABEL_14;
  }

  if ([eventCopy trackerType] == 2 && objc_msgSend(eventCopy, "reason") == 3)
  {
    durationsBetweenStartingComingHomeAndPausingComingHome = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy durationsBetweenStartingComingHomeAndPausingComingHome];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "timeInEvent")}];
    [durationsBetweenStartingComingHomeAndPausingComingHome addObject:v17];

    durationsBetweenInitialETAAndActualArrivalTime = [(HMDUserActivityStateDetectorLogEventAnalyzer *)selfCopy durationsBetweenPausingComingHomeAndEstimatedArrivalTime];
    goto LABEL_14;
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
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
  dataSource = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
  dailyScheduler = [dataSource dailyScheduler];
  [dailyScheduler registerDailyTaskRunner:self];

  dataSource2 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)self dataSource];
  logEventDispatcher = [dataSource2 logEventDispatcher];
  v9[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [logEventDispatcher addObserver:self forEventClasses:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDUserActivityStateDetectorLogEventAnalyzer)initWithDataSource:(id)source
{
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = HMDUserActivityStateDetectorLogEventAnalyzer;
  v6 = [(HMDUserActivityStateDetectorLogEventAnalyzer *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    legacyCountersManager = [sourceCopy legacyCountersManager];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMDUserActivityStateType6Transitions"];
    v10 = [legacyCountersManager counterGroupForName:v9];
    type6DetectorTransitionCounterGroup = v7->_type6DetectorTransitionCounterGroup;
    v7->_type6DetectorTransitionCounterGroup = v10;

    array = [MEMORY[0x277CBEB18] array];
    durationsBetweenInitialETAAndActualArrivalTime = v7->_durationsBetweenInitialETAAndActualArrivalTime;
    v7->_durationsBetweenInitialETAAndActualArrivalTime = array;

    array2 = [MEMORY[0x277CBEB18] array];
    durationsBetweenStartingComingHomeAndActualArrivalTime = v7->_durationsBetweenStartingComingHomeAndActualArrivalTime;
    v7->_durationsBetweenStartingComingHomeAndActualArrivalTime = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    durationsBetweenStartingComingHomeAndCancellingComingHome = v7->_durationsBetweenStartingComingHomeAndCancellingComingHome;
    v7->_durationsBetweenStartingComingHomeAndCancellingComingHome = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    durationsBetweenCancellingComingHomeAndEstimatedArrivalTime = v7->_durationsBetweenCancellingComingHomeAndEstimatedArrivalTime;
    v7->_durationsBetweenCancellingComingHomeAndEstimatedArrivalTime = array4;

    array5 = [MEMORY[0x277CBEB18] array];
    durationsBetweenStartingComingHomeAndPausingComingHome = v7->_durationsBetweenStartingComingHomeAndPausingComingHome;
    v7->_durationsBetweenStartingComingHomeAndPausingComingHome = array5;

    array6 = [MEMORY[0x277CBEB18] array];
    durationsBetweenPausingComingHomeAndEstimatedArrivalTime = v7->_durationsBetweenPausingComingHomeAndEstimatedArrivalTime;
    v7->_durationsBetweenPausingComingHomeAndEstimatedArrivalTime = array6;
  }

  [(HMDUserActivityStateDetectorLogEventAnalyzer *)v7 configure];

  return v7;
}

@end