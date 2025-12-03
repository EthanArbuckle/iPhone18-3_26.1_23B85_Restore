@interface HMDLogEventElectionEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventElectionEventsAnalyzer)initWithDataSource:(id)source;
- (void)handlePrimaryResidentChangedNotification:(id)notification;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventElectionEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  counterGroup = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  counterGroup = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setCurrentDeviceStartedLegacyElectionCount:{objc_msgSend(counterGroup, "fetchEventCounterForEventName:forDate:", @"currentDeviceStartedElectionCount", dateCopy)}];

  counterGroup2 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionCoordinationMeshUpdateCount:{objc_msgSend(counterGroup2, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationMeshUpdateCount", dateCopy)}];

  counterGroup3 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionCoordinationMeshLeaderElectedCount:{objc_msgSend(counterGroup3, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationMeshLeaderElectedCount", dateCopy)}];

  counterGroup4 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionCoordinationMeshLeaderChangedCount:{objc_msgSend(counterGroup4, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationMeshLeaderChangedCount", dateCopy)}];

  counterGroup5 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionPrimaryResidentElectionRunCount:{objc_msgSend(counterGroup5, "fetchEventCounterForEventName:forDate:", @"v2ElectionPrimaryResidentElectionRunCount", dateCopy)}];

  counterGroup6 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionPrimaryResidentChangedCount:{objc_msgSend(counterGroup6, "fetchEventCounterForEventName:forDate:", @"v2ElectionPrimaryResidentChangedCount", dateCopy)}];

  counterGroup7 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setResidentSelectionPrimaryResidentChangedCount:{objc_msgSend(counterGroup7, "fetchEventCounterForEventName:forDate:", @"v3ResidentSelectionPrimaryResidentChangedCount", dateCopy)}];

  [eventCopy setV2ElectionCurrentDeviceInSecondaryCoordinationMesh:{-[HMDLogEventElectionEventsAnalyzer isCurrentDeviceInSecondaryResidentCoordinationMesh](self, "isCurrentDeviceInSecondaryResidentCoordinationMesh")}];
  counterGroup8 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionCoordinationCurrentDeviceFlapCount:{objc_msgSend(counterGroup8, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationCurrentDeviceFlapCount", dateCopy)}];

  counterGroup9 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup9 durationForCounter:@"PrimaryResidentDurationSeconds" forDate:dateCopy];
  v17 = v16;

  [eventCopy setPrimaryResidentDurationMinutes:((v17 + 59.0) / 60.0)];
  counterGroup10 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup10 durationForCounter:@"v2CurrentDeviceInPrimaryMeshDurationSeconds" forDate:dateCopy];
  v20 = v19;

  counterGroup11 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup11 durationForCounter:@"v2CurrentDeviceInSecondaryMeshDurationSeconds" forDate:dateCopy];
  v23 = v22;

  if (v20 + v23 <= 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = llround(v20 * 100.0 / (v20 + v23));
  }

  [eventCopy setV2ElectionPercentageDurationCurrentDeviceIsInPrimaryMesh:v24];
}

- (void)handlePrimaryResidentChangedNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    home = [v8 home];
    v10 = home;
    if (home && ([home isCurrentDeviceAvailableResident] & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification for home where we can't be a resident", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      isCurrentDevice = [v8 isCurrentDevice];
      counterGroup = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      v13 = counterGroup;
      if (isCurrentDevice)
      {
        [counterGroup resumeDurationCounter:@"PrimaryResidentDurationSeconds"];
      }

      else
      {
        [counterGroup pauseDurationCounter:@"PrimaryResidentDurationSeconds"];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update primary resident notification but the primary resident is nil", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v22 = *MEMORY[0x277D85DE8];
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
    counterGroup = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [counterGroup incrementEventCounterForEventName:@"currentDeviceStartedElectionCount"];
    goto LABEL_6;
  }

  v7 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  counterGroup = v8;

  if (!counterGroup)
  {
    v20 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      counterGroup2 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      [counterGroup2 incrementEventCounterForEventName:@"v2ElectionPrimaryResidentElectionRunCount"];

      if (![v22 didChangePrimary])
      {
LABEL_41:

        counterGroup = 0;
        goto LABEL_6;
      }

      counterGroup3 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      [counterGroup3 incrementEventCounterForEventName:@"v2ElectionPrimaryResidentChangedCount"];
    }

    else
    {
      v25 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      counterGroup3 = v26;

      if (counterGroup3 && [counterGroup3 triggerReason] == 3 && objc_msgSend(counterGroup3, "count"))
      {
        counterGroup4 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [counterGroup4 incrementEventCounterForEventName:@"v3ResidentSelectionPrimaryResidentChangedCount"];
      }
    }

    goto LABEL_41;
  }

  counterGroup5 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup5 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshUpdateCount"];

  if ([counterGroup didElectLeader])
  {
    counterGroup6 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [counterGroup6 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshLeaderElectedCount"];
  }

  if ([counterGroup didChangeLeader])
  {
    counterGroup7 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [counterGroup7 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshLeaderChangedCount"];
  }

  if ([counterGroup didCurrentDeviceLeavePrimaryMesh])
  {
    counterGroup8 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [counterGroup8 incrementEventCounterForEventName:@"v2ElectionCoordinationCurrentDeviceFlapCount"];
  }

  isCurrentDeviceInSecondaryResidentCoordinationMesh = [(HMDLogEventElectionEventsAnalyzer *)self isCurrentDeviceInSecondaryResidentCoordinationMesh];
  if (isCurrentDeviceInSecondaryResidentCoordinationMesh != [counterGroup isInSecondaryMesh])
  {
    isInSecondaryMesh = [counterGroup isInSecondaryMesh];
    counterGroup9 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    v16 = counterGroup9;
    if (isInSecondaryMesh)
    {
      v17 = @"v2CurrentDeviceInPrimaryMeshDurationSeconds";
    }

    else
    {
      v17 = @"v2CurrentDeviceInSecondaryMeshDurationSeconds";
    }

    if (isInSecondaryMesh)
    {
      v18 = @"v2CurrentDeviceInSecondaryMeshDurationSeconds";
    }

    else
    {
      v18 = @"v2CurrentDeviceInPrimaryMeshDurationSeconds";
    }

    [counterGroup9 pauseDurationCounter:v17];

    counterGroup10 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [counterGroup10 resumeDurationCounter:v18];

    -[HMDLogEventElectionEventsAnalyzer setIsCurrentDeviceInSecondaryResidentCoordinationMesh:](self, "setIsCurrentDeviceInSecondaryResidentCoordinationMesh:", [counterGroup isInSecondaryMesh]);
  }

LABEL_6:
}

- (HMDLogEventElectionEventsAnalyzer)initWithDataSource:(id)source
{
  v21[4] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = HMDLogEventElectionEventsAnalyzer;
  v5 = [(HMDLogEventElectionEventsAnalyzer *)&v20 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    v7 = [legacyCountersManager counterGroupForName:@"HMDLogEventElectionEventsAnalyzerRequestGroup"];
    counterGroup = v5->_counterGroup;
    v5->_counterGroup = v7;

    v5->_isCurrentDeviceInSecondaryResidentCoordinationMesh = 0;
    logEventDispatcher = [sourceCopy logEventDispatcher];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [logEventDispatcher addObserver:v5 forEventClasses:v10];

    notificationCenter = [sourceCopy notificationCenter];
    [notificationCenter addObserver:v5 selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    [sourceCopy addThresholdTrigger:@"legacyElectionStartCount" forEventName:@"currentDeviceStartedElectionCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"electionV2PrimaryElectionCount" forEventName:@"v2ElectionPrimaryResidentElectionRunCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"electionV2PrimaryChangedCount" forEventName:@"v2ElectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"electionREv3PrimaryChangedCount" forEventName:@"v3ResidentSelectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    radarInitiator = [sourceCopy radarInitiator];

    if (radarInitiator)
    {
      legacyCountersManager2 = [sourceCopy legacyCountersManager];
      v14 = [HMDCounterThresholdTTRTrigger alloc];
      radarInitiator2 = [sourceCopy radarInitiator];
      LOBYTE(v19) = 1;
      v16 = [(HMDCounterThresholdTTRTrigger *)v14 initWithThreshold:100 displayReason:@"primary resident changed excessively" radarTitle:@"HomeKit Issue Detected: Excessive primary resident changes" componentName:@"Resident" componentVersion:@"Resident" componentID:938669 radarInitiator:radarInitiator2 primaryOnly:v19 dataSource:sourceCopy];
      [legacyCountersManager2 addObserver:v16 forEventName:@"v3ResidentSelectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup"];
    }

    [(HMDEventCounterGroup *)v5->_counterGroup resumeDurationCounter:@"v2CurrentDeviceInPrimaryMeshDurationSeconds"];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)managedEventCounterRequestGroups
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDLogEventElectionEventsAnalyzerRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end