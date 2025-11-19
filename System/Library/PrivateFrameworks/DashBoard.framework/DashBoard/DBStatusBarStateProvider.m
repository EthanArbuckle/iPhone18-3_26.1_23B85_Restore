@interface DBStatusBarStateProvider
+ (BOOL)_showIndicatorForData:(id)a3;
+ (int64_t)_sensorIndicatorTypeForData:(id)a3;
- ($6C45178016D353444451090973A2A97F)_generateData;
- (BOOL)_isAnnounceNotificationsEnabledForSystemSettings;
- (BOOL)_radarItemEnabled;
- (BOOL)_radarItemVisible;
- (BOOL)inCallServiceActive;
- (DBEnvironment)environment;
- (DBStatusBarStateProvider)initWithEnvironment:(id)a3;
- (int)_statusBarNetworkTypeForSystemStatusNetworkType:(unint64_t)a3;
- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5;
- (void)_batteryDataUpdatedWithData:(id)a3;
- (void)_callingDataUpdatedWithData:(id)a3;
- (void)_etcChanged:(id)a3;
- (void)_fetchAnnounceNotificationsSetting;
- (void)_getAnnounceNotificationsData:(id *)a3;
- (void)_getBatteryData:(id *)a3;
- (void)_getETCData:(id *)a3;
- (void)_getFocusData:(id *)a3;
- (void)_getMediaData:(id *)a3;
- (void)_getTTRData:(id *)a3;
- (void)_getTelephonyData:(id *)a3;
- (void)_getTimeData:(id *)a3;
- (void)_getVoiceControlData:(id *)a3;
- (void)_localeChanged:(id)a3;
- (void)_mediaDataUpdatedWithData:(id)a3;
- (void)_resetTimeDateFormatter;
- (void)_resetTimeUpdateTimer;
- (void)_setSensorActivityIndicator;
- (void)_setupAnnounceNotificationsSetting;
- (void)_setupBatteryDomain;
- (void)_setupCallingDomain;
- (void)_setupETC;
- (void)_setupMediaDomain;
- (void)_setupProviderIfNeededForDataType:(unint64_t)a3;
- (void)_setupTelephonyDomain;
- (void)_setupTime;
- (void)_setupVoiceControlDomain;
- (void)_setupWifiDomain;
- (void)_telephonyDataUpdatedWithData:(id)a3;
- (void)_timeZoneChanged:(id)a3;
- (void)_updateETCStateWithSession:(id)a3;
- (void)_voiceControlDataUpdatedWithData:(id)a3;
- (void)_wifiDataUpdatedWithData:(id)a3;
- (void)focusStatusUpdated:(id)a3;
- (void)getStatusBarData:(id *)a3;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preferences:(id)a3 announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)a4;
- (void)setAcceptsDNDStateUpdates:(BOOL)a3;
- (void)setActiveBundleIdentifier:(id)a3;
- (void)setNowRecordingBundleIdentifier:(id)a3;
- (void)subscribeForDataType:(unint64_t)a3;
- (void)updateStatusBarData;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
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
  v3 = [(DBStatusBarStateProvider *)self callingData];
  v4 = [v3 activeCallAttributions];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(DBStatusBarStateProvider *)self callingData];
    v7 = [v6 ringingCallAttributions];
    if ([v7 count])
    {
      v5 = 1;
    }

    else
    {
      v8 = [(DBStatusBarStateProvider *)self callingData];
      v9 = [v8 activeVideoConferenceAttributions];
      if ([v9 count])
      {
        v5 = 1;
      }

      else
      {
        v10 = [(DBStatusBarStateProvider *)self callingData];
        v11 = [v10 ringingVideoConferenceAttributions];
        v5 = [v11 count] != 0;
      }
    }
  }

  return v5;
}

