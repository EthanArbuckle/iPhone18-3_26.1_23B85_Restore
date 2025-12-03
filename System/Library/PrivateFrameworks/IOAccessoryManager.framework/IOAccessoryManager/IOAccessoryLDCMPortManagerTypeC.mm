@interface IOAccessoryLDCMPortManagerTypeC
- ($01BB1521EC52D44A8E7628F5261DCEC8)wetMeasurementInfo;
- (BOOL)_checkIsReceptacleEmpty;
- (BOOL)_holdPowerAssertionTypeC:(BOOL)c;
- (BOOL)_setInitialUserNotificationTimestamp;
- (BOOL)_throttleUserNotification;
- (IOAccessoryLDCMPortManagerTypeC)initWithParams:(unint64_t)params dryPollingIntervalNs:(unint64_t)ns;
- (id)_fetchFilesToUpload:(id)upload;
- (int)_halogenErrorToAnalyticError:(unsigned __int8)error;
- (int)_measurementErrorToAnalyticError:(unsigned __int8)error;
- (void)_checkPortState;
- (void)_controlLDCMMeasurements;
- (void)_dismissWetPrompt;
- (void)_fileRadarHalogenTypeC:(id)c TTRCategory:(int)category;
- (void)_generateAlternateMeasurementAnalytics:(BOOL)analytics measurementInfo:(id *)info intervalSinceLastPass:(double)pass;
- (void)_generateAnalytics:(BOOL)analytics dryToWetTransition:(BOOL)transition measurementInfo:(id *)info;
- (void)_generateFailureAnalytics:(int)analytics recordLDCMDisabled:(BOOL)disabled analyticsError:(int)error;
- (void)_generateLDCMCSVData;
- (void)_loadFrontBoard;
- (void)_manageLDCMSettings;
- (void)_processLDCMAnalyticsDefauts;
- (void)_processLDCMDefauts:(BOOL)defauts;
- (void)_processMitigationsOverride;
- (void)_readLDCMBootArgs;
- (void)_registerForLDCMNotifications;
- (void)_resetLDCMErrorDict;
- (void)_showMitigationAlert;
- (void)_showWetPrompt;
- (void)_writeAndNotifyDefaults:(id)defaults value:(id)value domain:(id)domain notify:(BOOL)notify notification:(id)notification;
- (void)dealloc;
- (void)handleAttachEvent;
- (void)handleDetachEvent;
- (void)performTypeCMeasurement;
- (void)performTypeCReferenceMeasurement;
- (void)performTypeCSelfTest;
@end

@implementation IOAccessoryLDCMPortManagerTypeC

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_release(timer);
  }

  timerSelfTest = self->_timerSelfTest;
  if (timerSelfTest)
  {
    dispatch_release(timerSelfTest);
  }

  timerReferenceMeasurement = self->_timerReferenceMeasurement;
  if (timerReferenceMeasurement)
  {
    dispatch_release(timerReferenceMeasurement);
  }

  timerPortStateCheck = self->_timerPortStateCheck;
  if (timerPortStateCheck)
  {
    dispatch_release(timerPortStateCheck);
  }

  halogenTypeCDispatchQueue = self->_halogenTypeCDispatchQueue;
  if (halogenTypeCDispatchQueue)
  {
    dispatch_release(halogenTypeCDispatchQueue);
  }

  halogenTypeCUserPromptDispatchQueue = self->_halogenTypeCUserPromptDispatchQueue;
  if (halogenTypeCUserPromptDispatchQueue)
  {
    dispatch_release(halogenTypeCUserPromptDispatchQueue);
  }

  typeC = self->_typeC;
  if (typeC)
  {
  }

  ldcmErrorCountDict = self->_ldcmErrorCountDict;
  if (ldcmErrorCountDict)
  {
  }

  v11.receiver = self;
  v11.super_class = IOAccessoryLDCMPortManagerTypeC;
  [(IOAccessoryLDCMPortManagerTypeC *)&v11 dealloc];
}

- (void)_loadFrontBoard
{
  if (!self->_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    v3 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 4);
    if (v3)
    {
      self->_FBSOpenApplicationOptionKeyPromptUnlockDevice = dlsym(v3, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    }
  }
}

- (void)_checkPortState
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkIsReceptacleEmpty
{
  existing = 0;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPort");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  v5 = existing;
  if (MatchingServices)
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    LOBYTE(v7) = 0;
    if (!existing)
    {
      return v7;
    }

    goto LABEL_21;
  }

  v8 = IOIteratorNext(existing);
  v7 = v8;
  if (v8)
  {
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      valuePtr = 0;
      CFProperty = IORegistryEntryCreateCFProperty(v7, @"PortType", v9, 0);
      v11 = CFProperty;
      if (CFProperty)
      {
        CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
        if (valuePtr == 2)
        {
          v13 = IORegistryEntryCreateCFProperty(v7, @"ConnectionActive", v9, 0);
          if (v13)
          {
            v14 = v13;
            v12 = CFBooleanGetValue(v13) == 0;
            CFRelease(v14);
          }

          else
          {
            v12 = 0;
          }

          IOObjectRelease(v7);
          goto LABEL_19;
        }
      }

      v7 = IOIteratorNext(existing);
    }

    while (v7);
    v12 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(v11);
    LOBYTE(v7) = v12;
  }

LABEL_20:
  v5 = existing;
  if (existing)
  {
LABEL_21:
    IOObjectRelease(v5);
  }

  return v7;
}

- (void)_registerForLDCMNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__IOAccessoryLDCMPortManagerTypeC__registerForLDCMNotifications__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (_registerForLDCMNotifications_onceToken != -1)
  {
    dispatch_once(&_registerForLDCMNotifications_onceToken, block);
  }
}

