@interface IRSystemStateManager
- (BOOL)_updateSystemStateWithAppInFocusWindowEnd;
- (BOOL)_updateSystemStateWithDeviceWiFi:(id)fi;
- (BOOL)_updateSystemStateWithMediaRoute:(id)route;
- (BOOL)_updateSystemStateWithOutputDevice:(id)device;
- (BOOL)_updateSystemStateWithPredictedOutputDevice:(id)device;
- (BOOL)startLowLatencyMiLo;
- (IRPolicyManagerContextObserver)contextObserver;
- (IRSystemStateManager)initWithQueue:(id)queue contextObserver:(id)observer biomeProvider:(id)provider miloProvider:(id)miloProvider proximityProvider:(id)proximityProvider serviceStore:(id)store displayMonitor:(id)monitor audioAVOutputContextController:(id)self0 isLowLatencyMiLo:(BOOL)self1;
- (void)_cancelAppInFocusWindowTimer;
- (void)_checkAndStartPDRFenceLogicIfNeededWithEvent:(id)event andCandidate:(id)candidate;
- (void)_checkAndStopPDRFenceLogicIfNeeded;
- (void)_checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:(id)event;
- (void)_didUpdateContextWithReason:(id)reason;
- (void)_initBiomeIfNeededUponAppInFocus;
- (void)_startAppInFocusWindowTimer;
- (void)_unregisterForBiomeEvents;
- (void)_unregisterFromMiLo;
- (void)addEvent:(id)event forCandidate:(id)candidate;
- (void)context:(id)context didUpdateOutputDevice:(id)device;
- (void)context:(id)context didUpdatePredicatedOutputDevice:(id)device;
- (void)dealloc;
- (void)deallocSync;
- (void)didSpotOnLocationCompleteWithError:(id)error;
- (void)endAppInFocusWindow;
- (void)logProviderState;
- (void)monitor:(id)monitor didUpdateAppInFocus:(id)focus isScreenUnlockEvent:(BOOL)event;
- (void)monitor:(id)monitor didUpdateDisplayOn:(BOOL)on;
- (void)monitor:(id)monitor didUpdateIsContinuityDisplay:(BOOL)display;
- (void)onPrediction:(id)prediction;
- (void)provider:(id)provider didUpdateDeviceWiFi:(id)fi;
- (void)provider:(id)provider didUpdateMediaRoute:(id)route;
- (void)provider:(id)provider didUpdateNearbyDevices:(id)devices;
@end

@implementation IRSystemStateManager

- (void)_cancelAppInFocusWindowTimer
{
  appInFocusWindowTimer = [(IRSystemStateManager *)self appInFocusWindowTimer];

  if (appInFocusWindowTimer)
  {
    appInFocusWindowTimer2 = [(IRSystemStateManager *)self appInFocusWindowTimer];
    [appInFocusWindowTimer2 invalidate];

    [(IRSystemStateManager *)self setAppInFocusWindowTimer:0];
  }
}

