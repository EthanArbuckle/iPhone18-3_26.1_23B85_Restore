@interface DBAnalytics
+ (BOOL)shouldSendAnalyticsEvents;
+ (id)_axColorFiltersIntensityStringForFloat:(double)float;
+ (id)_axPhoneColorFiltersAnalyticsString;
+ (id)_axPhoneSoundRecognitionAnalyticsString:(unint64_t)string;
+ (void)biome_CarPlayStarted:(BOOL)started wireless:(BOOL)wireless;
- (BOOL)_queue_stateProviderIsReadyForAnalytics:(id)analytics;
- (DBAnalytics)initWithEnvironmentConfiguration:(id)configuration;
- (DBEnvironmentConfiguration)environmentConfiguration;
- (id)_analyticsInfoPassingTest:(id)test;
- (id)_analyticsLayoutInfoPassingTest:(id)test;
- (id)announceMessagesState;
- (id)appAnalyticsInfoForApp:(id)app;
- (id)appAnalyticsInfoForBundleIdentifier:(id)identifier;
- (id)dictionaryFromInterrupt;
- (id)nowPlayingAppAnalyticsInfo;
- (id)stringFromInterruptDictionary:(id)dictionary;
- (id)stringFromSessionSummary;
- (void)_DBLayoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)_appEndedNavigation:(id)navigation;
- (void)_appStartedNavigation:(id)navigation;
- (void)_applicationDidLaunch:(id)launch;
- (void)_carHasMainAudio:(id)audio;
- (void)_dashboardNowPlayingWidgetTapped:(id)tapped;
- (void)_dashboardSmartWidgetUpdated:(id)updated;
- (void)_iosHasMainAudio:(id)audio;
- (void)_mediaserverdConnectionDied;
- (void)_queue_applicationWithBundleIdentifier:(id)identifier didStartNavigation:(BOOL)navigation;
- (void)_queue_deviceDidChangeToBundleIdentifier:(id)identifier;
- (void)_queue_didChangeToBundleIdentifier:(id)identifier;
- (void)_queue_fetchLocationBits;
- (void)_queue_mediaserverdConnectionDied;
- (void)_queue_navigationOwnershipChangedToOwner:(unint64_t)owner;
- (void)_queue_nowPlayingUpdatedToApp:(id)app isPlaying:(BOOL)playing;
- (void)_queue_powerStateDidChange;
- (void)_queue_screenViewAreaChanged:(id)changed screenInfo:(id)info configuration:(id)configuration duration:(double)duration;
- (void)_queue_sendAnnounceMessagesEvent;
- (void)_queue_sessionEnded;
- (void)_queue_sessionStarted;
- (void)_queue_thermalTrapOccurred;
- (void)_queue_wifidConnectionDied;
- (void)_screenBecameAvailable:(id)available;
- (void)_screenBecameUnavailable:(id)unavailable;
- (void)addSessionAnalyticsValues:(id)values toEvent:(unint64_t)event completion:(id)completion;
- (void)applySessionStartedStorage:(id)storage;
- (void)changedLayout:(id)layout;
- (void)clusterElementDidChangeVisibility:(id)visibility foreground:(BOOL)foreground;
- (void)dashboardAudioWidgetDidChangeToBundleIdentifier:(id)identifier;
- (void)dashboardNavigationDidChangeToBundleIdentifier:(id)identifier;
- (void)dashboardStateProvider:(id)provider didChangeActiveBundleIdentifier:(id)identifier;
- (void)dashboardStateProvider:(id)provider didChangeHomeScreenPageType:(unint64_t)type;
- (void)environmentConfigurationPairedVehiclesDidChange:(id)change;
- (void)firstFrameSent;
- (void)invalidate;
- (void)keybagMonitorLockStateDidChange:(id)change;
- (void)navigationOwnershipChanged:(id)changed;
- (void)nowPlayingObserver:(id)observer didChangeNowPlayingApplication:(id)application;
- (void)nowPlayingObserver:(id)observer didUpdatePlaybackState:(BOOL)state inApplication:(id)application;
- (void)preferences:(id)preferences announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)changed;
- (void)preferences:(id)preferences carPlayAnnounceEnablementTypeChanged:(int64_t)changed;
- (void)sendEvent:(unint64_t)event withParameters:(id)parameters;
- (void)session:(id)session didSetViewArea:(id)area forScreenID:(id)d withDuration:(double)duration transitionControlType:(unint64_t)type;
- (void)session:(id)session openURL:(id)l;
- (void)session:(id)session showUIForScreenInfo:(id)info withURL:(id)l;
- (void)setCarplayUIReadyTimestamp:(id)timestamp;
- (void)setClusterDisplayReadyTimestamp:(id)timestamp;
- (void)setMainDisplayReadyTimestamp:(id)timestamp;
- (void)siriDidDismiss;
- (void)siriDidPresent;
- (void)siriDidStartHostingBundleIdentifier:(id)identifier;
- (void)thermalMonitorLevelDidChange:(id)change;
- (void)userPressedTransitionControl;
@end

@implementation DBAnalytics

- (void)siriDidPresent
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__DBAnalytics_siriDidPresent__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [analyticsQueue addOperationWithBlock:v4];
}

void __29__DBAnalytics_siriDidPresent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleAppsAnalyticsInfo];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_637];
  [*(a1 + 32) _queue_didChangeToBundleIdentifier:@"com.apple.siri"];
}

void __29__DBAnalytics_siriDidPresent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setWasVisibleBeforeSiri:1];
  [v2 stopCountingVisibleTime];
}

- (void)_queue_fetchLocationBits
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CLGetAccessoryTypeBitSet();
  v4 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Received location bitset %@", &v7, 0xCu);
  }

  if (v3)
  {
    if ((v3 & 0x20) != 0)
    {
      v6 = @"No";
    }

    else
    {
      v6 = @"Yes";
    }

    [(DBAnalytics *)self setAccessorySupportsLocation:v6];
    if (v3)
    {
      [(DBAnalytics *)self setAccessorySupportsLocationPASCDSpeed:1];
      if ((v3 & 2) == 0)
      {
LABEL_9:
        if ((v3 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    [(DBAnalytics *)self setAccessorySupportsLocationGPGGA:1];
    if ((v3 & 4) == 0)
    {
LABEL_10:
      if ((v3 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    [(DBAnalytics *)self setAccessorySupportsLocationGPRMC:1];
    if ((v3 & 8) == 0)
    {
LABEL_11:
      if ((v3 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_17:
    [(DBAnalytics *)self setAccessorySupportsLocationDeadReckoning:1];
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_12:
    [(DBAnalytics *)self setAccessorySupportsLocationChinaShifted:1];
  }
}

- (void)_queue_powerStateDidChange
{
  properties = 0;
  if (!IORegistryEntryCreateCFProperties(self->_powerSource, &properties, *MEMORY[0x277CBECE8], 0))
  {
    analyticsChargeInfo = [(DBAnalytics *)self analyticsChargeInfo];

    if (!analyticsChargeInfo)
    {
      v4 = objc_alloc_init(_DBAnalyticsChargeInfo);
      [(DBAnalytics *)self setAnalyticsChargeInfo:v4];
    }

    Value = CFDictionaryGetValue(properties, @"AdapterDetails");
    if (!Value)
    {
      goto LABEL_65;
    }

    v6 = Value;
    v7 = CFDictionaryGetValue(properties, @"IsCharging");
    bOOLValue = [v7 BOOLValue];
    if (!bOOLValue)
    {
LABEL_58:
      currentChargingState = [(DBAnalytics *)self currentChargingState];
      v29 = [(DBAnalytics *)self currentChargingState]!= 1;
      if (currentChargingState == -1 || ((bOOLValue ^ v29) & 1) == 0)
      {
        analyticsChargeInfo2 = [(DBAnalytics *)self analyticsChargeInfo];
        v31 = analyticsChargeInfo2;
        if (bOOLValue)
        {
          [analyticsChargeInfo2 setDidChargeDuringSession:1];

          analyticsChargeInfo3 = [(DBAnalytics *)self analyticsChargeInfo];
          [analyticsChargeInfo3 startCountingTimeForKey:@"CARAnalyticsChargingTime"];

          [(DBAnalytics *)self setCurrentChargingState:1];
          analyticsChargeInfo4 = [(DBAnalytics *)self analyticsChargeInfo];
          sessionChargingStates = [analyticsChargeInfo4 sessionChargingStates];
          date = [MEMORY[0x277CBEAA8] date];
          sessionStartDate = [(DBAnalytics *)self sessionStartDate];
          [date timeIntervalSinceDate:sessionStartDate];
          v38 = v37;
          analyticsChargeInfo5 = [(DBAnalytics *)self analyticsChargeInfo];
          adapterFamily = [analyticsChargeInfo5 adapterFamily];
          [sessionChargingStates appendFormat:@"(%0.0f, 1, %@)", v38, adapterFamily];
        }

        else
        {
          [analyticsChargeInfo2 stopCountingTimeForKey:@"CARAnalyticsChargingTime"];

          [(DBAnalytics *)self setCurrentChargingState:0];
          analyticsChargeInfo4 = [(DBAnalytics *)self analyticsChargeInfo];
          sessionChargingStates = [analyticsChargeInfo4 sessionChargingStates];
          date = [MEMORY[0x277CBEAA8] date];
          sessionStartDate = [(DBAnalytics *)self sessionStartDate];
          [date timeIntervalSinceDate:sessionStartDate];
          [sessionChargingStates appendFormat:@"(%0.0f, 0, None)", v41];
        }
      }

LABEL_65:
      CFRelease(properties);
      return;
    }

    v9 = CFDictionaryGetValue(v6, @"Description");
    analyticsChargeInfo6 = [(DBAnalytics *)self analyticsChargeInfo];
    [analyticsChargeInfo6 setAdapterDescription:v9];

    v11 = [CFDictionaryGetValue(v6 @"FamilyCode")];
    if (v11 <= -536854519)
    {
      if (v11 > -536854525)
      {
        if (v11 > -536854522)
        {
          if (v11 == -536854521)
          {
            v12 = @"USBUnknown";
          }

          else if (v11 == -536854520)
          {
            v12 = @"USBCBrick";
          }

          else
          {
            v12 = @"USBCTypeC";
          }
        }

        else if (v11 == -536854524)
        {
          v12 = @"USBChargingPortDedicated";
        }

        else if (v11 == -536854523)
        {
          v12 = @"USBChargingPortDownstream";
        }

        else
        {
          v12 = @"USBChargingPort";
        }

        goto LABEL_55;
      }

      if (v11 > -536854528)
      {
        if (v11 == -536854527)
        {
          v12 = @"USBHostSuspended";
        }

        else if (v11 == -536854526)
        {
          v12 = @"USBDevice";
        }

        else
        {
          v12 = @"USBAdapter";
        }

        goto LABEL_55;
      }

      if (v11 == -536870201)
      {
        v12 = @"Unsupported";
        goto LABEL_55;
      }

      if (v11 == -536854528)
      {
        v12 = @"USBHost";
        goto LABEL_55;
      }
    }

    else if (v11 > -536723453)
    {
      if (v11 <= -536723450)
      {
        if (v11 == -536723452)
        {
          v12 = @"External4";
        }

        else if (v11 == -536723451)
        {
          v12 = @"External5";
        }

        else
        {
          v12 = @"MagSafeCharger";
        }

        goto LABEL_55;
      }

      switch(v11)
      {
        case -536723449:
          v12 = @"MagSafeAccessory";
          goto LABEL_55;
        case -536723448:
          v12 = @"External8";
          goto LABEL_55;
        case 0:
          v12 = @"Disconnected";
          goto LABEL_55;
      }
    }

    else
    {
      if (v11 > -536723456)
      {
        if (v11 == -536723455)
        {
          v12 = @"External1Puck";
        }

        else if (v11 == -536723454)
        {
          v12 = @"External2";
        }

        else
        {
          v12 = @"Qi";
        }

        goto LABEL_55;
      }

      switch(v11)
      {
        case -536854518:
          v12 = @"USBCPD";
          goto LABEL_55;
        case -536838144:
          v12 = @"Firewire";
          goto LABEL_55;
        case -536723456:
          v12 = @"AC";
LABEL_55:
          analyticsChargeInfo7 = [(DBAnalytics *)self analyticsChargeInfo];
          [analyticsChargeInfo7 setAdapterFamily:v12];

          if ([CFDictionaryGetValue(v6 @"IsWireless")])
          {
            analyticsChargeInfo8 = [(DBAnalytics *)self analyticsChargeInfo];
            [analyticsChargeInfo8 setWireless:1];
          }

          v15 = [CFDictionaryGetValue(v6 @"AdapterVoltage")];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d V", (v15 / 1000), (v15 / 100 % 10)];
          analyticsChargeInfo9 = [(DBAnalytics *)self analyticsChargeInfo];
          [analyticsChargeInfo9 setVoltage:v16];

          v18 = [CFDictionaryGetValue(v6 @"Current")];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d mA", v18];
          analyticsChargeInfo10 = [(DBAnalytics *)self analyticsChargeInfo];
          [analyticsChargeInfo10 setCurrent:v19];

          v21 = [CFDictionaryGetValue(v6 @"PMUConfiguration")];
          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCABB0] numberWithInt:v21];
          v24 = [v22 stringWithFormat:@"%@ mA", v23];
          analyticsChargeInfo11 = [(DBAnalytics *)self analyticsChargeInfo];
          [analyticsChargeInfo11 setPMUConfiguration:v24];

          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d W", (v18 * v15 / 1000000), (((351843721 * v18 * v15) >> 45) + ((351843721 * v18 * v15) >> 63)) % 10];
          analyticsChargeInfo12 = [(DBAnalytics *)self analyticsChargeInfo];
          [analyticsChargeInfo12 setWattage:v26];

          goto LABEL_58;
      }
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"UnknownFamilyCode:%ld", v11];
    goto LABEL_55;
  }
}

- (DBAnalytics)initWithEnvironmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v80.receiver = self;
  v80.super_class = DBAnalytics;
  v5 = [(DBAnalytics *)&v80 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environmentConfiguration, configurationCopy);
    [configurationCopy addObserver:v6];
    thermalMonitor = [configurationCopy thermalMonitor];
    [thermalMonitor addObserver:v6];

    environmentConfiguration = [(DBAnalytics *)v6 environmentConfiguration];
    vehicle = [environmentConfiguration vehicle];
    v6->_mapsAppearanceStyle = [vehicle mapsAppearancePreference];

    array = [MEMORY[0x277CBEB18] array];
    analyticsAppInfo = v6->_analyticsAppInfo;
    v6->_analyticsAppInfo = array;

    array2 = [MEMORY[0x277CBEB18] array];
    analyticsScreenInfo = v6->_analyticsScreenInfo;
    v6->_analyticsScreenInfo = array2;

    v6->_screenOwnershipDuration = 0.0;
    v6->_sessionUnlockCount = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessionAppLaunches = v6->_sessionAppLaunches;
    v6->_sessionAppLaunches = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sessionDeviceAppLaunches = v6->_sessionDeviceAppLaunches;
    v6->_sessionDeviceAppLaunches = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sessionNavigationOwners = v6->_sessionNavigationOwners;
    v6->_sessionNavigationOwners = dictionary3;

    v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
    sessionThermalLevels = v6->_sessionThermalLevels;
    v6->_sessionThermalLevels = v20;

    v6->_audioOwnershipDuration = 0.0;
    v6->_sessionStartedEventSent = 0;
    array3 = [MEMORY[0x277CBEB18] array];
    analyticsLayoutInfo = v6->_analyticsLayoutInfo;
    v6->_analyticsLayoutInfo = array3;

    v24 = objc_alloc_init(_DBAnalyticsTimeAccumulator);
    analyticsNavOwnershipInfo = v6->_analyticsNavOwnershipInfo;
    v6->_analyticsNavOwnershipInfo = v24;

    v26 = objc_alloc_init(MEMORY[0x277CF9030]);
    siriPreferences = v6->_siriPreferences;
    v6->_siriPreferences = v26;

    [(CRSSiriPreferences *)v6->_siriPreferences addObserver:v6];
    objc_initWeak(&location, v6);
    session = [configurationCopy session];
    configuration = [session configuration];
    transportType = [configuration transportType];

    if (transportType == 3)
    {
      v6->_wifiManager = WiFiManagerClientCreate();
      v31 = objc_alloc_init(MEMORY[0x277D02B18]);
      interface = v6->_interface;
      v6->_interface = v31;

      [(CWFInterface *)v6->_interface activate];
      v33 = v6->_interface;
      v78 = 0;
      [(CWFInterface *)v33 startMonitoringEventType:6 error:&v78];
      v34 = v78;
      if (v34)
      {
        v35 = DBLogForCategory(0xDuLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(DBAnalytics *)v34 initWithEnvironmentConfiguration:v35];
        }

        v36 = v6->_interface;
        v6->_interface = 0;
      }
    }

    if (v6->_wifiManager)
    {
      CFRunLoopGetMain();
      WiFiManagerClientScheduleWithRunLoop();
      WiFiManagerClientRegisterServerRestartCallback();
    }

    v37 = v6->_interface;
    if (v37)
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke;
      v75[3] = &unk_278F03E60;
      v76 = v6;
      objc_copyWeak(&v77, &location);
      [(CWFInterface *)v37 setEventHandler:v75];
      objc_destroyWeak(&v77);
    }

    [(DBAnalytics *)v6 navigationOwnershipChanged:0];
    v38 = [[DBNowPlayingObserver alloc] initWithEnvironmentConfiguration:configurationCopy];
    nowPlayingObserver = v6->_nowPlayingObserver;
    v6->_nowPlayingObserver = v38;

    [(DBNowPlayingObserver *)v6->_nowPlayingObserver setDelegate:v6];
    v40 = objc_alloc_init(DBKeybagMonitor);
    keybagMonitor = v6->_keybagMonitor;
    v6->_keybagMonitor = v40;

    keybagMonitor = [(DBAnalytics *)v6 keybagMonitor];
    [keybagMonitor addObserver:v6];

    v43 = objc_alloc_init(MEMORY[0x277CF8988]);
    dndStatus = v6->_dndStatus;
    v6->_dndStatus = v43;

    v45 = objc_alloc_init(MEMORY[0x277CCABD8]);
    analyticsQueue = v6->_analyticsQueue;
    v6->_analyticsQueue = v45;

    [(NSOperationQueue *)v6->_analyticsQueue setName:@"CarPlay Analytics Queue"];
    [(NSOperationQueue *)v6->_analyticsQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v6->_analyticsQueue setQualityOfService:25];
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:1];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_3;
    v73[3] = &unk_278F03E88;
    objc_copyWeak(&v74, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v73];
    v48 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    displayLayoutMonitor = v6->_displayLayoutMonitor;
    v6->_displayLayoutMonitor = v48;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__screenBecameAvailable_ name:*MEMORY[0x277CF8940] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__screenBecameUnavailable_ name:*MEMORY[0x277CF8948] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__dashboardSmartWidgetUpdated_ name:@"CARSmartWidgetPredictionUpdatedNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__dashboardNowPlayingWidgetTapped_ name:@"CARNowPlayingWidgetInteractionNotification" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v6 selector:sel__applicationDidLaunch_ name:@"CARApplicationDidLaunchNotification" object:0];

    defaultCenter6 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter6 addObserver:v6 selector:sel__appStartedNavigation_ name:*MEMORY[0x277CF8910] object:0];

    defaultCenter7 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter7 addObserver:v6 selector:sel__appEndedNavigation_ name:*MEMORY[0x277CF8908] object:0];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v6 selector:sel__iosHasMainAudio_ name:*MEMORY[0x277CF8960] object:0];

    defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter9 addObserver:v6 selector:sel__carHasMainAudio_ name:*MEMORY[0x277CF8918] object:0];

    defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter10 addObserver:v6 selector:sel__mediaserverdConnectionDied name:@"CARSessionServerConnectionDiedNotification" object:0];

    defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter11 addObserver:v6 selector:sel_navigationOwnershipChanged_ name:*MEMORY[0x277CF8938] object:0];

    analyticsQueue = [(DBAnalytics *)v6 analyticsQueue];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_4;
    v71[3] = &unk_278F01580;
    v62 = v6;
    v72 = v62;
    [analyticsQueue addOperationWithBlock:v71];

    v63 = IOServiceMatching("IOPMPowerSource");
    LODWORD(analyticsQueue) = *MEMORY[0x277CD28A0];
    v62->_powerSource = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v63);
    v64 = IONotificationPortCreate(analyticsQueue);
    v62->_powerNotificationPort = v64;
    if (!IOServiceAddInterestNotification(v64, v62->_powerSource, "IOGeneralInterest", DBPowerChangeCallback, v62, &v62->_powerSourceNotification))
    {
      Current = CFRunLoopGetCurrent();
      RunLoopSource = IONotificationPortGetRunLoopSource(v62->_powerNotificationPort);
      CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
      analyticsQueue2 = [(DBAnalytics *)v62 analyticsQueue];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_5;
      v69[3] = &unk_278F01580;
      v70 = v62;
      [analyticsQueue2 addOperationWithBlock:v69];
    }

    objc_destroyWeak(&v74);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) analyticsQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_2;
  v6[3] = &unk_278F02070;
  objc_copyWeak(&v8, (a1 + 40));
  v5 = v3;
  v7 = v5;
  [v4 addOperationWithBlock:v6];

  objc_destroyWeak(&v8);
}

