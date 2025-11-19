@interface ENDaemon
- (BOOL)_bluetoothMonitorShouldRun;
- (BOOL)_isNKDActive;
- (BOOL)_postExposureNotificationForClassification:(id)a3 status:(int64_t)a4 region:(id)a5;
- (BOOL)_writePreferenceActiveEntity:(id)a3;
- (BOOL)_writePreferenceRegionPendingOnboarding:(id)a3;
- (BOOL)isDeviceUnlocked;
- (BOOL)isOnboardingNeeded;
- (BOOL)isProxyEnabledForTestResultManager:(id)a3;
- (ENDaemon)init;
- (ENDaemonDelegate)delegate;
- (double)timeForAvailabilityAlertCycleReset;
- (id)_getBundleIDFromBundle:(__CFBundle *)a3;
- (id)_getDelegateAndReturnError:(id *)a3;
- (id)_getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:(id)a3;
- (id)_getDownloadEndpointsAndReturnError:(id *)a3;
- (id)_getInfoDictFromAppProxy:(id)a3;
- (id)_getInfoDictFromBundle:(__CFBundle *)a3;
- (id)_getReportTypeForSession:(id)a3;
- (id)_getReportTypeFromMetadata:(id)a3;
- (id)_readPreferenceActiveEntity;
- (id)_readPreferenceRegionPendingOnboarding;
- (id)activeRegionForExposureDetectionManager:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)getExposureDatabaseAndReturnError:(id *)a3;
- (id)legacyHistoryPath;
- (id)loadHistorySinceTime:(double)a3;
- (id)loadLegacyHistorySinceTime:(double)a3;
- (id)regionForBundleInfo:(id)a3;
- (id)xpcConnectionForBundleID:(id)a3;
- (int64_t)getOverallStatus;
- (int64_t)tccAccessForBundleID:(id)a3;
- (uint64_t)_updateOverallStatus;
- (uint64_t)isOnboardingNeeded;
- (uint64_t)legacyHistoryPath;
- (uint64_t)stateMetricVersion;
- (uint64_t)timeForAvailabilityAlertCycleReset;
- (unsigned)_getAvailabilityAlertCountIncrement:(BOOL)a3 reset:(BOOL)a4;
- (unsigned)_getLatestExposureForDifferentialPrivacy;
- (unsigned)appDequeueActivityFlagsWithBundleID:(id)a3;
- (unsigned)stateMetricVersion;
- (void)_activate;
- (void)_bluetoothMonitorEnsureStarted;
- (void)_bluetoothMonitorEnsureStopped;
- (void)_bluetoothTracingEnsureStarted;
- (void)_bluetoothTracingEnsureStopped;
- (void)_bluetoothTracingStop;
- (void)_configurationManagerEnsureStarted;
- (void)_configurationManagerEnsureStopped;
- (void)_databasesEnsureClosed;
- (void)_databasesEnsureOpened;
- (void)_deferConsentForPendingRegion;
- (void)_differentialPrivacyEnsureStarted;
- (void)_differentialPrivacyEnsureStopped;
- (void)_enApplicationDidInstall:(id)a3;
- (void)_enApplicationDidUninstall:(id)a3;
- (void)_enqueueScreenUnlockAction:(id)a3 withIdentifier:(id)a4;
- (void)_exposureManagersEnsureStarted;
- (void)_exposureManagersEnsureStopped;
- (void)_exposureNotificationRegionConfigurationChanged:(id)a3;
- (void)_exposureNotificationRegionConfigurationRemoved:(id)a3;
- (void)_fetchPrefRegionConfig:(id)a3 oldCustomCountryCode:(id)a4;
- (void)_handleTestVerificationErrors:(id)a3;
- (void)_invalidate;
- (void)_migrateLegacyHistoryIfNecessary;
- (void)_networkProxyStatusCheck;
- (void)_periodicPersistencePurge;
- (void)_postUserNotificationWithRequest:(id)a3 authorizationFailureHandler:(id)a4;
- (void)_readPreferenceActiveEntity;
- (void)_readPreferenceRegionPendingOnboarding;
- (void)_regionMonitorEnsureStarted;
- (void)_regionMonitorEnsureStopped;
- (void)_resetDataWithFlags:(unsigned int)a3;
- (void)_resetDeveloperSettings;
- (void)_schedulePeriodicPersistencePurge;
- (void)_scheduleUpdate;
- (void)_setActiveRegionForApp:(id)a3 infoDict:(id)a4;
- (void)_startPreauthorizedTestVerificationAction;
- (void)_tccChanged;
- (void)_turnOffEN;
- (void)_update;
- (void)_updateOverallStatus;
- (void)_updatePhase1ConfigurationIfNeeded:(id)a3;
- (void)_xpcConnectionAccept:(id)a3;
- (void)_xpcListenerEvent:(id)a3;
- (void)activate;
- (void)appLaunchWithBundleID:(id)a3 activity:(unsigned int)a4 shouldEnterForeground:(BOOL)a5 requiredRuntimeInSeconds:(int)a6;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)bluetoothPowerStateChanged;
- (void)configurationManager:(id)a3 didResolveCurrentRegion:(BOOL)a4;
- (void)configurationManager:(id)a3 errorDetected:(unsigned int)a4;
- (void)configurationManager:(id)a3 exposureNotificationRegionConfigurationChanged:(id)a4;
- (void)configurationManager:(id)a3 exposureNotificationRegionConfigurationRemovedForRegion:(id)a4;
- (void)enqueuePreauthorizedTestVerificationUnlockAction;
- (void)enqueueScreenUnlockAction:(id)a3 withIdentifier:(id)a4;
- (void)exposureDetectionManager:(id)a3 finishedSessionWithResult:(id)a4;
- (void)fetchServerConfigurationForAppBundleIdentifier:(id)a3 infoDictionary:(id)a4;
- (void)fetchServerConfigurationForRegion:(id)a3 completion:(id)a4;
- (void)init;
- (void)invalidate;
- (void)monthlyTriggerActivateWithIntervalOverride:(unsigned int)a3;
- (void)monthlyTriggerDeactivate;
- (void)notifyUserWithStatus:(int64_t)a3;
- (void)onboardingManagerDidObserveDeviceUnlock:(id)a3;
- (void)onboardingTriggerDeactivate;
- (void)onboardingTriggerResumeIfNeeded;
- (void)onboardingTriggerRetry:(unsigned int)a3;
- (void)pauseUpdate;
- (void)postAnalyticsOptInNotificationForRegion:(id)a3;
- (void)postENOffNotification;
- (void)postExposureNotification:(id)a3;
- (void)postExposureSummaryAccessNotificationWithAppBundleIdentifier:(id)a3 string:(id)a4;
- (void)postGeneralNotificationWithTitle:(id)a3 message:(id)a4;
- (void)postMonthlySummaryNotificationForAppBundleIdentifier:(id)a3;
- (void)postOnboardingNotificationForRegion:(id)a3;
- (void)postPreAuthorizationNotificationForRegion:(id)a3;
- (void)postTestVerificationReceivedNotification:(id)a3 region:(id)a4 reportType:(unsigned int)a5;
- (void)prefsChanged;
- (void)presentBuddyForRegion:(id)a3 errorHandler:(id)a4 completionHandler:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)setMonthlySummaryDisabled:(BOOL)a3;
- (void)startAvailabilityAlertCycleWithBuddy:(BOOL)a3;
- (void)startServerConfigurationFetchForRegion:(id)a3;
- (void)tearDownAlertHandle;
- (void)textMessageManager:(id)a3 errorDetected:(unsigned int)a4;
- (void)timeForAvailabilityAlertCycleReset;
- (void)updateExistingConsentForPhase1ActiveRegion:(int64_t)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)xpcConnectionInvalidated:(id)a3;
- (void)xpcPreAuthorizedDiagnosisKeysAvailable;
- (void)xpcReportStatus;
@end

@implementation ENDaemon

- (void)_scheduleUpdate
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ENDaemon__scheduleUpdate__block_invoke;
    block[3] = &unk_278FD0F90;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_update
{
  self->_updatePending = 0;
  if ([(ENDaemon *)self _bluetoothMonitorShouldRun])
  {
    [(ENDaemon *)self _bluetoothMonitorEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _bluetoothMonitorEnsureStopped];
  }

  if (self->_prefEnabled && !self->_prefPaused && [(CUSystemMonitor *)self->_systemMonitor firstUnlocked])
  {
    [(ENDaemon *)self _bluetoothTracingEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _bluetoothTracingEnsureStopped];
  }

  if (self->_prefEnabled)
  {
    [(ENDaemon *)self _databasesEnsureOpened];
  }

  else
  {
    [(ENDaemon *)self _databasesEnsureClosed];
  }

  if (self->_prefEnabled)
  {
    [(ENDaemon *)self _exposureManagersEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _exposureManagersEnsureStopped];
  }

  if (self->_prefConfigurationManagerEnabled)
  {
    [(ENDaemon *)self _configurationManagerEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _configurationManagerEnsureStopped];
  }

  if (self->_prefEnabled || !self->_availabilityAlertDisabled)
  {
    [(ENRegionMonitor *)self->_regionMonitor enableRegionMonitor];
    [(ENRegionMonitor *)self->_regionMonitor updateRegionHistoryFileStatus];
  }

  else
  {
    [(ENRegionMonitor *)self->_regionMonitor disableRegionMonitor];
  }

  if (self->_prefDifferentialPrivacyConsent == 2)
  {
    [(ENDaemon *)self _differentialPrivacyEnsureStarted];
  }

  else
  {
    [(ENDaemon *)self _differentialPrivacyEnsureStopped];
  }

  if (!self->_prefDeveloperServerConfiguration)
  {
    prefRegionIdentifierOverride = self->_prefRegionIdentifierOverride;
    if (!prefRegionIdentifierOverride || ![(NSString *)prefRegionIdentifierOverride length])
    {
      v4 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      [v4 clearTemporaryServerConfigurations];

      v5 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      [v5 clearTemporaryCountrySubdivisionList];
    }
  }

  [(ENDaemon *)self _schedulePeriodicPersistencePurge];

  [(ENDaemon *)self _updateOverallStatus];
}

- (BOOL)_bluetoothMonitorShouldRun
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) manager];

        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_bluetoothMonitorEnsureStarted
{
  if (!self->_btMonitorStarted)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _bluetoothMonitorEnsureStarted];
    }

    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __42__ENDaemon__bluetoothMonitorEnsureStarted__block_invoke;
    v4[3] = &unk_278FD1738;
    objc_copyWeak(&v5, &location);
    [WeakRetained startPowerMonitoringWithStateChangeHandler:v4];

    self->_btMonitorStarted = 1;
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_databasesEnsureClosed
{
  [(ENExposureDatabase *)self->_exposureDatabase close];
  exposureDatabase = self->_exposureDatabase;
  self->_exposureDatabase = 0;
}

- (void)_bluetoothTracingEnsureStopped
{
  if (self->_btTracingAppID)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _bluetoothTracingEnsureStopped];
    }

    [(ENDaemon *)self _bluetoothTracingStop];
    btTracingAppID = self->_btTracingAppID;
    self->_btTracingAppID = 0;
  }
}

- (void)_exposureManagersEnsureStopped
{
  downloadManager = self->_downloadManager;
  if (downloadManager || self->_exposureDetectionManager || self->_testResultManager || self->_textMessageManager)
  {
    [(ENDownloadManager *)downloadManager invalidate];
    v4 = self->_downloadManager;
    self->_downloadManager = 0;

    [(ENExposureDetectionManager *)self->_exposureDetectionManager invalidate];
    exposureDetectionManager = self->_exposureDetectionManager;
    self->_exposureDetectionManager = 0;

    [(ENTestResultManager *)self->_testResultManager invalidate];
    testResultManager = self->_testResultManager;
    self->_testResultManager = 0;

    [(ENTextMessageManager *)self->_textMessageManager invalidate];
    textMessageManager = self->_textMessageManager;
    self->_textMessageManager = 0;
  }
}

- (void)_configurationManagerEnsureStopped
{
  if (self->_configurationManager)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _configurationManagerEnsureStopped];
    }

    configurationManager = self->_configurationManager;
    self->_configurationManager = 0;
  }
}

- (void)_differentialPrivacyEnsureStopped
{
  if (self->_differentialPrivacyManager)
  {
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _differentialPrivacyEnsureStopped];
    }

    differentialPrivacyManager = self->_differentialPrivacyManager;
    self->_differentialPrivacyManager = 0;
  }
}

- (void)_schedulePeriodicPersistencePurge
{
  v1 = [*a1 identifier];
  LogPrintF_safe();
}

- (void)_updateOverallStatus
{
  v17[1] = *MEMORY[0x277D85DE8];
  overallStatus = self->_overallStatus;
  v4 = [(ENDaemon *)self getOverallStatus];
  if (v4 != overallStatus)
  {
    v5 = v4;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)overallStatus _updateOverallStatus];
    }

    self->_overallStatus = v5;
    if (overallStatus - 1 < 2)
    {
      if (overallStatus == 1 && v5 == 4)
      {
        [(ENDaemon *)self notifyUserWithStatus:4];
      }

      else if (v5 == 1)
      {
        v8 = [(ENDaemon *)self userNotificationCenter];
        v17[0] = @"com.apple.ExposureNotification.UserNotification.off";
        v9 = [MEMORY[0x277CBEA68] arrayWithObjects:v17 count:1];
        [v8 removeDeliveredNotificationsWithIdentifiers:v9];
      }

      *&self->_wasInRestrictedStatus = 0;
      CFPrefs_RemoveValue();
      goto LABEL_21;
    }

    if (overallStatus != 3)
    {
      if (overallStatus != 4)
      {
        goto LABEL_22;
      }

      if (v5 != 3)
      {
        if (v5 == 1)
        {
          v6 = self;
          v7 = 1;
LABEL_17:
          [(ENDaemon *)v6 notifyUserWithStatus:v7];
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      self->_wasInRestrictedStatus = 1;
LABEL_21:
      CFPrefs_RemoveValue();
      goto LABEL_22;
    }

    if (v5 != 1)
    {
      if (v5 == 4)
      {
        v6 = self;
        v7 = 4;
        goto LABEL_17;
      }

LABEL_22:
      [(ENDaemon *)self monthlyTriggerActivateWithIntervalOverride:0, v14, wasInDifferentActiveRegion];
      [(ENDaemon *)self xpcReportStatus];
      goto LABEL_23;
    }

    wasInRestrictedStatus = self->_wasInRestrictedStatus;
    if (!wasInRestrictedStatus && !self->_wasInDifferentActiveRegion)
    {
      goto LABEL_22;
    }

    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        wasInRestrictedStatus = self->_wasInRestrictedStatus;
      }

      v14 = wasInRestrictedStatus;
      wasInDifferentActiveRegion = self->_wasInDifferentActiveRegion;
      LogPrintF_safe();
    }

LABEL_32:
    *&self->_wasInRestrictedStatus = 0;
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    v12 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ENDaemon__updateOverallStatus__block_invoke;
    block[3] = &unk_278FD11C8;
    block[4] = self;
    block[5] = 1;
    dispatch_after(v12, dispatchQueue, block);
    goto LABEL_22;
  }

LABEL_23:
  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)getOverallStatus
{
  if (self->_prefServerForceDisable || self->_prefStoreDemoMode)
  {
    return 4;
  }

  if (!self->_prefEnabled)
  {
    return 2;
  }

  if (self->_prefPaused)
  {
    return 5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isBluetoothPoweredOn];

  if (v4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void __21__ENDaemon__activate__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) isDeviceUnlocked];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_2_cold_1(v2, v1);
  }

  v3 = [*v1 screenUnlockPendingActions];
  v4 = ([v3 count] != 0) & v2;

  if (v4 == 1)
  {
    v5 = [*v1 screenUnlockPendingActions];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__ENDaemon__activate__block_invoke_3;
    v7[3] = &unk_278FD14B8;
    v7[4] = *v1;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];

    v6 = [*v1 screenUnlockPendingActions];
    [v6 removeAllObjects];
  }
}

- (BOOL)isDeviceUnlocked
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = SBSGetScreenLockStatus();
  v8 = @"ExtendedDeviceLockState";
  v9[0] = MEMORY[0x277CBEC30];
  [MEMORY[0x277CBEAC8] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v3 = MKBGetDeviceLockState();
  result = v3 != 6 && (v3 - 3) < 0xFFFFFFFE && v2 == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (ENDaemon)init
{
  if (objc_opt_class() && (v32.receiver = self, v32.super_class = ENDaemon, (self = [(ENDaemon *)&v32 init]) != 0))
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ENDaemon", v3);
    dispatchQueue = self->_dispatchQueue;
    self->_dispatchQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ENDetection", v6);
    dispatchExposureDetectionManagingQueue = self->_dispatchExposureDetectionManagingQueue;
    self->_dispatchExposureDetectionManagingQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("ENDownload", v9);
    dispatchDownloadManagingQueue = self->_dispatchDownloadManagingQueue;
    self->_dispatchDownloadManagingQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("ENTestResult", v12);
    dispatchTestResultManagingQueue = self->_dispatchTestResultManagingQueue;
    self->_dispatchTestResultManagingQueue = v13;

    self->_tccChangedNotifyToken = -1;
    *&self->_prefsChangedNotifyToken = -1;
    *&self->_proxyStatusChangedNotifyToken = -1;
    self->_screenLockNotifyToken = -1;
    v15 = [objc_alloc(MEMORY[0x277CBEB48]) initWithCapacity:5];
    [(ENDaemon *)self setPreviouslyTrackedApps:v15];

    v16 = *MEMORY[0x277CBF038];
    v17 = *MEMORY[0x277CBF018];
    _CFPreferencesSetBackupDisabled();
    v18 = ENDataVaultURL();
    v19 = *MEMORY[0x277CBE870];
    v31 = 0;
    v20 = [v18 setResourceValue:MEMORY[0x277CBEC20] forKey:v19 error:&v31];
    v21 = v31;

    if ((v20 & 1) == 0 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon init];
    }

    v22 = [objc_alloc(MEMORY[0x277CE2030]) initWithBundleIdentifier:@"com.apple.ExposureNotification.UserNotification" queue:self->_dispatchQueue];
    [(ENDaemon *)self setUserNotificationCenter:v22];

    v23 = [(ENDaemon *)self userNotificationCenter];
    [v23 setDelegate:self];

    v24 = [(ENDaemon *)self userNotificationCenter];
    [v24 setWantsNotificationResponsesDelivered];

    [(ENTemporaryExposureKeyManager *)self->_temporaryExposureKeyManager resetClientState];
    v25 = objc_alloc_init(MEMORY[0x277CBEB30]);
    remoteUISessions = self->_remoteUISessions;
    self->_remoteUISessions = v25;

    v27 = objc_alloc_init(ENOnboardingManager);
    onboardingManager = self->_onboardingManager;
    self->_onboardingManager = v27;

    [(ENOnboardingManager *)self->_onboardingManager setDelegate:self];
    self = self;

    v29 = self;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)descriptionWithLevel:(int)a3
{
  v191 = *MEMORY[0x277D85DE8];
  v132 = a3;
  v183 = 0;
  v184 = &v183;
  v185 = 0x3032000000;
  v186 = __Block_byref_object_copy__3;
  v187 = __Block_byref_object_dispose__3;
  v188 = 0;
  obj = 0;
  NSAppendPrintF_safe();
  objc_storeStrong(&v188, 0);
  v3 = (v184 + 5);
  v181 = v184[5];
  mach_continuous_time();
  startTicksFull = self->_startTicksFull;
  UpTicksToSeconds();
  mach_absolute_time();
  startTicks = self->_startTicks;
  v6 = UpTicksToSeconds();
  v7 = [(ENDaemon *)self getOverallStatus];
  if (v7 > 6)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_278FD20E0[v7];
  }

  v117 = v8;
  NSAppendPrintF();
  objc_storeStrong(v3, v181);
  v9 = (v184 + 5);
  v180 = v184[5];
  activeEntity = self->_activeEntity;
  NSAppendPrintF_safe();
  objc_storeStrong(v9, v180);
  v133 = self->_configurationManager;
  v134 = [(ENConfigurationManager *)v133 configurationStore:activeEntity];
  v10 = [(ENActiveEntity *)self->_activeEntity entity];
  v11 = [v10 region];

  if (v11)
  {
    v12 = [v134 configurationForRegion:v11];
    v13 = [v134 serverConfigurationForRegion:v11];
    v14 = [v12 userConsent];
    v15 = (v184 + 5);
    v179 = v184[5];
    v16 = [v13 enEnabled];
    v17 = [v12 enVersion];
    v18 = "disabled";
    if (v16)
    {
      v18 = "enabled";
    }

    v97 = v18;
    v112 = v17;
    NSAppendPrintF_safe();
    objc_storeStrong(v15, v179);
    v19 = (v184 + 5);
    v178 = v184[5];
    v20 = [v14 consent];
    if (v20 <= 4)
    {
      v21 = off_278FD2090[v20];
    }

    v22 = [v14 differentialPrivacyConsent];
    if (v22 > 4)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_278FD2090[v22];
    }

    v111 = v23;
    NSAppendPrintF_safe();
    objc_storeStrong(v19, v178);
    v24 = (v184 + 5);
    v177 = v184[5];
    v96 = v13;
    NSAppendPrintF_safe();
    objc_storeStrong(v24, v177);
  }

  v25 = [(ENActiveEntity *)self->_activeEntity entity];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v26 placeholder:0];
    v28 = (v184 + 5);
    v176 = v184[5];
    v29 = [v27 appState];
    [v29 isInstalled];
    v30 = [v27 appState];
    [v30 isPlaceholder];
    v31 = [(ENDaemon *)self tccAccessForBundleID:v26];
    if (v31 <= 2)
    {
      v32 = off_278FD2078[v31];
    }

    NSAppendPrintF_safe();
    objc_storeStrong(v28, v176);
  }

  v33 = (v184 + 5);
  v175 = v184[5];
  if ([(ENConfigurationManager *)v133 isInGracePeriodTransition])
  {
    v34 = "yes";
  }

  else
  {
    v34 = "no";
  }

  v98 = v34;
  NSAppendPrintF_safe();
  objc_storeStrong(v33, v175);
  if ([(NSMutableDictionary *)self->_appActivities count])
  {
    v35 = (v184 + 5);
    v174 = v184[5];
    appActivities = self->_appActivities;
    NSAppendPrintF();
    objc_storeStrong(v35, v174);
  }

  v36 = (v184 + 5);
  v173 = v184[5];
  self->_automaticRegionSwitchEnabled;
  NSAppendPrintF_safe();
  objc_storeStrong(v36, v173);
  v37 = (v184 + 5);
  v172 = v184[5];
  v38 = "disabled";
  if (!self->_availabilityAlertDisabled)
  {
    v38 = "enabled";
  }

  v100 = v38;
  NSAppendPrintF_safe();
  objc_storeStrong(v37, v172);
  [(ENDaemon *)self _getAvailabilityAlertCountIncrement:0 reset:0, v100];
  v39 = (v184 + 5);
  v171 = v184[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v39, v171);
  v40 = (v184 + 5);
  v170 = v184[5];
  self->_configurationManager;
  NSAppendPrintF_safe();
  objc_storeStrong(v40, v170);
  v41 = (v184 + 5);
  v169 = v184[5];
  self->_downloadManager;
  NSAppendPrintF_safe();
  objc_storeStrong(v41, v169);
  v42 = (v184 + 5);
  v168 = v184[5];
  self->_differentialPrivacyManager;
  NSAppendPrintF_safe();
  objc_storeStrong(v42, v168);
  v43 = (v184 + 5);
  v167 = v184[5];
  if (self->_prefStoreDemoMode)
  {
    v44 = "yes";
  }

  else
  {
    v44 = "no";
  }

  v101 = v44;
  NSAppendPrintF_safe();
  objc_storeStrong(v43, v167);
  if ([(NSMutableOrderedSet *)self->_previouslyTrackedApps count])
  {
    v45 = (v184 + 5);
    v166 = v184[5];
    previouslyTrackedApps = self->_previouslyTrackedApps;
    NSAppendPrintF();
    objc_storeStrong(v45, v166);
  }

  Int64 = CFPrefs_GetInt64();
  v47 = (v184 + 5);
  v165 = v184[5];
  if (Int64)
  {
    v48 = "yes";
  }

  else
  {
    v48 = "no";
  }

  v103 = v48;
  NSAppendPrintF_safe();
  objc_storeStrong(v47, v165);
  v49 = (v184 + 5);
  v164 = v184[5];
  v50 = [(ENActiveEntity *)self->_activeEntity entity];
  v104 = [v50 bundleIdentifier];
  btTracingAppID = self->_btTracingAppID;
  NSAppendPrintF_safe();
  objc_storeStrong(v49, v164);

  v51 = [(ENDaemon *)self _getLegalConsentPageCount:v104];
  v52 = (v184 + 5);
  v163 = v184[5];
  v105 = v51;
  NSAppendPrintF_safe();
  objc_storeStrong(v52, v163);
  [(ENDaemon *)self _getExposureMatchAttemptBool];
  v53 = (v184 + 5);
  v162 = v184[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v53, v162);
  v54 = (v184 + 5);
  v161 = v184[5];
  if (self->_monthlySummaryDisabled)
  {
    v55 = "yes";
  }

  else
  {
    v55 = "no";
  }

  v106 = v55;
  NSAppendPrintF_safe();
  objc_storeStrong(v54, v161);
  v56 = (v184 + 5);
  v160 = v184[5];
  v57 = [(PrivacyProxyServiceStatus *)self->_networkProxyStatus serviceStatus];
  if ((self->_networkProxyTraffic & 0x800) != 0)
  {
    v58 = "yes";
  }

  else
  {
    v58 = "no";
  }

  v107 = v57;
  v114 = v58;
  NSAppendPrintF_safe();
  objc_storeStrong(v56, v160);
  v59 = [(ENActiveEntity *)self->_activeEntity entity:v107];
  v60 = [v59 region];
  v61 = [v134 serverConfigurationForRegion:v60];

  if (v61)
  {
    v62 = (v184 + 5);
    v159 = v184[5];
    [v61 isChaffingEnabled];
    if (self->_prefNetworkProxyEnabled)
    {
      [v61 chaffingSelectionPercentageAlternative];
    }

    else
    {
      [v61 chaffingSelectionPercentage];
    }

    NSAppendPrintF_safe();
    objc_storeStrong(v62, v159);
  }

  v63 = (v184 + 5);
  v158 = v184[5];
  self->_userAlert;
  NSAppendPrintF_safe();
  objc_storeStrong(v63, v158);
  v64 = (v184 + 5);
  v157 = v184[5];
  usageExposureDetectFileGetExposures = self->_usageExposureDetectFileGetExposures;
  usageExposureDetectFileGetExposureWindows = self->_usageExposureDetectFileGetExposureWindows;
  usageExposureDetectFileAddKeys = self->_usageExposureDetectFileAddKeys;
  usageExposureDetectFileFinish = self->_usageExposureDetectFileFinish;
  usageResetAllData = self->_usageResetAllData;
  usageExposureDetectFileActivate = self->_usageExposureDetectFileActivate;
  usageManagerActivate = self->_usageManagerActivate;
  usageGetDiagnosisKeys = self->_usageGetDiagnosisKeys;
  usageUserAlertReset = self->_usageUserAlertReset;
  usageUserAlertDontReset = self->_usageUserAlertDontReset;
  usageUserAlertShare = self->_usageUserAlertShare;
  usageUserAlertDontShare = self->_usageUserAlertDontShare;
  usageUserPaused = self->_usageUserPaused;
  usageUserUnpaused = self->_usageUserUnpaused;
  usageUserEnabled = self->_usageUserEnabled;
  usageUserDisabled = self->_usageUserDisabled;
  NSAppendPrintF_safe();
  objc_storeStrong(v64, v157);
  v65 = [(NSMutableSet *)self->_xpcConnections count:usageUserEnabled];
  v66 = v65 != 0;
  if (v65)
  {
    v67 = (v184 + 5);
    v156 = v184[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v67, v156);
    v68 = (v184 + 5);
    v155 = v184[5];
    v109 = v65;
    NSAppendPrintF_safe();
    objc_storeStrong(v68, v155);
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v69 = self->_xpcConnections;
    v70 = [(NSMutableSet *)v69 countByEnumeratingWithState:&v151 objects:v190 count:16, v109];
    if (v70)
    {
      v71 = *v152;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v152 != v71)
          {
            objc_enumerationMutation(v69);
          }

          v73 = *(*(&v151 + 1) + 8 * i);
          v74 = (v184 + 5);
          v150 = v184[5];
          v110 = CUDescriptionWithLevel();
          NSAppendPrintF_safe();
          objc_storeStrong(v74, v150);
        }

        v70 = [(NSMutableSet *)v69 countByEnumeratingWithState:&v151 objects:v190 count:16, v110];
      }

      while (v70);
    }

    v75 = (v184 + 5);
    v149 = v184[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v75, v149);
  }

  if (v132 <= 0x13)
  {
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v76 = CFPrefs_CopyKeys();
    v77 = [v76 countByEnumeratingWithState:&v145 objects:v189 count:16];
    if (!v77)
    {
LABEL_66:

      goto LABEL_67;
    }

    v78 = 0;
    v79 = *v146;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v146 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v145 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v66)
          {
            v82 = (v184 + 5);
            v144 = v184[5];
            NSAppendPrintF_safe();
            objc_storeStrong(v82, v144);
          }

          v83 = CFPrefs_CopyTypedValue();
          v84 = (v184 + 5);
          v143 = v184[5];
          v116 = CUPrintNSObjectOneLine();
          NSAppendPrintF();
          objc_storeStrong(v84, v143);

          ++v78;
          v66 = 1;
        }
      }

      v77 = [v76 countByEnumeratingWithState:&v145 objects:v189 count:16];
    }

    while (v77);

    if (v78 >= 1)
    {
      v85 = v184;
      v142 = v184[5];
      NSAppendPrintF_safe();
      v86 = v142;
      v76 = v85[5];
      v85[5] = v86;
      goto LABEL_66;
    }
  }

