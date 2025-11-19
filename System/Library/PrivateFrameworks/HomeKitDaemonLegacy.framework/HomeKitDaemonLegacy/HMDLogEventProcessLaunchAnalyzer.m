@interface HMDLogEventProcessLaunchAnalyzer
+ (id)logCategory;
+ (id)managedEventCounterRequestGroups;
- (BOOL)isIdleExitJetsamForExitContext:(id)a3;
- (HMDHomeManager)homeManager;
- (HMDLogEventProcessLaunchAnalyzer)initWithProcessLaunchInfoTimer:(id)a3 dataSource:(id)a4 preferencesDebugManager:(id)a5 lastExitContextBlock:(id)a6;
- (HMMLogEventSubmitting)logEventSubmitter;
- (void)handleAccountResolvedEvent:(id)a3;
- (void)handleArchiveReplayLogEvent:(id)a3;
- (void)handleDataSyncStateUpdateLogEvent:(id)a3;
- (void)handleExitContextForHomed:(id)a3 firstLaunchAfterBoot:(BOOL)a4;
- (void)handleProcessLaunchLogEvent:(id)a3;
- (void)handleXPCMessageTransportStartedEvent:(id)a3;
- (void)homeKitConfigurationChangedWithHomeManager:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)resetAggregationAnalysisContext;
- (void)submitMigrationLogEvent;
- (void)submitProcessLaunchEventWithCurrentAnalysis;
- (void)submitProcessLaunchInfoEventPendingAllConditions;
- (void)timerDidFire:(id)a3;
- (void)updateProcessLaunchInfoFromDisk;
@end

@implementation HMDLogEventProcessLaunchAnalyzer

- (HMMLogEventSubmitting)logEventSubmitter
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  [v2 resetEventCountersForRequestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  v10 = [v8 counterGroupForName:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];

  [v7 setProcessLaunchCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerProcessLaunchEventCounter", v6)}];
  [v7 setProcessAbnormalExitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"processExit", v6)}];
  [v7 setProcessVoluntaryExitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"voluntaryExit", v6)}];
  [v7 setProcessCrashCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerProcessCrashCountEventCounter", v6)}];
  [v7 setProcessWatchdogCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"watchdog", v6)}];
  [v7 setProcessJetsamCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerProcessJetsamCountEventCounter", v6)}];
  [v7 setJetsamReasonHighwaterCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerJetsamReasonHighwaterEventCounter", v6)}];
  [v7 setJetsamReasonProcessLimitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerJetsamReasonProcessLimitCountEventCounter", v6)}];
  [v7 setJetsamReasonIdleExitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"idleExit", v6)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventProcessLaunchAnalyzerJetsamReasonOtherEventCounter" forDate:v6];

  [v7 setJetsamReasonOtherCount:v9];
}

- (void)timerDidFire:(id)a3
{
  v4 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v4);

  self->_launchInfoSubmissionState = 2;
  [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchEventWithCurrentAnalysis];
  self->_launchInfoSubmissionState = 3;
}

- (void)submitProcessLaunchEventWithCurrentAnalysis
{
  v3 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoTimer];
  [v4 suspend];

  v5 = [(HMDLogEventProcessLaunchAnalyzer *)self homeManager];
  v12 = v5;
  if (v5)
  {
    v6 = [v5 areThereAnyTTSUSessionsOngoing];
  }

  else
  {
    v6 = 0;
  }

  v7 = [HMDProcessLaunchInfoLogEvent alloc];
  numUncommittedRecords = self->_numUncommittedRecords;
  BYTE1(v11) = v6;
  LOBYTE(v11) = self->_configurationLoaded;
  v9 = [(HMDProcessLaunchInfoLogEvent *)v7 initWithSubmissionState:self->_launchInfoSubmissionState dataSyncState:self->_dataSyncStateAsString timeIntervalSincePreviousProcessLaunch:self->_homeDataLoadedMilliseconds millisecondsToHomeDataLoad:self->_xpcMessageTransportReadyMilliseconds millisecondsToXPCMessageTransportReady:self->_millisecondsSinceLaunchToDataSyncStateGood millisecondsSinceLaunchToDataSyncStateGood:self->_accountResolvedMilliseconds millisecondsToAccountResolved:self->_timeIntervalSincePreviousProcessLaunch numUncommittedRecords:numUncommittedRecords numUncommittedAndPushedRecords:self->_numUncommittedAndPushedRecords processExitType:self->_processExitType processExitReason:self->_processExitReason isConfigurationLoaded:v11 isTTSUInProgress:?];
  v10 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
  [v10 submitLogEvent:v9];
}