void __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) type] == 6)
  {
    v2 = [*(a1 + 32) info];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D02A88]];

    if ([v3 isLinkDown] && objc_msgSend(v3, "isInvoluntaryLinkDown"))
    {
      v4 = [v3 timestamp];
      [WeakRetained setWifiLinkDownDate:v4];

      v5 = [v3 reason];
      v6 = [v3 subreason];
      v7 = CFSTR("wifiLinkDown(Unknown,");
      if (v5 == 2)
      {
        v7 = CFSTR("wifiLinkDown(BeaconLost,");
      }

      if (v5 == 1)
      {
        v8 = CFSTR("wifiLinkDown(DEAUTH,");
      }

      else
      {
        v8 = v7;
      }

      [WeakRetained setWifiLinkDownReason:v8];
      v9 = [WeakRetained wifiLinkDownReason];
      v10 = [v9 stringByAppendingFormat:@"%ld"], v6);
      [WeakRetained setWifiLinkDownReason:v10];
    }
  }
}

void __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _DBLayoutMonitor:v9 didUpdateDisplayLayout:v8 withContext:v7];
}

void __48__DBAnalytics_initWithEnvironmentConfiguration___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) environmentConfiguration];
  v4 = [v2 session];

  v3 = v4;
  if (v4)
  {
    [v4 addObserver:*(a1 + 32)];
    [*(a1 + 32) _queue_sessionStarted];
    v3 = v4;
  }
}

+ (BOOL)shouldSendAnalyticsEvents
{
  v2 = NSClassFromString(&cfstr_Xctestcase.isa);
  if (v2)
  {
    v3 = DBLogForCategory(0xDuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Not recording events due to testing context.", v5, 2u);
    }
  }

  return v2 == 0;
}

- (id)dictionaryFromInterrupt
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  IOPSGetPercentRemaining();
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  [v3 setObject:v4 forKey:@"batteryPercentage"];

  v5 = NSStringFromDBThermalLevel(self->_currentThermalLevel);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"(no value)";
  }

  [v3 setObject:v7 forKey:@"thermalLevel"];

  mediaserverdDiedDate = [(DBAnalytics *)self mediaserverdDiedDate];

  if (mediaserverdDiedDate)
  {
    mediaserverdDiedDate2 = [(DBAnalytics *)self mediaserverdDiedDate];
    [v3 setObject:mediaserverdDiedDate2 forKey:@"mediaserverd"];
  }

  thermalTrapDate = [(DBAnalytics *)self thermalTrapDate];

  if (thermalTrapDate)
  {
    thermalTrapDate2 = [(DBAnalytics *)self thermalTrapDate];
    [v3 setObject:thermalTrapDate2 forKey:@"thermalTrap"];
  }

  wifiLinkDownDate = [(DBAnalytics *)self wifiLinkDownDate];

  if (wifiLinkDownDate)
  {
    wifiLinkDownDate2 = [(DBAnalytics *)self wifiLinkDownDate];
    wifiLinkDownReason = [(DBAnalytics *)self wifiLinkDownReason];
    [v3 setObject:wifiLinkDownDate2 forKey:wifiLinkDownReason];
  }

  if ([v3 count])
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (id)stringFromInterruptDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v23 = 0;
    goto LABEL_25;
  }

  array = [MEMORY[0x277CBEB18] array];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"CARAnalyticsPreviousSessionEnd"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [v6 DBSecondsToDate:date];
  v9 = v8;

  if (v9 >= 300.0)
  {
    goto LABEL_20;
  }

  v25 = v6;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *v27;
  do
  {
    v14 = 0;
    do
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(allKeys);
      }

      v15 = *(*(&v26 + 1) + 8 * v14);
      if (([v15 isEqualToString:@"batteryPercentage"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"thermalLevel"))
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [dictionaryCopy objectForKey:v15];
        [v16 stringWithFormat:@"%@:%@", v15, v17];
        v18 = LABEL_12:;
        [array addObject:v18];

        goto LABEL_13;
      }

      v17 = [dictionaryCopy objectForKey:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        date2 = [MEMORY[0x277CBEAA8] date];
        [v17 DBSecondsToDate:date2];
        v21 = v20;

        if (v21 < 300.0)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%fsecondsAgo", v15, *&v21];
          goto LABEL_12;
        }
      }

LABEL_13:

      ++v14;
    }

    while (v12 != v14);
    v22 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    v12 = v22;
  }

  while (v22);
LABEL_19:

  v6 = v25;
LABEL_20:
  if ([array count])
  {
    v23 = [array componentsJoinedByString:@" "];
    goto LABEL_23;
  }

LABEL_22:
  v23 = 0;
LABEL_23:

LABEL_25:

  return v23;
}

- (id)stringFromSessionSummary
{
  array = [MEMORY[0x277CBEB18] array];
  wifidDiedDate = [(DBAnalytics *)self wifidDiedDate];

  if (wifidDiedDate)
  {
    wifidDiedDate2 = [(DBAnalytics *)self wifidDiedDate];
    date = [MEMORY[0x277CBEAA8] date];
    [wifidDiedDate2 DBSecondsToDate:date];
    v8 = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifid:%fsecondsAgo", v8];
    [array addObject:v9];
  }

  if ([array count])
  {
    v10 = [array componentsJoinedByString:@" "];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addSessionAnalyticsValues:(id)values toEvent:(unint64_t)event completion:(id)completion
{
  valuesCopy = values;
  completionCopy = completion;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DBAnalytics_addSessionAnalyticsValues_toEvent_completion___block_invoke;
  v13[3] = &unk_278F03EB0;
  v15 = completionCopy;
  eventCopy = event;
  v14 = valuesCopy;
  v11 = completionCopy;
  v12 = valuesCopy;
  [analyticsQueue addOperationWithBlock:v13];
}

void __60__DBAnalytics_addSessionAnalyticsValues_toEvent_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = @"DBDefaultsSessionEndedStorageKey";
  }

  else
  {
    v2 = @"DBDefaultsSessionStartedStorageKey";
  }

  v3 = v2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 dictionaryForKey:v3];

  if (v5)
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v6;
  [v6 setValuesForKeysWithDictionary:*(a1 + 32)];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setObject:v7 forKey:v3];

  v9 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Stored %@ objects into user defaults for %@.", &v12, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }
}

- (void)applySessionStartedStorage:(id)storage
{
  storageCopy = storage;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__DBAnalytics_applySessionStartedStorage___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = storageCopy;
  v6 = storageCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

void __42__DBAnalytics_applySessionStartedStorage___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) sessionStartedEventSent])
  {
    v2 = DBLogForCategory(0xDuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Already sent sessionStarted Event", buf, 2u);
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = [*(a1 + 32) vehicleAnalyticsRepresentation];
    v5 = [v3 dictionaryWithDictionary:v4];

    v6 = MEMORY[0x277CCABB0];
    v7 = [*(a1 + 32) dndStatus];
    v8 = [v6 numberWithBool:{objc_msgSend(v7, "shouldActivateWithCarPlay")}];
    [v5 setObject:v8 forKeyedSubscript:@"DNDWDCarPlay"];

    v9 = MEMORY[0x277CF8A30];
    v10 = [MEMORY[0x277CF8A30] capabilitiesIdentifier];
    v66 = [v9 fetchCarCapabilitiesWithIdentifier:v10];

    if ([v66 disabledFeature])
    {
      v15 = @"Restricted";
    }

    else
    {
      v11 = [*(a1 + 32) environmentConfiguration];
      v12 = [v11 session];
      v13 = [v12 configuration];
      v14 = [v13 nowPlayingAlbumArtMode];

      if (v14 == 2)
      {
        v15 = @"On";
      }

      else
      {
        v15 = @"Off";
      }
    }

    [v5 setObject:v15 forKeyedSubscript:{@"AlbumArtAllowed", v66}];
    v16 = [*(a1 + 32) environmentConfiguration];
    v17 = [v16 vehicle];
    v18 = [v17 appearanceModePreference];

    if (v18)
    {
      if (v18 == 1)
      {
        v19 = 0;
        v20 = @"Always Light";
      }

      else if (v18 == 2)
      {
        v19 = 0;
        v20 = @"Always Dark";
      }

      else
      {
        v20 = 0;
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
      v20 = @"Automatic";
    }

    *buf = 0;
    IOPSGetPercentRemaining();
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v22 = (a1 + 32);
    v23 = [*(a1 + 32) analyticsChargeInfo];
    [v23 setStartingBatteryPercentage:v21];

    v24 = [*(a1 + 32) analyticsChargeInfo];
    v25 = [v24 startingBatteryPercentage];
    [v5 setObject:v25 forKeyedSubscript:@"batteryPercentage"];

    if (v19)
    {
      v26 = @"(no value)";
    }

    else
    {
      v26 = v20;
    }

    [v5 setObject:v26 forKeyedSubscript:@"Appearance"];
    v27 = [*v22 environmentConfiguration];
    v28 = [v27 wallpaperPreferences];
    v29 = [v28 currentWallpaper];
    v30 = [v29 identifier];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = @"(no value)";
    }

    [v5 setObject:v32 forKeyedSubscript:@"Wallpaper"];

    v33 = [*v22 vehicleAnalyticsRepresentation];
    v34 = [v33 objectForKeyedSubscript:@"SourceVersion"];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = @"(no value)";
    }

    [v5 setObject:v36 forKeyedSubscript:@"SourceVersion"];

    v37 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v38 = [v37 BOOLForKey:@"CARSmartWidgetHidden"];

    v39 = MEMORY[0x277CBEC38];
    v40 = MEMORY[0x277CBEC28];
    if (v38)
    {
      v41 = MEMORY[0x277CBEC28];
    }

    else
    {
      v41 = MEMORY[0x277CBEC38];
    }

    [v5 setObject:v41 forKeyedSubscript:@"DashboardSuggestions"];
    if (*(a1 + 40))
    {
      [v5 addEntriesFromDictionary:?];
    }

    *buf = 0;
    v72 = buf;
    v73 = 0x2020000000;
    v74 = 0;
    v42 = [*(a1 + 32) environmentConfiguration];
    v43 = [v42 session];
    v44 = [v43 configuration];
    v45 = [v44 screens];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __42__DBAnalytics_applySessionStartedStorage___block_invoke_307;
    v68[3] = &unk_278F03ED8;
    v68[4] = *(a1 + 32);
    v2 = v5;
    v69 = v2;
    v70 = buf;
    [v45 enumerateObjectsUsingBlock:v68];

    if (v72[24])
    {
      v46 = v39;
    }

    else
    {
      v46 = v40;
    }

    v47 = v46;
    [v2 setObject:v47 forKeyedSubscript:@"secondVideoStream"];

    v48 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v49 = [v48 objectForKey:@"CARAnalyticsSessionInterruptKey"];

    v50 = [*(a1 + 32) stringFromInterruptDictionary:v49];
    v51 = v50;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = @"(no value)";
    }

    v53 = v52;
    [v2 setObject:v53 forKeyedSubscript:@"previousSessionInterrupt"];

    v54 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v54 removeObjectForKey:@"CARAnalyticsSessionInterruptKey"];

    v55 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v55 removeObjectForKey:@"CARAnalyticsPreviousSessionEnd"];

    v56 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v57 = [v56 dictionaryForKey:@"DBDefaultsSessionStartedStorageKey"];

    if ([v57 count])
    {
      v58 = DBLogForCategory(0xDuLL);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v57, "count")}];
        *v75 = 138412290;
        v76 = v59;
        _os_log_impl(&dword_248146000, v58, OS_LOG_TYPE_DEFAULT, "Applying %@ donated values to sessionStarted event", v75, 0xCu);
      }

      [v2 setValuesForKeysWithDictionary:v57];
      v60 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v60 removeObjectForKey:@"DBDefaultsSessionStartedStorageKey"];
    }

    else
    {
      v60 = DBLogForCategory(0xDuLL);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *v75 = 138412290;
        v76 = @"DBDefaultsSessionStartedStorageKey";
        _os_log_impl(&dword_248146000, v60, OS_LOG_TYPE_DEFAULT, "No available donated analytics events for key %@", v75, 0xCu);
      }
    }

    v61 = [*(a1 + 32) sessionStartDate];

    if (v61)
    {
      [*(a1 + 32) sendEvent:0 withParameters:v2];
    }

    v62 = objc_opt_class();
    v63 = [*(a1 + 32) environmentConfiguration];
    v64 = [v63 session];
    v65 = [v64 configuration];
    [v62 biome_CarPlayStarted:1 wireless:{objc_msgSend(v65, "transportType") == 3}];

    [*(a1 + 32) setSessionStartedEventSent:1];
    _Block_object_dispose(buf, 8);
  }
}