LABEL_67:
  v87 = (v184 + 5);
  v141 = v184[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v87, v141);
  v88 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  v89 = [v134 allRegionServerConfigurations];
  v90 = [v89 count] > 0xA;

  if (v90)
  {
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __33__ENDaemon_descriptionWithLevel___block_invoke;
    v138[3] = &unk_278FD1440;
    v138[4] = v134;
    v139 = v88;
    v140 = &v183;
    [v134 enumerateCachedRegionServerConfigurationsWithHandler:v138];
  }

  else
  {
    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 3221225472;
    v137[2] = __33__ENDaemon_descriptionWithLevel___block_invoke_2;
    v137[3] = &unk_278FD1468;
    v137[4] = v134;
    v137[5] = &v183;
    [v134 enumerateCachedRegionServerConfigurationsWithHandler:v137];
  }

  v91 = (v184 + 5);
  v136 = v184[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v91, v136);
  v92 = v184[5];

  _Block_object_dispose(&v183, 8);
  v93 = *MEMORY[0x277D85DE8];

  return v92;
}

void __33__ENDaemon_descriptionWithLevel___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 region];
  v6 = [v4 configurationForRegion:v5];

  v7 = [v6 userConsent];
  if ([v7 consent] || objc_msgSend(v6, "everStartedOnboarding"))
  {
  }

  else
  {
    v11 = a1[5];
    v12 = [v6 region];
    LODWORD(v11) = [v11 isEqual:v12];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v8 + 40), obj);
  v9 = *(a1[6] + 8);
  v14 = *(v9 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v9 + 40), v14);
  v10 = *(a1[6] + 8);
  v13 = *(v10 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v10 + 40), v13);
LABEL_5:
}

void __33__ENDaemon_descriptionWithLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = a2;
  v6 = [v5 region];
  v7 = [v3 configurationForRegion:v6];
  NSAppendPrintF_safe();
  objc_storeStrong((v4 + 40), obj);

  v8 = *(*(a1 + 40) + 8);
  v11 = *(v8 + 40);
  NSAppendPrintF_safe();

  objc_storeStrong((v8 + 40), v11);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v9 + 40), v10);
}

- (void)activate
{
  if (GestaltGetDeviceClass() == 1)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__ENDaemon_activate__block_invoke;
    block[3] = &unk_278FD0F90;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon activate];
  }
}

uint64_t __20__ENDaemon_activate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = result;
    *(v2 + 16) = 1;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __20__ENDaemon_activate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);

    return [v4 _activate];
  }

  return result;
}

- (id)_readPreferenceActiveEntity
{
  CFDataGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  if ([v2 length])
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (v4)
    {
      [(ENDaemon *)v4 _readPreferenceActiveEntity];
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v3 = v3;
  v5 = v3;
LABEL_6:

  return v5;
}

- (BOOL)_writePreferenceActiveEntity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = 0;
    v5 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v16];
    v6 = v16;
    if (v6)
    {
      [(ENDaemon *)v4 _writePreferenceActiveEntity:v6, &v17];
      v14 = v17;
    }

    else if (v5)
    {
      CFPrefs_SetValue();
      v7 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      v8 = [v4 entity];
      v9 = [v8 region];
      v10 = [v7 serverConfigurationForRegion:v9];

      if (v10)
      {
        v11 = MEMORY[0x277CCAAB8];
        v12 = [v4 entity];
        v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];

        if (v13)
        {
          CFPrefs_SetValue();
        }
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [ENDaemon _writePreferenceActiveEntity:?];
    v14 = v18;
  }

  return v14;
}

- (id)_readPreferenceRegionPendingOnboarding
{
  CFDataGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  if ([v2 length])
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (v4)
    {
      [(ENDaemon *)v4 _readPreferenceRegionPendingOnboarding];
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v3 = v3;
  v5 = v3;
LABEL_6:

  return v5;
}

- (BOOL)_writePreferenceRegionPendingOnboarding:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
    v5 = v8;
    if (v5)
    {
      [(ENDaemon *)v3 _writePreferenceRegionPendingOnboarding:v5, &v9];
      v6 = v9;
    }

    else if (v4)
    {
      CFPrefs_SetValue();
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [ENDaemon _writePreferenceRegionPendingOnboarding:?];
    v6 = v10;
  }

  return v6;
}

- (BOOL)_isNKDActive
{
  v3 = [(ENDaemon *)self activeEntity];
  v4 = [v3 activeStatus] == 3 && self->_prefEnableNKD;

  return v4;
}

- (void)_activate
{
  v3 = [MEMORY[0x277CBEB30] dictionary];
  screenUnlockPendingActions = self->_screenUnlockPendingActions;
  self->_screenUnlockPendingActions = v3;

  self->_startTicks = mach_absolute_time();
  self->_startTicksFull = mach_continuous_time();
  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();
  v6 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v5];
  CFStringGetTypeID();
  v7 = CFPrefs_CopyTypedValue();
  if (v6)
  {
    v8 = [v6 appState];
    v9 = [v8 isInstalled];

    if (v9)
    {
      if (v7)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          v51 = v7;
          v52 = v5;
          LogPrintF_safe();
        }

        v13 = [ENConfigurationManager staticRegionForBundleID:v5, v51, v52];
        if (v13)
        {
          v11 = [MEMORY[0x277CC5CA0] regionWithCode:v13];
        }

        else
        {
          v14 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:v7];
          if (v14)
          {
            v11 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v14];
          }

          else
          {
            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              v51 = v7;
              v52 = v5;
              LogPrintF_safe();
            }

            v11 = 0;
          }
        }

        v15 = [ENActiveEntity alloc];
        v16 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v5 region:v11];
        v10 = [(ENActiveEntity *)v15 initWithEntity:v16 activeStatus:2];

        [(ENDaemon *)self _writePreferenceActiveEntity:v10];
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon _activate];
        }

        goto LABEL_24;
      }
    }
  }

  v10 = [(ENDaemon *)self _readPreferenceActiveEntity];
  v11 = 0;
  v12 = 0;
  if (v7)
  {
LABEL_24:
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    v12 = v11;
  }

  v53 = v12;
  if (v5)
  {
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _activate];
    }

    CFPrefs_RemoveValue();
    v17 = *MEMORY[0x277D6C150];
    v18 = TCCAccessCopyInformation();
    v19 = *MEMORY[0x277D6C0D8];
    v20 = [MEMORY[0x277CCAC28] predicateWithFormat:@"%K == %@", *MEMORY[0x277D6C0D8], *MEMORY[0x277CBED20]];
    v21 = [v18 filteredArrayUsingPredicate:v20];
    if ([v21 count])
    {
      [(ENDaemon *)self _disableAvailabilityAlertIfNeeded];
    }
  }

  v67 = 0;
  objc_storeStrong(&self->_activeEntity, v10);
  self->_prefTCCAllowWithoutApps = CFPrefs_GetInt64() != 0;
  self->_wasInRestrictedStatus = CFPrefs_GetInt64() != 0;
  self->_wasInDifferentActiveRegion = CFPrefs_GetInt64() != 0;
  Int64 = CFPrefs_GetInt64();
  if (v67)
  {
    v23 = CFPrefs_GetInt64() != 0;
  }

  else
  {
    v23 = Int64 == 0;
    CFPrefs_RemoveValue();
  }

  [(ENDaemon *)self setMonthlySummaryDisabled:v23, v51, v52];
  LogSetAppID();
  LogControl();
  if (!self->_xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.ExposureNotification", self->_dispatchQueue, 1uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __21__ENDaemon__activate__block_invoke;
    handler[3] = &unk_278FD10A8;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpcListener = self->_xpcListener;
    self->_xpcListener = mach_service;
    v26 = mach_service;

    xpc_connection_activate(v26);
  }

  if (self->_screenLockNotifyToken == -1)
  {
    v27 = *MEMORY[0x277D67778];
    dispatchQueue = self->_dispatchQueue;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __21__ENDaemon__activate__block_invoke_2;
    v65[3] = &unk_278FD14E0;
    v65[4] = self;
    notify_register_dispatch(v27, &self->_screenLockNotifyToken, dispatchQueue, v65);
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    v29 = self->_dispatchQueue;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __21__ENDaemon__activate__block_invoke_5;
    v64[3] = &unk_278FD14E0;
    v64[4] = self;
    notify_register_dispatch("com.apple.ExposureNotification.prefsChanged", &self->_prefsChangedNotifyToken, v29, v64);
  }

  if (self->_profileChangedNotifyToken == -1)
  {
    v30 = self->_dispatchQueue;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __21__ENDaemon__activate__block_invoke_6;
    v63[3] = &unk_278FD14E0;
    v63[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedNotifyToken, v30, v63);
  }

  if (self->_proxyConfigChangedNotifyToken == -1)
  {
    v31 = [@"com.apple.networkserviceproxy.privacy-proxy-configuration-changed" utf8ValueSafe];
    v32 = self->_dispatchQueue;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __21__ENDaemon__activate__block_invoke_7;
    v62[3] = &unk_278FD14E0;
    v62[4] = self;
    notify_register_dispatch(v31, &self->_proxyConfigChangedNotifyToken, v32, v62);
  }

  if (self->_proxyStatusChangedNotifyToken == -1)
  {
    v33 = [@"com.apple.networkserviceproxy.privacy-proxy-service-status-changed" utf8ValueSafe];
    v34 = self->_dispatchQueue;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __21__ENDaemon__activate__block_invoke_8;
    v61[3] = &unk_278FD14E0;
    v61[4] = self;
    notify_register_dispatch(v33, &self->_proxyStatusChangedNotifyToken, v34, v61);
  }

  if (!self->_systemMonitor)
  {
    v35 = objc_alloc_init(MEMORY[0x277D02930]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v35;
    v37 = v35;

    [(CUSystemMonitor *)v37 setDispatchQueue:self->_dispatchQueue];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __21__ENDaemon__activate__block_invoke_9;
    v60[3] = &unk_278FD0F90;
    v60[4] = self;
    [(CUSystemMonitor *)v37 setFirstUnlockHandler:v60];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __21__ENDaemon__activate__block_invoke_10;
    v59[3] = &unk_278FD0F90;
    v59[4] = self;
    [(CUSystemMonitor *)v37 setSystemLockStateChangedHandler:v59];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __21__ENDaemon__activate__block_invoke_11;
    v58[3] = &unk_278FD0F90;
    v58[4] = self;
    [(CUSystemMonitor *)v37 activateWithCompletion:v58];
  }

  if (self->_tccChangedNotifyToken == -1)
  {
    v38 = self->_dispatchQueue;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __21__ENDaemon__activate__block_invoke_12;
    v57[3] = &unk_278FD14E0;
    v57[4] = self;
    notify_register_dispatch("com.apple.tcc.access.changed", &self->_tccChangedNotifyToken, v38, v57);
  }

  if (!self->_stateHandler)
  {
    v39 = self->_dispatchQueue;
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __21__ENDaemon__activate__block_invoke_13;
    location[4] = &unk_278FD1508;
    location[5] = self;
    self->_stateHandler = os_state_add_handler();
  }

  if (!self->_temporaryExposureKeyManager)
  {
    v40 = [[ENTemporaryExposureKeyManager alloc] initWithQueue:self->_dispatchQueue];
    temporaryExposureKeyManager = self->_temporaryExposureKeyManager;
    self->_temporaryExposureKeyManager = v40;

    [(ENTemporaryExposureKeyManager *)self->_temporaryExposureKeyManager setDelegate:self];
  }

  objc_initWeak(location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __21__ENDaemon__activate__block_invoke_14;
  v54[3] = &unk_278FD1530;
  v54[4] = self;
  objc_copyWeak(&v55, location);
  [WeakRetained registerStateMetricPullCallback:v54];

  [(ENDaemon *)self _regionMonitorEnsureStarted];
  [(ENDaemon *)self _configurationManagerEnsureStarted];
  v43 = [(ENDaemon *)self _readPreferenceActiveEntity];
  activeEntity = self->_activeEntity;
  self->_activeEntity = v43;

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v45 = objc_opt_new();
  applicationObserver = self->_applicationObserver;
  self->_applicationObserver = v45;

  [(ApplicationObserver *)self->_applicationObserver setDelegate:self];
  v47 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  if (v47)
  {
    v48 = [(ENDaemon *)self configurationManager];
    v49 = [v48 configurationStore];
    v50 = [v49 serverConfigurationForRegion:v47];

    if (!v50)
    {
      [(ENDaemon *)self onboardingTriggerDeactivate];
    }
  }

  [(ENDaemon *)self onboardingTriggerResumeIfNeeded];
  [(ENDaemon *)self _tccChanged];
  [(ENDaemon *)self pauseUpdate];
  [(ENDaemon *)self prefsChanged];
  [(ENDaemon *)self _networkProxyStatusCheck];
  objc_destroyWeak(&v55);
  objc_destroyWeak(location);
}

void __21__ENDaemon__activate__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_time(0, 2500000000);
  v8 = *(*(a1 + 32) + 224);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __21__ENDaemon__activate__block_invoke_4;
  v11[3] = &unk_278FD1490;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_after(v7, v8, v11);
}

uint64_t __21__ENDaemon__activate__block_invoke_4(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_4_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __21__ENDaemon__activate__block_invoke_5(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_5_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 prefsChanged];
}

uint64_t __21__ENDaemon__activate__block_invoke_6(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_6_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 prefsChanged];
}

uint64_t __21__ENDaemon__activate__block_invoke_7(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_7_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _networkProxyStatusCheck];
}

uint64_t __21__ENDaemon__activate__block_invoke_8(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_8_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _networkProxyStatusCheck];
}

uint64_t __21__ENDaemon__activate__block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) _tccChanged];
  v2 = *(a1 + 32);

  return [v2 _update];
}

uint64_t __21__ENDaemon__activate__block_invoke_12(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __21__ENDaemon__activate__block_invoke_12_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _tccChanged];
}

void __21__ENDaemon__activate__block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __21__ENDaemon__activate__block_invoke_15;
  v3[3] = &unk_278FD1530;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void __21__ENDaemon__activate__block_invoke_15(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) entity];
  v3 = [v2 region];
  v4 = v3;
  if (v3)
  {
    v24 = v3;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 368) getCurrentRegionVisitWithError:0];
    v24 = [v5 region];
  }

  if ([v24 validSubdivisionCode])
  {
    v6 = [v24 subdivisionCode];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 componentsSeparatedByString:@"-"];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 isEqualToString:@"US"];

    if (v9)
    {
      v10 = [v7 objectAtIndexedSubscript:1];
      [v10 utf8ValueSafe];
    }
  }

  v11 = [*(a1 + 32) _getAvailabilityAlertCountIncrement:0 reset:1];
  v12 = [*(a1 + 32) configurationManager];
  v13 = [v12 configurationStore];
  v14 = [v13 configurationForRegion:v24];

  v15 = [v14 diagnosisKeysPreAuthorization];
  v16 = [v15 userAuthorization];

  if (v16 == 1)
  {
    v17 = v11 | 0x80;
  }

  else
  {
    v17 = v11;
  }

  v18 = [*(a1 + 32) _getLegalConsentPageCount];
  CFPrefs_RemoveValue();
  if ([*(a1 + 32) _getExposureMatchAttemptBool])
  {
    v18 |= 0x40u;
    v19 = *MEMORY[0x277CBED18];
    CFPrefs_SetValue();
  }

  if (CFPrefs_GetInt64())
  {
    v18 |= 0x80u;
    CFPrefs_RemoveValue();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  v21 = objc_loadWeakRetained((a1 + 40));
  v22 = [v21 stateMetricVersion];
  if ([v24 validSubdivisionCode])
  {
    v23 = [v24 subdivisionCode];
    [WeakRetained sendStateMetricWithVersion:v22 subdivisionCode:v23 availabilityAlertCount:v17 legalConsentPageCount:v18];
  }

  else
  {
    [WeakRetained sendStateMetricWithVersion:v22 subdivisionCode:@"Unknown" availabilityAlertCount:v17 legalConsentPageCount:v18];
  }
}

- (unsigned)_getAvailabilityAlertCountIncrement:(BOOL)a3 reset:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  Int64 = CFPrefs_GetInt64();
  if (v4)
  {
    CFPrefs_RemoveValue();
  }

  else if (v5)
  {
    ++Int64;
    CFPrefs_SetInt64();
  }

  return Int64;
}

- (id)_getBundleIDFromBundle:(__CFBundle *)a3
{
  v3 = CFBundleCopyBundleURL(a3);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D0] bundleWithURL:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 bundleIdentifier];
    }

    else
    {
      [ENDaemon _getBundleIDFromBundle:?];
      v6 = v8;
    }
  }

  else
  {
    [ENDaemon _getBundleIDFromBundle:?];
    v6 = v8;
  }

  return v6;
}

- (id)_getInfoDictFromBundle:(__CFBundle *)a3
{
  v3 = CFBundleCopyBundleURL(a3);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D0] bundleWithURL:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 infoDictionary];
    }

    else
    {
      [ENDaemon _getInfoDictFromBundle:?];
      v6 = v8;
    }
  }

  else
  {
    [ENDaemon _getInfoDictFromBundle:?];
    v6 = v8;
  }

  return v6;
}

- (id)_getInfoDictFromAppProxy:(id)a3
{
  v3 = [a3 bundleURL];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D0] bundleWithURL:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 infoDictionary];
    }

    else
    {
      [ENDaemon _getInfoDictFromAppProxy:?];
      v6 = v8;
    }
  }

  else
  {
    [ENDaemon _getInfoDictFromAppProxy:?];
    v6 = v8;
  }

  return v6;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__ENDaemon_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __22__ENDaemon_invalidate__block_invoke(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __22__ENDaemon_invalidate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _invalidate];
}

- (void)_invalidate
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = self->_xpcConnections;
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * i) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)v5 removeAllObjects];
  [(NSBackgroundActivityScheduler *)self->_persistencePurgeScheduler invalidate];
  persistencePurgeScheduler = self->_persistencePurgeScheduler;
  self->_persistencePurgeScheduler = 0;

  [(ENDaemon *)self _bluetoothMonitorEnsureStopped];
  [(ENDaemon *)self _bluetoothTracingEnsureStopped];
  [(ENDaemon *)self _configurationManagerEnsureStopped];
  [(ENDaemon *)self _databasesEnsureClosed];
  [(ENDaemon *)self _exposureManagersEnsureStopped];
  [(ENDaemon *)self _regionMonitorEnsureStopped];
  [(ENDaemon *)self setUserNotificationCenter:0];
  [(ENDaemon *)self setMonthlySummaryDisabled:1];
  pauseTimer = self->_pauseTimer;
  if (pauseTimer)
  {
    v12 = pauseTimer;
    dispatch_source_cancel(v12);
    v13 = self->_pauseTimer;
    self->_pauseTimer = 0;
  }

  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  profileChangedNotifyToken = self->_profileChangedNotifyToken;
  if (profileChangedNotifyToken != -1)
  {
    notify_cancel(profileChangedNotifyToken);
    self->_profileChangedNotifyToken = -1;
  }

  proxyStatusChangedNotifyToken = self->_proxyStatusChangedNotifyToken;
  if (proxyStatusChangedNotifyToken != -1)
  {
    notify_cancel(proxyStatusChangedNotifyToken);
    self->_proxyStatusChangedNotifyToken = -1;
  }

  proxyConfigChangedNotifyToken = self->_proxyConfigChangedNotifyToken;
  if (proxyConfigChangedNotifyToken != -1)
  {
    notify_cancel(proxyConfigChangedNotifyToken);
    self->_proxyConfigChangedNotifyToken = -1;
  }

  screenLockNotifyToken = self->_screenLockNotifyToken;
  if (screenLockNotifyToken != -1)
  {
    notify_cancel(screenLockNotifyToken);
    self->_screenLockNotifyToken = -1;
  }

  tccChangedNotifyToken = self->_tccChangedNotifyToken;
  if (tccChangedNotifyToken != -1)
  {
    notify_cancel(tccChangedNotifyToken);
    self->_tccChangedNotifyToken = -1;
  }

  if (self->_stateHandler)
  {
    os_state_remove_handler();
    self->_stateHandler = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    v21 = xpcListener;
    xpc_connection_cancel(v21);
    v22 = self->_xpcListener;
    self->_xpcListener = 0;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _invalidate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_getDelegateAndReturnError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    [ENDaemon _getDelegateAndReturnError:a3];
  }

  return v5;
}

- (void)notifyUserWithStatus:(int64_t)a3
{
  if (a3 == 4)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon notifyUserWithStatus:?];
    }

    [(ENDaemon *)self postENOffNotification];
  }
}

- (void)pauseUpdate
{
  v0 = CUPrintDateCF();
  v1 = CUPrintDurationDouble();
  LogPrintF_safe();
}

uint64_t __23__ENDaemon_pauseUpdate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(*(result + 40) + 32);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(v4 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __23__ENDaemon_pauseUpdate__block_invoke_cold_1(v4);
    }

    v8 = *MEMORY[0x277CBED18];
    CFPrefs_SetValue();
    CFPrefs_RemoveValue();
    v9 = *(v4 + 40);

    return [v9 prefsChanged];
  }

  return result;
}

- (void)prefsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v147 = 0;
  if (!CFPrefs_GetInt64())
  {
    [(ENDaemon *)self _resetDeveloperSettings];
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefStoreDemoMode != v4)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefStoreDemoMode = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefRegionMonitorTestMode != v5)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefRegionMonitorTestMode = v5;
  }

  v6 = [(ENDaemon *)self _readPreferenceActiveEntity];
  activeEntity = self->_activeEntity;
  location = &self->_activeEntity;
  v8 = v6;
  v9 = activeEntity;
  v10 = v9;
  if (v8 == v9)
  {

    v12 = v8;
LABEL_24:

    goto LABEL_25;
  }

  if ((v8 != 0) == (v9 == 0))
  {

LABEL_19:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v123 = *location;
      v127 = v8;
      LogPrintF_safe();
    }

    objc_storeStrong(location, v6);
    [(ENConfigurationManager *)self->_configurationManager setActiveEntity:self->_activeEntity];
    [(ENTemporaryExposureKeyManager *)self->_temporaryExposureKeyManager resetClientState];
    notify_post("com.apple.ExposureNotification.trackedAppChanged");
    CFPrefs_RemoveValue();
    v12 = [(ENDaemon *)self screenUnlockPendingActions];
    [v12 removeAllObjects];
    goto LABEL_24;
  }

  v11 = [(ENActiveEntity *)v8 isEqual:v9];

  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_25:
  v133 = v8;
  v134 = WeakRetained;
  v13 = [(ENConfigurationManager *)self->_configurationManager configurationStore:v123];
  v14 = [(ENActiveEntity *)self->_activeEntity entity];
  v15 = [v14 region];
  v143 = v13;
  v136 = [v13 serverConfigurationForRegion:v15];

  CFStringGetTypeID();
  v16 = CFPrefs_CopyTypedValue();
  prefRegionIdentifierOverride = self->_prefRegionIdentifierOverride;
  v18 = v16;
  v19 = prefRegionIdentifierOverride;
  v20 = v19;
  if (v18 == v19)
  {

    v22 = v18;
LABEL_36:

    goto LABEL_37;
  }

  if ((v18 != 0) == (v19 == 0))
  {

LABEL_31:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v124 = self->_prefRegionIdentifierOverride;
      v128 = v18;
      LogPrintF_safe();
    }

    v22 = self->_prefRegionIdentifierOverride;
    objc_storeStrong(&self->_prefRegionIdentifierOverride, v16);
    [(ENDaemon *)self _fetchPrefRegionConfig:self->_prefRegionIdentifierOverride oldCustomCountryCode:v22];
    goto LABEL_36;
  }

  v21 = [(NSString *)v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_37:
  v132 = v18;
  v23 = [(ENConfigurationManager *)self->_configurationManager configurationStore:v124];
  v24 = [(ENActiveEntity *)self->_activeEntity entity];
  v25 = [v24 region];
  v26 = [v23 agencyConfigurationForRegion:v25];

  v142 = [v26 agencyColor];
  v27 = [v26 agencyHeaderStyle];
  v141 = [v26 agencyHeaderTextColor];
  v140 = [v26 agencyDisplayName];
  v28 = [v26 localizedConfiguration];
  v139 = [v28 regionName];

  v29 = [v26 localizedConfiguration];
  v138 = [v29 agencyTurndownMessage];

  v131 = v26;
  v137 = [v26 agencyImageURL];
  v30 = [(ENActiveEntity *)self->_activeEntity entity];
  if (!v30)
  {
    goto LABEL_48;
  }

  v31 = objc_alloc(MEMORY[0x277CC5C18]);
  v32 = [v30 bundleIdentifier];
  v33 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:v27];
  v34 = [v30 region];
  v35 = [v31 initWithBundleID:v32 agencyColor:v142 agencyHeaderStyle:v33 agencyHeaderTextColor:v141 localizedAgencyName:v140 localizedAgencyImageURL:v137 localizedAgencyTurndownMessage:v138 localizedRegionName:v139 region:v34];

  if (v136)
  {
    CFDataGetTypeID();
    v36 = CFPrefs_CopyTypedValue();
    if (!v36)
    {
LABEL_46:
      v42 = objc_alloc(MEMORY[0x277CC5C18]);
      v43 = [v30 bundleIdentifier];
      v44 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:v27];
      v45 = [v30 region];
      v46 = [v42 initWithBundleID:v43 agencyColor:v142 agencyHeaderStyle:v44 agencyHeaderTextColor:v141 localizedAgencyName:v140 localizedAgencyImageURL:v137 localizedAgencyTurndownMessage:v138 localizedRegionName:v139 region:v45];
      [(ENActiveEntity *)self->_activeEntity setEntity:v46];

      [(ENDaemon *)self _writePreferenceActiveEntity:self->_activeEntity];
      goto LABEL_47;
    }

    v37 = v36;
    v38 = v35;
    v39 = v30;
    v40 = v39;
    if (v38 != v39)
    {
      if (v38)
      {
        v41 = [v38 isEqual:v39];

        if (v41)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      goto LABEL_46;
    }
  }

