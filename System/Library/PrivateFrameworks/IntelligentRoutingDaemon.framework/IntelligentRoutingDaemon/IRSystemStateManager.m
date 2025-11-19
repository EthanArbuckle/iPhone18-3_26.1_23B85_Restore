@interface IRSystemStateManager
- (BOOL)_updateSystemStateWithAppInFocusWindowEnd;
- (BOOL)_updateSystemStateWithDeviceWiFi:(id)a3;
- (BOOL)_updateSystemStateWithMediaRoute:(id)a3;
- (BOOL)_updateSystemStateWithOutputDevice:(id)a3;
- (BOOL)_updateSystemStateWithPredictedOutputDevice:(id)a3;
- (BOOL)startLowLatencyMiLo;
- (IRPolicyManagerContextObserver)contextObserver;
- (IRSystemStateManager)initWithQueue:(id)a3 contextObserver:(id)a4 biomeProvider:(id)a5 miloProvider:(id)a6 proximityProvider:(id)a7 serviceStore:(id)a8 displayMonitor:(id)a9 audioAVOutputContextController:(id)a10 isLowLatencyMiLo:(BOOL)a11;
- (void)_cancelAppInFocusWindowTimer;
- (void)_checkAndStartPDRFenceLogicIfNeededWithEvent:(id)a3 andCandidate:(id)a4;
- (void)_checkAndStopPDRFenceLogicIfNeeded;
- (void)_checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:(id)a3;
- (void)_didUpdateContextWithReason:(id)a3;
- (void)_initBiomeIfNeededUponAppInFocus;
- (void)_startAppInFocusWindowTimer;
- (void)_unregisterForBiomeEvents;
- (void)_unregisterFromMiLo;
- (void)addEvent:(id)a3 forCandidate:(id)a4;
- (void)context:(id)a3 didUpdateOutputDevice:(id)a4;
- (void)context:(id)a3 didUpdatePredicatedOutputDevice:(id)a4;
- (void)dealloc;
- (void)deallocSync;
- (void)didSpotOnLocationCompleteWithError:(id)a3;
- (void)endAppInFocusWindow;
- (void)logProviderState;
- (void)monitor:(id)a3 didUpdateAppInFocus:(id)a4 isScreenUnlockEvent:(BOOL)a5;
- (void)monitor:(id)a3 didUpdateDisplayOn:(BOOL)a4;
- (void)monitor:(id)a3 didUpdateIsContinuityDisplay:(BOOL)a4;
- (void)onPrediction:(id)a3;
- (void)provider:(id)a3 didUpdateDeviceWiFi:(id)a4;
- (void)provider:(id)a3 didUpdateMediaRoute:(id)a4;
- (void)provider:(id)a3 didUpdateNearbyDevices:(id)a4;
@end

@implementation IRSystemStateManager

- (void)_cancelAppInFocusWindowTimer
{
  v3 = [(IRSystemStateManager *)self appInFocusWindowTimer];

  if (v3)
  {
    v4 = [(IRSystemStateManager *)self appInFocusWindowTimer];
    [v4 invalidate];

    [(IRSystemStateManager *)self setAppInFocusWindowTimer:0];
  }
}