- (BOOL)isIdleExitJetsamForExitContext:(id)a3
{
  v3 = [a3 status];
  if ([v3 isJetsam])
  {
    v4 = [v3 code] == 9 || objc_msgSend(v3, "code") == 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleExitContextForHomed:(id)a3 firstLaunchAfterBoot:(BOOL)a4
{
  v4 = a4;
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 status];
  v9 = v8;
  if (v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Last exit context: first launch after reboot", buf, 0xCu);
    goto LABEL_21;
  }

  if ([v8 domain] == 20)
  {
    v14 = @"Watchdog";
  }

  else if ([v9 isJetsam])
  {
    v14 = @"Jetsam";
  }

  else if ([v9 isCrash])
  {
    v14 = @"Crash";
  }

  else if ([v9 isSignal])
  {
    v14 = @"Signal";
  }

  else if ([v9 isFairPlayFailure])
  {
    v14 = @"FairPlayFailure";
  }

  else if ([v9 isValid])
  {
    v14 = @"Other";
  }

  else
  {
    v14 = @"Invalid";
  }

  v10 = objc_autoreleasePoolPush();
  v15 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v52 = [v6 type];
    [v6 timestamp];
    v16 = v54 = v6;
    v17 = &stru_286509E58;
    if (!v9)
    {
      v17 = @" exit status = nil,";
    }

    v18 = [v9 domain];
    v19 = v14;
    v20 = [v9 code];
    [v9 error];
    v21 = v53 = v10;
    *buf = 138545154;
    v56 = v13;
    v57 = 2048;
    v58 = v52;
    v59 = 2114;
    v60 = v16;
    v61 = 2114;
    v62 = v51;
    v63 = 1024;
    v64 = v18;
    v65 = 2048;
    v66 = v20;
    v67 = 2114;
    v68 = v19;
    v69 = 2112;
    v70 = v21;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Last exit context: type = %ld, timestamp = %{public}@,%{public}@ domain = %d, code = %ld, flag = %{public}@, error = %@", buf, 0x4Eu);

    v10 = v53;
    v6 = v54;
LABEL_21:
  }

LABEL_22:

  objc_autoreleasePoolPop(v10);
  v22 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  [v22 incrementEventCounterForEventName:@"HMDLogEventProcessLaunchAnalyzerProcessLaunchEventCounter" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];

  if (!v4)
  {
    if ([v6 type] != 1 && !-[HMDLogEventProcessLaunchAnalyzer isIdleExitJetsamForExitContext:](self, "isIdleExitJetsamForExitContext:", v6))
    {
      v25 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
      [v25 incrementEventCounterForEventName:@"processExit" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
    }

    v23 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
    if ([v6 type] == 1)
    {
      processExitType = self->_processExitType;
      self->_processExitType = @"Voluntary";

      v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
      v24 = v27;
      v28 = @"voluntaryExit";
    }

    else
    {
      if ([v9 domain] != 20)
      {
        if (![v9 isJetsam])
        {
          v45 = [v9 isCrash];
          v24 = self->_processExitType;
          if (!v45)
          {
            self->_processExitType = @"Other";
            goto LABEL_32;
          }

          self->_processExitType = @"Crash";

          v46 = [v9 error];
          v47 = [v46 userInfo];
          v48 = [v47 objectForKeyedSubscript:*MEMORY[0x277CCA470]];
          processExitReason = self->_processExitReason;
          self->_processExitReason = v48;

          v50 = [[HMDProcessExitInfoLogEvent alloc] initWithExitType:self->_processExitType reason:self->_processExitReason];
          [v23 submitLogEvent:v50];

          v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
          v24 = v27;
          v28 = @"HMDLogEventProcessLaunchAnalyzerProcessCrashCountEventCounter";
          goto LABEL_31;
        }

        v37 = self->_processExitType;
        self->_processExitType = @"Jetsam";

        v38 = [v9 error];
        v39 = [v38 userInfo];
        v40 = [v39 objectForKeyedSubscript:*MEMORY[0x277CCA470]];
        v41 = self->_processExitReason;
        self->_processExitReason = v40;

        v42 = [[HMDProcessExitInfoLogEvent alloc] initWithExitType:self->_processExitType reason:self->_processExitReason];
        [v23 submitLogEvent:v42];

        v43 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
        [v43 incrementEventCounterForEventName:@"HMDLogEventProcessLaunchAnalyzerProcessJetsamCountEventCounter" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];

        v44 = [v9 code];
        if (v44 > 8)
        {
          if (v44 == 9 || v44 == 17)
          {
            v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
            v24 = v27;
            v28 = @"idleExit";
            goto LABEL_31;
          }
        }

        else
        {
          if (v44 == 2)
          {
            v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
            v24 = v27;
            v28 = @"HMDLogEventProcessLaunchAnalyzerJetsamReasonHighwaterEventCounter";
            goto LABEL_31;
          }

          if (v44 == 7)
          {
            v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
            v24 = v27;
            v28 = @"HMDLogEventProcessLaunchAnalyzerJetsamReasonProcessLimitCountEventCounter";
            goto LABEL_31;
          }
        }

        v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
        v24 = v27;
        v28 = @"HMDLogEventProcessLaunchAnalyzerJetsamReasonOtherEventCounter";
        goto LABEL_31;
      }

      v29 = self->_processExitType;
      self->_processExitType = @"Watchdog";

      v30 = [v9 error];
      v31 = [v30 userInfo];
      v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277CCA470]];
      v33 = self->_processExitReason;
      self->_processExitReason = v32;

      v34 = [[HMDProcessExitInfoLogEvent alloc] initWithExitType:self->_processExitType reason:self->_processExitReason];
      [v23 submitLogEvent:v34];

      v27 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
      v24 = v27;
      v28 = @"watchdog";
    }

LABEL_31:
    [(NSString *)v27 incrementEventCounterForEventName:v28 requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
    goto LABEL_32;
  }

  v23 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
  v24 = self->_processExitType;
  self->_processExitType = @"Reboot";
LABEL_32:

  v35 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  [v35 forceSave];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateProcessLaunchInfoFromDisk
{
  v3 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLogEventProcessLaunchAnalyzer *)self preferencesDebugManager];
  [v4 submitPreferencesSizeLogEventsForApplicationID:@"com.apple.homed" submissionTrigger:1];

  v5 = [(HMDLogEventProcessLaunchAnalyzer *)self userDefaults];
  v15 = [v5 objectForKey:@"homedLaunchTime"];

  v6 = [(HMDLogEventProcessLaunchAnalyzer *)self userDefaults];
  [v6 setObject:self->_processLaunchTime forKey:@"homedLaunchTime"];

  v7 = v15;
  if (v15)
  {
    [(NSDate *)self->_processLaunchTime timeIntervalSinceDate:v15];
    v9 = v8;
    self->_timeIntervalSincePreviousProcessLaunch = v8;
    [(HMDLogEventProcessLaunchAnalyzer *)self processRelaunchEventTimeIntervalThreshold];
    v7 = v15;
    if (v9 < v10)
    {
      v11 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
      v12 = [HMDProcessRelaunchThresholdLogEvent alloc];
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeIntervalSincePreviousProcessLaunch];
      v14 = [(HMDProcessRelaunchThresholdLogEvent *)v12 initWithTimeSincePreviousLaunch:v13];
      [v11 submitLogEvent:v14];

      v7 = v15;
    }
  }
}