LABEL_47:

LABEL_48:
  v47 = [(ENRegionMonitor *)self->_regionMonitor getCurrentRegionVisitWithError:0];
  v48 = [v47 region];

  v49 = CFPrefs_GetInt64() != 0;
  if (v147)
  {
    v50 = [v143 serverConfigurationForRegion:v48];
    v51 = v50;
    v52 = v134;
    p_activeEntity = &self->_activeEntity;
    if (!v50 || ([v50 enEnabled] & 1) != 0 || -[ENConfigurationManager isInGracePeriodTransition](self->_configurationManager, "isInGracePeriodTransition"))
    {
      v49 = 0;
    }

    else
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon prefsChanged];
      }

      v49 = 1;
    }
  }

  else
  {
    v52 = v134;
    p_activeEntity = &self->_activeEntity;
  }

  if (self->_prefServerForceDisable != v49)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefServerForceDisable = v49;
  }

  v135 = v48;
  Int64 = CFPrefs_GetInt64();
  v55 = Int64 != 0;
  if (self->_prefAggressiveScanning != v55)
  {
    v56 = Int64;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefAggressiveScanning = v55;
    [v52 setAggressiveScanningEnabled:v56 != 0];
  }

  v57 = CFPrefs_GetInt64() != 0;
  if (self->_automaticRegionSwitchEnabled != v57)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_automaticRegionSwitchEnabled = v57;
  }

  v58 = CFPrefs_GetInt64() != 0;
  if (self->_availabilityAlertDisabled != v58)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_availabilityAlertDisabled = v58;
  }

  v59 = [(ENActiveEntity *)*p_activeEntity entity];
  v60 = [v59 region];

  if (v60)
  {
    v61 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v62 = [v61 configurationForRegion:v60];

    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = __24__ENDaemon_prefsChanged__block_invoke;
    v145[3] = &unk_278FD1120;
    v145[4] = v143;
    v63 = v62;
    v146 = v63;
    v64 = v145;
    if (prefsChanged_onceToken != -1)
    {
      dispatch_once(&prefsChanged_onceToken, v64);
    }

    p_activeEntity = &self->_activeEntity;
    if (v63)
    {
      v60 = [v63 travelerModeEnabled];
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {

    v63 = 0;
  }

  travelStatus = self->_travelStatus;
  if (v60 != travelStatus)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1)
      {
LABEL_85:
        if (travelStatus > 2)
        {
          v66 = "?";
        }

        else
        {
          v66 = off_278FD2238[travelStatus];
        }

        if (v60 > 2)
        {
          v67 = "?";
        }

        else
        {
          v67 = off_278FD2238[v60];
        }

        v125 = *&v66;
        v129 = *&v67;
        LogPrintF_safe();
        goto LABEL_98;
      }

      if (_LogCategory_Initialize())
      {
        travelStatus = self->_travelStatus;
        goto LABEL_85;
      }
    }

LABEL_98:
    self->_travelStatus = v60;
  }

  v68 = CFPrefs_GetInt64() != 0;
  if (v147)
  {
    v68 = !self->_disableExposureNotification;
  }

  v69 = v68;
  if (self->_prefConfigurationManagerEnabled != v68)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefConfigurationManagerEnabled = v69;
  }

  CFPrefs_GetDouble();
  if (v147)
  {
    v71 = 0.0;
  }

  else
  {
    v71 = v70;
  }

  prefDatabasePurgeInterval = self->_prefDatabasePurgeInterval;
  if (v71 != prefDatabasePurgeInterval)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_114;
        }

        prefDatabasePurgeInterval = self->_prefDatabasePurgeInterval;
      }

      v125 = prefDatabasePurgeInterval;
      v129 = v71;
      LogPrintF_safe();
    }

LABEL_114:
    self->_prefDatabasePurgeInterval = v71;
  }

  v73 = CFPrefs_GetInt64() != 0;
  if (self->_prefDeveloperServerConfiguration != v73)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefDeveloperServerConfiguration = v73;
    v74 = [(ENConfigurationManager *)self->_configurationManager configurationStore:*&v125];
    [v74 prefsChanged];
  }

  v75 = CFPrefs_GetInt64();
  if (v147 || (v76 = v75, v75 >= 5))
  {
    v77 = [(ENActiveEntity *)self->_activeEntity entity:*&v125];
    v78 = [v77 region];

    v79 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v80 = [v79 configurationForRegion:v78];
    v81 = [v80 userConsent];
    v76 = [v81 differentialPrivacyConsent];

    p_activeEntity = &self->_activeEntity;
  }

  prefDifferentialPrivacyConsent = self->_prefDifferentialPrivacyConsent;
  if (v76 != prefDifferentialPrivacyConsent)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1)
      {
LABEL_126:
        if (prefDifferentialPrivacyConsent > 4)
        {
          v83 = "?";
        }

        else
        {
          v83 = off_278FD2090[prefDifferentialPrivacyConsent];
        }

        if (v76 > 4)
        {
          v84 = "?";
        }

        else
        {
          v84 = off_278FD2090[v76];
        }

        v125 = *&v83;
        v129 = *&v84;
        LogPrintF_safe();
        goto LABEL_135;
      }

      if (_LogCategory_Initialize())
      {
        prefDifferentialPrivacyConsent = self->_prefDifferentialPrivacyConsent;
        goto LABEL_126;
      }
    }

LABEL_135:
    self->_prefDifferentialPrivacyConsent = v76;
  }

  v85 = CFPrefs_GetInt64();
  if (v147)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85 == 0;
  }

  v87 = !v86;
  if (self->_prefEnableNKD != v87)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefEnableNKD = v87;
  }

  v88 = !self->_prefServerForceDisable && !self->_prefStoreDemoMode && CFPrefs_GetInt64() != 0;
  v89 = [(ENActiveEntity *)*p_activeEntity entity:*&v125];
  v90 = [v89 bundleIdentifier];
  if (!v90)
  {
    v100 = 0;
    goto LABEL_169;
  }

  v91 = v90;
  v92 = [(ENActiveEntity *)*p_activeEntity activeStatus];

  if (v92 == 2)
  {
    v93 = [(ENActiveEntity *)*p_activeEntity entity];
    v89 = [v93 bundleIdentifier];

    v94 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v89 placeholder:0];
    v95 = [v94 appState];
    if ([v95 isInstalled])
    {
      v96 = [v94 appState];
      v97 = [v96 isPlaceholder];

      if ((v97 & 1) == 0 && [(ENDaemon *)self tccAccessForBundleID:v89]== 1)
      {
        v98 = [v136 appBundleID];
        v99 = [v98 length];

        if (v99)
        {
          v100 = 0;
          goto LABEL_167;
        }
      }
    }

    else
    {
    }

    if (_MergedGlobals <= 30)
    {
      p_activeEntity = &self->_activeEntity;
      if (_MergedGlobals != -1 || _LogCategory_Initialize())
      {
        [ENDaemon prefsChanged];
      }

      v100 = 1;
      goto LABEL_168;
    }

    v100 = 1;
LABEL_167:
    p_activeEntity = &self->_activeEntity;
LABEL_168:

LABEL_169:
    if (v88)
    {
      goto LABEL_170;
    }

LABEL_160:
    v101 = 0;
    goto LABEL_174;
  }

  v100 = 0;
  if (!v88)
  {
    goto LABEL_160;
  }

LABEL_170:
  v101 = *p_activeEntity && (([(ENActiveEntity *)*p_activeEntity activeStatus]> 1) & ~v100) != 0 || self->_prefTCCAllowWithoutApps;
LABEL_174:
  v102 = v101;
  if (self->_prefEnabled == v101)
  {
    if (!self->_prefEnabled)
    {
      goto LABEL_182;
    }

LABEL_181:
    CFPrefs_RemoveValue();
    goto LABEL_182;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon prefsChanged];
  }

  self->_prefEnabled = v102;
  if (v102)
  {
    goto LABEL_181;
  }

LABEL_182:
  v103 = CFPrefs_GetInt64() != 0;
  prefLoggingRPI = self->_prefLoggingRPI;
  if (prefLoggingRPI != v103)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefLoggingRPI = v103;
  }

  v105 = CFPrefs_GetInt64() != 0;
  if (self->_prefLoggingSensitive != v105)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefLoggingSensitive = v105;
    v106 = v136;
    goto LABEL_195;
  }

  v86 = prefLoggingRPI == v103;
  v106 = v136;
  if (!v86)
  {
LABEL_195:
    v107 = +[ENLoggingPrefs sharedENLoggingPrefs];
    [v107 loadLoggingPrefs];

    [v52 setLoggingParams:self->_prefLoggingRPI loggingSensitive:self->_prefLoggingSensitive];
  }

  v108 = CFPrefs_GetInt64() != 0;
  if (self->_prefPaused != v108)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefPaused = v108;
  }

  v109 = CFPrefs_GetInt64() != 0;
  if (v147)
  {
    if (([v106 supportsFeatures:32] & 1) == 0 && (networkProxyStatus = self->_networkProxyStatus) != 0 && -[PrivacyProxyServiceStatus serviceStatus](networkProxyStatus, "serviceStatus") == 1)
    {
      v109 = (BYTE1(self->_networkProxyTraffic) >> 3) & 1;
    }

    else
    {
      v109 = 0;
    }
  }

  if (self->_prefNetworkProxyEnabled != v109)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefNetworkProxyEnabled = v109;
  }

  v111 = CFPrefs_GetInt64();
  if (v147 || (v112 = v111, v111 >= 0x3E9))
  {
    v113 = [v106 dailyDetectExposureLimit];
    if (v113 - 1001 >= 0xFFFFFC18)
    {
      v112 = v113;
    }

    else
    {
      v112 = 15;
    }
  }

  prefRateLimitMaxAPICount = self->_prefRateLimitMaxAPICount;
  if (v112 != prefRateLimitMaxAPICount)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_222;
        }

        prefRateLimitMaxAPICount = self->_prefRateLimitMaxAPICount;
      }

      v126 = prefRateLimitMaxAPICount;
      v130 = v112;
      LogPrintF_safe();
    }

LABEL_222:
    self->_prefRateLimitMaxAPICount = v112;
  }

  v115 = CFPrefs_GetInt64();
  if (v147 || (v116 = v115, v115 >= 0x3E9))
  {
    v117 = [v106 detectExposureNKDLimit];
    if (v117 - 1001 >= 0xFFFFFC18)
    {
      v116 = v117;
    }

    else
    {
      v116 = 6;
    }
  }

  prefRateLimitMaxAPICountV2 = self->_prefRateLimitMaxAPICountV2;
  if (v116 != prefRateLimitMaxAPICountV2)
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_233;
        }

        prefRateLimitMaxAPICountV2 = self->_prefRateLimitMaxAPICountV2;
      }

      v126 = prefRateLimitMaxAPICountV2;
      v130 = v116;
      LogPrintF_safe();
    }

LABEL_233:
    self->_prefRateLimitMaxAPICountV2 = v116;
  }

  v119 = CFPrefs_GetInt64() != 0;
  if (self->_prefSkipExposureWindowShuffling != v119)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefSkipExposureWindowShuffling = v119;
  }

  v120 = CFPrefs_GetInt64() != 0;
  if (self->_prefSkipFileSigning != v120)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefSkipFileSigning = v120;
  }

  v121 = CFPrefs_GetInt64() != 0;
  if (self->_prefTCCAllowWithoutApps != v121)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    self->_prefTCCAllowWithoutApps = v121;
  }

  v122 = CFPrefs_GetInt64();
  if ((v122 != 0) != [(ENDaemon *)self monthlySummaryDisabled:v126])
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon prefsChanged];
    }

    [(ENDaemon *)self setMonthlySummaryDisabled:v122 != 0];
  }

  [(ENConfigurationManager *)self->_configurationManager prefsChanged];
  [(ENDaemon *)self _scheduleUpdate];
}

- (void)_resetDataWithFlags:(unsigned int)a3
{
  v5 = [(ENDaemon *)self delegate];
  if ((~a3 & 0xFFF) != 0)
  {
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }
  }

  else
  {
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    [(ENDaemon *)self setUsageResetAllData:[(ENDaemon *)self usageResetAllData]+ 1];
  }

  v24 = 0;
  v6 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v24];
  v7 = v24;
  if ((a3 & 0x40) != 0)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    [v5 resetTEKHistory];
    v9 = [(ENDaemon *)self temporaryExposureKeyManager];
    [v9 resetClientState];

    if ((a3 & 1) == 0)
    {
LABEL_11:
      if ((a3 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  [v5 purgeAdvertisementDatabase];
  if ((a3 & 4) == 0)
  {
LABEL_12:
    v8 = v7;
    if ((a3 & 8) != 0)
    {
      goto LABEL_40;
    }

LABEL_30:
    if ((a3 & 0x10) != 0)
    {
      goto LABEL_44;
    }

LABEL_31:
    if ((a3 & 0x20) != 0)
    {
      goto LABEL_48;
    }

LABEL_32:
    v11 = v8;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_22:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  v23 = v7;
  v10 = [v6 deleteExposureDetectionHistoryWithError:&v23];
  v8 = v23;

  if ((v10 & 1) != 0 || dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    [ENDaemon _resetDataWithFlags:];
    if ((a3 & 8) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_40:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  v12 = [(ENDaemon *)self downloadManager];
  [v12 purgeAllDownloads];

  if ((a3 & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_44:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  [v6 purgeAllAndCloseWithReason:@"ResetData"];
  if ((a3 & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_48:
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  v13 = [(ENDaemon *)self configurationManager];
  [v13 resetConfigurationCache];

  v14 = [(ENDaemon *)self regionMonitor];
  v22 = v8;
  v15 = [v14 purgeAllRegionHistoryWithError:&v22];
  v11 = v22;

  if ((v15 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _resetDataWithFlags:];
  }

  v16 = [(ENDaemon *)self regionMonitor];
  [v16 resetRegionMonitor];

  if ((a3 & 0x80) != 0)
  {
LABEL_56:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    v17 = [(ENDaemon *)self textMessageManager];
    [v17 purgeAllHashes];
  }

LABEL_60:
  if ((a3 & 2) != 0)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _resetDataWithFlags:];
    }

    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    CFPrefs_RemoveValue();
    v18 = *MEMORY[0x277CBED20];
    CFPrefs_SetValue();
    v19 = [(ENDaemon *)self userNotificationCenter];
    [v19 removeAllDeliveredNotifications];

    [(ENDaemon *)self onboardingTriggerDeactivate];
    v20 = *MEMORY[0x277D6C150];
    TCCAccessReset();
    v21 = *MEMORY[0x277D6C160];
    TCCAccessReset();
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_62;
    }
  }

  else if ((a3 & 0x100) != 0)
  {
LABEL_62:
    CFPrefs_RemoveValue();
  }

  [(ENDaemon *)self setOnboardingTrigger:0];
  [(ENDaemon *)self setOnboardingRegionTrigger:0];
  [(ENDaemon *)self setOnboardingFirstTime:0];
  [(ENDaemon *)self setOnboardingLegalConsentLastViewCount:0];
  [(ENDaemon *)self prefsChanged];
}

- (void)_fetchPrefRegionConfig:(id)a3 oldCustomCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  [v8 prefsChanged];

  v9 = v6;
  v10 = v9;
  if (v9 && [v9 length])
  {
    v11 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v10];
    configurationManager = self->_configurationManager;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke;
    v21[3] = &unk_278FD11F0;
    v13 = v22;
    v22[0] = v10;
    v22[1] = self;
    [(ENConfigurationManager *)configurationManager fetchServerConfigurationsForRegion:v11 userInitiated:0 withCompletion:v21];
LABEL_10:

    goto LABEL_11;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _fetchPrefRegionConfig:oldCustomCountryCode:];
  }

  v14 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  [v14 clearTemporaryServerConfigurations];

  v15 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  [v15 clearTemporaryCountrySubdivisionList];

  v16 = [(ENActiveEntity *)self->_activeEntity entity];
  v17 = [v16 region];
  v11 = [v17 countryCode];

  if (v11 && [v7 isEqualToString:v11])
  {
    dispatchQueue = self->_dispatchQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_3;
    v19[3] = &unk_278FD1120;
    v13 = v20;
    v20[0] = v7;
    v20[1] = self;
    dispatch_async(dispatchQueue, v19);
    goto LABEL_10;
  }

LABEL_11:
}

void __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_1(a1);
    }

LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v11 = *(a1 + 32);
    v12 = v5;
    LogPrintF_safe();
  }

  v7 = [*(*(a1 + 40) + 264) configurationStore];
  v14 = 0;
  [v7 saveTemporaryServerConfigurations:v5 error:&v14];
  v8 = v14;

  if (!v8)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_3(a1);
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 224);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_2;
    block[3] = &unk_278FD0F90;
    block[4] = v9;
    dispatch_async(v10, block);
    goto LABEL_19;
  }

  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_2(a1);
  }

LABEL_20:
}

uint64_t __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_3(uint64_t a1)
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_3_cold_1(a1);
  }

  v2 = *(a1 + 40);

  return [v2 _turnOffEN];
}

- (void)_tccChanged
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2();
  }
}

uint64_t __23__ENDaemon__tccChanged__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) startServerConfigurationFetchForRegion:?];
  }

  return result;
}

- (void)_turnOffEN
{
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  v3 = *MEMORY[0x277D6C160];
  TCCAccessReset();
  self->_monthlySummaryDisabled = 0;
  [(ENDaemon *)self monthlyTriggerDeactivate];
  [(ENDaemon *)self onboardingTriggerDeactivate];
  if (!self->_prefTCCAllowWithoutApps)
  {
    v4 = *MEMORY[0x277CBED18];
    CFPrefs_SetValue();
  }

  v5 = [MEMORY[0x277CBEAA0] date];
  [v5 timeIntervalSince1970];
  CFPrefs_SetDouble();

  [(ENDaemon *)self prefsChanged];
}

- (void)setMonthlySummaryDisabled:(BOOL)a3
{
  self->_monthlySummaryDisabled = a3;
  if (a3)
  {

    [(ENDaemon *)self monthlyTriggerDeactivate];
  }

  else
  {
    CFPrefs_RemoveValue();

    [(ENDaemon *)self monthlyTriggerActivateWithIntervalOverride:0];
  }
}

- (void)monthlyTriggerActivateWithIntervalOverride:(unsigned int)a3
{
  if ([(ENDaemon *)self _shouldDisableMonthlySummary])
  {
LABEL_2:
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [(ENDaemon *)a2 monthlyTriggerActivateWithIntervalOverride:?];
    }

    return;
  }

  if (a3)
  {
    v29 = 0;
    v6 = a3;
  }

  else
  {
    v15 = [(ENDaemon *)self monthlyNotificationTimer];

    if (v15)
    {
      goto LABEL_2;
    }

    v29 = 0;
    CFPrefs_GetDouble();
    v6 = v16;
  }

  if (v6 == 0.0)
  {
    v7 = [MEMORY[0x277CBEAA0] date];
    v8 = [MEMORY[0x277CBEA88] currentCalendar];
    v9 = [v8 nextDateAfterDate:v7 matchingUnit:16 value:objc_msgSend(v8 options:{"component:fromDate:", 16, v7), 1024}];
    v10 = [v8 dateBySettingUnit:32 value:10 ofDate:v9 options:0];
    [v10 timeIntervalSinceDate:v7];
    v6 = v11;
    CFPrefs_SetDouble();
  }

  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || _LogCategory_Initialize())
    {
      [ENDaemon monthlyTriggerActivateWithIntervalOverride:];
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v12 = NSStringFromSelector(a2);
      self->_monthlySummaryDisabled;
      overallStatus = self->_overallStatus;
      if (overallStatus <= 6)
      {
        v14 = off_278FD20E0[overallStatus];
      }

      v27 = CUPrintDuration32();
      LogPrintF_safe();
    }
  }

  if (IsAppleInternalBuild())
  {
    v17 = a3 != 0;
    Int64 = CFPrefs_GetInt64();
    v19 = v29 != 0;
    v20 = !v17 || !v19;
    v21 = 7200.0;
    v22 = 10.0;
    if (v17 && v19)
    {
      v21 = 10.0;
    }

    v23 = 60;
    if (v20)
    {
      v23 = 2592000;
    }

    if ((Int64 - 60) >= 0x278CC5)
    {
      v22 = v21;
      v24 = v23;
    }

    else
    {
      v24 = Int64;
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon monthlyTriggerActivateWithIntervalOverride:];
      }
    }
  }

  else
  {
    v22 = 7200.0;
    v24 = 2592000;
  }

  v25 = [ENXPCTimer alloc];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke;
  v28[3] = &unk_278FD1580;
  v28[4] = self;
  v26 = [(ENXPCTimer *)v25 initWithName:@"com.apple.exposurenotification.weeklynotification" delay:v24 gracePeriod:1 cadence:8739 priority:v28 options:v6 block:v22];
  [(ENDaemon *)self setMonthlyNotificationTimer:v26];
}

void __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke_cold_1();
  }

  if ([*(a1 + 32) _shouldDisableMonthlySummary])
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __55__ENDaemon_monthlyTriggerActivateWithIntervalOverride___block_invoke_cold_2();
    }

    [*(a1 + 32) monthlyTriggerDeactivate];
  }

  else
  {
    v3 = [*(*(a1 + 32) + 232) entity];
    v4 = [v3 bundleIdentifier];
    if ([v4 length])
    {
      v5 = [*(*(a1 + 32) + 232) entity];
      v6 = [v5 bundleIdentifier];
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) postMonthlySummaryNotificationForAppBundleIdentifier:v6];
  }
}

- (void)monthlyTriggerDeactivate
{
  v3 = [(ENDaemon *)self monthlyNotificationTimer];
  [v3 invalidate];

  [(ENDaemon *)self setMonthlyNotificationTimer:0];
  v4 = MEMORY[0x277CBED20];
  if (!self->_monthlySummaryDisabled)
  {
    v4 = MEMORY[0x277CBED18];
  }

  v5 = *v4;
  CFPrefs_SetValue();
  CFPrefs_RemoveValue();

  CFPrefs_RemoveValue();
}

- (void)_setActiveRegionForApp:(id)a3 infoDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _setActiveRegionForApp:infoDict:];
  }

  v8 = [(ENDaemon *)self configurationManager];
  v9 = [v8 configurationStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ENDaemon__setActiveRegionForApp_infoDict___block_invoke;
  v12[3] = &unk_278FD15A8;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [v9 allRegionServerConfigurationsWithCompletion:v12];
}

void __44__ENDaemon__setActiveRegionForApp_infoDict___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v20 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v19 + 1) + 8 * v7);
      v9 = [v8 appBundleID];
      v10 = [v9 isEqualToString:*(a1 + 32)];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __44__ENDaemon__setActiveRegionForApp_infoDict___block_invoke_cold_1();
    }

    v11 = v8;

    if (v11)
    {
      v12 = [ENActiveEntity alloc];
      v13 = objc_alloc(MEMORY[0x277CC5C18]);
      v14 = *(a1 + 32);
      v15 = [v11 region];
      v16 = [v13 initWithBundleID:v14 region:v15];
      v17 = [(ENActiveEntity *)v12 initWithEntity:v16 activeStatus:2];

      [*(a1 + 40) _writePreferenceActiveEntity:v17];
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:
  }

  [*(a1 + 40) fetchServerConfigurationForAppBundleIdentifier:*(a1 + 32) infoDictionary:{*(a1 + 48), v19}];
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateExistingConsentForPhase1ActiveRegion:(int64_t)a3
{
  p_activeEntity = &self->_activeEntity;
  activeEntity = self->_activeEntity;
  if (activeEntity && [(ENActiveEntity *)activeEntity activeStatus]== 2)
  {
    v7 = [(ENActiveEntity *)*p_activeEntity entity];
    v8 = [v7 region];

    if (v8)
    {
      v9 = [(ENDaemon *)self configurationManager];
      v10 = [v9 configurationStore];
      v11 = [v10 configurationForRegion:v8];

      v12 = [v11 userConsent];
      v13 = [v12 consent];

      if (v13)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [(ENDaemon *)p_activeEntity updateExistingConsentForPhase1ActiveRegion:a3];
        }

        v14 = [v11 userConsent];
        [v14 setConsent:a3];

        v15 = [(ENDaemon *)self configurationManager];
        v16 = [v15 configurationStore];
        v19 = 0;
        v17 = [v16 saveRegionConfiguration:v11 error:&v19];
        v18 = v19;

        if ((v17 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon updateExistingConsentForPhase1ActiveRegion:];
        }
      }
    }
  }

  else
  {
    [ENDaemon updateExistingConsentForPhase1ActiveRegion:];
  }
}

- (unsigned)appDequeueActivityFlagsWithBundleID:(id)a3
{
  appActivities = self->_appActivities;
  v5 = a3;
  v6 = [(NSMutableDictionary *)appActivities objectForKeyedSubscript:v5];
  v7 = [v6 unsignedIntValue];

  [(NSMutableDictionary *)self->_appActivities setObject:0 forKeyedSubscript:v5];
  return v7;
}

