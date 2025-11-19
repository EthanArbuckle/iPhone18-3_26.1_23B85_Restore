@interface CSMitigationManager
+ (CSMitigationManager)sharedInstance;
- (BOOL)checkKnownViolationByProcess:(id)a3 withStartTime:(double)a4 withEndTime:(double)a5;
- (BOOL)policyMitigationsEnabled;
- (id)_init;
- (id)getProcessPathForPID:(int)a3;
- (int)putIntoPenaltyBoxForCSProcess:(id)a3 coalitionID:(unint64_t)a4 withMitigationDecisionType:(unsigned __int8 *)a5 withMitigationDecisionReason:(unsigned __int8 *)a6 withError:(id *)a7;
- (int)removeProcessFromPenaltyBox:(id)a3 forReason:(unsigned __int8)a4;
- (int64_t)penaltyBoxDurationMinsForProcess:(id)a3;
- (unsigned)decideMitigation:(id)a3 withCoalitionName:(id)a4 withReason:(unsigned __int8 *)a5;
- (void)_init;
- (void)checkForTrials;
- (void)checkOverridesForProcess:(id)a3 penaltyBoxDuration:(int64_t *)a4 cpuThreshold:(int64_t *)a5 timeWindow:(int64_t *)a6;
- (void)checkPenaltyBoxProcessesExpiration;
- (void)clearTargetProcessState;
- (void)dayChangedNotificationReceived:(id)a3;
- (void)forceCPUViolationForProcess:(id)a3 withHandler:(id)a4;
- (void)forceMitigation:(id)a3 forProcess:(id)a4 withPercentage:(id)a5 withSeconds:(id)a6 withPenaltyBoxDuration:(id)a7 withHandler:(id)a8;
- (void)generateIPSFileForProcess:(id)a3;
- (void)getMitigationTypeString:(char *)a3 withStringSize:(unint64_t)a4 withMitigationType:(int64_t)a5 withPenaltyBoxEndTime:(unint64_t)a6;
- (void)handleCPUDetectionViolation:(id)a3 coalitionID:(unint64_t)a4 pid:(unint64_t)a5 endTime:(mach_timespec)a6 observedValue:(int64_t)a7 observationWindow:(int64_t)a8 limitValue:(int64_t)a9 limitWindow:(int64_t)a10 fatal:(BOOL)a11;
- (void)handleDetectorViolation:(id)a3;
- (void)logCPUViolationToPowerLog:(id)a3 pid:(unint64_t)a4 coalitionName:(id)a5 endTime:(mach_timespec)a6 observedValue:(int64_t)a7 observationWindow:(int64_t)a8 limitValue:(int64_t)a9 limitWindow:(int64_t)a10 fatal:(BOOL)a11 mitigationType:(int64_t)a12 mitigationReason:(int64_t)a13 withError:(id)a14;
- (void)logCPUViolationToPowerLogWithPayload:(id)a3;
- (void)logMitigationAsSignpost:(id)a3 withPid:(unint64_t)a4 withIssueType:(unsigned __int8)a5 withMitigationType:(unsigned __int8)a6 withReason:(unsigned __int8)a7 withPenaltyBoxEndTime:(unint64_t)a8;
- (void)logPenaltyBoxListAsSignposts;
- (void)midnightRoutine;
- (void)policyMitigationsEnabled;
- (void)registerForDayChangedNotification;
- (void)removeAllProcessesFromPenaltyBox;
@end

@implementation CSMitigationManager

+ (CSMitigationManager)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CSMitigationManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_1;

  return v3;
}

- (void)logPenaltyBoxListAsSignposts
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __37__CSMitigationManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_1 = [[CSMitigationManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (void)checkForTrials
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = CSMitigationManager;
  v2 = [(CSMitigationManager *)&v29 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSMitigationManager"];
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.computesafeguards.mitigationmanager", v5);
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = [CSProcessManager sharedInstanceWithEnrolledProcesses:0 andProcessPolicies:0 andBand95:0 andBand80:0];
    v9 = *(v2 + 6);
    *(v2 + 6) = v8;

    if (!*(v2 + 6) && os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_FAULT))
    {
      [CSMitigationManager _init];
    }

    *(v2 + 4) = -1;
    [v2 checkForTrials];
    if (_os_feature_enabled_impl())
    {
      v10 = *(v2 + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v10, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: mitigations enabled by feature flag", buf, 2u);
      }

      gEnableMitigations = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v11 = *(v2 + 5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v11, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: penaltyBox enabled by feature flag", buf, 2u);
      }

      gEnablePenaltyBox = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v12 = *(v2 + 5);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v12, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: mitigations while plugged-in enabled by feature flag", buf, 2u);
      }

      gMitigationsWhilePluggedIn = 1;
    }

    if (_os_feature_enabled_impl())
    {
      v13 = *(v2 + 5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_243DC3000, v13, OS_LOG_TYPE_DEFAULT, "_initWithDataProvider: XPC Services mitigations disabled by feature flag", buf, 2u);
      }

      gMitigateXPCServices = 0;
    }

    *(v2 + 3) = 1;
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = *(v2 + 3);
    *(v2 + 3) = v14;

    v16 = *(v2 + 8);
    *(v2 + 8) = 0;

    *(v2 + 9) = 0;
    v17 = getMainQueue();
    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v17);
    v19 = *(v2 + 8);
    *(v2 + 8) = v18;

    v20 = *(v2 + 3);
    if (v20 == 2)
    {
      v21 = *(v2 + 8);
      v22 = dispatch_walltime(0, 60000000000);
      dispatch_source_set_timer(v21, v22, 0xDF8475800uLL, 0x6FC23AC00uLL);
    }

    else if (v20 == 1)
    {
      [v2 registerForDayChangedNotification];
    }

    else if (os_log_type_enabled(*(v2 + 5), OS_LOG_TYPE_ERROR))
    {
      [(CSMitigationManager *)v2 + 3 _init];
    }

    objc_initWeak(buf, v2);
    v23 = *(v2 + 8);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__CSMitigationManager__init__block_invoke;
    handler[3] = &unk_278DF5180;
    objc_copyWeak(&v27, buf);
    dispatch_source_set_event_handler(v23, handler);
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
    v24 = v2;
  }

  return v2;
}

void __28__CSMitigationManager__init__block_invoke(uint64_t a1)
{
  v2 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__CSMitigationManager__init__block_invoke_2;
  block[3] = &unk_278DF5180;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __28__CSMitigationManager__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained penaltyBoxPolicy];

  if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 checkPenaltyBoxProcessesExpiration];
  }
}

- (void)handleCPUDetectionViolation:(id)a3 coalitionID:(unint64_t)a4 pid:(unint64_t)a5 endTime:(mach_timespec)a6 observedValue:(int64_t)a7 observationWindow:(int64_t)a8 limitValue:(int64_t)a9 limitWindow:(int64_t)a10 fatal:(BOOL)a11
{
  v17 = a3;
  v18 = v17;
  if (v17)
  {
    v19 = [v17 trackedPIDs];
    v20 = [v19 count];

    if (!v20)
    {
      [(CSProcessManager *)self->_processManager pollPIDs];
    }

    v26 = -1;
    v25 = -1;
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:];
    }

    v24 = 0;
    [(CSMitigationManager *)self handleDetectionViolation:0 forCSProcess:v18 coalitionID:a4 coalitionName:0 pid:a5 startTime:255 endTime:a6.tv_sec + a6.tv_nsec * 0.000000001 - (a8 / 0x3B9ACA00uLL) forcedMitigation:a6.tv_sec + a6.tv_nsec * 0.000000001 withMitigationDecisionType:&v26 withMitigationDecisionReason:&v25 withError:&v24];
    v21 = v24;
    LOBYTE(v23) = a11;
    [(CSMitigationManager *)self logCPUViolationToPowerLog:v18 pid:a5 coalitionName:0 endTime:a6 observedValue:a7 observationWindow:a8 limitValue:a9 limitWindow:a10 fatal:v23 mitigationType:v26 mitigationReason:v25 withError:v21];
    if (a7 == 3000000000 && a8 == 4000000000 && a9 == 3000000000 && a10 == 4000000000)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:];
      }
    }

    else
    {
      [v18 setResetNonFatalCPUMonitor:1];
      v22 = [(CSMitigationManager *)self processManager];
      [v22 modifyPollingInterval:0];
    }
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:];
  }
}

