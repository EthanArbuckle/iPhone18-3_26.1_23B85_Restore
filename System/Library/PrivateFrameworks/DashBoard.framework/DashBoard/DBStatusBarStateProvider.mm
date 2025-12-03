@interface DBStatusBarStateProvider
+ (BOOL)_showIndicatorForData:(id)data;
+ (int64_t)_sensorIndicatorTypeForData:(id)data;
- ($6C45178016D353444451090973A2A97F)_generateData;
- (BOOL)_isAnnounceNotificationsEnabledForSystemSettings;
- (BOOL)_radarItemEnabled;
- (BOOL)_radarItemVisible;
- (BOOL)inCallServiceActive;
- (DBEnvironment)environment;
- (DBStatusBarStateProvider)initWithEnvironment:(id)environment;
- (int)_statusBarNetworkTypeForSystemStatusNetworkType:(unint64_t)type;
- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides;
- (void)_batteryDataUpdatedWithData:(id)data;
- (void)_callingDataUpdatedWithData:(id)data;
- (void)_etcChanged:(id)changed;
- (void)_fetchAnnounceNotificationsSetting;
- (void)_getAnnounceNotificationsData:(id *)data;
- (void)_getBatteryData:(id *)data;
- (void)_getETCData:(id *)data;
- (void)_getFocusData:(id *)data;
- (void)_getMediaData:(id *)data;
- (void)_getTTRData:(id *)data;
- (void)_getTelephonyData:(id *)data;
- (void)_getTimeData:(id *)data;
- (void)_getVoiceControlData:(id *)data;
- (void)_localeChanged:(id)changed;
- (void)_mediaDataUpdatedWithData:(id)data;
- (void)_resetTimeDateFormatter;
- (void)_resetTimeUpdateTimer;
- (void)_setSensorActivityIndicator;
- (void)_setupAnnounceNotificationsSetting;
- (void)_setupBatteryDomain;
- (void)_setupCallingDomain;
- (void)_setupETC;
- (void)_setupMediaDomain;
- (void)_setupProviderIfNeededForDataType:(unint64_t)type;
- (void)_setupTelephonyDomain;
- (void)_setupTime;
- (void)_setupVoiceControlDomain;
- (void)_setupWifiDomain;
- (void)_telephonyDataUpdatedWithData:(id)data;
- (void)_timeZoneChanged:(id)changed;
- (void)_updateETCStateWithSession:(id)session;
- (void)_voiceControlDataUpdatedWithData:(id)data;
- (void)_wifiDataUpdatedWithData:(id)data;
- (void)focusStatusUpdated:(id)updated;
- (void)getStatusBarData:(id *)data;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preferences:(id)preferences announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)changed;
- (void)setAcceptsDNDStateUpdates:(BOOL)updates;
- (void)setActiveBundleIdentifier:(id)identifier;
- (void)setNowRecordingBundleIdentifier:(id)identifier;
- (void)subscribeForDataType:(unint64_t)type;
- (void)updateStatusBarData;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBStatusBarStateProvider

- (void)updateStatusBarData
{
  v47 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NSHashTable *)self->_stateObservers count];
  v4 = DBLogForCategory(6uLL);
  v5 = os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, &v4->super, OS_LOG_TYPE_DEFAULT, "Updating status bar state observers", buf, 2u);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    v16 = 0u;
    [(DBStatusBarStateProvider *)self _generateData];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_stateObservers;
    v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) statusBarStateProvider:self didPostStatusBarData:buf withActions:{0, v10}];
        }

        v7 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, &v4->super, OS_LOG_TYPE_DEFAULT, "No status bar state observers, skipping update", buf, 2u);
  }
}

- ($6C45178016D353444451090973A2A97F)_generateData
{
  bzero(retstr, 0xF28uLL);
  [(DBStatusBarStateProvider *)self _getTimeData:retstr];
  [(DBStatusBarStateProvider *)self _getTelephonyData:retstr];
  [(DBStatusBarStateProvider *)self _getBatteryData:retstr];
  [(DBStatusBarStateProvider *)self _getETCData:retstr];
  [(DBStatusBarStateProvider *)self _getFocusData:retstr];
  if ([(DBStatusBarStateProvider *)self hasSetupTTR])
  {
    [(DBStatusBarStateProvider *)self _getTTRData:retstr];
  }

  [(DBStatusBarStateProvider *)self _getMediaData:retstr];
  [(DBStatusBarStateProvider *)self _getAnnounceNotificationsData:retstr];
  [(DBStatusBarStateProvider *)self _getVoiceControlData:retstr];
  if ([(DBStatusBarStateProvider *)self _keynoteStatusBar])
  {
    v5 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "SpringBoard Recording Status Bar active will be applied to CarPlay.", buf, 2u);
    }

    [(DBStatusBarStateProvider *)self setCachedTimeString:@"9:41"];
    retstr->var6 = 5;
    retstr->var21 = 11;
    retstr->var23 = 100;
  }

  result = [MEMORY[0x277D75A98] getStatusBarOverrideData];
  if (result)
  {
    v7 = result;
    v8 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Status Bar overrides exist and will be applied to CarPlay.", v10, 2u);
    }

    if (v7->var0[0])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7->var3];
      [(DBStatusBarStateProvider *)self setCachedTimeString:v9];
    }

    if (v7->var0[4])
    {
      retstr->var6 = *&v7->var8[56];
      result = [(STTelephonyStatusDomain *)self->_telephonyDomain invalidate];
    }

    if (v7->var0[9])
    {
      retstr->var21 = *&v7->var25[48];
      retstr->var19 = *&v7->var25[40];
      result = [(STTelephonyStatusDomain *)self->_telephonyDomain invalidate];
    }

    if (v7->var0[12])
    {
      retstr->var23 = *&v7->var25[56];
    }

    if (v7->var0[2])
    {
      result = __strcpy_chk();
      *(retstr + 2529) = v7->var42[56] & 0x80 | *(retstr + 2529) & 0x7F;
    }

    if (v7->var0[41])
    {
      *(retstr + 2529) = *(retstr + 2529) & 0x9F | v7->var42[56] & 0x60;
    }
  }

  return result;
}