- (id)xpcConnectionForBundleID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 client];
        v11 = [v10 signingIdentity];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)appLaunchWithBundleID:(id)a3 activity:(unsigned int)a4 shouldEnterForeground:(BOOL)a5 requiredRuntimeInSeconds:(int)a6
{
  v7 = a5;
  v10 = a3;
  v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v12 = [v11 isSensitiveLoggingAllowed];

  if (v12 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:];
  }

  v13 = [(NSMutableDictionary *)self->_appActivities objectForKeyedSubscript:v10];
  if (!self->_appActivities)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB30]);
    appActivities = self->_appActivities;
    self->_appActivities = v14;
  }

  v16 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v13, "unsignedIntValue") | a4}];
  [(NSMutableDictionary *)self->_appActivities setObject:v16 forKeyedSubscript:v10];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke;
  v32[3] = &unk_278FD1120;
  v32[4] = self;
  v17 = v10;
  v33 = v17;
  v18 = MEMORY[0x24C214430](v32);
  v19 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v20 = v19;
  if (v7)
  {
    [v19 setObject:&unk_285D6E3F0 forKeyedSubscript:*MEMORY[0x277D0AC50]];
    v21 = MEMORY[0x277D0AC68];
  }

  else
  {
    v21 = MEMORY[0x277D0ABE8];
  }

  [v20 setObject:&unk_285D6E3F0 forKeyedSubscript:*v21];
  v22 = [MEMORY[0x277D0AD68] optionsWithDictionary:v20];
  v23 = [MEMORY[0x277D0AD70] serviceWithDefaultShellEndpoint];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540;
  v25[3] = &unk_278FD15D0;
  v31 = v7;
  v27 = self;
  v28 = v18;
  v29 = a4;
  v30 = a6;
  v26 = v17;
  v24 = v17;
  [v23 openApplication:v24 withOptions:v22 completion:v25];
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnectionForBundleID:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) appDequeueActivityFlagsWithBundleID:*(a1 + 40)];
    v2 = v4;
    if (v3)
    {
      [v4 xpcReportActivityFlags:?];
      v2 = v4;
    }
  }
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v12 = [v11 isSensitiveLoggingAllowed];

    if (v12 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_3(a1);
    }
  }

  else
  {
    v8 = [v5 pid];
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v10 = [v9 isSensitiveLoggingAllowed];

    if (v10 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_1(a1);
    }

    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CEEEA0]) initWithPID:v8 flags:1 reason:5 name:*(a1 + 32)];
      if ([v13 acquire])
      {
        (*(*(a1 + 48) + 16))();
        v14 = dispatch_time(0, 1000000000 * *(a1 + 60));
        v15 = *(*(a1 + 40) + 224);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2;
        block[3] = &unk_278FD1558;
        v16 = *(a1 + 32);
        v22 = *(a1 + 56);
        v23 = v8;
        v20 = v16;
        v21 = v13;
        dispatch_after(v14, v15, block);
      }

      else
      {
        v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v18 = [v17 isSensitiveLoggingAllowed];

        if (v18 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_2((a1 + 32), a1);
        }

        [v13 invalidate];
      }
    }
  }
}

uint64_t __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2(uint64_t a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 40);

  return [v4 invalidate];
}

- (void)postAnalyticsOptInNotificationForRegion:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon postAnalyticsOptInNotificationForRegion:];
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    [ENDaemon postAnalyticsOptInNotificationForRegion:];
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v6 = [v5 serverConfigurationForRegion:v4];

  if (v6)
  {
    if ([v6 telemetryAuthorization])
    {
      if ([v6 enVersion] <= 1)
      {
        [ENDaemon postAnalyticsOptInNotificationForRegion:];
      }

      else
      {
        v7 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
        v8 = [v7 agencyConfigurationForRegion:v4];

        v25 = [v8 agencyDisplayName];
        v9 = [v8 localizedConfiguration];
        v10 = [v9 regionName];

        v11 = MEMORY[0x277CCACA0];
        v12 = [v4 regionCode];
        v13 = [v11 stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=ANALYTICS-CONSENT/%@", v12];

        v14 = objc_alloc_init(MEMORY[0x277CE1F58]);
        [v14 setTitle:v10];
        v15 = MEMORY[0x277CCACA0];
        v28[0] = v25;
        v16 = [MEMORY[0x277CBEA68] arrayWithObjects:v28 count:1];
        v17 = [v15 localizedUserNotificationStringForKey:@"EN_ANALYTICS_CONSENT_SUBTITLE" arguments:v16];
        [v14 setSubtitle:v17];

        v18 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_ANALYTICS_CONSENT_BODY" arguments:0];
        [v14 setBody:v18];

        v19 = [MEMORY[0x277CE1FD8] defaultSound];
        [v14 setSound:v19];

        [v14 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
        [v14 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.analyticsConsent"];
        v20 = [MEMORY[0x277CBEBC8] URLWithString:v13];
        [v14 setDefaultActionURL:v20];

        v26 = @"regionCode";
        v21 = [v4 regionCode];
        v27 = v21;
        v22 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v14 setUserInfo:v22];

        [v14 setShouldBackgroundDefaultAction:1];
        [v14 setShouldAuthenticateDefaultAction:1];
        v23 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.UserNotification" content:v14 trigger:0 destinations:7];
        [(ENDaemon *)self _postUserNotificationWithRequest:v23 authorizationFailureHandler:0];
      }
    }

    else
    {
      [ENDaemon postAnalyticsOptInNotificationForRegion:];
    }
  }

  else
  {
    [ENDaemon postAnalyticsOptInNotificationForRegion:];
  }

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)postExposureSummaryAccessNotificationWithAppBundleIdentifier:(id)a3 string:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v6 placeholder:0];
    v9 = [v8 localizedName];

    v10 = objc_alloc_init(MEMORY[0x277CE1F58]);
    [v10 setTitle:v9];
    v11 = [v7 length];
    v12 = MEMORY[0x277CCACA0];
    if (v11)
    {
      v13 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_COBRANDED_SUBTITLE" arguments:0];
      [v10 setSubtitle:v13];

      v12 = MEMORY[0x277CCACA0];
      v28[0] = v7;
      v14 = [MEMORY[0x277CBEA68] arrayWithObjects:v28 count:1];
      v15 = @"EN_COBRANDED_BODY";
    }

    else
    {
      v27 = v7;
      v14 = [MEMORY[0x277CBEA68] arrayWithObjects:&v27 count:1];
      v15 = @"EN_COBRANDED_BODY_STANDALONE";
    }

    v16 = [v12 localizedUserNotificationStringForKey:v15 arguments:v14];
    [v10 setBody:v16];

    v17 = [MEMORY[0x277CE1FA8] iconForApplicationIdentifier:v6];
    [v10 setIcon:v17];

    v18 = [MEMORY[0x277CE1FD8] defaultSound];
    [v10 setSound:v18];

    [v10 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.cobranded"];
    [v10 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.summary"];
    [v10 setShouldBackgroundDefaultAction:1];
    v19 = [(ENActiveEntity *)self->_activeEntity entity];
    v20 = [v19 region];
    v21 = [v20 regionCode];

    if (v21)
    {
      v25 = @"regionCode";
      v26 = v21;
      v22 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v10 setUserInfo:v22];
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:string:];
    }

    v23 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.summary" content:v10 trigger:0 destinations:7];
    [(ENDaemon *)self _postUserNotificationWithRequest:v23 authorizationFailureHandler:0];
  }

  else
  {
    [ENDaemon postExposureSummaryAccessNotificationWithAppBundleIdentifier:string:];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)postGeneralNotificationWithTitle:(id)a3 message:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon postGeneralNotificationWithTitle:message:];
  }

  if (v12 && v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE1F58]);
    [v7 setTitle:&stru_285D62BB0];
    v8 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:v12 arguments:0];
    [v7 setSubtitle:v8];

    v9 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:v6 arguments:0];
    [v7 setBody:v9];

    v10 = [MEMORY[0x277CE1FD8] defaultSound];
    [v7 setSound:v10];

    [v7 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
    [v7 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.preArm"];
    [v7 setShouldBackgroundDefaultAction:1];
    [v7 setShouldAuthenticateDefaultAction:1];
    v11 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.preArm" content:v7 trigger:0 destinations:7];
    [(ENDaemon *)self _postUserNotificationWithRequest:v11 authorizationFailureHandler:0];
  }

  else
  {
    [ENDaemon postGeneralNotificationWithTitle:message:];
  }
}

- (void)postMonthlySummaryNotificationForAppBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon postMonthlySummaryNotificationForAppBundleIdentifier:];
    }

    v7 = objc_alloc_init(MEMORY[0x277CE1F58]);
    v8 = [MEMORY[0x277CE1FA8] iconForApplicationIdentifier:@"com.apple.Preferences"];
    [v7 setIcon:v8];

    [v7 setTitle:&stru_285D62BB0];
    v9 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_MONTHLY_SUBTITLE" arguments:0];
    [v7 setSubtitle:v9];

    v10 = [MEMORY[0x277CE1FD8] defaultSound];
    [v7 setSound:v10];

    [v7 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.weeklyupdatenotification"];
    [v7 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.weekly"];
    v11 = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=EXPOSURE_NOTIFICATION"];
    [v7 setDefaultActionURL:v11];

    v12 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_MONTHLY_ZERO_COUNT_BODY" arguments:0];
    [v7 setBody:v12];

    v13 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.weekly" content:v7 trigger:0 destinations:7];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__ENDaemon_postMonthlySummaryNotificationForAppBundleIdentifier___block_invoke;
    v14[3] = &unk_278FD0F90;
    v14[4] = self;
    [(ENDaemon *)self _postUserNotificationWithRequest:v13 authorizationFailureHandler:v14];
  }

  else
  {
    [ENDaemon postMonthlySummaryNotificationForAppBundleIdentifier:];
  }
}

- (void)postOnboardingNotificationForRegion:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_16:
    [ENDaemon postOnboardingNotificationForRegion:];
    goto LABEL_14;
  }

  [ENDaemon postOnboardingNotificationForRegion:];
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_5:
  [(ENDaemon *)self _getAvailabilityAlertCountIncrement:1 reset:0];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon postOnboardingNotificationForRegion:];
  }

  v5 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v6 = [v5 agencyConfigurationForRegion:v4];

  v7 = [v6 agencyDisplayName];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v10 = [v9 serverConfigurationForRegion:v4];

    if ([v10 enVersion] <= 1)
    {
      [ENDaemon postOnboardingNotificationForRegion:];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CE1F58]);
      [v11 setTitle:&stru_285D62BB0];
      v12 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_AVAILABLE_SUBTITLE" arguments:0];
      [v11 setSubtitle:v12];

      v13 = MEMORY[0x277CCACA0];
      v23[0] = v8;
      v14 = [MEMORY[0x277CBEA68] arrayWithObjects:v23 count:1];
      v15 = [v13 localizedUserNotificationStringForKey:@"EN_AVAILABLE_BODY_PHA" arguments:v14];
      [v11 setBody:v15];

      v16 = [MEMORY[0x277CE1FD8] defaultSound];
      [v11 setSound:v16];

      [v11 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
      [v11 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.onboarding"];
      v17 = [v4 regionCode];
      v22 = v17;
      v18 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [v11 setUserInfo:v18];

      [v11 setShouldBackgroundDefaultAction:1];
      [v11 setShouldAuthenticateDefaultAction:1];
      v19 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.onboarding" content:v11 trigger:0 destinations:7];
      [(ENDaemon *)self _postUserNotificationWithRequest:v19 authorizationFailureHandler:0];
    }
  }

  else
  {
    [ENDaemon postOnboardingNotificationForRegion:];
  }

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)postPreAuthorizationNotificationForRegion:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon postPreAuthorizationNotificationForRegion:];
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_22:
    [ENDaemon postPreAuthorizationNotificationForRegion:];
    goto LABEL_20;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_5:
  v5 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v6 = [v5 agencyConfigurationForRegion:v4];

  v7 = [v6 agencyDisplayName];
  v8 = v7;
  if (!v6 || !v7)
  {
    [ENDaemon postPreAuthorizationNotificationForRegion:];
    goto LABEL_19;
  }

  v9 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v10 = [v9 serverConfigurationForRegion:v4];

  if (![(ENDaemon *)self _isNKDActive])
  {
    v11 = [v10 appBundleID];
    v12 = v11;
    if (!v10 || !v11 || ![v11 length])
    {
      [ENDaemon postPreAuthorizationNotificationForRegion:v12];
      goto LABEL_18;
    }

LABEL_14:
    v13 = objc_alloc_init(MEMORY[0x277CE1F58]);
    [v13 setTitle:v8];
    if ([(ENDaemon *)self _isNKDActive])
    {
      v14 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_PREARM_SUBTITLE_ENX" arguments:0];
      [v13 setSubtitle:v14];

      v15 = MEMORY[0x277CCACA0];
      v28[0] = v8;
      v16 = [MEMORY[0x277CBEA68] arrayWithObjects:v28 count:1];
      v17 = @"EN_PREARM_BODY_ENX";
    }

    else
    {
      v18 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_PREARM_SUBTITLE" arguments:0];
      [v13 setSubtitle:v18];

      v15 = MEMORY[0x277CCACA0];
      v27 = v8;
      v16 = [MEMORY[0x277CBEA68] arrayWithObjects:&v27 count:1];
      v17 = @"EN_PREARM_BODY";
    }

    v19 = [v15 localizedUserNotificationStringForKey:v17 arguments:v16];
    [v13 setBody:v19];

    v20 = [MEMORY[0x277CE1FD8] defaultSound];
    [v13 setSound:v20];

    [v13 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
    [v13 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.preArm"];
    v25[0] = @"regionCode";
    v21 = [v4 regionCode];
    v25[1] = @"isKeyReleased";
    v26[0] = v21;
    v26[1] = MEMORY[0x277CBEC30];
    v22 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v13 setUserInfo:v22];

    [v13 setShouldBackgroundDefaultAction:1];
    [v13 setShouldAuthenticateDefaultAction:1];
    [v13 setInterruptionLevel:2];
    v23 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.preArm" content:v13 trigger:0 destinations:5];
    [(ENDaemon *)self _postUserNotificationWithRequest:v23 authorizationFailureHandler:0];

    goto LABEL_18;
  }

  if (v10)
  {
    goto LABEL_14;
  }

  [ENDaemon postPreAuthorizationNotificationForRegion:];
LABEL_18:

LABEL_19:
LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)postTestVerificationReceivedNotification:(id)a3 region:(id)a4 reportType:(unsigned int)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v8 = a4;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
  }

  if (!v39)
  {
    [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    goto LABEL_24;
  }

  if (!v8)
  {
    [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    goto LABEL_24;
  }

  v9 = [v39 ensTestVerificationURL];
  v10 = [v9 absoluteString];

  v37 = v10;
  if (!v10)
  {
    [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    goto LABEL_23;
  }

  v38 = [MEMORY[0x277CCAB60] stringWithString:v10];
  v11 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v12 = [v11 agencyConfigurationForRegion:v8];

  v13 = [v12 agencyDisplayName];
  v14 = v13;
  if (!v12 || !v13)
  {
    [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    goto LABEL_22;
  }

  if (a5 != 3)
  {
    v24 = [v12 localizedConfiguration];
    v22 = [v24 testVerificationNotificationBody];

    if ([v22 length])
    {
      v23 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_SMS_SUBTITLE_TOUCH_ID" arguments:0];
      if (+[ENDaemon deviceSupportsFaceID])
      {
        v25 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_SMS_SUBTITLE_FACE_ID" arguments:0];

        v23 = v25;
      }

      goto LABEL_16;
    }

    [ENDaemon postTestVerificationReceivedNotification:v8 region:v22 reportType:&v40];
    goto LABEL_35;
  }

  if (![(ENConfigurationManager *)self->_configurationManager regionSupportsFeatures:v8 featureFlags:2])
  {
    [ENDaemon postTestVerificationReceivedNotification:v8 region:&v40 reportType:?];
LABEL_35:
    v22 = v40;
    goto LABEL_21;
  }

  v15 = [v12 localizedConfiguration];
  v16 = [v15 selfReportNotificationBody];

  if ([v16 length])
  {
    v17 = MEMORY[0x277CCACA0];
    v43[0] = v16;
    [MEMORY[0x277CBEA68] arrayWithObjects:v43 count:1];
    v18 = self;
    v20 = v19 = v14;
    v21 = [v17 localizedUserNotificationStringForKey:@"EN_SELF_REPORT_BODY_%@" arguments:v20];

    v14 = v19;
    self = v18;
    v22 = v21;
    v23 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_SELF_REPORT_SUBTITLE" arguments:0];

    a5 = 3;
LABEL_16:
    v36 = [MEMORY[0x277CCACA0] stringWithFormat:@"&t=%lu", a5];
    [v38 appendString:?];
    v26 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v27 = [v26 serverConfigurationForRegion:v8];

    if (v27)
    {
      if ([v27 enVersion] <= 1)
      {
        [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
      }

      else if ([(ENDaemon *)self _isNKDActive])
      {
        v28 = objc_alloc_init(MEMORY[0x277CE1F58]);
        [v28 setTitle:v14];
        [v28 setSubtitle:v23];
        [v28 setBody:v22];
        [MEMORY[0x277CE1FD8] defaultSound];
        v29 = v35 = self;
        [v28 setSound:v29];

        [v28 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
        [v28 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.exposure"];
        [v28 setInterruptionLevel:2];
        v41[0] = @"regionCode";
        v30 = [v8 regionCode];
        v41[1] = @"isTextMessageVerificationURL";
        v42[0] = v30;
        v42[1] = v38;
        [MEMORY[0x277CBEAC8] dictionaryWithObjects:v42 forKeys:v41 count:2];
        v32 = v31 = v22;
        [v28 setUserInfo:v32];

        v22 = v31;
        [v28 setShouldBackgroundDefaultAction:1];
        [v28 setShouldAuthenticateDefaultAction:1];
        v33 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.textMessage" content:v28 trigger:0 destinations:7];
        [(ENDaemon *)v35 _postUserNotificationWithRequest:v33 authorizationFailureHandler:0];
      }

      else
      {
        [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
      }
    }

    else
    {
      [ENDaemon postTestVerificationReceivedNotification:region:reportType:];
    }

    goto LABEL_21;
  }

  [ENDaemon postTestVerificationReceivedNotification:v16 region:? reportType:?];
  v22 = 0;
LABEL_21:

LABEL_22:
LABEL_23:

LABEL_24:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)presentBuddyForRegion:(id)a3 errorHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ENDaemon *)self buddyAlertHandle];
  v12 = [v11 isValid];

  if (v12)
  {
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon presentBuddyForRegion:errorHandler:completionHandler:];
    }

    v13 = ENErrorF();
    if (v9)
    {
      v9[2](v9, v13);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke;
    v23[3] = &unk_278FD15F8;
    v23[4] = self;
    v14 = v9;
    v25 = v14;
    v24 = v8;
    v26 = v10;
    v15 = MEMORY[0x24C214430](v23);
    v16 = [(ENDaemon *)self sharingClient];

    if (v16)
    {
      v17 = [(ENDaemon *)self sharingClient];
      [v17 invalidate];

      [(ENDaemon *)self setSharingClient:0];
    }

    v18 = objc_alloc_init(MEMORY[0x277D54C28]);
    [(ENDaemon *)self setSharingClient:v18];

    v19 = [(ENDaemon *)self sharingClient];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2;
    v20[3] = &unk_278FD1648;
    v20[4] = self;
    v21 = v14;
    v22 = v15;
    [v19 startProxCardTransactionWithOptions:0 completion:v20];
  }
}

void __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buddyAlertHandle];
  v3 = [v2 isValid];

  if (v3)
  {
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_cold_3();
    }

    v4 = ENErrorF();
    v5 = *(a1 + 48);
    if (v5)
    {
      v19 = v4;
      (*(v5 + 16))();
      v4 = v19;
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D66BE0]) initWithServiceName:@"com.apple.HealthENBuddy" viewControllerClassName:@"HealthENBuddy.HealthENBuddyContainer"];
    v8 = objc_alloc_init(MEMORY[0x277D66BC8]);
    v20 = @"regionCountryCode";
    v9 = [*(a1 + 40) countryCode];
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v10 mutableCopy];

    v12 = [*(a1 + 40) subdivisionCode];

    if (v12)
    {
      v13 = [*(a1 + 40) subdivisionCode];
      [v11 setObject:v13 forKeyedSubscript:@"regionSubdivisionCode"];
    }

    [v8 setUserInfo:v11];
    v14 = [MEMORY[0x277D66BE8] newHandleWithDefinition:v7 configurationContext:v8];
    [*(a1 + 32) setBuddyAlertHandle:v14];

    v15 = *(a1 + 56);
    if (v15 && ((*(v15 + 16))() & 1) == 0)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_cold_1();
      }

      [*(a1 + 32) tearDownAlertHandle];
    }

    else
    {
      if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_cold_2();
      }

      v16 = [*(a1 + 32) buddyAlertHandle];
      [v16 addObserver:*(a1 + 32)];

      v17 = [*(a1 + 32) buddyAlertHandle];
      [v17 activateWithContext:0];
    }

    v18 = *MEMORY[0x277D85DE8];
  }
}

void __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2(void *a1, char a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2_cold_2();
    }

    v3 = [MEMORY[0x277D0AD70] serviceWithDefaultShellEndpoint];
    v4 = MEMORY[0x277D0AD68];
    v18 = *MEMORY[0x277D0ABE8];
    v19[0] = MEMORY[0x277CBEC30];
    v5 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v6 = [v4 optionsWithDictionary:v5];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3;
    v15[3] = &unk_278FD1620;
    v7 = a1[5];
    v15[4] = a1[4];
    v8 = v7;
    v9 = a1[6];
    v16 = v8;
    v17 = v9;
    [v3 openApplication:@"com.apple.HealthENBuddy" withOptions:v6 completion:v15];

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_2_cold_1();
    }

    v11 = ENErrorF();
    v12 = a1[5];
    if (v12)
    {
      v14 = v11;
      (*(v12 + 16))();
      v11 = v14;
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

void __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3_cold_1();
    }

    [*(a1 + 32) tearDownAlertHandle];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }

  else
  {
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __65__ENDaemon_presentBuddyForRegion_errorHandler_completionHandler___block_invoke_3_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)tearDownAlertHandle
{
  v3 = [(ENDaemon *)self buddyAlertHandle];
  [v3 removeObserver:self];

  v4 = [(ENDaemon *)self buddyAlertHandle];
  [v4 invalidate];

  [(ENDaemon *)self setBuddyAlertHandle:0];
  v5 = [(ENDaemon *)self sharingClient];
  [v5 invalidate];

  [(ENDaemon *)self setSharingClient:0];
}

