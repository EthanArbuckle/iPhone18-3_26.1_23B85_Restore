@interface DTActivityTraceTapLocalDelegate
- (DTActivityTraceTapLocalDelegate)initWithConfig:(id)a3;
- (id)noticeForRecordingMode:(unint64_t)a3 isAllProcesses:(BOOL)a4 lossCount:(unint64_t)a5;
- (id)validateConfig;
- (void)_handleHARExternalNotificationChange;
- (void)_handleStopOfHARRecordingCausedByUser;
- (void)_setupHARDisabledByExternalClientNotifications;
- (void)_tearDownHARDisabledNotifications;
- (void)dealloc;
- (void)fetchDataForReason:(unint64_t)a3 block:(id)a4;
- (void)initializeHARTimer;
- (void)logLoaderNeedsFetchNow:(id)a3;
- (void)setTap:(id)a3;
- (void)start;
- (void)stop;
- (void)updateHARLogPrefsWithIsEnabled:(BOOL)a3;
@end

@implementation DTActivityTraceTapLocalDelegate

- (DTActivityTraceTapLocalDelegate)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTActivityTraceTapLocalDelegate;
  v6 = [(DTActivityTraceTapLocalDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      sub_24802EC58();
    }

    objc_storeStrong(&v6->_config, a3);
    v7->_harLoggingNotificationToken = -1;
  }

  return v7;
}

- (void)dealloc
{
  [(XRMobileAgentDock *)self->_dock abandon];
  v3.receiver = self;
  v3.super_class = DTActivityTraceTapLocalDelegate;
  [(DTActivityTraceTapLocalDelegate *)&v3 dealloc];
}

- (id)validateConfig
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(DTActivityTraceTapConfig *)self->_config predicateString];
  v4 = v3;
  if (v3 && ([v3 isEqualToString:&stru_285A19CB8] & 1) == 0)
  {
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:v4];

    if (v16)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_5;
    }

    v22 = [DTTapStatusMemo alloc];
    v5 = @"Internal error contains no diagnostics";
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Predicate supplied to logging system appears invalid. %@.", @"Internal error contains no diagnostics"];
    v6 = [(DTTapStatusMemo *)v22 initWithStatus:2147484148 notice:v4];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_5:
  if (![(DTActivityTraceTapConfig *)self->_config mode])
  {
    v7 = SecTaskCreateFromSelf(0);
    if (v7)
    {
      v23 = v5;
      cf = v7;
      error = 0;
      v8 = SecTaskCopyValuesForEntitlements(v7, &unk_285A36A08, &error);
      if (v8)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [&unk_285A36A20 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          v10 = *v26;
          v11 = MEMORY[0x277CBEC38];
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(&unk_285A36A20);
              }

              v13 = *(*(&v25 + 1) + 8 * i);
              v14 = [(__CFDictionary *)v8 objectForKeyedSubscript:v13];
              v15 = [v14 isEqual:v11];

              if ((v15 & 1) == 0)
              {
                v17 = [DTTapStatusMemo alloc];
                v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recording service missing '%@' entitlement.", v13];
                v19 = [(DTTapStatusMemo *)v17 initWithStatus:2147484148 notice:v18];

                v6 = v19;
                goto LABEL_20;
              }
            }

            v9 = [&unk_285A36A20 countByEnumeratingWithState:&v25 objects:v30 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      CFRelease(cf);
      v5 = v23;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setTap:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_24802EC84();
  }

  v5 = v4;
  objc_storeWeak(&self->_tap, v4);
}

- (void)logLoaderNeedsFetchNow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tap);
  v3 = [WeakRetained fetchDataNow];
}

- (void)_setupHARDisabledByExternalClientNotifications
{
  p_harLoggingNotificationToken = &self->_harLoggingNotificationToken;
  if (self->_harLoggingNotificationToken == -1)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_get_global_queue(25, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_247FB7BF4;
    v5[3] = &unk_278EF2F20;
    objc_copyWeak(&v6, &location);
    v4 = notify_register_dispatch("com.apple.CFNetwork.har-capture-update", p_harLoggingNotificationToken, v3, v5);

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24802ECB0();
      }
    }

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_tearDownHARDisabledNotifications
{
  harLoggingNotificationToken = self->_harLoggingNotificationToken;
  if (harLoggingNotificationToken != -1)
  {
    notify_cancel(harLoggingNotificationToken);
    self->_harLoggingNotificationToken = -1;
  }
}