- (void)_startAppInFocusWindowTimer
{
  objc_initWeak(&location, self);
  v3 = [IRTimer alloc];
  v4 = +[IRPreferences shared];
  v5 = [v4 appInFocusWindowInSeconds];
  [v5 doubleValue];
  v7 = v6;
  v8 = [(IRSystemStateManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __51__IRSystemStateManager__startAppInFocusWindowTimer__block_invoke;
  v13 = &unk_2797E0C18;
  objc_copyWeak(&v14, &location);
  v9 = [(IRTimer *)v3 initWithInterval:0 repeats:v8 queue:&v10 block:v7];
  [(IRSystemStateManager *)self setAppInFocusWindowTimer:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_initBiomeIfNeededUponAppInFocus
{
  if ([(IRSystemStateManager *)self isBiomeRegistered])
  {
    return;
  }

  v3 = [(IRSystemStateManager *)self contextObserver];
  v4 = [v3 getService];
  v5 = [v4 servicePackage];

  if (v5 != 1)
  {
    return;
  }

  v6 = [(IRSystemStateManager *)self systemState];
  v7 = [v6 appInFocusBundleID];
  if ([v7 isEqual:@"com.apple.TVRemoteUIService"])
  {
  }

  else
  {
    v8 = [(IRSystemStateManager *)self systemState];
    v9 = [v8 appInFocusBundleID];
    v10 = [v9 isEqual:@"com.apple.facetime"];

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  for (i = 1; i != 4; ++i)
  {
    if (![IRSystemStateManager isObservedEventType:i])
    {
      continue;
    }

    v12 = [(IRSystemStateManager *)self biomeProvider];
    [v12 addObserver:self forEvent:i];

    v13 = [(IRSystemStateManager *)self biomeProvider];
    v14 = [v13 fetchLatestEventsOfEventType:i numEvents:1];

    if (v14 && [v14 count] == 1)
    {
      if (i == 2)
      {
        v17 = [v14 firstObject];
        v16 = [v17 eventBody];

        [(IRSystemStateManager *)self _updateSystemStateWithMediaRoute:v16];
        goto LABEL_14;
      }

      if (i == 1)
      {
        v15 = [v14 firstObject];
        v16 = [v15 eventBody];

        [(IRSystemStateManager *)self _updateSystemStateWithDeviceWiFi:v16];
LABEL_14:
      }
    }
  }

  [(IRSystemStateManager *)self setIsBiomeRegistered:1];
}

- (IRPolicyManagerContextObserver)contextObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_contextObserver);

  return WeakRetained;
}

- (void)logProviderState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(IRSystemStateManager *)self nearbyDeviceContainer];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#system-state-manager, Cached Nearby devices: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (IRSystemStateManager)initWithQueue:(id)a3 contextObserver:(id)a4 biomeProvider:(id)a5 miloProvider:(id)a6 proximityProvider:(id)a7 serviceStore:(id)a8 displayMonitor:(id)a9 audioAVOutputContextController:(id)a10 isLowLatencyMiLo:(BOOL)a11
{
  v80 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v73.receiver = self;
  v73.super_class = IRSystemStateManager;
  v25 = [(IRSystemStateManager *)&v73 init];
  if (v25)
  {
    v72 = v24;
    v26 = objc_alloc_init(MEMORY[0x277D02820]);
    v71 = v17;
    [(IRSystemStateManager *)v25 setQueue:v17];
    v70 = v18;
    [(IRSystemStateManager *)v25 setContextObserver:v18];
    v69 = v19;
    [(IRSystemStateManager *)v25 setBiomeProvider:v19];
    v68 = v20;
    [(IRSystemStateManager *)v25 setMiloProvider:v20];
    v66 = v22;
    [(IRSystemStateManager *)v25 setServiceStore:v22];
    v67 = v21;
    [(IRSystemStateManager *)v25 setProximityProvider:v21];
    v65 = v23;
    [(IRSystemStateManager *)v25 setDisplayMonitor:v23];
    [(IRSystemStateManager *)v25 setAudioAVOutputContextController:v24];
    v27 = [v26 copyMyAppleIDAndReturnError:0];
    v28 = [MEMORY[0x277CBEBB0] localTimeZone];
    v29 = [v28 secondsFromGMT];
    v30 = [(IRSystemStateManager *)v25 displayMonitor];
    v31 = [v30 isContinuityDisplay];
    v32 = [(IRSystemStateManager *)v25 displayMonitor];
    BYTE1(v64) = [v32 displayOn];
    LOBYTE(v64) = v31;
    LOWORD(v63) = 0;
    v33 = [IRSystemStateDO systemStateDOWithAppInFocusBundleID:"systemStateDOWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:0 deviceWiFiSSID:0 locationSemanticUserSpecificPlaceType:0 locationSemanticLoiIdentifier:0 iCloudId:0 avInitialRouteSharingPolicy:v27 mediaRouteGroupLeaderOutputDeviceID:0 timeZoneSeconds:0 outputDeviceName:v29 outputDeviceType:0 outputDeviceSubType:0 predictedOutputDeviceName:0 predictedOutputDeviceType:0 predictedOutputDeviceSubType:0 appInFocusWindowScreenUnlockEvent:0 pdrFenceActive:v63 latestPickerChoiceDate:0 isContinuityDisplay:v64 displayOn:?];
    [(IRSystemStateManager *)v25 setSystemState:v33];

    v34 = [IRNearbyDeviceContainerDO alloc];
    v35 = [MEMORY[0x277CBEB98] set];
    v36 = [(IRNearbyDeviceContainerDO *)v34 initWithFreezeDateNIHomeDevice:0 nearbyDevices:v35];
    [(IRSystemStateManager *)v25 setNearbyDeviceContainer:v36];

    [(IRSystemStateManager *)v25 _registerToMiLo:a11];
    v37 = [(IRSystemStateManager *)v25 proximityProvider];
    [v37 addObserver:v25];

    v38 = [(IRSystemStateManager *)v25 displayMonitor];
    [v38 addObserver:v25];

    v39 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    [v39 addObserver:v25];

    v40 = [(IRSystemStateManager *)v25 displayMonitor];
    v41 = [v40 getAppInFocusWithTimestamp];

    v42 = +[IRPreferences shared];
    v43 = [v42 appInFocusWindowEnableOnServiceRun];
    if ([v43 BOOLValue])
    {
      v44 = 1;
    }

    else
    {
      v45 = [MEMORY[0x277CBEAA8] now];
      v46 = [v41 second];
      [v45 timeIntervalSinceDate:v46];
      v48 = v47;
      v49 = +[IRPreferences shared];
      v50 = [v49 appInFocusWindowInSeconds];
      [v50 doubleValue];
      v44 = v48 <= v51;
    }

    v52 = [v41 first];
    [(IRSystemStateManager *)v25 _updateSystemStateWithAppInFocus:v52 andOpenWindowIfApplicable:v44 isScreenUnlockEvent:0];

    v53 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    v54 = [v53 getOutputDevice];
    [(IRSystemStateManager *)v25 _updateSystemStateWithOutputDevice:v54];

    v55 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    v56 = [v55 getPredictedOutputDevice];
    [(IRSystemStateManager *)v25 _updateSystemStateWithPredictedOutputDevice:v56];

    v57 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v58 = *MEMORY[0x277D21260];
    v19 = v69;
    v18 = v70;
    v23 = v65;
    v24 = v72;
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      v60 = [(IRSystemStateManager *)v25 systemState];
      *buf = 136315650;
      v75 = "#system-state-manager, ";
      v76 = 2112;
      v77 = v57;
      v78 = 2112;
      v79 = v60;
      _os_log_impl(&dword_25543D000, v59, OS_LOG_TYPE_DEFAULT, "%s[%@], Initial state of system state = %@", buf, 0x20u);
    }

    v17 = v71;
    v21 = v67;
    v20 = v68;
    v22 = v66;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRSystemStateManager;
  [(IRSystemStateManager *)&v2 dealloc];
}

- (void)deallocSync
{
  [(IRSystemStateManager *)self _unregisterFromMiLo];
  [(IRSystemStateManager *)self _unregisterForBiomeEvents];
  v3 = [(IRSystemStateManager *)self proximityProvider];
  [v3 removeObserver:self];

  v4 = [(IRSystemStateManager *)self displayMonitor];
  [v4 removeObserver:self];

  v5 = [(IRSystemStateManager *)self audioAVOutputContextController];
  [v5 removeObserver:self];
}

- (void)addEvent:(id)a3 forCandidate:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(v7);

  [(IRSystemStateManager *)self _updateSystemStateWithAppInFocusWindowEnd];
  [(IRSystemStateManager *)self _checkAndStartPDRFenceLogicIfNeededWithEvent:v8 andCandidate:v6];

  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"Add event"];
  [(IRSystemStateManager *)self _checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:v8];
}

- (BOOL)startLowLatencyMiLo
{
  v3 = [(IRSystemStateManager *)self miloProvider];
  v4 = [v3 startLowLatencyMiLo];

  if (v4)
  {
    v5 = [(IRSystemStateManager *)self miloProvider];
    v6 = [v5 requestSinglePrediction];

    v7 = [MEMORY[0x277CBEB98] set];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [IRMiloLslPredictionDO miloLslPredictionDOWithPredictionId:v6 isPredictionValid:1 isMapValid:0 isMotionDetected:0 scores:v7 predictionTime:v8];
    [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:v9];
  }

  return v4;
}

- (void)endAppInFocusWindow
{
  if ([(IRSystemStateManager *)self _updateSystemStateWithAppInFocusWindowEnd])
  {

    [(IRSystemStateManager *)self _didUpdateContextWithReason:@"App in focus window end"];
  }
}

- (void)_unregisterFromMiLo
{
  v2 = [(IRSystemStateManager *)self miloProvider];
  [v2 removeObserver];
}

- (void)_unregisterForBiomeEvents
{
  for (i = 1; i != 4; ++i)
  {
    if ([IRSystemStateManager isObservedEventType:i])
    {
      v4 = [(IRSystemStateManager *)self biomeProvider];
      [v4 removeObserver:self forEvent:i];
    }
  }
}

- (void)_checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:(id)a3
{
  if ([a3 isPickerChoiceEvent])
  {
    v6 = [(IRSystemStateManager *)self systemState];
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [v6 copyWithReplacementLatestPickerChoiceDate:v4];
    [(IRSystemStateManager *)self setSystemState:v5];
  }
}

void __51__IRSystemStateManager__startAppInFocusWindowTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained endAppInFocusWindow];
    WeakRetained = v2;
  }
}