- (void)postENOffNotification
{
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon postENOffNotification];
  }

  v8 = objc_alloc_init(MEMORY[0x277CE1F58]);
  v3 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_OFF_TITLE" arguments:0];
  [v8 setTitle:v3];

  v4 = [MEMORY[0x277CCACA0] localizedUserNotificationStringForKey:@"EN_OFF_BODY" arguments:0];
  [v8 setBody:v4];

  v5 = [MEMORY[0x277CE1FD8] defaultSound];
  [v8 setSound:v5];

  [v8 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.endaemon"];
  [v8 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.off"];
  v6 = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=EXPOSURE_NOTIFICATION"];
  [v8 setDefaultActionURL:v6];

  v7 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.off" content:v8 trigger:0 destinations:7];
  [(ENDaemon *)self _postUserNotificationWithRequest:v7 authorizationFailureHandler:0];
}

- (void)postExposureNotification:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 region];
  if (v5)
  {
    v6 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v7 = [v6 agencyConfigurationForRegion:v5];

    v8 = [v7 agencyDisplayName];
    v9 = MEMORY[0x277CCACA0];
    v10 = [v5 regionCode];
    v11 = [v9 stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=EXPOSURE/LATEST/%@", v10];

    v12 = objc_alloc_init(MEMORY[0x277CE1F58]);
    v13 = [v4 classification];
    v14 = v13;
    if (v13)
    {
      v23 = @"classificationIndex";
      v15 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{objc_msgSend(v13, "index")}];
      v24[0] = v15;
      v16 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [v12 setUserInfo:v16];
    }

    [v12 setTitle:v8];
    v17 = [v4 localizedSubjectText];
    [v12 setSubtitle:v17];

    v18 = [v4 localizedBodyText];
    [v12 setBody:v18];

    v19 = [MEMORY[0x277CE1FD8] defaultSound];
    [v12 setSound:v19];

    [v12 setThreadIdentifier:@"com.apple.ExposureNotification.UserNotification.cobranded"];
    [v12 setCategoryIdentifier:@"com.apple.ExposureNotification.UserNotification.exposure"];
    v20 = [MEMORY[0x277CBEBC8] URLWithString:v11];
    [v12 setDefaultActionURL:v20];

    [v12 setShouldBackgroundDefaultAction:1];
    [v12 setInterruptionLevel:2];
    v21 = [MEMORY[0x277CE1FB8] requestWithIdentifier:@"com.apple.ExposureNotification.exposure" content:v12 trigger:0 destinations:7];
    [(ENDaemon *)self _postUserNotificationWithRequest:v21 authorizationFailureHandler:0];
  }

  else
  {
    [ENDaemon postExposureNotification:];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_postUserNotificationWithRequest:(id)a3 authorizationFailureHandler:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ENDaemon *)self userNotificationCenter];
  v9 = [v6 content];
  v33 = [v9 categoryIdentifier];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = [v8 deliveredNotifications];
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v29 = v7;
  v30 = v6;
  v31 = self;
  v32 = v8;
  v34 = 0;
  v13 = *v39;
  v14 = 1;
  v15 = @"com.apple.ExposureNotification.UserNotification";
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v39 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v17 = [*(*(&v38 + 1) + 8 * i) request];
      v18 = [v17 identifier];
      v19 = [v18 isEqualToString:v15];

      if (v19)
      {
        v20 = [v17 content];
        v21 = [v20 categoryIdentifier];
        v22 = v15;
        v23 = v10;
        v24 = [v21 isEqualToString:v33];

        v14 &= v24;
        v34 |= v24;
        v10 = v23;
        v15 = v22;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v12);

  v25 = v34 & v14;
  self = v31;
  v8 = v32;
  v7 = v29;
  v6 = v30;
  if (v25)
  {
    v42 = v15;
    v10 = [MEMORY[0x277CBEA68] arrayWithObjects:&v42 count:1];
    [v32 removeDeliveredNotificationsWithIdentifiers:v10];
LABEL_12:
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke;
  v35[3] = &unk_278FD16C0;
  v35[4] = self;
  v35[5] = v8;
  v36 = v6;
  v37 = v7;
  v26 = v6;
  v27 = v7;
  [v8 requestAuthorizationWithOptions:18 completionHandler:v35];

  v28 = *MEMORY[0x277D85DE8];
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 224);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_2;
  block[3] = &unk_278FD1698;
  v16 = a2;
  v12 = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v13 = v8;
  v14 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3;
    v6[3] = &unk_278FD1670;
    v7 = v2;
    [v3 addNotificationRequest:v7 withCompletionHandler:v6];
  }

  else
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_2_cold_1(a1);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_281346508 <= 90)
    {
      v6 = v3;
      if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3_cold_1(a1);
        v4 = v6;
      }
    }
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v70[2] = *MEMORY[0x277D85DE8];
  v59 = a3;
  v8 = a4;
  v9 = a5;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __88__ENDaemon_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  v67[3] = &unk_278FD16E8;
  v60 = v9;
  v68 = v60;
  v10 = MEMORY[0x24C214430](v67);
  v11 = [v8 notification];
  v12 = [v11 request];
  v13 = [v12 content];
  v14 = [v13 categoryIdentifier];

  v15 = [v8 notification];
  v16 = [v15 request];
  v17 = [v16 content];
  v64 = [v17 userInfo];

  v18 = [v8 actionIdentifier];
  v19 = [v18 isEqualToString:*MEMORY[0x277CE20E0]];

  v62 = [MEMORY[0x277CC1E78] defaultWorkspace];
  v20 = *MEMORY[0x277D0AC68];
  v69[0] = *MEMORY[0x277D0AC50];
  v69[1] = v20;
  v70[0] = MEMORY[0x277CBEC30];
  v70[1] = MEMORY[0x277CBEC30];
  v61 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v70 forKeys:v69 count:2];
  if ([v14 isEqualToString:@"com.apple.ExposureNotification.UserNotification.summary"])
  {
    CFStringGetTypeID();
    v63 = CFDictionaryGetTypedValue();
    activeEntity = self->_activeEntity;
    if (activeEntity)
    {
      v22 = [(ENActiveEntity *)activeEntity entity];
      v23 = [v22 bundleIdentifier];

      Int64 = CFDictionaryGetInt64();
      v25 = [(ENActiveEntity *)self->_activeEntity entity];
      v26 = [v25 region];
      v27 = [v26 regionCode];

      if ([v63 isEqualToString:v27])
      {
        if (!Int64)
        {
          v32 = objc_alloc_init(MEMORY[0x277CC1F08]);
          [v32 setFrontBoardOptions:v61];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __88__ENDaemon_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
          v66[3] = &unk_278FD1710;
          v66[4] = v23;
          [v62 openApplicationWithBundleIdentifier:v23 configuration:v32 completionHandler:v66];
          goto LABEL_100;
        }

        if (v19)
        {
          if (v23 && [v23 length])
          {
            [(ENDaemon *)self appLaunchWithBundleID:v23 activity:8 shouldEnterForeground:1 requiredRuntimeInSeconds:0];
            goto LABEL_101;
          }

          v32 = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=KEY-RELEASED"];
          v36 = [MEMORY[0x277CBEBC8] URLWithString:v32];
          if (v36)
          {
            v37 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v38 = [v37 isSensitiveLoggingAllowed];

            if (v38 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
              [v62 openSensitiveURL:v36 withOptions:{v61, v32}];
            }

            else
            {
              [v62 openSensitiveURL:v36 withOptions:{v61, v56}];
            }
          }

          else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

LABEL_100:
        }

LABEL_101:

        goto LABEL_102;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_101;
      }

LABEL_25:
      LogPrintF_safe();
      goto LABEL_101;
    }

    if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_103;
    }

    goto LABEL_22;
  }

  if (![v14 isEqualToString:@"com.apple.ExposureNotification.UserNotification.preArm"])
  {
    if ([v14 isEqualToString:@"com.apple.ExposureNotification.UserNotification.onboarding"])
    {
      if (!v19)
      {
        v35 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];

        if (v35)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v63 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
          if (v63)
          {
            v44 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
            v23 = [v44 configurationForRegion:v63];

            if (!v23)
            {
              if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              goto LABEL_102;
            }

            v45 = [v23 userConsent];
            v46 = [v45 consent] == 2;

            if (!v46)
            {
              v47 = [v23 userConsent];
              [v47 setConsent:3];

              v48 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
              v65 = 0;
              v49 = [v48 saveRegionConfiguration:v23 error:&v65];
              v27 = v65;

              if (v49)
              {
                v50 = [(ENDaemon *)self activeEntity];
                v51 = [v50 entity];
                v52 = [v51 region];
                v58 = [v63 isEqual:v52];

                if (v58)
                {
                  if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe();
                  }

                  [(ENDaemon *)self _turnOffEN];
                }

                [(ENDaemon *)self onboardingTriggerDeactivate];
              }

              else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              goto LABEL_101;
            }

LABEL_102:

            goto LABEL_103;
          }
        }

        goto LABEL_104;
      }

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      CFStringGetTypeID();
      v63 = CFDictionaryGetTypedValue();
      if (v63)
      {
        v41 = [(ENDaemon *)self onboardingManager];
        [v41 setPendingBuddyOnboarding:0];

        v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=ONBOARDING/%@", v63];
        v27 = [MEMORY[0x277CBEBC8] URLWithString:v23];
        if (v27)
        {
          v42 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v43 = [v42 isSensitiveLoggingAllowed];

          if (v43 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v57 = v23;
            LogPrintF_safe();
          }

          [v62 openSensitiveURL:v27 withOptions:{v61, v57}];
          v54 = *MEMORY[0x277CBED20];
          CFPrefs_SetValue();
          goto LABEL_101;
        }

        if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        goto LABEL_25;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_104;
      }
    }

    else
    {
      if ([v14 isEqualToString:@"com.apple.ExposureNotification.UserNotification.exposure"])
      {
        CFStringGetTypeID();
        v63 = CFDictionaryGetTypedValue();
        v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v31 = [v30 isSensitiveLoggingAllowed];

        if (v31 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        if (!v63)
        {
          v53 = NSDictionaryGetNSNumber();
          v23 = v53;
          if (v53)
          {
            -[ENDifferentialPrivacyManager reportUserExposureNotificationTapped:classificationIndex:](self->_differentialPrivacyManager, "reportUserExposureNotificationTapped:classificationIndex:", v19, [v53 unsignedCharValue]);
          }

          goto LABEL_102;
        }

        if (v19)
        {
          v23 = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=EXPOSURE_NOTIFICATION"];
          [v62 openSensitiveURL:v23 withOptions:v61];
          v27 = [MEMORY[0x277CBEBC8] URLWithString:v63];
          [v62 openURL:v27 withOptions:v61];
          goto LABEL_101;
        }

LABEL_103:

        goto LABEL_104;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_104;
      }
    }

    LogPrintF_safe();
    goto LABEL_104;
  }

  if (v19)
  {
    CFStringGetTypeID();
    v63 = CFDictionaryGetTypedValue();
    if (!self->_activeEntity)
    {
      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_103;
      }

LABEL_22:
      LogPrintF_safe();
      goto LABEL_103;
    }

    v28 = CFDictionaryGetInt64();
    v29 = [(ENActiveEntity *)self->_activeEntity entity];
    v23 = [v29 bundleIdentifier];

    if (v23 && [v23 length])
    {
      [(ENDaemon *)self appLaunchWithBundleID:v23 activity:8 shouldEnterForeground:1 requiredRuntimeInSeconds:0];
      goto LABEL_102;
    }

    if (v28)
    {
      v27 = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION&path=KEY-RELEASED"];
      v32 = [MEMORY[0x277CBEBC8] URLWithString:v27];
      if (v32)
      {
        v33 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v34 = [v33 isSensitiveLoggingAllowed];

        if (v34 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
          [v62 openSensitiveURL:v32 withOptions:{v61, v27}];
          goto LABEL_100;
        }

LABEL_99:
        [v62 openSensitiveURL:v32 withOptions:{v61, v56}];
        goto LABEL_100;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_100;
      }
    }

    else
    {
      v27 = [MEMORY[0x277CCACA0] stringWithFormat:@"prefs:root=EXPOSURE_NOTIFICATION"];
      v32 = [MEMORY[0x277CBEBC8] URLWithString:v27];
      if (v32)
      {
        v39 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v40 = [v39 isSensitiveLoggingAllowed];

        if (v40 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
          [v62 openSensitiveURL:v32 withOptions:{v61, v32}];
          goto LABEL_100;
        }

        goto LABEL_99;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_100;
      }
    }

    LogPrintF_safe();
    goto LABEL_100;
  }

LABEL_104:

  v10[2](v10);
  v55 = *MEMORY[0x277D85DE8];
}

void __88__ENDaemon_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (_MergedGlobals <= 30)
  {
    v8 = v4;
    if (_MergedGlobals != -1 || (v7 = _LogCategory_Initialize(), v5 = v8, v7))
    {
      v6 = *(a1 + 32);
      LogPrintF_safe();
      v5 = v8;
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (_MergedGlobals <= 40)
  {
    v6 = v3;
    if (_MergedGlobals != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [ENDaemon remoteAlertHandleDidActivate:];
      v4 = v6;
    }
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon remoteAlertHandleDidDeactivate:];
  }

  [(ENDaemon *)self _deferConsentForPendingRegion];
  [(ENDaemon *)self tearDownAlertHandle];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v7 = a4;
  v5 = [v7 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277D67168]];

  if (!v6)
  {
    if (_MergedGlobals > 90 || _MergedGlobals == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

LABEL_10:
    [ENDaemon remoteAlertHandle:didInvalidateWithError:];
    goto LABEL_14;
  }

  if (([v7 code] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    if (_MergedGlobals > 90 || _MergedGlobals == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon remoteAlertHandle:v7 didInvalidateWithError:?];
  }

LABEL_14:
  [(ENDaemon *)self _deferConsentForPendingRegion];
  [(ENDaemon *)self tearDownAlertHandle];
}

- (void)_enApplicationDidInstall:(id)a3
{
  v10 = a3;
  v4 = [v10 bundleIdentifier];
  if (v4)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _enApplicationDidInstall:];
    }

    v5 = [v10 bundleURL];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D0] bundleWithURL:v5];
      v7 = v6;
      if (v6 && ([v6 infoDictionary], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
      {
        v9 = [v7 infoDictionary];
        [(ENDaemon *)self fetchServerConfigurationForAppBundleIdentifier:v4 infoDictionary:v9];
      }

      else
      {
        [ENDaemon _enApplicationDidInstall:];
      }
    }

    else
    {
      [ENDaemon _enApplicationDidInstall:];
    }
  }

  else
  {
    [ENDaemon _enApplicationDidInstall:];
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ENDaemon_applicationsDidInstall___block_invoke;
  v7[3] = &unk_278FD1120;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __35__ENDaemon_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 appState];
        v9 = [v8 isPlaceholder];

        if ((v9 & 1) == 0)
        {
          v10 = [v7 entitlementValueForKey:@"com.apple.developer.exposure-notification" ofClass:objc_opt_class()];
          v11 = [v10 BOOLValueSafe];

          if (v11)
          {
            [*(a1 + 40) _enApplicationDidInstall:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enApplicationDidUninstall:(id)a3
{
  v9 = a3;
  v4 = [v9 bundleIdentifier];
  if (v4)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _enApplicationDidUninstall:];
    }

    v5 = [(ENActiveEntity *)self->_activeEntity entity];
    v6 = [v5 bundleIdentifier];
    if ([v6 length])
    {
      v7 = [(ENActiveEntity *)self->_activeEntity entity];
      v8 = [v7 bundleIdentifier];
    }

    else
    {
      v8 = 0;
    }

    if ([v8 length] && objc_msgSend(v4, "length") && objc_msgSend(v4, "isEqualToString:", v8))
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon _enApplicationDidUninstall:];
      }

      [(ENDaemon *)self updateExistingConsentForPhase1ActiveRegion:0];
      [(ENDaemon *)self _turnOffEN];
      [(ENDaemon *)self postENOffNotification];
    }
  }

  else
  {
    [ENDaemon _enApplicationDidUninstall:];
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ENDaemon_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_278FD1120;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __37__ENDaemon_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [v7 entitlementValueForKey:@"com.apple.developer.exposure-notification" ofClass:{objc_opt_class(), v11}];
        v9 = [v8 BOOLValueSafe];

        if (v9)
        {
          [*(a1 + 40) _enApplicationDidUninstall:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __42__ENDaemon__bluetoothMonitorEnsureStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothPowerStateChanged];
}

- (void)_bluetoothMonitorEnsureStopped
{
  if (self->_btMonitorStarted)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _bluetoothMonitorEnsureStopped];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stopPowerMonitoring];

    self->_btMonitorStarted = 0;
  }
}

- (void)bluetoothPowerStateChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained isBluetoothPoweredOn];

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon bluetoothPowerStateChanged];
  }

  [(ENDaemon *)self _scheduleUpdate];
}

- (void)_bluetoothTracingEnsureStarted
{
  v3 = [(ENActiveEntity *)self->_activeEntity entity];
  v4 = [v3 bundleIdentifier];

  v5 = self->_btTracingAppID;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"com.apple.ENDaemon";
  }

  v7 = v6;

  v8 = v7;
  v16 = v8;
  if (v5)
  {
    if (v8 == v5 || ([(NSString *)v8 isEqual:v5]& 1) != 0)
    {
      goto LABEL_24;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v14 = v5;
      v15 = v16;
      LogPrintF_safe();
    }

    [(ENDaemon *)self _bluetoothTracingStop:v14];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [(ENActiveEntity *)self->_activeEntity entity];
  v11 = [v10 region];

  v12 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v13 = [v12 serverConfigurationForRegion:v11];

  if (v13)
  {
    [WeakRetained setRegionServerConfiguration:v13];
  }

  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _bluetoothTracingEnsureStarted];
  }

  if ([WeakRetained startTracingWithAppBundleIdentifier:v16])
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _bluetoothTracingEnsureStarted];
    }
  }

  else
  {
    objc_storeStrong(&self->_btTracingAppID, v6);
  }

  v5 = 0;
LABEL_24:
}

- (void)_bluetoothTracingStop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained stopTracing];

  if (v3 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _bluetoothTracingStop];
  }
}

- (void)_configurationManagerEnsureStarted
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (id)regionForBundleInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"ENDeveloperRegion"];
  if (!v4)
  {
    v5 = *MEMORY[0x277CBED40];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBED40]];

    v4 = [ENConfigurationManager staticRegionForBundleID:v6];
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    if (!v4)
    {
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    v7 = [MEMORY[0x277CC5CA0] regionWithCode:v4];
  }

  else
  {
LABEL_20:
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon regionForBundleInfo:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)fetchServerConfigurationForAppBundleIdentifier:(id)a3 infoDictionary:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon fetchServerConfigurationForAppBundleIdentifier:infoDictionary:];
  }

  v7 = [(ENDaemon *)self regionForBundleInfo:v6];
  if (v7)
  {
    [(ENDaemon *)self startServerConfigurationFetchForRegion:v7];
  }

  else
  {
    [ENDaemon fetchServerConfigurationForAppBundleIdentifier:infoDictionary:];
  }
}

- (void)startServerConfigurationFetchForRegion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke;
  v6[3] = &unk_278FD1760;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ENDaemon *)self fetchServerConfigurationForRegion:v5 completion:v6];
}

void __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) configurationManager];
  v5 = [v4 configurationStore];
  v6 = [v5 configurationForRegion:*(a1 + 40)];

  if (v6)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke_cold_1((a1 + 40));
    }

    [*(a1 + 32) _exposureNotificationRegionConfigurationChanged:v6];
  }

  else
  {
    __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke_cold_2();
  }
}

- (void)fetchServerConfigurationForRegion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v9 = [v8 serverConfigurationForRegion:v6];

  if (v9)
  {
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v11 = [v10 isSensitiveLoggingAllowed];

    if (v11 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon fetchServerConfigurationForRegion:v9 completion:?];
    }

    v7[2](v7, v9, 0);
  }

  else
  {
    configurationManager = self->_configurationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke;
    v13[3] = &unk_278FD17B0;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [(ENConfigurationManager *)configurationManager fetchServerConfigurationsForRegion:v14 userInitiated:0 withCompletion:v13];
  }
}

void __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 224);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2;
  v9[3] = &unk_278FD1788;
  v10 = v4;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(v7, v9);
}

void __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2(uint64_t a1)
{
  v11 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 264) configurationStore];
  v3 = (a1 + 48);
  v4 = [v2 serverConfigurationForRegion:*(a1 + 48)];

  if (v4)
  {
    v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v6 = [v5 isSensitiveLoggingAllowed];

    if (v6 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2_cold_1((a1 + 48), v4);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      if (dword_281346508 > 90)
      {
        goto LABEL_16;
      }

      if (dword_281346508 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v8 = *(a1 + 32);
      }

      v9 = *v3;
      LogPrintF_safe();
      goto LABEL_16;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2_cold_2((a1 + 48));
    }

    v10 = *v3;
    v7 = NSErrorF();

    v11 = v7;
  }

LABEL_16:
  (*(*(a1 + 56) + 16))(*(a1 + 56), v4);
}

- (void)configurationManager:(id)a3 exposureNotificationRegionConfigurationChanged:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__ENDaemon_configurationManager_exposureNotificationRegionConfigurationChanged___block_invoke;
  v8[3] = &unk_278FD1120;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

- (void)configurationManager:(id)a3 errorDetected:(unsigned int)a4
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ENDaemon_configurationManager_errorDetected___block_invoke;
  v5[3] = &unk_278FD17D8;
  v5[4] = self;
  v6 = a4;
  dispatch_async(dispatchQueue, v5);
}

void __47__ENDaemon_configurationManager_errorDetected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:*(a1 + 40)];
}

- (void)_exposureNotificationRegionConfigurationChanged:(id)a3
{
  v5 = a3;
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __60__ENDaemon__exposureNotificationRegionConfigurationChanged___block_invoke;
  v97[3] = &unk_278FD0F90;
  v97[4] = self;
  v6 = MEMORY[0x24C214430](v97);
  v94 = [(ENDaemon *)self activeEntity];
  v7 = [(ENDaemon *)self configurationManager];
  v8 = [v7 configurationStore];

  v9 = [v5 region];
  v10 = [v8 serverConfigurationForRegion:v9];

  v93 = v10;
  v11 = [v10 enEnabled];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    NSStringFromSelector(a2);
    v82 = v11;
    v79 = v83 = v5;
    v81 = v94;
    LogPrintF_safe();
  }

  if (v11)
  {
    v92 = [v5 region];
    [(ENDaemon *)self _updatePhase1ConfigurationIfNeeded:v5];
    if ([v5 enVersion] != 2)
    {
LABEL_108:
      v23 = v92;
      goto LABEL_109;
    }

    v12 = [v5 userConsent];
    v13 = [v12 consent];

    v14 = [v5 userConsent];
    v15 = [v14 differentialPrivacyConsent];

    v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v17 = [v16 isSensitiveLoggingAllowed];

    if (v17 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      if (v13 > 4)
      {
        v18 = "?";
      }

      else
      {
        v18 = off_278FD2090[v13];
      }

      if (v15 > 4)
      {
        v24 = "?";
      }

      else
      {
        v24 = off_278FD2090[v15];
      }

      v79 = v18;
      v81 = v24;
      LogPrintF_safe();
    }

    if (v13 == 2)
    {
      v25 = MEMORY[0x277CBEAA0];
      [v5 creationDateTimeInterval];
      v89 = [v25 dateWithTimeIntervalSince1970:?];
      CFPrefs_GetDouble();
      if (v26 <= 0.0)
      {
        v27 = 2592000.0;
      }

      else
      {
        v27 = v26;
      }

      v28 = [v5 userConsent];
      v29 = [v28 differentialPrivacyConsent];

      if ([v93 telemetryAuthorization])
      {
        v30 = [v94 entity];
        v31 = [v30 region];
        v32 = [v31 isEqual:v92];

        if ((v32 & 1) == 0)
        {
          goto LABEL_107;
        }

        v33 = [MEMORY[0x277CBEAA0] date];
        [v33 timeIntervalSinceDate:v89];
        v35 = v34;

        if (v35 <= v27 || (v29 & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          goto LABEL_107;
        }

        v36 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v37 = [v36 isSensitiveLoggingAllowed];

        if (v37 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v54 = [v5 userConsent];
        [v54 setDifferentialPrivacyConsent:3];

        if ([v8 saveRegionConfiguration:v5 error:0])
        {
          [(ENDaemon *)self postAnalyticsOptInNotificationForRegion:v92];
        }
      }

      else
      {
        v48 = [v5 userConsent];
        [v48 setDifferentialPrivacyConsent:4];

        v96 = 0;
        v49 = [v8 saveRegionConfiguration:v5 error:&v96];
        v50 = v96;
        if ((v49 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }

      if (!v94)
      {
LABEL_107:

        goto LABEL_108;
      }

      v55 = [v94 entity];
      v56 = [v55 region];
      v57 = [v8 agencyConfigurationForRegion:v56];

      v58 = [v57 agencyColor];
      v59 = [v57 agencyHeaderStyle];
      v90 = [v57 agencyHeaderTextColor];
      v88 = [v57 agencyDisplayName];
      v87 = [v57 agencyImageURL];
      v91 = v57;
      v60 = [v57 localizedConfiguration];
      v86 = [v60 regionName];
      v85 = v58;

      v61 = [v57 localizedConfiguration];
      v84 = [v61 agencyTurndownMessage];

      v62 = objc_alloc(MEMORY[0x277CC5C18]);
      v63 = [v94 entity];
      v64 = [v63 bundleIdentifier];
      v65 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:v59];
      v66 = [v94 entity];
      v67 = [v66 region];
      v68 = [v62 initWithBundleID:v64 agencyColor:v85 agencyHeaderStyle:v65 agencyHeaderTextColor:v90 localizedAgencyName:v88 localizedAgencyImageURL:v87 localizedAgencyTurndownMessage:v84 localizedRegionName:v86 region:v67];

      v69 = [v94 entity];
      v70 = v68;
      v71 = v69;
      v72 = v71;
      if (v70 == v71)
      {
      }

      else
      {
        if ((v70 != 0) != (v71 == 0))
        {
          v73 = [v70 isEqual:v71];

          if (v73)
          {
            goto LABEL_67;
          }
        }

        else
        {
        }

        [(ENActiveEntity *)self->_activeEntity setEntity:v70];
        [(ENDaemon *)self _writePreferenceActiveEntity:self->_activeEntity];
      }

LABEL_67:

      v41 = v85;
LABEL_68:

      goto LABEL_104;
    }

    regionMonitor = self->_regionMonitor;
    v95 = 0;
    v39 = [(ENRegionMonitor *)regionMonitor getCurrentRegionVisitWithError:&v95];
    v89 = v95;
    v91 = [v39 region];

    if (v91)
    {
      if ([v91 isEqual:v92])
      {
        v40 = [v8 serverConfigurationForRegion:v92];
        v41 = [v40 appBundleID];

        if (v41 && [v41 length])
        {
          v90 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v41 placeholder:0];
          v42 = [v90 appState];
          if ([v42 isInstalled])
          {

            goto LABEL_38;
          }

          v43 = [v90 appState];
          v44 = [v43 isPlaceholder];

          if (v44)
          {
LABEL_38:
            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            goto LABEL_104;
          }

          if ([(ENActiveEntity *)self->_activeEntity activeStatus]== 2)
          {
            v51 = [(ENActiveEntity *)self->_activeEntity entity];
            v52 = [v51 region];
            v53 = [v91 isEqual:v52];

            if (v53)
            {
              if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_104;
              }

              v88 = [(ENActiveEntity *)self->_activeEntity entity:v79];
              v87 = [v88 bundleIdentifier];
              LogPrintF_safe();
              goto LABEL_68;
            }
          }
        }

        else if ([(ENActiveEntity *)self->_activeEntity activeStatus:v79]>= 1 && [(ENActiveEntity *)self->_activeEntity activeStatus]<= 2)
        {
          v45 = [(ENActiveEntity *)self->_activeEntity entity];
          v46 = [v45 region];
          v47 = [v46 isEqual:v91];

          if (v47)
          {
            [(ENDaemon *)self updateExistingConsentForPhase1ActiveRegion:0];
            CFPrefs_RemoveValue();
            self->_availabilityAlertDisabled = 0;
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            v13 = 0;
          }
        }

        if (self->_availabilityAlertDisabled)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          goto LABEL_105;
        }

        v90 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
        v74 = [v90 isEqual:v92];
        if (v13 == 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = v74;
        }

        if (v75 == 1)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            if (v13 > 4)
            {
              v76 = "?";
            }

            else
            {
              v76 = off_278FD20B8[v13];
            }

            v81 = v76;
            v79 = v92;
            LogPrintF_safe();
          }

          v77 = [ENLoggingPrefs sharedENLoggingPrefs:v79];
          v78 = [v77 isSensitiveLoggingAllowed];

          if (v78 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v80 = v91;
            LogPrintF_safe();
          }

          [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:v91, v80];
          [(ENDaemon *)self onboardingTriggerRetry:0];
        }

        else if (v13 == 3)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
            [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:v91, v92];
          }

          else
          {
            [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:v91, v79];
          }
        }

        else if (!v13)
        {
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            v79 = v92;
            LogPrintF_safe();
          }

          [(ENDaemon *)self startAvailabilityAlertCycleWithBuddy:1, v79];
        }

LABEL_104:

LABEL_105:
LABEL_106:

        goto LABEL_107;
      }

      if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_106;
      }
    }

    else if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_106;
    }

    LogPrintF_safe();
    goto LABEL_106;
  }

  v19 = [ENActiveEntity alloc];
  v20 = objc_alloc(MEMORY[0x277CC5C18]);
  v21 = [v5 region];
  v22 = [v20 initWithBundleID:0 region:v21];
  v23 = [(ENActiveEntity *)v19 initWithEntity:v22 activeStatus:1];

  [(ENDaemon *)self _writePreferenceActiveEntity:v23];
LABEL_109:

  v6[2](v6);
}

- (void)_updatePhase1ConfigurationIfNeeded:(id)a3
{
  p_activeEntity = &self->_activeEntity;
  v6 = self->_activeEntity;
  v7 = a3;
  v8 = [(ENDaemon *)self configurationManager];
  v9 = [v8 configurationStore];

  v10 = [v7 region];
  v11 = [v9 serverConfigurationForRegion:v10];
  v12 = [v11 appBundleID];

  v13 = [v7 enVersion];
  if ((v13 == 1 || -[ENActiveEntity activeStatus](v6, "activeStatus") == 2) && [v12 length])
  {
    v14 = [(ENActiveEntity *)*p_activeEntity entity];
    v15 = [v14 bundleIdentifier];

    if (![v15 length] || !objc_msgSend(v15, "isEqualToString:", v12))
    {
      goto LABEL_24;
    }

    v16 = [(ENActiveEntity *)*p_activeEntity entity];
    v17 = [v16 region];
    if ([v17 isEqual:v10])
    {
      v18 = [(ENActiveEntity *)*p_activeEntity activeStatus];

      if (v18 != 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v19 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v12 placeholder:0];
    if (!v19)
    {
      [ENDaemon _updatePhase1ConfigurationIfNeeded:];
      goto LABEL_24;
    }

    v20 = v19;
    v21 = [v19 bundleIdentifier];
    if (v21)
    {
      if ([(ENDaemon *)self tccAccessForBundleID:v21]== 1)
      {
        v22 = [(ENDaemon *)self _getInfoDictFromAppProxy:v20];
        if (!v22)
        {
          [(ENDaemon *)v21 _updatePhase1ConfigurationIfNeeded:v20];
          goto LABEL_24;
        }

        v23 = v22;
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        v29 = v21;
        if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon _updatePhase1ConfigurationIfNeeded:?];
        }

        v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v25 = [v24 isSensitiveLoggingAllowed];

        if (v25 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v26 = [ENActiveEntity alloc];
        v27 = [objc_alloc(MEMORY[0x277CC5C18]) initWithBundleID:v12 region:v10];
        v28 = [(ENActiveEntity *)v26 initWithEntity:v27 activeStatus:2];

        [(ENDaemon *)self _writePreferenceActiveEntity:v28];
        goto LABEL_23;
      }

      [ENDaemon _updatePhase1ConfigurationIfNeeded:];
    }

    else
    {
      [ENDaemon _updatePhase1ConfigurationIfNeeded:];
    }

LABEL_23:
LABEL_24:
  }
}

