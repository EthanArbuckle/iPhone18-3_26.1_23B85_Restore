@interface MapsSuggestionsDefaultLocationUpdater
- (MapsSuggestionsDefaultLocationUpdater)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
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

  v4 = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if (self->_locationManager)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "Already running", &v12, 2u);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695FBE8]);
    v7 = *MEMORY[0x1E69A1A78];
    v8 = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
    v9 = [v6 initWithEffectiveBundleIdentifier:v7 delegate:self onQueue:v8];
    locationManager = self->_locationManager;
    self->_locationManager = v9;

    GEOConfigGetDouble();
    [(CLLocationManager *)self->_locationManager setDistanceFilter:?];
    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*MEMORY[0x1E6985C88]];
    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    v11 = [(CLLocationManager *)self->_locationManager _limitsPrecision];
    [(MapsSuggestionsBaseLocationUpdater *)self considerMyAllowanceAsLimited:v11];
    if (v11)
    {
      return;
    }

    v5 = [(CLLocationManager *)self->_locationManager location];
    [(MapsSuggestionsBaseLocationUpdater *)self considerMyNewLocation:v5];
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

  v4 = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  locationManager = self->_locationManager;
  if (locationManager)
  {
    [(CLLocationManager *)locationManager stopUpdatingLocation];
    v6 = self->_locationManager;
    self->_locationManager = 0;
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "DualLocationUpdater update", buf, 2u);
    }
  }

  if ([v7 count])
  {
    objc_initWeak(buf, self);
    v9 = [(MapsSuggestionsBaseLocationUpdater *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MapsSuggestionsDefaultLocationUpdater_locationManager_didUpdateLocations___block_invoke;
    block[3] = &unk_1E81F5410;
    objc_copyWeak(&v13, buf);
    v11 = v6;
    v12 = v7;
    dispatch_async(v9, block);

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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [v4 code];
  if (v5 != 3)
  {
    if (v5)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v4;
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

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = [a3 _limitsPrecision];

  [(MapsSuggestionsBaseLocationUpdater *)self considerMyAllowanceAsLimited:v4];
}

@end