- (void)submitProcessLaunchInfoEventPendingAllConditions
{
  v3 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_millisecondsSinceLaunchToDataSyncStateGood && self->_accountResolvedMilliseconds && self->_configurationLoaded && !self->_processLaunchInfoEventSubmitted)
  {
    v4 = [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoTimer];
    v5 = [v4 isRunning];

    if (v5)
    {
      self->_launchInfoSubmissionState = 1;
    }

    self->_processLaunchInfoEventSubmitted = 1;

    [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchEventWithCurrentAnalysis];
  }
}

- (void)handleArchiveReplayLogEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v5);

  self->_numUncommittedRecords = [v4 numUncommittedRecords];
  v6 = [v4 numUncommittedAndPushedRecords];

  self->_numUncommittedAndPushedRecords = v6;
}

- (void)handleAccountResolvedEvent:(id)a3
{
  v6 = a3;
  v4 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_accountResolvedMilliseconds)
  {
    [v6 startTime];
    self->_accountResolvedMilliseconds = ((v5 - self->_launchTime) * 1000.0);
  }
}

- (void)handleXPCMessageTransportStartedEvent:(id)a3
{
  v6 = a3;
  v4 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_xpcMessageTransportReadyMilliseconds)
  {
    [v6 startTime];
    self->_xpcMessageTransportReadyMilliseconds = ((v5 - self->_launchTime) * 1000.0);
  }
}

