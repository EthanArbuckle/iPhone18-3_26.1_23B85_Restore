@interface CSTriggerManager
+ (id)sharedInstance;
+ (void)run;
- (BOOL)checkCpuPercentageAndInvokeIssueDetection:(id)a3 windowStartDate:(id)a4;
- (BOOL)checkDrainAndInvokeIssueDetection:(id)a3;
- (BOOL)cpuPercentageTriggerForWindowEndDate:(id)a3 windowStartDate:(id)a4 score:(double *)a5;
- (id)_init;
- (id)getTriggerInterval;
- (int)getDetectionLookbackDuration;
- (int)getDrainPercentage:(id)a3;
- (void)_start;
- (void)modifyTriggerInterval:(id)a3;
- (void)processTimerFiredAction;
@end

@implementation CSTriggerManager

+ (void)run
{
  if (run_onceToken != -1)
  {
    +[CSTriggerManager run];
  }
}

void __23__CSTriggerManager_run__block_invoke()
{
  v0 = +[CSTriggerManager sharedInstance];
  [v0 _start];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CSTriggerManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __34__CSTriggerManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[CSTriggerManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = CSTriggerManager;
  v2 = [(CSTriggerManager *)&v13 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSTriggerManager"];
    logger = v2->_logger;
    v2->_logger = v3;

    triggerTimer = v2->_triggerTimer;
    v2->_triggerTimer = 0;

    *&v2->_triggerInterval = 1155596288;
    lastTriggerTimerDate = v2->_lastTriggerTimerDate;
    v2->_lastTriggerTimerDate = 0;

    v7 = +[CSPowerlogDBReader sharedInstance];
    powerlogDBReader = v2->_powerlogDBReader;
    v2->_powerlogDBReader = v7;

    v9 = +[CSIssueDetector sharedInstance];
    issueDetector = v2->_issueDetector;
    v2->_issueDetector = v9;

    v11 = v2;
  }

  return v2;
}

- (void)_start
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Started CSTriggerManagerService", buf, 2u);
  }

  v4 = getMainQueue();
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  triggerTimer = self->_triggerTimer;
  self->_triggerTimer = v5;

  v7 = self->_triggerTimer;
  v8 = dispatch_walltime(0, 0);
  dispatch_source_set_timer(v7, v8, (self->_triggerInterval * 1000000000.0), 0x8BB2C97000uLL);
  objc_initWeak(buf, self);
  v9 = self->_triggerTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __26__CSTriggerManager__start__block_invoke;
  handler[3] = &unk_278DF5180;
  objc_copyWeak(&v13, buf);
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_triggerTimer);
  v10 = self->_logger;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_243DC3000, v10, OS_LOG_TYPE_DEFAULT, "Repeating timer for Trigger polling armed.", v11, 2u);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __26__CSTriggerManager__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processTimerFiredAction];
}

- (id)getTriggerInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = getMainQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CSTriggerManager_getTriggerInterval__block_invoke;
  v6[3] = &unk_278DF51A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__CSTriggerManager_getTriggerInterval__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)modifyTriggerInterval:(id)a3
{
  v4 = a3;
  triggerInterval = self->_triggerInterval;
  [v4 floatValue];
  if (triggerInterval != v6)
  {
    v7 = getMainQueue();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__CSTriggerManager_modifyTriggerInterval___block_invoke;
    v8[3] = &unk_278DF51D0;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v7, v8);
  }
}

void __42__CSTriggerManager_modifyTriggerInterval___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 24));
  [*(a1 + 40) floatValue];
  if (v2 == 0.0)
  {
    *(*(a1 + 32) + 12) = *(*(a1 + 32) + 8);
    v3 = *(*(a1 + 32) + 24);
    v4 = dispatch_walltime(0, 0);
    v5 = v3;
    v6 = 1;
  }

  else
  {
    [*(a1 + 40) floatValue];
    *(*(a1 + 32) + 8) = v7;
    v8 = *(*(a1 + 32) + 24);
    v4 = dispatch_walltime(0, 0);
    v6 = (*(*(a1 + 32) + 8) * 1000000000.0);
    v5 = v8;
  }

  dispatch_source_set_timer(v5, v4, v6, 0x8BB2C97000uLL);
  v9 = *(*(a1 + 32) + 24);

  dispatch_resume(v9);
}

- (int)getDetectionLookbackDuration
{
  if (!self->_lastTriggerTimerDate)
  {
    return 10800;
  }

  v2 = self;
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:v2->_lastTriggerTimerDate];
  LODWORD(v2) = v4;

  v5 = (v2 + 3600);
  if (v2 > 18000)
  {
    v5 = 21600.0;
  }

  if (v5 < 10800.0)
  {
    return 10800.0;
  }

  return v5;
}

