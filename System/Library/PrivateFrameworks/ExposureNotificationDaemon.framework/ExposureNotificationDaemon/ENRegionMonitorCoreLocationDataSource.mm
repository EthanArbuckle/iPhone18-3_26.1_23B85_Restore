@interface ENRegionMonitorCoreLocationDataSource
- (BOOL)updateRegionAllowed;
- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)delegate;
- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)delegate routineManager:(id)manager;
- (ENRegionMonitorSourceDelegate)delegate;
- (void)_processLocation:(id)location;
- (void)_processLocation:(id)location locationOfInterest:(id)interest;
- (void)_processLocation:(id)location locationsOfInterest:(id)interest;
- (void)_processVisit:(id)visit;
- (void)_setup;
- (void)_updateRegionVisit:(id)visit;
- (void)_updatedRegion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)processLocation:(id)location locationOfInterest:(id)interest;
- (void)processLocation:(id)location locationsOfInterest:(id)interest;
- (void)setup;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)updateRegion;
- (void)updateRegionVisit:(id)visit;
@end

@implementation ENRegionMonitorCoreLocationDataSource

- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)delegate
{
  v4 = MEMORY[0x277D01288];
  delegateCopy = delegate;
  defaultManager = [v4 defaultManager];
  v7 = [(ENRegionMonitorCoreLocationDataSource *)self initWithDelegate:delegateCopy routineManager:defaultManager];

  return v7;
}

- (ENRegionMonitorCoreLocationDataSource)initWithDelegate:(id)delegate routineManager:(id)manager
{
  delegateCopy = delegate;
  managerCopy = manager;
  v9 = managerCopy;
  if (delegateCopy)
  {
    if (managerCopy)
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

    objc_storeStrong(&v10->_routineManager, manager);
    objc_storeWeak(&v10->delegate, delegateCopy);
    [(ENRegionMonitorCoreLocationDataSource *)v10 setup];
  }

  return v10;
}

- (void)_setup
{
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc(MEMORY[0x277CBFC18]);
  v8 = [MEMORY[0x277CCA8D0] bundleWithPath:@"/System/Library/LocationBundles/ExposureNotificationBundle.bundle"];
  queue2 = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v6 = [v4 initWithEffectiveBundle:v8 delegate:self onQueue:queue2];
  locationManager = self->_locationManager;
  self->_locationManager = v6;
}

- (void)setup
{
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ENRegionMonitorCoreLocationDataSource_setup__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startMonitoring
{
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ENRegionMonitorCoreLocationDataSource_startMonitoring__block_invoke;
  v5[3] = &unk_278FD11C8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
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
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ENRegionMonitorCoreLocationDataSource_stopMonitoring__block_invoke;
  v5[3] = &unk_278FD11C8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
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
    date = [MEMORY[0x277CBEAA0] date];
    [date timeIntervalSinceDate:v2];
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
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ENRegionMonitorCoreLocationDataSource *)self updateRegionAllowed])
  {
    date = [MEMORY[0x277CBEAA0] date];
    CFPrefs_SetValue();

    v5 = *MEMORY[0x277CE4220];
    locationManager = [(ENRegionMonitorCoreLocationDataSource *)self locationManager];
    [locationManager setDesiredAccuracy:v5];

    locationManager2 = [(ENRegionMonitorCoreLocationDataSource *)self locationManager];
    [locationManager2 requestLocation];
  }
}