- (void)handleDataSyncStateUpdateLogEvent:(id)a3
{
  v10 = a3;
  v4 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(v4);

  [v10 dataSyncState];
  v5 = HMHomeManagerDataSyncStateToString();
  dataSyncStateAsString = self->_dataSyncStateAsString;
  self->_dataSyncStateAsString = v5;

  if (!self->_millisecondsSinceLaunchToDataSyncStateGood)
  {
    v7 = self->_dataSyncStateAsString;
    v8 = HMHomeManagerDataSyncStateToString();
    LODWORD(v7) = [(NSString *)v7 isEqualToString:v8];

    if (v7)
    {
      [v10 startTime];
      self->_millisecondsSinceLaunchToDataSyncStateGood = ((v9 - self->_launchTime) * 1000.0);
      [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoEventPendingAllConditions];
    }
  }
}

- (void)submitMigrationLogEvent
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(HMDHH2MigrationStateLogger);
  if ([(HMDHH2MigrationStateLogger *)v4 shouldSubmitLogEvent])
  {
    v5 = dispatch_time(0, 10000000000);
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__HMDLogEventProcessLaunchAnalyzer_submitMigrationLogEvent__block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = v4;
    dispatch_after(v5, v6, v7);
  }

  objc_autoreleasePoolPop(v3);
}

void __59__HMDLogEventProcessLaunchAnalyzer_submitMigrationLogEvent__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) logEventSubmitter];
  v2 = [*(a1 + 40) migrationEndLogEventFromDisk];
  [v4 submitLogEvent:v2];

  v3 = [*(a1 + 40) migrationDetailsLogEventFromDisk];
  [v4 submitLogEvent:v3];
}

- (void)handleProcessLaunchLogEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  processLaunchTime = self->_processLaunchTime;
  self->_processLaunchTime = v5;

  [v4 startTime];
  self->_launchTime = v7;
  [(HMDLogEventProcessLaunchAnalyzer *)self updateProcessLaunchInfoFromDisk];
  [(HMDLogEventProcessLaunchAnalyzer *)self submitMigrationLogEvent];
  v8 = [(HMDLogEventProcessLaunchAnalyzer *)self lastExitContextBlock];
  v9 = v8[2]();
  v10 = [v4 isFirstLaunchAfterBoot];

  [(HMDLogEventProcessLaunchAnalyzer *)self handleExitContextForHomed:v9 firstLaunchAfterBoot:v10];
  v11 = [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoTimer];
  [v11 resume];
}

- (void)homeKitConfigurationChangedWithHomeManager:(id)a3
{
  v4 = a3;
  [MEMORY[0x277D17DC0] currentTime];
  v6 = v5;
  v7 = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDLogEventProcessLaunchAnalyzer_homeKitConfigurationChangedWithHomeManager___block_invoke;
  block[3] = &unk_279732F10;
  block[4] = self;
  v10 = v4;
  v11 = v6;
  v8 = v4;
  dispatch_async(v7, block);
}

