@interface CAMLocationController
+ (id)_sharedGPSDatestampFormatter;
+ (id)_sharedGPSTimestampFormatter;
+ (id)locationMetadataForLocation:(id)location heading:(id)heading device:(int64_t)device;
- (CAMLocationController)init;
- (id)headingForOrientation:(int64_t)orientation;
- (void)_authorizeOrStartLocationManager;
- (void)_notifyListenersForAuthorizationStatusUpdate:(int)update;
- (void)_notifyListenersWaitingOnLocation:(id)location;
- (void)_performBlock:(id)block andLogIfExecutionExceeds:(double)exceeds logPrefix:(id)prefix;
- (void)_setCurrentLocation:(id)location;
- (void)_startMonitoringLocationUpdates;
- (void)_stopMonitoringLocationUpdates;
- (void)_updateLocationMonitoring;
- (void)addListenerForLocationUpdates:(id)updates;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)removeListenerForLocationUpdates:(id)updates;
- (void)setEnabled:(BOOL)enabled;
- (void)setHeadingEnabled:(BOOL)enabled;
@end

@implementation CAMLocationController

- (CAMLocationController)init
{
  v11.receiver = self;
  v11.super_class = CAMLocationController;
  v2 = [(CAMLocationController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.camera.location-listeners-queue", v3);
    listenersQueue = v2->__listenersQueue;
    v2->__listenersQueue = v4;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    listenersWaitingForLocation = v2->__listenersWaitingForLocation;
    v2->__listenersWaitingForLocation = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__updateLocationMonitoring name:*MEMORY[0x1E69DDBC8] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateLocationMonitoring name:*MEMORY[0x1E69DDAB0] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateLocationMonitoring name:*MEMORY[0x1E69DDB98] object:0];
    [defaultCenter addObserver:v2 selector:sel__resetDidRequestLocation name:*MEMORY[0x1E69DDAC8] object:0];
    v9 = v2;
  }

  return v2;
}

- (void)_updateLocationMonitoring
{
  _isMonitoringLocation = [(CAMLocationController *)self _isMonitoringLocation];
  if ([(CAMLocationController *)self isEnabled])
  {
    v4 = +[CAMApplication isAppOrPlugInSuspended];
    if (!v4 && !_isMonitoringLocation)
    {

      [(CAMLocationController *)self _startMonitoringLocationUpdates];
      return;
    }
  }

  else
  {
    v4 = 1;
  }

  if (v4 && _isMonitoringLocation)
  {

    [(CAMLocationController *)self _stopMonitoringLocationUpdates];
  }
}

- (void)_startMonitoringLocationUpdates
{
  if (![(CAMLocationController *)self _isMonitoringLocation]&& [(CAMLocationController *)self isEnabled])
  {
    if (!self->__locationManager)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695FBE8]);
      locationManager = self->__locationManager;
      self->__locationManager = v3;

      [(CLLocationManager *)self->__locationManager setDelegate:self];
      [(CLLocationManager *)self->__locationManager setDistanceFilter:*MEMORY[0x1E6985C70]];
      [(CLLocationManager *)self->__locationManager setHeadingFilter:5.0];
      [(CLLocationManager *)self->__locationManager setDesiredAccuracy:*MEMORY[0x1E6985C78]];
      if (_startMonitoringLocationUpdates_onceToken != -1)
      {
        [CAMLocationController _startMonitoringLocationUpdates];
      }

      if (_startMonitoringLocationUpdates_disableIndoorLocation == 1)
      {
        [(CLLocationManager *)self->__locationManager setActivityType:3];
      }
    }

    [(CAMLocationController *)self _authorizeOrStartLocationManager];
  }
}

- (void)_authorizeOrStartLocationManager
{
  _locationManager = [(CAMLocationController *)self _locationManager];
  lastKnownAuthorizationStatus = [(CAMLocationController *)self lastKnownAuthorizationStatus];
  if (lastKnownAuthorizationStatus == 4)
  {
    if (![(CAMLocationController *)self _isMonitoringLocation])
    {
      self->__monitoringLocation = 1;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57__CAMLocationController__authorizeOrStartLocationManager__block_invoke_2;
      v9[3] = &unk_1E76F7960;
      v9[4] = self;
      v6 = _locationManager;
      v10 = v6;
      [(CAMLocationController *)self _performBlock:v9 andLogIfExecutionExceeds:@"[CLLocationManager startUpdatingLocation]" logPrefix:0.2];
      if ([(CAMLocationController *)self isHeadingEnabled])
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __57__CAMLocationController__authorizeOrStartLocationManager__block_invoke_3;
        v7[3] = &unk_1E76F77B0;
        v8 = v6;
        [(CAMLocationController *)self _performBlock:v7 andLogIfExecutionExceeds:@"[CLLocationManager startUpdatingHeading]" logPrefix:0.2];
      }

      v5 = v10;
      goto LABEL_9;
    }
  }

  else if (!lastKnownAuthorizationStatus && ![(CAMLocationController *)self _didRequestLocation])
  {
    [(CAMLocationController *)self _setDidRequestLocation:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CAMLocationController__authorizeOrStartLocationManager__block_invoke;
    v11[3] = &unk_1E76F77B0;
    v12 = _locationManager;
    [(CAMLocationController *)self _performBlock:v11 andLogIfExecutionExceeds:@"[CLLocationManager requestWhenInUseAuthorization]" logPrefix:0.2];
    v5 = v12;
LABEL_9:
  }
}