- (int64_t)tccAccessForBundleID:(id)a3
{
  v3 = TCCAccessCopyInformationForBundleId();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v6 = Count;
  v7 = 0;
  v8 = MEMORY[0x277D6C0F0];
  v9 = MEMORY[0x277D6C150];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    Value = CFDictionaryGetValue(ValueAtIndex, *v8);
    if (CFEqual(Value, *v9))
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v13 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277D6C0D8]);
  if (v13)
  {
    if (CFBooleanGetValue(v13))
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  CFRelease(v4);
  return v12;
}

- (void)configurationManager:(id)a3 exposureNotificationRegionConfigurationRemovedForRegion:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__ENDaemon_configurationManager_exposureNotificationRegionConfigurationRemovedForRegion___block_invoke;
  v8[3] = &unk_278FD1120;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

- (void)_exposureNotificationRegionConfigurationRemoved:(id)a3
{
  v47 = a3;
  v5 = [(ENDaemon *)self activeEntity];
  if (v5)
  {
    v6 = [(ENDaemon *)self configurationManager];
    v7 = [v6 configurationStore];

    overallStatus = self->_overallStatus;
    v9 = [v5 entity];
    v10 = [v9 region];
    v11 = [v10 isEqual:v47];

    v12 = [v7 configurationForRegion:v47];
    v13 = v12;
    v15 = overallStatus != 4 && v12 == 0;
    v46 = v15;
    v16 = [v5 entity];
    v17 = [v16 bundleIdentifier];
    v18 = [v17 length];

    if (v18)
    {
      v45 = a2;
      v19 = v11;
      v20 = v7;
      v21 = [v5 entity];
      v22 = [v21 bundleIdentifier];

      v23 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v22 placeholder:0];
      v24 = [v23 entitlementValueForKey:@"com.apple.developer.exposure-notification-test" ofClass:objc_opt_class()];
      v25 = [v24 BOOLValueSafe];

      v26 = overallStatus == 4;
      if (v26 && v13)
      {
        v27 = [v13 userConsent];
        v26 = [v27 consent] == 2;
      }

      v7 = v20;
      v11 = v19;
      a2 = v45;
    }

    else
    {
      if (!v13)
      {
        v25 = 0;
        v26 = v11;
        goto LABEL_17;
      }

      v22 = [v13 userConsent];
      v25 = 0;
      v26 = ([v22 consent] == 2) & v11;
    }

LABEL_17:
    v28 = v46 & v11;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v29 = NSStringFromSelector(a2);
      v30 = v29;
      v31 = self->_overallStatus;
      if (v31 > 6)
      {
        v32 = "?";
      }

      else
      {
        v32 = off_278FD20E0[v31];
      }

      v33 = "no";
      if (v26)
      {
        v34 = "yes";
      }

      else
      {
        v34 = "no";
      }

      if (v28)
      {
        v35 = "yes";
      }

      else
      {
        v35 = "no";
      }

      if (v25)
      {
        v33 = "yes";
      }

      v39 = v32;
      v40 = v13;
      v37 = v29;
      activeEntity = self->_activeEntity;
      v43 = v35;
      v44 = v33;
      v41 = v47;
      v42 = v34;
      LogPrintF_safe();

      if (v26)
      {
        goto LABEL_23;
      }
    }

    else if (v26)
    {
LABEL_23:
      [(ENDaemon *)self updateExistingConsentForPhase1ActiveRegion:0, v37, activeEntity, v39, v40, v41, v42, v43, v44];
      [(ENDaemon *)self _turnOffEN];
LABEL_24:
      [(ENDaemon *)self postENOffNotification:v37];
LABEL_25:

      goto LABEL_26;
    }

    if (v25 & 1 | ((v28 & 1) == 0))
    {
      goto LABEL_25;
    }

    if ((v11 ^ 1))
    {
      goto LABEL_25;
    }

    CFPrefs_RemoveValue();
    v36 = [v5 activeStatus];
    [v5 setActiveStatus:1];
    [(ENDaemon *)self _writePreferenceActiveEntity:v5];
    [(ENDaemon *)self prefsChanged];
    if (v36 < 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  [ENDaemon _exposureNotificationRegionConfigurationRemoved:];
LABEL_26:
}

- (void)configurationManager:(id)a3 didResolveCurrentRegion:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = v6;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon configurationManager:didResolveCurrentRegion:];
    }

    [(ENDaemon *)self onboardingTriggerRetry:0];
    v6 = v7;
  }
}

- (id)getExposureDatabaseAndReturnError:(id *)a3
{
  exposureDatabase = self->_exposureDatabase;
  if (!exposureDatabase)
  {
    CFStringGetTypeID();
    v6 = CFPrefs_CopyTypedValue();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = ENDataVaultPath();
      v8 = [v9 stringByAppendingPathComponent:@"Exposure"];
    }

    v10 = [ENExposureDatabase alloc];
    v11 = [MEMORY[0x277CBEBC8] fileURLWithPath:v8];
    v12 = [(ENExposureDatabase *)v10 initWithDirectoryURL:v11];
    v13 = self->_exposureDatabase;
    self->_exposureDatabase = v12;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__ENDaemon_getExposureDatabaseAndReturnError___block_invoke;
    v20[3] = &unk_278FD1800;
    v20[4] = self;
    [(ENExposureDatabase *)self->_exposureDatabase setErrorMetricReporter:v20];

    exposureDatabase = self->_exposureDatabase;
  }

  if ([(ENExposureDatabase *)exposureDatabase isOpen])
  {
    goto LABEL_9;
  }

  v14 = self->_exposureDatabase;
  v19 = 0;
  v15 = [(ENExposureDatabase *)v14 openWithError:&v19];
  v16 = v19;
  if (v15)
  {

LABEL_9:
    v17 = self->_exposureDatabase;
    goto LABEL_10;
  }

  [(ENDaemon *)a3 getExposureDatabaseAndReturnError:v16];
  v17 = 0;
LABEL_10:

  return v17;
}

void __46__ENDaemon_getExposureDatabaseAndReturnError___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:a2];
}

void __45__ENDaemon__schedulePeriodicPersistencePurge__block_invoke(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ENDaemon__schedulePeriodicPersistencePurge__block_invoke_2;
  block[3] = &unk_278FD0F90;
  v2 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v3 = a2;
  dispatch_sync(v2, block);
  v3[2](v3, 1);
}

- (void)_differentialPrivacyEnsureStarted
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (unsigned)_getLatestExposureForDifferentialPrivacy
{
  v20 = 0;
  v2 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v20];
  v3 = v20;
  v4 = v3;
  if (v2)
  {
    v19 = 0;
    v18 = v3;
    v5 = [v2 getValue:&v19 forKey:@"LastExposureNotification" ofClass:objc_opt_class() error:&v18];
    v6 = v19;
    v7 = v18;

    if (v5)
    {
      if (v6)
      {
        v8 = [v6 classification];
        v9 = [v8 index];

        v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v11 = [v10 isSensitiveLoggingAllowed];

        if (v11 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon _getLatestExposureForDifferentialPrivacy];
        }

        v12 = v9 + 1;
      }

      else
      {
        v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v17 = [v16 isSensitiveLoggingAllowed];

        if (v17 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon _getLatestExposureForDifferentialPrivacy];
        }

        v6 = 0;
        v12 = 1;
      }

      goto LABEL_18;
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _getLatestExposureForDifferentialPrivacy];
    }
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v14 = [v13 isSensitiveLoggingAllowed];

  if (v14 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _getLatestExposureForDifferentialPrivacy];
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)_getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:(id)a3
{
  v5 = [a3 BOOLValue];
  v23 = 0;
  v6 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    v16 = 0;
    v11 = v7;
    goto LABEL_12;
  }

  v22 = 0;
  v21 = v7;
  v9 = [v6 getValue:&v22 forKey:@"LastExposureNotification" ofClass:objc_opt_class() error:&v21];
  v10 = v22;
  v11 = v21;

  if ((v9 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:];
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = [v10 classification];
  v13 = [v12 date];
  v14 = ENDefaultExpirationDate();

  v15 = [MEMORY[0x277CBEAA0] date];
  v16 = [v15 compare:v14] == -1;

LABEL_11:
LABEL_12:
  v17 = malloc_type_calloc(0xFuLL, 1uLL, 0x100004077774924uLL);
  if (v17)
  {
    *v17 = 1;
    if (a3)
    {
      if (v5)
      {
        v17[1] = 1;
        if (v16)
        {
          v17[6] = 1;
          v18 = 7;
        }

        else
        {
          v17[3] = 1;
          v18 = 4;
        }
      }

      else
      {
        v17[2] = 1;
        if (v16)
        {
          v17[6] = 1;
          v18 = 8;
        }

        else
        {
          v17[3] = 1;
          v18 = 5;
        }
      }
    }

    else
    {
      v18 = 3;
      if (v16)
      {
        v18 = 6;
      }
    }

    v17[v18] = 1;
    v19 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:? length:?];
  }

  else
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:];
    }

    v19 = 0;
  }

  return v19;
}

- (unsigned)stateMetricVersion
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = self->_activeEntity;
  prefEnabled = self->_prefEnabled;
  prefServerForceDisable = self->_prefServerForceDisable;
  if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (prefEnabled)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (prefServerForceDisable)
    {
      v6 = "yes";
    }

    v47 = v7;
    v48 = v6;
    v46 = v3;
    LogPrintF_safe();
  }

  if (!prefServerForceDisable)
  {
LABEL_28:
    if (prefEnabled && !prefServerForceDisable && v3)
    {
      v16 = [(ENActiveEntity *)v3 activeStatus];
      if (v16 == 3)
      {
        v15 = 4;
        goto LABEL_76;
      }

      if (v16 == 2)
      {
        v17 = [(ENActiveEntity *)v3 entity];
        v18 = [v17 bundleIdentifier];

        if (v18)
        {
          v19 = [MEMORY[0x277CC1E68] applicationProxyForIdentifier:v18 placeholder:0];
          v20 = v19;
          if (v19)
          {
            v21 = [v19 bundleURL];
            if (v21)
            {
              v22 = [MEMORY[0x277CCA8D0] bundleWithURL:v21];
              v23 = v22;
              if (v22)
              {
                v24 = [v22 infoDictionary];
                if (v24)
                {
                  v57 = 0;
                  Int64Ranged = CFDictionaryGetInt64Ranged();
                  if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe();
                  }

                  if (Int64Ranged < 2)
                  {
                    v15 = 2;
                  }

                  else
                  {
                    v15 = 3;
                  }
                }

                else
                {
                  [(ENDaemon *)&v57 stateMetricVersion];
                  v15 = v57;
                }
              }

              else
              {
                [(ENDaemon *)&v57 stateMetricVersion];
                v15 = v57;
              }
            }

            else
            {
              [(ENDaemon *)&v57 stateMetricVersion];
              v15 = v57;
            }
          }

          else
          {
            [(ENDaemon *)&v57 stateMetricVersion];
            v15 = v57;
          }
        }

        else
        {
          [(ENDaemon *)&v57 stateMetricVersion];
          v15 = v57;
        }

        goto LABEL_76;
      }

LABEL_66:
      v15 = 1;
      goto LABEL_76;
    }

    v26 = [(ENRegionMonitor *)self->_regionMonitor getCurrentRegionVisitWithError:0, v46, v47];
    v27 = [v26 region];

    if (v27)
    {
      v28 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
      v29 = [v28 configurationForRegion:v27];

      v30 = [v29 userConsent];
      v31 = [v30 consent];

      if (v31)
      {
        v32 = [v29 userConsent];

        if (v32)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }
    }

LABEL_48:
    v33 = objc_autoreleasePoolPush();
    v34 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v35 = [v34 allRegionConfigurations];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v36 = v35;
    v32 = [v36 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v32)
    {
      v37 = *v50;
      while (2)
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v50 != v37)
          {
            objc_enumerationMutation(v36);
          }

          v39 = *(*(&v49 + 1) + 8 * i);
          v40 = [v39 userConsent];
          v41 = [v40 consent];

          if (v41)
          {
            v32 = [v39 userConsent];
            goto LABEL_58;
          }
        }

        v32 = [v36 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:

    objc_autoreleasePoolPop(v33);
    if (!v32)
    {
      goto LABEL_66;
    }

LABEL_59:
    v42 = [v32 consent];
    if (v42 == 3)
    {
      v43 = 7;
    }

    else
    {
      v43 = 1;
    }

    if (v42 == 1)
    {
      v15 = 8;
    }

    else
    {
      v15 = v43;
    }

    goto LABEL_76;
  }

  v8 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v9 = [v8 allRegionServerConfigurations];

  if (v9)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (([*(*(&v53 + 1) + 8 * j) enEnabled] & 1) == 0)
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              [ENDaemon stateMetricVersion];
            }

            goto LABEL_28;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon stateMetricVersion];
    }

    v15 = 6;
  }

  else
  {
    [(ENDaemon *)&v57 stateMetricVersion];
    v15 = v57;
  }

LABEL_76:

  v44 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_exposureManagersEnsureStarted
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __42__ENDaemon__exposureManagersEnsureStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:a2];
}

- (void)exposureDetectionManager:(id)a3 finishedSessionWithResult:(id)a4
{
  v16 = a4;
  differentialPrivacyManager = self->_differentialPrivacyManager;
  v6 = [v16 summary];
  [(ENDifferentialPrivacyManager *)differentialPrivacyManager reportUserRiskScoreWithSummary:v6];

  v7 = self->_differentialPrivacyManager;
  v8 = [v16 differentialPrivacyRiskParameters];
  [(ENDifferentialPrivacyManager *)v7 reportUserRiskParameters:v8];

  v9 = self->_differentialPrivacyManager;
  v10 = [v16 differentialPrivacyBeaconCount];
  [(ENDifferentialPrivacyManager *)v9 reportUserBeaconCount:v10];

  v11 = [v16 exposureClassificationStatus];
  v12 = [v16 exposureClassification];
  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v14 = [v13 isSensitiveLoggingAllowed];

  if (v14 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon exposureDetectionManager:v12 finishedSessionWithResult:?];
  }

  if (v11 >= 2)
  {
    v15 = [v16 region];
    if (v15)
    {
      [(ENDaemon *)self _postExposureNotificationForClassification:v12 status:v11 region:v15];
    }

    else
    {
      [ENDaemon exposureDetectionManager:finishedSessionWithResult:];
    }
  }
}

- (id)activeRegionForExposureDetectionManager:(id)a3
{
  v3 = [(ENActiveEntity *)self->_activeEntity entity];
  v4 = [v3 region];

  return v4;
}

- (BOOL)_postExposureNotificationForClassification:(id)a3 status:(int64_t)a4 region:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v11 = [v10 configurationForRegion:v9];
  if ([v11 enVersion] <= 1)
  {
    [ENDaemon _postExposureNotificationForClassification:v11 status:&v51 region:?];
    v41 = v51;
    goto LABEL_31;
  }

  v12 = [v10 agencyConfigurationForRegion:v9];
  if (!v12)
  {
    [ENDaemon _postExposureNotificationForClassification:? status:? region:?];
    v41 = v51;
    goto LABEL_30;
  }

  v46 = v11;
  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v14 = [v13 isSensitiveLoggingAllowed];

  if (v14 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _postExposureNotificationForClassification:v8 status:? region:?];
  }

  v48 = v12;
  v47 = [v12 localizedConfiguration];
  v15 = objc_alloc_init(MEMORY[0x277CC5C68]);
  [v15 setClassification:v8];
  v16 = [MEMORY[0x277CCAD70] UUID];
  [v15 setIdentifier:v16];

  v17 = [MEMORY[0x277CBEAA0] date];
  [v15 setNotificationDate:v17];

  [v15 setRegion:v9];
  v18 = [v8 date];
  [v18 timeIntervalSinceNow];
  v20 = v19;

  v21 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v22 = [v21 isSensitiveLoggingAllowed];

  if (v22 && _MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v44 = (v20 / -86400.0);
    v43 = -v20;
    LogPrintF_safe();
  }

  -[ENDifferentialPrivacyManager reportUserExposureNotificationWithClassificationIndex:daysDelay:](self->_differentialPrivacyManager, "reportUserExposureNotificationWithClassificationIndex:daysDelay:", [v8 index], (v20 / -86400.0));
  if (a4 == 3)
  {
    v23 = v47;
    v32 = [v47 revokedNotificationBody];
    if (!v32)
    {
      [ENDaemon _postExposureNotificationForClassification:? status:? region:?];
      v41 = v51;
LABEL_42:
      v12 = v48;
      goto LABEL_29;
    }

    v25 = v32;
    v33 = [v47 revokedNotificationSubject];
    if (v33)
    {
      v27 = v33;
      v45 = v10;
      v34 = [v48 revokedClassificationURL];
      [v15 setLearnMoreURL:v34];

      [v15 setLocalizedBodyText:v25];
      [v15 setLocalizedSubjectText:v27];
      [v15 setRevoked:1];
LABEL_20:

      v50 = 0;
      v35 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v50];
      v36 = v50;
      v37 = [v15 notificationDate];
      v38 = ENDefaultExpirationDate();
      v49 = v36;
      v39 = [v35 setValue:v15 forKey:@"LastExposureNotification" expiryDate:v38 error:&v49];
      v40 = v49;

      if ((v39 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon _postExposureNotificationForClassification:status:region:];
      }

      [(ENDaemon *)self postExposureNotification:v15];

      v41 = 1;
      v10 = v45;
      v23 = v47;
      v12 = v48;
      goto LABEL_29;
    }

    [ENDaemon _postExposureNotificationForClassification:v25 status:? region:?];
LABEL_41:
    v41 = 0;
    goto LABEL_42;
  }

  v23 = v47;
  v12 = v48;
  if (a4 != 2)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _postExposureNotificationForClassification:status:region:];
    }

    v41 = 0;
    goto LABEL_29;
  }

  v24 = [v8 name];
  if (v24)
  {
    v25 = v24;
    v26 = [v47 notificationConfigurationForName:v24];
    if (v26)
    {
      v27 = v26;
      v45 = v10;
      v28 = [v26 classificationURL];
      [v15 setLearnMoreURL:v28];

      v29 = [v27 localizedNotificationBody];
      [v15 setLocalizedBodyText:v29];

      v30 = [v27 localizedNotificationSubject];
      [v15 setLocalizedSubjectText:v30];

      v31 = [v27 localizedExposureDetailBody];
      [v15 setLocalizedDetailBodyText:v31];

      goto LABEL_20;
    }

    [ENDaemon _postExposureNotificationForClassification:v25 status:v8 region:?];
    goto LABEL_41;
  }

  [ENDaemon _postExposureNotificationForClassification:? status:? region:?];
  v41 = v51;
LABEL_29:

  v11 = v46;
LABEL_30:

LABEL_31:
  return v41;
}

- (void)onboardingManagerDidObserveDeviceUnlock:(id)a3
{
  v4 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon onboardingManagerDidObserveDeviceUnlock:?];
  }

  v5 = [(ENDaemon *)self onboardingManager];
  if ([v5 isDeviceUnlocked] && v4)
  {
    v6 = [(ENDaemon *)self onboardingManager];
    v7 = [v6 pendingBuddyOnboarding];

    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__ENDaemon_onboardingManagerDidObserveDeviceUnlock___block_invoke_2;
      v8[3] = &unk_278FD1898;
      v8[4] = self;
      [(ENDaemon *)self presentBuddyForRegion:v4 errorHandler:&__block_literal_global_3 completionHandler:v8];
    }
  }

  else
  {
  }
}

uint64_t __52__ENDaemon_onboardingManagerDidObserveDeviceUnlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) onboardingManager];
  v3 = [v2 isIdealTimeForBuddy];

  v4 = [*(a1 + 32) onboardingManager];
  [v4 setShouldObserveDeviceUnlocks:v3 ^ 1];

  v5 = [*(a1 + 32) onboardingManager];
  [v5 setPendingBuddyOnboarding:v3 ^ 1];

  return v3;
}

- (void)textMessageManager:(id)a3 errorDetected:(unsigned int)a4
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ENDaemon_textMessageManager_errorDetected___block_invoke;
  v5[3] = &unk_278FD17D8;
  v5[4] = self;
  v6 = a4;
  dispatch_async(dispatchQueue, v5);
}

void __45__ENDaemon_textMessageManager_errorDetected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  [WeakRetained sendErrorMetricWithType:*(a1 + 40)];
}

- (id)legacyHistoryPath
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained bluetoothSystemContainerURL];

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:@"Library/ExposureNotification"];
    v5 = [v4 URLByAppendingPathComponent:@"DetectionHistory.plist"];
    v6 = [v5 path];
  }

  else
  {
    [(ENDaemon *)&v8 legacyHistoryPath];
    v6 = v8;
  }

  return v6;
}

- (id)loadLegacyHistorySinceTime:(double)a3
{
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__3;
  v55 = __Block_byref_object_dispose__3;
  v56 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __39__ENDaemon_loadLegacyHistorySinceTime___block_invoke;
  v50[3] = &unk_278FD10F8;
  v50[4] = &v51;
  v5 = MEMORY[0x24C214430](v50, a2);
  v6 = [(ENDaemon *)self legacyHistoryPath];
  v47 = v6;
  if (!v6)
  {
    goto LABEL_64;
  }

  v7 = [MEMORY[0x277CCAA08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (!v8)
  {
    goto LABEL_64;
  }

  v9 = open_dprotected_np([v6 fileSystemRepresentation], 0, 2, 0, 384);
  v10 = v9;
  if (v9 < 0)
  {
    if (!*__error() || *__error())
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        v38 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      goto LABEL_64;
    }

    v18 = ENErrorF();
    goto LABEL_20;
  }

  v46 = v5;
  if (lseek(v9, 0, 0))
  {
    v41 = *__error();
    v18 = ENErrorF();
LABEL_20:
    v19 = v52[5];
    v52[5] = v18;

    goto LABEL_64;
  }

  memset(&v49, 0, sizeof(v49));
  if (fstat(v10, &v49))
  {
    v42 = *__error();
    v34 = ENErrorF();
LABEL_72:
    v23 = 0;
    v45 = v52[5];
    v52[5] = v34;

    goto LABEL_65;
  }

  st_size = v49.st_size;
  if (v49.st_size > 0x8000)
  {
    v34 = ENErrorF();
    goto LABEL_72;
  }

  if (v49.st_size < 1)
  {
LABEL_64:
    v23 = 0;
    goto LABEL_65;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB20]) initWithLength:v49.st_size];
  v13 = [v12 mutableBytes];
  v14 = &v13[st_size];
  v44 = v12;
  do
  {
    v15 = read(v10, v13, v14 - v13);
    if (!v15)
    {
      break;
    }

    if (v15 <= 0)
    {
      v40 = *__error();
      v33 = ENErrorF();
      v23 = 0;
      v43 = v52[5];
      v52[5] = v33;
      goto LABEL_60;
    }

    v13 += v15;
  }

  while (v13 < v14);
  v16 = v52;
  obj = 0;
  v17 = [MEMORY[0x277CCAC50] propertyListWithData:v12 options:0 format:0 error:&obj];
  objc_storeStrong(v16 + 5, obj);
  v43 = v17;
  if (!v17)
  {
    v35 = v52[5];
    v36 = ENNestedErrorF();
LABEL_75:
    v23 = 0;
    v31 = v52[5];
    v52[5] = v36;
    goto LABEL_58;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = ENErrorF();
    goto LABEL_75;
  }

  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || _LogCategory_Initialize())
    {
      v37 = COERCE_DOUBLE([v17 count]);
      LogPrintF_safe();
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v37 = a3;
      LogPrintF_safe();
    }
  }

  v20 = [v17 mutableCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB10]);
  }

  v23 = v22;

  v24 = [v23 count];
  v25 = v24;
  if (v24 >= 0x65)
  {
    do
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v26 = [v23 objectAtIndexedSubscript:0];
        v39 = CUPrintNSObjectOneLine();
        LogPrintF_safe();
      }

      [v23 removeObjectAtIndex:{0, v39}];
      --v25;
    }

    while (v25 > 0x64);
    v25 = 100;
    goto LABEL_40;
  }

  if (v24)
  {
LABEL_40:
    v27 = 0;
    do
    {
      v28 = [v23 objectAtIndexedSubscript:v27];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (CFDictionaryGetDouble(), v29 >= a3))
      {
        ++v27;
      }

      else
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          v39 = CUPrintNSObjectOneLine();
          LogPrintF_safe();
        }

        [v23 removeObjectAtIndex:{v27, v39}];
        --v25;
      }
    }

    while (v27 < v25);
  }

  if (_MergedGlobals < 31 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [v23 count];
    LogPrintF_safe();
  }

  if (close(v10))
  {
    v5 = v46;
    if (dword_281346508 > 90)
    {
      goto LABEL_61;
    }

    if (dword_281346508 != -1 || _LogCategory_Initialize())
    {
      v30 = *__error();
      v31 = CUPrintErrorCode();
      LogPrintF_safe();
LABEL_58:
    }
  }

LABEL_60:
  v5 = v46;
LABEL_61:

LABEL_65:
  v5[2](v5);

  _Block_object_dispose(&v51, 8);

  return v23;
}

void __39__ENDaemon_loadLegacyHistorySinceTime___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (id)loadHistorySinceTime:(double)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__ENDaemon_loadHistorySinceTime___block_invoke;
  v15[3] = &unk_278FD10F8;
  v15[4] = &v16;
  v5 = MEMORY[0x24C214430](v15, a2);
  v6 = v17;
  obj = v17[5];
  v7 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v9 = v17;
    v13 = v17[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__ENDaemon_loadHistorySinceTime___block_invoke_2;
    v12[3] = &unk_278FD18E8;
    *&v12[7] = a3;
    v12[5] = v8;
    v12[6] = &v16;
    v12[4] = v7;
    [v7 enumerateExposureDetectionHistorySessionsWithError:&v13 handler:v12];
    objc_storeStrong(v9 + 5, v13);
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v5[2](v5);
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __33__ENDaemon_loadHistorySinceTime___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && dword_281346508 <= 90)
  {
    if (dword_281346508 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF_safe();
  }
}

void __33__ENDaemon_loadHistorySinceTime___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB30];
  v4 = a2;
  v14 = objc_alloc_init(v3);
  v5 = [v4 sourceAppBundleIdentifier];
  [v14 setObject:v5 forKeyedSubscript:@"bundleID"];

  v6 = [v4 fileHash];
  [v14 setObject:v6 forKeyedSubscript:@"hash"];

  v7 = [v4 keyCount];
  [v14 setObject:v7 forKeyedSubscript:@"keyCount"];

  v8 = [v4 matchCount];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &unk_285D6E408;
  }

  [v14 setObject:v10 forKeyedSubscript:@"matchCount"];

  v11 = MEMORY[0x277CCABA8];
  v12 = [v4 processDate];

  [v12 timeIntervalSinceReferenceDate];
  v13 = [v11 numberWithDouble:?];
  [v14 setObject:v13 forKeyedSubscript:@"time"];

  [*(a1 + 32) insertObject:v14 atIndex:0];
}