void __42__DBAnalytics_applySessionStartedStorage___block_invoke_307(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3 + 1];
  v7 = [v5 stringWithFormat:@"Display%@", v6];

  v8 = [v13 viewAreas];
  v9 = [v8 firstObject];

  v10 = [[_DBAnalyticsScreenInfo alloc] initWithScreenInfo:v13 analyticsPrefix:v7 sessionStartViewArea:v9];
  v11 = [*(a1 + 32) analyticsScreenInfo];
  [v11 addObject:v10];

  if (v9)
  {
    [(_DBAnalyticsScreenInfo *)v10 startCountingTimeForViewArea:v9];
  }

  v12 = [(_DBAnalyticsScreenInfo *)v10 analytics_sessionStartedDictionaryRepresentation];
  if (v12)
  {
    [*(a1 + 40) addEntriesFromDictionary:v12];
  }

  if ([v13 screenType] == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)userPressedTransitionControl
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__DBAnalytics_userPressedTransitionControl__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [analyticsQueue addOperationWithBlock:v4];
}

void __43__DBAnalytics_userPressedTransitionControl__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) analyticsScreenInfo];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ([v6 isAccumulatingTimeForAnyKey])
        {
          [v6 setViewAreaChangeUsingTransitionControlCount:{objc_msgSend(v6, "viewAreaChangeUsingTransitionControlCount") + 1}];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

+ (void)biome_CarPlayStarted:(BOOL)started wireless:(BOOL)wireless
{
  v6 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DBAnalytics_biome_CarPlayStarted_wireless___block_invoke;
  block[3] = &__block_descriptor_34_e5_v8__0l;
  wirelessCopy = wireless;
  startedCopy = started;
  dispatch_async(v6, block);
}

void __45__DBAnalytics_biome_CarPlayStarted_wireless___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CF1B58] carPlayStream];
  v2 = objc_alloc(MEMORY[0x277CF1920]);
  if (*(a1 + 32))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [v2 initWithReason:v3 isStart:*(a1 + 33)];
  v5 = [v6 source];
  [v5 sendEvent:v4];
}

- (void)_screenBecameAvailable:(id)available
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__DBAnalytics__screenBecameAvailable___block_invoke;
  v5[3] = &unk_278F01580;
  v5[4] = self;
  [analyticsQueue addOperationWithBlock:v5];
}

void __38__DBAnalytics__screenBecameAvailable___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) screenOwnershipDate];

  if (!v2)
  {
    v3 = [*(a1 + 32) _analyticsInfoPassingTest:&__block_literal_global_40];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          [v8 setWasVisibleBeforeCarScreen:0];
          [v8 startCountingVisibleTime];
        }

        v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v5);
    }

    v9 = [*(a1 + 32) _analyticsInfoPassingTest:&__block_literal_global_323];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * j);
          [v14 setWasVisibleInDashboardBeforeCarScreen:0];
          [v14 startCountingDashboardVisibleTime];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v11);
    }

    v15 = [*(a1 + 32) _analyticsInfoPassingTest:&__block_literal_global_325];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * k);
          [v20 setWasVisibleInClusterBeforeCarScreen:0];
          [v20 startCountingClusterVisibleTime];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v17);
    }

    v21 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setScreenOwnershipDate:v21];

    v22 = [*(a1 + 32) lastActiveBundleIdentifier];

    if (v22)
    {
      v23 = *(a1 + 32);
      v24 = [v23 lastActiveBundleIdentifier];
      [v23 _queue_didChangeToBundleIdentifier:v24];
    }

    [*(a1 + 32) _queue_fetchLocationBits];
  }
}

- (void)_screenBecameUnavailable:(id)unavailable
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__DBAnalytics__screenBecameUnavailable___block_invoke;
  v5[3] = &unk_278F01580;
  v5[4] = self;
  [analyticsQueue addOperationWithBlock:v5];
}

void __40__DBAnalytics__screenBecameUnavailable___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = [*(a1 + 32) visibleAppsAnalyticsInfo];
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        [v7 stopCountingVisibleTime];
        [v7 setWasVisibleBeforeCarScreen:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v4);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [*(a1 + 32) visibleDashboardAppsAnalyticsInfo];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * j);
        [v13 stopCountingDashboardVisibleTime];
        [v13 setWasVisibleInDashboardBeforeCarScreen:1];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [*(a1 + 32) visibleClusterAppsAnalyticsInfo];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * k);
        [v19 stopCountingClusterVisibleTime];
        [v19 setWasVisibleInClusterBeforeCarScreen:1];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v16);
  }

  v20 = [*(a1 + 32) screenOwnershipDate];

  if (v20)
  {
    v21 = *(a1 + 32);
    v22 = [v21 screenOwnershipDate];
    v23 = [MEMORY[0x277CBEAA8] date];
    [v22 DBSecondsToDate:v23];
    v25 = v24;
    [v21 screenOwnershipDuration];
    [v21 setScreenOwnershipDuration:v25 + v26];

    [*(a1 + 32) setScreenOwnershipDate:0];
  }
}

- (void)_iosHasMainAudio:(id)audio
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__DBAnalytics__iosHasMainAudio___block_invoke;
  v5[3] = &unk_278F01580;
  v5[4] = self;
  [analyticsQueue addOperationWithBlock:v5];
}

void __32__DBAnalytics__iosHasMainAudio___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioOwnershipDate];

  if (!v2)
  {
    v3 = DBLogForCategory(0xDuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "iOS now owns main audio.", v5, 2u);
    }

    v4 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setAudioOwnershipDate:v4];

    [*(a1 + 32) _queue_fetchLocationBits];
  }
}

- (void)_carHasMainAudio:(id)audio
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__DBAnalytics__carHasMainAudio___block_invoke;
  v5[3] = &unk_278F01580;
  v5[4] = self;
  [analyticsQueue addOperationWithBlock:v5];
}

void __32__DBAnalytics__carHasMainAudio___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioOwnershipDate];

  if (v2)
  {
    v3 = DBLogForCategory(0xDuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Accessory now owns main audio.", v10, 2u);
    }

    v4 = *(a1 + 32);
    v5 = [v4 audioOwnershipDate];
    v6 = [MEMORY[0x277CBEAA8] date];
    [v5 DBSecondsToDate:v6];
    v8 = v7;
    [v4 audioOwnershipDuration];
    [v4 setAudioOwnershipDuration:v8 + v9];

    [*(a1 + 32) setAudioOwnershipDate:0];
  }
}

- (void)_queue_sessionStarted
{
  sessionStartDate = [(DBAnalytics *)self sessionStartDate];

  if (!sessionStartDate)
  {
    environmentConfiguration = [(DBAnalytics *)self environmentConfiguration];
    session = [environmentConfiguration session];

    date = [MEMORY[0x277CBEAA8] date];
    [(DBAnalytics *)self setSessionStartDate:date];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"CARStartApplicationBundleID"];
    [(DBAnalytics *)self setStartBundleIdentifier:v7];

    v8 = objc_alloc_init(_DBAnalyticsChargeInfo);
    [(DBAnalytics *)self setAnalyticsChargeInfo:v8];

    if (([session carOwnsScreen] & 1) == 0)
    {
      sessionStartDate2 = [(DBAnalytics *)self sessionStartDate];
      v10 = [sessionStartDate2 copy];
      [(DBAnalytics *)self setScreenOwnershipDate:v10];
    }

    if (([session carOwnsMainAudio] & 1) == 0)
    {
      sessionStartDate3 = [(DBAnalytics *)self sessionStartDate];
      v12 = [sessionStartDate3 copy];
      [(DBAnalytics *)self setAudioOwnershipDate:v12];
    }

    environmentConfiguration2 = [(DBAnalytics *)self environmentConfiguration];
    vehicle = [environmentConfiguration2 vehicle];
    v15 = [session analytics_dictionaryRepresentationWithVehicle:vehicle];
    [(DBAnalytics *)self setVehicleAnalyticsRepresentation:v15];

    [(DBAnalytics *)self setSessionRequestUIMapsCount:0];
    [(DBAnalytics *)self setSessionRequestUIMusicCount:0];
    [(DBAnalytics *)self setSessionRequestUIPhoneCount:0];
    [(DBAnalytics *)self setSessionRequestUIMessagesCount:0];
    [(DBAnalytics *)self setSessionRequestUIBundleIdentifierCount:0];
    [(DBAnalytics *)self setSessionShowUIMapCount:0];
    [(DBAnalytics *)self setSessionShowUITurnCardCount:0];
    [(DBAnalytics *)self setSessionRequestUIClimateQuickControlsCount:0];
    [(DBAnalytics *)self setSessionRequestUISearchCount:0];
    analyticsAppInfo = [(DBAnalytics *)self analyticsAppInfo];
    [analyticsAppInfo removeAllObjects];

    analyticsScreenInfo = [(DBAnalytics *)self analyticsScreenInfo];
    [analyticsScreenInfo removeAllObjects];

    analyticsLayoutInfo = [(DBAnalytics *)self analyticsLayoutInfo];
    [analyticsLayoutInfo removeAllObjects];

    sessionAppLaunches = [(DBAnalytics *)self sessionAppLaunches];
    [sessionAppLaunches removeAllObjects];

    sessionDeviceAppLaunches = [(DBAnalytics *)self sessionDeviceAppLaunches];
    [sessionDeviceAppLaunches removeAllObjects];

    sessionNavigationOwners = [(DBAnalytics *)self sessionNavigationOwners];
    [sessionNavigationOwners removeAllObjects];

    environmentConfiguration3 = [(DBAnalytics *)self environmentConfiguration];
    thermalMonitor = [environmentConfiguration3 thermalMonitor];
    -[DBAnalytics setCurrentThermalLevel:](self, "setCurrentThermalLevel:", [thermalMonitor level]);

    sessionThermalLevels = [(DBAnalytics *)self sessionThermalLevels];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(0, %li)", -[DBAnalytics currentThermalLevel](self, "currentThermalLevel")];
    [sessionThermalLevels setString:v25];

    [(DBAnalytics *)self setCurrentChargingState:-1];
    [(DBAnalytics *)self setSessionUnlockCount:0];
    [(DBAnalytics *)self setSiriHostedBundleIdentifier:0];
    [(DBAnalytics *)self setAccessorySupportsLocation:@"Unknown"];
    [(DBAnalytics *)self setAccessorySupportsLocationGPGGA:0];
    [(DBAnalytics *)self setAccessorySupportsLocationGPRMC:0];
    [(DBAnalytics *)self setAccessorySupportsLocationPASCDSpeed:0];
    [(DBAnalytics *)self setAccessorySupportsLocationDeadReckoning:0];
    [(DBAnalytics *)self setAccessorySupportsLocationChinaShifted:0];
    [(DBAnalytics *)self setFirstFrameTimestamp:0];
    carPlayUIReadyTimestamp = self->_carPlayUIReadyTimestamp;
    self->_carPlayUIReadyTimestamp = 0;

    mainDisplayReadyTimestamp = self->_mainDisplayReadyTimestamp;
    self->_mainDisplayReadyTimestamp = 0;

    clusterDisplayReadyTimestamp = self->_clusterDisplayReadyTimestamp;
    self->_clusterDisplayReadyTimestamp = 0;
  }
}