- (BOOL)_radarItemEnabled
{
  if (DBIsInternalInstall_onceToken != -1)
  {
    [DBStatusBarStateProvider _radarItemVisible];
  }

  if (DBIsInternalInstall_isInternal == 1)
  {
    keyExistsAndHasValidFormat = 0;
    return CFPreferencesGetAppBooleanValue(@"CARStatusBarRadarButtonEnabled", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v6 = 0;
    if (CFPreferencesGetAppBooleanValue(@"UIStatusBarRadarTimeItemEnabled", @"com.apple.UIKit", &v6))
    {
      v4 = v6 == 0;
    }

    else
    {
      v4 = 1;
    }

    return !v4;
  }
}

- (BOOL)_radarItemVisible
{
  if (DBIsInternalInstall_onceToken != -1)
  {
    [DBStatusBarStateProvider _radarItemVisible];
  }

  if (DBIsInternalInstall_isInternal == 1)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CARStatusBarRadarButtonEnabled", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat || AppBooleanValue)
    {
      LOBYTE(AppBooleanValue) = ![(DBStatusBarStateProvider *)self _keynoteStatusBar];
    }
  }

  else
  {
    LOBYTE(AppBooleanValue) = 0;
  }

  return AppBooleanValue;
}

- (BOOL)_isAnnounceNotificationsEnabledForSystemSettings
{
  cachedCarPlayAnnounceSetting = self->_cachedCarPlayAnnounceSetting;
  if ((cachedCarPlayAnnounceSetting - 2) < 2)
  {
    return 1;
  }

  if (cachedCarPlayAnnounceSetting != -99)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v6 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "No available announce status!", v7, 2u);
  }

  return 0;
}

- (BOOL)inCallServiceActive
{
  callingData = [(DBStatusBarStateProvider *)self callingData];
  activeCallAttributions = [callingData activeCallAttributions];
  if ([activeCallAttributions count])
  {
    v5 = 1;
  }

  else
  {
    callingData2 = [(DBStatusBarStateProvider *)self callingData];
    ringingCallAttributions = [callingData2 ringingCallAttributions];
    if ([ringingCallAttributions count])
    {
      v5 = 1;
    }

    else
    {
      callingData3 = [(DBStatusBarStateProvider *)self callingData];
      activeVideoConferenceAttributions = [callingData3 activeVideoConferenceAttributions];
      if ([activeVideoConferenceAttributions count])
      {
        v5 = 1;
      }

      else
      {
        callingData4 = [(DBStatusBarStateProvider *)self callingData];
        ringingVideoConferenceAttributions = [callingData4 ringingVideoConferenceAttributions];
        v5 = [ringingVideoConferenceAttributions count] != 0;
      }
    }
  }

  return v5;
}

- (void)_resetTimeUpdateTimer
{
  cachedTimeString = [self cachedTimeString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Cached time string is empty or nil: %@", v4, v5, v6, v7, v8);
}

void __47__DBStatusBarStateProvider__setupCallingDomain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DBStatusBarStateProvider__setupCallingDomain__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (DBStatusBarStateProvider)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = DBStatusBarStateProvider;
  v5 = [(DBStatusBarStateProvider *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = v6->_stateObservers;
    v6->_stateObservers = weakObjectsHashTable;

    workspace = [environmentCopy workspace];
    [workspace addObserver:v6];

    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
    springBoardDefaults = v6->_springBoardDefaults;
    v6->_springBoardDefaults = v10;

    if (v6->_springBoardDefaults)
    {
      v12 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "SpringBoardDefaults created for observation", v14, 2u);
      }

      [(NSUserDefaults *)v6->_springBoardDefaults addObserver:v6 forKeyPath:@"SBShowStatusBarOverridesForRecording" options:3 context:0];
    }
  }

  return v6;
}