- (void)_startAppInFocusWindowTimer
{
  objc_initWeak(&location, self);
  v3 = [IRTimer alloc];
  v4 = +[IRPreferences shared];
  appInFocusWindowInSeconds = [v4 appInFocusWindowInSeconds];
  [appInFocusWindowInSeconds doubleValue];
  v7 = v6;
  queue = [(IRSystemStateManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __51__IRSystemStateManager__startAppInFocusWindowTimer__block_invoke;
  v13 = &unk_2797E0C18;
  objc_copyWeak(&v14, &location);
  v9 = [(IRTimer *)v3 initWithInterval:0 repeats:queue queue:&v10 block:v7];
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

  contextObserver = [(IRSystemStateManager *)self contextObserver];
  getService = [contextObserver getService];
  servicePackage = [getService servicePackage];

  if (servicePackage != 1)
  {
    return;
  }

  systemState = [(IRSystemStateManager *)self systemState];
  appInFocusBundleID = [systemState appInFocusBundleID];
  if ([appInFocusBundleID isEqual:@"com.apple.TVRemoteUIService"])
  {
  }

  else
  {
    systemState2 = [(IRSystemStateManager *)self systemState];
    appInFocusBundleID2 = [systemState2 appInFocusBundleID];
    v10 = [appInFocusBundleID2 isEqual:@"com.apple.facetime"];

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

    biomeProvider = [(IRSystemStateManager *)self biomeProvider];
    [biomeProvider addObserver:self forEvent:i];

    biomeProvider2 = [(IRSystemStateManager *)self biomeProvider];
    v14 = [biomeProvider2 fetchLatestEventsOfEventType:i numEvents:1];

    if (v14 && [v14 count] == 1)
    {
      if (i == 2)
      {
        firstObject = [v14 firstObject];
        eventBody = [firstObject eventBody];

        [(IRSystemStateManager *)self _updateSystemStateWithMediaRoute:eventBody];
        goto LABEL_14;
      }

      if (i == 1)
      {
        firstObject2 = [v14 firstObject];
        eventBody = [firstObject2 eventBody];

        [(IRSystemStateManager *)self _updateSystemStateWithDeviceWiFi:eventBody];
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
    nearbyDeviceContainer = [(IRSystemStateManager *)self nearbyDeviceContainer];
    v7 = 138412290;
    v8 = nearbyDeviceContainer;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#system-state-manager, Cached Nearby devices: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (IRSystemStateManager)initWithQueue:(id)queue contextObserver:(id)observer biomeProvider:(id)provider miloProvider:(id)miloProvider proximityProvider:(id)proximityProvider serviceStore:(id)store displayMonitor:(id)monitor audioAVOutputContextController:(id)self0 isLowLatencyMiLo:(BOOL)self1
{
  v80 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  observerCopy = observer;
  providerCopy = provider;
  miloProviderCopy = miloProvider;
  proximityProviderCopy = proximityProvider;
  storeCopy = store;
  monitorCopy = monitor;
  controllerCopy = controller;
  v73.receiver = self;
  v73.super_class = IRSystemStateManager;
  v25 = [(IRSystemStateManager *)&v73 init];
  if (v25)
  {
    v72 = controllerCopy;
    v26 = objc_alloc_init(MEMORY[0x277D02820]);
    v71 = queueCopy;
    [(IRSystemStateManager *)v25 setQueue:queueCopy];
    v70 = observerCopy;
    [(IRSystemStateManager *)v25 setContextObserver:observerCopy];
    v69 = providerCopy;
    [(IRSystemStateManager *)v25 setBiomeProvider:providerCopy];
    v68 = miloProviderCopy;
    [(IRSystemStateManager *)v25 setMiloProvider:miloProviderCopy];
    v66 = storeCopy;
    [(IRSystemStateManager *)v25 setServiceStore:storeCopy];
    v67 = proximityProviderCopy;
    [(IRSystemStateManager *)v25 setProximityProvider:proximityProviderCopy];
    v65 = monitorCopy;
    [(IRSystemStateManager *)v25 setDisplayMonitor:monitorCopy];
    [(IRSystemStateManager *)v25 setAudioAVOutputContextController:controllerCopy];
    v27 = [v26 copyMyAppleIDAndReturnError:0];
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    secondsFromGMT = [localTimeZone secondsFromGMT];
    displayMonitor = [(IRSystemStateManager *)v25 displayMonitor];
    isContinuityDisplay = [displayMonitor isContinuityDisplay];
    displayMonitor2 = [(IRSystemStateManager *)v25 displayMonitor];
    BYTE1(v64) = [displayMonitor2 displayOn];
    LOBYTE(v64) = isContinuityDisplay;
    LOWORD(v63) = 0;
    v33 = [IRSystemStateDO systemStateDOWithAppInFocusBundleID:"systemStateDOWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:0 deviceWiFiSSID:0 locationSemanticUserSpecificPlaceType:0 locationSemanticLoiIdentifier:0 iCloudId:0 avInitialRouteSharingPolicy:v27 mediaRouteGroupLeaderOutputDeviceID:0 timeZoneSeconds:0 outputDeviceName:secondsFromGMT outputDeviceType:0 outputDeviceSubType:0 predictedOutputDeviceName:0 predictedOutputDeviceType:0 predictedOutputDeviceSubType:0 appInFocusWindowScreenUnlockEvent:0 pdrFenceActive:v63 latestPickerChoiceDate:0 isContinuityDisplay:v64 displayOn:?];
    [(IRSystemStateManager *)v25 setSystemState:v33];

    v34 = [IRNearbyDeviceContainerDO alloc];
    v35 = [MEMORY[0x277CBEB98] set];
    v36 = [(IRNearbyDeviceContainerDO *)v34 initWithFreezeDateNIHomeDevice:0 nearbyDevices:v35];
    [(IRSystemStateManager *)v25 setNearbyDeviceContainer:v36];

    [(IRSystemStateManager *)v25 _registerToMiLo:lo];
    proximityProvider = [(IRSystemStateManager *)v25 proximityProvider];
    [proximityProvider addObserver:v25];

    displayMonitor3 = [(IRSystemStateManager *)v25 displayMonitor];
    [displayMonitor3 addObserver:v25];

    audioAVOutputContextController = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    [audioAVOutputContextController addObserver:v25];

    displayMonitor4 = [(IRSystemStateManager *)v25 displayMonitor];
    getAppInFocusWithTimestamp = [displayMonitor4 getAppInFocusWithTimestamp];

    v42 = +[IRPreferences shared];
    appInFocusWindowEnableOnServiceRun = [v42 appInFocusWindowEnableOnServiceRun];
    if ([appInFocusWindowEnableOnServiceRun BOOLValue])
    {
      v44 = 1;
    }

    else
    {
      v45 = [MEMORY[0x277CBEAA8] now];
      second = [getAppInFocusWithTimestamp second];
      [v45 timeIntervalSinceDate:second];
      v48 = v47;
      v49 = +[IRPreferences shared];
      appInFocusWindowInSeconds = [v49 appInFocusWindowInSeconds];
      [appInFocusWindowInSeconds doubleValue];
      v44 = v48 <= v51;
    }

    first = [getAppInFocusWithTimestamp first];
    [(IRSystemStateManager *)v25 _updateSystemStateWithAppInFocus:first andOpenWindowIfApplicable:v44 isScreenUnlockEvent:0];

    audioAVOutputContextController2 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    getOutputDevice = [audioAVOutputContextController2 getOutputDevice];
    [(IRSystemStateManager *)v25 _updateSystemStateWithOutputDevice:getOutputDevice];

    audioAVOutputContextController3 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    getPredictedOutputDevice = [audioAVOutputContextController3 getPredictedOutputDevice];
    [(IRSystemStateManager *)v25 _updateSystemStateWithPredictedOutputDevice:getPredictedOutputDevice];

    v57 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v58 = *MEMORY[0x277D21260];
    providerCopy = v69;
    observerCopy = v70;
    monitorCopy = v65;
    controllerCopy = v72;
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      systemState = [(IRSystemStateManager *)v25 systemState];
      *buf = 136315650;
      v75 = "#system-state-manager, ";
      v76 = 2112;
      v77 = v57;
      v78 = 2112;
      v79 = systemState;
      _os_log_impl(&dword_25543D000, v59, OS_LOG_TYPE_DEFAULT, "%s[%@], Initial state of system state = %@", buf, 0x20u);
    }

    queueCopy = v71;
    proximityProviderCopy = v67;
    miloProviderCopy = v68;
    storeCopy = v66;
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
  proximityProvider = [(IRSystemStateManager *)self proximityProvider];
  [proximityProvider removeObserver:self];

  displayMonitor = [(IRSystemStateManager *)self displayMonitor];
  [displayMonitor removeObserver:self];

  audioAVOutputContextController = [(IRSystemStateManager *)self audioAVOutputContextController];
  [audioAVOutputContextController removeObserver:self];
}

- (void)addEvent:(id)event forCandidate:(id)candidate
{
  candidateCopy = candidate;
  eventCopy = event;
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(IRSystemStateManager *)self _updateSystemStateWithAppInFocusWindowEnd];
  [(IRSystemStateManager *)self _checkAndStartPDRFenceLogicIfNeededWithEvent:eventCopy andCandidate:candidateCopy];

  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"Add event"];
  [(IRSystemStateManager *)self _checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:eventCopy];
}

- (BOOL)startLowLatencyMiLo
{
  miloProvider = [(IRSystemStateManager *)self miloProvider];
  startLowLatencyMiLo = [miloProvider startLowLatencyMiLo];

  if (startLowLatencyMiLo)
  {
    miloProvider2 = [(IRSystemStateManager *)self miloProvider];
    requestSinglePrediction = [miloProvider2 requestSinglePrediction];

    v7 = [MEMORY[0x277CBEB98] set];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [IRMiloLslPredictionDO miloLslPredictionDOWithPredictionId:requestSinglePrediction isPredictionValid:1 isMapValid:0 isMotionDetected:0 scores:v7 predictionTime:date];
    [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:v9];
  }

  return startLowLatencyMiLo;
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
  miloProvider = [(IRSystemStateManager *)self miloProvider];
  [miloProvider removeObserver];
}

- (void)_unregisterForBiomeEvents
{
  for (i = 1; i != 4; ++i)
  {
    if ([IRSystemStateManager isObservedEventType:i])
    {
      biomeProvider = [(IRSystemStateManager *)self biomeProvider];
      [biomeProvider removeObserver:self forEvent:i];
    }
  }
}

- (void)_checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:(id)event
{
  if ([event isPickerChoiceEvent])
  {
    systemState = [(IRSystemStateManager *)self systemState];
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [systemState copyWithReplacementLatestPickerChoiceDate:v4];
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

- (void)_checkAndStartPDRFenceLogicIfNeededWithEvent:(id)event andCandidate:(id)candidate
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  candidateCopy = candidate;
  pdrFenceTimer = [(IRSystemStateManager *)self pdrFenceTimer];

  if (!pdrFenceTimer)
  {
    v9 = [IREventDO eventDOWithMediaType:9];
    v10 = [IREventDO eventDOWithMediaType:10];
    v34 = [IREventDO eventDOWithMediaType:0];
    if (([eventCopy isEqual:v9] & 1) != 0 || (objc_msgSend(eventCopy, "isEqual:", v10) & 1) != 0 || objc_msgSend(candidateCopy, "isBrokeredDevice") && objc_msgSend(eventCopy, "isEqual:", v34))
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
      pdrFenceOtherThanRadiusTimeoutInSeconds = [v13 pdrFenceOtherThanRadiusTimeoutInSeconds];
      integerValue = [pdrFenceOtherThanRadiusTimeoutInSeconds integerValue];

      if (+[IRCMPDRFenceBridge isAvailable])
      {
        pdrFenceBridge = [(IRSystemStateManager *)self pdrFenceBridge];
        v17 = pdrFenceBridge == 0;

        if (v17)
        {
          v18 = [[IRCMPDRFenceBridge alloc] initWithFenceIdentifier:@"PDRFence"];
          [(IRSystemStateManager *)self setPdrFenceBridge:v18];
        }

        pdrFenceBridge2 = [(IRSystemStateManager *)self pdrFenceBridge];
        [pdrFenceBridge2 startSession];

        v20 = +[IRPreferences shared];
        pdrFenceRadiusInMeters = [v20 pdrFenceRadiusInMeters];
        [pdrFenceRadiusInMeters floatValue];
        v23 = v22;

        pdrFenceBridge3 = [(IRSystemStateManager *)self pdrFenceBridge];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke;
        v37[3] = &unk_2797E0C18;
        objc_copyWeak(&v38, buf);
        LODWORD(v25) = v23;
        [pdrFenceBridge3 setFence:v37 withCompletion:v25];

        v26 = +[IRPreferences shared];
        pdrFenceRadiusTimeoutInSeconds = [v26 pdrFenceRadiusTimeoutInSeconds];
        integerValue = [pdrFenceRadiusTimeoutInSeconds integerValue];

        objc_destroyWeak(&v38);
      }

      v28 = [IRTimer alloc];
      queue = [(IRSystemStateManager *)self queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_35;
      v35[3] = &unk_2797E0C18;
      objc_copyWeak(&v36, buf);
      v30 = [(IRTimer *)v28 initWithInterval:0 repeats:queue queue:v35 block:integerValue];
      [(IRSystemStateManager *)self setPdrFenceTimer:v30];

      systemState = [(IRSystemStateManager *)self systemState];
      v32 = [systemState copyWithReplacementPdrFenceActive:1];
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
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pdrFenceTimer = [(IRSystemStateManager *)self pdrFenceTimer];

  if (pdrFenceTimer)
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

    pdrFenceBridge = [(IRSystemStateManager *)self pdrFenceBridge];
    [pdrFenceBridge clearFence];

    pdrFenceBridge2 = [(IRSystemStateManager *)self pdrFenceBridge];
    [pdrFenceBridge2 endSession];

    pdrFenceTimer2 = [(IRSystemStateManager *)self pdrFenceTimer];
    [pdrFenceTimer2 invalidate];

    [(IRSystemStateManager *)self setPdrFenceTimer:0];
    systemState = [(IRSystemStateManager *)self systemState];
    v11 = [systemState copyWithReplacementPdrFenceActive:0];
    [(IRSystemStateManager *)self setSystemState:v11];

    [(IRSystemStateManager *)self _didUpdateContextWithReason:@"PDR fence crossed"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider didUpdateDeviceWiFi:(id)fi
{
  fiCopy = fi;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__IRSystemStateManager_provider_didUpdateDeviceWiFi___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = fiCopy;
  v7 = fiCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __53__IRSystemStateManager_provider_didUpdateDeviceWiFi___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithDeviceWiFi:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Device WiFi"];
  }
}

- (void)provider:(id)provider didUpdateMediaRoute:(id)route
{
  routeCopy = route;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__IRSystemStateManager_provider_didUpdateMediaRoute___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = routeCopy;
  v7 = routeCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __53__IRSystemStateManager_provider_didUpdateMediaRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithMediaRoute:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Media route"];
  }
}

- (void)_didUpdateContextWithReason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    systemState = [(IRSystemStateManager *)self systemState];
    v9 = [IRLogQEUtility getSystemStateAsString:systemState];
    miloProvider = [(IRSystemStateManager *)self miloProvider];
    miloProviderLslPredictionResults = [(IRSystemStateManager *)self miloProviderLslPredictionResults];
    v12 = [miloProvider getMiloServiceStatusStringQEWithPrediction:miloProviderLslPredictionResults];
    v15 = 136316162;
    v16 = "#system-state-manager, ";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = reasonCopy;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "%s[%@], System state might have changed due to %@:\n%@\n%@", &v15, 0x34u);
  }

  contextObserver = [(IRSystemStateManager *)self contextObserver];
  [contextObserver didUpdateContextWithReason:reasonCopy andOverrides:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)onPrediction:(id)prediction
{
  v15 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "#system-state-manager, ";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = predictionCopy;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "%s[%@], Received MiLo prediction: %@", &v9, 0x20u);
  }

  [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:predictionCopy];
  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"MiLo prediction"];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didSpotOnLocationCompleteWithError:(id)error
{
  errorCopy = error;
  contextObserver = [(IRSystemStateManager *)self contextObserver];
  [contextObserver didSpotOnLocationComplete:errorCopy];
}

- (BOOL)_updateSystemStateWithDeviceWiFi:(id)fi
{
  fiCopy = fi;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  sSID = [fiCopy SSID];

  v9 = [systemState2 copyWithReplacementDeviceWiFiSSID:sSID];
  [(IRSystemStateManager *)self setSystemState:v9];

  systemState3 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v9) = [systemState3 isEqual:v6];

  return v9 ^ 1;
}

- (BOOL)_updateSystemStateWithMediaRoute:(id)route
{
  routeCopy = route;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  groupLeaderOutputDeviceID = [routeCopy groupLeaderOutputDeviceID];
  if (groupLeaderOutputDeviceID)
  {
    outputDevices = [routeCopy outputDevices];
    v9 = [outputDevices count];

    if (v9 == 1)
    {
      groupLeaderOutputDeviceID = [routeCopy groupLeaderOutputDeviceID];
    }

    else
    {
      groupLeaderOutputDeviceID = 0;
    }
  }

  systemState2 = [(IRSystemStateManager *)self systemState];
  v11 = [systemState2 copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:groupLeaderOutputDeviceID];
  [(IRSystemStateManager *)self setSystemState:v11];

  systemState3 = [(IRSystemStateManager *)self systemState];
  LOBYTE(systemState2) = [systemState3 isEqual:v6];

  return systemState2 ^ 1;
}

- (BOOL)_updateSystemStateWithAppInFocusWindowEnd
{
  systemState = [(IRSystemStateManager *)self systemState];
  v4 = [systemState copy];

  [(IRSystemStateManager *)self _cancelAppInFocusWindowTimer];
  systemState2 = [(IRSystemStateManager *)self systemState];
  v6 = [systemState2 copyWithReplacementAppInFocusWindowValid:0];
  [(IRSystemStateManager *)self setSystemState:v6];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v8 = [systemState3 copyWithReplacementAppInFocusWindowScreenUnlockEvent:0];
  [(IRSystemStateManager *)self setSystemState:v8];

  systemState4 = [(IRSystemStateManager *)self systemState];
  LOBYTE(systemState3) = [systemState4 isEqual:v4];

  return systemState3 ^ 1;
}

- (BOOL)_updateSystemStateWithOutputDevice:(id)device
{
  deviceCopy = device;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  deviceName = [deviceCopy deviceName];
  v9 = [systemState2 copyWithReplacementOutputDeviceName:deviceName];
  [(IRSystemStateManager *)self setSystemState:v9];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v11 = [systemState3 copyWithReplacementOutputDeviceType:{objc_msgSend(deviceCopy, "deviceType")}];
  [(IRSystemStateManager *)self setSystemState:v11];

  systemState4 = [(IRSystemStateManager *)self systemState];
  deviceSubType = [deviceCopy deviceSubType];

  v14 = [systemState4 copyWithReplacementOutputDeviceSubType:deviceSubType];
  [(IRSystemStateManager *)self setSystemState:v14];

  systemState5 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v14) = [systemState5 isEqual:v6];

  return v14 ^ 1;
}

- (BOOL)_updateSystemStateWithPredictedOutputDevice:(id)device
{
  deviceCopy = device;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  deviceName = [deviceCopy deviceName];
  v9 = [systemState2 copyWithReplacementPredictedOutputDeviceName:deviceName];
  [(IRSystemStateManager *)self setSystemState:v9];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v11 = [systemState3 copyWithReplacementPredictedOutputDeviceType:{objc_msgSend(deviceCopy, "deviceType")}];
  [(IRSystemStateManager *)self setSystemState:v11];

  systemState4 = [(IRSystemStateManager *)self systemState];
  deviceSubType = [deviceCopy deviceSubType];

  v14 = [systemState4 copyWithReplacementPredictedOutputDeviceSubType:deviceSubType];
  [(IRSystemStateManager *)self setSystemState:v14];

  systemState5 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v14) = [systemState5 isEqual:v6];

  return v14 ^ 1;
}

- (void)provider:(id)provider didUpdateNearbyDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__IRSystemStateManager_provider_didUpdateNearbyDevices___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = devicesCopy;
  v7 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
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

- (void)monitor:(id)monitor didUpdateAppInFocus:(id)focus isScreenUnlockEvent:(BOOL)event
{
  focusCopy = focus;
  queue = [(IRSystemStateManager *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__IRSystemStateManager_monitor_didUpdateAppInFocus_isScreenUnlockEvent___block_invoke;
  v10[3] = &unk_2797E2118;
  v11 = focusCopy;
  eventCopy = event;
  v9 = focusCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v10);
}

void __72__IRSystemStateManager_monitor_didUpdateAppInFocus_isScreenUnlockEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithAppInFocus:*(a1 + 32) andOpenWindowIfApplicable:1 isScreenUnlockEvent:*(a1 + 40)])
  {
    [v3 _didUpdateContextWithReason:@"App in focus"];
  }
}