- (void)startAvailabilityAlertCycleWithBuddy:(BOOL)a3
{
  v3 = a3;
  [(ENDaemon *)self onboardingTriggerDeactivate];
  v5 = [(ENDaemon *)self regionMonitor];
  v20 = 0;
  v6 = [v5 getCurrentRegionVisitWithError:&v20];
  v7 = v20;
  v8 = [v6 region];

  if (v8)
  {
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v10 = [v9 isSensitiveLoggingAllowed];

    if (v10 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v11 = "no";
      if (v3)
      {
        v11 = "yes";
      }

      v18 = v8;
      v19 = v11;
      LogPrintF_safe();
    }

    [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:v8, v18, v19];
    [(ENDaemon *)self postOnboardingNotificationForRegion:v8];
    Int64 = CFPrefs_GetInt64();
    if (v3 && !Int64)
    {
      activeEntity = self->_activeEntity;
      if (!activeEntity || [(ENActiveEntity *)activeEntity activeStatus]<= 2)
      {
        if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          [ENDaemon startAvailabilityAlertCycleWithBuddy:];
        }

        v14 = [(ENDaemon *)self onboardingManager];
        [v14 setShouldObserveDeviceUnlocks:1];

        v15 = [(ENDaemon *)self onboardingManager];
        v16 = [v15 isDeviceUnlocked];

        if ((v16 & 1) == 0)
        {
          v17 = [(ENDaemon *)self onboardingManager];
          [v17 setPendingBuddyOnboarding:1];
        }
      }
    }

    if (!CFPrefs_GetInt64())
    {
      [(ENDaemon *)self onboardingTriggerRetry:2];
    }
  }

  else
  {
    [ENDaemon startAvailabilityAlertCycleWithBuddy:];
  }
}

- (void)onboardingTriggerRetry:(unsigned int)a3
{
  if (a3)
  {
    CFPrefs_GetDouble();
    if (v5 == 0.0)
    {
      v6 = [MEMORY[0x277CBEAA0] date];
      v7 = [MEMORY[0x277CBEA88] currentCalendar];
      v8 = objc_alloc_init(MEMORY[0x277CBEAB0]);
      [v8 setDay:a3];
      v9 = [v7 dateByAddingComponents:v8 toDate:v6 options:2];
      v10 = [v7 dateBySettingUnit:32 value:10 ofDate:v9 options:0];
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
    }

    v12 = [(ENDaemon *)self onboardingTimer];
    [v12 invalidate];

    [(ENDaemon *)self setOnboardingTimer:0];
  }

  else
  {
    [(ENDaemon *)self timeForAvailabilityAlertCycleReset];
    if (v11 == 0.0)
    {
      CFPrefs_RemoveValue();
      v10 = 0;
      goto LABEL_28;
    }

    v20 = v11;
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon onboardingTriggerRetry:];
    }

    v10 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:v20];
    [(ENDaemon *)self onboardingTriggerDeactivate];
    v21 = [(ENDaemon *)self regionMonitor];
    v26 = 0;
    v22 = [v21 getCurrentRegionVisitWithError:&v26];
    v23 = v26;
    v24 = [v22 region];

    if (!v24)
    {
      [ENDaemon onboardingTriggerRetry:v23];
      goto LABEL_28;
    }

    [(ENDaemon *)self _writePreferenceRegionPendingOnboarding:v24];
  }

  if ([(ENDaemon *)self isOnboardingNeeded])
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon onboardingTriggerRetry:];
    }

    if (a3 == 2 || a3 == 5)
    {
      CFPrefs_SetInt64();
      [v10 timeIntervalSince1970];
      CFPrefs_SetDouble();
    }

    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || _LogCategory_Initialize())
      {
        [ENDaemon onboardingTriggerRetry:];
      }

      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        [ENDaemon onboardingTriggerRetry:];
      }
    }

    [v10 timeIntervalSinceNow];
    v14 = v13;
    v15 = 7200.0;
    if (IsAppleInternalBuild())
    {
      CFPrefs_GetDouble();
      if (a3)
      {
        if (v16 > 0.0)
        {
          CFPrefs_GetDouble();
          v14 = v17;
          v15 = 30.0;
          if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            [ENDaemon onboardingTriggerRetry:];
          }
        }
      }
    }

    v18 = [ENXPCTimer alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __35__ENDaemon_onboardingTriggerRetry___block_invoke;
    v25[3] = &unk_278FD1580;
    v25[4] = self;
    v19 = [(ENXPCTimer *)v18 initWithName:@"com.apple.exposurenotification.onboarding.retry" delay:1 gracePeriod:577 priority:v25 options:v14 block:v15];
    [(ENDaemon *)self setOnboardingTimer:v19];
  }

  else
  {
    [(ENDaemon *)v10 onboardingTriggerRetry:?];
    v10 = v27;
  }

LABEL_28:
}

void __35__ENDaemon_onboardingTriggerRetry___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 onboardingManager];
  [v6 setShouldObserveDeviceUnlocks:0];

  v7 = [*v4 onboardingManager];
  [v7 setPendingBuddyOnboarding:0];

  v8 = [*v4 regionMonitor];
  v9 = [v8 getCurrentRegionVisitWithError:0];
  v10 = [v9 region];

  v11 = [*v4 _readPreferenceRegionPendingOnboarding];
  if (([v11 isEqual:v10] & 1) == 0)
  {
    __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_2();
    goto LABEL_22;
  }

  if (([*v4 isOnboardingNeeded] & 1) == 0)
  {
    __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_3(v4);
    goto LABEL_22;
  }

  v12 = [*v4 userNotificationCenter];
  v19[0] = @"com.apple.ExposureNotification.onboarding";
  v13 = [MEMORY[0x277CBEA68] arrayWithObjects:v19 count:1];
  [v12 removeDeliveredNotificationsWithIdentifiers:v13];

  [*v4 postOnboardingNotificationForRegion:v11];
  Int64 = CFPrefs_GetInt64();
  v15 = CFPrefs_GetInt64();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  switch(v15)
  {
    case 2:
      if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_4();
      }

      v17 = *MEMORY[0x277CBED18];
      goto LABEL_21;
    case 1:
      if (Int64)
      {
        break;
      }

      [*v4 onboardingTriggerRetry:5];
      if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_5();
      }

      v16 = *MEMORY[0x277CBED20];
LABEL_21:
      CFPrefs_SetValue();
      break;
    case 0:
      if (!Int64)
      {
        [*v4 onboardingTriggerRetry:2];
      }

      CFPrefs_RemoveValue();
      break;
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)onboardingTriggerResumeIfNeeded
{
  v0 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
  LogPrintF_safe();
}

- (void)onboardingTriggerDeactivate
{
  if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon onboardingTriggerDeactivate];
  }

  v3 = [(ENDaemon *)self onboardingManager];
  [v3 setShouldObserveDeviceUnlocks:0];

  v4 = [(ENDaemon *)self onboardingManager];
  [v4 setPendingBuddyOnboarding:0];

  v5 = [(ENDaemon *)self onboardingTimer];
  [v5 invalidate];

  [(ENDaemon *)self setOnboardingTimer:0];
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();

  CFPrefs_RemoveValue();
}

- (double)timeForAvailabilityAlertCycleReset
{
  if ([(ENDaemon *)self isOnboardingNeeded])
  {
    regionMonitor = self->_regionMonitor;
    v28 = 0;
    v4 = [(ENRegionMonitor *)regionMonitor getCurrentRegionVisitWithError:&v28];
    v5 = v28;
    v6 = [v4 region];

    if (!v6)
    {
      [(ENDaemon *)v5 timeForAvailabilityAlertCycleReset];
      v26 = v29;
      goto LABEL_31;
    }

    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon timeForAvailabilityAlertCycleReset];
    }

    v7 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v8 = [v7 configurationForRegion:v6];

    if ([v8 enVersion] <= 1)
    {
      [(ENDaemon *)v8 timeForAvailabilityAlertCycleReset];
    }

    else
    {
      v9 = [v8 userConsent];
      v10 = [v9 consent];

      if (v10 != 2)
      {
        v11 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
        v12 = [v11 serverConfigurationForRegion:v6];

        if (v12)
        {
          [v12 timeToResetAvailabilityAlert];
          v14 = v13;
          v15 = [MEMORY[0x277CBEAA0] now];
          [v15 timeIntervalSince1970];
          v17 = v16;

          CFPrefs_GetDouble();
          if (v18 > 0.0)
          {
            v19 = v18;
            if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              [ENDaemon timeForAvailabilityAlertCycleReset];
            }

            v14 = v17 + v19;
          }

          if (v14 > v17)
          {
            v20 = [(ENDaemon *)self onboardingTimer];

            if (v20)
            {
              Int64 = CFPrefs_GetInt64();
              v22 = [(ENDaemon *)self onboardingTimer];
              v23 = [v22 date];
              [v23 timeIntervalSince1970];
              v25 = v24;

              if (Int64 < 1)
              {
                if (v25 == v14)
                {
                  v26 = 0.0;
                  if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    [ENDaemon timeForAvailabilityAlertCycleReset];
                  }

                  goto LABEL_29;
                }
              }

              else if (v25 < v14)
              {
                v26 = 0.0;
                if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                {
                  [(ENDaemon *)self timeForAvailabilityAlertCycleReset];
                }

                goto LABEL_29;
              }
            }

            v26 = v14;
LABEL_29:

LABEL_30:
LABEL_31:

            return v26;
          }

          [(ENDaemon *)v14 timeForAvailabilityAlertCycleReset];
        }

        else
        {
          [(ENDaemon *)v6 timeForAvailabilityAlertCycleReset];
        }

        v26 = v29;
        goto LABEL_29;
      }

      [(ENDaemon *)v6 timeForAvailabilityAlertCycleReset];
    }

    v26 = v29;
    goto LABEL_30;
  }

  [(ENDaemon *)self onboardingTriggerDeactivate];
  CFPrefs_RemoveValue();
  return 0.0;
}

- (BOOL)isOnboardingNeeded
{
  if (self->_availabilityAlertDisabled)
  {
    [(ENDaemon *)&v19 isOnboardingNeeded];
    return v19;
  }

  else
  {
    v3 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
    if (v3)
    {
      v4 = [(ENDaemon *)self configurationManager];
      v5 = [v4 configurationStore];
      v6 = [v5 configurationForRegion:v3];

      if (v6)
      {
        v7 = [(ENDaemon *)self configurationManager];
        v8 = [v7 configurationStore];
        v9 = [v8 serverConfigurationForRegion:v3];

        v10 = [v9 resetAvailabilityAlertForDeclinedUsers];
        v11 = [v6 userConsent];
        v12 = [v11 consent];

        if (v12 == 2 || v12 == 1 && (v10 & 1) == 0)
        {
          v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v15 = [v14 isSensitiveLoggingAllowed];

          if (v15 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
          {
            [ENDaemon isOnboardingNeeded];
          }

          [(ENDaemon *)self onboardingTriggerDeactivate];
          v13 = 0;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        [(ENDaemon *)&v17 isOnboardingNeeded];
        v13 = v17;
      }
    }

    else
    {
      [(ENDaemon *)&v18 isOnboardingNeeded];
      v13 = v18;
    }
  }

  return v13;
}

- (void)_regionMonitorEnsureStarted
{
  v1 = [*a1 getCurrentRegionVisitWithError:0];
  LogPrintF_safe();
}

- (void)_regionMonitorEnsureStopped
{
  if (self->_regionMonitor)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _regionMonitorEnsureStopped];
    }

    regionMonitor = self->_regionMonitor;
    self->_regionMonitor = 0;
  }
}

- (void)_networkProxyStatusCheck
{
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__ENDaemon__networkProxyStatusCheck__block_invoke;
  v3[3] = &unk_278FD1938;
  v3[4] = self;
  [MEMORY[0x277D2CA70] getServiceStatus:dispatchQueue completionHandler:v3];
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_cold_1();
    }
  }

  else
  {
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_cold_2();
    }

    objc_storeStrong((*(a1 + 32) + 504), a2);
    v8 = *(a1 + 32);
    v9 = *(v8 + 224);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__ENDaemon__networkProxyStatusCheck__block_invoke_2;
    v10[3] = &unk_278FD1910;
    v10[4] = v8;
    [MEMORY[0x277D2CA70] getTrafficState:v9 completionandler:v10];
  }
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    if (_MergedGlobals <= 40 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_2();
    }

    *(*(a1 + 32) + 512) = a2;
    if ((a2 & 0x800) != 0)
    {
      if (_MergedGlobals > 40 || _MergedGlobals == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_17;
      }
    }

    else if (_MergedGlobals > 40 || _MergedGlobals == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_3();
LABEL_17:
    [*(a1 + 32) prefsChanged];
    goto LABEL_18;
  }

  if (dword_281346508 <= 90)
  {
    v8 = v5;
    if (dword_281346508 != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
    {
      __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_1();
LABEL_18:
      v6 = v8;
    }
  }
}

- (BOOL)isProxyEnabledForTestResultManager:(id)a3
{
  networkProxyStatus = self->_networkProxyStatus;
  if (networkProxyStatus)
  {
    LOBYTE(networkProxyStatus) = self->_prefNetworkProxyEnabled;
  }

  return networkProxyStatus & 1;
}

- (void)enqueuePreauthorizedTestVerificationUnlockAction
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke;
  v29[3] = &unk_278FD10F8;
  v29[4] = &v30;
  v3 = MEMORY[0x24C214430](v29, a2);
  v4 = [(ENDaemon *)self screenUnlockPendingActions];
  v5 = [v4 objectForKey:@"PreArmUnlockActionIdentifier"];

  if (v5)
  {
    v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v21 = [v20 isSensitiveLoggingAllowed];

    if (v21 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if ([(ENDaemon *)self getOverallStatus]== 1 && [(ENDaemon *)self _isNKDActive])
  {
    v6 = [(ENDaemon *)self activeEntity];
    v7 = [v6 entity];
    v8 = [v7 region];

    if (!v8)
    {
      v22 = ENErrorF();
      v9 = v31[5];
      v31[5] = v22;
      goto LABEL_17;
    }

    v9 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v10 = [v9 configurationForRegion:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 diagnosisKeysPreAuthorization];

      if (!v12)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v13 = [v11 diagnosisKeysPreAuthorization];
      v14 = [v13 verificationCode];

      if (!v14)
      {
        v24 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v25 = [v24 isSensitiveLoggingAllowed];

        if (!v25 || _MergedGlobals > 30 || _MergedGlobals == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      }

      v15 = [v11 diagnosisKeysPreAuthorization];
      v16 = [v15 reportType];

      if (v16 != 3)
      {
        v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v18 = [v17 isSensitiveLoggingAllowed];

        if (v18 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke_2;
        v28[3] = &unk_278FD0F90;
        v28[4] = self;
        v19 = MEMORY[0x24C214430](v28);
        [(ENDaemon *)self _enqueueScreenUnlockAction:v19 withIdentifier:@"PreArmUnlockActionIdentifier"];

        goto LABEL_15;
      }

      v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v27 = [v26 isSensitiveLoggingAllowed];

      if (v27 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
LABEL_28:
        LogPrintF_safe();
      }
    }

    else
    {
      v23 = ENErrorF();
      v14 = v31[5];
      v31[5] = v23;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_18:
  v3[2](v3);

  _Block_object_dispose(&v30, 8);
}

void __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke_cold_1(v1);
      }
    }
  }
}

- (id)_getReportTypeForSession:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__ENDaemon__getReportTypeForSession___block_invoke;
  v12[3] = &unk_278FD10F8;
  v12[4] = &v13;
  v5 = MEMORY[0x24C214430](v12);
  v6 = self->_testResultManager;
  v7 = (v14 + 5);
  obj = v14[5];
  v8 = [(ENTestResultManager *)v6 metadataForSessionWithUUID:v4 error:&obj];
  objc_storeStrong(v7, obj);
  v9 = [(ENDaemon *)self _getReportTypeFromMetadata:v8];

  v5[2](v5);
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __37__ENDaemon__getReportTypeForSession___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __37__ENDaemon__getReportTypeForSession___block_invoke_cold_1(v1);
      }
    }
  }
}

- (id)_getReportTypeFromMetadata:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v9 = [v8 isSensitiveLoggingAllowed];

    if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _getReportTypeFromMetadata:];
    }

    goto LABEL_16;
  }

  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5B88]];
  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v7 = [v6 isSensitiveLoggingAllowed];

  if (!v5)
  {
    if (v7 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _getReportTypeFromMetadata:];
    }

LABEL_16:
    v5 = &unk_285D6E420;
    goto LABEL_17;
  }

  if (v7 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_17:

  return v5;
}

- (void)_startPreauthorizedTestVerificationAction
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v4 = [v3 isSensitiveLoggingAllowed];

  if (v4 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [ENDaemon _startPreauthorizedTestVerificationAction];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke;
  v29[3] = &unk_278FD10F8;
  v29[4] = &v30;
  v5 = MEMORY[0x24C214430](v29);
  if ([(ENDaemon *)self getOverallStatus]!= 1 || ![(ENDaemon *)self _isNKDActive])
  {
    v19 = ENErrorF();
    v8 = v31[5];
    v31[5] = v19;
    goto LABEL_17;
  }

  v6 = [(ENDaemon *)self activeEntity];
  v7 = [v6 entity];
  v8 = [v7 region];

  if (!v8)
  {
    v20 = ENErrorF();
    v9 = v31[5];
    v31[5] = v20;
    goto LABEL_16;
  }

  v9 = self->_testResultManager;
  if (!v9)
  {
    v21 = ENErrorF();
    v10 = v31[5];
    v31[5] = v21;
    goto LABEL_15;
  }

  v10 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
  v11 = [v10 configurationForRegion:v8];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 diagnosisKeysPreAuthorization];

    if (!v13)
    {
      v23 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v24 = [v23 isSensitiveLoggingAllowed];

      if (v24 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      goto LABEL_14;
    }

    v14 = [v12 diagnosisKeysPreAuthorization];
    v15 = [v14 verificationCode];

    if (v15)
    {
      prefNetworkProxyEnabled = self->_prefNetworkProxyEnabled;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_2;
      v28[3] = &unk_278FD19B0;
      v28[4] = self;
      v28[5] = v12;
      v28[6] = v8;
      v28[7] = v9;
      v28[8] = v10;
      v28[9] = &v30;
      [(ENTestResultManager *)v9 startTestVerficationSessionWithCode:v15 proxyEnabled:prefNetworkProxyEnabled region:v8 completionHandler:v28];
      v17 = [v12 diagnosisKeysPreAuthorization];
      [v17 setVerificationCode:0];

      v18 = (v31 + 5);
      obj = v31[5];
      [v10 saveRegionConfiguration:v12 error:&obj];
      objc_storeStrong(v18, obj);
    }

    else
    {
      v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v26 = [v25 isSensitiveLoggingAllowed];

      if (v26 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  else
  {
    v22 = ENErrorF();
    v15 = v31[5];
    v31[5] = v22;
  }

LABEL_14:
LABEL_15:

LABEL_16:
LABEL_17:

  v5[2](v5);
  _Block_object_dispose(&v30, 8);
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v3 = [v2 isSensitiveLoggingAllowed];

    if (v3)
    {
      if (_MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_cold_1(v1);
      }
    }
  }
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 224);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v8 = *(a1 + 48);
  v15 = *(a1 + 32);
  v13[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3;
  v13[3] = &unk_278FD1988;
  v14 = v5;
  v16 = v8;
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v18 = v6;
  v19 = v9;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, v13);
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) _getReportTypeForSession:v2];
    v4 = [*(a1 + 40) differentialPrivacyManager];

    if (v4)
    {
      v5 = [*(a1 + 40) _getLatestExposureForDifferentialPrivacy];
      v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v7 = [v6 isSensitiveLoggingAllowed];

      if (v7 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        v28 = v5;
        v29 = v3;
        LogPrintF_safe();
      }

      v14 = [*(a1 + 40) differentialPrivacyManager];
      [v14 reportUserCodeVerified:v5 reportType:{objc_msgSend(v3, "unsignedIntValue")}];
    }

    v15 = [*(a1 + 48) diagnosisKeysPreAuthorization];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 expirationStatus];
      v18 = [MEMORY[0x277CBEB30] dictionaryWithCapacity:2];
      v19 = [v16 symptomOnsetDate];
      if (v19)
      {
        [v18 setObject:v19 forKey:*MEMORY[0x277CC5BB0]];
      }

      v20 = [v16 didUserTravel];
      if (v20)
      {
        [v18 setObject:v20 forKey:*MEMORY[0x277CC5BC8]];
      }

      if ([*(*(a1 + 40) + 264) regionSupportsFeatures:*(a1 + 56) featureFlags:1])
      {
        v21 = [v16 isUserVaccinated];
        if (v21)
        {
          [v18 setObject:v21 forKey:*MEMORY[0x277CC5BA0]];
        }
      }

      v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v23 = [v22 isSensitiveLoggingAllowed];

      if (v23 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_1();
      }

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4;
      v31[3] = &unk_278FD1960;
      v24 = *(a1 + 40);
      v36 = *(a1 + 88);
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v31[4] = v24;
      v31[5] = v25;
      v37 = v17 == 2;
      v32 = v3;
      v33 = v16;
      v27 = *(a1 + 72);
      v34 = *(a1 + 48);
      v35 = v27;
      [v26 finishSessionWithUUID:v2 userDidConsent:v17 == 2 metadata:v18 completionHandler:v31];
    }

    else
    {
      __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_2();
    }
  }

  else
  {
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v9 = [v8 isSensitiveLoggingAllowed];

    if (v9 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_3(a1);
    }

    if (*(a1 + 80))
    {
      [*(a1 + 40) _handleTestVerificationErrors:*(*(*(a1 + 88) + 8) + 40)];
    }

    [*(a1 + 48) setDiagnosisKeysPreAuthorization:0];
    v10 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 88) + 8);
    v30 = *(v12 + 40);
    [v10 saveRegionConfiguration:v11 error:&v30];
    v13 = v30;
    v3 = *(v12 + 40);
    *(v12 + 40) = v13;
  }
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v7 = [v6 isSensitiveLoggingAllowed];

  if ((a2 & 1) == 0)
  {
    if (v7 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_1();
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    else if (!v5)
    {
      goto LABEL_25;
    }

    [*(a1 + 32) _handleTestVerificationErrors:*(*(*(a1 + 80) + 8) + 40)];
    goto LABEL_25;
  }

  if (v7 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_2();
  }

  [*(a1 + 32) postPreAuthorizationNotificationForRegion:*(a1 + 40)];
  v8 = [*(a1 + 32) differentialPrivacyManager];
  if (v8)
  {
    v9 = *(a1 + 88);

    if (v9)
    {
      v10 = [*(a1 + 32) _getLatestExposureForDifferentialPrivacy];
      v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v12 = [v11 isSensitiveLoggingAllowed];

      if (v12 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_3(v10, a1);
      }

      v13 = [*(a1 + 32) differentialPrivacyManager];
      [v13 reportUserKeysUploaded:v10 reportType:{objc_msgSend(*(a1 + 48), "unsignedIntValue")}];

      v14 = [*(a1 + 56) isUserVaccinated];
      v15 = [*(a1 + 32) _getDiagnosedVaccineStatusForDifferentialPrivacyWithUserVaccinationStatus:v14];
      if (v15)
      {
        v16 = [*(a1 + 32) differentialPrivacyManager];
        [v16 reportUserDiagnosedVaccineStatus:v15];
      }

      else
      {
        v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v18 = [v17 isSensitiveLoggingAllowed];

        if (v18 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_4_cold_4();
        }
      }
    }
  }

LABEL_25:
  [*(a1 + 64) setDiagnosisKeysPreAuthorization:0];
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *(*(a1 + 80) + 8);
  obj = *(v21 + 40);
  [v19 saveRegionConfiguration:v20 error:&obj];
  objc_storeStrong((v21 + 40), obj);
}

- (void)_handleTestVerificationErrors:(id)a3
{
  v4 = [a3 code] - 2;
  if (v4 > 0xB)
  {
    v6 = @"VERIFICATION_FAILED_GENERIC_ERROR_MESSAGE";
    v5 = @"VERIFICATION_FAILED_GENERIC_ERROR_TITLE";
  }

  else
  {
    v5 = *(&off_278FD2118 + v4);
    v6 = *(&off_278FD2178 + v4);
  }

  [(ENDaemon *)self postGeneralNotificationWithTitle:v5 message:v6];
}

- (void)enqueueScreenUnlockAction:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ENDaemon_enqueueScreenUnlockAction_withIdentifier___block_invoke;
    block[3] = &unk_278FD19D8;
    block[4] = self;
    v11 = v6;
    v10 = v7;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    [ENDaemon enqueueScreenUnlockAction:withIdentifier:];
  }
}

- (void)_enqueueScreenUnlockAction:(id)a3 withIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(ENDaemon *)self isDeviceUnlocked])
  {
    v9[2]();
  }

  else
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _enqueueScreenUnlockAction:withIdentifier:];
    }

    v7 = [(ENDaemon *)self screenUnlockPendingActions];
    v8 = MEMORY[0x24C214430](v9);
    [v7 setObject:v8 forKey:v6];
  }
}

- (void)_xpcListenerEvent:(id)a3
{
  v7 = a3;
  if (MEMORY[0x24C214BB0]() == MEMORY[0x277D86450])
  {
    [(ENDaemon *)self _xpcConnectionAccept:v7];
    goto LABEL_8;
  }

  v4 = v7;
  if (v7 == MEMORY[0x277D863F8])
  {
    if (_MergedGlobals <= 30)
    {
      if (_MergedGlobals != -1 || (v6 = _LogCategory_Initialize(), v4 = v7, v6))
      {
        [ENDaemon _xpcListenerEvent:];
        goto LABEL_8;
      }
    }
  }

  else if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      [ENDaemon _xpcListenerEvent:];
LABEL_8:
      v4 = v7;
    }
  }
}

- (void)_xpcConnectionAccept:(id)a3
{
  v4 = a3;
  pid = xpc_connection_get_pid(v4);
  xpc_connection_get_audit_token();
  memset(v14, 0, sizeof(v14));
  v6 = [ENXPCClient clientWithAuditToken:v14 pid:pid];
  if ([v6 entitledForLogging])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setENAppHasLoggingEntitlement:1];

    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    [v8 setLoggingEntitledApp:1];
  }

  if (_MergedGlobals <= 20 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [(ENDaemon *)pid _xpcConnectionAccept:v6];
  }

  v9 = objc_alloc_init(ENXPCConnection);
  [(ENXPCConnection *)v9 setClient:v6];
  [(ENXPCConnection *)v9 setDaemon:self];
  [(ENXPCConnection *)v9 setDispatchQueue:self->_dispatchQueue];
  [(ENXPCConnection *)v9 setXpcCnx:v4];
  if (([v6 entitledToSkipFileSigningVerification] & 1) != 0 || -[ENDaemon prefSkipFileSigning](self, "prefSkipFileSigning"))
  {
    [(ENXPCConnection *)v9 setSkipFileSigningVerification:1];
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      [ENDaemon _xpcConnectionAccept:?];
    }
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__ENDaemon__xpcConnectionAccept___block_invoke;
  handler[3] = &unk_278FD10A8;
  handler[4] = v9;
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_set_target_queue(v4, self->_dispatchQueue);
  xpc_connection_activate(v4);
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB50]);
    v12 = self->_xpcConnections;
    self->_xpcConnections = v11;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v9];
  [(ENXPCConnection *)v9 activate];
}