uint64_t __57__CAMLocationController__authorizeOrStartLocationManager__block_invoke_2(uint64_t a1)
{
  CAMSignpostWithIDAndArgs(84, 0xEEEEB0B5B2B2EEEELL, *(a1 + 32), 0, 0, 0);
  v2 = *(a1 + 40);

  return [v2 startUpdatingLocation];
}

+ (id)_sharedGPSTimestampFormatter
{
  if (_sharedGPSTimestampFormatter_onceToken != -1)
  {
    +[CAMLocationController _sharedGPSTimestampFormatter];
  }

  v3 = _sharedGPSTimestampFormatter_formatter;

  return v3;
}

uint64_t __53__CAMLocationController__sharedGPSTimestampFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _sharedGPSTimestampFormatter_formatter;
  _sharedGPSTimestampFormatter_formatter = v0;

  v2 = _sharedGPSTimestampFormatter_formatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = _sharedGPSTimestampFormatter_formatter;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v4 setCalendar:v6];

  v7 = _sharedGPSTimestampFormatter_formatter;
  v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v7 setTimeZone:v8];

  v9 = _sharedGPSTimestampFormatter_formatter;

  return [v9 setDateFormat:@"HH:mm:ss.SS"];
}

+ (id)_sharedGPSDatestampFormatter
{
  if (_sharedGPSDatestampFormatter_onceToken != -1)
  {
    +[CAMLocationController _sharedGPSDatestampFormatter];
  }

  v3 = _sharedGPSDatestampFormatter_formatter;

  return v3;
}

uint64_t __53__CAMLocationController__sharedGPSDatestampFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _sharedGPSDatestampFormatter_formatter;
  _sharedGPSDatestampFormatter_formatter = v0;

  v2 = _sharedGPSDatestampFormatter_formatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = _sharedGPSDatestampFormatter_formatter;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v4 setCalendar:v6];

  v7 = _sharedGPSDatestampFormatter_formatter;
  v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v7 setTimeZone:v8];

  v9 = _sharedGPSDatestampFormatter_formatter;

  return [v9 setDateFormat:@"yyyy:MM:dd"];
}

- (void)dealloc
{
  [(CAMLocationController *)self _stopMonitoringLocationUpdates];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMLocationController;
  [(CAMLocationController *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CAMLocationController *)self _updateLocationMonitoring];
  }
}

- (void)setHeadingEnabled:(BOOL)enabled
{
  if (self->_headingEnabled != enabled)
  {
    v19 = v3;
    v20 = v4;
    self->_headingEnabled = enabled;
    if (self->__monitoringLocation)
    {
      if (enabled)
      {
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __43__CAMLocationController_setHeadingEnabled___block_invoke;
        v17 = &unk_1E76F77B0;
        selfCopy = self;
        v6 = @"[CLLocationManager startUpdatingHeading]";
        v7 = &v14;
      }

      else
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __43__CAMLocationController_setHeadingEnabled___block_invoke_2;
        v12 = &unk_1E76F77B0;
        selfCopy2 = self;
        v6 = @"[CLLocationManager stopUpdatingHeading]";
        v7 = &v9;
      }

      [(CAMLocationController *)self _performBlock:v7 andLogIfExecutionExceeds:v6 logPrefix:0.2, v9, v10, v11, v12, selfCopy2, v14, v15, v16, v17, selfCopy];
    }

    if (!self->_headingEnabled)
    {
      currentHeading = self->_currentHeading;
      self->_currentHeading = 0;
    }
  }
}

