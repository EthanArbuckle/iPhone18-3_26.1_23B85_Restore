@interface MapsSuggestionsLeechingLocationUpdater
- (MapsSuggestionsLeechingLocationUpdater)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)onStartImplementation;
- (void)onStopImplementation;
@end

@implementation MapsSuggestionsLeechingLocationUpdater

- (MapsSuggestionsLeechingLocationUpdater)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("MapsSuggestionsLeechingLocationUpdaterWorkerQueue", v3);
  v7.receiver = self;
  v7.super_class = MapsSuggestionsLeechingLocationUpdater;
  v5 = [(MapsSuggestionsLeechingLocationUpdater *)&v7 initWithName:@"MapsSuggestionsLeechingLocationUpdater" queue:v4];

  return v5;
}

- (void)onStartImplementation
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[MapsSuggestionsLeechingLocationUpdater onStartImplementation]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v10, 0xCu);
  }

  if (self->_locationManagerForLeeching)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Already running", &v10, 2u);
    }
  }

  else
  {
    v5 = [MapsSuggestionsLimitingLocationManager alloc];
    v6 = [(MapsSuggestionsLeechingLocationUpdater *)self dispatchQueue];
    v7 = [v5 initWithEffectiveBundlePath:@"/System/Library/LocationBundles/DestinationdLocationBundleiOS.bundle" limitingBundleIdentifier:MapsAppBundleId delegate:self onQueue:v6];
    locationManagerForLeeching = self->_locationManagerForLeeching;
    self->_locationManagerForLeeching = v7;

    GEOConfigGetDouble();
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching setDistanceFilter:?];
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching setDesiredAccuracy:2147483650.0];
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching startUpdatingLocation];
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching startMonitoringSignificantLocationChanges];
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching startMonitoringVisits];
    v9 = [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching _limitsPrecision];
    [(MapsSuggestionsLeechingLocationUpdater *)self considerMyAllowanceAsLimited:v9];
    if (v9)
    {
      return;
    }

    v4 = [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching location];
    [(MapsSuggestionsLeechingLocationUpdater *)self considerMyNewLocation:v4];
  }
}

- (void)onStopImplementation
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[MapsSuggestionsLeechingLocationUpdater onStopImplementation]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  locationManagerForLeeching = self->_locationManagerForLeeching;
  if (locationManagerForLeeching)
  {
    [(MapsSuggestionsLimitingLocationManager *)locationManagerForLeeching stopUpdatingLocation];
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching stopMonitoringSignificantLocationChanges];
    [(MapsSuggestionsLimitingLocationManager *)self->_locationManagerForLeeching stopMonitoringVisits];
    v5 = self->_locationManagerForLeeching;
    self->_locationManagerForLeeching = 0;
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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "LeechingLocationUpdater update", buf, 2u);
    }
  }

  if ([v7 count])
  {
    objc_initWeak(buf, self);
    v9 = [(MapsSuggestionsLeechingLocationUpdater *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000265BC;
    block[3] = &unk_1000750D8;
    objc_copyWeak(&v13, buf);
    v11 = v6;
    v12 = v7;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = [v4 code];
  if (v5)
  {
    if (v5 != 3)
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
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (MapsSuggestionsLoggingIsVerbose())
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      v7 = "Location unknown";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:
  }
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MapsSuggestionsLeechingLocationUpdater *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026B10;
  v11[3] = &unk_100075B60;
  v12 = v7;
  v9 = v7;
  objc_copyWeak(&v14, &location);
  v13 = v6;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  -[MapsSuggestionsLeechingLocationUpdater considerMyAllowanceAsLimited:](self, "considerMyAllowanceAsLimited:", [v4 _limitsPrecision]);
}

@end