- (id)getProcessPathForPID:(int)a3
{
  v12 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  *__error() = 0;
  v5 = proc_pidpath(a3, buffer, 0x1000u);
  if (v5 < 1)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager getProcessPathForPID:?];
    }

    v7 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v5 encoding:4];
    v7 = [v6 stringByStandardizingPath];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleDetectorViolation:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v90 = -1;
  v89 = -1;
  v5 = getMainQueue();
  dispatch_assert_queue_V2(v5);

  v6 = [v4 lastPUUID];
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6;
  v8 = [v4 lastPUUID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_29;
  }

  v9 = [v4 lastPUUID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_29:
    goto LABEL_30;
  }

  v10 = [v4 lastPUUID];
  v11 = [v10 length];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCAD78]);
    v13 = [v4 lastPUUID];
    v14 = [v12 initWithUUIDString:v13];

    v15 = [(CSProcessManager *)self->_processManager getProcessForUUID:v14];
    v16 = v15 == 0;
    v17 = v15;
    if (v15 || ([(CSProcessManager *)self->_processManager pollPIDs], [(CSProcessManager *)self->_processManager getProcessForUUID:v14], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = [v17 getPidsForCoalitionID:{objc_msgSend(v4, "coalitionID")}];
      v19 = v18;
      if (v15 && !v18)
      {
        [(CSProcessManager *)self->_processManager pollPIDs];
        v16 = 1;
      }

      v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "lastPID")}];
      v21 = [v17 trackedPIDs];
      v22 = [v21 objectForKey:v20];

      if (!v16 && !v22)
      {
        [(CSProcessManager *)self->_processManager pollPIDs];
        v16 = 1;
      }

      v23 = [v17 trackedPIDs];
      v24 = [v23 objectForKey:v20];

      if (!v24)
      {
        v25 = [v17 lastPid];
        v26 = -[CSMitigationManager getProcessPathForPID:](self, "getProcessPathForPID:", [v17 lastPid]);
        if (v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = v16;
        }

        if ((v27 & 1) == 0)
        {
          [(CSProcessManager *)self->_processManager pollPIDs];
          v25 = [v17 lastPid];
        }

        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          loga = logger;
          v29 = v19;
          v30 = [v4 lastPID];
          [v4 processName];
          v31 = v83 = v20;
          *buf = 67109634;
          *v92 = v30;
          v19 = v29;
          *&v92[4] = 1024;
          *&v92[6] = v25;
          *v93 = 2112;
          *&v93[2] = v31;
          _os_log_impl(&dword_243DC3000, loga, OS_LOG_TYPE_DEFAULT, "handleDetectorViolation: Updating issue.lastPID from %d to %d for process:%@", buf, 0x18u);

          v20 = v83;
        }

        [v4 setLastPID:v25];
      }

      v32 = [v17 trackedPIDs];
      v33 = [v32 count];

      if (v33)
      {
        v33 = -[CSMitigationManager getProcessPathForPID:](self, "getProcessPathForPID:", [v4 lastPID]);
      }

      v34 = [v4 endTime];
      [v34 timeIntervalSince1970];
      v36 = v35;

      v37 = [v4 startTime];
      [v37 timeIntervalSince1970];
      v39 = v38;

      if (v36 >= v39)
      {
        log = v33;
        v84 = v20;
        v46 = (v36 - v39);
        v47 = [v4 value];
        [v47 doubleValue];
        v49 = v48 * v46;

        v50 = [v4 rule];
        if (v50)
        {
          v51 = [v4 rule];
          [v51 mainThresholdValue];
          v53 = v52;
        }

        else
        {
          v51 = [v4 value];
          [v51 doubleValue];
          v53 = v54;
        }

        v82 = v19;
        v55 = v49 * 1000000000.0;
        v56 = [v4 rule];
        if (v56)
        {
          v57 = [v4 rule];
          [v57 windowSize];
          v59 = v58;
        }

        else
        {
          v59 = v46;
        }

        v85 = 1000000000 * v46;
        v60 = v53 * v59 * 1000000000.0;

        v61 = [v4 rule];
        if (v61)
        {
          v62 = [v4 rule];
          [v62 windowSize];
          v64 = v63;
        }

        else
        {
          v64 = v46;
        }

        [v17 setViolationPath:log];
        v65 = v36 | (((v36 - v36) * 1000000000.0) << 32);
        [v17 setViolationEndTime:v65];
        [v17 setViolationObservedValue:v55];
        [v17 setViolationObservationWindow:v85];
        [v17 setViolationLimitValue:v60];
        [v17 setViolationLimitWindow:(v64 * 1000000000.0)];
        [v17 setViolationPid:{objc_msgSend(v4, "lastPID")}];
        [v17 setEstimatedEnergyDiff:0];
        v66 = [v4 detectorString];
        [v17 setViolationDetectorString:v66];

        v67 = [v4 issueType];
        v68 = [v4 coalitionID];
        v69 = [v4 launchdName];
        v70 = [v4 lastPID];
        if ([v4 forceMitigationSuggestion])
        {
          v71 = [v4 mitigationSuggestion];
        }

        else
        {
          v71 = 255;
        }

        v88 = 0;
        [(CSMitigationManager *)self handleDetectionViolation:v67 forCSProcess:v17 coalitionID:v68 coalitionName:v69 pid:v70 startTime:v71 endTime:v39 forcedMitigation:v36 withMitigationDecisionType:&v90 withMitigationDecisionReason:&v89 withError:&v88];
        v72 = v88;

        [v4 setMitigationDecisionType:v90];
        [v4 setMitigationDecisionReason:v89];
        if (v72)
        {
          [v4 setErrorString:v72];
        }

        v73 = [v4 lastPID];
        v74 = [v4 launchdName];
        LOBYTE(v81) = 0;
        [(CSMitigationManager *)self logCPUViolationToPowerLog:v17 pid:v73 coalitionName:v74 endTime:v65 observedValue:v55 observationWindow:v85 limitValue:v60 limitWindow:(v64 * 1000000000.0) fatal:v81 mitigationType:v90 mitigationReason:v89 withError:v72];

        v19 = v82;
        v20 = v84;
        v33 = log;
      }

      else
      {
        v40 = self->_logger;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v79 = v40;
          v80 = [v4 processName];
          *buf = 134218498;
          *v92 = v36;
          *&v92[8] = 2048;
          *v93 = v39;
          *&v93[8] = 2112;
          v94 = v80;
          _os_log_error_impl(&dword_243DC3000, v79, OS_LOG_TYPE_ERROR, "handleDetectorViolation: Invalid time stamps (endTime:%f < startTime:%f) for process:%@", buf, 0x20u);
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = [v4 processName];
        v43 = [v41 stringWithFormat:@"handleDetectorViolation: Invalid time stamps (endTime:%f < startTime:%f) for process:%@", *&v36, *&v39, v42];
        [v4 setErrorString:v43];

        [v4 setMitigationDecisionType:5];
        [v4 setMitigationDecisionReason:13];
      }
    }

    else
    {
      v75 = self->_logger;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager handleDetectorViolation:v75];
      }

      v76 = MEMORY[0x277CCACA8];
      v77 = [v4 processName];
      v78 = [v76 stringWithFormat:@"handleDetectorViolation: Could not find CSProcess for process:%@", v77];
      [v4 setErrorString:v78];

      [v4 setMitigationDecisionType:5];
      [v4 setMitigationDecisionReason:10];
    }

    goto LABEL_33;
  }

LABEL_30:
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager handleDetectorViolation:];
  }

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"handleDetectorViolation: issue.lastPUUID is Null or empty string?"];
  [v4 setErrorString:v44];

  [v4 setMitigationDecisionType:5];
  [v4 setMitigationDecisionReason:8];
LABEL_33:

  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkKnownViolationByProcess:(id)a3 withStartTime:(double)a4 withEndTime:(double)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 checkKnownViolationStartTime:a4 endTime:a5];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager checkKnownViolationByProcess:withStartTime:withEndTime:];
    }

    v10 = 0;
  }

  return v10;
}

uint64_t __63__CSMitigationManager_handleProcessStart_withMitigationReason___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) mitigationType];
  v7 = *(a1 + 56);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 0;
  return [v2 putIntoPenaltyBoxForCSProcess:v3 coalitionID:v4 withMitigationDecisionType:&v8 withMitigationDecisionReason:&v7 withError:&v6];
}

