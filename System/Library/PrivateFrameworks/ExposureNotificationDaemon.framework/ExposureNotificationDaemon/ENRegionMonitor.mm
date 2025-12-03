@interface ENRegionMonitor
+ (id)locationAuthorizationStatusToString:(int)string;
+ (id)regionMonitorAuthorizationStateToString:(unint64_t)string;
+ (id)regionMonitorMonitoringModeToString:(unint64_t)string;
+ (unint64_t)regionMonitorStateFromAuthorizationStatus:(int)status;
- (BOOL)_purgeAllRegionHistoryWithError:(id *)error;
- (BOOL)_purgeRegionsOlderThanDate:(id)date error:(id *)error;
- (BOOL)purgeAllRegionHistoryWithError:(id *)error;
- (BOOL)purgeRegionsOlderThanDate:(id)date error:(id *)error;
- (ENRegionMonitor)init;
- (ENRegionMonitorDelegate)delegate;
- (ENRegionVisit)currentRegionVisit;
- (id)_getAllRegionVisitsWithError:(id *)error;
- (id)_getAllRegionsWithError:(id *)error;
- (id)_getCurrentRegionVisitWithError:(id *)error;
- (id)getAllRegionVisitsWithError:(id *)error;
- (id)getAllRegionsWithError:(id *)error;
- (id)getCurrentRegionVisit;
- (id)getCurrentRegionVisitWithError:(id *)error;
- (unint64_t)getAuthorizationState;
- (unint64_t)getMonitoringMode;
- (unint64_t)monitoringMode;
- (void)_createCountryDataSource;
- (void)_createLocationManager;
- (void)_createSubdivisionDataSource;
- (void)_createTestDataSource;
- (void)_notifyDelegateOfCurrentRegion;
- (void)_regionDataSource:(id)source updatedWithVisit:(id)visit;
- (void)_resetRegionMonitor;
- (void)_setup;
- (void)_stopAllDataSources;
- (void)_updateRegionHistoryFileStatus;
- (void)currentRegionVisitDidChange:(id)change;
- (void)disableRegionMonitor;
- (void)enableRegionMonitor;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)regionDataSource:(id)source updatedWithVisit:(id)visit;
- (void)resetRegionMonitor;
- (void)setAuthorizationState:(unint64_t)state;
- (void)setCurrentRegionVisit:(id)visit;
- (void)setExposureNotificationAuthorizationState:(unint64_t)state;
- (void)setMonitoringEnabled:(BOOL)enabled;
- (void)setMonitoringMode:(unint64_t)mode;
- (void)setSignificantLocationsAuthorizationState:(unint64_t)state;
- (void)setup;
- (void)updateAuthorizationState;
- (void)updateRegionHistoryFileStatus;
- (void)updateRegionMonitorMonitoringMode:(unint64_t)mode;
@end

@implementation ENRegionMonitor

- (void)_updateRegionHistoryFileStatus
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  regionHistoryManager = [(ENRegionMonitor *)self regionHistoryManager];
  [regionHistoryManager updateFileStatus];
}

- (void)enableRegionMonitor
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ENRegionMonitor_enableRegionMonitor__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(regionMonitorQueue, block);
}

- (void)updateRegionHistoryFileStatus
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENRegionMonitor_updateRegionHistoryFileStatus__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(regionMonitorQueue, block);
}

+ (unint64_t)regionMonitorStateFromAuthorizationStatus:(int)status
{
  if (status == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (status == 3);
  }
}

+ (id)regionMonitorAuthorizationStateToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Disabled";
  }

  if (string == 2)
  {
    return @"Enabled";
  }

  else
  {
    return v3;
  }
}

+ (id)locationAuthorizationStatusToString:(int)string
{
  if ((string - 1) > 3)
  {
    return @"NotDetermined";
  }

  else
  {
    return off_278FD23E0[string - 1];
  }
}

+ (id)regionMonitorMonitoringModeToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FD2400[string - 1];
  }
}

- (ENRegionMonitor)init
{
  v7.receiver = self;
  v7.super_class = ENRegionMonitor;
  v2 = [(ENRegionMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.exposureNotification.regionMonitor", v3);
    regionMonitorQueue = v2->_regionMonitorQueue;
    v2->_regionMonitorQueue = v4;

    v2->_monitoringMode = 0;
    [(ENRegionMonitor *)v2 setup];
  }

  return v2;
}

- (void)_setup
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  v4 = [ENRegionHistoryManager alloc];
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  v6 = [(ENRegionHistoryManager *)v4 initWithDelegate:self queue:regionMonitorQueue2];
  regionHistoryManager = self->_regionHistoryManager;
  self->_regionHistoryManager = v6;

  [(ENRegionMonitor *)self _createLocationManager];
  [(ENRegionMonitor *)self _createCountryDataSource];

  [(ENRegionMonitor *)self _createSubdivisionDataSource];
}

