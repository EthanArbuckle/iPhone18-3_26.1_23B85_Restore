@interface MCPOIBusynessLocationManager
+ (MCPOIBusynessLocationManager)sharedLocationManager;
- (MCPOIBusynessLocationManager)init;
- (MCPOIBusynessLocationManagerDelegate)locationDelegate;
- (void)fetchInferedPlaceNames:(BOOL)a3 analytics:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didReportVisit:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
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
  v3 = [(CLLocationManager *)self->_locationManager authorizationStatus];
  v4 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "locationManager authorizationStatus %d", buf, 8u);
  }

  if (v3 - 3 > 1)
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
  v3 = [(CLLocationManager *)self->_locationManager authorizationStatus];
  v4 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "locationManager authorizationStatus %d", buf, 8u);
  }

  if (v3 - 3 > 1)
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

- (void)fetchInferedPlaceNames:(BOOL)a3 analytics:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v8)
  {
    v13 = +[MCPOIBusynessState sharedState];
    v14 = [v13 numberOfPlaceInferenceInLastDay];
    UInteger = GEOConfigGetUInteger();

    if (v14 >= UInteger)
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

  [v10 setFidelity:v16];
  locationQueue = self->_locationQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100006340;
  v21[3] = &unk_10001CA08;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v24 = v16;
  v19 = v12;
  v20 = v11;
  dispatch_async(locationQueue, v21);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
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
    if ([v5 count])
    {
      v8 = [v5 lastObject];
      v9 = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "locationManager:calling location delegate", v11, 2u);
      }

      v10 = [(MCPOIBusynessLocationManager *)self locationDelegate];
      [v10 didUpdateLocation:v8];
    }

    else
    {
      [MCPOIBusynessAnalytics report:7];
      v8 = [(MCPOIBusynessLocationManager *)self locationDelegate];
      [v8 didUpdateLocation:0];
    }
  }
}

- (void)locationManager:(id)a3 didReportVisit:(id)a4
{
  v5 = a4;
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

    v9 = [(MCPOIBusynessLocationManager *)self locationDelegate];
    [v9 didUpdateVisit:v5];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "locationManager:didFailWithError : %@", &v6, 0xCu);
  }
}

- (MCPOIBusynessLocationManagerDelegate)locationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_locationDelegate);

  return WeakRetained;
}

@end