- (void)_queue_sessionEnded
{
  selfCopy = self;
  v370 = *MEMORY[0x277D85DE8];
  sessionStartDate = [(DBAnalytics *)self sessionStartDate];

  if (!sessionStartDate)
  {
    return;
  }

  sessionStartDate2 = [(DBAnalytics *)selfCopy sessionStartDate];
  date = [MEMORY[0x277CBEAA8] date];
  [sessionStartDate2 DBSecondsToDate:date];
  v7 = v6;

  if (v7 < 1.0)
  {
    return;
  }

  v357 = 0u;
  v358 = 0u;
  v355 = 0u;
  v356 = 0u;
  analyticsAppInfo = [(DBAnalytics *)selfCopy analyticsAppInfo];
  v9 = [analyticsAppInfo countByEnumeratingWithState:&v355 objects:v369 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v356;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v356 != v11)
        {
          objc_enumerationMutation(analyticsAppInfo);
        }

        [*(*(&v355 + 1) + 8 * i) stopCountingTimeForAllKeys];
      }

      v10 = [analyticsAppInfo countByEnumeratingWithState:&v355 objects:v369 count:16];
    }

    while (v10);
  }

  analyticsChargeInfo = [(DBAnalytics *)selfCopy analyticsChargeInfo];
  [analyticsChargeInfo stopCountingTimeForAllKeys];

  analyticsNavOwnershipInfo = [(DBAnalytics *)selfCopy analyticsNavOwnershipInfo];
  [analyticsNavOwnershipInfo stopCountingTimeForAllKeys];

  screenOwnershipDate = [(DBAnalytics *)selfCopy screenOwnershipDate];

  if (screenOwnershipDate)
  {
    screenOwnershipDate2 = [(DBAnalytics *)selfCopy screenOwnershipDate];
    date2 = [MEMORY[0x277CBEAA8] date];
    [screenOwnershipDate2 DBSecondsToDate:date2];
    v19 = v18;
    [(DBAnalytics *)selfCopy screenOwnershipDuration];
    [(DBAnalytics *)selfCopy setScreenOwnershipDuration:v19 + v20];
  }

  audioOwnershipDate = [(DBAnalytics *)selfCopy audioOwnershipDate];

  if (audioOwnershipDate)
  {
    audioOwnershipDate2 = [(DBAnalytics *)selfCopy audioOwnershipDate];
    date3 = [MEMORY[0x277CBEAA8] date];
    [audioOwnershipDate2 DBSecondsToDate:date3];
    v25 = v24;
    [(DBAnalytics *)selfCopy audioOwnershipDuration];
    [(DBAnalytics *)selfCopy setAudioOwnershipDuration:v25 + v26];
  }

  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  obj = [(DBAnalytics *)selfCopy analyticsAppInfo];
  v27 = [obj countByEnumeratingWithState:&v351 objects:v368 count:16];
  v336 = selfCopy;
  if (v27)
  {
    v28 = v27;
    v29 = *v352;
    do
    {
      v31 = 0;
      do
      {
        if (*v352 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v351 + 1) + 8 * v31);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        bundleIdentifier = [v32 bundleIdentifier];
        if (bundleIdentifier)
        {
          bundleIdentifier2 = bundleIdentifier;
        }

        else
        {
          appInfo = [v32 appInfo];
          bundleIdentifier2 = [appInfo bundleIdentifier];

          if (!bundleIdentifier2)
          {
            goto LABEL_51;
          }
        }

        [v32 accumulatedTimeForKey:@"CARAnalyticsAppVisibilityTime"];
        v38 = v37;
        [v32 accumulatedTimeForKey:@"CARAnalyticsPlaybackTime"];
        v40 = v39;
        [v32 accumulatedTimeForKey:@"CARAnalyticsDashboardVisibilityTime"];
        v42 = v41;
        [v32 accumulatedTimeForKey:@"CARAnalyticsClusterVisibilityTime"];
        v44 = v43;
        [v32 accumulatedTimeForKey:@"DBAnalyticsNavOwnershipTime"];
        v46 = v45;
        if (v38 != 0.0 || v42 != 0.0 || v40 != 0.0 || v44 != 0.0 || v45 != 0.0 || [v32 numberOfSiriPresentations])
        {
          bundleIdentifier2 = bundleIdentifier2;
          [dictionary setObject:bundleIdentifier2 forKeyedSubscript:@"bundleIdentifier"];

          *&v47 = v40;
          v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
          [dictionary setObject:v48 forKeyedSubscript:@"playbackTime"];

          *&v49 = v38;
          v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
          [dictionary setObject:v50 forKeyedSubscript:@"visibleTime"];

          *&v51 = v42;
          v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
          [dictionary setObject:v52 forKeyedSubscript:@"dashboardVisibleTime"];

          *&v53 = v44;
          v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
          [dictionary setObject:v54 forKeyedSubscript:@"clusterVisibleTime"];

          *&v55 = v46;
          v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
          [dictionary setObject:v56 forKeyedSubscript:@"navTime"];

          numberOfSiriPresentations = [v32 numberOfSiriPresentations];
          v58 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfSiriPresentations];
          [dictionary setObject:v58 forKeyedSubscript:@"siriPresentationCount"];

          v30 = v7;
          *&v59 = v30;
          v60 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
          [dictionary setObject:v60 forKeyedSubscript:@"sessionDuration"];

          if ([v32 category])
          {
            category = [v32 category];
            array = [MEMORY[0x277CBEB18] array];
            v63 = array;
            if (category)
            {
              [array addObject:@"All"];
              if ((category & 2) != 0)
              {
                goto LABEL_54;
              }

LABEL_31:
              if ((category & 4) == 0)
              {
                goto LABEL_32;
              }

LABEL_55:
              [v63 addObject:@"Calling"];
              if ((category & 8) != 0)
              {
                goto LABEL_56;
              }

LABEL_33:
              if ((category & 0x10) == 0)
              {
                goto LABEL_34;
              }

LABEL_57:
              [v63 addObject:@"Audio"];
              if ((category & 0x20) != 0)
              {
                goto LABEL_58;
              }

LABEL_35:
              if ((category & 0x80) == 0)
              {
                goto LABEL_36;
              }

LABEL_59:
              [v63 addObject:@"QuickOrdering"];
              if ((category & 0x100) != 0)
              {
                goto LABEL_60;
              }

LABEL_37:
              if ((category & 0x200) == 0)
              {
                goto LABEL_38;
              }

LABEL_61:
              [v63 addObject:@"Parking"];
              if ((category & 0x400) != 0)
              {
                goto LABEL_62;
              }

LABEL_39:
              if ((category & 0x800) == 0)
              {
                goto LABEL_40;
              }

LABEL_63:
              [v63 addObject:@"Fueling"];
              if ((category & 0x1000) != 0)
              {
                goto LABEL_64;
              }

LABEL_41:
              if ((category & 0x2000) == 0)
              {
                goto LABEL_42;
              }

LABEL_65:
              [v63 addObject:@"PublicSafety"];
              if ((category & 0x4000) != 0)
              {
LABEL_43:
                [v63 addObject:@"Video"];
              }
            }

            else
            {
              if ((category & 2) == 0)
              {
                goto LABEL_31;
              }

LABEL_54:
              [v63 addObject:@"Messaging"];
              if ((category & 4) != 0)
              {
                goto LABEL_55;
              }

LABEL_32:
              if ((category & 8) == 0)
              {
                goto LABEL_33;
              }

LABEL_56:
              [v63 addObject:@"Navigation"];
              if ((category & 0x10) != 0)
              {
                goto LABEL_57;
              }

LABEL_34:
              if ((category & 0x20) == 0)
              {
                goto LABEL_35;
              }

LABEL_58:
              [v63 addObject:@"Automaker"];
              if ((category & 0x80) != 0)
              {
                goto LABEL_59;
              }

LABEL_36:
              if ((category & 0x100) == 0)
              {
                goto LABEL_37;
              }

LABEL_60:
              [v63 addObject:@"Charging"];
              if ((category & 0x200) != 0)
              {
                goto LABEL_61;
              }

LABEL_38:
              if ((category & 0x400) == 0)
              {
                goto LABEL_39;
              }

LABEL_62:
              [v63 addObject:@"Productivity"];
              if ((category & 0x800) != 0)
              {
                goto LABEL_63;
              }

LABEL_40:
              if ((category & 0x1000) == 0)
              {
                goto LABEL_41;
              }

LABEL_64:
              [v63 addObject:@"DrivingTask"];
              if ((category & 0x2000) != 0)
              {
                goto LABEL_65;
              }

LABEL_42:
              if ((category & 0x4000) != 0)
              {
                goto LABEL_43;
              }
            }

            v64 = [v63 componentsJoinedByString:@" "];

            v65 = @"(no value)";
            if (v64)
            {
              v65 = v64;
            }

            v66 = v65;
            [dictionary setObject:v66 forKeyedSubscript:@"appCategory"];
          }

          else
          {
            [dictionary setObject:bundleIdentifier2 forKeyedSubscript:@"appCategory"];
          }

          v67 = round(v38 * 100.0 / v7);
          *&v67 = v67;
          v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
          [dictionary setObject:v68 forKeyedSubscript:@"visiblePercentage"];

          v69 = round(v40 * 100.0 / v7);
          *&v69 = v69;
          v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
          [dictionary setObject:v70 forKeyedSubscript:@"playbackPercentage"];

          [(DBAnalytics *)selfCopy screenOwnershipDuration];
          *&v71 = v71;
          v72 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
          [dictionary setObject:v72 forKeyedSubscript:@"sessionVisibilityDuration"];

          environmentConfiguration = [(DBAnalytics *)selfCopy environmentConfiguration];
          session = [environmentConfiguration session];
          configuration = [session configuration];
          supportsVehicleData = [configuration supportsVehicleData];
          v77 = MEMORY[0x277CBEC38];
          if (!supportsVehicleData)
          {
            v77 = MEMORY[0x277CBEC28];
          }

          v78 = v77;
          [dictionary setObject:v78 forKeyedSubscript:@"nextGenCarPlaySession"];

          selfCopy = v336;
          [(DBAnalytics *)v336 sendEvent:1 withParameters:dictionary];
        }

LABEL_51:

        ++v31;
      }

      while (v28 != v31);
      v79 = [obj countByEnumeratingWithState:&v351 objects:v368 count:16];
      v28 = v79;
    }

    while (v79);
  }

  v349 = 0u;
  v350 = 0u;
  v347 = 0u;
  v348 = 0u;
  analyticsLayoutInfo = [(DBAnalytics *)selfCopy analyticsLayoutInfo];
  v81 = [analyticsLayoutInfo countByEnumeratingWithState:&v347 objects:v367 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v348;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v348 != v83)
        {
          objc_enumerationMutation(analyticsLayoutInfo);
        }

        v85 = *(*(&v347 + 1) + 8 * j);
        [v85 accumulatedTimeForKey:@"DBAnalyticsLayoutVisibilityTime"];
        v87 = v86;
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        layoutDisplayName = [v85 layoutDisplayName];
        [dictionary2 setObject:layoutDisplayName forKeyedSubscript:@"layout"];

        *&v90 = v87;
        v91 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
        [dictionary2 setObject:v91 forKeyedSubscript:@"visibleTime"];

        selfCopy = v336;
        [(DBAnalytics *)v336 sendEvent:10 withParameters:dictionary2];
      }

      v82 = [analyticsLayoutInfo countByEnumeratingWithState:&v347 objects:v367 count:16];
    }

    while (v82);
  }

  sessionDeviceAppLaunches = [(DBAnalytics *)selfCopy sessionDeviceAppLaunches];
  v93 = [sessionDeviceAppLaunches count];

  if (v93)
  {
    sessionDeviceAppLaunches2 = [(DBAnalytics *)selfCopy sessionDeviceAppLaunches];
    v346[0] = MEMORY[0x277D85DD0];
    v346[1] = 3221225472;
    v346[2] = __34__DBAnalytics__queue_sessionEnded__block_invoke;
    v346[3] = &unk_278F03F40;
    *&v346[5] = v7;
    v346[4] = selfCopy;
    [sessionDeviceAppLaunches2 enumerateKeysAndObjectsUsingBlock:v346];
  }

  else
  {
    v366[0] = @"None";
    v365[0] = @"bundleIdentifier";
    v365[1] = @"launchCount";
    sessionDeviceAppLaunches2 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v366[1] = sessionDeviceAppLaunches2;
    v365[2] = @"sessionDuration";
    *&v95 = v7;
    v96 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
    v366[2] = v96;
    v365[3] = @"nextGenCarPlaySession";
    environmentConfiguration2 = [(DBAnalytics *)selfCopy environmentConfiguration];
    session2 = [environmentConfiguration2 session];
    configuration2 = [session2 configuration];
    supportsVehicleData2 = [configuration2 supportsVehicleData];
    v101 = MEMORY[0x277CBEC38];
    if (!supportsVehicleData2)
    {
      v101 = MEMORY[0x277CBEC28];
    }

    v102 = v101;
    v366[3] = v102;
    v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v366 forKeys:v365 count:4];
    [(DBAnalytics *)v336 sendEvent:6 withParameters:v103];

    selfCopy = v336;
  }

  sessionNavigationOwners = [(DBAnalytics *)selfCopy sessionNavigationOwners];
  v105 = [sessionNavigationOwners count];

  if (v105)
  {
    sessionNavigationOwners2 = [(DBAnalytics *)selfCopy sessionNavigationOwners];
    v345[0] = MEMORY[0x277D85DD0];
    v345[1] = 3221225472;
    v345[2] = __34__DBAnalytics__queue_sessionEnded__block_invoke_2;
    v345[3] = &unk_278F03F68;
    v345[4] = selfCopy;
    [sessionNavigationOwners2 enumerateKeysAndObjectsUsingBlock:v345];
  }

  else
  {
    v364[0] = @"None";
    v363[0] = @"bundleIdentifier";
    v363[1] = @"sessionCount";
    sessionNavigationOwners2 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v364[1] = sessionNavigationOwners2;
    v363[2] = @"nextGenCarPlaySession";
    environmentConfiguration3 = [(DBAnalytics *)selfCopy environmentConfiguration];
    session3 = [environmentConfiguration3 session];
    configuration3 = [session3 configuration];
    supportsVehicleData3 = [configuration3 supportsVehicleData];
    v111 = MEMORY[0x277CBEC38];
    if (!supportsVehicleData3)
    {
      v111 = MEMORY[0x277CBEC28];
    }

    v112 = v111;
    v364[2] = v112;
    v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v364 forKeys:v363 count:3];
    [(DBAnalytics *)v336 sendEvent:7 withParameters:v113];

    selfCopy = v336;
  }

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  if (CRIsInternalInstall())
  {
    allowSessionDurationRecordingEvents = [MEMORY[0x277CF89D0] allowSessionDurationRecordingEvents];
    internalSettingsState = [allowSessionDurationRecordingEvents internalSettingsState];

    if (internalSettingsState)
    {
      v117 = DBLogForCategory(0xDuLL);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v117, OS_LOG_TYPE_DEFAULT, "Preparing CARConnectionEventSessionDetails by creating Time Store", buf, 2u);
      }

      v118 = objc_alloc_init(MEMORY[0x277CF8998]);
      [(DBAnalytics *)selfCopy setConnectionTimeStore:v118];
    }
  }

  sessionAppLaunches = [(DBAnalytics *)selfCopy sessionAppLaunches];
  v120 = [sessionAppLaunches objectForKeyedSubscript:&unk_285AA4808];

  if (v120)
  {
    sessionAppLaunches2 = [(DBAnalytics *)selfCopy sessionAppLaunches];
    v122 = [sessionAppLaunches2 objectForKeyedSubscript:&unk_285AA4808];
    integerValue = [v122 integerValue];
    v124 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    [dictionary3 setObject:v124 forKeyedSubscript:@"dock"];
  }

  else
  {
    sessionAppLaunches2 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [dictionary3 setObject:sessionAppLaunches2 forKeyedSubscript:@"dock"];
  }

  sessionAppLaunches3 = [(DBAnalytics *)selfCopy sessionAppLaunches];
  v126 = [sessionAppLaunches3 objectForKeyedSubscript:&unk_285AA4820];

  if (v126)
  {
    sessionAppLaunches4 = [(DBAnalytics *)selfCopy sessionAppLaunches];
    v128 = [sessionAppLaunches4 objectForKeyedSubscript:&unk_285AA4820];
    integerValue2 = [v128 integerValue];
    v130 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue2];
    [dictionary3 setObject:v130 forKeyedSubscript:@"siri"];
  }

  else
  {
    sessionAppLaunches4 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [dictionary3 setObject:sessionAppLaunches4 forKeyedSubscript:@"siri"];
  }

  sessionAppLaunches5 = [(DBAnalytics *)selfCopy sessionAppLaunches];
  v132 = [sessionAppLaunches5 objectForKeyedSubscript:&unk_285AA4838];

  if (v132)
  {
    sessionAppLaunches6 = [(DBAnalytics *)selfCopy sessionAppLaunches];
    v134 = [sessionAppLaunches6 objectForKeyedSubscript:&unk_285AA4838];
    integerValue3 = [v134 integerValue];
    v136 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue3];
    [dictionary3 setObject:v136 forKeyedSubscript:@"homescreen"];
  }

  else
  {
    sessionAppLaunches6 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [dictionary3 setObject:sessionAppLaunches6 forKeyedSubscript:@"homescreen"];
  }

  sessionAppLaunches7 = [(DBAnalytics *)selfCopy sessionAppLaunches];
  v138 = [sessionAppLaunches7 objectForKeyedSubscript:&unk_285AA4850];

  if (v138)
  {
    sessionAppLaunches8 = [(DBAnalytics *)selfCopy sessionAppLaunches];
    v140 = [sessionAppLaunches8 objectForKeyedSubscript:&unk_285AA4850];
    integerValue4 = [v140 integerValue];
    v142 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue4];
    [dictionary3 setObject:v142 forKeyedSubscript:@"dashboard"];
  }

  else
  {
    sessionAppLaunches8 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [dictionary3 setObject:sessionAppLaunches8 forKeyedSubscript:@"dashboard"];
  }

  sessionAppLaunches9 = [(DBAnalytics *)selfCopy sessionAppLaunches];
  v144 = [sessionAppLaunches9 objectForKeyedSubscript:@"total"];

  if (v144)
  {
    sessionAppLaunches10 = [(DBAnalytics *)selfCopy sessionAppLaunches];
    v146 = [sessionAppLaunches10 objectForKeyedSubscript:@"total"];
    integerValue5 = [v146 integerValue];
    v148 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue5];
    [dictionary3 setObject:v148 forKeyedSubscript:@"total"];
  }

  else
  {
    sessionAppLaunches10 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [dictionary3 setObject:sessionAppLaunches10 forKeyedSubscript:@"total"];
  }

  v343 = 0u;
  v344 = 0u;
  v341 = 0u;
  v342 = 0u;
  v149 = [&unk_285AA4A60 countByEnumeratingWithState:&v341 objects:v362 count:16];
  if (v149)
  {
    v150 = v149;
    v151 = *v342;
    do
    {
      for (k = 0; k != v150; ++k)
      {
        if (*v342 != v151)
        {
          objc_enumerationMutation(&unk_285AA4A60);
        }

        v153 = *(*(&v341 + 1) + 8 * k);
        vehicleAnalyticsRepresentation = [(DBAnalytics *)v336 vehicleAnalyticsRepresentation];
        v155 = [vehicleAnalyticsRepresentation objectForKeyedSubscript:v153];
        v156 = v155;
        v157 = @"(no value)";
        if (v155)
        {
          v157 = v155;
        }

        v158 = v157;
        [dictionary3 setObject:v158 forKeyedSubscript:v153];
      }

      v150 = [&unk_285AA4A60 countByEnumeratingWithState:&v341 objects:v362 count:16];
    }

    while (v150);
  }

  v159 = v336;
  analyticsNavOwnershipInfo2 = [(DBAnalytics *)v336 analyticsNavOwnershipInfo];
  [analyticsNavOwnershipInfo2 accumulatedTimeForKey:@"DBAnalyticsNavOwnershipTimeiOS"];
  *&v161 = v161;
  v162 = [MEMORY[0x277CCABB0] numberWithFloat:v161];
  [dictionary3 setObject:v162 forKeyedSubscript:@"iosNavTime"];

  analyticsNavOwnershipInfo3 = [(DBAnalytics *)v336 analyticsNavOwnershipInfo];
  [analyticsNavOwnershipInfo3 accumulatedTimeForKey:@"DBAnalyticsNavOwnershipTimeOEM"];
  *&v164 = v164;
  v165 = [MEMORY[0x277CCABB0] numberWithFloat:v164];
  [dictionary3 setObject:v165 forKeyedSubscript:@"oemNavTime"];

  announceMessagesState = [(DBAnalytics *)v336 announceMessagesState];
  v167 = announceMessagesState;
  if (announceMessagesState)
  {
    v168 = announceMessagesState;
  }

  else
  {
    v168 = @"(no value)";
  }

  v169 = v168;
  [dictionary3 setObject:v169 forKeyedSubscript:@"announceMessages"];

  *&v170 = v7;
  v171 = [MEMORY[0x277CCABB0] numberWithFloat:v170];
  [dictionary3 setObject:v171 forKeyedSubscript:@"sessionDuration"];

  sessionRequestUIMapsCount = [(DBAnalytics *)v336 sessionRequestUIMapsCount];
  v173 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUIMapsCount];
  [dictionary3 setObject:v173 forKeyedSubscript:@"requestUIMapsCount"];

  sessionRequestUIMusicCount = [(DBAnalytics *)v336 sessionRequestUIMusicCount];
  v175 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUIMusicCount];
  [dictionary3 setObject:v175 forKeyedSubscript:@"requestUIMusicCount"];

  sessionRequestUIClimateQuickControlsCount = [(DBAnalytics *)v336 sessionRequestUIClimateQuickControlsCount];
  v177 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUIClimateQuickControlsCount];
  [dictionary3 setObject:v177 forKeyedSubscript:@"requestUIClimateQuickControlsCount"];

  sessionRequestUISearchCount = [(DBAnalytics *)v336 sessionRequestUISearchCount];
  v179 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUISearchCount];
  [dictionary3 setObject:v179 forKeyedSubscript:@"requestUISearchCount"];

  sessionRequestUIMessagesCount = [(DBAnalytics *)v336 sessionRequestUIMessagesCount];
  v181 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUIMessagesCount];
  [dictionary3 setObject:v181 forKeyedSubscript:@"requestUIMessagesCount"];

  sessionRequestUIPhoneCount = [(DBAnalytics *)v336 sessionRequestUIPhoneCount];
  v183 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUIPhoneCount];
  [dictionary3 setObject:v183 forKeyedSubscript:@"requestUIPhoneCount"];

  sessionRequestUIBundleIdentifierCount = [(DBAnalytics *)v336 sessionRequestUIBundleIdentifierCount];
  v185 = [MEMORY[0x277CCABB0] numberWithInteger:sessionRequestUIBundleIdentifierCount];
  [dictionary3 setObject:v185 forKeyedSubscript:@"requestUIBundleIdentifierCount"];

  sessionShowUIMapCount = [(DBAnalytics *)v336 sessionShowUIMapCount];
  v187 = [MEMORY[0x277CCABB0] numberWithInteger:sessionShowUIMapCount];
  [dictionary3 setObject:v187 forKeyedSubscript:@"showUIMapCount"];

  sessionShowUITurnCardCount = [(DBAnalytics *)v336 sessionShowUITurnCardCount];
  v189 = [MEMORY[0x277CCABB0] numberWithInteger:sessionShowUITurnCardCount];
  [dictionary3 setObject:v189 forKeyedSubscript:@"showUITurnCardCount"];

  [(DBAnalytics *)v336 screenOwnershipDuration];
  *&v190 = v190;
  v191 = [MEMORY[0x277CCABB0] numberWithFloat:v190];
  [dictionary3 setObject:v191 forKeyedSubscript:@"screenTime"];

  [(DBAnalytics *)v336 audioOwnershipDuration];
  *&v192 = v192;
  v193 = [MEMORY[0x277CCABB0] numberWithFloat:v192];
  [dictionary3 setObject:v193 forKeyedSubscript:@"mainAudioTime"];

  [(DBAnalytics *)v336 screenOwnershipDuration];
  v195 = v194 * 100.0 / v7;
  *&v195 = v195;
  v196 = [MEMORY[0x277CCABB0] numberWithFloat:v195];
  [dictionary3 setObject:v196 forKeyedSubscript:@"screenPercentage"];

  [(DBAnalytics *)v336 audioOwnershipDuration];
  v198 = v197 * 100.0 / v7;
  *&v198 = v198;
  v199 = [MEMORY[0x277CCABB0] numberWithFloat:v198];
  [dictionary3 setObject:v199 forKeyedSubscript:@"mainAudioPercentage"];

  sessionUnlockCount = [(DBAnalytics *)v336 sessionUnlockCount];
  v201 = [MEMORY[0x277CCABB0] numberWithInteger:sessionUnlockCount];
  [dictionary3 setObject:v201 forKeyedSubscript:@"unlockCount"];

  accessorySupportsLocation = [(DBAnalytics *)v336 accessorySupportsLocation];
  v203 = accessorySupportsLocation;
  if (accessorySupportsLocation)
  {
    v204 = accessorySupportsLocation;
  }

  else
  {
    v204 = @"(no value)";
  }

  v205 = v204;
  [dictionary3 setObject:v205 forKeyedSubscript:@"supportsLocationCapability"];

  accessorySupportsLocationPASCDSpeed = [(DBAnalytics *)v336 accessorySupportsLocationPASCDSpeed];
  v207 = MEMORY[0x277CBEC38];
  v208 = MEMORY[0x277CBEC28];
  if (accessorySupportsLocationPASCDSpeed)
  {
    v209 = MEMORY[0x277CBEC38];
  }

  else
  {
    v209 = MEMORY[0x277CBEC28];
  }

  v210 = v209;
  [dictionary3 setObject:v210 forKeyedSubscript:@"supportsLocationPASCD"];

  if ([(DBAnalytics *)v336 accessorySupportsLocationGPGGA])
  {
    v211 = v207;
  }

  else
  {
    v211 = v208;
  }

  v212 = v211;
  [dictionary3 setObject:v212 forKeyedSubscript:@"supportsLocationGPGGA"];

  if ([(DBAnalytics *)v336 accessorySupportsLocationGPRMC])
  {
    v213 = v207;
  }

  else
  {
    v213 = v208;
  }

  v214 = v213;
  [dictionary3 setObject:v214 forKeyedSubscript:@"supportsLocationGPRMC"];

  if ([(DBAnalytics *)v336 accessorySupportsLocationDeadReckoning])
  {
    v215 = v207;
  }

  else
  {
    v215 = v208;
  }

  v216 = v215;
  [dictionary3 setObject:v216 forKeyedSubscript:@"supportsLocationDeadReckoning"];

  if ([(DBAnalytics *)v336 accessorySupportsLocationChinaShifted])
  {
    v217 = v207;
  }

  else
  {
    v217 = v208;
  }

  v218 = v217;
  [dictionary3 setObject:v218 forKeyedSubscript:@"supportsLocationChinaShifted"];

  analyticsChargeInfo2 = [(DBAnalytics *)v336 analyticsChargeInfo];
  if ([analyticsChargeInfo2 didChargeDuringSession])
  {
    v220 = v207;
  }

  else
  {
    v220 = v208;
  }

  v221 = v220;
  [dictionary3 setObject:v221 forKeyedSubscript:@"deviceChargedDuringSession"];

  analyticsChargeInfo3 = [(DBAnalytics *)v336 analyticsChargeInfo];
  if ([analyticsChargeInfo3 isWireless])
  {
    v223 = v207;
  }

  else
  {
    v223 = v208;
  }

  v224 = v223;
  [dictionary3 setObject:v224 forKeyedSubscript:@"deviceChargedWirelessly"];

  analyticsChargeInfo4 = [(DBAnalytics *)v336 analyticsChargeInfo];
  voltage = [analyticsChargeInfo4 voltage];
  v227 = voltage;
  if (voltage)
  {
    v228 = voltage;
  }

  else
  {
    v228 = @"(no value)";
  }

  v229 = v228;
  [dictionary3 setObject:v229 forKeyedSubscript:@"adapterVoltage"];

  analyticsChargeInfo5 = [(DBAnalytics *)v336 analyticsChargeInfo];
  wattage = [analyticsChargeInfo5 wattage];
  v232 = wattage;
  if (wattage)
  {
    v233 = wattage;
  }

  else
  {
    v233 = @"(no value)";
  }

  v234 = v233;
  [dictionary3 setObject:v234 forKeyedSubscript:@"adapterWattage"];

  analyticsChargeInfo6 = [(DBAnalytics *)v336 analyticsChargeInfo];
  adapterDescription = [analyticsChargeInfo6 adapterDescription];
  v237 = adapterDescription;
  if (adapterDescription)
  {
    v238 = adapterDescription;
  }

  else
  {
    v238 = @"(no value)";
  }

  v239 = v238;
  [dictionary3 setObject:v239 forKeyedSubscript:@"adapterDescription"];

  analyticsChargeInfo7 = [(DBAnalytics *)v336 analyticsChargeInfo];
  pMUConfiguration = [analyticsChargeInfo7 PMUConfiguration];
  v242 = pMUConfiguration;
  if (pMUConfiguration)
  {
    v243 = pMUConfiguration;
  }

  else
  {
    v243 = @"(no value)";
  }

  v244 = v243;
  [dictionary3 setObject:v244 forKeyedSubscript:@"adapterPMUConfiguration"];

  analyticsChargeInfo8 = [(DBAnalytics *)v336 analyticsChargeInfo];
  current = [analyticsChargeInfo8 current];
  v247 = current;
  if (current)
  {
    v248 = current;
  }

  else
  {
    v248 = @"(no value)";
  }

  v249 = v248;
  [dictionary3 setObject:v249 forKeyedSubscript:@"adapterCurrent"];

  analyticsChargeInfo9 = [(DBAnalytics *)v336 analyticsChargeInfo];
  [analyticsChargeInfo9 accumulatedTimeForKey:@"CARAnalyticsChargingTime"];
  *&v251 = v251;
  v252 = [MEMORY[0x277CCABB0] numberWithFloat:v251];
  [dictionary3 setObject:v252 forKeyedSubscript:@"deviceChargeDuration"];

  analyticsChargeInfo10 = [(DBAnalytics *)v336 analyticsChargeInfo];
  sessionChargingStates = [analyticsChargeInfo10 sessionChargingStates];
  v255 = sessionChargingStates;
  if (sessionChargingStates)
  {
    v256 = sessionChargingStates;
  }

  else
  {
    v256 = @"(no value)";
  }

  v257 = v256;
  [dictionary3 setObject:v257 forKeyedSubscript:@"sessionChargingStates"];

  analyticsChargeInfo11 = [(DBAnalytics *)v336 analyticsChargeInfo];
  adapterFamily = [analyticsChargeInfo11 adapterFamily];
  v260 = adapterFamily;
  if (adapterFamily)
  {
    v261 = adapterFamily;
  }

  else
  {
    v261 = @"(no value)";
  }

  v262 = v261;
  [dictionary3 setObject:v262 forKeyedSubscript:@"deviceChargingAdapterFamily"];

  analyticsChargeInfo12 = [(DBAnalytics *)v336 analyticsChargeInfo];
  startingBatteryPercentage = [analyticsChargeInfo12 startingBatteryPercentage];
  [dictionary3 setObject:startingBatteryPercentage forKeyedSubscript:@"startingBatteryPercentage"];

  *buf = 0;
  IOPSGetPercentRemaining();
  v265 = [MEMORY[0x277CCABB0] numberWithInteger:*buf];
  [dictionary3 setObject:v265 forKeyedSubscript:@"batteryPercentage"];

  dictionaryFromInterrupt = [(DBAnalytics *)v336 dictionaryFromInterrupt];
  v267 = [(DBAnalytics *)v336 stringFromInterruptDictionary:dictionaryFromInterrupt];
  v268 = v267;
  if (v267)
  {
    v269 = v267;
  }

  else
  {
    v269 = @"(no value)";
  }

  v270 = v269;
  [dictionary3 setObject:v270 forKeyedSubscript:@"sessionInterrupt"];

  stringFromSessionSummary = [(DBAnalytics *)v336 stringFromSessionSummary];
  v272 = stringFromSessionSummary;
  if (stringFromSessionSummary)
  {
    v273 = stringFromSessionSummary;
  }

  else
  {
    v273 = @"(no value)";
  }

  v274 = v273;
  [dictionary3 setObject:v274 forKeyedSubscript:@"sessionSummary"];

  v275 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:{-[DBAnalytics mapsAppearanceStyle](v336, "mapsAppearanceStyle")}];
  v276 = v275;
  if (v275)
  {
    v277 = v275;
  }

  else
  {
    v277 = @"(no value)";
  }

  v278 = v277;
  [dictionary3 setObject:v278 forKeyedSubscript:@"preferredMapsAppearance"];

  sessionThermalLevels = [(DBAnalytics *)v336 sessionThermalLevels];
  v280 = sessionThermalLevels;
  if (sessionThermalLevels)
  {
    v281 = sessionThermalLevels;
  }

  else
  {
    v281 = @"(no value)";
  }

  v282 = v281;
  [dictionary3 setObject:v282 forKeyedSubscript:@"sessionThermalLevels"];

  connectionTimeStore = [(DBAnalytics *)v336 connectionTimeStore];
  if (connectionTimeStore)
  {
    v284 = connectionTimeStore;
    v285 = CRIsInternalInstall();

    if (v285)
    {
      v286 = MEMORY[0x277CF8990];
      date4 = [MEMORY[0x277CBEAA8] date];
      v288 = [dictionary3 copy];
      v289 = [v286 eventWithName:@"CARConnectionEventSessionDetails" type:0 date:date4 payload:v288];

      connectionTimeStore2 = [(DBAnalytics *)v336 connectionTimeStore];
      [connectionTimeStore2 sendConnectionEvent:v289 completion:&__block_literal_global_547];
    }
  }

  firstFrameTimestamp = [(DBAnalytics *)v336 firstFrameTimestamp];

  if (firstFrameTimestamp)
  {
    v292 = MEMORY[0x277CCACA8];
    sessionStartDate3 = [(DBAnalytics *)v336 sessionStartDate];
    firstFrameTimestamp2 = [(DBAnalytics *)v336 firstFrameTimestamp];
    [sessionStartDate3 DBSecondsToDate:firstFrameTimestamp2];
    v295 = [v292 stringWithFormat:@"%.03f", v295];

    v297 = @"(no value)";
    if (v295)
    {
      v297 = v295;
    }

    v298 = v297;
    [dictionary3 setObject:v298 forKeyedSubscript:@"firstVideoFrameOffsetFromEndpointActivation"];
  }

  mainDisplayReadyTimestamp = [(DBAnalytics *)v336 mainDisplayReadyTimestamp];
  if (mainDisplayReadyTimestamp)
  {
    v309 = mainDisplayReadyTimestamp;
    carPlayUIReadyTimestamp = [(DBAnalytics *)v336 carPlayUIReadyTimestamp];
    if (!carPlayUIReadyTimestamp)
    {
LABEL_187:

      goto LABEL_188;
    }

    v302 = carPlayUIReadyTimestamp;
    mainDisplayReadyTimestamp2 = [(DBAnalytics *)v336 mainDisplayReadyTimestamp];
    carPlayUIReadyTimestamp2 = [(DBAnalytics *)v336 carPlayUIReadyTimestamp];
    v305 = [mainDisplayReadyTimestamp2 compare:carPlayUIReadyTimestamp2];

    v159 = v336;
    if (v305 == -1)
    {
      v306 = MEMORY[0x277CCACA8];
      mainDisplayReadyTimestamp3 = [(DBAnalytics *)v336 mainDisplayReadyTimestamp];
      carPlayUIReadyTimestamp3 = [(DBAnalytics *)v336 carPlayUIReadyTimestamp];
      [mainDisplayReadyTimestamp3 DBSecondsToDate:carPlayUIReadyTimestamp3];
      v309 = [v306 stringWithFormat:@"%.03f", v309];

      v310 = @"(no value)";
      if (v309)
      {
        v310 = v309;
      }

      v311 = v310;
      [dictionary3 setObject:v311 forKeyedSubscript:@"carPlayAppBringUpTimeInterval"];

      goto LABEL_187;
    }
  }

