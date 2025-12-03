@interface MapsSuggestionsDefaultLocationUpdater
- (MapsSuggestionsDefaultLocationUpdater)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)onStartImplementation;
- (void)onStopImplementation;
@end

@implementation MapsSuggestionsDefaultLocationUpdater

- (MapsSuggestionsDefaultLocationUpdater)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("MapsSuggestionsDefaultLocationUpdaterWorkerQueue", v3);
  v7.receiver = self;
  v7.super_class = MapsSuggestionsDefaultLocationUpdater;
  v5 = [(MapsSuggestionsBaseLocationUpdater *)&v7 initWithName:@"MapsSuggestionsDefaultLocationUpdater" queue:v4];

  return v5;
}

- (void)onStartImplementation
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[MapsSuggestionsDefaultLocationUpdater onStartImplementation]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v12, 0xCu);
  }

  dispatchQueue = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (self->_locationManager)
  {
    location = GEOFindOrCreateLog();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C5126000, location, OS_LOG_TYPE_ERROR, "Already running", &v12, 2u);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695FBE8]);
    v7 = *MEMORY[0x1E69A1A78];
    dispatchQueue2 = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
    v9 = [v6 initWithEffectiveBundleIdentifier:v7 delegate:self onQueue:dispatchQueue2];
    locationManager = self->_locationManager;
    self->_locationManager = v9;

    GEOConfigGetDouble();
    [(CLLocationManager *)self->_locationManager setDistanceFilter:?];
    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*MEMORY[0x1E6985C88]];
    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    _limitsPrecision = [(CLLocationManager *)self->_locationManager _limitsPrecision];
    [(MapsSuggestionsBaseLocationUpdater *)self considerMyAllowanceAsLimited:_limitsPrecision];
    if (_limitsPrecision)
    {
      return;
    }

    location = [(CLLocationManager *)self->_locationManager location];
    [(MapsSuggestionsBaseLocationUpdater *)self considerMyNewLocation:location];
  }
}

- (void)onStopImplementation
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[MapsSuggestionsDefaultLocationUpdater onStopImplementation]";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
  }

  dispatchQueue = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  locationManager = self->_locationManager;
  if (locationManager)
  {
    [(CLLocationManager *)locationManager stopUpdatingLocation];
    v6 = self->_locationManager;
    self->_locationManager = 0;
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "DualLocationUpdater update", buf, 2u);
    }
  }

  if ([locationsCopy count])
  {
    objc_initWeak(buf, self);
    dispatchQueue = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MapsSuggestionsDefaultLocationUpdater_locationManager_didUpdateLocations___block_invoke;
    block[3] = &unk_1E81F5410;
    objc_copyWeak(&v13, buf);
    v11 = managerCopy;
    v12 = locationsCopy;
    dispatch_async(dispatchQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __76__MapsSuggestionsDefaultLocationUpdater_locationManager_didUpdateLocations___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [WeakRetained considerMyAllowanceAsLimited:{objc_msgSend(a1[4], "_limitsPrecision")}];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = a1[5];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if (MapsSuggestionsLoggingIsVerbose())
          {
            v9 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v17 = v8;
              _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Considering new location: %@", buf, 0xCu);
            }
          }

          if (MapsSuggestionsIsValidLocation(v8))
          {
            [WeakRetained considerMyNewLocation:v8];
          }

          else
          {
            v10 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v17 = v8;
              _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Dropping invalid location: %@", buf, 0xCu);
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsDefaultLocationUpdater.m";
      v18 = 1026;
      v19 = 93;
      v20 = 2082;
      v21 = "[MapsSuggestionsDefaultLocationUpdater locationManager:didUpdateLocations:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  code = [errorCopy code];
  if (code != 3)
  {
    if (code)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = errorCopy;
        v7 = "Location error: %@";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 12;
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_10;
    }

    if (MapsSuggestionsLoggingIsVerbose())
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v11) = 0;
        v7 = "Location unknown";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEBUG;
        v10 = 2;
LABEL_8:
        _os_log_impl(&dword_1C5126000, v8, v9, v7, &v11, v10);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  _limitsPrecision = [authorization _limitsPrecision];

  [(MapsSuggestionsBaseLocationUpdater *)self considerMyAllowanceAsLimited:_limitsPrecision];
}

@end