- (void)setup
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ENRegionMonitor_setup__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(regionMonitorQueue, block);
}

- (void)_notifyDelegateOfCurrentRegion
{
  currentRegionVisit = [self currentRegionVisit];
  LogPrintF_safe();
}

- (void)updateRegionMonitorMonitoringMode:(unint64_t)mode
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ENRegionMonitor_updateRegionMonitorMonitoringMode___block_invoke;
  v6[3] = &unk_278FD11C8;
  v6[4] = self;
  v6[5] = mode;
  dispatch_async(regionMonitorQueue, v6);
}

- (unint64_t)getMonitoringMode
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ENRegionMonitor_getMonitoringMode__block_invoke;
  v7[3] = &unk_278FD2370;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(regionMonitorQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __36__ENRegionMonitor_getMonitoringMode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) monitoringMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)monitoringMode
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  return self->_monitoringMode;
}

- (void)setMonitoringMode:(unint64_t)mode
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (self->_monitoringMode != mode)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setMonitoringMode:];
    }

    self->_monitoringMode = mode;

    [(ENRegionMonitor *)self _resetRegionMonitor];
  }
}

- (void)disableRegionMonitor
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ENRegionMonitor_disableRegionMonitor__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(regionMonitorQueue, block);
}

- (void)setMonitoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (self->_monitoringEnabled != enabledCopy)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [(ENRegionMonitor *)a2 setMonitoringEnabled:?];
    }

    self->_monitoringEnabled = enabledCopy;
    if (enabledCopy)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [(ENRegionMonitor *)self setMonitoringMode:v7];

    [(ENRegionMonitor *)self _resetRegionMonitor];
  }
}

- (void)resetRegionMonitor
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ENRegionMonitor_resetRegionMonitor__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(regionMonitorQueue, block);
}

- (void)_resetRegionMonitor
{
  v7 = NSStringFromSelector(self);
  v4 = [objc_opt_class() regionMonitorAuthorizationStateToString:{objc_msgSend(a2, "exposureNotificationAuthorizationState")}];
  objc_opt_class();
  [v2 regionMonitorAuthorizationStateToString:{objc_msgSend(OUTLINED_FUNCTION_4(), "significantLocationsAuthorizationState")}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v5 = [objc_opt_class() regionMonitorAuthorizationStateToString:{objc_msgSend(a2, "authorizationState")}];
  [a2 monitoringEnabled];
  v6 = [objc_opt_class() regionMonitorMonitoringModeToString:{objc_msgSend(a2, "monitoringMode")}];
  LogPrintF_safe();
}

- (void)_createTestDataSource
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  v4 = [[ENRegionTestDataSource alloc] initWithDelegate:self];
  [(ENRegionMonitor *)self setTestRegionDataSource:v4];
}

- (void)_createCountryDataSource
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  v4 = [[ENRegionMonitorTelephonyDataSource alloc] initWithDelegate:self];
  [(ENRegionMonitor *)self setTelephonyDataSource:v4];
}

- (void)_createSubdivisionDataSource
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  Int64 = CFPrefs_GetInt64();
  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _createSubdivisionDataSource];
  }

  if (Int64)
  {
    v5 = [[ENRegionMonitorCoreLocationDataSource alloc] initWithDelegate:self];
    [(ENRegionMonitor *)self setCoreLocationDataSource:v5];
  }
}

- (void)_stopAllDataSources
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  testRegionDataSource = [(ENRegionMonitor *)self testRegionDataSource];
  [testRegionDataSource stopMonitoring];

  telephonyDataSource = [(ENRegionMonitor *)self telephonyDataSource];
  [telephonyDataSource stopMonitoring];

  coreLocationDataSource = [(ENRegionMonitor *)self coreLocationDataSource];
  [coreLocationDataSource stopMonitoring];
}

- (void)setExposureNotificationAuthorizationState:(unint64_t)state
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (self->_exposureNotificationAuthorizationState != state)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setExposureNotificationAuthorizationState:];
    }

    self->_exposureNotificationAuthorizationState = state;

    [(ENRegionMonitor *)self updateAuthorizationState];
  }
}

- (void)setSignificantLocationsAuthorizationState:(unint64_t)state
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (self->_significantLocationsAuthorizationState != state)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setSignificantLocationsAuthorizationState:];
    }

    self->_significantLocationsAuthorizationState = state;

    [(ENRegionMonitor *)self updateAuthorizationState];
  }
}