- (BOOL)policyMitigationsEnabled
{
  if (isInternalBuild())
  {
    trialsMitigationsEnabled = self->_trialsMitigationsEnabled;
    if (trialsMitigationsEnabled != -1)
    {
      if (trialsMitigationsEnabled == 1)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager policyMitigationsEnabled];
        }

        v5 = 1;
        goto LABEL_15;
      }

      if (trialsMitigationsEnabled)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          [(CSMitigationManager *)&self->_trialsMitigationsEnabled policyMitigationsEnabled];
        }
      }

      else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager policyMitigationsEnabled];
      }
    }

    v5 = 0;
LABEL_15:
    if (gEnableMitigations)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = v5;
    }

    return v4;
  }

  v4 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [CSMitigationManager policyMitigationsEnabled];
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unsigned)decideMitigation:(id)a3 withCoalitionName:(id)a4 withReason:(unsigned __int8 *)a5
{
  *&v67[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [v8 setMitigationType:255];
    [v8 setMitigationReason:255];
    if ([v8 xpcService])
    {
      if (![v8 issueType])
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager decideMitigation:? withCoalitionName:? withReason:?];
        }

        v10 = 22;
        goto LABEL_63;
      }

      if (v9 && [v9 length] && -[CSProcessManager isXPCServiceExempt:withIssueType:](self->_processManager, "isXPCServiceExempt:withIssueType:", v9, objc_msgSend(v8, "issueType")))
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          [CSMitigationManager decideMitigation:withCoalitionName:withReason:];
        }

        v10 = 26;
        goto LABEL_63;
      }
    }

    if ([v8 policyBitMask])
    {
      v11 = [v8 issueType];
      if (v11 == 1)
      {
        if (([v8 policyBitMask] & 2) != 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v11)
        {
          v33 = self->_logger;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [CSMitigationManager decideMitigation:v33 withCoalitionName:v8 withReason:?];
          }

          goto LABEL_48;
        }

        if ([v8 policyBitMask])
        {
LABEL_48:
          v34 = [v8 rootDaemon];
          v35 = self->_logger;
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
          if (v34)
          {
            if (v36)
            {
              [CSMitigationManager decideMitigation:v35 withCoalitionName:? withReason:?];
            }

            v10 = 17;
          }

          else
          {
            if (v36)
            {
              [CSMitigationManager decideMitigation:v35 withCoalitionName:? withReason:?];
            }

            v10 = 1;
          }

          goto LABEL_63;
        }
      }

      if (([v8 policyBitMask] & 4) != 0)
      {
        [v8 setCpuFatalCnt:gMaxNumberOfKills];
      }
    }

    v14 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
    v15 = [v8 identifier];
    v16 = [v14 determineScenarioForProcess:v15];

    if (!v16)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager decideMitigation:withCoalitionName:withReason:];
      }

      v16 = @"Unknown";
    }

    log = a5;
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager decideMitigation:v17 withCoalitionName:? withReason:?];
    }

    v18 = [v8 cpuFatalCnt];
    v19 = gMaxNumberOfKills;
    if (gMaxNumberOfKills > v18)
    {
      goto LABEL_37;
    }

    v20 = self->_logger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager decideMitigation:v20 withCoalitionName:v8 withReason:?];
    }

    if (gEnablePenaltyBox)
    {
      v21 = self->_logger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager decideMitigation:v21 withCoalitionName:v8 withReason:?];
      }

      v22 = 1;
    }

    else
    {
LABEL_37:
      v22 = 0;
    }

    v23 = self->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v23;
      v24 = v22;
      v25 = [v8 cpuFatalCnt];
      v55 = v18;
      v26 = gMaxNumberOfKills;
      v27 = [v8 cpuNonFatalCnt];
      v54 = v19;
      v28 = v16;
      v29 = gMaxNumberOfNonfatal;
      v52 = gEnablePenaltyBox;
      v30 = [v8 policyBitMask];
      [v8 processName];
      v31 = v56 = v9;
      *buf = 67110658;
      *v61 = v25;
      v22 = v24;
      *&v61[4] = 2048;
      *&v61[6] = v26;
      *&v61[14] = 1024;
      *&v61[16] = v27;
      *v62 = 2048;
      *&v62[2] = v29;
      v16 = v28;
      v19 = v54;
      v18 = v55;
      *v63 = 2048;
      *&v63[2] = v52;
      v64 = 1024;
      v65 = v30;
      v66 = 2112;
      *v67 = v31;
      _os_log_impl(&dword_243DC3000, v53, OS_LOG_TYPE_DEFAULT, "decideMitigation: Fatal counts %u maxKills %ld nonFatalCount %d maxNonFatal %ld enablePenaltyBox %ld policyBitMask 0x%x for process:%@", buf, 0x3Cu);

      v9 = v56;
    }

    if (v19 <= v18)
    {
      a5 = log;
      if (v22)
      {
        [v8 setMitigationType:2];
        if (([v8 policyBitMask] & 4) != 0)
        {
          v32 = 27;
        }

        else
        {
          v32 = 4;
        }
      }

      else
      {
        v37 = [v8 cpuNonFatalCnt];
        v38 = gMaxNumberOfNonfatal;
        [v8 setMitigationType:0];
        if (v38 <= v37)
        {
          v32 = 4;
        }

        else
        {
          v32 = 2;
        }
      }
    }

    else
    {
      [v8 setMitigationType:1];
      v32 = 2;
      a5 = log;
    }

    [v8 setMitigationReason:v32];

    [v8 setPenaltyBoxDurationMins:{-[CSMitigationManager penaltyBoxDurationMinsForProcess:](self, "penaltyBoxDurationMinsForProcess:", v8)}];
    if (![v8 mitigationType] || -[CSMitigationManager policyMitigationsEnabled](self, "policyMitigationsEnabled"))
    {
      goto LABEL_64;
    }

    v39 = self->_logger;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [CSMitigationManager decideMitigation:v39 withCoalitionName:? withReason:?];
    }

    v10 = 0;
LABEL_63:
    [v8 setMitigationType:0];
    [v8 setMitigationReason:v10];
LABEL_64:
    v40 = self->_logger;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      loga = v40;
      v57 = PEIssueTypeString([v8 issueType]);
      v41 = PEMitigationTypeString([v8 mitigationType]);
      v42 = PEReasonString([v8 mitigationReason]);
      v43 = [v8 cpuFatalCnt];
      v44 = [v8 cpuNonFatalCnt];
      v45 = v9;
      v46 = [v8 exitsCnt];
      v47 = a5;
      v48 = [v8 penaltyBoxCnt];
      v49 = [v8 processName];
      *buf = 136316930;
      *v61 = v57;
      *&v61[8] = 2080;
      *&v61[10] = v41;
      *&v61[18] = 2080;
      *v62 = v42;
      *&v62[8] = 1024;
      *v63 = v43;
      *&v63[4] = 1024;
      *&v63[6] = v44;
      v64 = 1024;
      v65 = v46;
      v9 = v45;
      v66 = 1024;
      v67[0] = v48;
      a5 = v47;
      LOWORD(v67[1]) = 2112;
      *(&v67[1] + 2) = v49;
      _os_log_impl(&dword_243DC3000, loga, OS_LOG_TYPE_DEFAULT, "decideMitigation: IssueType:%s MitigationType:%s MitigationReason:%s cpuFatalCnt:%u cpu_non_fatal_cnt:%u exitsCnt:%u penaltyBoxCnt:%u for process %@", buf, 0x42u);
    }

    *a5 = [v8 mitigationReason];
    v12 = [v8 mitigationType];
    goto LABEL_67;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager decideMitigation:withCoalitionName:withReason:];
  }

  *a5 = 10;
  v12 = -1;
LABEL_67:

  v50 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)checkOverridesForProcess:(id)a3 penaltyBoxDuration:(int64_t *)a4 cpuThreshold:(int64_t *)a5 timeWindow:(int64_t *)a6
{
  v10 = a3;
  v11 = v10;
  if (gTargetProcess && [v10 isEqualToString:?])
  {
    if (gTargetPenaltyBoxDurationMins)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *a4 = gTargetPenaltyBoxDurationMins;
    }

    if (gTargetCPUPercentage)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *a5 = gTargetCPUPercentage;
    }

    if (gTargetCPUTimeWindow)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      v12 = &gTargetCPUTimeWindow;
