@interface MDLocationManager
- (MDLocationManager)init;
- (void)_notifyClients:(id)clients error:(id)error;
- (void)_setupLocationManager;
- (void)_shiftLocationIfNeeded:(id)needed withCompletionHandler:(id)handler;
- (void)_timeoutOccurred;
- (void)dealloc;
- (void)fetchSingleLocationWithAccuracy:(double)accuracy timeout:(double)timeout completionHandler:(id)handler;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)mapsInstallStateDidChange:(BOOL)change;
- (void)registerLocationObserver:(id)observer;
- (void)unregisterLocationObserver:(id)observer;
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

- (void)registerLocationObserver:(id)observer
{
  observerCopy = observer;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    locationQueue = self->_locationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000EFA8;
    v6[3] = &unk_10003C9D8;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(locationQueue, v6);
  }
}

- (void)unregisterLocationObserver:(id)observer
{
  observerCopy = observer;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    locationQueue = self->_locationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000F118;
    v6[3] = &unk_10003C9D8;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(locationQueue, v6);
  }
}

- (void)fetchSingleLocationWithAccuracy:(double)accuracy timeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    locationQueue = self->_locationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F2E4;
    block[3] = &unk_10003CEF8;
    block[4] = self;
    v16 = handlerCopy;
    accuracyCopy = accuracy;
    dispatch_async(locationQueue, block);
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, (timeout * 1000000000.0));
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

- (void)_shiftLocationIfNeeded:(id)needed withCompletionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  [neededCopy coordinate];
  v10 = [[GEOLatLng alloc] initWithLatitude:v8 longitude:v9];
  [v10 setGtLog:1];
  [v10 coordinate];
  if (([GEOLocationShifter isLocationShiftRequiredForCoordinate:?]& 1) != 0)
  {
    v11 = objc_alloc_init(GEOLocationShifter);
    [neededCopy horizontalAccuracy];
    v13 = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000F620;
    v16[3] = &unk_10003CF20;
    v17 = neededCopy;
    v18 = handlerCopy;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F6FC;
    v14[3] = &unk_10003CD38;
    v15 = v18;
    [v11 shiftLatLng:v10 accuracy:v16 withCompletionHandler:0 mustGoToNetworkCallback:v14 errorHandler:self->_locationQueue callbackQueue:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, neededCopy, 0);
  }
}

- (void)_notifyClients:(id)clients error:(id)error
{
  clientsCopy = clients;
  errorCopy = error;
  v7 = objc_retainBlock(self->_completionHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, clientsCopy, errorCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:self->_requestedAccuracy];
  }

  if (([(GEOObserverHashTable *)self->_locationObservers hasObservers]& 1) != 0)
  {
    [(GEOObserverHashTable *)self->_locationObservers locationDidUpdate:clientsCopy error:errorCopy];
  }

  else
  {
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    objc_initWeak(&location, self);
    locationQueue = self->_locationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F8AC;
    block[3] = &unk_10003C920;
    objc_copyWeak(&v9, &location);
    v8 = locationsCopy;
    dispatch_async(locationQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get location: %@", &v6, 0xCu);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
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

- (void)mapsInstallStateDidChange:(BOOL)change
{
  locationManager = self->_locationManager;
  if (!change || locationManager)
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