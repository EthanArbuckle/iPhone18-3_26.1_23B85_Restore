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

  [eventCopy setV2ElectionCurrentDeviceInSecondaryCoordinationMesh:{-[HMDLogEventElectionEventsAnalyzer isCurrentDeviceInSecondaryResidentCoordinationMesh](self, "isCurrentDeviceInSecondaryResidentCoordinationMesh")}];
  counterGroup7 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [eventCopy setV2ElectionCoordinationCurrentDeviceFlapCount:{objc_msgSend(counterGroup7, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationCurrentDeviceFlapCount", dateCopy)}];

  counterGroup8 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup8 durationForCounter:@"PrimaryResidentDurationSeconds" forDate:dateCopy];
  v16 = v15;

  [eventCopy setPrimaryResidentDurationMinutes:((v16 + 59.0) / 60.0)];
  counterGroup9 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup9 durationForCounter:@"v2CurrentDeviceInPrimaryMeshDurationSeconds" forDate:dateCopy];
  v19 = v18;

  counterGroup10 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [counterGroup10 durationForCounter:@"v2CurrentDeviceInSecondaryMeshDurationSeconds" forDate:dateCopy];
  v22 = v21;

  if (v19 + v22 <= 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = llround(v19 * 100.0 / (v19 + v22));
  }

  [eventCopy setV2ElectionPercentageDurationCurrentDeviceIsInPrimaryMesh:v23];
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
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification for home where we can't be a resident", &v23, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update primary resident notification but the primary resident is nil", &v23, 0xCu);
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
  }

  else
  {
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

    if (counterGroup)
    {
      counterGroup2 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      [counterGroup2 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshUpdateCount"];

      if ([counterGroup didElectLeader])
      {
        counterGroup3 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [counterGroup3 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshLeaderElectedCount"];
      }

      if ([counterGroup didChangeLeader])
      {
        counterGroup4 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [counterGroup4 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshLeaderChangedCount"];
      }

      if ([counterGroup didCurrentDeviceLeavePrimaryMesh])
      {
        counterGroup5 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [counterGroup5 incrementEventCounterForEventName:@"v2ElectionCoordinationCurrentDeviceFlapCount"];
      }

      isCurrentDeviceInSecondaryResidentCoordinationMesh = [(HMDLogEventElectionEventsAnalyzer *)self isCurrentDeviceInSecondaryResidentCoordinationMesh];
      if (isCurrentDeviceInSecondaryResidentCoordinationMesh != [counterGroup isInSecondaryMesh])
      {
        isInSecondaryMesh = [counterGroup isInSecondaryMesh];
        counterGroup6 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        v16 = counterGroup6;
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

        [counterGroup6 pauseDurationCounter:v17];

        counterGroup7 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [counterGroup7 resumeDurationCounter:v18];

        -[HMDLogEventElectionEventsAnalyzer setIsCurrentDeviceInSecondaryResidentCoordinationMesh:](self, "setIsCurrentDeviceInSecondaryResidentCoordinationMesh:", [counterGroup isInSecondaryMesh]);
      }
    }

    else
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
        counterGroup8 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [counterGroup8 incrementEventCounterForEventName:@"v2ElectionPrimaryResidentElectionRunCount"];

        if ([v22 didChangePrimary])
        {
          counterGroup9 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
          [counterGroup9 incrementEventCounterForEventName:@"v2ElectionPrimaryResidentChangedCount"];
        }
      }

      counterGroup = 0;
    }
  }
}

- (HMDLogEventElectionEventsAnalyzer)initWithDataSource:(id)source
{
  v15[3] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HMDLogEventElectionEventsAnalyzer;
  v5 = [(HMDLogEventElectionEventsAnalyzer *)&v14 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    v7 = [legacyCountersManager counterGroupForName:@"HMDLogEventElectionEventsAnalyzerRequestGroup"];
    counterGroup = v5->_counterGroup;
    v5->_counterGroup = v7;

    v5->_isCurrentDeviceInSecondaryResidentCoordinationMesh = 0;
    logEventDispatcher = [sourceCopy logEventDispatcher];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [logEventDispatcher addObserver:v5 forEventClasses:v10];

    notificationCenter = [sourceCopy notificationCenter];
    [notificationCenter addObserver:v5 selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    [sourceCopy addThresholdTrigger:@"legacyElectionStartCount" forEventName:@"currentDeviceStartedElectionCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"electionV2PrimaryElectionCount" forEventName:@"v2ElectionPrimaryResidentElectionRunCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"electionV2PrimaryChangedCount" forEventName:@"v2ElectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [(HMDEventCounterGroup *)v5->_counterGroup resumeDurationCounter:@"v2CurrentDeviceInPrimaryMeshDurationSeconds"];
  }

  v12 = *MEMORY[0x277D85DE8];
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