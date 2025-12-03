@interface HMDLogEventProcessLaunchAnalyzer
+ (id)logCategory;
+ (id)managedEventCounterRequestGroups;
- (BOOL)isIdleExitJetsamForExitContext:(id)context;
- (HMDHomeManager)homeManager;
- (HMDLogEventProcessLaunchAnalyzer)initWithProcessLaunchInfoTimer:(id)timer dataSource:(id)source preferencesDebugManager:(id)manager lastExitContextBlock:(id)block;
- (HMMLogEventSubmitting)logEventSubmitter;
- (void)handleAccountResolvedEvent:(id)event;
- (void)handleArchiveReplayLogEvent:(id)event;
- (void)handleDataSyncStateUpdateLogEvent:(id)event;
- (void)handleExitContextForHomed:(id)homed firstLaunchAfterBoot:(BOOL)boot;
- (void)handleProcessLaunchLogEvent:(id)event;
- (void)handleXPCMessageTransportStartedEvent:(id)event;
- (void)homeKitConfigurationChangedWithHomeManager:(id)manager;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
- (void)submitMigrationLogEvent;
- (void)submitProcessLaunchEventWithCurrentAnalysis;
- (void)submitProcessLaunchInfoEventPendingAllConditions;
- (void)timerDidFire:(id)fire;
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
  eventCountersManager = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  [eventCountersManager resetEventCountersForRequestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  eventCountersManager = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  v10 = [eventCountersManager counterGroupForName:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];

  [eventCopy setProcessLaunchCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerProcessLaunchEventCounter", dateCopy)}];
  [eventCopy setProcessAbnormalExitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"processExit", dateCopy)}];
  [eventCopy setProcessVoluntaryExitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"voluntaryExit", dateCopy)}];
  [eventCopy setProcessCrashCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerProcessCrashCountEventCounter", dateCopy)}];
  [eventCopy setProcessWatchdogCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"watchdog", dateCopy)}];
  [eventCopy setProcessJetsamCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerProcessJetsamCountEventCounter", dateCopy)}];
  [eventCopy setJetsamReasonHighwaterCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerJetsamReasonHighwaterEventCounter", dateCopy)}];
  [eventCopy setJetsamReasonProcessLimitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventProcessLaunchAnalyzerJetsamReasonProcessLimitCountEventCounter", dateCopy)}];
  [eventCopy setJetsamReasonIdleExitCount:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"idleExit", dateCopy)}];
  v9 = [v10 fetchEventCounterForEventName:@"HMDLogEventProcessLaunchAnalyzerJetsamReasonOtherEventCounter" forDate:dateCopy];

  [eventCopy setJetsamReasonOtherCount:v9];
}

- (void)timerDidFire:(id)fire
{
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  self->_launchInfoSubmissionState = 2;
  [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchEventWithCurrentAnalysis];
  self->_launchInfoSubmissionState = 3;
}

- (void)submitProcessLaunchEventWithCurrentAnalysis
{
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  submitProcessLaunchInfoTimer = [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoTimer];
  [submitProcessLaunchInfoTimer suspend];

  homeManager = [(HMDLogEventProcessLaunchAnalyzer *)self homeManager];
  v12 = homeManager;
  if (homeManager)
  {
    areThereAnyTTSUSessionsOngoing = [homeManager areThereAnyTTSUSessionsOngoing];
  }

  else
  {
    areThereAnyTTSUSessionsOngoing = 0;
  }

  v7 = [HMDProcessLaunchInfoLogEvent alloc];
  numUncommittedRecords = self->_numUncommittedRecords;
  BYTE1(v11) = areThereAnyTTSUSessionsOngoing;
  LOBYTE(v11) = self->_configurationLoaded;
  v9 = [(HMDProcessLaunchInfoLogEvent *)v7 initWithSubmissionState:self->_launchInfoSubmissionState dataSyncState:self->_dataSyncStateAsString timeIntervalSincePreviousProcessLaunch:self->_homeDataLoadedMilliseconds millisecondsToHomeDataLoad:self->_xpcMessageTransportReadyMilliseconds millisecondsToXPCMessageTransportReady:self->_millisecondsSinceLaunchToDataSyncStateGood millisecondsSinceLaunchToDataSyncStateGood:self->_accountResolvedMilliseconds millisecondsToAccountResolved:self->_timeIntervalSincePreviousProcessLaunch numUncommittedRecords:numUncommittedRecords numUncommittedAndPushedRecords:self->_numUncommittedAndPushedRecords processExitType:self->_processExitType processExitReason:self->_processExitReason isConfigurationLoaded:v11 isTTSUInProgress:?];
  logEventSubmitter = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v9];
}