uint64_t __79__HMDLogEventProcessLaunchAnalyzer_homeKitConfigurationChangedWithHomeManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHomeManager:*(a1 + 40)];
  *(*(a1 + 32) + 112) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3 > 0.0 && !*(v2 + 88))
  {
    *(v2 + 88) = ((*(a1 + 48) - v3) * 1000.0);
    v2 = *(a1 + 32);
  }

  return [v2 submitProcessLaunchInfoEventPendingAllConditions];
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
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
  if (v6)
  {
    [(HMDLogEventProcessLaunchAnalyzer *)self handleDataSyncStateUpdateLogEvent:v6];
  }

  v7 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    [(HMDLogEventProcessLaunchAnalyzer *)self handleProcessLaunchLogEvent:v9];
  }

  v10 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    [(HMDLogEventProcessLaunchAnalyzer *)self handleXPCMessageTransportStartedEvent:v12];
  }

  v13 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    [(HMDLogEventProcessLaunchAnalyzer *)self handleAccountResolvedEvent:v15];
  }

  v18 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    [(HMDLogEventProcessLaunchAnalyzer *)self handleArchiveReplayLogEvent:v17];
  }
}

- (HMDLogEventProcessLaunchAnalyzer)initWithProcessLaunchInfoTimer:(id)a3 dataSource:(id)a4 preferencesDebugManager:(id)a5 lastExitContextBlock:(id)a6
{
  v38[6] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v37.receiver = self;
  v37.super_class = HMDLogEventProcessLaunchAnalyzer;
  v15 = [(HMDLogEventProcessLaunchAnalyzer *)&v37 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_submitProcessLaunchInfoTimer, a3);
    v17 = [v12 legacyCountersManager];
    eventCountersManager = v16->_eventCountersManager;
    v16->_eventCountersManager = v17;

    v19 = [v12 logEventSubmitter];
    objc_storeWeak(&v16->_logEventSubmitter, v19);

    v20 = [v12 logEventDispatcher];
    v21 = [v20 clientQueue];
    logEventQueue = v16->_logEventQueue;
    v16->_logEventQueue = v21;

    v23 = [v12 userDefaults];
    userDefaults = v16->_userDefaults;
    v16->_userDefaults = v23;

    objc_storeStrong(&v16->_preferencesDebugManager, a5);
    v25 = _Block_copy(v14);
    lastExitContextBlock = v16->_lastExitContextBlock;
    v16->_lastExitContextBlock = v25;

    v16->_processRelaunchEventTimeIntervalThreshold = 600.0;
    [(HMFTimer *)v16->_submitProcessLaunchInfoTimer setDelegateQueue:v16->_logEventQueue];
    [(HMFTimer *)v16->_submitProcessLaunchInfoTimer setDelegate:v16];
    v27 = [v12 logEventDispatcher];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v38[4] = objc_opt_class();
    v38[5] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
    [v27 addObserver:v16 forEventClasses:v28];

    [v12 addThresholdTrigger:@"homedExitCount" forEventName:@"processExit" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup" atThreshold:10];
    v29 = [v12 radarInitiator];

    if (v29)
    {
      v30 = [v12 legacyCountersManager];
      v31 = [HMDCounterThresholdTTRTrigger alloc];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Excessive homed abnormal exits (>=%d)", 10];
      v33 = [v12 radarInitiator];
      v34 = [(HMDCounterThresholdTTRTrigger *)v31 initWithThreshold:10 displayReason:@"homed exited abnormally" radarTitle:v32 componentName:@"HomeKit" componentVersion:@"New Bugs" componentID:590644 radarInitiator:v33];
      [v30 addObserver:v34 forEventName:@"processExit" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v16;
}

id __102__HMDLogEventProcessLaunchAnalyzer_initWithProcessLaunchInfoTimer_dataSource_preferencesDebugManager___block_invoke()
{
  v0 = [MEMORY[0x277D46F48] currentProcess];
  v1 = [v0 lastExitContext];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_131530 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_131530, &__block_literal_global_97_131531);
  }

  v3 = logCategory__hmf_once_v8_131532;

  return v3;
}

uint64_t __47__HMDLogEventProcessLaunchAnalyzer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_131532;
  logCategory__hmf_once_v8_131532 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)managedEventCounterRequestGroups
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDLogEventProcessLaunchAnalyzerRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end