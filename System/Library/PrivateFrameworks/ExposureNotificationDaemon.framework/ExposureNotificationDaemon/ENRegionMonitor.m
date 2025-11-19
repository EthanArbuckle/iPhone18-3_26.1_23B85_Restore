@interface ENRegionMonitor
+ (id)locationAuthorizationStatusToString:(int)a3;
+ (id)regionMonitorAuthorizationStateToString:(unint64_t)a3;
+ (id)regionMonitorMonitoringModeToString:(unint64_t)a3;
+ (unint64_t)regionMonitorStateFromAuthorizationStatus:(int)a3;
- (BOOL)_purgeAllRegionHistoryWithError:(id *)a3;
- (BOOL)_purgeRegionsOlderThanDate:(id)a3 error:(id *)a4;
- (BOOL)purgeAllRegionHistoryWithError:(id *)a3;
- (BOOL)purgeRegionsOlderThanDate:(id)a3 error:(id *)a4;
- (ENRegionMonitor)init;
- (ENRegionMonitorDelegate)delegate;
- (ENRegionVisit)currentRegionVisit;
- (id)_getAllRegionVisitsWithError:(id *)a3;
- (id)_getAllRegionsWithError:(id *)a3;
- (id)_getCurrentRegionVisitWithError:(id *)a3;
- (id)getAllRegionVisitsWithError:(id *)a3;
- (id)getAllRegionsWithError:(id *)a3;
- (id)getCurrentRegionVisit;
- (id)getCurrentRegionVisitWithError:(id *)a3;
- (unint64_t)getAuthorizationState;
- (unint64_t)getMonitoringMode;
- (unint64_t)monitoringMode;
- (void)_createCountryDataSource;
- (void)_createLocationManager;
- (void)_createSubdivisionDataSource;
- (void)_createTestDataSource;
- (void)_notifyDelegateOfCurrentRegion;
- (void)_regionDataSource:(id)a3 updatedWithVisit:(id)a4;
- (void)_resetRegionMonitor;
- (void)_setup;
- (void)_stopAllDataSources;
- (void)_updateRegionHistoryFileStatus;
- (void)currentRegionVisitDidChange:(id)a3;
- (void)disableRegionMonitor;
- (void)enableRegionMonitor;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)regionDataSource:(id)a3 updatedWithVisit:(id)a4;
- (void)resetRegionMonitor;
- (void)setAuthorizationState:(unint64_t)a3;
- (void)setCurrentRegionVisit:(id)a3;
- (void)setExposureNotificationAuthorizationState:(unint64_t)a3;
- (void)setMonitoringEnabled:(BOOL)a3;
- (void)setMonitoringMode:(unint64_t)a3;
- (void)setSignificantLocationsAuthorizationState:(unint64_t)a3;
- (void)setup;
- (void)updateAuthorizationState;
- (void)updateRegionHistoryFileStatus;
- (void)updateRegionMonitorMonitoringMode:(unint64_t)a3;
@end

@implementation ENRegionMonitor

- (void)_updateRegionHistoryFileStatus
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ENRegionMonitor *)self regionHistoryManager];
  [v4 updateFileStatus];
}

- (void)enableRegionMonitor
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ENRegionMonitor_enableRegionMonitor__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)updateRegionHistoryFileStatus
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENRegionMonitor_updateRegionHistoryFileStatus__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (unint64_t)regionMonitorStateFromAuthorizationStatus:(int)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 3);
  }
}

+ (id)regionMonitorAuthorizationStateToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Disabled";
  }

  if (a3 == 2)
  {
    return @"Enabled";
  }

  else
  {
    return v3;
  }
}

+ (id)locationAuthorizationStatusToString:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"NotDetermined";
  }

  else
  {
    return off_278FD23E0[a3 - 1];
  }
}