- (BOOL)isIdleExitJetsamForExitContext:(id)context
{
  status = [context status];
  if ([status isJetsam])
  {
    v4 = [status code] == 9 || objc_msgSend(status, "code") == 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleExitContextForHomed:(id)homed firstLaunchAfterBoot:(BOOL)boot
{
  bootCopy = boot;
  v71 = *MEMORY[0x277D85DE8];
  homedCopy = homed;
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  status = [homedCopy status];
  v9 = status;
  if (bootCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  if ([status domain] == 20)
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
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    type = [homedCopy type];
    [homedCopy timestamp];
    v16 = v54 = homedCopy;
    v17 = &stru_286509E58;
    if (!v9)
    {
      v17 = @" exit status = nil,";
    }

    domain = [v9 domain];
    v19 = v14;
    code = [v9 code];
    [v9 error];
    v21 = v53 = v10;
    *buf = 138545154;
    v56 = v13;
    v57 = 2048;
    v58 = type;
    v59 = 2114;
    v60 = v16;
    v61 = 2114;
    v62 = v51;
    v63 = 1024;
    v64 = domain;
    v65 = 2048;
    v66 = code;
    v67 = 2114;
    v68 = v19;
    v69 = 2112;
    v70 = v21;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Last exit context: type = %ld, timestamp = %{public}@,%{public}@ domain = %d, code = %ld, flag = %{public}@, error = %@", buf, 0x4Eu);

    v10 = v53;
    homedCopy = v54;
LABEL_21:
  }

LABEL_22:

  objc_autoreleasePoolPop(v10);
  eventCountersManager = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  [eventCountersManager incrementEventCounterForEventName:@"HMDLogEventProcessLaunchAnalyzerProcessLaunchEventCounter" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];

  if (!bootCopy)
  {
    if ([homedCopy type] != 1 && !-[HMDLogEventProcessLaunchAnalyzer isIdleExitJetsamForExitContext:](self, "isIdleExitJetsamForExitContext:", homedCopy))
    {
      eventCountersManager2 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
      [eventCountersManager2 incrementEventCounterForEventName:@"processExit" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
    }

    logEventSubmitter = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
    if ([homedCopy type] == 1)
    {
      processExitType = self->_processExitType;
      self->_processExitType = @"Voluntary";

      eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
      v24 = eventCountersManager3;
      v28 = @"voluntaryExit";
    }

    else
    {
      if ([v9 domain] != 20)
      {
        if (![v9 isJetsam])
        {
          isCrash = [v9 isCrash];
          v24 = self->_processExitType;
          if (!isCrash)
          {
            self->_processExitType = @"Other";
            goto LABEL_32;
          }

          self->_processExitType = @"Crash";

          error = [v9 error];
          userInfo = [error userInfo];
          v48 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA470]];
          processExitReason = self->_processExitReason;
          self->_processExitReason = v48;

          v50 = [[HMDProcessExitInfoLogEvent alloc] initWithExitType:self->_processExitType reason:self->_processExitReason];
          [logEventSubmitter submitLogEvent:v50];

          eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
          v24 = eventCountersManager3;
          v28 = @"HMDLogEventProcessLaunchAnalyzerProcessCrashCountEventCounter";
          goto LABEL_31;
        }

        v37 = self->_processExitType;
        self->_processExitType = @"Jetsam";

        error2 = [v9 error];
        userInfo2 = [error2 userInfo];
        v40 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA470]];
        v41 = self->_processExitReason;
        self->_processExitReason = v40;

        v42 = [[HMDProcessExitInfoLogEvent alloc] initWithExitType:self->_processExitType reason:self->_processExitReason];
        [logEventSubmitter submitLogEvent:v42];

        eventCountersManager4 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
        [eventCountersManager4 incrementEventCounterForEventName:@"HMDLogEventProcessLaunchAnalyzerProcessJetsamCountEventCounter" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];

        code2 = [v9 code];
        if (code2 > 8)
        {
          if (code2 == 9 || code2 == 17)
          {
            eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
            v24 = eventCountersManager3;
            v28 = @"idleExit";
            goto LABEL_31;
          }
        }

        else
        {
          if (code2 == 2)
          {
            eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
            v24 = eventCountersManager3;
            v28 = @"HMDLogEventProcessLaunchAnalyzerJetsamReasonHighwaterEventCounter";
            goto LABEL_31;
          }

          if (code2 == 7)
          {
            eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
            v24 = eventCountersManager3;
            v28 = @"HMDLogEventProcessLaunchAnalyzerJetsamReasonProcessLimitCountEventCounter";
            goto LABEL_31;
          }
        }

        eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
        v24 = eventCountersManager3;
        v28 = @"HMDLogEventProcessLaunchAnalyzerJetsamReasonOtherEventCounter";
        goto LABEL_31;
      }

      v29 = self->_processExitType;
      self->_processExitType = @"Watchdog";

      error3 = [v9 error];
      userInfo3 = [error3 userInfo];
      v32 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA470]];
      v33 = self->_processExitReason;
      self->_processExitReason = v32;

      v34 = [[HMDProcessExitInfoLogEvent alloc] initWithExitType:self->_processExitType reason:self->_processExitReason];
      [logEventSubmitter submitLogEvent:v34];

      eventCountersManager3 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
      v24 = eventCountersManager3;
      v28 = @"watchdog";
    }