LABEL_188:
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:dictionaryFromInterrupt forKey:@"CARAnalyticsSessionInterruptKey"];

  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  analyticsScreenInfo = [(DBAnalytics *)v159 analyticsScreenInfo];
  v314 = [analyticsScreenInfo countByEnumeratingWithState:&v337 objects:v361 count:16];
  v315 = MEMORY[0x277CBEC28];
  if (v314)
  {
    v316 = v314;
    obja = dictionaryFromInterrupt;
    v317 = 0;
    v318 = *v338;
    do
    {
      for (m = 0; m != v316; ++m)
      {
        if (*v338 != v318)
        {
          objc_enumerationMutation(analyticsScreenInfo);
        }

        v320 = *(*(&v337 + 1) + 8 * m);
        [v320 stopCountingTimeForAllKeys];
        analytics_sessionEndedDictionaryRepresentation = [v320 analytics_sessionEndedDictionaryRepresentation];
        if (analytics_sessionEndedDictionaryRepresentation)
        {
          [dictionary3 addEntriesFromDictionary:analytics_sessionEndedDictionaryRepresentation];
        }

        screenInfo = [v320 screenInfo];
        v323 = [screenInfo screenType] == 1;

        v317 |= v323;
      }

      v316 = [analyticsScreenInfo countByEnumeratingWithState:&v337 objects:v361 count:16];
    }

    while (v316);
    v315 = MEMORY[0x277CBEC28];
    if (v317)
    {
      v315 = MEMORY[0x277CBEC38];
    }

    dictionaryFromInterrupt = obja;
  }

  v324 = v315;
  [dictionary3 setObject:v324 forKeyedSubscript:@"secondVideoStream"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v326 = [standardUserDefaults2 dictionaryForKey:@"DBDefaultsSessionEndedStorageKey"];

  v327 = [v326 count];
  standardUserDefaults3 = DBLogForCategory(0xDuLL);
  v329 = os_log_type_enabled(standardUserDefaults3, OS_LOG_TYPE_DEFAULT);
  if (v327)
  {
    v330 = v336;
    if (v329)
    {
      v331 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v326, "count")}];
      *buf = 138412290;
      v360 = v331;
      _os_log_impl(&dword_248146000, standardUserDefaults3, OS_LOG_TYPE_DEFAULT, "Applying %@ donated values to sessionEnded event", buf, 0xCu);
    }

    [dictionary3 setValuesForKeysWithDictionary:v326];
    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults3 removeObjectForKey:@"DBDefaultsSessionEndedStorageKey"];
  }

  else
  {
    v330 = v336;
    if (v329)
    {
      *buf = 138412290;
      v360 = @"DBDefaultsSessionEndedStorageKey";
      _os_log_impl(&dword_248146000, standardUserDefaults3, OS_LOG_TYPE_DEFAULT, "No available donated analytics events for key %@", buf, 0xCu);
    }
  }

  [(DBAnalytics *)v330 sendEvent:5 withParameters:dictionary3];
  v332 = objc_opt_class();
  v333 = [dictionary3 objectForKeyedSubscript:@"transports"];
  [v332 biome_CarPlayStarted:0 wireless:{objc_msgSend(v333, "isEqualToString:", @"Wireless"}];

  [(DBAnalytics *)v330 setSessionStartDate:0];
  [(DBAnalytics *)v330 setScreenOwnershipDate:0];
  [(DBAnalytics *)v330 setScreenOwnershipDuration:0.0];
  [(DBAnalytics *)v330 setAudioOwnershipDate:0];
  [(DBAnalytics *)v330 setAudioOwnershipDuration:0.0];
  [(DBAnalytics *)v330 setAnalyticsChargeInfo:0];
  [(DBAnalytics *)v330 setAnalyticsNavOwnershipInfo:0];
}

void __34__DBAnalytics__queue_sessionEnded__block_invoke(uint64_t a1, __CFString *a2, void *a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = @"(no value)";
  if (a2)
  {
    v6 = a2;
  }

  v22[0] = v6;
  v21[0] = @"bundleIdentifier";
  v21[1] = @"launchCount";
  v7 = v6;
  v8 = a2;
  v9 = [a3 integerValue];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v22[1] = v10;
  v21[2] = @"sessionDuration";
  v11 = *(a1 + 40);
  *&v11 = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v22[2] = v12;
  v21[3] = @"nextGenCarPlaySession";
  v13 = [*(a1 + 32) environmentConfiguration];
  v14 = [v13 session];
  v15 = [v14 configuration];
  v16 = [v15 supportsVehicleData];
  v17 = MEMORY[0x277CBEC28];
  if (v16)
  {
    v17 = MEMORY[0x277CBEC38];
  }

  v22[3] = v17;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v17;
  v20 = [v18 dictionaryWithObjects:v22 forKeys:v21 count:4];

  [*(a1 + 32) sendEvent:6 withParameters:v20];
}