- (unint64_t)getAuthorizationState
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ENRegionMonitor_getAuthorizationState__block_invoke;
  block[3] = &unk_278FD2370;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(regionMonitorQueue2, block);

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    v6 = NSStringFromSelector(a2);
    v9 = [objc_opt_class() regionMonitorAuthorizationStateToString:v12[3]];
    LogPrintF_safe();
  }

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (void)updateAuthorizationState
{
  if ([(ENRegionMonitor *)self exposureNotificationAuthorizationState]== 2 && [(ENRegionMonitor *)self significantLocationsAuthorizationState]== 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(ENRegionMonitor *)self setAuthorizationState:v3];
}

- (void)setAuthorizationState:(unint64_t)state
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (self->_authorizationState != state)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setAuthorizationState:];
    }

    self->_authorizationState = state;
    delegate = [(ENRegionMonitor *)self delegate];
    [delegate regionMonitor:self authorizationStateDidChange:self->_authorizationState];

    [(ENRegionMonitor *)self _notifyDelegateOfCurrentRegion];

    [(ENRegionMonitor *)self _resetRegionMonitor];
  }
}

- (void)_createLocationManager
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  Int64 = CFPrefs_GetInt64();
  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _createLocationManager];
  }

  if (Int64)
  {
    exposureNotificationLocationManager = [(ENRegionMonitor *)self exposureNotificationLocationManager];

    if (!exposureNotificationLocationManager)
    {
      v6 = objc_alloc(MEMORY[0x277CBFC18]);
      v7 = [MEMORY[0x277CCA8D0] bundleWithPath:@"/System/Library/LocationBundles/ExposureNotificationBundle.bundle"];
      regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
      v9 = [v6 initWithEffectiveBundle:v7 delegate:self onQueue:regionMonitorQueue2];
      [(ENRegionMonitor *)self setExposureNotificationLocationManager:v9];
    }

    significantLocationsLocationManager = [(ENRegionMonitor *)self significantLocationsLocationManager];

    if (!significantLocationsLocationManager)
    {
      v11 = objc_alloc(MEMORY[0x277CBFC18]);
      v12 = [MEMORY[0x277CCA8D0] bundleWithPath:@"/System/Library/LocationBundles/Routine.bundle"];
      regionMonitorQueue3 = [(ENRegionMonitor *)self regionMonitorQueue];
      v14 = [v11 initWithEffectiveBundle:v12 delegate:self onQueue:regionMonitorQueue3];
      [(ENRegionMonitor *)self setSignificantLocationsLocationManager:v14];
    }
  }

  else
  {
    [(ENRegionMonitor *)self setExposureNotificationAuthorizationState:2];
    [(ENRegionMonitor *)self setSignificantLocationsAuthorizationState:2];
  }
}

- (id)getCurrentRegionVisit
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ENRegionMonitor_getCurrentRegionVisit__block_invoke;
  v7[3] = &unk_278FD2370;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(regionMonitorQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__ENRegionMonitor_getCurrentRegionVisit__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentRegionVisit];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (ENRegionVisit)currentRegionVisit
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  currentRegionVisit = self->_currentRegionVisit;

  return currentRegionVisit;
}

