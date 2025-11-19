@interface MDLocationManager
- (MDLocationManager)init;
- (void)_notifyClients:(id)a3 error:(id)a4;
- (void)_setupLocationManager;
- (void)_shiftLocationIfNeeded:(id)a3 withCompletionHandler:(id)a4;
- (void)_timeoutOccurred;
- (void)dealloc;
- (void)fetchSingleLocationWithAccuracy:(double)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)mapsInstallStateDidChange:(BOOL)a3;
- (void)registerLocationObserver:(id)a3;
- (void)unregisterLocationObserver:(id)a3;
@end

@implementation MDLocationManager

- (MDLocationManager)init
{
  v10.receiver = self;
  v10.super_class = MDLocationManager;
  v2 = [(MDLocationManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MDLocationQueue", v3);
    locationQueue = v2->_locationQueue;
    v2->_locationQueue = v4;

    v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MDLocationObserver queue:0];
    locationObservers = v2->_locationObservers;
    v2->_locationObservers = v6;

    v8 = +[MSPMapsInstallState sharedState];
    [v8 registerMapsInstallStateObserver:v2];

    [(MDLocationManager *)v2 _setupLocationManager];
  }

  return v2;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  v3.receiver = self;
  v3.super_class = MDLocationManager;
  [(MDLocationManager *)&v3 dealloc];
}

- (void)_setupLocationManager
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [CLLocationManager alloc];
    v4 = [v3 initWithEffectiveBundlePath:@"/System/Library/LocationBundles/MapsAnnouncements.bundle" limitingBundleIdentifier:MapsAppBundleId delegate:self onQueue:self->_locationQueue];
    locationManager = self->_locationManager;
    self->_locationManager = v4;

    v6 = [(CLLocationManager *)self->_locationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways || [(CLLocationManager *)self->_locationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedWhenInUse;
    self->_mapsAuthorized = v6;
    self->_mapsLocationIsPrecise = [(CLLocationManager *)self->_locationManager accuracyAuthorization]== CLAccuracyAuthorizationFullAccuracy;
    self->_requestedAccuracy = kCLLocationAccuracyKilometer;
    v7 = self->_locationManager;

    [(CLLocationManager *)v7 setDesiredAccuracy:?];
  }
}

- (void)registerLocationObserver:(id)a3
{
  v4 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    locationQueue = self->_locationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000EFA8;
    v6[3] = &unk_10003C9D8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(locationQueue, v6);
  }
}

- (void)unregisterLocationObserver:(id)a3
{
  v4 = a3;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    locationQueue = self->_locationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000F118;
    v6[3] = &unk_10003C9D8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(locationQueue, v6);
  }
}

- (void)fetchSingleLocationWithAccuracy:(double)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    locationQueue = self->_locationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F2E4;
    block[3] = &unk_10003CEF8;
    block[4] = self;
    v16 = v8;
    v17 = a3;
    dispatch_async(locationQueue, block);
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, (a4 * 1000000000.0));
    v11 = self->_locationQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F3A8;
    v12[3] = &unk_10003CCB8;
    objc_copyWeak(&v13, &location);
    dispatch_after(v10, v11, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_timeoutOccurred
{
  if (self->_completionHandler)
  {
    v3 = [NSError GEOErrorWithCode:-8 reason:@"Failed to retrieve location within timeout period"];
    [(MDLocationManager *)self _notifyClients:0 error:v3];
  }
}

- (void)_shiftLocationIfNeeded:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 coordinate];
  v10 = [[GEOLatLng alloc] initWithLatitude:v8 longitude:v9];
  [v10 setGtLog:1];
  [v10 coordinate];
  if (([GEOLocationShifter isLocationShiftRequiredForCoordinate:?]& 1) != 0)
  {
    v11 = objc_alloc_init(GEOLocationShifter);
    [v6 horizontalAccuracy];
    v13 = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000F620;
    v16[3] = &unk_10003CF20;
    v17 = v6;
    v18 = v7;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F6FC;
    v14[3] = &unk_10003CD38;
    v15 = v18;
    [v11 shiftLatLng:v10 accuracy:v16 withCompletionHandler:0 mustGoToNetworkCallback:v14 errorHandler:self->_locationQueue callbackQueue:v13];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

- (void)_notifyClients:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_retainBlock(self->_completionHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v10, v6);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:self->_requestedAccuracy];
  }

  if (([(GEOObserverHashTable *)self->_locationObservers hasObservers]& 1) != 0)
  {
    [(GEOObserverHashTable *)self->_locationObservers locationDidUpdate:v10 error:v6];
  }

  else
  {
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    objc_initWeak(&location, self);
    locationQueue = self->_locationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F8AC;
    block[3] = &unk_10003C920;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    dispatch_async(locationQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get location: %@", &v6, 0xCu);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  objc_initWeak(&location, self);
  locationQueue = self->_locationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FB68;
  block[3] = &unk_10003C920;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(locationQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)mapsInstallStateDidChange:(BOOL)a3
{
  locationManager = self->_locationManager;
  if (!a3 || locationManager)
  {
    [(CLLocationManager *)locationManager stopUpdatingLocation];
    [(CLLocationManager *)self->_locationManager setDelegate:0];
    v5 = self->_locationManager;
    self->_locationManager = 0;
  }

  else
  {

    [(MDLocationManager *)self _setupLocationManager];
  }
}

@end