void __34__DBAnalytics__queue_sessionEnded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = @"bundleIdentifier";
  v16[1] = @"sessionCount";
  v17[0] = a2;
  v17[1] = a3;
  v16[2] = @"nextGenCarPlaySession";
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 environmentConfiguration];
  v9 = [v8 session];
  v10 = [v9 configuration];
  v11 = [v10 supportsVehicleData];
  v12 = MEMORY[0x277CBEC28];
  if (v11)
  {
    v12 = MEMORY[0x277CBEC38];
  }

  v17[2] = v12;
  v13 = MEMORY[0x277CBEAC0];
  v14 = v12;
  v15 = [v13 dictionaryWithObjects:v17 forKeys:v16 count:3];

  [*(a1 + 32) sendEvent:7 withParameters:v15];
}

void __34__DBAnalytics__queue_sessionEnded__block_invoke_544(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = DBLogForCategory(0xDuLL);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "CARConnectionEventSessionDetails sent.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __34__DBAnalytics__queue_sessionEnded__block_invoke_544_cold_1(v4);
  }
}

- (void)preferences:(id)preferences carPlayAnnounceEnablementTypeChanged:(int64_t)changed
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__DBAnalytics_preferences_carPlayAnnounceEnablementTypeChanged___block_invoke;
  v7[3] = &unk_278F02748;
  v7[4] = self;
  v7[5] = changed;
  [analyticsQueue addOperationWithBlock:v7];
}

uint64_t __64__DBAnalytics_preferences_carPlayAnnounceEnablementTypeChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Announce Messages: AFSiriCarPlayAnnounceEnablementType changed %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _queue_sendAnnounceMessagesEvent];
}

- (void)preferences:(id)preferences announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)changed
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__DBAnalytics_preferences_announceNotificationsInCarPlayTemporarilyDisabledChanged___block_invoke;
  v7[3] = &unk_278F017F8;
  changedCopy = changed;
  v7[4] = self;
  [analyticsQueue addOperationWithBlock:v7];
}

uint64_t __84__DBAnalytics_preferences_announceNotificationsInCarPlayTemporarilyDisabledChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Announce Messages: announce notifications temporarily disabled changed %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _queue_sendAnnounceMessagesEvent];
}

- (void)_queue_sendAnnounceMessagesEvent
{
  v16[2] = *MEMORY[0x277D85DE8];
  announceMessagesState = [(DBAnalytics *)self announceMessagesState];
  v15[0] = @"announceSettings";
  v15[1] = @"nextGenCarPlaySession";
  v16[0] = announceMessagesState;
  environmentConfiguration = [(DBAnalytics *)self environmentConfiguration];
  session = [environmentConfiguration session];
  configuration = [session configuration];
  supportsVehicleData = [configuration supportsVehicleData];
  v8 = MEMORY[0x277CBEC28];
  if (supportsVehicleData)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v16[1] = v8;
  v9 = MEMORY[0x277CBEAC0];
  v10 = v8;
  v11 = [v9 dictionaryWithObjects:v16 forKeys:v15 count:2];

  [(DBAnalytics *)self sendEvent:8 withParameters:v11];
  v12 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = announceMessagesState;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Announce Messages: %@", &v13, 0xCu);
  }
}

- (id)announceMessagesState
{
  siriPreferences = [(DBAnalytics *)self siriPreferences];
  [siriPreferences carPlayAnnounceEnablementType];
  v4 = AFSiriCarPlayAnnounceEnablementTypeGetName();
  v5 = v4;
  v6 = @"unknown";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  siriPreferences2 = [(DBAnalytics *)self siriPreferences];
  announceNotificationsInCarPlayTemporarilyDisabled = [siriPreferences2 announceNotificationsInCarPlayTemporarilyDisabled];

  if (announceNotificationsInCarPlayTemporarilyDisabled)
  {
    v10 = @":Muted";
  }

  else
  {
    v10 = @":Unmuted";
  }

  v11 = [(__CFString *)v7 stringByAppendingString:v10];

  return v11;
}

- (void)environmentConfigurationPairedVehiclesDidChange:(id)change
{
  changeCopy = change;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__DBAnalytics_environmentConfigurationPairedVehiclesDidChange___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

void __63__DBAnalytics_environmentConfigurationPairedVehiclesDidChange___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) vehicle];
  v3 = [v2 mapsAppearancePreference];
  v4 = [*(a1 + 40) mapsAppearanceStyle];

  if (v3 != v4)
  {
    v5 = [*(a1 + 32) vehicle];
    [*(a1 + 40) setMapsAppearanceStyle:{objc_msgSend(v5, "mapsAppearancePreference")}];

    v6 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:{objc_msgSend(*(a1 + 40), "mapsAppearanceStyle")}];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Maps appearance preference changed: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:{objc_msgSend(v8, "mapsAppearanceStyle", @"preferredMapsAppearance"}];
    v18[1] = @"nextGenCarPlaySession";
    v19[0] = v9;
    v10 = [*(a1 + 40) environmentConfiguration];
    v11 = [v10 session];
    v12 = [v11 configuration];
    v13 = [v12 supportsVehicleData];
    v14 = MEMORY[0x277CBEC28];
    if (v13)
    {
      v14 = MEMORY[0x277CBEC38];
    }

    v19[1] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v14;
    v17 = [v15 dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v8 sendEvent:9 withParameters:v17];
  }
}

- (void)_queue_deviceDidChangeToBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionDeviceAppLaunches = [(DBAnalytics *)self sessionDeviceAppLaunches];
  v5 = [sessionDeviceAppLaunches objectForKey:identifierCopy];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue") + 1}];
  }

  else
  {
    v6 = &unk_285AA4868;
  }

  sessionDeviceAppLaunches2 = [(DBAnalytics *)self sessionDeviceAppLaunches];
  [sessionDeviceAppLaunches2 setObject:v6 forKey:identifierCopy];
}

- (void)_queue_didChangeToBundleIdentifier:(id)identifier
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(DBAnalytics *)self setLastActiveBundleIdentifier:identifierCopy];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__6;
  v41 = __Block_byref_object_dispose__6;
  v42 = identifierCopy;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DBAnalytics__queue_didChangeToBundleIdentifier___block_invoke;
  block[3] = &unk_278F03F90;
  block[4] = &v37;
  v5 = identifierCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v6 = v38[5];

  if ([v6 isEqualToString:@"com.apple.CarPlay.dashboard"])
  {
    lastDashboardNavigationBundleIdentifier = [(DBAnalytics *)self lastDashboardNavigationBundleIdentifier];
    [(DBAnalytics *)self dashboardNavigationDidChangeToBundleIdentifier:lastDashboardNavigationBundleIdentifier];

    lastDashboardAudioWidgetBundleIdentifier = [(DBAnalytics *)self lastDashboardAudioWidgetBundleIdentifier];
    [(DBAnalytics *)self dashboardAudioWidgetDidChangeToBundleIdentifier:lastDashboardAudioWidgetBundleIdentifier];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    lastDashboardAudioWidgetBundleIdentifier = [(DBAnalytics *)self visibleDashboardAppsAnalyticsInfo];
    v9 = [lastDashboardAudioWidgetBundleIdentifier countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(lastDashboardAudioWidgetBundleIdentifier);
          }

          [*(*(&v32 + 1) + 8 * v11++) stopCountingDashboardVisibleTime];
        }

        while (v9 != v11);
        v9 = [lastDashboardAudioWidgetBundleIdentifier countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v9);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  visibleAppsAnalyticsInfo = [(DBAnalytics *)self visibleAppsAnalyticsInfo];
  v13 = [visibleAppsAnalyticsInfo countByEnumeratingWithState:&v28 objects:v43 count:16];
  if (v13)
  {
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(visibleAppsAnalyticsInfo);
        }

        [*(*(&v28 + 1) + 8 * v15++) stopCountingVisibleTime];
      }

      while (v13 != v15);
      v13 = [visibleAppsAnalyticsInfo countByEnumeratingWithState:&v28 objects:v43 count:16];
    }

    while (v13);
  }

  if (!v6)
  {
    v19 = 0;
    goto LABEL_27;
  }

  v16 = +[DBApplicationController sharedInstance];
  v17 = [v16 applicationWithBundleIdentifier:v6];

  if (v17)
  {
    info = [v17 info];
    v19 = [(DBAnalytics *)self appAnalyticsInfoForApp:info];

    if (!v19)
    {
      v20 = [_DBAnalyticsAppInfo alloc];
      info2 = [v17 info];
      v22 = +[DBApplicationController sharedInstance];
      _appPolicyEvaluator = [v22 _appPolicyEvaluator];
      v19 = [(_DBAnalyticsAppInfo *)v20 initWithAppInfo:info2 policyEvaluator:_appPolicyEvaluator];

      analyticsAppInfo = [(DBAnalytics *)self analyticsAppInfo];
      [analyticsAppInfo addObject:v19];
      goto LABEL_25;
    }

LABEL_23:

LABEL_26:
    [(_DBAnalyticsAppInfo *)v19 startCountingVisibleTime];
    goto LABEL_27;
  }

  v19 = [(DBAnalytics *)self appAnalyticsInfoForBundleIdentifier:v6];
  if (v19)
  {
    goto LABEL_23;
  }

  v25 = [_DBAnalyticsAppInfo alloc];
  v26 = +[DBApplicationController sharedInstance];
  _appPolicyEvaluator2 = [v26 _appPolicyEvaluator];
  v19 = [(_DBAnalyticsAppInfo *)v25 initWithBundleIdentifier:v6 appDeclaration:0 policyEvaluator:_appPolicyEvaluator2];

  analyticsAppInfo = [(DBAnalytics *)self analyticsAppInfo];
  [analyticsAppInfo addObject:v19];
LABEL_25:

  if (v19)
  {
    goto LABEL_26;
  }

LABEL_27:

  _Block_object_dispose(&v37, 8);
}

uint64_t __50__DBAnalytics__queue_didChangeToBundleIdentifier___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 40) isEqualToString:@"com.apple.InCallService"];
  if (result)
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 displayedAudioAndVideoCalls];

    if ([v4 count] < 2)
    {
      [v4 firstObject];
    }

    else
    {
      [v4 bs_firstObjectPassingTest:&__block_literal_global_1590];
    }
    v5 = ;
    v6 = [v5 provider];
    v12 = [v6 displayAppBundleIdentifier];

    v8 = v12;
    if (v12)
    {
      v9 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@":%@", v12];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = v12;
    }

    return MEMORY[0x2821F96F8](v7, v8);
  }

  return result;
}

- (void)_queue_nowPlayingUpdatedToApp:(id)app isPlaying:(BOOL)playing
{
  playingCopy = playing;
  appCopy = app;
  nowPlayingAppAnalyticsInfo = [(DBAnalytics *)self nowPlayingAppAnalyticsInfo];
  v7 = nowPlayingAppAnalyticsInfo;
  if (nowPlayingAppAnalyticsInfo)
  {
    [nowPlayingAppAnalyticsInfo stopCountingTimeForKey:@"CARAnalyticsPlaybackTime"];
  }

  if (playingCopy)
  {
    info = [appCopy info];
    v9 = [(DBAnalytics *)self appAnalyticsInfoForApp:info];

    if (!v9)
    {
      v10 = [_DBAnalyticsAppInfo alloc];
      info2 = [appCopy info];
      v12 = +[DBApplicationController sharedInstance];
      _appPolicyEvaluator = [v12 _appPolicyEvaluator];
      v9 = [(_DBAnalyticsAppInfo *)v10 initWithAppInfo:info2 policyEvaluator:_appPolicyEvaluator];

      analyticsAppInfo = [(DBAnalytics *)self analyticsAppInfo];
      [analyticsAppInfo addObject:v9];
    }

    [(_DBAnalyticsTimeAccumulator *)v9 startCountingTimeForKey:@"CARAnalyticsPlaybackTime"];
  }
}

- (void)_queue_screenViewAreaChanged:(id)changed screenInfo:(id)info configuration:(id)configuration duration:(double)duration
{
  v67 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  analyticsScreenInfo = [(DBAnalytics *)self analyticsScreenInfo];
  v12 = [analyticsScreenInfo countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(analyticsScreenInfo);
        }

        v16 = *(*(&v61 + 1) + 8 * i);
        screenInfo = [v16 screenInfo];
        v18 = [screenInfo isEqual:infoCopy];

        if (v18)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          if ([infoCopy screenType])
          {
            v20 = @"Other";
          }

          else
          {
            v20 = @"Main";
          }

          [dictionary setObject:v20 forKeyedSubscript:@"screenType"];
          *&v21 = duration;
          v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
          [dictionary setObject:v22 forKeyedSubscript:@"duration"];

          indexOfLargestViewArea = [v16 indexOfLargestViewArea];
          v24 = MEMORY[0x277CBEC28];
          v25 = MEMORY[0x277CBEC38];
          v26 = MEMORY[0x277CBEC28];
          if (indexOfLargestViewArea != 0x7FFFFFFFFFFFFFFFLL)
          {
            v27 = indexOfLargestViewArea;
            viewAreas = [infoCopy viewAreas];
            v29 = [viewAreas objectAtIndexedSubscript:v27];
            [v29 visibleFrame];
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v37 = v36;

            [changedCopy visibleFrame];
            v69.origin.x = v38;
            v69.origin.y = v39;
            v69.size.width = v40;
            v69.size.height = v41;
            v68.origin.x = v31;
            v68.origin.y = v33;
            v68.size.width = v35;
            v68.size.height = v37;
            if (CGRectEqualToRect(v68, v69))
            {
              v26 = v25;
            }

            else
            {
              v26 = v24;
            }
          }

          [dictionary setObject:v26 forKeyedSubscript:@"isFullScreen"];
          viewAreas2 = [infoCopy viewAreas];
          v43 = [viewAreas2 count];
          v44 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
          [dictionary setObject:v44 forKeyedSubscript:@"viewAreaCount"];

          environmentConfiguration = [(DBAnalytics *)self environmentConfiguration];
          session = [environmentConfiguration session];
          configuration = [session configuration];
          if ([configuration supportsVehicleData])
          {
            v48 = v25;
          }

          else
          {
            v48 = v24;
          }

          [dictionary setObject:v48 forKeyedSubscript:@"nextGenCarPlaySession"];

          [(DBAnalytics *)self sendEvent:2 withParameters:dictionary];
          goto LABEL_21;
        }
      }

      v13 = [analyticsScreenInfo countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  analyticsScreenInfo2 = [(DBAnalytics *)self analyticsScreenInfo];
  v50 = [analyticsScreenInfo2 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v58;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v58 != v52)
        {
          objc_enumerationMutation(analyticsScreenInfo2);
        }

        v54 = *(*(&v57 + 1) + 8 * j);
        screenInfo2 = [v54 screenInfo];
        v56 = [screenInfo2 isEqual:infoCopy];

        if (v56)
        {
          [v54 setViewAreaChangeCount:{objc_msgSend(v54, "viewAreaChangeCount") + 1}];
          [v54 stopCountingTimeForAllKeys];
          [v54 startCountingTimeForViewArea:changedCopy];
        }

        else
        {
          [v54 stopCountingTimeForAllKeys];
        }
      }

      v51 = [analyticsScreenInfo2 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v51);
  }
}

- (void)_applicationDidLaunch:(id)launch
{
  object = [launch object];
  if (![object integerValue])
  {

    object = &unk_285AA4838;
  }

  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DBAnalytics__applicationDidLaunch___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = object;
  v6 = object;
  [analyticsQueue addOperationWithBlock:v7];
}

void __37__DBAnalytics__applicationDidLaunch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionAppLaunches];
  v11 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v11 unsignedIntegerValue];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3 + 1];
  v5 = [*(a1 + 32) sessionAppLaunches];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) sessionAppLaunches];
  v7 = [v6 objectForKeyedSubscript:@"total"];

  v8 = [v7 unsignedIntegerValue];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8 + 1];
  v10 = [*(a1 + 32) sessionAppLaunches];
  [v10 setObject:v9 forKeyedSubscript:@"total"];
}

- (void)_dashboardSmartWidgetUpdated:(id)updated
{
  updatedCopy = updated;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__DBAnalytics__dashboardSmartWidgetUpdated___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

void __44__DBAnalytics__dashboardSmartWidgetUpdated___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) object];
  if ([v14 type] && objc_msgSend(v14, "type") <= 4)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    [v2 setObject:@"(no value)" forKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v14 events];
      v4 = [v3 count];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      [v2 setObject:v5 forKeyedSubscript:@"eventCount"];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_11:
        v8 = [v14 type];
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
        [v2 setObject:v9 forKeyedSubscript:@"type"];

        v10 = [*(a1 + 40) environmentConfiguration];
        v11 = [v10 session];
        v12 = [v11 configuration];
        if ([v12 supportsVehicleData])
        {
          v13 = MEMORY[0x277CBEC38];
        }

        else
        {
          v13 = MEMORY[0x277CBEC28];
        }

        [v2 setObject:v13 forKeyedSubscript:@"nextGenCarPlaySession"];

        [*(a1 + 40) sendEvent:3 withParameters:v2];
        goto LABEL_15;
      }

      v6 = [v14 bundleIdentifier];
      v3 = v6;
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = @"(no value)";
      }

      [v2 setObject:v7 forKeyedSubscript:@"bundleIdentifier"];
    }

    goto LABEL_11;
  }