- (BOOL)checkDrainAndInvokeIssueDetection:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(CSTriggerManager *)self getDrainPercentage:a3];
  if (v4 < 2)
  {
    v11 = +[CSLogger signpostCategory];
    if (os_signpost_enabled(v11))
    {
      v14 = 67240192;
      v15 = v4;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger NonDetection", "Drain Percentage: %{public, name=drainPercentage}d\n", &v14, 8u);
    }

    v7 = self;
    v8 = v4;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = [(CSTriggerManager *)self getDetectionLookbackDuration];
    [(CSIssueDetector *)self->_issueDetector detectWithLookbackDuration:v5];
    v6 = +[CSLogger signpostCategory];
    if (os_signpost_enabled(v6))
    {
      v14 = 67240192;
      v15 = v4;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger Detection", "Drain Percentage: %{public, name=drainPercentage}d\n", &v14, 8u);
    }

    v7 = self;
    v8 = v4;
    v9 = 1;
    v10 = v5;
  }

  [(CSTriggerManager *)v7 logTriggerToPPS:v8 cpuPercentage:0xFFFFFFFFLL triggeredDetection:v9 triggeredType:1 detectionLookbackDuration:v10];
  result = v4 > 1;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)getDrainPercentage:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_10;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Trigger DB query returned non empty results. Processing", v14, 2u);
  }

  if ([v4 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"BatteryDrain"];
      v10 = [MEMORY[0x277CBEB68] null];

      if (v9 != v10)
      {
        v11 = [v4 objectAtIndexedSubscript:v6];
        v12 = [v11 objectForKeyedSubscript:@"BatteryDrain"];
        v7 = [v12 intValue];

        if (v7 > 1)
        {
          break;
        }
      }

      ++v6;
    }

    while ([v4 count] > v6);
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

- (BOOL)checkCpuPercentageAndInvokeIssueDetection:(id)a3 windowStartDate:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0.0;
  v5 = [(CSTriggerManager *)self cpuPercentageTriggerForWindowEndDate:a3 windowStartDate:a4 score:&v11];
  v6 = +[CSLogger signpostCategory];
  v7 = os_signpost_enabled(v6);
  if (v5)
  {
    if (v7)
    {
      *buf = 67240192;
      v13 = v11;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger Detection", "CPU Percentage: %{public, name=percentage}d\n", buf, 8u);
    }

    v8 = [(CSTriggerManager *)self getDetectionLookbackDuration];
    [(CSTriggerManager *)self logTriggerToPPS:0xFFFFFFFFLL cpuPercentage:v11 triggeredDetection:1 triggeredType:2 detectionLookbackDuration:v8];
    [(CSIssueDetector *)self->_issueDetector detectWithLookbackDuration:v8];
  }

  else
  {
    if (v7)
    {
      *buf = 67240192;
      v13 = v11;
      _os_signpost_emit_with_name_impl(&dword_243DC3000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger NonDetection", "CPU Percentage: %{public, name=percentage}d\n", buf, 8u);
    }

    [(CSTriggerManager *)self logTriggerToPPS:0xFFFFFFFFLL cpuPercentage:v11 triggeredDetection:0 triggeredType:2 detectionLookbackDuration:0xFFFFFFFFLL];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)cpuPercentageTriggerForWindowEndDate:(id)a3 windowStartDate:(id)a4 score:(double *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  powerlogDBReader = self->_powerlogDBReader;
  v9 = a4;
  v10 = a3;
  [(CSPowerlogDBReader *)powerlogDBReader openConnection];
  [(CSPowerlogDBReader *)self->_powerlogDBReader getTotalCPUTimeWithStartDate:v9 andEndDate:v10];
  v12 = v11;
  v13 = [(CSTriggerManager *)self powerlogDBReader];
  v14 = [v13 getAPWakeIntervalListWithStartDate:v9 andEndDate:v10];

  [(CSPowerlogDBReader *)self->_powerlogDBReader closeConnection];
  [v14 durationInSeconds];
  v16 = v15;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134218240;
    v23 = v12;
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "cpuPercentageTrigger: cpuTimeS: %f, apWakeTimeS %f", &v22, 0x16u);
  }

  if (v16 <= 0.0)
  {
    v19 = self->_logger;
    v18 = -1.0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_243DC3000, v19, OS_LOG_TYPE_INFO, "Error totalApWakeTime is 0", &v22, 2u);
    }
  }

  else
  {
    v18 = v12 * 100.0 / v16;
  }

  if (a5)
  {
    *a5 = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18 >= 70.0;
}

- (void)processTimerFiredAction
{
  v18 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Flushing powerlog tables", &v14, 2u);
  }

  PLQueryRegistered();
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:-7200.0];
  v6 = self->_logger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = *&v5;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_243DC3000, v6, OS_LOG_TYPE_DEFAULT, "processTimerFiredAction: Querying DB with time window from: %@ to %@", &v14, 0x16u);
  }

  v7 = +[CSLogger signpostCategory];
  if (os_signpost_enabled(v7))
  {
    triggerInterval = self->_triggerInterval;
    v14 = 134349056;
    v15 = triggerInterval;
    _os_signpost_emit_with_name_impl(&dword_243DC3000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trigger Fired", "Interval: %{public, name=interval}f\n", &v14, 0xCu);
  }

  if (self->_savedTriggerInterval != 0.0)
  {
    self->_savedTriggerInterval = 0.0;
    dispatch_suspend(self->_triggerTimer);
    triggerTimer = self->_triggerTimer;
    v10 = dispatch_walltime(0, (self->_triggerInterval * 1000000000.0));
    dispatch_source_set_timer(triggerTimer, v10, (self->_triggerInterval * 1000000000.0), 0x8BB2C97000uLL);
    dispatch_resume(self->_triggerTimer);
  }

  [(CSTriggerManager *)self detectAndInvokeIssueDetection:v4 slidingWindowStartDate:v5];
  v11 = [MEMORY[0x277CBEAA8] now];
  lastTriggerTimerDate = self->_lastTriggerTimerDate;
  self->_lastTriggerTimerDate = v11;

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __109__CSTriggerManager_logTriggerToPPS_cpuPercentage_triggeredDetection_triggeredType_detectionLookbackDuration___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  logTriggerToPPS_cpuPercentage_triggeredDetection_triggeredType_detectionLookbackDuration__streamID = result;
  return result;
}

@end