- (void)_setCurrentLocation:(id)location
{
  locationCopy = location;
  v6 = locationCopy;
  v10 = locationCopy;
  if (locationCopy)
  {
    [locationCopy horizontalAccuracy];
    v8 = v7;
    [(CLLocation *)v10 verticalAccuracy];
    if (v8 >= v9)
    {
      v9 = v8;
    }

    CAMSignpostWithIDAndArgs(86, 0xEEEEB0B5B2B2EEEELL, self, v9, 0, 0);
    v6 = v10;
  }

  if (self->_currentLocation != v6)
  {
    locationCopy = [(CLLocation *)v6 isEqual:?];
    v6 = v10;
    if ((locationCopy & 1) == 0)
    {
      [(CAMLocationController *)self willChangeValueForKey:@"currentLocation"];
      objc_storeStrong(&self->_currentLocation, location);
      locationCopy = [(CAMLocationController *)self didChangeValueForKey:@"currentLocation"];
      v6 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](locationCopy, v6);
}

uint64_t __56__CAMLocationController__startMonitoringLocationUpdates__block_invoke()
{
  result = sysctlbyname("hw.memsize", &_block_invoke_amountOfPhysicalMemory, &_block_invoke_size, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = _block_invoke_size == 0;
  }

  if (!v1)
  {
    _startMonitoringLocationUpdates_disableIndoorLocation = _block_invoke_amountOfPhysicalMemory < 0x40000001;
  }

  return result;
}

- (void)_stopMonitoringLocationUpdates
{
  if ([(CAMLocationController *)self _isMonitoringLocation])
  {
    self->__monitoringLocation = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__CAMLocationController__stopMonitoringLocationUpdates__block_invoke;
    v4[3] = &unk_1E76F77B0;
    v4[4] = self;
    [(CAMLocationController *)self _performBlock:v4 andLogIfExecutionExceeds:@"[CLLocationManager stopUpdatingLocation]" logPrefix:0.2];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__CAMLocationController__stopMonitoringLocationUpdates__block_invoke_2;
    v3[3] = &unk_1E76F77B0;
    v3[4] = self;
    [(CAMLocationController *)self _performBlock:v3 andLogIfExecutionExceeds:@"[CLLocationManager stopUpdatingHeading]" logPrefix:0.2];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  _isMonitoringLocation = [(CAMLocationController *)self _isMonitoringLocation];
  v6 = locationsCopy;
  if (_isMonitoringLocation)
  {
    lastObject = [locationsCopy lastObject];
    v8 = lastObject;
    if (lastObject)
    {
      [lastObject horizontalAccuracy];
      v10 = v9;
      timestamp = [v8 timestamp];
      [timestamp timeIntervalSinceNow];
      v13 = v12;

      if (v13 < -60.0 || v10 < 0.0)
      {

        v8 = 0;
      }

      else
      {
        currentLocation = [(CAMLocationController *)self currentLocation];

        if (!currentLocation)
        {
          [v8 horizontalAccuracy];
          v16 = v15;
          [v8 verticalAccuracy];
          CAMSignpostWithIDAndArgs(85, 0xEEEEB0B5B2B2EEEELL, self, v16, v17, 0);
        }
      }
    }

    [(CAMLocationController *)self _setCurrentLocation:v8];
    [(CAMLocationController *)self _notifyListenersWaitingOnLocation:v8];
    [(CAMLocationController *)self _updateAssetsWaitingOnLocation];

    v6 = locationsCopy;
  }

  MEMORY[0x1EEE66BB8](_isMonitoringLocation, v6);
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  headingCopy = heading;
  if ([(CAMLocationController *)self isHeadingEnabled])
  {
    [headingCopy headingAccuracy];
    if (v6 > 0.0)
    {
      [(CAMLocationController *)self willChangeValueForKey:@"currentHeading"];
      objc_storeStrong(&self->_currentHeading, heading);
      [(CAMLocationController *)self didChangeValueForKey:@"currentHeading"];
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v21 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __63__CAMLocationController_locationManagerDidChangeAuthorization___block_invoke;
  v12 = &unk_1E76FAFF0;
  v14 = &v15;
  v5 = authorizationCopy;
  v13 = v5;
  [(CAMLocationController *)self _performBlock:&v9 andLogIfExecutionExceeds:@"[CLLocationManager authorizationStatus]" logPrefix:0.2];
  [(CAMLocationController *)self _setLastKnownAuthorizationStatus:*(v16 + 6), v9, v10, v11, v12];
  v6 = os_log_create("com.apple.camera", "Location");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v16 + 6);
    if (v7 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E76FCF08[v7];
    }

    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Received location authorization status %{public}@", buf, 0xCu);
  }

  if (*(v16 + 6) <= 2u)
  {
    [(CAMLocationController *)self _setCurrentLocation:0];
  }

  [(CAMLocationController *)self _authorizeOrStartLocationManager];
  [(CAMLocationController *)self _notifyListenersForAuthorizationStatusUpdate:*(v16 + 6)];

  _Block_object_dispose(&v15, 8);
}

uint64_t __63__CAMLocationController_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) authorizationStatus];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)locationMetadataForLocation:(id)location heading:(id)heading device:(int64_t)device
{
  locationCopy = location;
  headingCopy = heading;
  if (!locationCopy)
  {
    v10 = 0;
    goto LABEL_40;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [locationCopy coordinate];
  v12 = v11;
  [locationCopy coordinate];
  v14 = v13;
  *&v15 = fabsf(v12);
  if (v12 >= 0.0)
  {
    v16 = @"N";
  }

  else
  {
    v16 = @"S";
  }

  if (v12 >= 0.0)
  {
    *&v15 = v12;
  }

  v17 = fabsf(v14);
  if (v14 >= 0.0)
  {
    v18 = @"E";
  }

  else
  {
    v18 = @"W";
  }

  if (v14 >= 0.0)
  {
    v19 = v14;
  }

  else
  {
    v19 = v17;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  [v10 setObject:v20 forKey:*MEMORY[0x1E696DC18]];

  [v10 setObject:v16 forKey:*MEMORY[0x1E696DC20]];
  *&v21 = v19;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  [v10 setObject:v22 forKey:*MEMORY[0x1E696DC28]];

  [v10 setObject:v18 forKey:*MEMORY[0x1E696DC30]];
  timestamp = [locationCopy timestamp];
  if (timestamp)
  {
    _sharedGPSTimestampFormatter = [self _sharedGPSTimestampFormatter];
    v25 = [_sharedGPSTimestampFormatter stringFromDate:timestamp];
    if (v25)
    {
      [v10 setObject:v25 forKey:*MEMORY[0x1E696DC70]];
    }

    _sharedGPSDatestampFormatter = [self _sharedGPSDatestampFormatter];
    v27 = [_sharedGPSDatestampFormatter stringFromDate:timestamp];
    if (v27)
    {
      [v10 setObject:v27 forKey:*MEMORY[0x1E696DBA8]];
    }
  }

  [locationCopy horizontalAccuracy];
  if (v28 >= 0.0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v10 setObject:v29 forKey:*MEMORY[0x1E696DC00]];
  }

  [locationCopy verticalAccuracy];
  if (v30 >= 0.0)
  {
    [locationCopy altitude];
    v32 = v31 < 0.0;
    v33 = fabs(v31);
    if (v31 < 0.0)
    {
      v31 = v33;
    }

    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
    [v10 setObject:v34 forKey:*MEMORY[0x1E696DB88]];

    v35 = [MEMORY[0x1E696AD98] numberWithInt:v32];
    [v10 setObject:v35 forKey:*MEMORY[0x1E696DB90]];
  }

  if (headingCopy)
  {
    [headingCopy headingAccuracy];
    if (v36 >= 0.0)
    {
      if (CFPreferencesGetAppBooleanValue(@"kMagneticNorth", @"com.apple.compass", 0) || ([headingCopy trueHeading], v37 < 0.0))
      {
        [headingCopy magneticHeading];
        v39 = v38;
        v40 = @"M";
      }

      else
      {
        [headingCopy trueHeading];
        v39 = v48;
        v40 = @"T";
      }

      v41 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
      [v10 setObject:v41 forKey:*MEMORY[0x1E696DBB0]];

      [v10 setObject:v40 forKey:*MEMORY[0x1E696DBB8]];
      if ((device - 8) >= 4 && device != 1)
      {
        goto LABEL_38;
      }

      v39 = v39 + 180.0;
      v42 = 360.0;
      if (v39 >= 360.0)
      {
        v42 = -360.0;
      }

      else if (v39 >= 0.0)
      {
        goto LABEL_38;
      }

      v39 = v39 + v42;
LABEL_38:
      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
      [v10 setObject:v43 forKey:*MEMORY[0x1E696DC08]];

      [v10 setObject:v40 forKey:*MEMORY[0x1E696DC10]];
    }
  }

  v44 = MEMORY[0x1E696AD98];
  [locationCopy speed];
  v45 = [v44 numberWithDouble:?];
  [v10 setObject:v45 forKey:*MEMORY[0x1E696DC58]];

  [v10 setObject:@"K" forKey:*MEMORY[0x1E696DC60]];
LABEL_40:
  v46 = [v10 copy];

  return v46;
}

- (id)headingForOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  if ([(CAMLocationController *)self _isMonitoringLocation])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__CAMLocationController_headingForOrientation___block_invoke;
    v14[3] = &unk_1E76FC3A8;
    v14[4] = self;
    v15 = orientationCopy;
    [(CAMLocationController *)self _performBlock:v14 andLogIfExecutionExceeds:@"[CLLocationManager setHeadingOrientation:]" logPrefix:0.2];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__23;
    v12 = __Block_byref_object_dispose__23;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__CAMLocationController_headingForOrientation___block_invoke_86;
    v7[3] = &unk_1E76FAFF0;
    v7[4] = self;
    v7[5] = &v8;
    [(CAMLocationController *)self _performBlock:v7 andLogIfExecutionExceeds:@"[CLLocationManager heading]" logPrefix:0.2];
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __47__CAMLocationController_headingForOrientation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationManager];
  [v2 setHeadingOrientation:*(a1 + 40)];
}