LABEL_27:
      *a6 = *v12;
    }
  }

  else
  {
    if (gGlobalOverridePenaltyBoxDurationMins)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *a4 = gGlobalOverridePenaltyBoxDurationMins;
    }

    if (gGlobalOverrideCPUPercentage)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      *a5 = gGlobalOverrideCPUPercentage;
    }

    if (gGlobalOverrideCPUTimeWindow)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:];
      }

      v12 = &gGlobalOverrideCPUTimeWindow;
      goto LABEL_27;
    }
  }
}

- (int)putIntoPenaltyBoxForCSProcess:(id)a3 coalitionID:(unint64_t)a4 withMitigationDecisionType:(unsigned __int8 *)a5 withMitigationDecisionReason:(unsigned __int8 *)a6 withError:(id *)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:];
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"putIntoPenaltyBoxForProcess: process is NULL?"];
    v10 = 0;
    v12 = 0;
    *a7 = v15 = 0;
    *a5 = 5;
    v17 = 10;
    goto LABEL_31;
  }

  if ([v8 inPenaltyBox])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
    v11 = [v9 penaltyBoxCoalitionIDs];
    v12 = [v11 objectForKey:v10];

    if (v12)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:];
      }

      v13 = MEMORY[0x277CCACA8];
      v14 = [v9 processName];
      *a7 = [v13 stringWithFormat:@"putIntoPenaltyBoxForProcess: Process:%@ and coalitionID %lld already in penalty box", v14, a4];

      v15 = 0;
      *a5 = 5;
      *a6 = 15;
      v16 = 37;
      goto LABEL_50;
    }
  }

  else
  {
    v10 = 0;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v19 = logger;
    v20 = [v9 processName];
    v21 = PEReasonString(*a6);
    *buf = 138412802;
    *v72 = v20;
    *&v72[8] = 2048;
    *&v72[10] = a4;
    *&v72[18] = 2080;
    *&v72[20] = v21;
    _os_log_impl(&dword_243DC3000, v19, OS_LOG_TYPE_DEFAULT, "putIntoPenaltyBoxForProcess: Put process:%@ and coalitionID %lld into penalty box. Reason: %s", buf, 0x20u);
  }

  [v9 addPenaltyBoxCoalitionID:a4];
  v22 = [v9 getPidsForCoalitionID:a4];
  if (!v22)
  {
    v43 = self->_logger;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager putIntoPenaltyBoxForCSProcess:v43 coalitionID:? withMitigationDecisionType:? withMitigationDecisionReason:? withError:?];
    }

    v44 = MEMORY[0x277CCACA8];
    v45 = [v9 processName];
    *a7 = [v44 stringWithFormat:@"putIntoPenaltyBoxForProcess: no pids matching coalitionID for process:%@", v45];

    v12 = 0;
    v15 = 0;
    *a5 = 5;
    v17 = 24;
LABEL_31:
    *a6 = v17;
    v16 = 2;
    goto LABEL_50;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v22;
  v23 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v23)
  {
    v24 = v23;
    v59 = self;
    v57 = v10;
    v25 = 0;
    v26 = 0;
    v65 = 0;
    v66 = *v68;
    v27 = obj;
    do
    {
      v58 = v26;
      for (i = 0; i != v24; ++i)
      {
        v29 = v25;
        if (*v68 != v66)
        {
          objc_enumerationMutation(v27);
        }

        v25 = *(*(&v67 + 1) + 8 * i);

        v30 = [v25 intValue];
        *__error() = 0;
        if (setpriority(9, v30, 1))
        {
          v31 = +[CSLogger defaultCategory];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v38 = *__error();
            v39 = __error();
            v40 = strerror(*v39);
            v41 = [v9 processName];
            *buf = 67109890;
            *v72 = v38;
            *&v72[4] = 2080;
            *&v72[6] = v40;
            *&v72[14] = 2112;
            *&v72[16] = v41;
            *&v72[24] = 1024;
            *&v72[26] = v30;
            _os_log_error_impl(&dword_243DC3000, v31, OS_LOG_TYPE_ERROR, "putIntoPenaltyBoxForProcess: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)", buf, 0x22u);
          }

          v32 = MEMORY[0x277CCACA8];
          v33 = *__error();
          v34 = __error();
          v35 = strerror(*v34);
          v36 = [v9 processName];
          *a7 = [v32 stringWithFormat:@"putIntoPenaltyBoxForProcess: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)", v33, v35, v36, v30];

          if (!HIDWORD(v65))
          {
            HIDWORD(v65) = *__error();
          }
        }

        else
        {
          v37 = [v9 processName];
          -[CSMitigationManager logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:](v59, "logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:", v37, v30, [v9 issueType], *a5, *a6, 0);

          v27 = obj;
          -[CSMitigationManager logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:](v59, "logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:", v9, v30, a4, [v9 issueType], *a5, *a6);
          LODWORD(v65) = v65 + 1;
        }
      }

      v26 = v58 + v24;
      v24 = [v27 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v24);

    v10 = v57;
    self = v59;
    v42 = v65;
  }

  else
  {
    v42 = 0;
    v26 = 0;
    HIDWORD(v65) = 0;
  }

  v46 = self->_logger;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v46;
    v48 = [v9 processName];
    *buf = 67110146;
    *v72 = v42;
    *&v72[4] = 1024;
    *&v72[6] = v26;
    *&v72[10] = 2048;
    *&v72[12] = a4;
    *&v72[20] = 1024;
    *&v72[22] = HIDWORD(v65);
    *&v72[26] = 2112;
    *&v72[28] = v48;
    _os_log_impl(&dword_243DC3000, v47, OS_LOG_TYPE_DEFAULT, "putIntoPenaltyBoxForProcess: PenaltyBox for %d out of %d pids that matched coalitionID %llu with final ret %d for process:%@", buf, 0x28u);
  }

  if (v42 < 1)
  {
    v12 = 0;
    *a5 = 5;
    *a6 = 16;
    if (HIDWORD(v65))
    {
      v16 = HIDWORD(v65);
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    if (v42 != v26)
    {
      *a5 = 5;
      *a6 = 23;
    }

    [v9 setInPenaltyBox:1];
    [v9 setPenaltyBoxCnt:{(objc_msgSend(v9, "penaltyBoxCnt") + 1)}];
    [v9 setPenaltyBoxPending:0];
    CurrentTime = getCurrentTime();
    v50 = [v9 penaltyBoxDurationMins];
    if (![v9 penaltyBoxEndTime])
    {
      [v9 setPenaltyBoxEndTime:CurrentTime + 60 * v50];
    }

    penaltyBoxProcesses = self->_penaltyBoxProcesses;
    v52 = [v9 uuid];
    [(NSMutableDictionary *)penaltyBoxProcesses setObject:v9 forKey:v52];

    if (self->_penaltyBoxPolicy == 2 && !self->_penaltyBoxTimerRunning)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:];
      }

      penaltyBoxTimer = self->_penaltyBoxTimer;
      v54 = dispatch_walltime(0, 60000000000);
      dispatch_source_set_timer(penaltyBoxTimer, v54, 0xDF8475800uLL, 0x6FC23AC00uLL);
      self->_penaltyBoxTimerRunning = 1;
      dispatch_resume(self->_penaltyBoxTimer);
    }

    v12 = 0;
    v16 = 0;
  }

  v15 = obj;