- (void)_checkAndStartPDRFenceLogicIfNeededWithEvent:(id)a3 andCandidate:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IRSystemStateManager *)self pdrFenceTimer];

  if (!v8)
  {
    v9 = [IREventDO eventDOWithMediaType:9];
    v10 = [IREventDO eventDOWithMediaType:10];
    v34 = [IREventDO eventDOWithMediaType:0];
    if (([v6 isEqual:v9] & 1) != 0 || (objc_msgSend(v6, "isEqual:", v10) & 1) != 0 || objc_msgSend(v7, "isBrokeredDevice") && objc_msgSend(v6, "isEqual:", v34))
    {
      v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v12 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v40 = "#system-state-manager, ";
        v41 = 2112;
        v42 = v11;
        _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_INFO, "%s[%@], Starting PDRFence PDR fence logic", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v13 = +[IRPreferences shared];
      v14 = [v13 pdrFenceOtherThanRadiusTimeoutInSeconds];
      v15 = [v14 integerValue];

      if (+[IRCMPDRFenceBridge isAvailable])
      {
        v16 = [(IRSystemStateManager *)self pdrFenceBridge];
        v17 = v16 == 0;

        if (v17)
        {
          v18 = [[IRCMPDRFenceBridge alloc] initWithFenceIdentifier:@"PDRFence"];
          [(IRSystemStateManager *)self setPdrFenceBridge:v18];
        }

        v19 = [(IRSystemStateManager *)self pdrFenceBridge];
        [v19 startSession];

        v20 = +[IRPreferences shared];
        v21 = [v20 pdrFenceRadiusInMeters];
        [v21 floatValue];
        v23 = v22;

        v24 = [(IRSystemStateManager *)self pdrFenceBridge];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke;
        v37[3] = &unk_2797E0C18;
        objc_copyWeak(&v38, buf);
        LODWORD(v25) = v23;
        [v24 setFence:v37 withCompletion:v25];

        v26 = +[IRPreferences shared];
        v27 = [v26 pdrFenceRadiusTimeoutInSeconds];
        v15 = [v27 integerValue];

        objc_destroyWeak(&v38);
      }

      v28 = [IRTimer alloc];
      v29 = [(IRSystemStateManager *)self queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_35;
      v35[3] = &unk_2797E0C18;
      objc_copyWeak(&v36, buf);
      v30 = [(IRTimer *)v28 initWithInterval:0 repeats:v29 queue:v35 block:v15];
      [(IRSystemStateManager *)self setPdrFenceTimer:v30];

      v31 = [(IRSystemStateManager *)self systemState];
      v32 = [v31 copyWithReplacementPdrFenceActive:1];
      [(IRSystemStateManager *)self setSystemState:v32];

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];

    if (v3)
    {
      v4 = [v2 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_2;
      block[3] = &unk_2797E0BA8;
      v6 = v2;
      dispatch_async(v4, block);
    }
  }
}

uint64_t __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "#system-state-manager, ";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "%s[%@], PDR fence crossed", &v6, 0x16u);
  }

  result = [*(a1 + 32) _checkAndStopPDRFenceLogicIfNeeded];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_35(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v3 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "#system-state-manager, ";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "%s[%@], PDR fence timeout", &v5, 0x16u);
    }

    [WeakRetained _checkAndStopPDRFenceLogicIfNeeded];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndStopPDRFenceLogicIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IRSystemStateManager *)self pdrFenceTimer];

  if (v4)
  {
    v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "#system-state-manager, ";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_INFO, "%s[%@], Stopping PDR fence logic", &v13, 0x16u);
    }

    v7 = [(IRSystemStateManager *)self pdrFenceBridge];
    [v7 clearFence];

    v8 = [(IRSystemStateManager *)self pdrFenceBridge];
    [v8 endSession];

    v9 = [(IRSystemStateManager *)self pdrFenceTimer];
    [v9 invalidate];

    [(IRSystemStateManager *)self setPdrFenceTimer:0];
    v10 = [(IRSystemStateManager *)self systemState];
    v11 = [v10 copyWithReplacementPdrFenceActive:0];
    [(IRSystemStateManager *)self setSystemState:v11];

    [(IRSystemStateManager *)self _didUpdateContextWithReason:@"PDR fence crossed"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)a3 didUpdateDeviceWiFi:(id)a4
{
  v5 = a4;
  v6 = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__IRSystemStateManager_provider_didUpdateDeviceWiFi___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __53__IRSystemStateManager_provider_didUpdateDeviceWiFi___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithDeviceWiFi:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Device WiFi"];
  }
}