- (void)setCurrentRegionVisit:(id)visit
{
  visitCopy = visit;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  p_currentRegionVisit = &self->_currentRegionVisit;
  date = [(ENRegionVisit *)self->_currentRegionVisit date];
  v26 = visitCopy;
  date2 = [v26 date];
  region = [(ENRegionVisit *)self->_currentRegionVisit region];
  region2 = [v26 region];
  v12 = [region isCountryCodeEqualToRegion:region2];

  if ((v12 & 1) == 0)
  {
    if (gLogCategory_ENRegionMonitor > 30 || gLogCategory_ENRegionMonitor == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_27;
    }

LABEL_26:
    [ENRegionMonitor setCurrentRegionVisit:];
LABEL_27:
    v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v22 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [(ENRegionMonitor *)a2 setCurrentRegionVisit:?];
    }

    v24 = [v26 copy];
    v25 = *p_currentRegionVisit;
    *p_currentRegionVisit = v24;

    if (v26)
    {
      [(ENRegionHistoryManager *)self->_regionHistoryManager addRegionVisit:v26];
      [(ENRegionMonitor *)self _notifyDelegateOfCurrentRegion];
    }

    goto LABEL_33;
  }

  region3 = [v26 region];
  if ([region3 validSubdivisionCode])
  {
    region4 = [*p_currentRegionVisit region];
    if (([region4 validSubdivisionCode] & 1) == 0)
    {

LABEL_23:
      if (gLogCategory_ENRegionMonitor > 30 || gLogCategory_ENRegionMonitor == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    region5 = [*p_currentRegionVisit region];
    region6 = [v26 region];
    v17 = [region5 isSubdivisionCodeEqualToRegion:region6];

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  region7 = [*p_currentRegionVisit region];
  region8 = [v26 region];
  if ([region7 isEqual:region8])
  {
    [date2 timeIntervalSinceDate:date];
    v21 = v20;

    if (v21 > 43200.0)
    {
      if (gLogCategory_ENRegionMonitor > 30 || gLogCategory_ENRegionMonitor == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if (gLogCategory_ENRegionMonitor <= 10 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor setCurrentRegionVisit:];
  }

LABEL_33:
}

- (void)_regionDataSource:(id)source updatedWithVisit:(id)visit
{
  sourceCopy = source;
  visitCopy = visit;
  dispatch_assert_queue_V2(self->_regionMonitorQueue);
  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _regionDataSource:updatedWithVisit:];
    if (!visitCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!visitCopy)
  {
    goto LABEL_9;
  }

  region = [visitCopy region];
  countryCode = [region countryCode];

  if (countryCode)
  {
    [(ENRegionMonitor *)self setCurrentRegionVisit:visitCopy];
    goto LABEL_12;
  }

LABEL_9:
  if (gLogCategory_ENRegionMonitor <= 90 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _regionDataSource:updatedWithVisit:];
  }

LABEL_12:
}

- (void)regionDataSource:(id)source updatedWithVisit:(id)visit
{
  sourceCopy = source;
  visitCopy = visit;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ENRegionMonitor_regionDataSource_updatedWithVisit___block_invoke;
  block[3] = &unk_278FD1240;
  block[4] = self;
  v12 = sourceCopy;
  v13 = visitCopy;
  v9 = visitCopy;
  v10 = sourceCopy;
  dispatch_async(regionMonitorQueue, block);
}

- (BOOL)purgeAllRegionHistoryWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENRegionMonitor_purgeAllRegionHistoryWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v14;
  dispatch_sync(regionMonitorQueue2, block);

  if (error)
  {
    *error = v15[5];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __50__ENRegionMonitor_purgeAllRegionHistoryWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _purgeAllRegionHistoryWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)_purgeAllRegionHistoryWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _purgeAllRegionHistoryWithError:];
  }

  [(ENRegionMonitor *)self setCurrentRegionVisit:0];
  regionHistoryManager = self->_regionHistoryManager;

  return [(ENRegionHistoryManager *)regionHistoryManager purgeAllRegionHistoryWithError:error];
}

- (BOOL)purgeRegionsOlderThanDate:(id)date error:(id *)error
{
  dateCopy = date;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ENRegionMonitor_purgeRegionsOlderThanDate_error___block_invoke;
  v12[3] = &unk_278FD23C0;
  v14 = &v16;
  v12[4] = self;
  v9 = dateCopy;
  v13 = v9;
  v15 = &v20;
  dispatch_sync(regionMonitorQueue2, v12);

  if (error)
  {
    *error = v21[5];
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __51__ENRegionMonitor_purgeRegionsOlderThanDate_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _purgeRegionsOlderThanDate:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
  v6 = [*(a1 + 32) currentRegionVisit];
  v7 = [v6 date];

  v8 = *(a1 + 40);
  v9 = [v8 laterDate:v7];
  LODWORD(v8) = [v8 isEqualToDate:v9];

  if (v8)
  {
    [*(a1 + 32) setCurrentRegionVisit:0];
  }
}

- (BOOL)_purgeRegionsOlderThanDate:(id)date error:(id *)error
{
  dateCopy = date;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _purgeRegionsOlderThanDate:error:];
  }

  v8 = [(ENRegionHistoryManager *)self->_regionHistoryManager purgeRegionsOlderThanDate:dateCopy error:error];

  return v8;
}

- (id)_getAllRegionsWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if ([(ENRegionMonitor *)self authorizationState]== 2)
  {
    getAllRegions = [(ENRegionHistoryManager *)self->_regionHistoryManager getAllRegions];
  }

  else
  {
    if (error)
    {
      *error = ENErrorF();
    }

    if (gLogCategory__ENRegionMonitor <= 90 && (gLogCategory__ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor _getAllRegionsWithError:];
    }

    getAllRegions = 0;
  }

  return getAllRegions;
}