LABEL_31:
    [(NSString *)eventCountersManager3 incrementEventCounterForEventName:v28 requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
    goto LABEL_32;
  }

  logEventSubmitter = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
  v24 = self->_processExitType;
  self->_processExitType = @"Reboot";
LABEL_32:

  eventCountersManager5 = [(HMDLogEventProcessLaunchAnalyzer *)self eventCountersManager];
  [eventCountersManager5 forceSave];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateProcessLaunchInfoFromDisk
{
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  preferencesDebugManager = [(HMDLogEventProcessLaunchAnalyzer *)self preferencesDebugManager];
  [preferencesDebugManager submitPreferencesSizeLogEventsForApplicationID:@"com.apple.homed" submissionTrigger:1];

  userDefaults = [(HMDLogEventProcessLaunchAnalyzer *)self userDefaults];
  v15 = [userDefaults objectForKey:@"homedLaunchTime"];

  userDefaults2 = [(HMDLogEventProcessLaunchAnalyzer *)self userDefaults];
  [userDefaults2 setObject:self->_processLaunchTime forKey:@"homedLaunchTime"];

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
      logEventSubmitter = [(HMDLogEventProcessLaunchAnalyzer *)self logEventSubmitter];
      v12 = [HMDProcessRelaunchThresholdLogEvent alloc];
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeIntervalSincePreviousProcessLaunch];
      v14 = [(HMDProcessRelaunchThresholdLogEvent *)v12 initWithTimeSincePreviousLaunch:v13];
      [logEventSubmitter submitLogEvent:v14];

      v7 = v15;
    }
  }
}

- (void)submitProcessLaunchInfoEventPendingAllConditions
{
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  if (self->_millisecondsSinceLaunchToDataSyncStateGood && self->_accountResolvedMilliseconds && self->_configurationLoaded && !self->_processLaunchInfoEventSubmitted)
  {
    submitProcessLaunchInfoTimer = [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoTimer];
    isRunning = [submitProcessLaunchInfoTimer isRunning];

    if (isRunning)
    {
      self->_launchInfoSubmissionState = 1;
    }

    self->_processLaunchInfoEventSubmitted = 1;

    [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchEventWithCurrentAnalysis];
  }
}

- (void)handleArchiveReplayLogEvent:(id)event
{
  eventCopy = event;
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  self->_numUncommittedRecords = [eventCopy numUncommittedRecords];
  numUncommittedAndPushedRecords = [eventCopy numUncommittedAndPushedRecords];

  self->_numUncommittedAndPushedRecords = numUncommittedAndPushedRecords;
}

- (void)handleAccountResolvedEvent:(id)event
{
  eventCopy = event;
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  if (!self->_accountResolvedMilliseconds)
  {
    [eventCopy startTime];
    self->_accountResolvedMilliseconds = ((v5 - self->_launchTime) * 1000.0);
  }
}

- (void)handleXPCMessageTransportStartedEvent:(id)event
{
  eventCopy = event;
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  if (!self->_xpcMessageTransportReadyMilliseconds)
  {
    [eventCopy startTime];
    self->_xpcMessageTransportReadyMilliseconds = ((v5 - self->_launchTime) * 1000.0);
  }
}