LABEL_50:

  v55 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)checkPenaltyBoxProcessesExpiration
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (int)removeProcessFromPenaltyBox:(id)a3 forReason:(unsigned __int8)a4
{
  v38 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CSProcessManager *)self->_processManager getProcessForUUID:v5];
  if (v6)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = logger;
      v9 = [v6 processName];
      *buf = 138412546;
      *v48 = v9;
      *&v48[8] = 2080;
      *&v48[10] = PEReasonString(v38);
      _os_log_impl(&dword_243DC3000, v8, OS_LOG_TYPE_DEFAULT, "removeProcessFromPenaltyBox: Remove process:%@ from penalty box. Reason: %s", buf, 0x16u);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [v6 trackedPIDs];
    v10 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v37 = v5;
      v12 = 0;
      v13 = *v44;
      v14 = v38;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = v12;
          if (*v44 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * i);

          v17 = [v12 intValue];
          *__error() = 0;
          v18 = getpriority(9, v17);
          if (*__error() || v18 != 1)
          {
            v28 = self->_logger;
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            loga = v28;
            v39 = *__error();
            v29 = __error();
            v30 = strerror(*v29);
            v23 = [v6 processName];
            *buf = 67110146;
            *v48 = v39;
            *&v48[4] = 2080;
            *&v48[6] = v30;
            *&v48[14] = 1024;
            *&v48[16] = v18;
            *&v48[20] = 2112;
            *&v48[22] = v23;
            v49 = 1024;
            v50 = v17;
            v24 = loga;
            v25 = loga;
            v26 = "removeProcessFromPenaltyBox: getpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) priority %d for process:%@ (%d)";
            v27 = 40;
            goto LABEL_16;
          }

          *__error() = 0;
          if (setpriority(9, v17, 0))
          {
            v19 = self->_logger;
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            log = v19;
            v20 = *__error();
            v21 = __error();
            v22 = strerror(*v21);
            v23 = [v6 processName];
            *buf = 67109890;
            *v48 = v20;
            *&v48[4] = 2080;
            *&v48[6] = v22;
            *&v48[14] = 2112;
            *&v48[16] = v23;
            *&v48[24] = 1024;
            *&v48[26] = v17;
            v24 = log;
            v25 = log;
            v26 = "removeProcessFromPenaltyBox: setpriority(PRIO_DARWIN_RUNAWAY_MITIGATION) failed %d (%s) for process:%@ (%d)";
            v27 = 34;
LABEL_16:
            _os_log_error_impl(&dword_243DC3000, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);

            v14 = v38;
            continue;
          }

          v31 = [v6 processName];
          -[CSMitigationManager logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:](self, "logMitigationAsSignpost:withPid:withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:", v31, v17, [v6 issueType], 3, v14, 0);

          v32 = [v6 trackedPIDs];
          v33 = [v32 objectForKeyedSubscript:v12];

          -[CSMitigationManager logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:](self, "logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:", v6, v17, [v33 longLongValue], objc_msgSend(v6, "issueType"), 3, v14);
        }

        v11 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (!v11)
        {

          v5 = v37;
          break;
        }
      }
    }

    [v6 setInPenaltyBox:0];
    [(NSMutableDictionary *)self->_penaltyBoxProcesses removeObjectForKey:v5];
    [v6 setCpuNonFatalCnt:0];
    [v6 setMitigationType:3];
    if (v38 != 255)
    {
      [v6 setMitigationReason:?];
    }

    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)removeAllProcessesFromPenaltyBox
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (int64_t)penaltyBoxDurationMinsForProcess:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  penaltyBoxPolicy = self->_penaltyBoxPolicy;
  if (penaltyBoxPolicy == 1)
  {
    v6 = 1440;
  }

  else
  {
    if (penaltyBoxPolicy != 2 && os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [(CSMitigationManager *)&self->_penaltyBoxPolicy _init];
    }

    v6 = 60;
  }

  v7 = [v4 processName];
  [(CSMitigationManager *)self checkOverridesForProcess:v7 penaltyBoxDuration:&v12 cpuThreshold:&v11 timeWindow:&v10];

  if (v12)
  {
    v8 = v12;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)midnightRoutine
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(CSMitigationManager *)self logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243DC3000, v3, OS_LOG_TYPE_DEFAULT, "midnightRoutine", buf, 2u);
  }

  [(CSMitigationManager *)self checkForTrials];
  v4 = getMainQueue();
  dispatch_assert_queue_V2(v4);

  [(CSMitigationManager *)self checkPenaltyBoxProcessesExpiration];
  [(CSProcessManager *)self->_processManager clearAllCounters];
  v5 = [(CSProcessManager *)self->_processManager getMonitoredList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
        [v12 determineAndApplyRestrictionsForProcess:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForDayChangedNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_dayChangedNotificationReceived_ name:*MEMORY[0x277CBE580] object:0];
}

- (void)dayChangedNotificationReceived:(id)a3
{
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSMitigationManager dayChangedNotificationReceived:];
  }

  v4 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSMitigationManager_dayChangedNotificationReceived___block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)getMitigationTypeString:(char *)a3 withStringSize:(unint64_t)a4 withMitigationType:(int64_t)a5 withPenaltyBoxEndTime:(unint64_t)a6
{
  v10 = PEMitigationTypeString(a5);
  snprintf(a3, a4, "%s", v10);
  if (a5 == 2)
  {
    penaltyBoxPolicy = self->_penaltyBoxPolicy;
    if (penaltyBoxPolicy == 2)
    {
      getCurrentTime();
      PEMitigationTypeString(2);
      snprintf(a3, a4, "%s (for %lld seconds)");
    }

    else if (penaltyBoxPolicy == 1)
    {
      PEMitigationTypeString(2);
      snprintf(a3, a4, "%s (until midnight)");
    }
  }
}