- (void)_resetTimeUpdateTimer
{
  v1 = [a1 cachedTimeString];
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

- (DBStatusBarStateProvider)initWithEnvironment:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DBStatusBarStateProvider;
  v5 = [(DBStatusBarStateProvider *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = v6->_stateObservers;
    v6->_stateObservers = v7;

    v9 = [v4 workspace];
    [v9 addObserver:v6];

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
  v3 = [MEMORY[0x277D6BFF0] sensorActivityIndicator];

  if (!v3)
  {
    v4 = objc_alloc_init(DBStatusBarSensorIndicatorView);
    [(DBStatusBarSensorIndicatorView *)v4 setFrame:0.0, 0.0, 4.0, 4.0];
    sensorIndicatorView = self->_sensorIndicatorView;
    self->_sensorIndicatorView = v4;
    v6 = v4;

    [MEMORY[0x277D6BFF0] setSensorActivityIndicator:self->_sensorIndicatorView];
  }
}

- (void)_setupProviderIfNeededForDataType:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    [(DBStatusBarStateProvider *)self _setupTime];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [(DBStatusBarStateProvider *)self _setupWifiDomain];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(DBStatusBarStateProvider *)self _setupTelephonyDomain];
  if ((v3 & 0x400) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(DBStatusBarStateProvider *)self _setupVoiceControlDomain];
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(DBStatusBarStateProvider *)self _setupBatteryDomain];
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(DBStatusBarStateProvider *)self _setupETC];
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(DBStatusBarStateProvider *)self setAcceptsDNDStateUpdates:1];
  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(DBStatusBarStateProvider *)self setHasSetupTTR:1];
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    [(DBStatusBarStateProvider *)self _setupCallingDomain];
    if ((v3 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  [(DBStatusBarStateProvider *)self _setSensorActivityIndicator];
  [(DBStatusBarStateProvider *)self _setupMediaDomain];
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v3 & 0x200) == 0)
  {
    return;
  }

LABEL_23:

  [(DBStatusBarStateProvider *)self _setupAnnounceNotificationsSetting];
}

- (void)setActiveBundleIdentifier:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_activeBundleIdentifier isEqualToString:?])
  {
    v4 = [v6 copy];
    activeBundleIdentifier = self->_activeBundleIdentifier;
    self->_activeBundleIdentifier = v4;

    [(DBStatusBarStateProvider *)self updateStatusBarData];
  }
}

- (void)setNowRecordingBundleIdentifier:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_nowRecordingBundleIdentifier isEqualToString:?])
  {
    v4 = [v6 copy];
    nowRecordingBundleIdentifier = self->_nowRecordingBundleIdentifier;
    self->_nowRecordingBundleIdentifier = v4;

    [(DBStatusBarStateProvider *)self updateStatusBarData];
  }
}

- (void)subscribeForDataType:(unint64_t)a3
{
  [(DBStatusBarStateProvider *)self _setupProviderIfNeededForDataType:a3];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)getStatusBarData:(id *)a3
{
  v5 = *MEMORY[0x277D85DE8];
  [(DBStatusBarStateProvider *)self _generateData];
  memcpy(a3, v4, sizeof($6C45178016D353444451090973A2A97F));
}

- (void)_setupTime
{
  if (![(DBStatusBarStateProvider *)self hasSetupTime])
  {
    [(DBStatusBarStateProvider *)self setHasSetupTime:1];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__localeChanged_ name:*MEMORY[0x277CBE620] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__timeZoneChanged_ name:*MEMORY[0x277CBE780] object:0];

    [(DBStatusBarStateProvider *)self _resetTimeDateFormatter];

    [(DBStatusBarStateProvider *)self _resetTimeUpdateTimer];
  }
}

- (void)_resetTimeDateFormatter
{
  v3 = MEMORY[0x277CF0BF0];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 formatterForDateAsTimeNoAMPMWithLocale:v5];
  [(DBStatusBarStateProvider *)self setTimeItemDateFormatter:v4];
}