void __47__CAMLocationController_headingForOrientation___block_invoke_86(uint64_t a1)
{
  v5 = [*(a1 + 32) _locationManager];
  v2 = [v5 heading];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_performBlock:(id)block andLogIfExecutionExceeds:(double)exceeds logPrefix:(id)prefix
{
  v16 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  blockCopy = block;
  Current = CFAbsoluteTimeGetCurrent();
  blockCopy[2](blockCopy);

  v10 = CFAbsoluteTimeGetCurrent() - Current;
  if (v10 > exceeds)
  {
    v11 = os_log_create("com.apple.camera", "Location");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = prefixCopy;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ took %.3f seconds", &v12, 0x16u);
    }
  }
}

- (void)_notifyListenersForAuthorizationStatusUpdate:(int)update
{
  listenersQueue = self->__listenersQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__CAMLocationController__notifyListenersForAuthorizationStatusUpdate___block_invoke;
  v4[3] = &unk_1E76FC3A8;
  v4[4] = self;
  updateCopy = update;
  dispatch_async(listenersQueue, v4);
}

void __70__CAMLocationController__notifyListenersForAuthorizationStatusUpdate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 48);
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
        if (v7)
        {
          v8 = [*(*(&v11 + 1) + 8 * v6) listeningQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __70__CAMLocationController__notifyListenersForAuthorizationStatusUpdate___block_invoke_2;
          v9[3] = &unk_1E76FC3A8;
          v9[4] = v7;
          v10 = *(a1 + 40);
          dispatch_async(v8, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_notifyListenersWaitingOnLocation:(id)location
{
  locationCopy = location;
  listenersQueue = self->__listenersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CAMLocationController__notifyListenersWaitingOnLocation___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(listenersQueue, v7);
}

void __59__CAMLocationController__notifyListenersWaitingOnLocation___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 48);
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
        if (v7)
        {
          v8 = [*(*(&v11 + 1) + 8 * v6) listeningQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __59__CAMLocationController__notifyListenersWaitingOnLocation___block_invoke_2;
          v9[3] = &unk_1E76F7960;
          v9[4] = v7;
          v10 = *(a1 + 40);
          dispatch_async(v8, v9);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)addListenerForLocationUpdates:(id)updates
{
  updatesCopy = updates;
  listenersQueue = self->__listenersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CAMLocationController_addListenerForLocationUpdates___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(listenersQueue, v7);
}

void __55__CAMLocationController_addListenerForLocationUpdates___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__23;
    v8[4] = __Block_byref_object_dispose__23;
    v9 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__CAMLocationController_addListenerForLocationUpdates___block_invoke_2;
    block[3] = &unk_1E76FCEE8;
    block[4] = *(a1 + 32);
    block[5] = v10;
    block[6] = v8;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    v2 = [*(a1 + 40) listeningQueue];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__CAMLocationController_addListenerForLocationUpdates___block_invoke_3;
    v3[3] = &unk_1E76FA610;
    v4 = *(a1 + 40);
    v5 = v10;
    v6 = v8;
    dispatch_async(v2, v3);

    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v10, 8);
  }
}

uint64_t __55__CAMLocationController_addListenerForLocationUpdates___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) lastKnownAuthorizationStatus];
  v2 = [*(a1 + 32) currentLocation];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __55__CAMLocationController_addListenerForLocationUpdates___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) authorizationStatusUpdated:*(*(*(a1 + 40) + 8) + 24)];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = *(a1 + 32);

    return [v3 currentLocationUpdated:?];
  }

  return result;
}

- (void)removeListenerForLocationUpdates:(id)updates
{
  updatesCopy = updates;
  listenersQueue = self->__listenersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CAMLocationController_removeListenerForLocationUpdates___block_invoke;
  v7[3] = &unk_1E76F7960;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(listenersQueue, v7);
}

@end