void __64__IOAccessoryLDCMPortManagerTypeC__registerForLDCMNotifications__block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), handleLDCMNotification, @"com.apple.CoreAccessories.LDCMPreferencesNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, *(a1 + 32), handleUserRequestedRadarNotification, @"com.apple.CoreAccessories.LDCMFileRadarNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, *(a1 + 32), handleLDCMNotification, @"com.apple.CoreAccessories.TestLDCMAnalyticsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, *(a1 + 32), handleLDCMNotification, @"com.apple.CoreAccessories.LDCMMitigationsOverrideNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, *(a1 + 32), handleLDCMNotification, @"com.apple.CoreAccessories.LDCMSettingsDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = *(a1 + 32);

  CFNotificationCenterAddObserver(v7, v8, handleLDCMNotification, @"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_manageLDCMSettings
{
  v3 = CFPreferencesCopyValue(@"FakeWetMeasurements", @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", *MEMORY[0x277CBF030]);
  if (v3)
  {
    self->_fakeWetMeasurements = CFBooleanGetValue(v3) != 0;
  }
}

- (void)_processMitigationsOverride
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)_processLDCMDefauts:(BOOL)defauts
{
  v5 = CFPreferencesCopyValue(@"DisablePeriodicMeasurements", @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", *MEMORY[0x277CBF030]);
  v6 = v5;
  if (v5 && CFBooleanGetValue(v5))
  {
    dispatch_suspend([(IOAccessoryLDCMPortManagerTypeC *)self halogenTypeCDispatchQueue]);
LABEL_7:

    CFRelease(v6);
    return;
  }

  if (!defauts)
  {
    dispatch_resume([(IOAccessoryLDCMPortManagerTypeC *)self halogenTypeCDispatchQueue]);
  }

  if (v6)
  {
    goto LABEL_7;
  }
}

- (void)_processLDCMAnalyticsDefauts
{
  v3 = *MEMORY[0x277CBF030];
  v4 = CFPreferencesCopyValue(@"EnableAnalyticsTest", @"com.apple.CoreAccessories.TestLDCMAnalytics", @"mobile", *MEMORY[0x277CBF030]);
  if (v4)
  {
    v5 = v4;
    if (CFBooleanGetValue(v4))
    {
      isInternalBuild = self->_isInternalBuild;
    }

    else
    {
      isInternalBuild = 0;
    }

    DEBUG_ANALYTICS = isInternalBuild;
    CFRelease(v5);
  }

  if (DEBUG_ANALYTICS)
  {
    WET_TOO_LONG_THRESHOLD = 1;
    v7 = CFPreferencesCopyValue(@"AnalyticsTestEvent", @"com.apple.CoreAccessories.TestLDCMAnalytics", @"mobile", v3);
    if (v7)
    {
      v8 = v7;
      self->_analyticsDebugEvent = [v7 intValue];
      CFRelease(v8);
    }
  }

  v9 = CFPreferencesCopyValue(@"MeasureSBU", @"com.apple.CoreAccessories.TestLDCMAnalytics", @"mobile", v3);
  if (v9)
  {
    v10 = v9;
    self->_measureSBU = CFBooleanGetValue(v9) != 0;

    CFRelease(v10);
  }
}

- (void)_writeAndNotifyDefaults:(id)defaults value:(id)value domain:(id)domain notify:(BOOL)notify notification:(id)notification
{
  notifyCopy = notify;
  CFPreferencesSetValue(defaults, value, domain, @"mobile", *MEMORY[0x277CBF030]);
  if (notifyCopy)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, notification, self, 0, 1u);
  }
}

- (void)handleAttachEvent
{
  halogenTypeCDispatchQueue = self->_halogenTypeCDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__IOAccessoryLDCMPortManagerTypeC_handleAttachEvent__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  dispatch_async(halogenTypeCDispatchQueue, block);
}

uint64_t __52__IOAccessoryLDCMPortManagerTypeC_handleAttachEvent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsReceptacleEmpty:0];
  [*(a1 + 32) setNewAccArrived:1];
  [*(a1 + 32) performTypeCMeasurement];
  v2 = *(a1 + 32);

  return [v2 setNewAccArrived:0];
}

- (void)handleDetachEvent
{
  halogenTypeCDispatchQueue = self->_halogenTypeCDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__IOAccessoryLDCMPortManagerTypeC_handleDetachEvent__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  dispatch_async(halogenTypeCDispatchQueue, block);
}

uint64_t __52__IOAccessoryLDCMPortManagerTypeC_handleDetachEvent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInitialAlertShown:0];
  [*(a1 + 32) setFollowupAlertShown:0];
  [*(a1 + 32) setIsReceptacleEmpty:1];
  v2 = *(a1 + 32);

  return [v2 _dismissWetPrompt];
}

- (void)_showMitigationAlert
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [v3 initWithObjectsAndKeys:{@"Liquid Detected. Turning off Type-C Port. The port will be re-enabled automatically once dry.", *MEMORY[0x277CBF188], @"At your own risk, you may override this now or later from Settings > Accessories > Re-Enable Port.", *MEMORY[0x277CBF198], @"Override", *MEMORY[0x277CBF1C0], @"OK", *MEMORY[0x277CBF1E8], *MEMORY[0x277CBED28], *MEMORY[0x277CBF1B0], *MEMORY[0x277CBED28], *MEMORY[0x277D67320], *MEMORY[0x277CBED28], *MEMORY[0x277D67340], 0}];
  error = 0;
  responseFlags = 0xAAAAAAAAAAAAAAAALL;
  v5 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v4);
  error = CFUserNotificationReceiveResponse(v5, 0.0, &responseFlags);
  if (!error && responseFlags == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CoreAccessories.LDCMMitigationsOverrideNotification", self, 0, 1u);
  }
}

- (BOOL)_holdPowerAssertionTypeC:(BOOL)c
{
  v12[4] = *MEMORY[0x277D85DE8];
  isPowerAssertionHeld = self->_isPowerAssertionHeld;
  if (isPowerAssertionHeld == c)
  {
    result = 1;
  }

  else
  {
    cCopy = c;
    if (isPowerAssertionHeld || !c)
    {
      if (c || !self->_isPowerAssertionHeld)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [IOAccessoryLDCMPortManagerTypeC _holdPowerAssertionTypeC:];
        }
      }

      else if (IOPMAssertionRelease(self->_sleepAssertionID))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IOAccessoryLDCMPortManagerTypeC _holdPowerAssertionTypeC:];
        }
      }

      else
      {
        self->_isPowerAssertionHeld = 0;
      }
    }

    else
    {
      v11[0] = @"AssertType";
      v11[1] = @"AssertLevel";
      v12[0] = @"NoIdleSleepAssertion";
      v12[1] = &unk_2866B8EE8;
      v11[2] = @"AssertName";
      v11[3] = @"AllowsDeviceRestart";
      v7 = *MEMORY[0x277CBED28];
      v12[2] = @"com.apple.ioaccessorymanager.halogenTypeC";
      v12[3] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
      AssertionID = self->_sleepAssertionID;
      if (IOPMAssertionCreateWithProperties(v8, &AssertionID))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [IOAccessoryLDCMPortManagerTypeC _holdPowerAssertionTypeC:];
        }
      }

      else
      {
        self->_sleepAssertionID = AssertionID;
        self->_isPowerAssertionHeld = 1;
      }
    }

    result = self->_isPowerAssertionHeld == cCopy;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_readLDCMBootArgs
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_controlLDCMMeasurements
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (int)_halogenErrorToAnalyticError:(unsigned __int8)error
{
  if ((error - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return error;
  }
}

- (int)_measurementErrorToAnalyticError:(unsigned __int8)error
{
  if (((error - 3) & 0xF8) != 0)
  {
    return 0;
  }

  else
  {
    return (error - 3) + 11;
  }
}

- (void)_resetLDCMErrorDict
{
  self->_didReportDisabledAnalytic = 0;
  v3 = 1;
  do
  {
    ldcmErrorCountDict = self->_ldcmErrorCountDict;
    v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
    -[NSMutableDictionary setObject:forKey:](ldcmErrorCountDict, "setObject:forKey:", v5, [MEMORY[0x277CCABB0] numberWithInt:v3]);
    v3 = (v3 + 1);
  }

  while (v3 != 19);
}

_BYTE *__55__IOAccessoryLDCMPortManagerTypeC_performTypeCSelfTest__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[11] == 1)
  {
    return [result _generateLDCMCSVData];
  }

  return result;
}