+ (id)regionMonitorMonitoringModeToString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FD2400[a3 - 1];
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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [ENRegionHistoryManager alloc];
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  v6 = [(ENRegionHistoryManager *)v4 initWithDelegate:self queue:v5];
  regionHistoryManager = self->_regionHistoryManager;
  self->_regionHistoryManager = v6;

  [(ENRegionMonitor *)self _createLocationManager];
  [(ENRegionMonitor *)self _createCountryDataSource];

  [(ENRegionMonitor *)self _createSubdivisionDataSource];
}

- (void)setup
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ENRegionMonitor_setup__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_notifyDelegateOfCurrentRegion
{
  v1 = [a1 currentRegionVisit];
  LogPrintF_safe();
}

- (void)updateRegionMonitorMonitoringMode:(unint64_t)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ENRegionMonitor_updateRegionMonitorMonitoringMode___block_invoke;
  v6[3] = &unk_278FD11C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (unint64_t)getMonitoringMode
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(ENRegionMonitor *)self regionMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ENRegionMonitor_getMonitoringMode__block_invoke;
  v7[3] = &unk_278FD2370;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  return self->_monitoringMode;
}

- (void)setMonitoringMode:(unint64_t)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_monitoringMode != a3)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setMonitoringMode:];
    }

    self->_monitoringMode = a3;

    [(ENRegionMonitor *)self _resetRegionMonitor];
  }
}

- (void)disableRegionMonitor
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ENRegionMonitor_disableRegionMonitor__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)setMonitoringEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_monitoringEnabled != v3)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [(ENRegionMonitor *)a2 setMonitoringEnabled:?];
    }

    self->_monitoringEnabled = v3;
    if (v3)
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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ENRegionMonitor_resetRegionMonitor__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_resetRegionMonitor
{
  v7 = NSStringFromSelector(a1);
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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [[ENRegionTestDataSource alloc] initWithDelegate:self];
  [(ENRegionMonitor *)self setTestRegionDataSource:v4];
}

- (void)_createCountryDataSource
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [[ENRegionMonitorTelephonyDataSource alloc] initWithDelegate:self];
  [(ENRegionMonitor *)self setTelephonyDataSource:v4];
}

- (void)_createSubdivisionDataSource
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ENRegionMonitor *)self testRegionDataSource];
  [v4 stopMonitoring];

  v5 = [(ENRegionMonitor *)self telephonyDataSource];
  [v5 stopMonitoring];

  v6 = [(ENRegionMonitor *)self coreLocationDataSource];
  [v6 stopMonitoring];
}

- (void)setExposureNotificationAuthorizationState:(unint64_t)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_exposureNotificationAuthorizationState != a3)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setExposureNotificationAuthorizationState:];
    }

    self->_exposureNotificationAuthorizationState = a3;

    [(ENRegionMonitor *)self updateAuthorizationState];
  }
}

- (void)setSignificantLocationsAuthorizationState:(unint64_t)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_significantLocationsAuthorizationState != a3)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setSignificantLocationsAuthorizationState:];
    }

    self->_significantLocationsAuthorizationState = a3;

    [(ENRegionMonitor *)self updateAuthorizationState];
  }
}

- (unint64_t)getAuthorizationState
{
  v4 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v4);

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ENRegionMonitor_getAuthorizationState__block_invoke;
  block[3] = &unk_278FD2370;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(v5, block);

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

- (void)setAuthorizationState:(unint64_t)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_authorizationState != a3)
  {
    if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor setAuthorizationState:];
    }

    self->_authorizationState = a3;
    v6 = [(ENRegionMonitor *)self delegate];
    [v6 regionMonitor:self authorizationStateDidChange:self->_authorizationState];

    [(ENRegionMonitor *)self _notifyDelegateOfCurrentRegion];

    [(ENRegionMonitor *)self _resetRegionMonitor];
  }
}

