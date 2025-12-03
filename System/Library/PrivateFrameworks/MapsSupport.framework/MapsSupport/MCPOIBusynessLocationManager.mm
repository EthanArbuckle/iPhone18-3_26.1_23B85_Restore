@interface MCPOIBusynessLocationManager
+ (MCPOIBusynessLocationManager)sharedLocationManager;
- (MCPOIBusynessLocationManager)init;
- (MCPOIBusynessLocationManagerDelegate)locationDelegate;
- (void)fetchInferedPlaceNames:(BOOL)names analytics:(id)analytics completionQueue:(id)queue completion:(id)completion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didReportVisit:(id)visit;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)requestLocation;
- (void)requestVisit;
@end

@implementation MCPOIBusynessLocationManager

+ (MCPOIBusynessLocationManager)sharedLocationManager
{
  if (qword_1000232D0 != -1)
  {
    sub_10000F95C();
  }

  v3 = qword_1000232D8;

  return v3;
}

- (MCPOIBusynessLocationManager)init
{
  v11.receiver = self;
  v11.super_class = MCPOIBusynessLocationManager;
  v2 = [(MCPOIBusynessLocationManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_listeningLocationCounter = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.geocorrectiond.poibusynesslocationmanager", v4);
    locationQueue = v3->_locationQueue;
    v3->_locationQueue = v5;

    v7 = v3->_locationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005CBC;
    block[3] = &unk_10001C650;
    v10 = v3;
    dispatch_sync(v7, block);
  }

  return v3;
}

- (void)requestLocation
{
  authorizationStatus = [(CLLocationManager *)self->_locationManager authorizationStatus];
  v4 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = authorizationStatus;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "locationManager authorizationStatus %d", buf, 8u);
  }

  if (authorizationStatus - 3 > 1)
  {
    [MCPOIBusynessAnalytics report:6];
    v7 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "locationManager authorization not granted", buf, 2u);
    }

    locationQueue = self->_locationQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005F40;
    v8[3] = &unk_10001C650;
    v8[4] = self;
    v6 = v8;
  }

  else
  {
    locationQueue = self->_locationQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005F24;
    v9[3] = &unk_10001C650;
    v9[4] = self;
    v6 = v9;
  }

  dispatch_async(locationQueue, v6);
}

- (void)requestVisit
{
  authorizationStatus = [(CLLocationManager *)self->_locationManager authorizationStatus];
  v4 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = authorizationStatus;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "locationManager authorizationStatus %d", buf, 8u);
  }

  if (authorizationStatus - 3 > 1)
  {
    [MCPOIBusynessAnalytics report:6];
    v7 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "locationManager authorization not granted", buf, 2u);
    }

    locationQueue = self->_locationQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000061A0;
    v8[3] = &unk_10001C650;
    v8[4] = self;
    v6 = v8;
  }

  else
  {
    locationQueue = self->_locationQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006144;
    v9[3] = &unk_10001C650;
    v9[4] = self;
    v6 = v9;
  }

  dispatch_async(locationQueue, v6);
}

- (void)fetchInferedPlaceNames:(BOOL)names analytics:(id)analytics completionQueue:(id)queue completion:(id)completion
{
  namesCopy = names;
  analyticsCopy = analytics;
  queueCopy = queue;
  completionCopy = completion;
  if (namesCopy)
  {
    v13 = +[MCPOIBusynessState sharedState];
    numberOfPlaceInferenceInLastDay = [v13 numberOfPlaceInferenceInLastDay];
    UInteger = GEOConfigGetUInteger();

    if (numberOfPlaceInferenceInLastDay >= UInteger)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    v17 = +[MCPOIBusynessState sharedState];
    [v17 incrementPlaceInferenceCount];
  }

  else
  {
    v16 = 0;
  }

  [analyticsCopy setFidelity:v16];
  locationQueue = self->_locationQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100006340;
  v21[3] = &unk_10001CA08;
  v21[4] = self;
  v22 = queueCopy;
  v23 = completionCopy;
  v24 = v16;
  v19 = completionCopy;
  v20 = queueCopy;
  dispatch_async(locationQueue, v21);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  dispatch_assert_queue_V2(self->_locationQueue);
  v6 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "locationManager:didUpdateLocations", buf, 2u);
  }

  listeningLocationCounter = self->_listeningLocationCounter;
  if (listeningLocationCounter)
  {
    self->_listeningLocationCounter = listeningLocationCounter - 1;
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    if ([locationsCopy count])
    {
      lastObject = [locationsCopy lastObject];
      v9 = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "locationManager:calling location delegate", v11, 2u);
      }

      locationDelegate = [(MCPOIBusynessLocationManager *)self locationDelegate];
      [locationDelegate didUpdateLocation:lastObject];
    }

    else
    {
      [MCPOIBusynessAnalytics report:7];
      lastObject = [(MCPOIBusynessLocationManager *)self locationDelegate];
      [lastObject didUpdateLocation:0];
    }
  }
}

- (void)locationManager:(id)manager didReportVisit:(id)visit
{
  visitCopy = visit;
  dispatch_assert_queue_V2(self->_locationQueue);
  v6 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "locationManager:didDetermineVisitState:visit:", buf, 2u);
  }

  listeningVisitCounter = self->_listeningVisitCounter;
  if (listeningVisitCounter)
  {
    self->_listeningVisitCounter = listeningVisitCounter - 1;
    [(CLLocationManager *)self->_locationManager stopMonitoringVisits];
    v8 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "locationManager:calling visit delegate", v10, 2u);
    }

    locationDelegate = [(MCPOIBusynessLocationManager *)self locationDelegate];
    [locationDelegate didUpdateVisit:visitCopy];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "locationManager:didFailWithError : %@", &v6, 0xCu);
  }
}

- (MCPOIBusynessLocationManagerDelegate)locationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_locationDelegate);

  return WeakRetained;
}

@end