- (void)provider:(id)a3 didUpdateMediaRoute:(id)a4
{
  v5 = a4;
  v6 = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__IRSystemStateManager_provider_didUpdateMediaRoute___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __53__IRSystemStateManager_provider_didUpdateMediaRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithMediaRoute:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Media route"];
  }
}

- (void)_didUpdateContextWithReason:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(IRSystemStateManager *)self systemState];
    v9 = [IRLogQEUtility getSystemStateAsString:v8];
    v10 = [(IRSystemStateManager *)self miloProvider];
    v11 = [(IRSystemStateManager *)self miloProviderLslPredictionResults];
    v12 = [v10 getMiloServiceStatusStringQEWithPrediction:v11];
    v15 = 136316162;
    v16 = "#system-state-manager, ";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "%s[%@], System state might have changed due to %@:\n%@\n%@", &v15, 0x34u);
  }

  v13 = [(IRSystemStateManager *)self contextObserver];
  [v13 didUpdateContextWithReason:v4 andOverrides:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)onPrediction:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "#system-state-manager, ";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "%s[%@], Received MiLo prediction: %@", &v9, 0x20u);
  }

  [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:v4];
  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"MiLo prediction"];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didSpotOnLocationCompleteWithError:(id)a3
{
  v4 = a3;
  v5 = [(IRSystemStateManager *)self contextObserver];
  [v5 didSpotOnLocationComplete:v4];
}