- (void)xpcConnectionInvalidated:(id)a3
{
  [(NSMutableSet *)self->_xpcConnections removeObject:a3];

  [(ENDaemon *)self _scheduleUpdate];
}

- (void)xpcPreAuthorizedDiagnosisKeysAvailable
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) xpcPreAuthorizedDiagnosisKeysAvailable];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)xpcReportStatus
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) xpcStatusChanged];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (ENDaemonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_resetDeveloperSettings
{
  if (!IsAppleInternalBuild())
  {
    CFPrefs_RemoveValue();
    v3 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    [v3 clearTemporaryCountrySubdivisionList];
    [v3 clearTemporaryServerConfigurations];
    CFPrefs_RemoveValue();
  }
}

- (void)_deferConsentForPendingRegion
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(ENDaemon *)self _readPreferenceRegionPendingOnboarding];
  if (v3)
  {
    v4 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v5 = [v4 configurationForRegion:v3];

    if (v5)
    {
      v6 = [v5 userConsent];
      v7 = [v6 consent];

      if (!v7)
      {
        if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v8 = [v5 userConsent];
        [v8 setConsent:3];

        v9 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
        v21 = 0;
        v10 = [v9 saveRegionConfiguration:v5 error:&v21];
        v11 = v21;

        if (v10)
        {
          v12 = [(ENDaemon *)self activeEntity];
          v13 = [v12 entity];
          v14 = [v13 region];
          v15 = [v3 isEqual:v14];

          if (v15)
          {
            if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            [(ENDaemon *)self _turnOffEN];
          }

          v16 = [(ENDaemon *)self userNotificationCenter];
          v22[0] = @"com.apple.ExposureNotification.onboarding";
          v17 = [MEMORY[0x277CBEA68] arrayWithObjects:v22 count:1];
          [v16 removeDeliveredNotificationsWithIdentifiers:v17];

          v18 = [(ENDaemon *)self onboardingManager];
          [v18 setShouldObserveDeviceUnlocks:0];

          v19 = [(ENDaemon *)self onboardingManager];
          [v19 setPendingBuddyOnboarding:0];
        }

        else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_databasesEnsureOpened
{
  v7 = 0;
  v3 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v7];
  v4 = v7;
  if (!v3 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    v6 = CUPrintNSError();
    LogPrintF_safe();
  }

  if ([(CUSystemMonitor *)self->_systemMonitor systemLockState]!= 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained switchToCentralAdvertisementStoreAsync];
  }
}

- (void)_periodicPersistencePurge
{
  if (self->_persistencePurgeScheduler)
  {
    [(ENDaemon *)self _databasesEnsureOpened];
    CFPrefs_GetDouble();
    v4 = v3;
    v5 = IsAppleInternalBuild();
    if (v4 <= 0.0 || v5 == 0)
    {
      v4 = 1209600.0;
    }

    v7 = [MEMORY[0x277CBEAA0] date];
    v8 = [v7 dateByAddingTimeInterval:-v4];
    CFPrefs_GetDouble();
    v10 = v9;
    if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v24 = [(NSBackgroundActivityScheduler *)self->_persistencePurgeScheduler identifier];
      v26 = v8;
      LogPrintF_safe();
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performPeriodicAdvertisementDatabasePurgeWithDate:v8];

    v29 = 0;
    v12 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v29];
    v13 = v29;
    v14 = v13;
    if (!v12 || (v28 = v13, v15 = [v12 purgeRecordsWithInterval:v7 nowDate:&v28 error:v4], v16 = v28, v14, v14 = v16, (v15 & 1) == 0))
    {
      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        v24 = CUPrintNSError();
        LogPrintF_safe();
      }
    }

    regionMonitor = self->_regionMonitor;
    v27 = v14;
    v18 = [(ENRegionMonitor *)regionMonitor purgeRegionsOlderThanDate:v8 error:&v27, v24, v26];
    v19 = v27;

    if (!v18 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      v25 = CUPrintNSError();
      LogPrintF_safe();
    }

    [(ENDownloadManager *)self->_downloadManager purgeExpiredDownloadsWithDate:v8, v25];
    [(ENTextMessageManager *)self->_textMessageManager purgeOldHashes];
    activeEntity = self->_activeEntity;
    if ((!activeEntity || [(ENActiveEntity *)activeEntity activeStatus]== 1) && v10 > 0.0)
    {
      [v7 timeIntervalSince1970];
      if (v21 - v10 > v4)
      {
        if (_MergedGlobals <= 50 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        CFDataGetTypeID();
        v22 = CFPrefs_CopyTypedValue();
        if (v22)
        {
          v23 = 3839;
        }

        else
        {
          v23 = 4095;
        }

        [(ENDaemon *)self _resetDataWithFlags:v23];
      }
    }

    [(ENDaemon *)self _scheduleUpdate];
  }
}

- (id)_getDownloadEndpointsAndReturnError:(id *)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = [(ENActiveEntity *)self->_activeEntity entity];
  v55 = [v5 region];

  v6 = [(ENDaemon *)self _isNKDActive];
  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v8 = [v7 isSensitiveLoggingAllowed];

  if (v8 && _MergedGlobals <= 10 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    v9 = @"<>";
    if (v55)
    {
      v9 = v55;
    }

    v10 = "no";
    if (v6)
    {
      v10 = "yes";
    }

    v50 = v9;
    v51 = v10;
    LogPrintF_safe();
  }

  if (v55)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = self->_regionMonitor;
    if (!v12)
    {
      if (a3)
      {
        ENErrorF();
        *a3 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_66;
    }

    v13 = [(ENConfigurationManager *)self->_configurationManager configurationStore];
    v14 = v13;
    if (!v13)
    {
      if (a3)
      {
        ENErrorF();
        *a3 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_65;
    }

    v54 = v12;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v15 = [v13 allCachedRegions];
    v16 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v66;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [v14 configurationForRegion:{*(*(&v65 + 1) + 8 * i), v50, v51}];
          v22 = [v21 userConsent];
          v18 |= [v22 consent] == 2;
        }

        v17 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v17);

      if (v18)
      {
        regionMonitor = self->_regionMonitor;
        v64 = 0;
        v24 = [(ENRegionMonitor *)regionMonitor getAllRegionsWithError:&v64];
        v25 = v64;
        v26 = v25;
        if (v24)
        {
LABEL_46:
          v53 = v26;
          v52 = v24;
          v31 = [objc_alloc(MEMORY[0x277CBEB50]) initWithSet:v24];
          [v31 addObject:v55];
          v32 = objc_alloc_init(MEMORY[0x277CBEB30]);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v61;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v61 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v60 + 1) + 8 * j);
                v39 = [v14 downloadConfigurationForRegion:{v38, v50}];
                v40 = v39;
                if (v39)
                {
                  v41 = [v39 tekLocalDownloadBaseURL];
                  v42 = [v32 objectForKeyedSubscript:v41];
                  if (!v42 || [(__CFString *)v38 isEqual:v55])
                  {
                    [v32 setObject:v40 forKeyedSubscript:v41];
                  }
                }

                else
                {
                  v43 = +[ENLoggingPrefs sharedENLoggingPrefs];
                  v44 = [v43 isSensitiveLoggingAllowed];

                  if (v44 && _MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
                  {
                    v50 = v38;
                    LogPrintF_safe();
                  }
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v35);
          }

          v45 = [v32 count] > 1;
          v46 = objc_alloc_init(MEMORY[0x277CBEB10]);
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __48__ENDaemon__getDownloadEndpointsAndReturnError___block_invoke;
          v56[3] = &unk_278FD1850;
          v56[4] = v14;
          v57 = v46;
          v58 = v55;
          v59 = v45;
          v47 = v46;
          [v32 enumerateKeysAndObjectsUsingBlock:v56];
          v30 = [v47 copy];

LABEL_64:
          v12 = v54;
LABEL_65:

LABEL_66:
          goto LABEL_67;
        }

        v27 = v25;
        v28 = [(__CFString *)v27 domain];
        if ([v28 isEqualToString:*MEMORY[0x277CC5BD0]])
        {
          v29 = [(__CFString *)v27 code];

          if (v29 == 4)
          {
            if (_MergedGlobals > 10 || _MergedGlobals == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }
        }

        else
        {
        }

        if (dword_281346508 > 90 || dword_281346508 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_45;
        }

        v50 = v27;
LABEL_39:
        LogPrintF_safe();
LABEL_45:
        v24 = [MEMORY[0x277CBEB90] set];
        goto LABEL_46;
      }
    }

    else
    {
    }

    if (_MergedGlobals <= 10)
    {
      v12 = v54;
      if (_MergedGlobals != -1 || _LogCategory_Initialize())
      {
        LogPrintF_safe();
      }

      v30 = MEMORY[0x277CBEBF0];
      goto LABEL_65;
    }

    v30 = MEMORY[0x277CBEBF0];
    goto LABEL_64;
  }

  v30 = MEMORY[0x277CBEBF0];
LABEL_67:

  v48 = *MEMORY[0x277D85DE8];

  return v30;
}

void __48__ENDaemon__getDownloadEndpointsAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 region];
  v8 = [*(a1 + 32) configurationForRegion:v7];
  if ([v8 enVersion] >= 2)
  {
    v9 = [ENDownloadEndpoint alloc];
    v10 = [v6 tekLocalDownloadIndexURL];
    [v6 tekPublishInterval];
    v12 = v11;
    v13 = [v6 region];
    v14 = [(ENDownloadEndpoint *)v9 initWithBaseURL:v5 indexURL:v10 interval:1 enabled:v13 region:v12];

    [*(a1 + 40) addObject:v14];
    v15 = [v6 region];
    LODWORD(v13) = [v15 isEqual:*(a1 + 48)];

    if (v13)
    {
      if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
      {
        if (*(a1 + 56))
        {
          v16 = "yes";
        }

        else
        {
          v16 = "no";
        }

        v17 = [v6 travelerDownloadConfigurations];
        v34 = v16;
        v35 = [v17 count];
        LogPrintF_safe();
      }

      v18 = [v6 travelerDownloadConfigurations];
      v19 = [v18 count];

      if (v19 && *(a1 + 56))
      {
        v36 = v14;
        v37 = v8;
        v38 = v7;
        v39 = v5;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v20 = [v6 travelerDownloadConfigurations];
        v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v41;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v40 + 1) + 8 * i);
              v26 = [ENDownloadEndpoint alloc];
              v27 = [v25 tekTravelerDownloadBaseURL];
              v28 = [v25 tekTravelerDownloadIndexURL];
              [v6 tekPublishInterval];
              v30 = v29;
              v31 = [v6 region];
              v32 = [(ENDownloadEndpoint *)v26 initWithBaseURL:v27 indexURL:v28 interval:1 enabled:v31 region:v30];

              [*(a1 + 40) addObject:v32];
            }

            v22 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v22);
        }

        v7 = v38;
        v5 = v39;
        v14 = v36;
        v8 = v37;
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_migrateLegacyHistoryIfNecessary
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(ENDaemon *)self loadLegacyHistorySinceTime:1209600.0];
  if (v3)
  {
    if (_MergedGlobals <= 30 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
    {
      v27 = [v3 count];
      LogPrintF_safe();
    }

    v46 = 0;
    v4 = [(ENDaemon *)self getExposureDatabaseAndReturnError:&v46, v27];
    v5 = v46;
    v31 = v4;
    if (v4)
    {
      v45 = 0;
      v6 = [v4 openWithError:&v45];
      v7 = v45;
      if (v6)
      {
        v28 = self;
        v29 = v5;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v30 = v3;
        obj = v3;
        v36 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (!v36)
        {
          goto LABEL_37;
        }

        v35 = *v42;
        v8 = v31;
        while (1)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v42 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v41 + 1) + 8 * i);
            CFStringGetTypeID();
            v11 = CFDictionaryGetTypedValue();
            v12 = NSDictionaryGetNSNumber();
            CFDataGetTypeID();
            v13 = CFDictionaryGetTypedValue();
            v37 = NSDictionaryGetNSNumber();
            v14 = NSDictionaryGetNSNumber();
            if (v11 && v13)
            {
              v15 = objc_alloc(MEMORY[0x277CBEAA0]);
              v33 = v12;
              [v12 doubleValue];
              v16 = [v15 initWithTimeIntervalSinceReferenceDate:?];
              v17 = objc_alloc_init(MEMORY[0x277CC5C48]);
              [v17 setAppBundleIdentifier:v11];
              [v17 setDate:v16];
              [v17 setFileCount:1];
              [v17 setMatchCount:{objc_msgSend(v14, "unsignedLongLongValue")}];
              v40 = v7;
              v18 = [v8 upsertExposureDetectionHistorySession:v17 error:&v40];
              v19 = v40;

              v34 = v16;
              if (v18)
              {
                v20 = objc_alloc_init(MEMORY[0x277CC5C40]);
                [v20 setFileHash:v13];
                [v20 setProcessDate:v16];
                [v20 setKeyCount:v37];
                [v20 setMatchCount:v14];
                [v20 setSourceAppBundleIdentifier:v11];
                v39 = v19;
                v21 = [v8 insertExposureDetectionFile:v20 session:v17 error:&v39];
                v7 = v39;

                if ((v21 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                v8 = v31;
LABEL_33:
                v12 = v33;
              }

              else
              {
                if (dword_281346508 > 90)
                {
                  v7 = v19;
                  goto LABEL_33;
                }

                v12 = v33;
                if (dword_281346508 != -1 || _LogCategory_Initialize())
                {
                  LogPrintF_safe();
                }

                v7 = v19;
              }

              goto LABEL_35;
            }

            if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

LABEL_35:
          }

          v36 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (!v36)
          {
LABEL_37:

            v22 = [(ENDaemon *)v28 legacyHistoryPath];
            if (v22)
            {
              v23 = [MEMORY[0x277CCAA08] defaultManager];
              v38 = 0;
              v24 = [v23 removeItemAtPath:v22 error:&v38];
              v25 = v38;

              if ((v24 & 1) == 0 && dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }
            }

            v5 = v29;
            v3 = v30;
            goto LABEL_45;
          }
        }
      }

      if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

LABEL_45:
    }

    else if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __33__ENDaemon_loadHistorySinceTime___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = *(a1 + 56);

  if (v8 >= v9)
  {
    v10 = [v5 appBundleIdentifier];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v5 UUID];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __33__ENDaemon_loadHistorySinceTime___block_invoke_3;
      v15[3] = &unk_278FD18C0;
      v15[4] = *(a1 + 40);
      obj = v14;
      [v11 enumerateExposureDetectionHistoryFilesForSessionUUID:v12 error:&obj handler:v15];
      objc_storeStrong((v13 + 40), obj);
    }
  }

  else
  {
    *a3 = 1;
  }
}

- (void)init
{
  v0 = ENDataVaultURL();
  LogPrintF_safe();
}

- (void)_readPreferenceActiveEntity
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_writePreferenceActiveEntity:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }

  *a3 = 0;
}

- (uint64_t)_writePreferenceActiveEntity:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_readPreferenceRegionPendingOnboarding
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_writePreferenceRegionPendingOnboarding:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }

  *a3 = 0;
}

- (uint64_t)_writePreferenceRegionPendingOnboarding:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

void __21__ENDaemon__activate__block_invoke_2_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 screenUnlockPendingActions];
  [v2 count];
  LogPrintF_safe();
}

- (uint64_t)_getBundleIDFromBundle:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_getBundleIDFromBundle:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_getInfoDictFromBundle:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_getInfoDictFromBundle:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_getInfoDictFromAppProxy:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_getInfoDictFromAppProxy:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_getDelegateAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF();
    *v1 = result;
  }

  return result;
}

- (uint64_t)_updateOverallStatus
{
  if (a1 <= 6)
  {
    v2 = off_278FD20E0[a1];
  }

  if (a2 <= 6)
  {
    v3 = off_278FD20E0[a2];
  }

  return LogPrintF_safe();
}

- (uint64_t)notifyUserWithStatus:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 overallStatus];
  if (v1 <= 6)
  {
    v2 = off_278FD20E0[v1];
  }

  return LogPrintF_safe();
}

void __23__ENDaemon_pauseUpdate__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = CUPrintDateCF();
  LogPrintF_safe();
}

- (void)_resetDataWithFlags:.cold.1()
{
  v0 = CUPrintFlags32();
  LogPrintF_safe();
}

- (void)_resetDataWithFlags:.cold.10()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

void __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

void __56__ENDaemon__fetchPrefRegionConfig_oldCustomCountryCode___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)monthlyTriggerActivateWithIntervalOverride:.cold.2()
{
  v0 = CUPrintDurationDouble();
  LogPrintF_safe();
}

- (void)monthlyTriggerActivateWithIntervalOverride:(const char *)a1 .cold.3(const char *a1, uint64_t a2)
{
  v7 = NSStringFromSelector(a1);
  *(a2 + 118);
  v3 = *(a2 + 344);
  if (v3 <= 6)
  {
    v4 = off_278FD20E0[v3];
  }

  v5 = CUPrintDuration32();
  v6 = [a2 monthlyNotificationTimer];
  LogPrintF_safe();
}

- (uint64_t)updateExistingConsentForPhase1ActiveRegion:(uint64_t *)a1 .cold.1(uint64_t *a1, unint64_t a2)
{
  if (a2 <= 4)
  {
    v2 = off_278FD2090[a2];
  }

  v4 = *a1;
  return LogPrintF_safe();
}

- (void)updateExistingConsentForPhase1ActiveRegion:.cold.3()
{
  if (_MergedGlobals <= 10 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

- (void)appLaunchWithBundleID:activity:shouldEnterForeground:requiredRuntimeInSeconds:.cold.1()
{
  v0 = CUPrintFlags32();
  LogPrintF_safe();
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = CUPrintFlags32();
  LogPrintF_safe();
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_2(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = CUPrintFlags32();
  LogPrintF_safe();
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_540_cold_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4 = CUPrintFlags32();
  v3 = CUPrintNSError();
  LogPrintF_safe();
}

void __90__ENDaemon_appLaunchWithBundleID_activity_shouldEnterForeground_requiredRuntimeInSeconds___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = CUPrintFlags32();
  v5 = *(a1 + 52);
  v6 = v4;
  LogPrintF_safe();
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postAnalyticsOptInNotificationForRegion:.cold.5()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postExposureSummaryAccessNotificationWithAppBundleIdentifier:string:.cold.2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postGeneralNotificationWithTitle:message:.cold.2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postMonthlySummaryNotificationForAppBundleIdentifier:.cold.2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postOnboardingNotificationForRegion:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postOnboardingNotificationForRegion:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postOnboardingNotificationForRegion:.cold.5()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postPreAuthorizationNotificationForRegion:(void *)a1 .cold.2(void *a1)
{
  v1 = a1;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v2 = _LogCategory_Initialize(), v1 = a1, v2))
    {
      LogPrintF_safe();
      v1 = a1;
    }
  }
}

- (void)postPreAuthorizationNotificationForRegion:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postPreAuthorizationNotificationForRegion:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postPreAuthorizationNotificationForRegion:.cold.5()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (uint64_t)postTestVerificationReceivedNotification:(uint64_t)a1 region:(uint64_t)a2 reportType:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a3 = a2;
  return result;
}

- (void)postTestVerificationReceivedNotification:(uint64_t)a1 region:(void *)a2 reportType:.cold.3(uint64_t a1, void *a2)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v3 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }

  *a2 = 0;
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.4()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.5()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.6()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postTestVerificationReceivedNotification:(void *)a1 region:reportType:.cold.7(void *a1)
{
  v1 = a1;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (v2 = _LogCategory_Initialize(), v1 = a1, v2))
    {
      LogPrintF_safe();
      v1 = a1;
    }
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.8()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.9()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.10()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postTestVerificationReceivedNotification:region:reportType:.cold.11()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)postExposureNotification:.cold.1()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

void __73__ENDaemon__postUserNotificationWithRequest_authorizationFailureHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) content];
  v1 = [v2 threadIdentifier];
  LogPrintF_safe();
}

- (void)remoteAlertHandle:(void *)a1 didInvalidateWithError:.cold.3(void *a1)
{
  v1 = [MEMORY[0x277CCABA8] numberWithInteger:{objc_msgSend(a1, "code")}];
  LogPrintF_safe();
}

- (void)_enApplicationDidInstall:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)_enApplicationDidInstall:.cold.4()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)_enApplicationDidInstall:.cold.5()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)_enApplicationDidUninstall:.cold.3()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)fetchServerConfigurationForAppBundleIdentifier:infoDictionary:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

void __51__ENDaemon_startServerConfigurationFetchForRegion___block_invoke_cold_2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = *v0;
      LogPrintF_safe();
    }
  }
}

- (uint64_t)fetchServerConfigurationForRegion:(void *)a1 completion:.cold.1(void *a1)
{
  [a1 enVersion];
  [a1 enEnabled];
  return LogPrintF_safe();
}

uint64_t __57__ENDaemon_fetchServerConfigurationForRegion_completion___block_invoke_2_cold_1(uint64_t *a1, void *a2)
{
  v3 = *a1;
  [a2 enVersion];
  [a2 enEnabled];
  return LogPrintF_safe();
}

- (void)_updatePhase1ConfigurationIfNeeded:.cold.1()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)_updatePhase1ConfigurationIfNeeded:(id *)a1 .cold.3(id *a1)
{
  v1 = [*a1 entity];
  v2 = [v1 region];
  LogPrintF_safe();
}

- (void)_updatePhase1ConfigurationIfNeeded:(void *)a1 .cold.4(void *a1, void *a2)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_updatePhase1ConfigurationIfNeeded:.cold.5()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_updatePhase1ConfigurationIfNeeded:.cold.6()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_exposureNotificationRegionConfigurationRemoved:.cold.1()
{
  if (_MergedGlobals <= 30)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)getExposureDatabaseAndReturnError:(void *)a1 .cold.1(void *a1, id a2)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    v5 = CUPrintNSError();
    LogPrintF_safe();
  }

  if (a1)
  {
    v4 = a2;
    *a1 = a2;
  }
}

- (uint64_t)stateMetricVersion
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 6;
  return result;
}

- (void)exposureDetectionManager:(void *)a1 finishedSessionWithResult:.cold.1(void *a1)
{
  v1 = [a1 name];
  LogPrintF_safe();
}

- (void)exposureDetectionManager:finishedSessionWithResult:.cold.2()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

- (void)_postExposureNotificationForClassification:(void *)a1 status:region:.cold.1(void *a1)
{
  v1 = [a1 name];
  LogPrintF_safe();
}

- (void)_postExposureNotificationForClassification:(void *)a1 status:region:.cold.2(void *a1)
{
  v1 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v2 = [v1 isSensitiveLoggingAllowed];

  if (v2 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

- (void)_postExposureNotificationForClassification:(_BYTE *)a1 status:region:.cold.3(_BYTE *a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  *a1 = 0;
}

- (void)_postExposureNotificationForClassification:status:region:.cold.4()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

- (void)_postExposureNotificationForClassification:(void *)a1 status:(void *)a2 region:.cold.5(void *a1, void *a2)
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v4 = [v3 isSensitiveLoggingAllowed];

  if (v4 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    [a2 name];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_8();
    LogPrintF_safe();
  }
}

- (void)_postExposureNotificationForClassification:(_BYTE *)a1 status:region:.cold.6(_BYTE *a1)
{
  v2 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v3 = [v2 isSensitiveLoggingAllowed];

  if (v3 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  *a1 = 0;
}

- (uint64_t)_postExposureNotificationForClassification:(uint64_t)result status:region:.cold.8(uint64_t result)
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_postExposureNotificationForClassification:(uint64_t)a1 status:(_BYTE *)a2 region:.cold.9(uint64_t a1, _BYTE *a2)
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v4 || _LogCategory_Initialize())
    {
      [v2 enVersion];
      LogPrintF_safe();
    }
  }

  *a2 = 0;
}

- (void)onboardingManagerDidObserveDeviceUnlock:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 onboardingManager];
  [v1 pendingBuddyOnboarding];
  LogPrintF_safe();
}

- (uint64_t)legacyHistoryPath
{
  v1 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)startAvailabilityAlertCycleWithBuddy:.cold.2()
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)onboardingTriggerRetry:.cold.1()
{
  v0 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:?];
  LogPrintF_safe();
}

- (uint64_t)onboardingTriggerRetry:(uint64_t)result .cold.2(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_281346508 <= 90)
  {
    if (dword_281346508 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a2 = v3;
  return result;
}

- (void)onboardingTriggerRetry:.cold.4()
{
  [MEMORY[0x277CBEAA0] date];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe();
}

- (void)onboardingTriggerRetry:(void *)a1 .cold.7(void *a1)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }
}

void __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_2()
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

uint64_t __35__ENDaemon_onboardingTriggerRetry___block_invoke_cold_3(void **a1)
{
  if (dword_281346508 <= 90 && (dword_281346508 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v2 = *a1;

  return [v2 onboardingTriggerDeactivate];
}

- (void)timeForAvailabilityAlertCycleReset
{
  if (dword_281346508 <= 90)
  {
    OUTLINED_FUNCTION_7();
    if (!v3 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }

  *a2 = 0;
}

- (uint64_t)timeForAvailabilityAlertCycleReset
{
  if (_MergedGlobals <= 30)
  {
    v4 = result;
    if (_MergedGlobals != -1 || (result = _LogCategory_Initialize(), result))
    {
      [v4 enVersion];
      result = LogPrintF_safe();
    }
  }

  *a3 = 0;
  return result;
}

- (uint64_t)isOnboardingNeeded
{
  v1 = result;
  if (_MergedGlobals <= 30)
  {
    if (_MergedGlobals != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __36__ENDaemon__networkProxyStatusCheck__block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __60__ENDaemon_enqueuePreauthorizedTestVerificationUnlockAction__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __37__ENDaemon__getReportTypeForSession___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

void __53__ENDaemon__startPreauthorizedTestVerificationAction__block_invoke_3_cold_2()
{
  v0 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v1 = [v0 isSensitiveLoggingAllowed];

  if (v1 && _MergedGlobals <= 90 && (_MergedGlobals != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe();
  }
}

- (void)enqueueScreenUnlockAction:withIdentifier:.cold.1()
{
  if (_MergedGlobals <= 90)
  {
    OUTLINED_FUNCTION_5();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF_safe();
    }
  }
}

- (void)_xpcListenerEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

- (void)_xpcConnectionAccept:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = CUPrintPID();
  v4 = [a2 signingIdentity];
  LogPrintF_safe();
}

@end