- (void)_getTimeData:(id *)a3
{
  a3->var0[0] = 1;
  var2 = a3->var2;
  v5 = [(DBStatusBarStateProvider *)self cachedTimeString];
  v6 = [v5 getCString:var2 maxLength:64 encoding:4];

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
    v3 = [(DBStatusBarStateProvider *)self voiceControlDomain];

    if (!v3)
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

- (void)_getVoiceControlData:(id *)a3
{
  if ([(STVoiceControlStatusDomainData *)self->_voiceControlDomainData isVoiceControlActive]&& _AXSCommandAndControlCarPlayEnabled())
  {
    a3->var0[41] = 1;
    v5 = [(STVoiceControlStatusDomainData *)self->_voiceControlDomainData listeningState];
    v6 = (v5 == 2) << 6;
    if (v5 == 1)
    {
      v6 = 32;
    }

    *(a3 + 2529) = v6 | *(a3 + 2529) & 0x9F;
  }

  else
  {
    a3->var0[41] = 0;
  }
}

- (void)_voiceControlDataUpdatedWithData:(id)a3
{
  [(DBStatusBarStateProvider *)self setVoiceControlDomainData:a3];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_setupWifiDomain
{
  v3 = [(DBStatusBarStateProvider *)self wifiDomain];

  if (!v3)
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

- (void)_wifiDataUpdatedWithData:(id)a3
{
  [(DBStatusBarStateProvider *)self setWifiData:a3];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_setupTelephonyDomain
{
  v3 = [(DBStatusBarStateProvider *)self telephonyDomain];

  if (!v3)
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

- (void)_telephonyDataUpdatedWithData:(id)a3
{
  [(DBStatusBarStateProvider *)self setTelephonyData:a3];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_getTelephonyData:(id *)a3
{
  v5 = [(DBStatusBarStateProvider *)self telephonyData];
  v21 = [v5 primarySIMInfo];

  v6 = [v21 serviceState];
  if (v6 == 2)
  {
    a3->var6 = [v21 signalStrengthBars];
    if ([v21 dataNetworkType])
    {
      a3->var0[9] = 1;
      a3->var21 = -[DBStatusBarStateProvider _statusBarNetworkTypeForSystemStatusNetworkType:](self, "_statusBarNetworkTypeForSystemStatusNetworkType:", [v21 dataNetworkType]);
    }

    else
    {
      a3->var0[9] = 0;
    }

    a3->var0[6] = 1;
    a3->var0[4] = 1;
  }

  else
  {
    if (v6 == 1)
    {
      a3->var14 = 5;
    }

    else
    {
      a3->var14 = 1;
    }

    a3->var0[4] = 1;
    a3->var0[6] = 1;
  }

  v7 = [(DBStatusBarStateProvider *)self telephonyData];
  v8 = [v7 isDualSIMEnabled];

  if (v8)
  {
    v9 = [(DBStatusBarStateProvider *)self telephonyData];
    v10 = [v9 secondarySIMInfo];

    if (v10)
    {
      *(a3 + 3160) |= 4u;
      v11 = 1;
      a3->var0[5] = 1;
      a3->var0[7] = 1;
      v12 = [v10 serviceState];
      switch(v12)
      {
        case 0:
LABEL_16:
          v13 = 2076;
LABEL_19:
          *&a3->var0[v13] = v11;
          break;
        case 2:
          a3->var7 = [v10 signalStrengthBars];
          if ([v10 dataNetworkType])
          {
            a3->var0[10] = 1;
            v11 = -[DBStatusBarStateProvider _statusBarNetworkTypeForSystemStatusNetworkType:](self, "_statusBarNetworkTypeForSystemStatusNetworkType:", [v10 dataNetworkType]);
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

  v14 = [(DBStatusBarStateProvider *)self wifiData];
  if (v14)
  {
    v15 = v14;
    v16 = [(DBStatusBarStateProvider *)self wifiData];
    v17 = [v16 isWifiActive];

    if (v17)
    {
      v18 = [(DBStatusBarStateProvider *)self wifiData];
      a3->var19 = [v18 signalStrengthBars];

      a3->var0[9] = 1;
      v19 = [(DBStatusBarStateProvider *)self wifiData];
      LODWORD(v18) = [v19 isAssociatedToIOSHotspot];

      if (v18)
      {
        v20 = 6;
      }

      else
      {
        v20 = 5;
      }

      a3->var21 = v20;
    }
  }
}

- (int)_statusBarNetworkTypeForSystemStatusNetworkType:(unint64_t)a3
{
  if (a3 - 2 > 0xE)
  {
    return 7;
  }

  else
  {
    return dword_24839BA08[a3 - 2];
  }
}

- (void)_setupBatteryDomain
{
  v3 = [(DBStatusBarStateProvider *)self batteryDomain];

  if (!v3)
  {
    v4 = [(DBStatusBarStateProvider *)self environment];
    v5 = [v4 environmentConfiguration];
    v6 = [v5 isConnectedWirelessly];

    if (v6)
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

- (void)_batteryDataUpdatedWithData:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DBStatusBarStateProvider *)self setBatteryData:v4];
  v5 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Battery data updated: %{public}@", &v6, 0xCu);
  }

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_getBatteryData:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(DBStatusBarStateProvider *)self batteryData];

  if (v5)
  {
    a3->var0[12] = 1;
    v6 = [(DBStatusBarStateProvider *)self batteryData];
    a3->var24 = [v6 chargingState];

    v7 = [(DBStatusBarStateProvider *)self batteryData];
    a3->var23 = [v7 percentCharge];

    v8 = [(DBStatusBarStateProvider *)self batteryData];
    *(a3 + 2536) = *(a3 + 2536) & 0xFE | [v8 isBatterySaverModeActive];

    v9 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      var24 = a3->var24;
      var23 = a3->var23;
      v12 = *(a3 + 2536) & 1;
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
    a3->var0[12] = 0;
  }
}

- (void)_setupETC
{
  if (![(DBStatusBarStateProvider *)self hasSetupETC])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CF8920];
    v5 = [(DBStatusBarStateProvider *)self environment];
    v6 = [v5 environmentConfiguration];
    v7 = [v6 session];
    [v3 addObserver:self selector:sel__etcChanged_ name:v4 object:v7];

    v10 = [(DBStatusBarStateProvider *)self environment];
    v8 = [v10 environmentConfiguration];
    v9 = [v8 session];
    [(DBStatusBarStateProvider *)self _updateETCStateWithSession:v9];
  }
}

- (void)_etcChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DBStatusBarStateProvider__etcChanged___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __40__DBStatusBarStateProvider__etcChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [*(a1 + 40) _updateETCStateWithSession:v2];
}

- (void)_updateETCStateWithSession:(id)a3
{
  v4 = [a3 electronicTollCollectionAvailable];
  [(DBStatusBarStateProvider *)self setEtcStatus:v4];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)_getETCData:(id *)a3
{
  v5 = [(DBStatusBarStateProvider *)self etcStatus];

  if (v5)
  {
    a3->var0[35] = 1;
    v6 = [(DBStatusBarStateProvider *)self etcStatus];
    *(a3 + 3149) = *(a3 + 3149) & 0xFE | [v6 BOOLValue];
  }

  else
  {
    a3->var0[35] = 0;
  }
}

- (void)setAcceptsDNDStateUpdates:(BOOL)a3
{
  self->_acceptsDNDStateUpdates = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DBStatusBarStateProvider_setAcceptsDNDStateUpdates___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)focusStatusUpdated:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DBStatusBarStateProvider_focusStatusUpdated___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)_getFocusData:(id *)a3
{
  if (![(DBStatusBarStateProvider *)self acceptsDNDStateUpdates])
  {
    a3->var0[2] = 0;
    v9 = a3 + 2529;
    v7 = *(a3 + 2529);
LABEL_8:
    *v9 = v7 | 0x80;
    return;
  }

  v5 = [(DBStatusBarStateProvider *)self activeModeSymbolName];
  v6 = [v5 length];

  a3->var0[2] = v6 != 0;
  v7 = *(a3 + 2529);
  if (!v6)
  {
    v9 = a3 + 2529;
    goto LABEL_8;
  }

  *(a3 + 2529) = v7 & 0x7F;
  v10 = [(DBStatusBarStateProvider *)self activeModeSymbolName];
  v8 = v10;
  [v10 cStringUsingEncoding:4];
  __strcpy_chk();
}

- (void)_getTTRData:(id *)a3
{
  v5 = [(DBStatusBarStateProvider *)self _radarItemEnabled];
  a3->var0[34] = v5;
  if (v5)
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

  *(a3 + 3149) = *(a3 + 3149) & 0xFD | v6;
}

- (void)_setupMediaDomain
{
  v3 = [(DBStatusBarStateProvider *)self mediaDomain];

  if (!v3)
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

- (void)_mediaDataUpdatedWithData:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DBStatusBarStateProvider__mediaDataUpdatedWithData___block_invoke;
  v6[3] = &unk_278F014B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_getMediaData:(id *)a3
{
  v5 = [(DBStatusBarStateProvider *)self mediaData];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(DBStatusBarStateProvider *)self mediaData];
    v8 = [v6 _showIndicatorForData:v7];
  }

  else
  {
    v8 = 0;
  }

  a3->var0[28] = v8;
}

+ (BOOL)_showIndicatorForData:(id)a3
{
  v3 = a3;
  v4 = [v3 audioRecordingAttributions];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 cameraCaptureAttributions];
    v5 = [v6 count] != 0;
  }

  return v5;
}