- (BOOL)_updateSystemStateWithDeviceWiFi:(id)a3
{
  v4 = a3;
  v5 = [(IRSystemStateManager *)self systemState];
  v6 = [v5 copy];

  v7 = [(IRSystemStateManager *)self systemState];
  v8 = [v4 SSID];

  v9 = [v7 copyWithReplacementDeviceWiFiSSID:v8];
  [(IRSystemStateManager *)self setSystemState:v9];

  v10 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v9) = [v10 isEqual:v6];

  return v9 ^ 1;
}

- (BOOL)_updateSystemStateWithMediaRoute:(id)a3
{
  v4 = a3;
  v5 = [(IRSystemStateManager *)self systemState];
  v6 = [v5 copy];

  v7 = [v4 groupLeaderOutputDeviceID];
  if (v7)
  {
    v8 = [v4 outputDevices];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v7 = [v4 groupLeaderOutputDeviceID];
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [(IRSystemStateManager *)self systemState];
  v11 = [v10 copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:v7];
  [(IRSystemStateManager *)self setSystemState:v11];

  v12 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v10) = [v12 isEqual:v6];

  return v10 ^ 1;
}

- (BOOL)_updateSystemStateWithAppInFocusWindowEnd
{
  v3 = [(IRSystemStateManager *)self systemState];
  v4 = [v3 copy];

  [(IRSystemStateManager *)self _cancelAppInFocusWindowTimer];
  v5 = [(IRSystemStateManager *)self systemState];
  v6 = [v5 copyWithReplacementAppInFocusWindowValid:0];
  [(IRSystemStateManager *)self setSystemState:v6];

  v7 = [(IRSystemStateManager *)self systemState];
  v8 = [v7 copyWithReplacementAppInFocusWindowScreenUnlockEvent:0];
  [(IRSystemStateManager *)self setSystemState:v8];

  v9 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v7) = [v9 isEqual:v4];

  return v7 ^ 1;
}