_BYTE *__67__IOAccessoryLDCMPortManagerTypeC_performTypeCReferenceMeasurement__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[11] == 1)
  {
    return [result _generateLDCMCSVData];
  }

  return result;
}

- (void)performTypeCMeasurement
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

_BYTE *__58__IOAccessoryLDCMPortManagerTypeC_performTypeCMeasurement__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[11] == 1)
  {
    return [result _generateLDCMCSVData];
  }

  return result;
}

- (void)_generateLDCMCSVData
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[IOAccessoryLDCMPortManagerTypeC _generateLDCMCSVData]";
    v5 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Error in creating directory. %@\n", &v3, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __55__IOAccessoryLDCMPortManagerTypeC__generateLDCMCSVData__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 attributesOfItemAtPath:objc_msgSend(MEMORY[0x277CCACA8] error:{"stringWithFormat:", @"%@%@", *(a1 + 32), a2), &v14}];
  if (v14)
  {
    NSLog(&cfstr_ErrorFetchingF_1.isa, [v14 localizedDescription], a2);
  }

  v8 = *MEMORY[0x277CCA108];
  v9 = [v7 objectForKey:*MEMORY[0x277CCA108]];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v10 attributesOfItemAtPath:objc_msgSend(MEMORY[0x277CCACA8] error:{"stringWithFormat:", @"%@%@", *(a1 + 32), a3), &v13}];
  if (v13)
  {
    NSLog(&cfstr_ErrorFetchingF_2.isa, [v13 localizedDescription], a3);
  }

  return [v9 compare:{objc_msgSend(v11, "objectForKey:", v8)}];
}

- (id)_fetchFilesToUpload:(id)upload
{
  v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v5 = [v4 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"self BEGINSWITH[cd] 'internalMeasurementData'"}];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  if ([v6 count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      [v6 replaceObjectAtIndex:v7 withObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", upload, objc_msgSend(v6, "objectAtIndex:", v7))}];
      v7 = v8;
    }

    while ([v6 count] > v8++);
  }

  return v6;
}

void __70__IOAccessoryLDCMPortManagerTypeC__fileRadarHalogenTypeC_TTRCategory___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IOAccessoryLDCMPortManagerTypeC _fileRadarHalogenTypeC:TTRCategory:]_block_invoke";
    v7 = 2112;
    v8 = a3;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Error while filing radar. %@\n", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setInitialUserNotificationTimestamp
{
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v4 = v3 - 5000000000;
  if (v3 < 0x12A05F200)
  {
    v4 = 0;
  }

  self->_lastUserNotificationTimeNS = v4;
  return 1;
}

- (BOOL)_throttleUserNotification
{
  if (self->_lastUserNotificationTimeNS)
  {
    result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - self->_lastUserNotificationTimeNS < 0x12A05F200;
    if (self->_initialAlertShown && self->_followupAlertShown)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Too many alerts shown, skipping", v4, 2u);
      }

      return 1;
    }
  }

  else
  {
    [(IOAccessoryLDCMPortManagerTypeC *)self _setInitialUserNotificationTimestamp];
    return 0;
  }

  return result;
}

- (void)_showWetPrompt
{
  halogenTypeCUserPromptDispatchQueue = self->_halogenTypeCUserPromptDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__IOAccessoryLDCMPortManagerTypeC__showWetPrompt__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  dispatch_async(halogenTypeCUserPromptDispatchQueue, block);
}

void __49__IOAccessoryLDCMPortManagerTypeC__showWetPrompt__block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (gWetNotificationContext)
  {
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Showing wet prompt", buf, 2u);
  }

  v29 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277CBEC28];
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"legacy"];
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"typeC"];
    [v3 setObject:v4 forKeyedSubscript:@"chargerConnected"];
    [v3 setObject:v4 forKeyedSubscript:@"reinsertion"];
    v5 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    if (v5)
    {
      v6 = v5;
      [v5 setUserInfo:v3];
      v34[0] = v6;
      v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objc_msgSend(MEMORY[0x277CBEA60] requiringSecureCoding:"arrayWithObjects:count:" error:{v34, 1), 1, &v29}];
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = v8;
      if (v8)
      {
        [v8 setObject:@"com.apple.IOAccessoryManagerFramework.WetNotification" forKeyedSubscript:*MEMORY[0x277D67350]];
        [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277D67358]];
        v10 = MEMORY[0x277CBEC38];
        [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBF1B0]];
        [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
        [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D67340]];
        v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.IOAccessoryManagerFramework"];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 pathForResource:@"PlugIns/WetNotification.appex/Assets.car" ofType:&stru_2866AF328];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = "[IOAccessoryLDCMPortManagerTypeC _showWetPrompt]_block_invoke";
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Setting asset path for LDCM wet icon:%@", buf, 0x16u);
          }

          [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D673A0]];
          [v9 setObject:@"lockScreenLiquidDetection" forKeyedSubscript:*MEMORY[0x277D67398]];
          [v9 setObject:@"YES" forKeyedSubscript:*MEMORY[0x277D67390]];
          [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D67378]];
          [v9 setObject:@"lockScreenLiquidDetection" forKeyedSubscript:*MEMORY[0x277D67370]];
          v14 = [v12 resourceURL];
          [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBF208]];
          v15 = @"WETMSG_DIALOG_HEADER_LOCKSCREEN";
          v16 = @"WETMSG_DIALOG_BODY_LOCKSCREEN_TYPEC_PASSIVE";
          v17 = @"WETMSG_BUTTON_DISMISS";
        }

        else
        {
          v15 = @"LIQUID DETECTED";
          v16 = @"Liquid has been detected in the USB-C connector. Disconnect to allow the connector to dry.";
          v17 = @"Dismiss";
        }

        [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277D673B8]];
        [v9 setObject:v16 forKeyedSubscript:*MEMORY[0x277D673C8]];
        [v9 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
        v18 = *(a1 + 32);
        if (*(v18 + 11) == 1 && (*(v18 + 25) & 1) == 0)
        {
          if (v12)
          {
            v19 = @"WETMSG_BUTTON_RADAR";
          }

          else
          {
            v19 = @"Radar";
          }

          [v9 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
        }

        v20 = *MEMORY[0x277CBECE8];
        v21 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v9);
        if (!v21)
        {
          goto LABEL_22;
        }

        RunLoopSource = CFUserNotificationCreateRunLoopSource(v20, v21, handleWetPromptResponse, 0);
        if (!RunLoopSource)
        {
          goto LABEL_22;
        }

        v23 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v23, *MEMORY[0x277CBF048]);
        v25 = *(a1 + 32);
        gWetNotificationContext = v21;
        qword_27F612850 = v23;
        qword_27F612858 = v25;
      }

      v21 = 0;