- (void)_handleStopOfHARRecordingCausedByUser
{
  v5 = [[DTTapStatusMemo alloc] initWithStatus:2147484148 notice:@"HTTP Recording stopped by the target device"];
  WeakRetained = objc_loadWeakRetained(&self->_tap);
  v4 = [WeakRetained _handleStatusMemo:v5];

  [(DTActivityTraceTapLocalDelegate *)self _tearDownHARDisabledNotifications];
  [(DVTDeviceGlobalStatusIndicator *)self->_recordingStatusIndicator deactivate];
  [(DTActivityTraceTapLocalDelegate *)self tearDownHARTimer];
  [(DTActivityTraceTapLocalDelegate *)self updateHARLogPrefsWithIsEnabled:0];
}

- (void)_handleHARExternalNotificationChange
{
  v3 = *MEMORY[0x277CBF010];
  v4 = CFPreferencesCopyValue(@"har-capture-global", @"com.apple.CFNetwork", @"mobile", *MEMORY[0x277CBF010]);
  v5 = CFPreferencesCopyValue(@"har-capture-pid-specific", @"com.apple.CFNetwork", @"mobile", v3);
  if (v4 | v5)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {

    [(DTActivityTraceTapLocalDelegate *)self _handleStopOfHARRecordingCausedByUser];
  }
}

- (void)initializeHARTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  harLoggingTimer = self->_harLoggingTimer;
  self->_harLoggingTimer = v3;

  v5 = self->_harLoggingTimer;
  v6 = dispatch_walltime(0, 55000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v7 = self->_harLoggingTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_247FB7ED0;
  handler[3] = &unk_278EF1070;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_harLoggingTimer);
}

- (void)updateHARLogPrefsWithIsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x277D24458]) initWithName:@"com.apple.CFNetwork"];
  v6 = [objc_alloc(MEMORY[0x277D24450]) initWithName:@"HAR" subsystem:v5];
  v7 = [objc_alloc(MEMORY[0x277D24458]) initWithName:@"com.apple.CFNetwork.Instruments"];
  v8 = [objc_alloc(MEMORY[0x277D24450]) initWithName:@"HTTP Transactions" subsystem:v7];
  if (v3)
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0x100000];
    v11 = *MEMORY[0x277CBF010];
    CFPreferencesSetValue(@"har-body-size-limit", v10, @"com.apple.CFNetwork", @"mobile", *MEMORY[0x277CBF010]);
    if ([(DTActivityTraceTapConfig *)self->_config targetPID]== -3)
    {
      CFPreferencesSetValue(@"har-capture-global", v9, @"com.apple.CFNetwork", @"mobile", v11);
      v12 = 0;
      v13 = @"har-capture-pid-specific";
    }

    else
    {
      CFPreferencesSetValue(@"har-capture-pid-specific", [MEMORY[0x277CCABB0] numberWithInt:{-[DTActivityTraceTapConfig targetPID](self->_config, "targetPID")}], @"com.apple.CFNetwork", @"mobile", v11);
      v13 = @"har-capture-global";
      v12 = v9;
    }

    CFPreferencesSetValue(@"har-capture-pid-date", v12, @"com.apple.CFNetwork", @"mobile", v11);
    CFPreferencesSetValue(v13, 0, @"com.apple.CFNetwork", @"mobile", v11);
    if (notify_post("com.apple.CFNetwork.har-capture-update") && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to post notification to start HAR logging", buf, 2u);
    }

    [v6 setPersistedLevel:0];
    [v6 setEnabledLevel:2];
    [v8 setSignpostEnabled:1];
  }

  else
  {
    v14 = *MEMORY[0x277CBF010];
    CFPreferencesSetValue(@"har-body-size-limit", 0, @"com.apple.CFNetwork", @"mobile", *MEMORY[0x277CBF010]);
    CFPreferencesSetValue(@"har-capture-global", 0, @"com.apple.CFNetwork", @"mobile", v14);
    CFPreferencesSetValue(@"har-capture-pid-specific", 0, @"com.apple.CFNetwork", @"mobile", v14);
    CFPreferencesSetValue(@"har-capture-pid-date", 0, @"com.apple.CFNetwork", @"mobile", v14);
    if (notify_post("com.apple.CFNetwork.har-capture-update") && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to post notification to stop HAR logging", v15, 2u);
    }

    [v6 reset];
    [v8 reset];
  }
}

