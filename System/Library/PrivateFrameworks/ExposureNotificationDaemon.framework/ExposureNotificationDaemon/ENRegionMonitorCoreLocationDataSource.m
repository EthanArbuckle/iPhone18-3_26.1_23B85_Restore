@interface ENRegionMonitorCoreLocationDataSource
- (BOOL)updateRegionAllowed;
- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)a3;
- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)a3 routineManager:(id)a4;
- (ENRegionMonitorSourceDelegate)delegate;
- (void)_processLocation:(id)a3;
- (void)_processLocation:(id)a3 locationOfInterest:(id)a4;
- (void)_processLocation:(id)a3 locationsOfInterest:(id)a4;
- (void)_processVisit:(id)a3;
- (void)_setup;
- (void)_updateRegionVisit:(id)a3;
- (void)_updatedRegion;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)processLocation:(id)a3 locationOfInterest:(id)a4;
- (void)processLocation:(id)a3 locationsOfInterest:(id)a4;
- (void)setup;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)updateRegion;
- (void)updateRegionVisit:(id)a3;
@end

@implementation ENRegionMonitorCoreLocationDataSource

- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)a3
{
  v4 = MEMORY[0x277D01288];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [(ENRegionMonitorCoreLocationDataSource *)self initWithDelegate:v5 routineManager:v6];

  return v7;
}

- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)a3 routineManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ENRegionMonitorCoreLocationDataSource initWithDelegate:a2 routineManager:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [ENRegionMonitorCoreLocationDataSource initWithDelegate:a2 routineManager:self];
LABEL_3:
  v15.receiver = self;
  v15.super_class = ENRegionMonitorCoreLocationDataSource;
  v10 = [(ENRegionMonitorCoreLocationDataSource *)&v15 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.exposureNotification.regionMonitorCoreLocationDataSource", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_routineManager, a4);
    objc_storeWeak(&v10->delegate, v7);
    [(ENRegionMonitorCoreLocationDataSource *)v10 setup];
  }

  return v10;
}

- (void)_setup
{
  v3 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc(MEMORY[0x277CBFC18]);
  v8 = [MEMORY[0x277CCA8D0] bundleWithPath:@"/System/Library/LocationBundles/ExposureNotificationBundle.bundle"];
  v5 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v6 = [v4 initWithEffectiveBundle:v8 delegate:self onQueue:v5];
  locationManager = self->_locationManager;
  self->_locationManager = v6;
}

- (void)setup
{
  v3 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ENRegionMonitorCoreLocationDataSource_setup__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startMonitoring
{
  v4 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ENRegionMonitorCoreLocationDataSource_startMonitoring__block_invoke;
  v5[3] = &unk_278FD11C8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

uint64_t __56__ENRegionMonitorCoreLocationDataSource_startMonitoring__block_invoke(uint64_t a1)
{
  if (gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    __56__ENRegionMonitorCoreLocationDataSource_startMonitoring__block_invoke_cold_1(a1);
  }

  v2 = *(*(a1 + 32) + 32);

  return [v2 startMonitoringVisits];
}

- (void)stopMonitoring
{
  v4 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ENRegionMonitorCoreLocationDataSource_stopMonitoring__block_invoke;
  v5[3] = &unk_278FD11C8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

uint64_t __55__ENRegionMonitorCoreLocationDataSource_stopMonitoring__block_invoke(uint64_t a1)
{
  if (gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    __55__ENRegionMonitorCoreLocationDataSource_stopMonitoring__block_invoke_cold_1(a1);
  }

  v2 = *(*(a1 + 32) + 32);

  return [v2 stopMonitoringVisits];
}

- (BOOL)updateRegionAllowed
{
  CFDateGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA0] date];
    [v3 timeIntervalSinceDate:v2];
    v5 = v4;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  if (gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  return v5 >= 86400.0;
}

- (void)_updatedRegion
{
  v3 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ENRegionMonitorCoreLocationDataSource *)self updateRegionAllowed])
  {
    v4 = [MEMORY[0x277CBEAA0] date];
    CFPrefs_SetValue();

    v5 = *MEMORY[0x277CE4220];
    v6 = [(ENRegionMonitorCoreLocationDataSource *)self locationManager];
    [v6 setDesiredAccuracy:v5];

    v7 = [(ENRegionMonitorCoreLocationDataSource *)self locationManager];
    [v7 requestLocation];
  }
}