+ (int64_t)_sensorIndicatorTypeForData:(id)a3
{
  v3 = a3;
  v4 = [v3 cameraCaptureAttributions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v7 = [v3 audioRecordingAttributions];
    v6 = [v7 count] != 0;
  }

  return v6;
}

- (void)_setupCallingDomain
{
  v3 = [(DBStatusBarStateProvider *)self callingDomain];

  if (!v3)
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

- (void)_callingDataUpdatedWithData:(id)a3
{
  [(DBStatusBarStateProvider *)self setCallingData:a3];

  [(DBStatusBarStateProvider *)self updateStatusBarData];
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__DBStatusBarStateProvider_userNotificationSettingsCenter_didUpdateNotificationSystemSettings___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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
  v4 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
  v3 = [v4 notificationSystemSettings];
  self->_cachedCarPlayAnnounceSetting = [v3 announcementCarPlaySetting];
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

- (void)_getAnnounceNotificationsData:(id *)a3
{
  if ([(DBStatusBarStateProvider *)self _isAnnounceNotificationsEnabledForSystemSettings])
  {
    v5 = [(DBStatusBarStateProvider *)self siriPreferences];
    v6 = [v5 announceNotificationsInCarPlayTemporarilyDisabled];

    v7 = (v6 & 1) == 0;
    if (v6)
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

  a3->var0[38] = v7;
  *(a3 + 3149) = *(a3 + 3149) & 0xFB | v8;
}

- (void)invalidate
{
  v3 = [(DBStatusBarStateProvider *)self timeUpdateTimer];
  [v3 invalidate];

  v4 = [(DBStatusBarStateProvider *)self telephonyDomain];
  [v4 invalidate];

  v5 = [(DBStatusBarStateProvider *)self batteryDomain];
  [v5 invalidate];

  v6 = [(DBStatusBarStateProvider *)self wifiDomain];
  [v6 invalidate];

  v7 = [(DBStatusBarStateProvider *)self mediaDomain];
  [v7 invalidate];

  v8 = [(DBStatusBarStateProvider *)self callingDomain];
  [v8 invalidate];

  v9 = [(DBStatusBarStateProvider *)self voiceControlDomain];
  [v9 invalidate];

  v10 = [(DBStatusBarStateProvider *)self springBoardDefaults];

  if (v10)
  {
    v11 = [(DBStatusBarStateProvider *)self springBoardDefaults];
    [v11 removeObserver:self forKeyPath:@"SBShowStatusBarOverridesForRecording"];

    [(DBStatusBarStateProvider *)self setSpringBoardDefaults:0];
  }
}

- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5
{
  if ([(DBStatusBarStateProvider *)self inCallServiceActive:a3])
  {
    v6 = [(DBStatusBarStateProvider *)self activeBundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.InCallService"];

    return (v7 & 1) == 0;
  }

  v9 = [(DBStatusBarStateProvider *)self nowRecordingBundleIdentifier];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(DBStatusBarStateProvider *)self activeBundleIdentifier];
  v12 = [(DBStatusBarStateProvider *)self nowRecordingBundleIdentifier];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    return 0;
  }

  return 4;
}

- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v6 = [a5 activeBundleIdentifier];
  [(DBStatusBarStateProvider *)self setActiveBundleIdentifier:v6];
}

- (void)_localeChanged:(id)a3
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

- (void)_timeZoneChanged:(id)a3
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

- (void)preferences:(id)a3 announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)a4
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__DBStatusBarStateProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_278F015F8;
  v13 = v8;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v8;
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