- (void)start
{
  v82[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  dock = self->_dock;
  self->_dock = v3;

  v5 = objc_opt_new();
  loaderStop = self->_loaderStop;
  self->_loaderStop = v5;

  [(DTOSLogLoader *)self->_loaderStop setDelegate:self];
  v7 = objc_opt_new();
  shuttle = self->_shuttle;
  self->_shuttle = v7;

  [(DTActivityTraceTapLocalShuttle *)self->_shuttle setLoaderStop:self->_loaderStop];
  [(DTActivityTraceTapLocalShuttle *)self->_shuttle setOwnersDock:self->_dock];
  v9 = [(DTActivityTraceTapConfig *)self->_config predicateString];
  if (v9 && (-[DTActivityTraceTapConfig predicateString](self->_config, "predicateString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 length], v10, v9, v11))
  {
    v12 = MEMORY[0x277CCAC30];
    v13 = [(DTActivityTraceTapConfig *)self->_config predicateString];
    v70 = [v12 predicateWithFormat:v13];
  }

  else
  {
    v70 = 0;
  }

  if ([(DTActivityTraceTapConfig *)self->_config onlySignposts])
  {
    v14 = 1;
  }

  else if ([(DTActivityTraceTapConfig *)self->_config signpostsAndLogs])
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = [(DTActivityTraceTapConfig *)self->_config excludeInfo];
  if ([(DTActivityTraceTapConfig *)self->_config excludeDebug])
  {
    v16 = v15 | 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [(DTActivityTraceTapConfig *)self->_config includeSenderInfo];
  if ([(DTActivityTraceTapConfig *)self->_config includeWallTime])
  {
    v17 |= 2uLL;
  }

  if ([(DTActivityTraceTapConfig *)self->_config includeEmitLocation])
  {
    v17 |= 2uLL;
  }

  v18 = [(DTActivityTraceTapConfig *)self->_config mode];
  config = self->_config;
  v67 = v16;
  v68 = v14;
  if (v18)
  {
    v20 = [(DTActivityTraceTapConfig *)config mode];
    v21 = 2 * (v20 == 1);
    if (v20 == 2)
    {
      v21 = 3;
    }

    v66 = v21;
    v22 = [(DTActivityTraceTapConfig *)self->_config processDetectionCallback];
    [(DTActivityTraceTapLocalShuttle *)self->_shuttle setProcessDetectionCallback:v22];
  }

  else
  {
    v23 = [(DTTapConfig *)config bufferMode];
    switch(v23)
    {
      case 2:
        [(DTActivityTraceTapLocalShuttle *)self->_shuttle setFetchWindow:([(DTTapConfig *)self->_config windowSize]* 1.2) / 1000000000.0];
        break;
      case 1:
        v24 = objc_opt_new();
        [v24 timeIntervalSince1970];
        [(DTActivityTraceTapLocalShuttle *)self->_shuttle setFetchStartTime:?];

        break;
      case 0:
        v66 = 1;
        goto LABEL_28;
    }

    v66 = 0;
  }

LABEL_28:
  v65 = [DTOSLogLoaderConfiguration alloc];
  v64 = [(DTActivityTraceTapConfig *)self->_config enableBacktraceReplacement];
  v63 = [(DTActivityTraceTapConfig *)self->_config machTimebase];
  v62 = [(DTActivityTraceTapConfig *)self->_config machContinuousStart];
  v25 = [(DTActivityTraceTapConfig *)self->_config importedFileURL];
  v26 = [(DTActivityTraceTapConfig *)self->_config importForcedStartDate];
  v27 = [(DTActivityTraceTapConfig *)self->_config importForcedEndDate];
  v28 = [(DTActivityTraceTapConfig *)self->_config processDetectionCallback];
  v29 = [(DTActivityTraceTapConfig *)self->_config dynamicTracingEnabledSubsystems];
  v30 = [(DTActivityTraceTapConfig *)self->_config loggingSubsystemCategoryPairsToEnable];
  v31 = [(DTActivityTraceTapConfig *)self->_config signpostSubsystemCategoryPairsToEnable];
  LOBYTE(v61) = v28 != 0;
  v32 = [(DTOSLogLoaderConfiguration *)v65 initWithFilterPredicate:v70 signpostConfig:v68 loaderExclusions:v67 columnInclusions:v17 mode:v66 enableBacktraceReplacement:v64 machTimebase:v63 machContinuousStart:v62 importedFileURL:v25 importForcedStartDate:v26 importForcedEndDate:v27 trackPidToExecNameMapping:v61 dynamicTracingEnabledSubsystems:v29 logSubsystemCategoryPairsToEnable:v30 signpostSubsystemCategoryPairsToEnable:v31];

  v69 = v32;
  [(DTActivityTraceTapLocalShuttle *)self->_shuttle setConfiguration:v32];
  if ([(DTActivityTraceTapConfig *)self->_config enableHTTPArchiveLogging])
  {
    objc_initWeak(&location, self);
    v33 = [[DVTDeviceGlobalStatusIndicatorConfiguration alloc] initWithTitle:@"HTTP Traffic is being recorded" informationText:@"Recordings of HTTP traffic can contain sensitive information. If you did not ask to record HTTP traffic, tap Stop Recording."];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_247FB8BA4;
    v78[3] = &unk_278EF1238;
    objc_copyWeak(&v79, &location);
    v34 = [DVTDeviceGlobalStatusIndicatorFactory deviceStatusIndicatorWithConfiguration:v33 stoppedByUserBlock:v78];
    recordingStatusIndicator = self->_recordingStatusIndicator;
    self->_recordingStatusIndicator = v34;

    [(DVTDeviceGlobalStatusIndicator *)self->_recordingStatusIndicator activateWithCompletionBlock:0];
    [(DTActivityTraceTapLocalDelegate *)self initializeHARTimer];
    [(DTActivityTraceTapLocalDelegate *)self updateHARLogPrefsWithIsEnabled:1];
    [(DTActivityTraceTapLocalDelegate *)self _setupHARDisabledByExternalClientNotifications];
    objc_destroyWeak(&v79);

    objc_destroyWeak(&location);
  }

  if ([(DTActivityTraceTapConfig *)self->_config enablePowerLog])
  {
    v36 = [MEMORY[0x277D3A0F0] defaultConfiguration];
    [v36 setMode:0];
    [v36 setUpdateInterval:1.0];
    [v36 setEmitTracingSignposts:1];
    [v36 setIsHeadless:1];
    [v36 setUpdateDelegate:0];
    if ([MEMORY[0x277D3A0F8] isMonitoring])
    {
      [MEMORY[0x277D3A0F8] stopMonitoring];
    }

    if ([(DTActivityTraceTapConfig *)self->_config isTargetAllProcesses])
    {
      v77 = 0;
      v37 = [MEMORY[0x277D3A0F8] startMonitoringSystemMetricsWithConfig:v36 error:&v77];
      v38 = v77;
      if ((v37 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24802EDC0(v38);
      }
    }

    else
    {
      v39 = [(DTActivityTraceTapConfig *)self->_config targetPID];
      v40 = MEMORY[0x277D3A0F8];
      v41 = [MEMORY[0x277CCABB0] numberWithInt:v39];
      v82[0] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
      v76 = 0;
      v43 = [v40 startMonitoringProcessesWithPID:v42 config:v36 error:&v76];
      v38 = v76;

      if ((v43 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_24802ED40(v38);
      }
    }
  }

  v44 = [DTTapStatusMemo alloc];
  v45 = [(DTTapStatusMemo *)v44 initWithStatus:DTActivityTraceTapDeviceTimeInfoMemoStatusCode | 0x90000000 notice:@"Time Mapping"];
  v74 = 0;
  info = 0;
  v72 = 0;
  v73 = 0;
  location = 0;
  times = mach_get_times();
  if (!(times | mach_timebase_info(&info)))
  {
    v80[0] = DTActivityTraceTapDeviceTimeIntervalSince1970Key;
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:v72 / 1000000000.0 + location];
    v81[0] = v47;
    v80[1] = DTActivityTraceTapDeviceMachContinuousTimeKey;
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73];
    v81[1] = v48;
    v80[2] = DTActivityTraceTapDeviceMachAbsoluteTimeKey;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74];
    v81[2] = v49;
    v80[3] = DTActivityTraceTapDeviceMachTimebaseNumeratorKey;
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.numer];
    v81[3] = v50;
    v80[4] = DTActivityTraceTapDeviceMachTimebaseDenominatorKey;
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.denom];
    v81[4] = v51;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:5];
    [(DTTapStatusMemo *)v45 setInfo:v52];

    WeakRetained = objc_loadWeakRetained(&self->_tap);
    v54 = [WeakRetained _handleStatusMemo:v45];
  }

  [(XRMobileAgent *)self->_shuttle activateWithFinalDestination:self->_dock ticket:0];
  if ([(XRMobileAgentDock *)self->_dock waitForAgentToDock])
  {
    v55 = [(XRMobileAgentDock *)self->_dock dockedAgent];
    if (v55 != self->_shuttle)
    {
      sub_24802EE40();
    }

    if (![(DTActivityTraceTapLocalShuttle *)self->_shuttle didPrepare])
    {
      v56 = [[DTTapStatusMemo alloc] initWithStatus:2147484563 notice:@"Failed to prepare the logging system for recording."];
      goto LABEL_49;
    }

    [(DTActivityTraceTapLocalShuttle *)self->_shuttle setShouldStart:1];
    [(XRMobileAgentDock *)self->_dock releaseDockedAgent];
    [(XRMobileAgentDock *)self->_dock waitForAgentToDock];
    if (![(DTActivityTraceTapLocalShuttle *)self->_shuttle didStart])
    {
      v56 = [[DTTapStatusMemo alloc] initWithStatus:2147484558 notice:@"Failed to start recording logging system data."];
LABEL_49:
      v57 = v56;
      v58 = objc_loadWeakRetained(&self->_tap);
      v59 = [v58 _handleStatusMemo:v57];
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = [(XRMobileAgentDock *)self->_dock dockedAgent];

  if (!v3)
  {
    [(XRMobileAgentDock *)self->_dock waitForAgentToDock];
  }

  v4 = [(XRMobileAgentDock *)self->_dock dockedAgent];

  if (v4)
  {
    [(DTActivityTraceTapLocalShuttle *)self->_shuttle setShouldStop:1];
    [(XRMobileAgentDock *)self->_dock releaseDockedAgent];
  }

  [(XRMobileAgentDock *)self->_dock waitForAgentToDock];
  v5 = [(XRMobileAgentDock *)self->_dock dockedAgent];

  if (v5)
  {
    if (![(DTActivityTraceTapLocalShuttle *)self->_shuttle didStop])
    {
      v6 = [[DTTapStatusMemo alloc] initWithStatus:2281702326 notice:@"Failed to stop the logging system recording."];
      WeakRetained = objc_loadWeakRetained(&self->_tap);
      v8 = [WeakRetained _handleStatusMemo:v6];
    }

    [(XRMobileAgentDock *)self->_dock releaseDockedAgent];
    [(XRMobileAgentDock *)self->_dock waitForAgentToDock];
  }

  else
  {
    v9 = [[DTTapStatusMemo alloc] initWithStatus:2281702346 notice:@"Internal agent failure."];
    v10 = objc_loadWeakRetained(&self->_tap);
    v11 = [v10 _handleStatusMemo:v9];
  }

  if ([(DTActivityTraceTapConfig *)self->_config enableHTTPArchiveLogging])
  {
    [(DTActivityTraceTapLocalDelegate *)self _tearDownHARDisabledNotifications];
    [(DVTDeviceGlobalStatusIndicator *)self->_recordingStatusIndicator deactivate];
    [(DTActivityTraceTapLocalDelegate *)self tearDownHARTimer];
    [(DTActivityTraceTapLocalDelegate *)self updateHARLogPrefsWithIsEnabled:0];
  }

  if ([(DTActivityTraceTapConfig *)self->_config enablePowerLog])
  {
    v12 = MEMORY[0x277D3A0F8];

    [v12 stopMonitoring];
  }
}

- (void)fetchDataForReason:(unint64_t)a3 block:(id)a4
{
  v45 = a4;
  if (a3 == 2)
  {
    if (![(DTTapConfig *)self->_config discardHeartbeatsWhenPossible])
    {
      +[DTOSLogLoader heartbeat];
    }

    v9 = 1;
  }

  else
  {
    if (!a3)
    {
      v6 = [DTActivityTraceTapMemo alloc];
      v7 = objc_opt_new();
      v8 = [(DTActivityTraceTapMemo *)v6 initWithData:v7];

      [(DTTapDataMemo *)v8 setFinalMemo:1];
      v45[2](v45, v8, 1);
      goto LABEL_51;
    }

    v9 = 0;
  }

  v10 = [(XRMobileAgentDock *)self->_dock dockedAgent];

  if (!v10)
  {
    [(XRMobileAgentDock *)self->_dock waitForAgentToDock];
  }

  v11 = [(XRMobileAgentDock *)self->_dock dockedAgent];

  if (v11)
  {
    v12 = 0;
    v8 = 0;
    v44 = 0;
    while (1)
    {
      [(DTActivityTraceTapLocalShuttle *)self->_shuttle setShouldFetch:1];
      [(XRMobileAgentDock *)self->_dock releaseDockedAgent];
      [(XRMobileAgentDock *)self->_dock waitForAgentToDock];
      v13 = [(DTActivityTraceTapLocalShuttle *)self->_shuttle failureReason];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 localizedFailureReason];

        if (v15)
        {
          [v14 localizedFailureReason];
        }

        else
        {
          [v14 localizedDescription];
        }
        v16 = ;
        v17 = [DTTapStatusMemo alloc];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fatal logging system error: %@", v16];
        v19 = [(DTTapStatusMemo *)v17 initWithStatus:2147484548 notice:v18];

        v45[2](v45, v19, 0);
      }

      v12 += [(DTActivityTraceTapLocalShuttle *)self->_shuttle lostEventsSinceLastVisit];
      if (v9)
      {
        v20 = [(DTActivityTraceTapLocalShuttle *)self->_shuttle nextOutputBytes];

        if (v20)
        {
          v21 = [(DTActivityTraceTapLocalShuttle *)self->_shuttle nextOutputBytes];
          v22 = v21;
          if (v8)
          {
            [(DTActivityTraceTapMemo *)v8 appendData:v21];
          }

          else
          {
            v8 = [(DTActivityTraceTapMemo *)v21 mutableCopy];
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v12)
        {
          v23 = [DTTapStatusMemo alloc];
          v24 = [(DTActivityTraceTapLocalDelegate *)self noticeForRecordingMode:[(DTTapConfig *)self->_config bufferMode] isAllProcesses:[(DTActivityTraceTapConfig *)self->_config isTargetAllProcesses] lossCount:v12];
          v25 = [(DTTapStatusMemo *)v23 initWithStatus:2281701476 notice:v24];

          v45[2](v45, v25, 0);
        }

        if ([(DTActivityTraceTapLocalShuttle *)self->_shuttle encounteredBackdatedEvent])
        {
          if (!self->_sentOutBackdatedEventsWarning)
          {
            WeakRetained = objc_loadWeakRetained(&self->_tap);
            v27 = [WeakRetained config];
            v28 = [v27 bufferMode];

            if (!v28)
            {
              v29 = [[DTTapStatusMemo alloc] initWithStatus:2281701477 notice:@"Signpost intervals with backdated timestamps were emitted that are not visualized on the timeline until immediate mode recording is stopped."];
              v45[2](v45, v29, 0);
              self->_sentOutBackdatedEventsWarning = 1;
            }
          }
        }

        v30 = [(DTActivityTraceTapLocalShuttle *)self->_shuttle nextOutputBytes];
        v31 = [v30 length];

        if (v31)
        {
          v32 = [DTActivityTraceTapMemo alloc];
          v33 = [(DTActivityTraceTapLocalShuttle *)self->_shuttle nextOutputBytes];
          v22 = [(DTActivityTraceTapMemo *)v32 initWithData:v33];

          [(DTTapDataMemo *)v22 setFinalMemo:[(DTActivityTraceTapLocalShuttle *)self->_shuttle isFetchComplete]];
          [(DTActivityTraceTapMemo *)v22 setLastMachContinuousTimeSeen:[(DTActivityTraceTapLocalShuttle *)self->_shuttle lastMachContinuousTime]];
          v45[2](v45, v22, [(DTTapDataMemo *)v22 finalMemo]);
          v12 = 0;
          v44 = 1;
LABEL_31:

          goto LABEL_32;
        }

        v12 = 0;
      }

LABEL_32:
      [(DTActivityTraceTapLocalShuttle *)self->_shuttle setNextOutputBytes:0];
      [(DTActivityTraceTapLocalShuttle *)self->_shuttle setLostEventsSinceLastVisit:0];

      if ([(DTActivityTraceTapLocalShuttle *)self->_shuttle isFetchComplete])
      {
        [(DTActivityTraceTapLocalShuttle *)self->_shuttle setShouldFetch:0];
        if (v8)
        {
          v34 = v9;
        }

        else
        {
          v34 = 0;
        }

        if (v34 == 1)
        {
          v35 = v44;
          if ([(DTActivityTraceTapMemo *)v8 length])
          {
            v36 = [[DTActivityTraceTapMemo alloc] initWithData:v8];
            v35 = 1;
            [(DTTapDataMemo *)v36 setFinalMemo:1];
            [(DTActivityTraceTapMemo *)v36 setLastMachContinuousTimeSeen:[(DTActivityTraceTapLocalShuttle *)self->_shuttle lastMachContinuousTime]];
            v45[2](v45, v36, 1);
          }
        }

        else
        {
          v35 = v44;
        }

        if (v12)
        {
          v37 = v9;
        }

        else
        {
          v37 = 0;
        }

        if (v37 == 1)
        {
          v38 = [DTTapStatusMemo alloc];
          v39 = [(DTActivityTraceTapLocalDelegate *)self noticeForRecordingMode:[(DTTapConfig *)self->_config bufferMode] isAllProcesses:[(DTActivityTraceTapConfig *)self->_config isTargetAllProcesses] lossCount:v12];
          v40 = [(DTTapStatusMemo *)v38 initWithStatus:2281701476 notice:v39];

          v41 = objc_loadWeakRetained(&self->_tap);
          v42 = [v41 _handleStatusMemo:v40];
        }

        if ((v35 & 1) == 0)
        {
          if (a3 == 2)
          {
            v43 = [[DTTapHeartbeatMemo alloc] initWithTimestamp:[(DTActivityTraceTapLocalShuttle *)self->_shuttle lastMachContinuousTime]];
LABEL_50:
            v45[2](v45, v43, 1);
          }

          else if (a3 == 1)
          {
            v43 = [[DTActivityTraceTapMemo alloc] initWithData:v8];
            [(DTTapHeartbeatMemo *)v43 setFinalMemo:1];
            goto LABEL_50;
          }
        }

LABEL_51:

        break;
      }
    }
  }
}

- (id)noticeForRecordingMode:(unint64_t)a3 isAllProcesses:(BOOL)a4 lossCount:(unint64_t)a5
{
  if (a3 - 1 >= 2)
  {
    if (!a3)
    {
      v6 = @"%llu log/signpost messages lost due to high rates in live mode recording. Try windowed recording mode.";
      goto LABEL_7;
    }
  }

  else if (a4)
  {
    v6 = @"%llu log/signpost messages lost due to high rates. Try target specific process.";
    goto LABEL_7;
  }

  v6 = @"%llu log/signpost messages lost due to high rates";
LABEL_7:
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, a5];

  return v7;
}

@end