LABEL_22:

      if (v9)
      {
      }

      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_26;
    }
  }

LABEL_26:
  v26 = v29;
  if (v29)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [objc_msgSend(v26 "localizedDescription")];
      *buf = 136315394;
      v31 = "[IOAccessoryLDCMPortManagerTypeC _showWetPrompt]_block_invoke";
      v32 = 2080;
      v33 = v27;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s err: %s", buf, 0x16u);
      v26 = v29;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_dismissWetPrompt
{
  halogenTypeCUserPromptDispatchQueue = self->_halogenTypeCUserPromptDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__IOAccessoryLDCMPortManagerTypeC__dismissWetPrompt__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  dispatch_async(halogenTypeCUserPromptDispatchQueue, block);
}

void __52__IOAccessoryLDCMPortManagerTypeC__dismissWetPrompt__block_invoke()
{
  if (gWetNotificationContext)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v0 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Dismissing wet prompt", v0, 2u);
    }

    clearNotificationContext();
  }
}

- (void)_generateAlternateMeasurementAnalytics:(BOOL)analytics measurementInfo:(id *)info intervalSinceLastPass:(double)pass
{
  analyticsCopy = analytics;
  v24 = *MEMORY[0x277D85DE8];
  if (self->_isInternalBuild)
  {
    v8 = MGGetStringAnswer();
    if ([v8 hasPrefix:{@"iPad13, 8"}] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPad13,9") & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPad13,10") & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPad13,11"))
    {
      goto LABEL_25;
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (!v9)
  {
    [IOAccessoryLDCMPortManagerTypeC _generateAlternateMeasurementAnalytics:measurementInfo:intervalSinceLastPass:];
    goto LABEL_25;
  }

  v10 = v9;
  [v9 setString:&stru_2866AF328];
  var0 = info->var0;
  if (info->var0 == 2)
  {
    v12 = @"com.apple.ioaccessorymanager.ldcm.usbc.referenceMeasurementFailure";
    v13 = @"com.apple.ioaccessorymanager.ldcm.usbc.referenceMeasurement";
    v14 = @"com.apple.ioaccessorymanager.ldcm.usbc.referenceMeasurementFailToPassDuration";
    goto LABEL_11;
  }

  if (var0 == 1)
  {
    v12 = @"com.apple.ioaccessorymanager.ldcm.usbc.selfTestFailure";
    v13 = @"com.apple.ioaccessorymanager.ldcm.usbc.selfTest";
    v14 = @"com.apple.ioaccessorymanager.ldcm.usbc.selfTestFailToPassDuration";
LABEL_11:
    if (pass > 0.0)
    {
      v13 = v14;
    }

    if (analyticsCopy)
    {
      v15 = v13;
    }

    else
    {
      v15 = v12;
    }

    [v10 setString:v15];
    if ([v10 length])
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (pass <= 0.0)
      {
        [v16 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var14), @"resistance"}];
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:info->var15];
        v18 = @"capacitance";
      }

      else
      {
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:floor(pass / 60.0)];
        v18 = @"duration";
      }

      [v16 setObject:v17 forKey:v18];
      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109634;
        *v21 = 2095;
        *&v21[4] = 2112;
        *&v21[6] = v10;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%d Analytics event for %@:%@\n", &v20, 0x1Cu);
      }
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    *v21 = "[IOAccessoryLDCMPortManagerTypeC _generateAlternateMeasurementAnalytics:measurementInfo:intervalSinceLastPass:]";
    *&v21[8] = 1024;
    *&v21[10] = var0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Measurement type is neither SelfTest or Reference. Type:%d\n", &v20, 0x12u);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_generateFailureAnalytics:(int)analytics recordLDCMDisabled:(BOOL)disabled analyticsError:(int)error
{
  disabledCopy = disabled;
  if (analytics != 1)
  {
    if (analytics == 10)
    {
      self->_isReceptacleEmpty;
    }

    else if (analytics != 3)
    {
      goto LABEL_7;
    }
  }

  AnalyticsSendEvent();
LABEL_7:
  if (disabledCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", error), @"disable_reason"}];
    AnalyticsSendEvent();

    self->_didReportDisabledAnalytic = 1;
  }
}

- (void)_generateAnalytics:(BOOL)analytics dryToWetTransition:(BOOL)transition measurementInfo:(id *)info
{
  transitionCopy = transition;
  v26 = *MEMORY[0x277D85DE8];
  if (analytics && ![(IOAccessoryLDCMPortManagerTypeC *)self _throttleUserNotification])
  {
    [(IOAccessoryLDCMPortManagerTypeC *)self _showWetPrompt];
    self->_initialAlertShown = 1;
    AnalyticsSendEvent();
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  var2 = info->var2;
  if (var2 > 6)
  {
    if (var2 <= 8)
    {
      if (var2 == 7)
      {
        if (info->var9 < 0.07)
        {
          [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"badCalCurrentAmp"}];
        }

        if (info->var8 >= 0.07)
        {
          goto LABEL_38;
        }

        v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        v11 = @"badCalVoltageAmp";
      }

      else
      {
        if (info->var17 < 24.0)
        {
          [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"badMeasurementCurrentSNR"}];
        }

        if (info->var16 >= 24.0)
        {
          goto LABEL_38;
        }

        v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        v11 = @"badMeasurementVoltageSNR";
      }

      goto LABEL_37;
    }

    if (var2 == 9)
    {
      if (info->var19 < 0.14)
      {
        [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"badMeasurementCurrentAmp"}];
      }

      if (info->var18 >= 0.14)
      {
        goto LABEL_38;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v11 = @"badMeasurementVoltageAmp";
      goto LABEL_37;
    }

    if (var2 == 10)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:info->var15];
      v11 = @"badMeasurementNegativeCap";
      goto LABEL_37;
    }