- (void)_createLocationManager
{
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  Int64 = CFPrefs_GetInt64();
  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _createLocationManager];
  }

  if (Int64)
  {
    v5 = [(ENRegionMonitor *)self exposureNotificationLocationManager];

    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x277CBFC18]);
      v7 = [MEMORY[0x277CCA8D0] bundleWithPath:@"/System/Library/LocationBundles/ExposureNotificationBundle.bundle"];
      v8 = [(ENRegionMonitor *)self regionMonitorQueue];
      v9 = [v6 initWithEffectiveBundle:v7 delegate:self onQueue:v8];
      [(ENRegionMonitor *)self setExposureNotificationLocationManager:v9];
    }

    v10 = [(ENRegionMonitor *)self significantLocationsLocationManager];

    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x277CBFC18]);
      v12 = [MEMORY[0x277CCA8D0] bundleWithPath:@"/System/Library/LocationBundles/Routine.bundle"];
      v13 = [(ENRegionMonitor *)self regionMonitorQueue];
      v14 = [v11 initWithEffectiveBundle:v12 delegate:self onQueue:v13];
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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v4 = [(ENRegionMonitor *)self regionMonitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ENRegionMonitor_getCurrentRegionVisit__block_invoke;
  v7[3] = &unk_278FD2370;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

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
  v3 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v3);

  currentRegionVisit = self->_currentRegionVisit;

  return currentRegionVisit;
}

- (void)setCurrentRegionVisit:(id)a3
{
  v5 = a3;
  v6 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v6);

  p_currentRegionVisit = &self->_currentRegionVisit;
  v8 = [(ENRegionVisit *)self->_currentRegionVisit date];
  v26 = v5;
  v9 = [v26 date];
  v10 = [(ENRegionVisit *)self->_currentRegionVisit region];
  v11 = [v26 region];
  v12 = [v10 isCountryCodeEqualToRegion:v11];

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
    v23 = [v22 isSensitiveLoggingAllowed];

    if (v23 && gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
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

  v13 = [v26 region];
  if ([v13 validSubdivisionCode])
  {
    v14 = [*p_currentRegionVisit region];
    if (([v14 validSubdivisionCode] & 1) == 0)
    {

LABEL_23:
      if (gLogCategory_ENRegionMonitor > 30 || gLogCategory_ENRegionMonitor == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v15 = [*p_currentRegionVisit region];
    v16 = [v26 region];
    v17 = [v15 isSubdivisionCodeEqualToRegion:v16];

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = [*p_currentRegionVisit region];
  v19 = [v26 region];
  if ([v18 isEqual:v19])
  {
    [v9 timeIntervalSinceDate:v8];
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

- (void)_regionDataSource:(id)a3 updatedWithVisit:(id)a4
{
  v11 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_regionMonitorQueue);
  v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v8 = [v7 isSensitiveLoggingAllowed];

  if (v8 && gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _regionDataSource:updatedWithVisit:];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  v9 = [v6 region];
  v10 = [v9 countryCode];

  if (v10)
  {
    [(ENRegionMonitor *)self setCurrentRegionVisit:v6];
    goto LABEL_12;
  }

LABEL_9:
  if (gLogCategory_ENRegionMonitor <= 90 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _regionDataSource:updatedWithVisit:];
  }

LABEL_12:
}

- (void)regionDataSource:(id)a3 updatedWithVisit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ENRegionMonitor_regionDataSource_updatedWithVisit___block_invoke;
  block[3] = &unk_278FD1240;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)purgeAllRegionHistoryWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v5);

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
  v6 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENRegionMonitor_purgeAllRegionHistoryWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v14;
  dispatch_sync(v6, block);

  if (a3)
  {
    *a3 = v15[5];
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

- (BOOL)_purgeAllRegionHistoryWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _purgeAllRegionHistoryWithError:];
  }

  [(ENRegionMonitor *)self setCurrentRegionVisit:0];
  regionHistoryManager = self->_regionHistoryManager;

  return [(ENRegionHistoryManager *)regionHistoryManager purgeAllRegionHistoryWithError:a3];
}

- (BOOL)purgeRegionsOlderThanDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v7);

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
  v8 = [(ENRegionMonitor *)self regionMonitorQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ENRegionMonitor_purgeRegionsOlderThanDate_error___block_invoke;
  v12[3] = &unk_278FD23C0;
  v14 = &v16;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v15 = &v20;
  dispatch_sync(v8, v12);

  if (a4)
  {
    *a4 = v21[5];
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

- (BOOL)_purgeRegionsOlderThanDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v7);

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor _purgeRegionsOlderThanDate:error:];
  }

  v8 = [(ENRegionHistoryManager *)self->_regionHistoryManager purgeRegionsOlderThanDate:v6 error:a4];

  return v8;
}

- (id)_getAllRegionsWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if ([(ENRegionMonitor *)self authorizationState]== 2)
  {
    v6 = [(ENRegionHistoryManager *)self->_regionHistoryManager getAllRegions];
  }

  else
  {
    if (a3)
    {
      *a3 = ENErrorF();
    }

    if (gLogCategory__ENRegionMonitor <= 90 && (gLogCategory__ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor _getAllRegionsWithError:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)getAllRegionsWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v5);

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
  v6 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ENRegionMonitor_getAllRegionsWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(v6, block);

  if (a3)
  {
    *a3 = v11[5];
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

- (id)_getCurrentRegionVisitWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if ([(ENRegionMonitor *)self authorizationState]== 2)
  {
    v6 = [(ENRegionMonitor *)self currentRegionVisit];
  }

  else
  {
    if (a3)
    {
      *a3 = ENErrorF();
    }

    v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v8 = [v7 isSensitiveLoggingAllowed];

    if (v8 && gLogCategory_ENRegionMonitor <= 90 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor _getCurrentRegionVisitWithError:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)getCurrentRegionVisitWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v5);

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
  v6 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ENRegionMonitor_getCurrentRegionVisitWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(v6, block);

  if (a3)
  {
    *a3 = v11[5];
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

- (id)getAllRegionVisitsWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_not_V2(v5);

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
  v6 = [(ENRegionMonitor *)self regionMonitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ENRegionMonitor_getAllRegionVisitsWithError___block_invoke;
  block[3] = &unk_278FD2398;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(v6, block);

  if (a3)
  {
    *a3 = v11[5];
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

- (id)_getAllRegionVisitsWithError:(id *)a3
{
  v5 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v5);

  if ([(ENRegionMonitor *)self authorizationState]== 2)
  {
    v6 = [(ENRegionHistoryManager *)self->_regionHistoryManager getAllRegionVisits];
  }

  else
  {
    if (a3)
    {
      *a3 = ENErrorF();
    }

    if (gLogCategory__ENRegionMonitor <= 90 && (gLogCategory__ENRegionMonitor != -1 || _LogCategory_Initialize()))
    {
      [ENRegionMonitor _getAllRegionVisitsWithError:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v7 = a3;
  v4 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(ENRegionMonitor *)self exposureNotificationLocationManager];

  if (v5 == v7)
  {
    -[ENRegionMonitor setExposureNotificationAuthorizationState:](self, "setExposureNotificationAuthorizationState:", [objc_opt_class() regionMonitorStateFromAuthorizationStatus:{objc_msgSend(v7, "authorizationStatus")}]);
  }

  else
  {
    v6 = [(ENRegionMonitor *)self significantLocationsLocationManager];

    if (v6 == v7)
    {
      -[ENRegionMonitor setSignificantLocationsAuthorizationState:](self, "setSignificantLocationsAuthorizationState:", [objc_opt_class() regionMonitorStateFromAuthorizationStatus:{objc_msgSend(v7, "authorizationStatus")}]);
    }
  }

  if (gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [(ENRegionMonitor *)self locationManagerDidChangeAuthorization:v7];
  }
}

- (void)currentRegionVisitDidChange:(id)a3
{
  v7 = a3;
  v4 = [(ENRegionMonitor *)self regionMonitorQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (v6 && gLogCategory_ENRegionMonitor <= 30 && (gLogCategory_ENRegionMonitor != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitor currentRegionVisitDidChange:];
  }

  [(ENRegionMonitor *)self setCurrentRegionVisit:v7];
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