- (BOOL)_updateSystemStateWithOutputDevice:(id)a3
{
  v4 = a3;
  v5 = [(IRSystemStateManager *)self systemState];
  v6 = [v5 copy];

  v7 = [(IRSystemStateManager *)self systemState];
  v8 = [v4 deviceName];
  v9 = [v7 copyWithReplacementOutputDeviceName:v8];
  [(IRSystemStateManager *)self setSystemState:v9];

  v10 = [(IRSystemStateManager *)self systemState];
  v11 = [v10 copyWithReplacementOutputDeviceType:{objc_msgSend(v4, "deviceType")}];
  [(IRSystemStateManager *)self setSystemState:v11];

  v12 = [(IRSystemStateManager *)self systemState];
  v13 = [v4 deviceSubType];

  v14 = [v12 copyWithReplacementOutputDeviceSubType:v13];
  [(IRSystemStateManager *)self setSystemState:v14];

  v15 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v14) = [v15 isEqual:v6];

  return v14 ^ 1;
}

- (BOOL)_updateSystemStateWithPredictedOutputDevice:(id)a3
{
  v4 = a3;
  v5 = [(IRSystemStateManager *)self systemState];
  v6 = [v5 copy];

  v7 = [(IRSystemStateManager *)self systemState];
  v8 = [v4 deviceName];
  v9 = [v7 copyWithReplacementPredictedOutputDeviceName:v8];
  [(IRSystemStateManager *)self setSystemState:v9];

  v10 = [(IRSystemStateManager *)self systemState];
  v11 = [v10 copyWithReplacementPredictedOutputDeviceType:{objc_msgSend(v4, "deviceType")}];
  [(IRSystemStateManager *)self setSystemState:v11];

  v12 = [(IRSystemStateManager *)self systemState];
  v13 = [v4 deviceSubType];

  v14 = [v12 copyWithReplacementPredictedOutputDeviceSubType:v13];
  [(IRSystemStateManager *)self setSystemState:v14];

  v15 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v14) = [v15 isEqual:v6];

  return v14 ^ 1;
}