LABEL_15:
}

- (void)_dashboardNowPlayingWidgetTapped:(id)tapped
{
  tappedCopy = tapped;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DBAnalytics__dashboardNowPlayingWidgetTapped___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = tappedCopy;
  selfCopy = self;
  v6 = tappedCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

void __48__DBAnalytics__dashboardNowPlayingWidgetTapped___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  v3 = [v2 unsignedIntegerValue];

  if (v3 > 2)
  {
    v4 = @"(no value)";
  }

  else
  {
    v4 = off_278F04130[v3];
  }

  v5 = *(a1 + 40);
  v15[0] = v4;
  v14[0] = @"type";
  v14[1] = @"nextGenCarPlaySession";
  v6 = [v5 environmentConfiguration];
  v7 = [v6 session];
  v8 = [v7 configuration];
  v9 = [v8 supportsVehicleData];
  v10 = MEMORY[0x277CBEC28];
  if (v9)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  v15[1] = v10;
  v11 = MEMORY[0x277CBEAC0];
  v12 = v10;
  v13 = [v11 dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 sendEvent:4 withParameters:v13];
}

- (void)_appStartedNavigation:(id)navigation
{
  v12 = *MEMORY[0x277D85DE8];
  object = [navigation object];
  v5 = object;
  if (object && ([object isEqualToString:@"None"] & 1) == 0)
  {
    v6 = DBLogForCategory(0xDuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Application started navigation: %{public}@", buf, 0xCu);
    }

    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__DBAnalytics__appStartedNavigation___block_invoke;
    v8[3] = &unk_278F014B8;
    v8[4] = self;
    v9 = v5;
    [analyticsQueue addOperationWithBlock:v8];
  }
}

- (void)_appEndedNavigation:(id)navigation
{
  v12 = *MEMORY[0x277D85DE8];
  object = [navigation object];
  v5 = object;
  if (object && ([object isEqualToString:@"None"] & 1) == 0)
  {
    v6 = DBLogForCategory(0xDuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Application ended navigation: %{public}@", buf, 0xCu);
    }

    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__DBAnalytics__appEndedNavigation___block_invoke;
    v8[3] = &unk_278F014B8;
    v8[4] = self;
    v9 = v5;
    [analyticsQueue addOperationWithBlock:v8];
  }
}

- (void)navigationOwnershipChanged:(id)changed
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__DBAnalytics_navigationOwnershipChanged___block_invoke;
  v5[3] = &unk_278F01580;
  v5[4] = self;
  [analyticsQueue addOperationWithBlock:v5];
}

uint64_t __42__DBAnalytics_navigationOwnershipChanged___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) environmentConfiguration];
  v3 = [v2 session];
  v4 = [v3 navigationOwner];

  v5 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"None";
    if (v4 == 1)
    {
      v6 = @"iOS";
    }

    if (v4 == 2)
    {
      v6 = @"Car";
    }

    v7 = v6;
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Navigation ownership changed to %{public}@", &v9, 0xCu);
  }

  return [*(a1 + 32) _queue_navigationOwnershipChangedToOwner:v4];
}

- (void)_queue_applicationWithBundleIdentifier:(id)identifier didStartNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  identifierCopy = identifier;
  sessionNavigationOwners = [(DBAnalytics *)self sessionNavigationOwners];
  v8 = [sessionNavigationOwners objectForKey:identifierCopy];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  sessionNavigationOwners2 = [(DBAnalytics *)self sessionNavigationOwners];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [sessionNavigationOwners2 setObject:v11 forKey:identifierCopy];

  v12 = [(DBAnalytics *)self appAnalyticsInfoForBundleIdentifier:identifierCopy];
  if (!v12)
  {
    v13 = [_DBAnalyticsAppInfo alloc];
    v14 = +[DBApplicationController sharedInstance];
    _appPolicyEvaluator = [v14 _appPolicyEvaluator];
    v12 = [(_DBAnalyticsAppInfo *)v13 initWithBundleIdentifier:identifierCopy appDeclaration:0 policyEvaluator:_appPolicyEvaluator];

    analyticsAppInfo = [(DBAnalytics *)self analyticsAppInfo];
    [analyticsAppInfo addObject:v12];
  }

  if (navigationCopy)
  {
    [(_DBAnalyticsAppInfo *)v12 startCountingNavOwnershipTime];
  }

  else
  {
    [(_DBAnalyticsAppInfo *)v12 stopCountingNavOwnershipTime];
    v17 = [(DBAnalytics *)self _analyticsInfoPassingTest:&__block_literal_global_616];
    if (![v17 count])
    {
      v18 = DBLogForCategory(0xDuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "No remaining navigating apps.", v20, 2u);
      }

      analyticsNavOwnershipInfo = [(DBAnalytics *)self analyticsNavOwnershipInfo];
      [analyticsNavOwnershipInfo stopCountingTimeForKey:@"DBAnalyticsNavOwnershipTimeiOS"];
    }
  }
}

- (void)_queue_navigationOwnershipChangedToOwner:(unint64_t)owner
{
  if (owner == 2)
  {
    analyticsNavOwnershipInfo = [(DBAnalytics *)self analyticsNavOwnershipInfo];
    [analyticsNavOwnershipInfo stopCountingTimeForKey:@"DBAnalyticsNavOwnershipTimeiOS"];

    analyticsNavOwnershipInfo2 = [(DBAnalytics *)self analyticsNavOwnershipInfo];
    v7 = @"DBAnalyticsNavOwnershipTimeOEM";
    goto LABEL_7;
  }

  if (owner == 1)
  {
    analyticsNavOwnershipInfo3 = [(DBAnalytics *)self analyticsNavOwnershipInfo];
    [analyticsNavOwnershipInfo3 stopCountingTimeForKey:@"DBAnalyticsNavOwnershipTimeOEM"];

    analyticsNavOwnershipInfo2 = [(DBAnalytics *)self analyticsNavOwnershipInfo];
    v7 = @"DBAnalyticsNavOwnershipTimeiOS";
LABEL_7:
    analyticsNavOwnershipInfo5 = analyticsNavOwnershipInfo2;
    [analyticsNavOwnershipInfo2 startCountingTimeForKey:v7];
    goto LABEL_8;
  }

  if (owner)
  {
    return;
  }

  analyticsNavOwnershipInfo4 = [(DBAnalytics *)self analyticsNavOwnershipInfo];
  [analyticsNavOwnershipInfo4 stopCountingTimeForKey:@"DBAnalyticsNavOwnershipTimeOEM"];

  analyticsNavOwnershipInfo5 = [(DBAnalytics *)self analyticsNavOwnershipInfo];
  [analyticsNavOwnershipInfo5 stopCountingTimeForKey:@"DBAnalyticsNavOwnershipTimeiOS"];
LABEL_8:
}

- (void)_mediaserverdConnectionDied
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__DBAnalytics__mediaserverdConnectionDied__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [analyticsQueue addOperationWithBlock:v4];
}

- (void)_queue_mediaserverdConnectionDied
{
  date = [MEMORY[0x277CBEAA8] date];
  [(DBAnalytics *)self setMediaserverdDiedDate:date];
}

- (void)_queue_wifidConnectionDied
{
  date = [MEMORY[0x277CBEAA8] date];
  [(DBAnalytics *)self setWifidDiedDate:date];
}

- (void)_queue_thermalTrapOccurred
{
  date = [MEMORY[0x277CBEAA8] date];
  [(DBAnalytics *)self setThermalTrapDate:date];
}

- (void)invalidate
{
  v3 = DBLogForCategory(0xDuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating analytics.", buf, 2u);
  }

  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __25__DBAnalytics_invalidate__block_invoke;
  v16[3] = &unk_278F01580;
  v16[4] = self;
  [analyticsQueue addOperationWithBlock:v16];

  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterServerRestartCallback();
    CFRelease(self->_wifiManager);
  }

  interface = self->_interface;
  if (interface)
  {
    [(CWFInterface *)interface stopMonitoringEventType:6];
    [(CWFInterface *)self->_interface invalidate];
  }

  displayLayoutMonitor = [(DBAnalytics *)self displayLayoutMonitor];
  [displayLayoutMonitor invalidate];

  keybagMonitor = [(DBAnalytics *)self keybagMonitor];
  [keybagMonitor removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_powerNotificationPort);
  CFRunLoopRemoveSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
  IONotificationPortDestroy(self->_powerNotificationPort);
  self->_powerNotificationPort = 0;
  IOObjectRelease(self->_powerSourceNotification);
  self->_powerSourceNotification = 0;
  IOObjectRelease(self->_powerSource);
  self->_powerSource = 0;
  [(DBAnalytics *)self setConnectionTimeStore:0];
  environmentConfiguration = [(DBAnalytics *)self environmentConfiguration];
  session = [environmentConfiguration session];
  [session removeObserver:self];

  environmentConfiguration2 = [(DBAnalytics *)self environmentConfiguration];
  thermalMonitor = [environmentConfiguration2 thermalMonitor];
  [thermalMonitor removeObserver:self];
}

uint64_t __25__DBAnalytics_invalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 setObject:v3 forKey:@"CARAnalyticsPreviousSessionEnd"];

  v4 = *(a1 + 32);

  return [v4 _queue_sessionEnded];
}

- (void)keybagMonitorLockStateDidChange:(id)change
{
  if (![change currentState])
  {
    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__DBAnalytics_keybagMonitorLockStateDidChange___block_invoke;
    v5[3] = &unk_278F01580;
    v5[4] = self;
    [analyticsQueue addOperationWithBlock:v5];
  }
}

uint64_t __47__DBAnalytics_keybagMonitorLockStateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sessionUnlockCount] + 1;

  return [v1 setSessionUnlockCount:v2];
}

- (BOOL)_queue_stateProviderIsReadyForAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if ([analyticsCopy connectionReady])
  {
    v4 = [analyticsCopy lockoutState] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dashboardStateProvider:(id)provider didChangeHomeScreenPageType:(unint64_t)type
{
  providerCopy = provider;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__DBAnalytics_dashboardStateProvider_didChangeHomeScreenPageType___block_invoke;
  v9[3] = &unk_278F01820;
  v9[4] = self;
  v10 = providerCopy;
  typeCopy = type;
  v8 = providerCopy;
  [analyticsQueue addOperationWithBlock:v9];
}

void __66__DBAnalytics_dashboardStateProvider_didChangeHomeScreenPageType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _queue_stateProviderIsReadyForAnalytics:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) startBundleIdentifier];
    if (v2)
    {
      v3 = v2;
      [*(a1 + 32) setLastHomeScreenPageType:*(a1 + 48)];
      [*(a1 + 32) _queue_didChangeToBundleIdentifier:v3];
    }
  }
}

- (void)dashboardStateProvider:(id)provider didChangeActiveBundleIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__DBAnalytics_dashboardStateProvider_didChangeActiveBundleIdentifier___block_invoke;
  v11[3] = &unk_278F015F8;
  v11[4] = self;
  v12 = providerCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = providerCopy;
  [analyticsQueue addOperationWithBlock:v11];
}

void __70__DBAnalytics_dashboardStateProvider_didChangeActiveBundleIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _queue_stateProviderIsReadyForAnalytics:*(a1 + 40)])
  {
    [*(a1 + 32) setStartBundleIdentifier:0];
    v3 = *(a1 + 48);
    if (-[__CFString isEqualToString:](v3, "isEqualToString:", @"com.apple.CarPlay.dashboard") && [*(a1 + 32) lastHomeScreenPageType] == 2)
    {
      v2 = @"com.apple.CarPlay.homescreen";

      v3 = v2;
    }

    [*(a1 + 32) _queue_didChangeToBundleIdentifier:v3];
  }
}

- (void)session:(id)session openURL:(id)l
{
  absoluteString = [l absoluteString];
  if ([absoluteString length])
  {
    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__DBAnalytics_session_openURL___block_invoke;
    v7[3] = &unk_278F014B8;
    v8 = absoluteString;
    selfCopy = self;
    [analyticsQueue addOperationWithBlock:v7];
  }
}

uint64_t __31__DBAnalytics_session_openURL___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasPrefix:@"maps:"] & 1) != 0 || objc_msgSend(*(a1 + 32), "hasPrefix:", @"maps:/car/destinations"))
  {
    v2 = *(a1 + 40);
    v3 = [v2 sessionRequestUIMapsCount] + 1;

    return [v2 setSessionRequestUIMapsCount:v3];
  }

  else if (([*(a1 + 32) hasPrefix:@"mobilephone:"] & 1) != 0 || objc_msgSend(*(a1 + 32), "hasPrefix:", @"tel:"))
  {
    v5 = *(a1 + 40);
    v6 = [v5 sessionRequestUIPhoneCount] + 1;

    return [v5 setSessionRequestUIPhoneCount:v6];
  }

  else if ([*(a1 + 32) hasPrefix:@"messages:"])
  {
    v7 = *(a1 + 40);
    v8 = [v7 sessionRequestUIMessagesCount] + 1;

    return [v7 setSessionRequestUIMessagesCount:v8];
  }

  else if ([*(a1 + 32) hasPrefix:@"climate:"])
  {
    v9 = *(a1 + 40);
    v10 = [v9 sessionRequestUIClimateQuickControlsCount] + 1;

    return [v9 setSessionRequestUIClimateQuickControlsCount:v10];
  }

  else if ([*(a1 + 32) hasPrefix:@"search:"])
  {
    v11 = *(a1 + 40);
    v12 = [v11 sessionRequestUISearchCount] + 1;

    return [v11 setSessionRequestUISearchCount:v12];
  }

  else if (([*(a1 + 32) hasPrefix:@"nowplaying:"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "hasPrefix:", @"music:") & 1) != 0 || objc_msgSend(*(a1 + 32), "hasPrefix:", @"podcasts:"))
  {
    v13 = *(a1 + 40);
    v14 = [v13 sessionRequestUIMusicCount] + 1;

    return [v13 setSessionRequestUIMusicCount:v14];
  }

  else
  {
    result = [*(a1 + 32) hasPrefix:@"app:"];
    if (result)
    {
      v15 = *(a1 + 40);
      v16 = [v15 sessionRequestUIBundleIdentifierCount] + 1;

      return [v15 setSessionRequestUIBundleIdentifierCount:v16];
    }
  }

  return result;
}

- (void)session:(id)session showUIForScreenInfo:(id)info withURL:(id)l
{
  absoluteString = [l absoluteString];
  if ([absoluteString length])
  {
    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__DBAnalytics_session_showUIForScreenInfo_withURL___block_invoke;
    v8[3] = &unk_278F014B8;
    v9 = absoluteString;
    selfCopy = self;
    [analyticsQueue addOperationWithBlock:v8];
  }
}

uint64_t __51__DBAnalytics_session_showUIForScreenInfo_withURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSuffix:@"instructioncard"];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 sessionShowUITurnCardCount] + 1;

    return [v3 setSessionShowUITurnCardCount:v4];
  }

  else
  {
    v6 = [v3 sessionShowUIMapCount] + 1;

    return [v3 setSessionShowUIMapCount:v6];
  }
}

- (void)session:(id)session didSetViewArea:(id)area forScreenID:(id)d withDuration:(double)duration transitionControlType:(unint64_t)type
{
  areaCopy = area;
  dCopy = d;
  configuration = [session configuration];
  v14 = [configuration screenInfoForScreenID:dCopy];

  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__DBAnalytics_session_didSetViewArea_forScreenID_withDuration_transitionControlType___block_invoke;
  v19[3] = &unk_278F03FB8;
  v19[4] = self;
  v20 = areaCopy;
  v21 = v14;
  v22 = configuration;
  durationCopy = duration;
  v16 = configuration;
  v17 = v14;
  v18 = areaCopy;
  [analyticsQueue addOperationWithBlock:v19];
}

- (void)thermalMonitorLevelDidChange:(id)change
{
  changeCopy = change;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__DBAnalytics_thermalMonitorLevelDidChange___block_invoke;
  v9[3] = &unk_278F014B8;
  v9[4] = self;
  v6 = changeCopy;
  v10 = v6;
  [analyticsQueue addOperationWithBlock:v9];

  if ([v6 level] == 3)
  {
    analyticsQueue2 = [(DBAnalytics *)self analyticsQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__DBAnalytics_thermalMonitorLevelDidChange___block_invoke_2;
    v8[3] = &unk_278F01580;
    v8[4] = self;
    [analyticsQueue2 addOperationWithBlock:v8];
  }
}

void __44__DBAnalytics_thermalMonitorLevelDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentThermalLevel];
  if (v2 != [*(a1 + 40) level])
  {
    [*(a1 + 32) setCurrentThermalLevel:{objc_msgSend(*(a1 + 40), "level")}];
    v6 = [*(a1 + 32) sessionThermalLevels];
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [*(a1 + 32) sessionStartDate];
    [v3 timeIntervalSinceDate:v4];
    [v6 appendFormat:@"(%0.0f, %li)", v5, objc_msgSend(*(a1 + 32), "currentThermalLevel")];
  }
}