- (id)getAllRegionsWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ENRegionMonitor_getAllRegionsWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(regionMonitorQueue2, block);

  if (error)
  {
    *error = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __42__ENRegionMonitor_getAllRegionsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _getAllRegionsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_getCurrentRegionVisitWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if ([(ENRegionMonitor *)self authorizationState]== 2)
  {
    currentRegionVisit = [(ENRegionMonitor *)self currentRegionVisit];
  }

  else
  {
    if (error)
    {
      *error = ENErrorF();
    }

    v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v7 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitor <= 90 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor _getCurrentRegionVisitWithError:];
    }

    currentRegionVisit = 0;
  }

  return currentRegionVisit;
}

- (id)getCurrentRegionVisitWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENRegionMonitor_getCurrentRegionVisitWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(regionMonitorQueue2, block);

  if (error)
  {
    *error = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __50__ENRegionMonitor_getCurrentRegionVisitWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _getCurrentRegionVisitWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)getAllRegionVisitsWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(regionMonitorQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  regionMonitorQueue2 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ENRegionMonitor_getAllRegionVisitsWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(regionMonitorQueue2, block);

  if (error)
  {
    *error = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __47__ENRegionMonitor_getAllRegionVisitsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _getAllRegionVisitsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_getAllRegionVisitsWithError:(id *)error
{
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  if ([(ENRegionMonitor *)self authorizationState]== 2)
  {
    getAllRegionVisits = [(ENRegionHistoryManager *)self->_regionHistoryManager getAllRegionVisits];
  }

  else
  {
    if (error)
    {
      *error = ENErrorF();
    }

    if (gLogCategory__ENRegionMonitor <= 90 && (gLogCategory__ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor _getAllRegionVisitsWithError:];
    }

    getAllRegionVisits = 0;
  }

  return getAllRegionVisits;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  exposureNotificationLocationManager = [(ENRegionMonitor *)self exposureNotificationLocationManager];

  if (exposureNotificationLocationManager == authorizationCopy)
  {
    -[ENRegionMonitor setExposureNotificationAuthorizationState:](self, "setExposureNotificationAuthorizationState:", [objc_opt_class() regionMonitorStateFromAuthorizationStatus:{objc_msgSend(authorizationCopy, "authorizationStatus")}]);
  }

  else
  {
    significantLocationsLocationManager = [(ENRegionMonitor *)self significantLocationsLocationManager];

    if (significantLocationsLocationManager == authorizationCopy)
    {
      -[ENRegionMonitor setSignificantLocationsAuthorizationState:](self, "setSignificantLocationsAuthorizationState:", [objc_opt_class() regionMonitorStateFromAuthorizationStatus:{objc_msgSend(authorizationCopy, "authorizationStatus")}]);
    }
  }

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [(ENRegionMonitor *)self locationManagerDidChangeAuthorization:authorizationCopy];
  }
}

- (void)currentRegionVisitDidChange:(id)change
{
  changeCopy = change;
  regionMonitorQueue = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(regionMonitorQueue);

  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v5 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor currentRegionVisitDidChange:];
  }

  [(ENRegionMonitor *)self setCurrentRegionVisit:changeCopy];
}

- (ENRegionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setMonitoringMode:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() regionMonitorMonitoringModeToString:*v1];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v3 = [objc_opt_class() regionMonitorMonitoringModeToString:v0];
  OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)setMonitoringEnabled:(const char *)a1 .cold.1(const char *a1, _BYTE *a2)
{
  v3 = NSStringFromSelector(a1);
  *a2;
  v4 = v3;
  LogPrintF_safe();
}

- (void)setExposureNotificationAuthorizationState:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() regionMonitorAuthorizationStateToString:*v1];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v3 = [objc_opt_class() regionMonitorAuthorizationStateToString:v0];
  OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)setSignificantLocationsAuthorizationState:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() regionMonitorAuthorizationStateToString:*v1];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v3 = [objc_opt_class() regionMonitorAuthorizationStateToString:v0];
  OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)setAuthorizationState:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() regionMonitorAuthorizationStateToString:*v1];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  v3 = [objc_opt_class() regionMonitorAuthorizationStateToString:v0];
  OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF_safe();
}

- (void)setCurrentRegionVisit:(const char *)a1 .cold.3(const char *a1, uint64_t *a2)
{
  v3 = NSStringFromSelector(a1);
  v4 = *a2;
  LogPrintF_safe();
}

- (void)_regionDataSource:updatedWithVisit:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  LogPrintF_safe();
}

- (void)locationManagerDidChangeAuthorization:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [objc_opt_class() locationAuthorizationStatusToString:{objc_msgSend(a2, "authorizationStatus")}];
  LogPrintF_safe();
}

@end