- (void)monitor:(id)monitor didUpdateIsContinuityDisplay:(BOOL)display
{
  queue = [(IRSystemStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__IRSystemStateManager_monitor_didUpdateIsContinuityDisplay___block_invoke;
  v7[3] = &__block_descriptor_33_e30_v16__0__IRSystemStateManager_8l;
  displayCopy = display;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __61__IRSystemStateManager_monitor_didUpdateIsContinuityDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithIsContinuityDisplay:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Continuity display"];
  }
}

- (void)monitor:(id)monitor didUpdateDisplayOn:(BOOL)on
{
  queue = [(IRSystemStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__IRSystemStateManager_monitor_didUpdateDisplayOn___block_invoke;
  v7[3] = &__block_descriptor_33_e30_v16__0__IRSystemStateManager_8l;
  onCopy = on;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __51__IRSystemStateManager_monitor_didUpdateDisplayOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithDisplayOn:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Display On"];
  }
}

- (void)context:(id)context didUpdateOutputDevice:(id)device
{
  deviceCopy = device;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__IRSystemStateManager_context_didUpdateOutputDevice___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = deviceCopy;
  v7 = deviceCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __54__IRSystemStateManager_context_didUpdateOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithOutputDevice:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Output device"];
  }
}

- (void)context:(id)context didUpdatePredicatedOutputDevice:(id)device
{
  deviceCopy = device;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__IRSystemStateManager_context_didUpdatePredicatedOutputDevice___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = deviceCopy;
  v7 = deviceCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
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