LABEL_41:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = 67109120;
      v25[1] = 2307;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%d No analytics event generated.\n", v25, 8u);
    }

    goto LABEL_40;
  }

  if (var2 <= 1)
  {
    if (var2)
    {
      if (var2 == 1)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v12 setString:@"NONE"];
    drySinceWetCount = self->_drySinceWetCount;
    if (drySinceWetCount == 3)
    {
      [(IOAccessoryLDCMPortManagerTypeC *)self _dismissWetPrompt];
      ++self->_drySinceWetCount;
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_wetMeasurementInfo.intialImpedance), @"initialImpedance"}];
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_wetMeasurementInfo.intialResistance), @"initialResistance"}];
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_wetMeasurementInfo.intialCapacitance), @"initialCapacitance"}];
      v14 = MEMORY[0x277CCABB0];
      [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
      [v8 setObject:objc_msgSend(v14 forKey:{"numberWithDouble:", v15 - self->_wetMeasurementInfo.initialWetWallTime), @"wetDuration"}];
      isReceptacleEmpty = self->_isReceptacleEmpty;
      v17 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetToDryTransitionPortNotEmpty";
      v18 = @"com.apple.ioaccessorymanager.ldcm.usbc.wetToDryTransition";
    }

    else
    {
      if (drySinceWetCount < 4)
      {
LABEL_49:
        AnalyticsSendEvent();

        goto LABEL_40;
      }

      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var14), @"resistance"}];
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var22), @"impedance"}];
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var15), @"capacitance"}];
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var23), @"impedancePhase"}];
      isReceptacleEmpty = self->_isReceptacleEmpty;
      v17 = @"com.apple.ioaccessorymanager.ldcm.usbc.dryMeasurementPortNotEmpty";
      v18 = @"com.apple.ioaccessorymanager.ldcm.usbc.dryMeasurement";
    }

    if (isReceptacleEmpty)
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }

    [v12 setString:v21];
    goto LABEL_49;
  }

  if (var2 != 2)
  {
    if (var2 == 6)
    {
      if (info->var7 < 24.0)
      {
        [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"badCalCurrentSNR"}];
      }

      if (info->var6 >= 24.0)
      {
        goto LABEL_38;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v11 = @"badCalVoltageSNR";
LABEL_37:
      [v8 setObject:v10 forKey:v11];
LABEL_38:
      self->_isReceptacleEmpty;
LABEL_39:
      AnalyticsSendEvent();
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (transitionCopy)
  {
    *&self->_wetMeasurementInfo.intialResistance = *&info->var14;
    self->_wetMeasurementInfo.intialImpedance = info->var22;
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    self->_wetMeasurementInfo.initialWetWallTime = v19;
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var14), @"resistance"}];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var22), @"impedance"}];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var15), @"capacitance"}];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var23), @"impedancePhase"}];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var16), @"measurementVoltageSNR"}];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", info->var17), @"measurementCurrentSNR"}];
    if (!self->_isReceptacleEmpty)
    {
      self->_newAccArrived;
    }

    goto LABEL_39;
  }

  if (!self->_wetTooLongRecorded)
  {
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v23 = v22 - self->_wetMeasurementInfo.initialWetWallTime;
    v24 = 28800.0;
    if (WET_TOO_LONG_THRESHOLD)
    {
      v24 = 120.0;
    }

    if (v23 > v24)
    {
      [(IOAccessoryLDCMPortManagerTypeC *)self setWetTooLongRecorded:1];
      [(HalogenTypeC *)self->_typeC setWetTooLong:1];
      goto LABEL_39;
    }
  }

LABEL_40:

  v20 = *MEMORY[0x277D85DE8];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)wetMeasurementInfo
{
  intialResistance = self->_wetMeasurementInfo.intialResistance;
  intialCapacitance = self->_wetMeasurementInfo.intialCapacitance;
  intialImpedance = self->_wetMeasurementInfo.intialImpedance;
  initialWetWallTime = self->_wetMeasurementInfo.initialWetWallTime;
  result.var3 = initialWetWallTime;
  result.var2 = intialImpedance;
  result.var1 = intialCapacitance;
  result.var0 = intialResistance;
  return result;
}

- (IOAccessoryLDCMPortManagerTypeC)initWithParams:(unint64_t)params dryPollingIntervalNs:(unint64_t)ns
{
  v54 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = IOAccessoryLDCMPortManagerTypeC;
  v6 = [(IOAccessoryLDCMPortManagerTypeC *)&v51 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_21;
  }

  *(v6 + 12) = 1000000000 * params;
  *(v6 + 13) = 1000000000 * ns;
  *(v6 + 5) = 0;
  *(v6 + 7) = 0;
  v6[16] = 0;
  *(v6 + 8) = 4;
  *(v6 + 21) = 0;
  *(v6 + 15) = 0;
  *(v6 + 16) = 0;
  *(v6 + 44) = 0;
  *(v6 + 36) = 0;
  [v6 _controlLDCMMeasurements];
  *(v7 + 17) = 0;
  *(v7 + 23) = 0;
  v7[25] = 0;
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    v7[11] = CFEqual(v8, @"Internal") != 0;
    CFRelease(v9);
  }

  else
  {
    v7[11] = 0;
  }

  *(v7 + 9) = 0;
  v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  *(v7 + 20) = v10;
  if (!v10)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_21;
  }

  [v7 _registerForLDCMNotifications];
  v11 = dispatch_queue_create("HalogenTypeCDispatchQueue", 0);
  *(v7 + 10) = v11;
  if (!v11)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v52 = 136315138;
    v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