- (void)updateRegion
{
  v3 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ENRegionMonitorCoreLocationDataSource_updateRegion__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateRegionVisit:(id)a3
{
  v7 = a3;
  v5 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v7)
  {
    objc_storeStrong(&self->_cachedRegionVisit, a3);
    v6 = [(ENRegionMonitorCoreLocationDataSource *)self delegate];
    [v6 regionDataSource:self updatedWithVisit:v7];
  }
}

- (void)updateRegionVisit:(id)a3
{
  v4 = a3;
  v5 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ENRegionMonitorCoreLocationDataSource_updateRegionVisit___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_processLocation:(id)a3
{
  v4 = a3;
  v5 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ENRegionMonitorCoreLocationDataSource *)self routineManager];
  [v4 horizontalAccuracy];
  v10[1] = 3221225472;
  v10[0] = MEMORY[0x277D85DD0];
  v10[2] = __58__ENRegionMonitorCoreLocationDataSource__processLocation___block_invoke;
  v10[3] = &unk_278FD11F0;
  v8 = v7 + 250.0;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v6 fetchLocationsOfInterestWithinDistance:v9 ofLocation:v10 withHandler:v8];
}

void __58__ENRegionMonitorCoreLocationDataSource__processLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && gLogCategory__ENRegionMonitorCoreLocationDataSource <= 90 && (gLogCategory__ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    __58__ENRegionMonitorCoreLocationDataSource__processLocation___block_invoke_cold_1();
  }

  [*(a1 + 32) processLocation:*(a1 + 40) locationsOfInterest:v6];
}

- (void)_processVisit:(id)a3
{
  v4 = a3;
  v5 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 _placeInference];
  v7 = [v6 _loiIdentifier];

  v8 = [(ENRegionMonitorCoreLocationDataSource *)self routineManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ENRegionMonitorCoreLocationDataSource__processVisit___block_invoke;
  v10[3] = &unk_278FD1218;
  v11 = v4;
  v12 = self;
  v9 = v4;
  [v8 fetchLocationOfInterestWithIdentifier:v7 withHandler:v10];
}

void __55__ENRegionMonitorCoreLocationDataSource__processVisit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v7 = [v6 isSensitiveLoggingAllowed];

    if (v7)
    {
      if (gLogCategory_ENRegionMonitorCoreLocationDataSource <= 90 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
      {
        v17 = *(a1 + 32);
        LogPrintF_safe();
      }
    }
  }

  v8 = objc_alloc(MEMORY[0x277CE41F0]);
  [*(a1 + 32) coordinate];
  v10 = v9;
  v12 = v11;
  [*(a1 + 32) horizontalAccuracy];
  v14 = v13;
  v15 = [*(a1 + 32) detectionDate];
  v16 = [v8 initWithCoordinate:v15 altitude:v10 horizontalAccuracy:v12 verticalAccuracy:0.0 timestamp:{v14, 0.0}];

  [*(a1 + 40) processLocation:v16 locationOfInterest:v18];
}