- (void)nowPlayingObserver:(id)observer didChangeNowPlayingApplication:(id)application
{
  applicationCopy = application;
  LOBYTE(observer) = [observer isPlaying];
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__DBAnalytics_nowPlayingObserver_didChangeNowPlayingApplication___block_invoke;
  v9[3] = &unk_278F03FE0;
  v9[4] = self;
  v10 = applicationCopy;
  observerCopy = observer;
  v8 = applicationCopy;
  [analyticsQueue addOperationWithBlock:v9];
}

- (void)nowPlayingObserver:(id)observer didUpdatePlaybackState:(BOOL)state inApplication:(id)application
{
  applicationCopy = application;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__DBAnalytics_nowPlayingObserver_didUpdatePlaybackState_inApplication___block_invoke;
  v10[3] = &unk_278F03FE0;
  v10[4] = self;
  v11 = applicationCopy;
  stateCopy = state;
  v9 = applicationCopy;
  [analyticsQueue addOperationWithBlock:v10];
}

- (void)_DBLayoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  elements = [layout elements];
  v7 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(elements);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      if ([v11 isUIApplicationElement])
      {
        if ([v11 layoutRole] == 1)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    bundleIdentifier = [v11 bundleIdentifier];

    if (!bundleIdentifier)
    {
      return;
    }

    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__DBAnalytics__DBLayoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
    v14[3] = &unk_278F014B8;
    v14[4] = self;
    v15 = bundleIdentifier;
    elements = bundleIdentifier;
    [analyticsQueue addOperationWithBlock:v14];
  }

LABEL_13:
}

- (void)clusterElementDidChangeVisibility:(id)visibility foreground:(BOOL)foreground
{
  visibilityCopy = visibility;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__DBAnalytics_clusterElementDidChangeVisibility_foreground___block_invoke;
  v9[3] = &unk_278F03FE0;
  foregroundCopy = foreground;
  v9[4] = self;
  v10 = visibilityCopy;
  v8 = visibilityCopy;
  [analyticsQueue addOperationWithBlock:v9];
}

void __60__DBAnalytics_clusterElementDidChangeVisibility_foreground___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) visibleClusterAppsAnalyticsInfo];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((*(a1 + 48) & 1) == 0)
        {
          v7 = *(*(&v19 + 1) + 8 * i);
          v8 = [v7 bundleIdentifier];
          v9 = [v8 isEqualToString:*(a1 + 40)];

          if (v9)
          {
            [v7 stopCountingClusterVisibleTime];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) appAnalyticsInfoForBundleIdentifier:*(a1 + 40)];
  if (!v10)
  {
    v11 = +[DBApplicationController sharedInstance];
    v12 = [v11 applicationWithBundleIdentifier:*(a1 + 40)];

    v13 = [_DBAnalyticsAppInfo alloc];
    if (v12)
    {
      v14 = [v12 info];
      v15 = +[DBApplicationController sharedInstance];
      v16 = [v15 _appPolicyEvaluator];
      v10 = [(_DBAnalyticsAppInfo *)v13 initWithAppInfo:v14 policyEvaluator:v16];
    }

    else
    {
      v17 = *(a1 + 40);
      v14 = +[DBApplicationController sharedInstance];
      v15 = [v14 _appPolicyEvaluator];
      v10 = [(_DBAnalyticsAppInfo *)v13 initWithBundleIdentifier:v17 appDeclaration:0 policyEvaluator:v15];
    }

    v18 = [*(a1 + 32) analyticsAppInfo];
    [v18 addObject:v10];
  }

  if (*(a1 + 48) == 1)
  {
    [(_DBAnalyticsAppInfo *)v10 startCountingClusterVisibleTime];
  }
}

- (void)dashboardNavigationDidChangeToBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__DBAnalytics_dashboardNavigationDidChangeToBundleIdentifier___block_invoke;
    v6[3] = &unk_278F014B8;
    v6[4] = self;
    v7 = identifierCopy;
    [analyticsQueue addOperationWithBlock:v6];
  }
}

void __62__DBAnalytics_dashboardNavigationDidChangeToBundleIdentifier___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLastDashboardNavigationBundleIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) appAnalyticsInfoForBundleIdentifier:*(a1 + 40)];
  if (!v2)
  {
    v3 = +[DBApplicationController sharedInstance];
    v4 = [v3 applicationWithBundleIdentifier:*(a1 + 40)];

    v5 = [_DBAnalyticsAppInfo alloc];
    if (v4)
    {
      v6 = [v4 info];
      v7 = +[DBApplicationController sharedInstance];
      v8 = [v7 _appPolicyEvaluator];
      v2 = [(_DBAnalyticsAppInfo *)v5 initWithAppInfo:v6 policyEvaluator:v8];
    }

    else
    {
      v9 = *(a1 + 40);
      v6 = +[DBApplicationController sharedInstance];
      v7 = [v6 _appPolicyEvaluator];
      v2 = [(_DBAnalyticsAppInfo *)v5 initWithBundleIdentifier:v9 appDeclaration:0 policyEvaluator:v7];
    }

    v10 = [*(a1 + 32) analyticsAppInfo];
    [v10 addObject:v2];
  }

  [(_DBAnalyticsAppInfo *)v2 setDashboardWidgetType:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [*(a1 + 32) visibleDashboardAppsAnalyticsInfo];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 bundleIdentifier];
        if ([v17 isEqual:*(a1 + 40)])
        {
        }

        else
        {
          v18 = [v16 dashboardWidgetType];
          v19 = [(_DBAnalyticsAppInfo *)v2 dashboardWidgetType];

          if (v18 == v19)
          {
            [v16 stopCountingDashboardVisibleTime];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [*(a1 + 32) lastActiveBundleIdentifier];
  v21 = [v20 isEqualToString:@"com.apple.CarPlay.dashboard"];

  if (v21)
  {
    [(_DBAnalyticsAppInfo *)v2 startCountingDashboardVisibleTime];
  }
}

- (void)dashboardAudioWidgetDidChangeToBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    analyticsQueue = [(DBAnalytics *)self analyticsQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DBAnalytics_dashboardAudioWidgetDidChangeToBundleIdentifier___block_invoke;
    v6[3] = &unk_278F014B8;
    v6[4] = self;
    v7 = identifierCopy;
    [analyticsQueue addOperationWithBlock:v6];
  }
}

void __63__DBAnalytics_dashboardAudioWidgetDidChangeToBundleIdentifier___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLastDashboardAudioWidgetBundleIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) appAnalyticsInfoForBundleIdentifier:*(a1 + 40)];
  if (!v2)
  {
    v3 = [_DBAnalyticsAppInfo alloc];
    v4 = *(a1 + 40);
    v5 = +[DBApplicationController sharedInstance];
    v6 = [v5 _appPolicyEvaluator];
    v2 = [(_DBAnalyticsAppInfo *)v3 initWithBundleIdentifier:v4 appDeclaration:0 policyEvaluator:v6];

    v7 = [*(a1 + 32) analyticsAppInfo];
    [v7 addObject:v2];
  }

  [(_DBAnalyticsAppInfo *)v2 setDashboardWidgetType:2];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [*(a1 + 32) visibleDashboardAppsAnalyticsInfo];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 bundleIdentifier];
        if ([v14 isEqual:*(a1 + 40)])
        {
        }

        else
        {
          v15 = [v13 dashboardWidgetType];
          v16 = [(_DBAnalyticsAppInfo *)v2 dashboardWidgetType];

          if (v15 == v16)
          {
            [v13 stopCountingDashboardVisibleTime];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [*(a1 + 32) lastActiveBundleIdentifier];
  v18 = [v17 isEqualToString:@"com.apple.CarPlay.dashboard"];

  if (v18)
  {
    [(_DBAnalyticsAppInfo *)v2 startCountingDashboardVisibleTime];
  }
}

- (void)siriDidStartHostingBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__DBAnalytics_siriDidStartHostingBundleIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

void __51__DBAnalytics_siriDidStartHostingBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriHostedBundleIdentifier];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setSiriHostedBundleIdentifier:*(a1 + 40)];
    v4 = [*(a1 + 32) appAnalyticsInfoForBundleIdentifier:*(a1 + 40)];
    if (!v4)
    {
      v5 = [_DBAnalyticsAppInfo alloc];
      v6 = *(a1 + 40);
      v7 = +[DBApplicationController sharedInstance];
      v8 = [v7 _appPolicyEvaluator];
      v10 = [(_DBAnalyticsAppInfo *)v5 initWithBundleIdentifier:v6 appDeclaration:0 policyEvaluator:v8];

      v9 = [*(a1 + 32) analyticsAppInfo];
      [v9 addObject:v10];

      v4 = v10;
    }

    v11 = v4;
    [v4 setNumberOfSiriPresentations:{objc_msgSend(v4, "numberOfSiriPresentations") + 1}];
  }
}

- (void)siriDidDismiss
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__DBAnalytics_siriDidDismiss__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [analyticsQueue addOperationWithBlock:v4];
}

void __29__DBAnalytics_siriDidDismiss__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSiriHostedBundleIdentifier:0];
  v3 = [*(a1 + 32) appAnalyticsInfoForBundleIdentifier:@"com.apple.siri"];
  [v3 stopCountingVisibleTime];
  v2 = [*(a1 + 32) _analyticsInfoPassingTest:&__block_literal_global_639];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_641];
}

void __29__DBAnalytics_siriDidDismiss__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setWasVisibleBeforeSiri:0];
  [v2 startCountingVisibleTime];
}

- (void)firstFrameSent
{
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__DBAnalytics_firstFrameSent__block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [analyticsQueue addOperationWithBlock:v4];
}

void __29__DBAnalytics_firstFrameSent__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setFirstFrameTimestamp:v2];
}

- (void)setCarplayUIReadyTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__DBAnalytics_setCarplayUIReadyTimestamp___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = timestampCopy;
  v6 = timestampCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

- (void)setMainDisplayReadyTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__DBAnalytics_setMainDisplayReadyTimestamp___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = timestampCopy;
  v6 = timestampCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

- (void)setClusterDisplayReadyTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DBAnalytics_setClusterDisplayReadyTimestamp___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = timestampCopy;
  v6 = timestampCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

+ (id)_axPhoneColorFiltersAnalyticsString
{
  if (!MADisplayFilterPrefGetCategoryEnabled())
  {
    v3 = @"Off";
    goto LABEL_16;
  }

  Type = MADisplayFilterPrefGetType();
  v3 = @"Undefined";
  if (Type <= 3)
  {
    if (Type == 1)
    {
      v8 = objc_opt_class();
      MADisplayFilterPrefGetGrayscaleCorrectionIntensity();
      v5 = [v8 _axColorFiltersIntensityStringForFloat:?];
      v6 = @"Gray";
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (Type != 2)
      {
        goto LABEL_16;
      }

      v4 = objc_opt_class();
      MADisplayFilterPrefGetRedColorCorrectionIntensity();
      v5 = [v4 _axColorFiltersIntensityStringForFloat:?];
      v6 = @"RedGreen";
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  if (Type == 4)
  {
    v9 = objc_opt_class();
    MADisplayFilterPrefGetGreenColorCorrectionIntensity();
    v5 = [v9 _axColorFiltersIntensityStringForFloat:?];
    v6 = @"GreenRed";
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (Type == 8)
  {
    v7 = objc_opt_class();
    MADisplayFilterPrefGetBlueColorCorrectionIntensity();
    v5 = [v7 _axColorFiltersIntensityStringForFloat:?];
    v6 = @"BlueYellow";
    if (v5)
    {
LABEL_15:
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v5];
    }
  }

LABEL_16:

  return v3;
}

+ (id)_axColorFiltersIntensityStringForFloat:(double)float
{
  if (float <= 0.330000013)
  {
    return @"Low";
  }

  if (float <= 0.660000026)
  {
    return @"Medium";
  }

  if (float >= 1.0)
  {
    return @"High";
  }

  return @"Undefined";
}

+ (id)_axPhoneSoundRecognitionAnalyticsString:(unint64_t)string
{
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (stringCopy)
  {
    [array addObject:@"Enabled"];
    if ((stringCopy & 2) != 0)
    {
      [v5 addObject:@"CarHorns"];
    }

    if ((stringCopy & 4) != 0)
    {
      [v5 addObject:@"Siren"];
    }

    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"Off";
  }

  return v6;
}

- (void)sendEvent:(unint64_t)event withParameters:(id)parameters
{
  v13 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if ([objc_opt_class() shouldSendAnalyticsEvents])
  {
    if (event >= 0xB)
    {
      v7 = DBLogForCategory(0xDuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [DBAnalytics sendEvent:event withParameters:?];
      }

      goto LABEL_9;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.CarPlay.%@", off_278F04148[event]];
    if (v6)
    {
      v7 = v6;
      v8 = DBLogForCategory(0xDuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = parametersCopy;
        _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Sending CA event %@ with %@", buf, 0x16u);
      }

      AnalyticsSendEvent();
LABEL_9:
    }
  }
}

- (id)_analyticsLayoutInfoPassingTest:(id)test
{
  testCopy = test;
  analyticsLayoutInfo = [(DBAnalytics *)self analyticsLayoutInfo];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__DBAnalytics__analyticsLayoutInfoPassingTest___block_invoke;
  v11[3] = &unk_278F04028;
  v12 = testCopy;
  v6 = testCopy;
  v7 = [analyticsLayoutInfo indexesOfObjectsPassingTest:v11];

  analyticsLayoutInfo2 = [(DBAnalytics *)self analyticsLayoutInfo];
  v9 = [analyticsLayoutInfo2 objectsAtIndexes:v7];

  return v9;
}

- (id)_analyticsInfoPassingTest:(id)test
{
  testCopy = test;
  analyticsAppInfo = [(DBAnalytics *)self analyticsAppInfo];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__DBAnalytics__analyticsInfoPassingTest___block_invoke;
  v11[3] = &unk_278F04050;
  v12 = testCopy;
  v6 = testCopy;
  v7 = [analyticsAppInfo indexesOfObjectsPassingTest:v11];

  analyticsAppInfo2 = [(DBAnalytics *)self analyticsAppInfo];
  v9 = [analyticsAppInfo2 objectsAtIndexes:v7];

  return v9;
}

- (id)nowPlayingAppAnalyticsInfo
{
  v2 = [(DBAnalytics *)self _analyticsInfoPassingTest:&__block_literal_global_690];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (id)appAnalyticsInfoForApp:(id)app
{
  appCopy = app;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__DBAnalytics_appAnalyticsInfoForApp___block_invoke;
  v9[3] = &unk_278F04078;
  v10 = appCopy;
  v5 = appCopy;
  v6 = [(DBAnalytics *)self _analyticsInfoPassingTest:v9];
  firstObject = [v6 firstObject];

  return firstObject;
}

uint64_t __38__DBAnalytics_appAnalyticsInfoForApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appInfo];
  v4 = [v3 bundleIdentifier];
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)appAnalyticsInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__DBAnalytics_appAnalyticsInfoForBundleIdentifier___block_invoke;
  v9[3] = &unk_278F04078;
  v10 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(DBAnalytics *)self _analyticsInfoPassingTest:v9];
  firstObject = [v6 firstObject];

  return firstObject;
}

uint64_t __51__DBAnalytics_appAnalyticsInfoForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)changedLayout:(id)layout
{
  layoutCopy = layout;
  analyticsQueue = [(DBAnalytics *)self analyticsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__DBAnalytics_changedLayout___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = layoutCopy;
  v6 = layoutCopy;
  [analyticsQueue addOperationWithBlock:v7];
}

void __29__DBAnalytics_changedLayout___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _analyticsLayoutInfoPassingTest:&__block_literal_global_741];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v14 + 1) + 8 * v6++) stopCountingVisibleTime];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __29__DBAnalytics_changedLayout___block_invoke_3;
    v12[3] = &unk_278F040C0;
    v13 = v7;
    v9 = [v8 _analyticsLayoutInfoPassingTest:v12];
    v10 = [v9 firstObject];

    if (!v10)
    {
      v10 = [[_DBAnalyticsLayoutInfo alloc] initWithLayout:*(a1 + 40)];
      v11 = [*(a1 + 32) analyticsLayoutInfo];
      [v11 addObject:v10];
    }

    [(_DBAnalyticsLayoutInfo *)v10 startCountingVisibleTime];
  }
}

uint64_t __29__DBAnalytics_changedLayout___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 layoutDisplayName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (DBEnvironmentConfiguration)environmentConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_environmentConfiguration);

  return WeakRetained;
}

- (void)initWithEnvironmentConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Failed to start monitoring link change events: %@", &v2, 0xCu);
}

void __34__DBAnalytics__queue_sessionEnded__block_invoke_544_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Unable to send CARConnectionEventSessionDetails due to error %@", v4, v5, v6, v7, 2u);
}

- (void)sendEvent:(uint64_t)a1 withParameters:.cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Unrecognized analytics event %@", v4, v5, v6, v7, 2u);
}

@end