LABEL_38:
    OUTLINED_FUNCTION_0_4();
    _os_log_impl(v41, v42, v43, v44, v45, v46);
    goto LABEL_39;
  }

  v12 = dispatch_queue_create("HalogenTypeCUserPromptDispatchQueue", 0);
  *(v7 + 24) = v12;
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v52 = 136315138;
    v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
    goto LABEL_38;
  }

  v13 = [[HalogenTypeC alloc] initWithParams:2182 onPort:1];
  *(v7 + 9) = v13;
  if (!v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v52) = 0;
    OUTLINED_FUNCTION_1_3();
    v38 = 2;
    goto LABEL_20;
  }

  v16 = OUTLINED_FUNCTION_15_0(MEMORY[0x277D85D38], v14, v15, *(v7 + 10));
  *(v7 + 11) = v16;
  if (!v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v52 = 136315138;
    v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
    goto LABEL_38;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__IOAccessoryLDCMPortManagerTypeC_initWithParams_dryPollingIntervalNs___block_invoke;
  handler[3] = &unk_279793038;
  handler[4] = v7;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_source_set_timer(*(v7 + 11), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v7 + 11));
  v19 = OUTLINED_FUNCTION_15_0(MEMORY[0x277D85D38], v17, v18, *(v7 + 10));
  *(v7 + 17) = v19;
  if (!v19)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v52 = 136315138;
    v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
    goto LABEL_38;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __71__IOAccessoryLDCMPortManagerTypeC_initWithParams_dryPollingIntervalNs___block_invoke_8;
  v49[3] = &unk_279793038;
  v49[4] = v7;
  dispatch_source_set_event_handler(v19, v49);
  v20 = *(v7 + 17);
  v21 = arc4random_uniform(0xFu);
  v22 = dispatch_walltime(0, 1000000000 * (v21 + 1));
  OUTLINED_FUNCTION_4_0(v22);
  dispatch_resume(*(v7 + 17));
  v25 = OUTLINED_FUNCTION_15_0(MEMORY[0x277D85D38], v23, v24, *(v7 + 10));
  *(v7 + 18) = v25;
  if (!v25)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v52 = 136315138;
    v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
    goto LABEL_38;
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __71__IOAccessoryLDCMPortManagerTypeC_initWithParams_dryPollingIntervalNs___block_invoke_9;
  v48[3] = &unk_279793038;
  v48[4] = v7;
  dispatch_source_set_event_handler(v25, v48);
  dispatch_source_set_timer(*(v7 + 18), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v7 + 18));
  if ([*(v7 + 9) isHWSelfTestCapable])
  {
    v28 = OUTLINED_FUNCTION_15_0(MEMORY[0x277D85D38], v26, v27, *(v7 + 10));
    *(v7 + 16) = v28;
    if (!v28)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v52 = 136315138;
        v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __71__IOAccessoryLDCMPortManagerTypeC_initWithParams_dryPollingIntervalNs___block_invoke_10;
    v47[3] = &unk_279793038;
    v47[4] = v7;
    dispatch_source_set_event_handler(v28, v47);
    v29 = *(v7 + 16);
    v30 = arc4random_uniform(0xFu);
    v31 = dispatch_walltime(0, 1000000000 * (v30 + 1));
    OUTLINED_FUNCTION_4_0(v31);
    dispatch_resume(*(v7 + 16));
  }

  v32 = objc_alloc_init(MEMORY[0x277CCA928]);
  *(v7 + 21) = v32;
  if (!v32)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v52 = 136315138;
      v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  [v7 _readLDCMBootArgs];
  v7[12] = [v7 _checkIsReceptacleEmpty];
  [OUTLINED_FUNCTION_13() _processLDCMDefauts:?];
  [v7 _manageLDCMSettings];
  *(v7 + 14) = 10;
  [v7 _processLDCMAnalyticsDefauts];
  if (v7[11] == 1)
  {
    [v7 _writeAndNotifyDefaults:@"MitigationsEnabled" value:@"No" domain:@"com.apple.CoreAccessories.LDCMPreferences" notify:1 notification:@"com.apple.CoreAccessories.MitigationsDidChange"];
  }

  *(v7 + 19) = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 _resetLDCMErrorDict];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v52 = 136315138;
    v53 = "[IOAccessoryLDCMPortManagerTypeC initWithParams:dryPollingIntervalNs:]";
    OUTLINED_FUNCTION_0_4();
LABEL_20:
    _os_log_impl(v33, v34, v35, v36, v37, v38);
  }

LABEL_21:
  v39 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)performTypeCSelfTest
{
  v56[5] = *MEMORY[0x277D85DE8];
  typeC = [(IOAccessoryLDCMPortManagerTypeC *)self typeC];
  [(NSCondition *)self->_condition lock];
  [OUTLINED_FUNCTION_13() setIsMeasurementActive:?];
  [(NSCondition *)self->_condition unlock];
  if (!self->_isReceptacleEmpty)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    LODWORD(v56[0]) = 136315138;
    *(v56 + 4) = "[IOAccessoryLDCMPortManagerTypeC performTypeCSelfTest]";
    goto LABEL_32;
  }

  if (!typeC)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    LODWORD(v56[0]) = 136315138;
    *(v56 + 4) = "[IOAccessoryLDCMPortManagerTypeC performTypeCSelfTest]";
LABEL_32:
    OUTLINED_FUNCTION_0_4();
    goto LABEL_35;
  }

  if (![OUTLINED_FUNCTION_13() _holdPowerAssertionTypeC:?])
  {
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v56[0]) = 136315138;
    *(v56 + 4) = "[IOAccessoryLDCMPortManagerTypeC performTypeCSelfTest]";
    OUTLINED_FUNCTION_0_4();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
  }

  if ([(HalogenTypeC *)typeC doLDCMMeasurement:3 isCalibrationNeeded:0 isReceptacleEmpty:self->_isReceptacleEmpty isReceptacleWet:self->_isWet withWetTransitionThreshold:3.5 withDryTransitionThreshold:1.0])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    LODWORD(v56[0]) = 136315394;
    OUTLINED_FUNCTION_13_0("[IOAccessoryLDCMPortManagerTypeC performTypeCSelfTest]");
    OUTLINED_FUNCTION_1_3();
    v48 = 18;