- (void)processLocation:(id)a3 locationOfInterest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ENRegionMonitorCoreLocationDataSource_processLocation_locationOfInterest___block_invoke;
  block[3] = &unk_278FD1240;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_processLocation:(id)a3 locationOfInterest:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v9 = [v8 isSensitiveLoggingAllowed];

  if (v9 && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (v6)
  {
    v10 = [v6 mapItem];
    v11 = [v10 address];
    v12 = [v11 iso3166CountryCode];

    v13 = [v6 mapItem];
    v14 = [v13 address];
    v15 = [v14 iso3166SubdivisionCode];

    if (v12)
    {
      v16 = objc_alloc(MEMORY[0x277CC5CA0]);
      if (v15)
      {
        v17 = [v16 initWithCountryCode:v12 subdivisionCode:v15];
      }

      else
      {
        v17 = [v16 initWithCountryCode:v12];
      }

      v20 = v17;
      v21 = objc_alloc(MEMORY[0x277CC5D08]);
      v22 = [MEMORY[0x277CBEAA0] date];
      v23 = [v21 initWithRegion:v20 date:v22];

      [(ENRegionMonitorCoreLocationDataSource *)self updateRegionVisit:v23];
    }

    else
    {
      v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v19 = [v18 isSensitiveLoggingAllowed];

      if (v19 && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
      {
        [ENRegionMonitorCoreLocationDataSource _processLocation:locationOfInterest:];
      }
    }
  }

  else if (gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorCoreLocationDataSource _processLocation:locationOfInterest:];
  }
}

- (void)processLocation:(id)a3 locationsOfInterest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ENRegionMonitorCoreLocationDataSource_processLocation_locationsOfInterest___block_invoke;
  block[3] = &unk_278FD1240;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_processLocation:(id)a3 locationsOfInterest:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277CCAC28] predicateWithBlock:&__block_literal_global_1];
  v34 = v7;
  v10 = [v7 filteredArrayUsingPredicate:v9];

  v11 = *MEMORY[0x277CE41D8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = objc_alloc(MEMORY[0x277CE41F0]);
        v19 = [v17 location];
        [v19 latitude];
        v21 = v20;
        v22 = [v17 location];
        [v22 longitude];
        v24 = [v18 initWithLatitude:v21 longitude:v23];

        [v6 distanceFromLocation:v24];
        if (v25 < v11)
        {
          v26 = v25;
          v27 = v17;

          v11 = v26;
          v14 = v27;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v28 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v29 = [v28 isSensitiveLoggingAllowed];

  if (v29 && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    v33 = v11;
    v31 = v14;
    v32 = v6;
    LogPrintF_safe();
  }

  [(ENRegionMonitorCoreLocationDataSource *)self _processLocation:v6 locationOfInterest:v14, v31, v32, *&v33];

  v30 = *MEMORY[0x277D85DE8];
}

BOOL __78__ENRegionMonitorCoreLocationDataSource__processLocation_locationsOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 address];
  v4 = [v3 iso3166SubdivisionCode];
  v5 = v4 != 0;

  return v5;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v8 = a4;
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (v6 && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorCoreLocationDataSource locationManager:didUpdateLocations:];
  }

  v7 = [v8 lastObject];
  if (v7)
  {
    [(ENRegionMonitorCoreLocationDataSource *)self _processLocation:v7];
  }
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v7 = a4;
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (v6 && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorCoreLocationDataSource locationManager:didVisit:];
  }

  if (([v7 hasDepartureDate] & 1) == 0)
  {
    [(ENRegionMonitorCoreLocationDataSource *)self _processVisit:v7];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory__ENRegionMonitorCoreLocationDataSource <= 90 && (gLogCategory__ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorCoreLocationDataSource locationManager:didFailWithError:];
  }
}

- (ENRegionMonitorSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(uint64_t)a1 routineManager:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRegionMonitorCoreLocationDataSource.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"sourceDelegate"}];
}

- (void)initWithDelegate:(uint64_t)a1 routineManager:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRegionMonitorCoreLocationDataSource.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"routineManager"}];
}

void __56__ENRegionMonitorCoreLocationDataSource_startMonitoring__block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  LogPrintF_safe();
}

void __55__ENRegionMonitorCoreLocationDataSource_stopMonitoring__block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  LogPrintF_safe();
}

@end