- (void)updateRegion
{
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ENRegionMonitorCoreLocationDataSource_updateRegion__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateRegionVisit:(id)visit
{
  visitCopy = visit;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  if (visitCopy)
  {
    objc_storeStrong(&self->_cachedRegionVisit, visit);
    delegate = [(ENRegionMonitorCoreLocationDataSource *)self delegate];
    [delegate regionDataSource:self updatedWithVisit:visitCopy];
  }
}

- (void)updateRegionVisit:(id)visit
{
  visitCopy = visit;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ENRegionMonitorCoreLocationDataSource_updateRegionVisit___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = visitCopy;
  v6 = visitCopy;
  dispatch_async(queue, v7);
}

- (void)_processLocation:(id)location
{
  locationCopy = location;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  routineManager = [(ENRegionMonitorCoreLocationDataSource *)self routineManager];
  [locationCopy horizontalAccuracy];
  v10[1] = 3221225472;
  v10[0] = MEMORY[0x277D85DD0];
  v10[2] = __58__ENRegionMonitorCoreLocationDataSource__processLocation___block_invoke;
  v10[3] = &unk_278FD11F0;
  v8 = v7 + 250.0;
  v10[4] = self;
  v11 = locationCopy;
  v9 = locationCopy;
  [routineManager fetchLocationsOfInterestWithinDistance:v9 ofLocation:v10 withHandler:v8];
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

- (void)_processVisit:(id)visit
{
  visitCopy = visit;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  _placeInference = [visitCopy _placeInference];
  _loiIdentifier = [_placeInference _loiIdentifier];

  routineManager = [(ENRegionMonitorCoreLocationDataSource *)self routineManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ENRegionMonitorCoreLocationDataSource__processVisit___block_invoke;
  v10[3] = &unk_278FD1218;
  v11 = visitCopy;
  selfCopy = self;
  v9 = visitCopy;
  [routineManager fetchLocationOfInterestWithIdentifier:_loiIdentifier withHandler:v10];
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

- (void)processLocation:(id)location locationOfInterest:(id)interest
{
  locationCopy = location;
  interestCopy = interest;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ENRegionMonitorCoreLocationDataSource_processLocation_locationOfInterest___block_invoke;
  block[3] = &unk_278FD1240;
  block[4] = self;
  v12 = locationCopy;
  v13 = interestCopy;
  v9 = interestCopy;
  v10 = locationCopy;
  dispatch_async(queue, block);
}

- (void)_processLocation:(id)location locationOfInterest:(id)interest
{
  locationCopy = location;
  interestCopy = interest;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (interestCopy)
  {
    mapItem = [interestCopy mapItem];
    address = [mapItem address];
    iso3166CountryCode = [address iso3166CountryCode];

    mapItem2 = [interestCopy mapItem];
    address2 = [mapItem2 address];
    iso3166SubdivisionCode = [address2 iso3166SubdivisionCode];

    if (iso3166CountryCode)
    {
      v16 = objc_alloc(MEMORY[0x277CC5CA0]);
      if (iso3166SubdivisionCode)
      {
        v17 = [v16 initWithCountryCode:iso3166CountryCode subdivisionCode:iso3166SubdivisionCode];
      }

      else
      {
        v17 = [v16 initWithCountryCode:iso3166CountryCode];
      }

      v20 = v17;
      v21 = objc_alloc(MEMORY[0x277CC5D08]);
      date = [MEMORY[0x277CBEAA0] date];
      v23 = [v21 initWithRegion:v20 date:date];

      [(ENRegionMonitorCoreLocationDataSource *)self updateRegionVisit:v23];
    }

    else
    {
      v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed2 = [v18 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed2 && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
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

- (void)processLocation:(id)location locationsOfInterest:(id)interest
{
  locationCopy = location;
  interestCopy = interest;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ENRegionMonitorCoreLocationDataSource_processLocation_locationsOfInterest___block_invoke;
  block[3] = &unk_278FD1240;
  block[4] = self;
  v12 = locationCopy;
  v13 = interestCopy;
  v9 = interestCopy;
  v10 = locationCopy;
  dispatch_async(queue, block);
}

- (void)_processLocation:(id)location locationsOfInterest:(id)interest
{
  v41 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  interestCopy = interest;
  queue = [(ENRegionMonitorCoreLocationDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [MEMORY[0x277CCAC28] predicateWithBlock:&__block_literal_global_1];
  v34 = interestCopy;
  v10 = [interestCopy filteredArrayUsingPredicate:v9];

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
        location = [v17 location];
        [location latitude];
        v21 = v20;
        location2 = [v17 location];
        [location2 longitude];
        v24 = [v18 initWithLatitude:v21 longitude:v23];

        [locationCopy distanceFromLocation:v24];
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
  isSensitiveLoggingAllowed = [v28 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    v33 = v11;
    v31 = v14;
    v32 = locationCopy;
    LogPrintF_safe();
  }

  [(ENRegionMonitorCoreLocationDataSource *)self _processLocation:locationCopy locationOfInterest:v14, v31, v32, *&v33];

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

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v5 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorCoreLocationDataSource locationManager:didUpdateLocations:];
  }

  lastObject = [locationsCopy lastObject];
  if (lastObject)
  {
    [(ENRegionMonitorCoreLocationDataSource *)self _processLocation:lastObject];
  }
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v5 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionMonitorCoreLocationDataSource <= 30 && (gLogCategory_ENRegionMonitorCoreLocationDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorCoreLocationDataSource locationManager:didVisit:];
  }

  if (([visitCopy hasDepartureDate] & 1) == 0)
  {
    [(ENRegionMonitorCoreLocationDataSource *)self _processVisit:visitCopy];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
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