- (void)_setSensorActivityIndicator
{
  sensorActivityIndicator = [MEMORY[0x277D6BFF0] sensorActivityIndicator];

  if (!sensorActivityIndicator)
  {
    v4 = objc_alloc_init(DBStatusBarSensorIndicatorView);
    [(DBStatusBarSensorIndicatorView *)v4 setFrame:0.0, 0.0, 4.0, 4.0];
    sensorIndicatorView = self->_sensorIndicatorView;
    self->_sensorIndicatorView = v4;
    v6 = v4;

    [MEMORY[0x277D6BFF0] setSensorActivityIndicator:self->_sensorIndicatorView];
  }
}

- (void)_setupProviderIfNeededForDataType:(unint64_t)type
{
  typeCopy = type;
  if (type)
  {
    [(DBStatusBarStateProvider *)self _setupTime];
    if ((typeCopy & 2) == 0)
    {
LABEL_3:
      if ((typeCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((type & 2) == 0)
  {
    goto LABEL_3;
  }

  [(DBStatusBarStateProvider *)self _setupWifiDomain];
  if ((typeCopy & 4) == 0)
  {
LABEL_4:
    if ((typeCopy & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(DBStatusBarStateProvider *)self _setupTelephonyDomain];
  if ((typeCopy & 0x400) == 0)
  {
LABEL_5:
    if ((typeCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(DBStatusBarStateProvider *)self _setupVoiceControlDomain];
  if ((typeCopy & 8) == 0)
  {
LABEL_6:
    if ((typeCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(DBStatusBarStateProvider *)self _setupBatteryDomain];
  if ((typeCopy & 0x10) == 0)
  {
LABEL_7:
    if ((typeCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(DBStatusBarStateProvider *)self _setupETC];
  if ((typeCopy & 0x20) == 0)
  {
LABEL_8:
    if ((typeCopy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(DBStatusBarStateProvider *)self setAcceptsDNDStateUpdates:1];
  if ((typeCopy & 0x40) == 0)
  {
LABEL_9:
    if ((typeCopy & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(DBStatusBarStateProvider *)self setHasSetupTTR:1];
  if ((typeCopy & 0x80) == 0)
  {
LABEL_10:
    if ((typeCopy & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    [(DBStatusBarStateProvider *)self _setupCallingDomain];
    if ((typeCopy & 0x200) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  [(DBStatusBarStateProvider *)self _setSensorActivityIndicator];
  [(DBStatusBarStateProvider *)self _setupMediaDomain];
  if ((typeCopy & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((typeCopy & 0x200) == 0)
  {
    return;
  }

LABEL_23:

  [(DBStatusBarStateProvider *)self _setupAnnounceNotificationsSetting];
}

- (void)setActiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_activeBundleIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    activeBundleIdentifier = self->_activeBundleIdentifier;
    self->_activeBundleIdentifier = v4;

    [(DBStatusBarStateProvider *)self updateStatusBarData];
  }
}

- (void)setNowRecordingBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_nowRecordingBundleIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    nowRecordingBundleIdentifier = self->_nowRecordingBundleIdentifier;
    self->_nowRecordingBundleIdentifier = v4;

    [(DBStatusBarStateProvider *)self updateStatusBarData];
  }
}

- (void)subscribeForDataType:(unint64_t)type
{
  [(DBStatusBarStateProvider *)self _setupProviderIfNeededForDataType:type];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)getStatusBarData:(id *)data
{
  v5 = *MEMORY[0x277D85DE8];
  [(DBStatusBarStateProvider *)self _generateData];
  memcpy(data, v4, sizeof($6C45178016D353444451090973A2A97F));
}

- (void)_setupTime
{
  if (![(DBStatusBarStateProvider *)self hasSetupTime])
  {
    [(DBStatusBarStateProvider *)self setHasSetupTime:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__localeChanged_ name:*MEMORY[0x277CBE620] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__timeZoneChanged_ name:*MEMORY[0x277CBE780] object:0];

    [(DBStatusBarStateProvider *)self _resetTimeDateFormatter];

    [(DBStatusBarStateProvider *)self _resetTimeUpdateTimer];
  }
}

- (void)_resetTimeDateFormatter
{
  v3 = MEMORY[0x277CF0BF0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 formatterForDateAsTimeNoAMPMWithLocale:currentLocale];
  [(DBStatusBarStateProvider *)self setTimeItemDateFormatter:v4];
}

- (void)_getTimeData:(id *)data
{
  data->var0[0] = 1;
  var2 = data->var2;
  cachedTimeString = [(DBStatusBarStateProvider *)self cachedTimeString];
  v6 = [cachedTimeString getCString:var2 maxLength:64 encoding:4];

  if (v6)
  {
    if (*var2)
    {
      return;
    }

    v7 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBStatusBarStateProvider _getTimeData:?];
    }
  }

  else
  {
    v7 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBStatusBarStateProvider _getTimeData:?];
    }
  }
}

- (void)_setupVoiceControlDomain
{
  if (_os_feature_enabled_impl())
  {
    voiceControlDomain = [(DBStatusBarStateProvider *)self voiceControlDomain];

    if (!voiceControlDomain)
    {
      objc_initWeak(&location, self);
      v4 = objc_alloc_init(MEMORY[0x277D6BBA0]);
      voiceControlDomain = self->_voiceControlDomain;
      self->_voiceControlDomain = v4;

      v6 = self->_voiceControlDomain;
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __52__DBStatusBarStateProvider__setupVoiceControlDomain__block_invoke;
      v11 = &unk_278F014E0;
      objc_copyWeak(&v12, &location);
      [(STVoiceControlStatusDomain *)v6 observeDataWithBlock:&v8];
      v7 = [(STVoiceControlStatusDomain *)self->_voiceControlDomain data:v8];
      [(DBStatusBarStateProvider *)self _voiceControlDataUpdatedWithData:v7];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __52__DBStatusBarStateProvider__setupVoiceControlDomain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DBStatusBarStateProvider__setupVoiceControlDomain__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_getVoiceControlData:(id *)data
{
  if ([(STVoiceControlStatusDomainData *)self->_voiceControlDomainData isVoiceControlActive]&& _AXSCommandAndControlCarPlayEnabled())
  {
    data->var0[41] = 1;
    listeningState = [(STVoiceControlStatusDomainData *)self->_voiceControlDomainData listeningState];
    v6 = (listeningState == 2) << 6;
    if (listeningState == 1)
    {
      v6 = 32;
    }

    *(data + 2529) = v6 | *(data + 2529) & 0x9F;
  }

  else
  {
    data->var0[41] = 0;
  }
}

- (void)_voiceControlDataUpdatedWithData:(id)data
{
  [(DBStatusBarStateProvider *)self setVoiceControlDomainData:data];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_setupWifiDomain
{
  wifiDomain = [(DBStatusBarStateProvider *)self wifiDomain];

  if (!wifiDomain)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(MEMORY[0x277D6BBB0]);
    wifiDomain = self->_wifiDomain;
    self->_wifiDomain = v4;

    v6 = self->_wifiDomain;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __44__DBStatusBarStateProvider__setupWifiDomain__block_invoke;
    v11 = &unk_278F01508;
    objc_copyWeak(&v12, &location);
    [(STWifiStatusDomain *)v6 observeDataWithBlock:&v8];
    v7 = [(STWifiStatusDomain *)self->_wifiDomain data:v8];
    [(DBStatusBarStateProvider *)self _wifiDataUpdatedWithData:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __44__DBStatusBarStateProvider__setupWifiDomain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DBStatusBarStateProvider__setupWifiDomain__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_wifiDataUpdatedWithData:(id)data
{
  [(DBStatusBarStateProvider *)self setWifiData:data];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_setupTelephonyDomain
{
  telephonyDomain = [(DBStatusBarStateProvider *)self telephonyDomain];

  if (!telephonyDomain)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(MEMORY[0x277D6BB90]);
    telephonyDomain = self->_telephonyDomain;
    self->_telephonyDomain = v4;

    v6 = self->_telephonyDomain;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __49__DBStatusBarStateProvider__setupTelephonyDomain__block_invoke;
    v11 = &unk_278F01530;
    objc_copyWeak(&v12, &location);
    [(STTelephonyStatusDomain *)v6 observeDataWithBlock:&v8];
    v7 = [(STTelephonyStatusDomain *)self->_telephonyDomain data:v8];
    [(DBStatusBarStateProvider *)self _telephonyDataUpdatedWithData:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __49__DBStatusBarStateProvider__setupTelephonyDomain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DBStatusBarStateProvider__setupTelephonyDomain__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_telephonyDataUpdatedWithData:(id)data
{
  [(DBStatusBarStateProvider *)self setTelephonyData:data];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_getTelephonyData:(id *)data
{
  telephonyData = [(DBStatusBarStateProvider *)self telephonyData];
  primarySIMInfo = [telephonyData primarySIMInfo];

  serviceState = [primarySIMInfo serviceState];
  if (serviceState == 2)
  {
    data->var6 = [primarySIMInfo signalStrengthBars];
    if ([primarySIMInfo dataNetworkType])
    {
      data->var0[9] = 1;
      data->var21 = -[DBStatusBarStateProvider _statusBarNetworkTypeForSystemStatusNetworkType:](self, "_statusBarNetworkTypeForSystemStatusNetworkType:", [primarySIMInfo dataNetworkType]);
    }

    else
    {
      data->var0[9] = 0;
    }

    data->var0[6] = 1;
    data->var0[4] = 1;
  }

  else
  {
    if (serviceState == 1)
    {
      data->var14 = 5;
    }

    else
    {
      data->var14 = 1;
    }

    data->var0[4] = 1;
    data->var0[6] = 1;
  }

  telephonyData2 = [(DBStatusBarStateProvider *)self telephonyData];
  isDualSIMEnabled = [telephonyData2 isDualSIMEnabled];

  if (isDualSIMEnabled)
  {
    telephonyData3 = [(DBStatusBarStateProvider *)self telephonyData];
    secondarySIMInfo = [telephonyData3 secondarySIMInfo];

    if (secondarySIMInfo)
    {
      *(data + 3160) |= 4u;
      v11 = 1;
      data->var0[5] = 1;
      data->var0[7] = 1;
      serviceState2 = [secondarySIMInfo serviceState];
      switch(serviceState2)
      {
        case 0:
LABEL_16:
          v13 = 2076;
LABEL_19:
          *&data->var0[v13] = v11;
          break;
        case 2:
          data->var7 = [secondarySIMInfo signalStrengthBars];
          if ([secondarySIMInfo dataNetworkType])
          {
            data->var0[10] = 1;
            v11 = -[DBStatusBarStateProvider _statusBarNetworkTypeForSystemStatusNetworkType:](self, "_statusBarNetworkTypeForSystemStatusNetworkType:", [secondarySIMInfo dataNetworkType]);
            v13 = 2100;
            goto LABEL_19;
          }

          break;
        case 1:
          v11 = 5;
          goto LABEL_16;
      }
    }
  }

  wifiData = [(DBStatusBarStateProvider *)self wifiData];
  if (wifiData)
  {
    v15 = wifiData;
    wifiData2 = [(DBStatusBarStateProvider *)self wifiData];
    isWifiActive = [wifiData2 isWifiActive];

    if (isWifiActive)
    {
      wifiData3 = [(DBStatusBarStateProvider *)self wifiData];
      data->var19 = [wifiData3 signalStrengthBars];

      data->var0[9] = 1;
      wifiData4 = [(DBStatusBarStateProvider *)self wifiData];
      LODWORD(wifiData3) = [wifiData4 isAssociatedToIOSHotspot];

      if (wifiData3)
      {
        v20 = 6;
      }

      else
      {
        v20 = 5;
      }

      data->var21 = v20;
    }
  }
}

- (int)_statusBarNetworkTypeForSystemStatusNetworkType:(unint64_t)type
{
  if (type - 2 > 0xE)
  {
    return 7;
  }

  else
  {
    return dword_24839BA08[type - 2];
  }
}

- (void)_setupBatteryDomain
{
  batteryDomain = [(DBStatusBarStateProvider *)self batteryDomain];

  if (!batteryDomain)
  {
    environment = [(DBStatusBarStateProvider *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    isConnectedWirelessly = [environmentConfiguration isConnectedWirelessly];

    if (isConnectedWirelessly)
    {
      objc_initWeak(&location, self);
      v7 = objc_alloc_init(MEMORY[0x277D6B928]);
      batteryDomain = self->_batteryDomain;
      self->_batteryDomain = v7;

      v9 = self->_batteryDomain;
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __47__DBStatusBarStateProvider__setupBatteryDomain__block_invoke;
      v14 = &unk_278F01558;
      objc_copyWeak(&v15, &location);
      [(STBatteryStatusDomain *)v9 observeDataWithBlock:&v11];
      v10 = [(STBatteryStatusDomain *)self->_batteryDomain data:v11];
      [(DBStatusBarStateProvider *)self _batteryDataUpdatedWithData:v10];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __47__DBStatusBarStateProvider__setupBatteryDomain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DBStatusBarStateProvider__setupBatteryDomain__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_batteryDataUpdatedWithData:(id)data
{
  v8 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(DBStatusBarStateProvider *)self setBatteryData:dataCopy];
  v5 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dataCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Battery data updated: %{public}@", &v6, 0xCu);
  }

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_getBatteryData:(id *)data
{
  v18 = *MEMORY[0x277D85DE8];
  batteryData = [(DBStatusBarStateProvider *)self batteryData];

  if (batteryData)
  {
    data->var0[12] = 1;
    batteryData2 = [(DBStatusBarStateProvider *)self batteryData];
    data->var24 = [batteryData2 chargingState];

    batteryData3 = [(DBStatusBarStateProvider *)self batteryData];
    data->var23 = [batteryData3 percentCharge];

    batteryData4 = [(DBStatusBarStateProvider *)self batteryData];
    *(data + 2536) = *(data + 2536) & 0xFE | [batteryData4 isBatterySaverModeActive];

    v9 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      var24 = data->var24;
      var23 = data->var23;
      v12 = *(data + 2536) & 1;
      v13[0] = 67240704;
      v13[1] = var24;
      v14 = 1026;
      v15 = var23;
      v16 = 1026;
      v17 = v12;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Setting status bar battery data enabled, state: %{public}u, capacity: %{public}d, low power mode active: %{public}d", v13, 0x14u);
    }
  }

  else
  {
    data->var0[12] = 0;
  }
}

- (void)_setupETC
{
  if (![(DBStatusBarStateProvider *)self hasSetupETC])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CF8920];
    environment = [(DBStatusBarStateProvider *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    session = [environmentConfiguration session];
    [defaultCenter addObserver:self selector:sel__etcChanged_ name:v4 object:session];

    environment2 = [(DBStatusBarStateProvider *)self environment];
    environmentConfiguration2 = [environment2 environmentConfiguration];
    session2 = [environmentConfiguration2 session];
    [(DBStatusBarStateProvider *)self _updateETCStateWithSession:session2];
  }
}

- (void)_etcChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DBStatusBarStateProvider__etcChanged___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __40__DBStatusBarStateProvider__etcChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [*(a1 + 40) _updateETCStateWithSession:v2];
}

- (void)_updateETCStateWithSession:(id)session
{
  electronicTollCollectionAvailable = [session electronicTollCollectionAvailable];
  [(DBStatusBarStateProvider *)self setEtcStatus:electronicTollCollectionAvailable];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_getETCData:(id *)data
{
  etcStatus = [(DBStatusBarStateProvider *)self etcStatus];

  if (etcStatus)
  {
    data->var0[35] = 1;
    etcStatus2 = [(DBStatusBarStateProvider *)self etcStatus];
    *(data + 3149) = *(data + 3149) & 0xFE | [etcStatus2 BOOLValue];
  }

  else
  {
    data->var0[35] = 0;
  }
}

- (void)setAcceptsDNDStateUpdates:(BOOL)updates
{
  self->_acceptsDNDStateUpdates = updates;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DBStatusBarStateProvider_setAcceptsDNDStateUpdates___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)focusStatusUpdated:(id)updated
{
  updatedCopy = updated;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DBStatusBarStateProvider_focusStatusUpdated___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = updatedCopy;
  selfCopy = self;
  v5 = updatedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __47__DBStatusBarStateProvider_focusStatusUpdated___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 activeModeConfiguration];
    v4 = [v3 mode];

    v5 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Received updated focus state %@", &v9, 0xCu);
    }

    v6 = [v4 symbolImageName];
    [*(a1 + 40) setActiveModeSymbolName:v6];
  }

  else
  {
    v7 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Received updated focus with no active mode.", &v9, 2u);
    }

    [*(a1 + 40) setActiveModeSymbolName:0];
  }

  return [*(a1 + 40) updateStatusBarData];
}

- (void)_getFocusData:(id *)data
{
  if (![(DBStatusBarStateProvider *)self acceptsDNDStateUpdates])
  {
    data->var0[2] = 0;
    v9 = data + 2529;
    v7 = *(data + 2529);
LABEL_8:
    *v9 = v7 | 0x80;
    return;
  }

  activeModeSymbolName = [(DBStatusBarStateProvider *)self activeModeSymbolName];
  v6 = [activeModeSymbolName length];

  data->var0[2] = v6 != 0;
  v7 = *(data + 2529);
  if (!v6)
  {
    v9 = data + 2529;
    goto LABEL_8;
  }

  *(data + 2529) = v7 & 0x7F;
  activeModeSymbolName2 = [(DBStatusBarStateProvider *)self activeModeSymbolName];
  v8 = activeModeSymbolName2;
  [activeModeSymbolName2 cStringUsingEncoding:4];
  __strcpy_chk();
}

- (void)_getTTRData:(id *)data
{
  _radarItemEnabled = [(DBStatusBarStateProvider *)self _radarItemEnabled];
  data->var0[34] = _radarItemEnabled;
  if (_radarItemEnabled)
  {
    if ([(DBStatusBarStateProvider *)self _radarItemVisible])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *(data + 3149) = *(data + 3149) & 0xFD | v6;
}

- (void)_setupMediaDomain
{
  mediaDomain = [(DBStatusBarStateProvider *)self mediaDomain];

  if (!mediaDomain)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(MEMORY[0x277D6B9B0]);
    mediaDomain = self->_mediaDomain;
    self->_mediaDomain = v4;

    v6 = self->_mediaDomain;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __45__DBStatusBarStateProvider__setupMediaDomain__block_invoke;
    v11 = &unk_278F015A8;
    objc_copyWeak(&v12, &location);
    [(STMediaStatusDomain *)v6 observeDataWithBlock:&v8];
    v7 = [(STMediaStatusDomain *)self->_mediaDomain data:v8];
    [(DBStatusBarStateProvider *)self _mediaDataUpdatedWithData:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __45__DBStatusBarStateProvider__setupMediaDomain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__DBStatusBarStateProvider__setupMediaDomain__block_invoke_2;
  v6[3] = &unk_278F014B8;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_mediaDataUpdatedWithData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke;
  v6[3] = &unk_278F014B8;
  v6[4] = self;
  v7 = dataCopy;
  v5 = dataCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setMediaData:*(a1 + 40)];
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) mediaData];
  v4 = [v2 _sensorIndicatorTypeForData:v3];

  v5 = [*(a1 + 32) sensorIndicatorView];
  [v5 setSensorIndicatorType:v4];

  v6 = [*(a1 + 40) audioRecordingAttributionList];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 attributedEntity];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v10 = DBLogForCategory(6uLL);
      v18 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (has_internal_diagnostics)
      {
        if (v18)
        {
          __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_4(v7);
        }
      }

      else if (v18)
      {
        __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_3(v10);
      }

      v14 = 0;
      goto LABEL_20;
    }

    v10 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v9];
    v11 = [MEMORY[0x277D46F48] handleForPredicate:v10 error:0];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 identity];
      v14 = [v13 embeddedApplicationIdentifier];

      v15 = DBLogForCategory(6uLL);
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543362;
          v20 = v14;
          _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Now recording bundle identifier updated to %{public}@.", &v19, 0xCu);
        }

        goto LABEL_19;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_1();
      }
    }

    else
    {
      v16 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_2();
      }
    }

    v14 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  [*(a1 + 32) setNowRecordingBundleIdentifier:v14];
  [*(a1 + 32) updateStatusBarData];
}

- (void)_getMediaData:(id *)data
{
  mediaData = [(DBStatusBarStateProvider *)self mediaData];

  if (mediaData)
  {
    v6 = objc_opt_class();
    mediaData2 = [(DBStatusBarStateProvider *)self mediaData];
    v8 = [v6 _showIndicatorForData:mediaData2];
  }

  else
  {
    v8 = 0;
  }

  data->var0[28] = v8;
}

+ (BOOL)_showIndicatorForData:(id)data
{
  dataCopy = data;
  audioRecordingAttributions = [dataCopy audioRecordingAttributions];
  if ([audioRecordingAttributions count])
  {
    v5 = 1;
  }

  else
  {
    cameraCaptureAttributions = [dataCopy cameraCaptureAttributions];
    v5 = [cameraCaptureAttributions count] != 0;
  }

  return v5;
}

+ (int64_t)_sensorIndicatorTypeForData:(id)data
{
  dataCopy = data;
  cameraCaptureAttributions = [dataCopy cameraCaptureAttributions];
  v5 = [cameraCaptureAttributions count];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    audioRecordingAttributions = [dataCopy audioRecordingAttributions];
    v6 = [audioRecordingAttributions count] != 0;
  }

  return v6;
}

- (void)_setupCallingDomain
{
  callingDomain = [(DBStatusBarStateProvider *)self callingDomain];

  if (!callingDomain)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(MEMORY[0x277D6B940]);
    callingDomain = self->_callingDomain;
    self->_callingDomain = v4;

    v6 = self->_callingDomain;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __47__DBStatusBarStateProvider__setupCallingDomain__block_invoke;
    v11 = &unk_278F015D0;
    objc_copyWeak(&v12, &location);
    [(STCallingStatusDomain *)v6 observeDataWithBlock:&v8];
    v7 = [(STCallingStatusDomain *)self->_callingDomain data:v8];
    [(DBStatusBarStateProvider *)self _callingDataUpdatedWithData:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_callingDataUpdatedWithData:(id)data
{
  [(DBStatusBarStateProvider *)self setCallingData:data];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__DBStatusBarStateProvider_userNotificationSettingsCenter_didUpdateNotificationSystemSettings___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __95__DBStatusBarStateProvider_userNotificationSettingsCenter_didUpdateNotificationSystemSettings___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Announce status changed, updating announce", v4, 2u);
  }

  *(*(a1 + 32) + 208) = [*(a1 + 40) announcementCarPlaySetting];
  return [*(a1 + 32) updateStatusBarData];
}

- (void)_fetchAnnounceNotificationsSetting
{
  currentNotificationSettingsCenter = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  self->_cachedCarPlayAnnounceSetting = [notificationSystemSettings announcementCarPlaySetting];
}

- (void)_setupAnnounceNotificationsSetting
{
  if (![(DBStatusBarStateProvider *)self hasSetupAnnounceNotification])
  {
    v3 = +[DBNotificationSettingsCenter defaultCenter];
    [v3 addObserver:self];

    v4 = objc_alloc_init(MEMORY[0x277CF9030]);
    siriPreferences = self->_siriPreferences;
    self->_siriPreferences = v4;

    [(CRSSiriPreferences *)self->_siriPreferences addObserver:self];
    self->_cachedCarPlayAnnounceSetting = -99;
    v6 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DBStatusBarStateProvider__setupAnnounceNotificationsSetting__block_invoke;
    block[3] = &unk_278F01580;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

void __62__DBStatusBarStateProvider__setupAnnounceNotificationsSetting__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchAnnounceNotificationsSetting];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__DBStatusBarStateProvider__setupAnnounceNotificationsSetting__block_invoke_2;
  block[3] = &unk_278F01580;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_getAnnounceNotificationsData:(id *)data
{
  if ([(DBStatusBarStateProvider *)self _isAnnounceNotificationsEnabledForSystemSettings])
  {
    siriPreferences = [(DBStatusBarStateProvider *)self siriPreferences];
    announceNotificationsInCarPlayTemporarilyDisabled = [siriPreferences announceNotificationsInCarPlayTemporarilyDisabled];

    v7 = (announceNotificationsInCarPlayTemporarilyDisabled & 1) == 0;
    if (announceNotificationsInCarPlayTemporarilyDisabled)
    {
      v8 = 0;
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  data->var0[38] = v7;
  *(data + 3149) = *(data + 3149) & 0xFB | v8;
}

- (void)invalidate
{
  timeUpdateTimer = [(DBStatusBarStateProvider *)self timeUpdateTimer];
  [timeUpdateTimer invalidate];

  telephonyDomain = [(DBStatusBarStateProvider *)self telephonyDomain];
  [telephonyDomain invalidate];

  batteryDomain = [(DBStatusBarStateProvider *)self batteryDomain];
  [batteryDomain invalidate];

  wifiDomain = [(DBStatusBarStateProvider *)self wifiDomain];
  [wifiDomain invalidate];

  mediaDomain = [(DBStatusBarStateProvider *)self mediaDomain];
  [mediaDomain invalidate];

  callingDomain = [(DBStatusBarStateProvider *)self callingDomain];
  [callingDomain invalidate];

  voiceControlDomain = [(DBStatusBarStateProvider *)self voiceControlDomain];
  [voiceControlDomain invalidate];

  springBoardDefaults = [(DBStatusBarStateProvider *)self springBoardDefaults];

  if (springBoardDefaults)
  {
    springBoardDefaults2 = [(DBStatusBarStateProvider *)self springBoardDefaults];
    [springBoardDefaults2 removeObserver:self forKeyPath:@"SBShowStatusBarOverridesForRecording"];

    [(DBStatusBarStateProvider *)self setSpringBoardDefaults:0];
  }
}

- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides
{
  if ([(DBStatusBarStateProvider *)self inCallServiceActive:bar])
  {
    activeBundleIdentifier = [(DBStatusBarStateProvider *)self activeBundleIdentifier];
    v7 = [activeBundleIdentifier isEqualToString:@"com.apple.InCallService"];

    return (v7 & 1) == 0;
  }

  nowRecordingBundleIdentifier = [(DBStatusBarStateProvider *)self nowRecordingBundleIdentifier];
  if (!nowRecordingBundleIdentifier)
  {
    return 0;
  }

  v10 = nowRecordingBundleIdentifier;
  activeBundleIdentifier2 = [(DBStatusBarStateProvider *)self activeBundleIdentifier];
  nowRecordingBundleIdentifier2 = [(DBStatusBarStateProvider *)self nowRecordingBundleIdentifier];
  v13 = [activeBundleIdentifier2 isEqualToString:nowRecordingBundleIdentifier2];

  if (v13)
  {
    return 0;
  }

  return 4;
}

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  activeBundleIdentifier = [toState activeBundleIdentifier];
  [(DBStatusBarStateProvider *)self setActiveBundleIdentifier:activeBundleIdentifier];
}

- (void)_localeChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DBStatusBarStateProvider__localeChanged___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __43__DBStatusBarStateProvider__localeChanged___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Locale changed, resetting date formatter", v4, 2u);
  }

  [*(a1 + 32) _resetTimeDateFormatter];
  return [*(a1 + 32) _resetTimeUpdateTimer];
}

- (void)_timeZoneChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DBStatusBarStateProvider__timeZoneChanged___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __45__DBStatusBarStateProvider__timeZoneChanged___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Time zone changed, updating time", v4, 2u);
  }

  return [*(a1 + 32) _resetTimeUpdateTimer];
}

- (void)preferences:(id)preferences announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__DBStatusBarStateProvider_preferences_announceNotificationsInCarPlayTemporarilyDisabledChanged___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __97__DBStatusBarStateProvider_preferences_announceNotificationsInCarPlayTemporarilyDisabledChanged___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Announce status changed, updating announce", v4, 2u);
  }

  return [*(a1 + 32) updateStatusBarData];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DBStatusBarStateProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_278F015F8;
  v13 = pathCopy;
  v14 = changeCopy;
  selfCopy = self;
  v10 = changeCopy;
  v11 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __75__DBStatusBarStateProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "User Default changed '%@', change = %@", &v6, 0x16u);
  }

  [*(a1 + 48) _resetTimeUpdateTimer];
  return [*(a1 + 48) updateStatusBarData];
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)_getTimeData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 cachedTimeString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Unable to store time string in status bar data: %@", v4, v5, v6, v7, v8);
}

- (void)_getTimeData:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 cachedTimeString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Time string is empty from cached string: %@", v4, v5, v6, v7, v8);
}

void __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_248146000, v0, OS_LOG_TYPE_ERROR, "Recording attribution exists, bundle identifier is %{public}@, but process is not an app.", v1, 0xCu);
}

void __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_248146000, v0, OS_LOG_TYPE_ERROR, "Recording attribution exists, but could not find process for bundle identifier: %{public}@.", v1, 0xCu);
}

void __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke_cold_4(void *a1)
{
  v1 = [a1 attributedEntity];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Recording attribution exists, but attributed entity has no bundle identifier: %{public}@", v4, v5, v6, v7, v8);
}

@end