- (void)generateIPSFileForProcess:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 issueType];
  v6 = [v4 mitigationType];
  v7 = [v4 mitigationReason];
  memset(v28, 0, 150);
  v8 = [v4 violationPath];
  if (v8 && (v9 = v8, [v4 violationPath], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v11))
  {
    if (v6 == 1 || v6 == 2)
    {
      -[CSMitigationManager getMitigationTypeString:withStringSize:withMitigationType:withPenaltyBoxEndTime:](self, "getMitigationTypeString:withStringSize:withMitigationType:withPenaltyBoxEndTime:", v28, 150, v6, [v4 penaltyBoxEndTime]);
      v13 = [v4 violationEndTime];
      v23 = v13;
      v22 = v13 >> 32;
      [v4 violationObservationWindow];
      v14 = [v4 violationPath];
      [v14 UTF8String];
      PEIssueTypeString(v5);
      PEReasonString(v7);
      PEMitigationTypeString(v6);
      v15 = [v4 violationDetectorString];
      if (v15)
      {
        v6 = [v4 violationDetectorString];
        [v6 UTF8String];
      }

      [v4 violationObservationWindow];
      v20 = v23;
      v21 = v22;
      SPReportPowerException();
      if (v15)
      {
      }

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v17 = logger;
        v18 = [v4 processName];
        *buf = 138412546;
        v25 = v18;
        v26 = 1024;
        v27 = [v4 violationPid];
        _os_log_impl(&dword_243DC3000, v17, OS_LOG_TYPE_DEFAULT, "generateIPSFileForProcess: Generating ips file for process:%@ (%d)", buf, 0x12u);
      }

      [v4 setViolationPath:{0, v20, v21}];
      [v4 setViolationEndTime:0];
      [v4 setViolationObservedValue:0];
      [v4 setViolationObservationWindow:0];
      [v4 setViolationLimitValue:0];
      [v4 setViolationLimitWindow:0];
      [v4 setViolationPid:0];
      [v4 setViolationDetectorString:0];
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [CSMitigationManager generateIPSFileForProcess:];
    }
  }

  else
  {
    v12 = self->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CSMitigationManager *)v12 generateIPSFileForProcess:v4];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logCPUViolationToPowerLog:(id)a3 pid:(unint64_t)a4 coalitionName:(id)a5 endTime:(mach_timespec)a6 observedValue:(int64_t)a7 observationWindow:(int64_t)a8 limitValue:(int64_t)a9 limitWindow:(int64_t)a10 fatal:(BOOL)a11 mitigationType:(int64_t)a12 mitigationReason:(int64_t)a13 withError:(id)a14
{
  v107 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a5;
  v22 = a14;
  v23 = v22;
  if (v20)
  {
    v72 = v21;
    v73 = v22;
    v24 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
    v25 = [v20 identifier];
    v26 = [v24 determineScenarioForProcess:v25];

    v74 = v26;
    if (!v26)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [CSMitigationManager logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:];
      }

      v74 = @"Unknown";
    }

    v67 = self;
    v27 = [v20 issueType];
    v28 = +[CSLogger signpostCategory];
    v29 = v28;
    spid = a4;
    if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v65 = v27;
      v30 = [v20 processName];
      if (v30)
      {
        v52 = [v20 processName];
        v61 = [v52 UTF8String];
      }

      else
      {
        v61 = 0;
      }

      v31 = v73;
      v63 = v30;
      if (v21)
      {
        v59 = [v21 UTF8String];
      }

      else
      {
        v59 = 0;
      }

      v57 = [(__CFString *)v74 UTF8String];
      v53 = PEIssueTypeString(v65);
      v32 = PEMitigationTypeString(a12);
      v33 = PEReasonString(a13);
      if (v73)
      {
        v31 = [v73 UTF8String];
      }

      *buf = 136449794;
      v78 = v61;
      v79 = 2082;
      v80 = v59;
      v81 = 2082;
      v82 = v57;
      v83 = 2050;
      *&v84 = a6.tv_sec + a6.tv_nsec * 0.000000001;
      v85 = 2050;
      v86 = a9 / 0x3B9ACA00uLL;
      v87 = 2050;
      v88 = a10 / 0x3B9ACA00uLL;
      v89 = 2050;
      v90 = a7 / 1000000000.0;
      v91 = 2050;
      v92 = a8 / 1000000000.0;
      v93 = 2082;
      v94 = v53;
      v95 = 2082;
      v96 = v32;
      v97 = 2082;
      v98 = v33;
      v99 = 2082;
      v100 = v31;
      v101 = 1026;
      v102 = 1;
      v103 = 1026;
      v104 = [v20 cpuFatalCnt];
      v105 = 1026;
      v106 = [v20 cpuNonFatalCnt];
      a4 = spid;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v29, OS_SIGNPOST_EVENT, spid, "CPU Violation", "Process name: %{public, name=processName}s\nSignpost ID is PID\nCoalition name: %{public, name=coalitionName}s\nScenario Identifier: %{public, name=scenarioIdentifier}s\nTime Stamp End: %{public, name=timeStampEnd}f\nCPU Threshold: %{public, name=cpuThreshold}lld\nTime Window Size: %{public, name=timeWindowSize}lld\nObserved CPU Usage: %{public, name=observedCPUUsage}f\nObserved CPU Usage Duration: %{public, name=observedCPUUsageDuration}f\nIssue Type: %{public, name=issueType}s\nMitigation Type: %{public, name=mitigationType}s\nMitigation Reason: %{public, name=mitigationReason}s\nError String: %{public, name=errorString}s\nFrom Power Exceptions: %{public, name=fromPowerExceptions}d\nFatal Count: %{public, name=fatalCount}d\nNon Fatal Count: %{public, name=nonFatalCount}d\n", buf, 0x8Cu);
      if (v63)
      {
      }

      v27 = v65;
    }

    v58 = MEMORY[0x277CBEB38];
    v75[0] = @"timestamp";
    v34 = MEMORY[0x277CCABB0];
    v66 = [MEMORY[0x277CBEAA8] date];
    [v66 timeIntervalSince1970];
    v64 = [v34 numberWithDouble:?];
    v76[0] = v64;
    v75[1] = @"PID";
    v62 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    v76[1] = v62;
    v76[2] = v74;
    v75[2] = @"ScenarioIdentifier";
    v75[3] = @"timestampEnd";
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:a6.tv_sec + a6.tv_nsec * 0.000000001];
    v76[3] = v60;
    v75[4] = @"ThresholdCPUUsage";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a9 / 0x3B9ACA00uLL];
    v76[4] = v56;
    v75[5] = @"TimeWindowSize";
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a10 / 0x3B9ACA00uLL];
    v76[5] = v55;
    v75[6] = @"ObservedCPUUsage";
    v68 = [MEMORY[0x277CCABB0] numberWithDouble:a7 / 1000000000.0];
    v76[6] = v68;
    v75[7] = @"ObservedCPUUsageDuration";
    v70 = [MEMORY[0x277CCABB0] numberWithDouble:a8 / 1000000000.0];
    v76[7] = v70;
    v75[8] = @"IssueType";
    v54 = [MEMORY[0x277CCABB0] numberWithLongLong:v27];
    v76[8] = v54;
    v75[9] = @"MitigationType";
    v69 = [MEMORY[0x277CCABB0] numberWithLongLong:a12];
    v76[9] = v69;
    v75[10] = @"MitigationReason";
    v35 = [MEMORY[0x277CCABB0] numberWithLongLong:a13];
    v76[10] = v35;
    v76[11] = &unk_28570AC98;
    v75[11] = @"FromPowerExceptions";
    v75[12] = @"FatalCount";
    v36 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v20, "cpuFatalCnt")}];
    v76[12] = v36;
    v75[13] = @"NonFatalCount";
    v37 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v20, "cpuNonFatalCnt")}];
    v76[13] = v37;
    v75[14] = @"EstimatedEnergy";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v20, "estimatedEnergyDiff")}];
    v76[14] = v38;
    v75[15] = @"PUUID";
    v39 = [v20 uuid];
    v40 = [v39 UUIDString];
    v76[15] = v40;
    v75[16] = @"CoalitionID";
    v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v20, "lastCoalitionID")}];
    v76[16] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:17];
    v43 = [v58 dictionaryWithDictionary:v42];

    v44 = [v20 processName];

    if (v44)
    {
      v45 = [v20 processName];
      [v43 setObject:v45 forKeyedSubscript:@"ProcessName"];
    }

    v21 = v72;
    v23 = v73;
    if (v72)
    {
      [v43 setObject:v72 forKeyedSubscript:@"CoalitionName"];
    }

    if (v73)
    {
      [v43 setObject:v73 forKeyedSubscript:@"ErrorString"];
    }

    logger = v67->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      if (a11)
      {
        v48 = "fatal";
      }

      else
      {
        v48 = "non fatal";
      }

      v49 = logger;
      v50 = [v20 processName];
      v51 = [v20 uuid];
      *buf = 136316162;
      v78 = v48;
      v79 = 2080;
      v80 = "Yes";
      v81 = 2112;
      v82 = v50;
      v83 = 2048;
      v84 = spid;
      v85 = 2112;
      v86 = v51;
      _os_log_debug_impl(&dword_243DC3000, v49, OS_LOG_TYPE_DEBUG, "logCPUViolationToPowerLog: Sending %s violation fromPowerExceptions (%s) for process %@ (%llu) (%@) to Power Log", buf, 0x34u);

      v23 = v73;
    }

    [(CSMitigationManager *)v67 logCPUViolationToPowerLogWithPayload:v43];
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSMitigationManager logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)logCPUViolationToPowerLogWithPayload:(id)a3
{
  v4 = a3;
  if (logCPUViolationToPowerLogWithPayload__onceToken != -1)
  {
    [CSMitigationManager logCPUViolationToPowerLogWithPayload:];
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSMitigationManager logCPUViolationToPowerLogWithPayload:];
  }

  PPSSendTelemetry();
}

uint64_t __60__CSMitigationManager_logCPUViolationToPowerLogWithPayload___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logCPUViolationToPowerLogWithPayload__streamID = result;
  return result;
}