- (void)provider:(id)a3 didUpdateNearbyDevices:(id)a4
{
  v5 = a4;
  v6 = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__IRSystemStateManager_provider_didUpdateNearbyDevices___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __56__IRSystemStateManager_provider_didUpdateNearbyDevices___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 nearbyDeviceContainer];
  v5 = *(a1 + 32);
  v6 = +[IRPreferences shared];
  v7 = [v6 deviceRangeProximityThreshold];
  [v7 doubleValue];
  v8 = [IRProximityProvider didContainer:v4 changeWithUpdatetContainer:v5 andRangeThreshold:?];

  v9 = [*(a1 + 32) copy];
  [v3 setNearbyDeviceContainer:v9];

  if (v8)
  {
    [v3 _didUpdateContextWithReason:@"nearby device change"];
    v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v11 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 136315650;
      v15 = "#system-state-manager, ";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_DEFAULT, "%s[%@], Updated cached nearby devices: %@", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)monitor:(id)a3 didUpdateAppInFocus:(id)a4 isScreenUnlockEvent:(BOOL)a5
{
  v7 = a4;
  v8 = [(IRSystemStateManager *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__IRSystemStateManager_monitor_didUpdateAppInFocus_isScreenUnlockEvent___block_invoke;
  v10[3] = &unk_2797E2118;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  IRDispatchAsyncWithStrongSelf(v8, self, v10);
}

void __72__IRSystemStateManager_monitor_didUpdateAppInFocus_isScreenUnlockEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithAppInFocus:*(a1 + 32) andOpenWindowIfApplicable:1 isScreenUnlockEvent:*(a1 + 40)])
  {
    [v3 _didUpdateContextWithReason:@"App in focus"];
  }
}

- (void)monitor:(id)a3 didUpdateIsContinuityDisplay:(BOOL)a4
{
  v6 = [(IRSystemStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__IRSystemStateManager_monitor_didUpdateIsContinuityDisplay___block_invoke;
  v7[3] = &__block_descriptor_33_e30_v16__0__IRSystemStateManager_8l;
  v8 = a4;
  IRDispatchAsyncWithStrongSelf(v6, self, v7);
}

void __61__IRSystemStateManager_monitor_didUpdateIsContinuityDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithIsContinuityDisplay:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Continuity display"];
  }
}

- (void)monitor:(id)a3 didUpdateDisplayOn:(BOOL)a4
{
  v6 = [(IRSystemStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__IRSystemStateManager_monitor_didUpdateDisplayOn___block_invoke;
  v7[3] = &__block_descriptor_33_e30_v16__0__IRSystemStateManager_8l;
  v8 = a4;
  IRDispatchAsyncWithStrongSelf(v6, self, v7);
}

void __51__IRSystemStateManager_monitor_didUpdateDisplayOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithDisplayOn:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Display On"];
  }
}

- (void)context:(id)a3 didUpdateOutputDevice:(id)a4
{
  v5 = a4;
  v6 = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__IRSystemStateManager_context_didUpdateOutputDevice___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __54__IRSystemStateManager_context_didUpdateOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithOutputDevice:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Output device"];
  }
}

- (void)context:(id)a3 didUpdatePredicatedOutputDevice:(id)a4
{
  v5 = a4;
  v6 = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__IRSystemStateManager_context_didUpdatePredicatedOutputDevice___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __64__IRSystemStateManager_context_didUpdatePredicatedOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithPredictedOutputDevice:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Predicted output device"];
  }
}

@end