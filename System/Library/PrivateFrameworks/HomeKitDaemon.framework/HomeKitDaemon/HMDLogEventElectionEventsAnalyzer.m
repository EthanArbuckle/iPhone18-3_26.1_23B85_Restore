@interface HMDLogEventElectionEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventElectionEventsAnalyzer)initWithDataSource:(id)a3;
- (void)handlePrimaryResidentChangedNotification:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
@end

@implementation HMDLogEventElectionEventsAnalyzer

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v2 resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v25 = a3;
  v7 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setCurrentDeviceStartedLegacyElectionCount:{objc_msgSend(v7, "fetchEventCounterForEventName:forDate:", @"currentDeviceStartedElectionCount", v6)}];

  v8 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setV2ElectionCoordinationMeshUpdateCount:{objc_msgSend(v8, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationMeshUpdateCount", v6)}];

  v9 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setV2ElectionCoordinationMeshLeaderElectedCount:{objc_msgSend(v9, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationMeshLeaderElectedCount", v6)}];

  v10 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setV2ElectionCoordinationMeshLeaderChangedCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationMeshLeaderChangedCount", v6)}];

  v11 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setV2ElectionPrimaryResidentElectionRunCount:{objc_msgSend(v11, "fetchEventCounterForEventName:forDate:", @"v2ElectionPrimaryResidentElectionRunCount", v6)}];

  v12 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setV2ElectionPrimaryResidentChangedCount:{objc_msgSend(v12, "fetchEventCounterForEventName:forDate:", @"v2ElectionPrimaryResidentChangedCount", v6)}];

  v13 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setResidentSelectionPrimaryResidentChangedCount:{objc_msgSend(v13, "fetchEventCounterForEventName:forDate:", @"v3ResidentSelectionPrimaryResidentChangedCount", v6)}];

  [v25 setV2ElectionCurrentDeviceInSecondaryCoordinationMesh:{-[HMDLogEventElectionEventsAnalyzer isCurrentDeviceInSecondaryResidentCoordinationMesh](self, "isCurrentDeviceInSecondaryResidentCoordinationMesh")}];
  v14 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v25 setV2ElectionCoordinationCurrentDeviceFlapCount:{objc_msgSend(v14, "fetchEventCounterForEventName:forDate:", @"v2ElectionCoordinationCurrentDeviceFlapCount", v6)}];

  v15 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v15 durationForCounter:@"PrimaryResidentDurationSeconds" forDate:v6];
  v17 = v16;

  [v25 setPrimaryResidentDurationMinutes:((v17 + 59.0) / 60.0)];
  v18 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v18 durationForCounter:@"v2CurrentDeviceInPrimaryMeshDurationSeconds" forDate:v6];
  v20 = v19;

  v21 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v21 durationForCounter:@"v2CurrentDeviceInSecondaryMeshDurationSeconds" forDate:v6];
  v23 = v22;

  if (v20 + v23 <= 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = llround(v20 * 100.0 / (v20 + v23));
  }

  [v25 setV2ElectionPercentageDurationCurrentDeviceIsInPrimaryMesh:v24];
}

- (void)handlePrimaryResidentChangedNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
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
    v9 = [v8 home];
    v10 = v9;
    if (v9 && ([v9 isCurrentDeviceAvailableResident] & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
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
      v11 = [v8 isCurrentDevice];
      v12 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      v13 = v12;
      if (v11)
      {
        [v12 resumeDurationCounter:@"PrimaryResidentDurationSeconds"];
      }

      else
      {
        [v12 pauseDurationCounter:@"PrimaryResidentDurationSeconds"];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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

- (void)observeEvent:(id)a3
{
  v28 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v28;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [v6 incrementEventCounterForEventName:@"currentDeviceStartedElectionCount"];
    goto LABEL_6;
  }

  v7 = v28;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = v8;

  if (!v6)
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
      v23 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      [v23 incrementEventCounterForEventName:@"v2ElectionPrimaryResidentElectionRunCount"];

      if (![v22 didChangePrimary])
      {
LABEL_41:

        v6 = 0;
        goto LABEL_6;
      }

      v24 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
      [v24 incrementEventCounterForEventName:@"v2ElectionPrimaryResidentChangedCount"];
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

      v24 = v26;

      if (v24 && [v24 triggerReason] == 3 && objc_msgSend(v24, "count"))
      {
        v27 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
        [v27 incrementEventCounterForEventName:@"v3ResidentSelectionPrimaryResidentChangedCount"];
      }
    }

    goto LABEL_41;
  }

  v9 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
  [v9 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshUpdateCount"];

  if ([v6 didElectLeader])
  {
    v10 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [v10 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshLeaderElectedCount"];
  }

  if ([v6 didChangeLeader])
  {
    v11 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [v11 incrementEventCounterForEventName:@"v2ElectionCoordinationMeshLeaderChangedCount"];
  }

  if ([v6 didCurrentDeviceLeavePrimaryMesh])
  {
    v12 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [v12 incrementEventCounterForEventName:@"v2ElectionCoordinationCurrentDeviceFlapCount"];
  }

  v13 = [(HMDLogEventElectionEventsAnalyzer *)self isCurrentDeviceInSecondaryResidentCoordinationMesh];
  if (v13 != [v6 isInSecondaryMesh])
  {
    v14 = [v6 isInSecondaryMesh];
    v15 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    v16 = v15;
    if (v14)
    {
      v17 = @"v2CurrentDeviceInPrimaryMeshDurationSeconds";
    }

    else
    {
      v17 = @"v2CurrentDeviceInSecondaryMeshDurationSeconds";
    }

    if (v14)
    {
      v18 = @"v2CurrentDeviceInSecondaryMeshDurationSeconds";
    }

    else
    {
      v18 = @"v2CurrentDeviceInPrimaryMeshDurationSeconds";
    }

    [v15 pauseDurationCounter:v17];

    v19 = [(HMDLogEventElectionEventsAnalyzer *)self counterGroup];
    [v19 resumeDurationCounter:v18];

    -[HMDLogEventElectionEventsAnalyzer setIsCurrentDeviceInSecondaryResidentCoordinationMesh:](self, "setIsCurrentDeviceInSecondaryResidentCoordinationMesh:", [v6 isInSecondaryMesh]);
  }

LABEL_6:
}

- (HMDLogEventElectionEventsAnalyzer)initWithDataSource:(id)a3
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HMDLogEventElectionEventsAnalyzer;
  v5 = [(HMDLogEventElectionEventsAnalyzer *)&v20 init];
  if (v5)
  {
    v6 = [v4 legacyCountersManager];
    v7 = [v6 counterGroupForName:@"HMDLogEventElectionEventsAnalyzerRequestGroup"];
    counterGroup = v5->_counterGroup;
    v5->_counterGroup = v7;

    v5->_isCurrentDeviceInSecondaryResidentCoordinationMesh = 0;
    v9 = [v4 logEventDispatcher];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [v9 addObserver:v5 forEventClasses:v10];

    v11 = [v4 notificationCenter];
    [v11 addObserver:v5 selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    [v4 addThresholdTrigger:@"legacyElectionStartCount" forEventName:@"currentDeviceStartedElectionCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [v4 addThresholdTrigger:@"electionV2PrimaryElectionCount" forEventName:@"v2ElectionPrimaryResidentElectionRunCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [v4 addThresholdTrigger:@"electionV2PrimaryChangedCount" forEventName:@"v2ElectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    [v4 addThresholdTrigger:@"electionREv3PrimaryChangedCount" forEventName:@"v3ResidentSelectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup" atThreshold:10];
    v12 = [v4 radarInitiator];

    if (v12)
    {
      v13 = [v4 legacyCountersManager];
      v14 = [HMDCounterThresholdTTRTrigger alloc];
      v15 = [v4 radarInitiator];
      LOBYTE(v19) = 1;
      v16 = [(HMDCounterThresholdTTRTrigger *)v14 initWithThreshold:100 displayReason:@"primary resident changed excessively" radarTitle:@"HomeKit Issue Detected: Excessive primary resident changes" componentName:@"Resident" componentVersion:@"Resident" componentID:938669 radarInitiator:v15 primaryOnly:v19 dataSource:v4];
      [v13 addObserver:v16 forEventName:@"v3ResidentSelectionPrimaryResidentChangedCount" requestGroup:@"HMDLogEventElectionEventsAnalyzerRequestGroup"];
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