- (void)logMitigationAsSignpost:(id)a3 withPid:(unint64_t)a4 withIssueType:(unsigned __int8)a5 withMitigationType:(unsigned __int8)a6 withReason:(unsigned __int8)a7 withPenaltyBoxEndTime:(unint64_t)a8
{
  v10 = a6;
  v35 = *MEMORY[0x277D85DE8];
  v14 = a3;
  memset(v34, 0, sizeof(v34));
  CoalitionID = getCoalitionID(a4);
  switch(v10)
  {
    case 3:
      v21 = +[CSLogger signpostCategory];
      v17 = v21;
      if (a4 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
      {
        goto LABEL_14;
      }

      v24 = 136447234;
      v25 = [v14 UTF8String];
      v26 = 2050;
      v27 = CoalitionID;
      v28 = 2082;
      v29 = PEIssueTypeString(a5);
      v30 = 2082;
      v31 = PEMitigationTypeString(3);
      v32 = 2082;
      v33 = PEReasonString(a7);
      v18 = v17;
      v19 = OS_SIGNPOST_INTERVAL_END;
      goto LABEL_13;
    case 2:
      [(CSMitigationManager *)self getMitigationTypeString:v34 withStringSize:150 withMitigationType:2 withPenaltyBoxEndTime:a8];
      v20 = +[CSLogger signpostCategory];
      v17 = v20;
      if (a4 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v20))
      {
        goto LABEL_14;
      }

      v24 = 136447234;
      v25 = [v14 UTF8String];
      v26 = 2050;
      v27 = CoalitionID;
      v28 = 2082;
      v29 = PEIssueTypeString(a5);
      v30 = 2082;
      v31 = v34;
      v32 = 2082;
      v33 = PEReasonString(a7);
      v18 = v17;
      v19 = OS_SIGNPOST_INTERVAL_BEGIN;
      goto LABEL_13;
    case 1:
      v16 = +[CSLogger signpostCategory];
      v17 = v16;
      if (a4 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_14;
      }

      v24 = 136447234;
      v25 = [v14 UTF8String];
      v26 = 2050;
      v27 = CoalitionID;
      v28 = 2082;
      v29 = PEIssueTypeString(a5);
      v30 = 2082;
      v31 = PEMitigationTypeString(1);
      v32 = 2082;
      v33 = PEReasonString(a7);
      v18 = v17;
      v19 = OS_SIGNPOST_EVENT;
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v18, v19, a4, "Mitigation Applied", "Process name: %{public, name=processName}s\nSignpost ID is PID\nCoalition ID: %{public, name=coalitionID}llu\nIssue Type: %{public, name=issueType}s\nMitigation Type: %{public, name=mitigationType}s\nMitigation Reason: %{public, name=mitigationReason}s\n", &v24, 0x34u);
LABEL_14:

      goto LABEL_17;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager logMitigationAsSignpost:v14 withPid:logger withIssueType:? withMitigationType:? withReason:? withPenaltyBoxEndTime:?];
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)forceCPUViolationForProcess:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  clock_serv = 0;
  cur_time = 0;
  v8 = MEMORY[0x245D52A80]();
  host_get_clock_service(v8, 1, &clock_serv);
  clock_get_time(clock_serv, &cur_time);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v9 = getMainQueue();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke;
  v11[3] = &unk_278DF5510;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v13 = &v15;
  v14 = cur_time;
  dispatch_sync(v9, v11);

  v7[2](v7, v16[5]);
  _Block_object_dispose(&v15, 8);
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processManager];
  v3 = [v2 getProcessForProcessName:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 trackedPIDs];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [v3 lastPid];
      if (os_log_type_enabled(*(*(a1 + 32) + 40), OS_LOG_TYPE_DEBUG))
      {
        __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_1();
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else if (v6)
      {
LABEL_6:
        v10 = getProcessUUID(v6);
        if (v10)
        {
          LOBYTE(v12) = 0;
          [*(a1 + 32) handleCPUDetectionViolation:v3 coalitionID:getCoalitionID(v6) pid:v6 endTime:*(a1 + 56) observedValue:3000000000 observationWindow:4000000000 limitValue:3000000000 limitWindow:4000000000 fatal:v12];
        }

        else
        {
          v11 = *(*(a1 + 32) + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_2(v11);
          }
        }

        goto LABEL_13;
      }
    }
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 48);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v6 = [v8 discoverPidForProcessName:v7 withError:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(*(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
  {
    __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_3();
  }

LABEL_13:
}

- (void)forceMitigation:(id)a3 forProcess:(id)a4 withPercentage:(id)a5 withSeconds:(id)a6 withPenaltyBoxDuration:(id)a7 withHandler:(id)a8
{
  v89 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__1;
  v77 = __Block_byref_object_dispose__1;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__1;
  v67[4] = __Block_byref_object_dispose__1;
  v68 = 0;
  v20 = [(CSMitigationManager *)self logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *v83 = 138413314;
    *&v83[4] = v14;
    *&v83[12] = 2112;
    *&v83[14] = v16;
    *&v83[22] = 2112;
    v84 = v17;
    v85 = 2112;
    v86 = v18;
    v87 = 2112;
    v88 = v15;
    _os_log_debug_impl(&dword_243DC3000, v20, OS_LOG_TYPE_DEBUG, "forceMitigation: Force mitigation %@, cpuThreshold %@, cpuTimeWindow %@ penaltyBoxDuration %@ for process: %@", v83, 0x34u);
  }

  v21 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke;
  block[3] = &unk_278DF5538;
  v65 = v67;
  block[4] = self;
  v22 = v15;
  v64 = v22;
  v66 = &v73;
  dispatch_sync(v21, block);

  if (v74[5])
  {
    *v83 = 0;
    *&v83[8] = v83;
    *&v83[16] = 0x2020000000;
    LODWORD(v84) = -1;
    v23 = getMainQueue();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_172;
    v62[3] = &unk_278DF5560;
    v62[4] = v83;
    v62[5] = &v73;
    dispatch_sync(v23, v62);

    if (*(*&v83[8] + 24) == -1)
    {
      v28 = [(CSMitigationManager *)self logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v74[5] identifier];
        [CSMitigationManager forceMitigation:v29 forProcess:&v83[8] withPercentage:v81 withSeconds:v28 withPenaltyBoxDuration:? withHandler:?];
      }

      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:1 userInfo:0];
      v19[2](v19, v30);

      goto LABEL_22;
    }

    v24 = [v14 isEqualToString:@"Fatal"];
    if (v24)
    {
      v25 = 1;
LABEL_15:
      [v74[5] setMitigationType:v25];
      v31 = 0;
LABEL_16:
      v32 = getMainQueue();
      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_187;
      v50 = &unk_278DF5588;
      v56 = &v73;
      v58 = v31;
      v51 = v18;
      v52 = self;
      v59 = v24;
      v53 = v16;
      v54 = v17;
      v33 = v19;
      v55 = v33;
      v57 = &v69;
      dispatch_sync(v32, &v47);

      if (*(v70 + 6))
      {
        v34 = [(CSMitigationManager *)self logger:v47];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v45 = *(v70 + 6);
          v46 = strerror(v45);
          *v81 = 67109634;
          *&v81[4] = v45;
          *v82 = 2080;
          *&v82[2] = v46;
          *&v82[10] = 2112;
          *&v82[12] = v22;
          _os_log_error_impl(&dword_243DC3000, v34, OS_LOG_TYPE_ERROR, "forceMitigation: Error enabling CPU monitoring: %d (%s) for process:%@", v81, 0x1Cu);
        }

        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:3 userInfo:0];
        v33[2](v33, v35);
      }

      else
      {
        v33[2](v33, 0);
      }

      goto LABEL_22;
    }

    if ([v14 isEqualToString:@"NonFatal"])
    {
      v25 = 0;
      goto LABEL_15;
    }

    if ([v14 hasPrefix:@"PenaltyBoxIn"])
    {
      [v74[5] setMitigationType:2];
      if (gEnablePenaltyBox)
      {
        *v81 = 0;
        *v82 = v81;
        *&v82[8] = 0x2020000000;
        v82[16] = 0;
        v37 = getMainQueue();
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_185;
        v61[3] = &unk_278DF5560;
        v61[4] = v81;
        v61[5] = &v73;
        dispatch_sync(v37, v61);

        if ((*(*v82 + 24) & 1) == 0)
        {
          _Block_object_dispose(v81, 8);
          v31 = 1;
          goto LABEL_16;
        }

        v38 = [(CSMitigationManager *)self logger];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v80 = v22;
          _os_log_impl(&dword_243DC3000, v38, OS_LOG_TYPE_DEFAULT, "forceMitigation: process: %@ already in penalty box", buf, 0xCu);
        }

        if ([v18 longValue] != -1)
        {
          [v74[5] setPenaltyBoxDurationMins:{objc_msgSend(v18, "longValue")}];
        }

        v19[2](v19, 0);
        goto LABEL_50;
      }

      v43 = [(CSMitigationManager *)self logger];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
      }
    }

    else
    {
      if (![v14 hasPrefix:@"PenaltyBoxOut"])
      {
        v41 = [(CSMitigationManager *)self logger];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
        }

        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:2 userInfo:0];
        v19[2](v19, v42);

        goto LABEL_22;
      }

      [v74[5] setMitigationType:3];
      if (gEnablePenaltyBox)
      {
        *v81 = 0;
        *v82 = v81;
        *&v82[8] = 0x2020000000;
        v82[16] = 0;
        v39 = getMainQueue();
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_186;
        v60[3] = &unk_278DF5560;
        v60[4] = v81;
        v60[5] = &v73;
        dispatch_sync(v39, v60);

        if (*(*v82 + 24) == 1)
        {
          v40 = [(CSMitigationManager *)self logger];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v80 = v22;
            _os_log_impl(&dword_243DC3000, v40, OS_LOG_TYPE_DEFAULT, "forceMitigation: process: %@ already out of penalty box", buf, 0xCu);
          }
        }

        else
        {
          [v74[5] setPenaltyBoxDurationMins:1];
        }

        v19[2](v19, 0);
LABEL_50:
        _Block_object_dispose(v81, 8);
        goto LABEL_22;
      }

      v43 = [(CSMitigationManager *)self logger];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
      }
    }

    v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:4 userInfo:0];
    v19[2](v19, v44);