- (void)handleDataSyncStateUpdateLogEvent:(id)event
{
  eventCopy = event;
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  dispatch_assert_queue_V2(logEventQueue);

  [eventCopy dataSyncState];
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
      [eventCopy startTime];
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

- (void)handleProcessLaunchLogEvent:(id)event
{
  eventCopy = event;
  startDate = [eventCopy startDate];
  processLaunchTime = self->_processLaunchTime;
  self->_processLaunchTime = startDate;

  [eventCopy startTime];
  self->_launchTime = v7;
  [(HMDLogEventProcessLaunchAnalyzer *)self updateProcessLaunchInfoFromDisk];
  [(HMDLogEventProcessLaunchAnalyzer *)self submitMigrationLogEvent];
  lastExitContextBlock = [(HMDLogEventProcessLaunchAnalyzer *)self lastExitContextBlock];
  v9 = lastExitContextBlock[2]();
  isFirstLaunchAfterBoot = [eventCopy isFirstLaunchAfterBoot];

  [(HMDLogEventProcessLaunchAnalyzer *)self handleExitContextForHomed:v9 firstLaunchAfterBoot:isFirstLaunchAfterBoot];
  submitProcessLaunchInfoTimer = [(HMDLogEventProcessLaunchAnalyzer *)self submitProcessLaunchInfoTimer];
  [submitProcessLaunchInfoTimer resume];
}

- (void)homeKitConfigurationChangedWithHomeManager:(id)manager
{
  managerCopy = manager;
  [MEMORY[0x277D17DC0] currentTime];
  v6 = v5;
  logEventQueue = [(HMDLogEventProcessLaunchAnalyzer *)self logEventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDLogEventProcessLaunchAnalyzer_homeKitConfigurationChangedWithHomeManager___block_invoke;
  block[3] = &unk_279732F10;
  block[4] = self;
  v10 = managerCopy;
  v11 = v6;
  v8 = managerCopy;
  dispatch_async(logEventQueue, block);
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

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
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

- (HMDLogEventProcessLaunchAnalyzer)initWithProcessLaunchInfoTimer:(id)timer dataSource:(id)source preferencesDebugManager:(id)manager lastExitContextBlock:(id)block
{
  v38[6] = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  sourceCopy = source;
  managerCopy = manager;
  blockCopy = block;
  v37.receiver = self;
  v37.super_class = HMDLogEventProcessLaunchAnalyzer;
  v15 = [(HMDLogEventProcessLaunchAnalyzer *)&v37 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_submitProcessLaunchInfoTimer, timer);
    legacyCountersManager = [sourceCopy legacyCountersManager];
    eventCountersManager = v16->_eventCountersManager;
    v16->_eventCountersManager = legacyCountersManager;

    logEventSubmitter = [sourceCopy logEventSubmitter];
    objc_storeWeak(&v16->_logEventSubmitter, logEventSubmitter);

    logEventDispatcher = [sourceCopy logEventDispatcher];
    clientQueue = [logEventDispatcher clientQueue];
    logEventQueue = v16->_logEventQueue;
    v16->_logEventQueue = clientQueue;

    userDefaults = [sourceCopy userDefaults];
    userDefaults = v16->_userDefaults;
    v16->_userDefaults = userDefaults;

    objc_storeStrong(&v16->_preferencesDebugManager, manager);
    v25 = _Block_copy(blockCopy);
    lastExitContextBlock = v16->_lastExitContextBlock;
    v16->_lastExitContextBlock = v25;

    v16->_processRelaunchEventTimeIntervalThreshold = 600.0;
    [(HMFTimer *)v16->_submitProcessLaunchInfoTimer setDelegateQueue:v16->_logEventQueue];
    [(HMFTimer *)v16->_submitProcessLaunchInfoTimer setDelegate:v16];
    logEventDispatcher2 = [sourceCopy logEventDispatcher];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v38[4] = objc_opt_class();
    v38[5] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
    [logEventDispatcher2 addObserver:v16 forEventClasses:v28];

    [sourceCopy addThresholdTrigger:@"homedExitCount" forEventName:@"processExit" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup" atThreshold:10];
    radarInitiator = [sourceCopy radarInitiator];

    if (radarInitiator)
    {
      legacyCountersManager2 = [sourceCopy legacyCountersManager];
      v31 = [HMDCounterThresholdTTRTrigger alloc];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Excessive homed abnormal exits (>=%d)", 10];
      radarInitiator2 = [sourceCopy radarInitiator];
      v34 = [(HMDCounterThresholdTTRTrigger *)v31 initWithThreshold:10 displayReason:@"homed exited abnormally" radarTitle:v32 componentName:@"HomeKit" componentVersion:@"New Bugs" componentID:590644 radarInitiator:radarInitiator2];
      [legacyCountersManager2 addObserver:v34 forEventName:@"processExit" requestGroup:@"HMDLogEventProcessLaunchAnalyzerRequestGroup"];
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