LABEL_35:
    _os_log_impl(v43, v44, v45, v46, v47, v48);
    goto LABEL_27;
  }

  v10 = OUTLINED_FUNCTION_2_3();
  v52 = 3221225472;
  v53 = __55__IOAccessoryLDCMPortManagerTypeC_performTypeCSelfTest__block_invoke;
  v54 = &unk_279793038;
  selfCopy = self;
  dispatch_async(v10, block);
  memcpy(__dst, &xmmword_25491C358, sizeof(__dst));
  [(HalogenTypeC *)typeC getMeasurementInfo];
  if (__dst[2] == 15)
  {
    v25 = self->_selfTestPassCount + 1;
    self->_selfTestFailureCount = 0;
    self->_selfTestPassCount = v25;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v56[0]) = 67109120;
      HIDWORD(v56[0]) = v25;
      OUTLINED_FUNCTION_1_3();
      _os_log_impl(v26, v27, v28, v29, v30, 8u);
    }

    selfTestPassCount = self->_selfTestPassCount;
    if (self->_selfTestFailed)
    {
      if (selfTestPassCount == 3)
      {
        [(IOAccessoryLDCMPortManagerTypeC *)self _writeAndNotifyDefaults:@"selfTestMeasurementsFailed" value:@"No" domain:@"com.apple.CoreAccessories.LDCMPreferences" notify:1 notification:@"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification"];
        v56[0] = NAN;
        v32 = *MEMORY[0x277CBF030];
        v33 = CFPreferencesCopyValue(@"selfTestFailureTimestamp", @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", *MEMORY[0x277CBF030]);
        if (v33)
        {
          v34 = v33;
          OUTLINED_FUNCTION_10_0();
          CFNumberGetValue(v35, v36, v37);
          if (v56[0] > 0.0)
          {
            [objc_msgSend(MEMORY[0x277CBEAA8] date];
            [OUTLINED_FUNCTION_13() _generateAlternateMeasurementAnalytics:? measurementInfo:? intervalSinceLastPass:?];
          }

          CFRelease(v34);
        }

        valuePtr = 0;
        v38 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
        if (v38)
        {
          v39 = v38;
          CFPreferencesSetValue(@"selfTestFailureTimestamp", v38, @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", v32);
          CFRelease(v39);
        }
      }
    }

    else if (selfTestPassCount >= 3)
    {
      [OUTLINED_FUNCTION_5_0() _generateAlternateMeasurementAnalytics:1 measurementInfo:? intervalSinceLastPass:?];
    }
  }

  else if (__dst[2] == 16)
  {
    v11 = self->_selfTestFailureCount + 1;
    *&self->_selfTestFailureCount = v11;
    if (v11 == 3)
    {
      [(IOAccessoryLDCMPortManagerTypeC *)self _writeAndNotifyDefaults:@"selfTestMeasurementsFailed" value:@"Yes" domain:@"com.apple.CoreAccessories.LDCMPreferences" notify:1 notification:@"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification"];
      [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
      v56[0] = v12;
      v13 = *MEMORY[0x277CBECE8];
      OUTLINED_FUNCTION_10_0();
      v17 = CFNumberCreate(v14, v15, v16);
      if (v17)
      {
        v18 = v17;
        CFPreferencesSetValue(@"selfTestFailureTimestamp", v17, @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", *MEMORY[0x277CBF030]);
        CFRelease(v18);
      }

      [OUTLINED_FUNCTION_5_0() _generateAlternateMeasurementAnalytics:0 measurementInfo:? intervalSinceLastPass:?];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        selfTestFailureCount = self->_selfTestFailureCount;
        LODWORD(v56[0]) = 136315650;
        OUTLINED_FUNCTION_7_0(selfTestFailureCount);
        OUTLINED_FUNCTION_1_3();
        _os_log_impl(v20, v21, v22, v23, v24, 0x1Cu);
      }
    }
  }

LABEL_27:
  [OUTLINED_FUNCTION_14() _holdPowerAssertionTypeC:?];
  timerSelfTest = self->_timerSelfTest;
  v41 = OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_0(v41);
  [(NSCondition *)self->_condition lock];
  [OUTLINED_FUNCTION_14() setIsMeasurementActive:?];
  [(NSCondition *)self->_condition unlock];
  v42 = *MEMORY[0x277D85DE8];
}

- (void)performTypeCReferenceMeasurement
{
  v67 = *MEMORY[0x277D85DE8];
  [(NSCondition *)self->_condition lock];
  [OUTLINED_FUNCTION_13() setIsMeasurementActive:?];
  [(NSCondition *)self->_condition unlock];
  if (!self->_isReceptacleEmpty)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *v63 = 136315138;
    *&v63[4] = "[IOAccessoryLDCMPortManagerTypeC performTypeCReferenceMeasurement]";
    goto LABEL_34;
  }

  typeC = [(IOAccessoryLDCMPortManagerTypeC *)self typeC];
  if (!typeC)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *v63 = 136315138;
    *&v63[4] = "[IOAccessoryLDCMPortManagerTypeC performTypeCReferenceMeasurement]";
LABEL_34:
    OUTLINED_FUNCTION_0_4();
    goto LABEL_37;
  }

  v4 = typeC;
  if (![OUTLINED_FUNCTION_13() _holdPowerAssertionTypeC:?])
  {
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 136315138;
    *&v63[4] = "[IOAccessoryLDCMPortManagerTypeC performTypeCReferenceMeasurement]";
    OUTLINED_FUNCTION_0_4();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  if ([(HalogenTypeC *)v4 doLDCMMeasurement:1 isCalibrationNeeded:0 isReceptacleEmpty:self->_isReceptacleEmpty isReceptacleWet:self->_isWet withWetTransitionThreshold:3.5 withDryTransitionThreshold:1.0])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *v63 = 136315394;
    OUTLINED_FUNCTION_13_0("[IOAccessoryLDCMPortManagerTypeC performTypeCReferenceMeasurement]");
    OUTLINED_FUNCTION_1_3();
    v55 = 18;
LABEL_37:
    _os_log_impl(v50, v51, v52, v53, v54, v55);
    goto LABEL_29;
  }

  v11 = OUTLINED_FUNCTION_2_3();
  v59 = 3221225472;
  v60 = __67__IOAccessoryLDCMPortManagerTypeC_performTypeCReferenceMeasurement__block_invoke;
  v61 = &unk_279793038;
  selfCopy = self;
  dispatch_async(v11, block);
  memcpy(__dst, &xmmword_25491C358, sizeof(__dst));
  [(HalogenTypeC *)v4 getMeasurementInfo];
  if (LODWORD(__dst[1]) == 17)
  {
    v31 = self->_referenceMeasurementPassCount + 1;
    self->_referenceMeasurementFailureCount = 0;
    self->_referenceMeasurementPassCount = v31;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      refMeasurementFailed = self->_refMeasurementFailed;
      *v63 = 67109376;
      *&v63[4] = v31;
      *&v63[8] = 1024;
      *&v63[10] = refMeasurementFailed;
      OUTLINED_FUNCTION_1_3();
      _os_log_impl(v33, v34, v35, v36, v37, 0xEu);
    }

    referenceMeasurementPassCount = self->_referenceMeasurementPassCount;
    if (self->_refMeasurementFailed)
    {
      if (referenceMeasurementPassCount == 3)
      {
        [(IOAccessoryLDCMPortManagerTypeC *)self _writeAndNotifyDefaults:@"referenceMeasurementsFailed" value:@"No" domain:@"com.apple.CoreAccessories.LDCMPreferences" notify:1 notification:@"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification"];
        *v63 = -1;
        v39 = *MEMORY[0x277CBF030];
        v40 = CFPreferencesCopyValue(@"referenceMeasurementsFailureTimestamp", @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", *MEMORY[0x277CBF030]);
        if (v40)
        {
          v41 = v40;
          OUTLINED_FUNCTION_10_0();
          CFNumberGetValue(v42, v43, v44);
          if (*v63 > 0.0)
          {
            [objc_msgSend(MEMORY[0x277CBEAA8] date];
            [OUTLINED_FUNCTION_13() _generateAlternateMeasurementAnalytics:? measurementInfo:? intervalSinceLastPass:?];
          }

          CFRelease(v41);
        }

        valuePtr = 0;
        v45 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
        if (v45)
        {
          v46 = v45;
          CFPreferencesSetValue(@"referenceMeasurementsFailureTimestamp", v45, @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", v39);
          CFRelease(v46);
        }
      }
    }

    else if (referenceMeasurementPassCount >= 3)
    {
      [OUTLINED_FUNCTION_5_0() _generateAlternateMeasurementAnalytics:1 measurementInfo:? intervalSinceLastPass:?];
    }
  }

  else if (LODWORD(__dst[1]) == 18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 136315650;
      *&v63[4] = "[IOAccessoryLDCMPortManagerTypeC performTypeCReferenceMeasurement]";
      *&v63[12] = 2048;
      v64 = __dst[13];
      v65 = 2048;
      v66 = __dst[14];
      OUTLINED_FUNCTION_1_3();
      _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
    }

    v17 = self->_referenceMeasurementFailureCount + 1;
    *&self->_referenceMeasurementFailureCount = v17;
    if (v17 == 3)
    {
      [(IOAccessoryLDCMPortManagerTypeC *)self _writeAndNotifyDefaults:@"referenceMeasurementsFailed" value:@"Yes" domain:@"com.apple.CoreAccessories.LDCMPreferences" notify:1 notification:@"com.apple.CoreAccessories.LDCMActiveMeasurementsDidChangeNotification"];
      [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
      *v63 = v18;
      v19 = *MEMORY[0x277CBECE8];
      OUTLINED_FUNCTION_10_0();
      v23 = CFNumberCreate(v20, v21, v22);
      if (v23)
      {
        v24 = v23;
        CFPreferencesSetValue(@"referenceMeasurementsFailureTimestamp", v23, @"com.apple.CoreAccessories.LDCMPreferences", @"mobile", *MEMORY[0x277CBF030]);
        CFRelease(v24);
      }

      [OUTLINED_FUNCTION_5_0() _generateAlternateMeasurementAnalytics:0 measurementInfo:? intervalSinceLastPass:?];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        referenceMeasurementFailureCount = self->_referenceMeasurementFailureCount;
        *v63 = 136315650;
        OUTLINED_FUNCTION_7_0(referenceMeasurementFailureCount);
        OUTLINED_FUNCTION_1_3();
        _os_log_impl(v26, v27, v28, v29, v30, 0x1Cu);
      }
    }
  }

LABEL_29:
  [OUTLINED_FUNCTION_14() _holdPowerAssertionTypeC:?];
  timerReferenceMeasurement = self->_timerReferenceMeasurement;
  v48 = OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_0(v48);
  [(NSCondition *)self->_condition lock];
  [OUTLINED_FUNCTION_14() setIsMeasurementActive:?];
  [(NSCondition *)self->_condition unlock];
  v49 = *MEMORY[0x277D85DE8];
}

- (void)_fileRadarHalogenTypeC:(id)c TTRCategory:(int)category
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = "Unkown measurement state\n\n";
  if (category == 1)
  {
    v8 = "MANUAL RADAR REQUESTED\n\n";
  }

  if (category)
  {
    v9 = v8;
  }

  else
  {
    v9 = "LIQUID DETECTION REPORT (detected via HalogenTypeC)\n\n";
  }

  v10 = [MEMORY[0x277CCAB68] stringWithUTF8String:v9];
  [v10 appendString:@"Has your iPad or charging cable been near liquid in the past 5 hours? \n\n"];
  [v10 appendString:@"If yes:\n\n"];
  [v10 appendString:@"- Cable or iPad?\n\n"];
  [v10 appendString:{@"- What kind of liquid? (e.g. tap water, rain, sweat, soda, beer, etc.)\n\n"}];
  [v10 appendString:{@"- What kind of exposure? (e.g. submersion, splash, droplet, sitting in puddle, using device with wet/sweaty hands, etc)\n\n"}];
  [v10 appendString:{@"- If the exposure was limited to a certain part of the device, where was it?\n\n"}];
  [v10 appendString:@"- How long was the exposure?\n\n"];
  [v10 appendString:@"- Time since exposure\n"];
  [v10 appendString:@"\n\nIf no:\n\n"];
  [v10 appendString:@"Please describe what happened just before seeing the dialog. For example… Did you just connect an accessory? Did you drop your device? Are you in a humid environment?\n\n\n"];
  [v10 appendString:c];
  v11 = [MEMORY[0x277CCAB68] stringWithString:@"tap-to-radar://new?ComponentName=LDCM&ComponentVersion=AutofilledBugs&ComponentID=750390&Classification=Other Bug&Reproducibility=Not Applicable&"];
  v12 = [(IOAccessoryLDCMPortManagerTypeC *)self _fetchFilesToUpload:@"/var/logs/ldcm/"];
  if ([v12 count])
  {
    [v11 appendFormat:@"Attachments=%@", objc_msgSend(v12, "componentsJoinedByString:", @", ")];
  }

  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    [v11 appendFormat:@", %@", @"/var/logs/ldcm/halogenTypeC_ttr.wav"];
  }

  [v11 appendString:@"&"];
  [v11 appendFormat:@"Description=%@", v10];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(v11, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x277CCA900], "URLQueryAllowedCharacterSet"))}];
  [(IOAccessoryLDCMPortManagerTypeC *)self _loadFrontBoard];
  if (self->_FBSOpenApplicationOptionKeyPromptUnlockDevice)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:self->_FBSOpenApplicationOptionKeyPromptUnlockDevice length:8 encoding:1];
    if (v14)
    {
      v16 = v14;
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), v14}];
      [objc_msgSend(MEMORY[0x277CC1E80] "defaultWorkspace")];
    }
  }

  else
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];

    [defaultWorkspace openURL:v13 configuration:0 completionHandler:&__block_literal_global_1];
  }
}

- (void)_holdPowerAssertionTypeC:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_holdPowerAssertionTypeC:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_11_0();
  _os_log_debug_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s halogen power assertion already in the correct state: %d.\n", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_holdPowerAssertionTypeC:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setMitigations:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_generateAlternateMeasurementAnalytics:measurementInfo:intervalSinceLastPass:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end