LABEL_22:
    _Block_object_dispose(v83, 8);
    goto LABEL_23;
  }

  v26 = [(CSMitigationManager *)self logger];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [CSMitigationManager forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:];
  }

  v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSRestrictionManagerErrorDomain" code:0 userInfo:0];
  v19[2](v19, v27);

LABEL_23:
  _Block_object_dispose(v67, 8);

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  v36 = *MEMORY[0x277D85DE8];
}

void __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) identiferForName:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 48) processForIdentifier:?];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x2821F96F8]();
  }
}

uint64_t __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_172(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) lastPid];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_185(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) inPenaltyBox];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_186(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) inPenaltyBox];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __112__CSMitigationManager_forceMitigation_forProcess_withPercentage_withSeconds_withPenaltyBoxDuration_withHandler___block_invoke_187(uint64_t a1)
{
  v17 = 1;
  v16 = 5;
  v2 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
  [v2 clearRestrictionsForProcess:*(*(*(a1 + 72) + 8) + 40)];

  [*(*(*(a1 + 72) + 8) + 40) setIssueType:0];
  [*(*(*(a1 + 72) + 8) + 40) setMitigationReason:5];
  if (*(a1 + 88) == 1)
  {
    if ([*(a1 + 32) longValue] != -1)
    {
      [*(*(*(a1 + 72) + 8) + 40) setPenaltyBoxDurationMins:{objc_msgSend(*(a1 + 32), "longValue")}];
    }

    v17 = 2;
    v16 = 5;
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 72) + 8) + 40);
    v15 = 0;
    [v3 putIntoPenaltyBoxForCSProcess:v4 coalitionID:objc_msgSend(v4 withMitigationDecisionType:"lastCoalitionID") withMitigationDecisionReason:&v17 withError:{&v16, &v15}];

    goto LABEL_5;
  }

  if (*(a1 + 89) == 1 && [*(a1 + 48) longValue] == -1 && objc_msgSend(*(a1 + 56), "longValue") == -1)
  {
    v17 = 1;
    v16 = 5;
    v9 = *(a1 + 40);
    v10 = *(*(*(a1 + 72) + 8) + 40);
    v11 = [v10 lastPid];
    v12 = [*(*(*(a1 + 72) + 8) + 40) lastCoalitionID];
    v14 = 0;
    [v9 killProcess:v10 pid:v11 coalitionID:v12 issueType:0 withMitigationDecisionType:&v17 withMitigationDecisionReason:&v16 withError:&v14];
    v13 = v14;
    (*(*(a1 + 64) + 16))();

LABEL_5:
    v5 = &unk_28570AC98;
    v6 = &unk_28570AC98;
    goto LABEL_16;
  }

  if ([*(a1 + 48) longValue] == -1)
  {
    v5 = &unk_28570AC98;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if ([*(a1 + 56) longValue] == -1)
  {
    v6 = &unk_28570AC98;
  }

  else
  {
    v6 = *(a1 + 56);
  }

  [*(*(*(a1 + 72) + 8) + 40) setCpuThreshold:v5];
  [*(*(*(a1 + 72) + 8) + 40) setCpuTimeWindow:v6];
  v7 = [CSRestrictionManager sharedInstanceWithDataProvider:0];
  v8 = [v7 defaultRestriction];
  *(*(*(a1 + 80) + 8) + 24) = [v8 applyToProcess:*(*(*(a1 + 72) + 8) + 40)];

LABEL_16:
}

- (void)clearTargetProcessState
{
  v3 = getMainQueue();
  dispatch_assert_queue_V2(v3);

  if (gTargetProcess)
  {
    v4 = [(CSProcessManager *)self->_processManager getProcessForProcessName:?];
    if (v4)
    {
      penaltyBoxProcesses = self->_penaltyBoxProcesses;
      v9 = v4;
      v6 = [v4 uuid];
      v7 = [(NSMutableDictionary *)penaltyBoxProcesses objectForKeyedSubscript:v6];

      v4 = v9;
      if (v7)
      {
        v8 = [v9 uuid];
        [(CSMitigationManager *)self removeProcessFromPenaltyBox:v8 forReason:1];

        v4 = v9;
      }
    }
  }
}

- (void)_init
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCPUDetectionViolation:coalitionID:pid:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getProcessPathForPID:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *__error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleDetectorViolation:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDetectorViolation:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDetectionViolation:(void *)a1 forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDetectionViolation:forCSProcess:coalitionID:coalitionName:pid:startTime:endTime:forcedMitigation:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkKnownViolationByProcess:withStartTime:withEndTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleProcessStart:(uint64_t)a3 withMitigationReason:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 136316930;
  v8 = PEIssueTypeString([a2 issueType]);
  v9 = 2080;
  v10 = PEMitigationTypeString([a2 mitigationType]);
  v11 = 2080;
  v12 = PEReasonString([a2 mitigationReason]);
  v13 = 1024;
  v14 = [a2 cpuFatalCnt];
  v15 = 1024;
  v16 = [a2 cpuNonFatalCnt];
  v17 = 1024;
  v18 = [a2 exitsCnt];
  v19 = 1024;
  v20 = [a2 penaltyBoxCnt];
  v21 = 2112;
  v22 = a3;
  _os_log_debug_impl(&dword_243DC3000, v5, OS_LOG_TYPE_DEBUG, "handleProcessStart: IssueType:%s MitigationType:%s MitigationReason:%s cpuFatalCnt:%u cpu_non_fatal_cnt:%u exitsCnt:%u penaltyBoxCnt:%u for process %@", &v7, 0x42u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleProcessStart:withMitigationReason:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)policyMitigationsEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:withCoalitionName:withReason:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:(void *)a2 withReason:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_7() issueType];
  v11 = [a2 processName];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:withCoalitionName:withReason:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.6(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v9 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:(void *)a2 withReason:.cold.7(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_7() cpuFatalCnt];
  v5 = [a2 processName];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x1Cu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:(void *)a2 withReason:.cold.8(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_7() cpuNonFatalCnt];
  v5 = [a2 processName];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x1Cu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.9(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:(void *)a1 withCoalitionName:withReason:.cold.10(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)decideMitigation:withCoalitionName:withReason:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)checkOverridesForProcess:penaltyBoxDuration:cpuThreshold:timeWindow:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)killProcess:(uint64_t)a3 pid:coalitionID:issueType:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = *__error();
  v7 = __error();
  strerror(*v7);
  v8 = [a2 processName];
  v10[0] = 67109890;
  v10[1] = v6;
  OUTLINED_FUNCTION_8();
  v11 = 2048;
  v12 = a3;
  _os_log_error_impl(&dword_243DC3000, v5, OS_LOG_TYPE_ERROR, "killProcess: terminate_with_payload failed %d (%s) for process:%@ (%llu)", v10, 0x26u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)putIntoPenaltyBoxForCSProcess:(void *)a1 coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() processName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)putIntoPenaltyBoxForCSProcess:coalitionID:withMitigationDecisionType:withMitigationDecisionReason:withError:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkPenaltyBoxProcessesLifecycle:withMitigationReason:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)dayChangedNotificationReceived:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateIPSFileForProcess:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v10 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v9 = [OUTLINED_FUNCTION_10() processName];
  [v0 violationPid];
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateIPSFileForProcess:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v11 = [OUTLINED_FUNCTION_7() processName];
  [a2 violationPid];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logMitigationToPowerLogForProcess:withPid:withCoalitionID:withIssueType:withMitigationType:withReason:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPUViolationToPowerLog:pid:coalitionName:endTime:observedValue:observationWindow:limitValue:limitWindow:fatal:mitigationType:mitigationReason:withError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logCPUViolationToPowerLogWithPayload:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logMitigationAsSignpost:(void *)a1 withPid:(void *)a2 withIssueType:withMitigationType:withReason:withPenaltyBoxEndTime:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *__error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);

  v8 = *MEMORY[0x277D85DE8];
}

void __63__CSMitigationManager_forceCPUViolationForProcess_withHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_243DC3000, v1, OS_LOG_TYPE_ERROR, "forceMitigation: Unknown mitigation: %@ for process:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)forceMitigation:(uint8_t *)buf forProcess:(os_log_t)log withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.4(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 24);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_243DC3000, log, OS_LOG_TYPE_ERROR, "forceMitigation: Attempted applying thresholds on invalid PID for process:%@ (%d)", buf, 0x12u);
}

- (void)forceMitigation:forProcess:withPercentage:withSeconds:withPenaltyBoxDuration:withHandler:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end