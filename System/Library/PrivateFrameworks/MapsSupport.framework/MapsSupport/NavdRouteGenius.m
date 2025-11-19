@interface NavdRouteGenius
- (NSString)uniqueName;
- (NavdRouteGenius)initWithDelegate:(id)a3 resourceDepot:(id)a4 locationUpdater:(id)a5;
- (id).cxx_construct;
- (void)_updateExternalAccessory:(id)a3;
- (void)dealloc;
- (void)didChangeProtectionStatusForBundleId:(id)a3;
- (void)didUpdateLocation:(id)a3;
- (void)forceReroute;
- (void)invalidateForMapsSuggestionsManager:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation NavdRouteGenius

- (NavdRouteGenius)initWithDelegate:(id)a3 resourceDepot:(id)a4 locationUpdater:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38.receiver = self;
  v38.super_class = NavdRouteGenius;
  v12 = [(NavdRouteGenius *)&v38 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_10001A824(&location, @"MapsSuggestionsRouteGeniusQueue", v13);
    v14 = location;
    location = 0;
    innerQueue = v12->_state.queue._innerQueue;
    v12->_state.queue._innerQueue = v14;

    v16 = v37;
    v37 = 0;
    name = v12->_state.queue._name;
    v12->_state.queue._name = v16;

    objc_storeStrong(&v12->_config.delegate, a3);
    objc_storeStrong(&v12->_config.locationUpdater, a5);
    objc_storeStrong(&v12->_config.resourceDepot, a4);
    v18 = [v10 oneAppGuardian];
    appGuardian = v12->_config.appGuardian;
    v12->_config.appGuardian = v18;

    uniqueName = v12->_uniqueName;
    v12->_uniqueName = @"NavdRouteGenius";

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = +[MapsExternalAccessory sharedInstance];
    [v21 addObserver:v12 selector:"_updateExternalAccessory:" name:@"MapsExternalAccessoryUpdatedNotification" object:v22];

    v23 = [NavdNetworkRequester alloc];
    v24 = [v10 oneNetworkRequester];
    v25 = [(NavdNetworkRequester *)v23 initWithNetworkRequester:v24 purpose:6 source:1];
    requester = v12->_config.requester;
    v12->_config.requester = v25;

    objc_initWeak(&location, v12);
    v27 = [MapsSuggestionsCanKicker alloc];
    GEOConfigGetDouble();
    v29 = v28;
    v30 = v12->_state.queue._innerQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000F608;
    v34[3] = &unk_100065548;
    objc_copyWeak(&v35, &location);
    v31 = [v27 initWithName:@"NavdRouteGeniusLocationUpdaterCanKicker" time:v30 queue:v34 block:v29];
    locationUpdaterCanKicker = v12->_config.locationUpdaterCanKicker;
    v12->_config.locationUpdaterCanKicker = v31;

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)forceReroute
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000F7D0;
  v3[3] = &unk_100065548;
  objc_copyWeak(&v4, &location);
  dispatch_async(self->_state.queue._innerQueue, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_updateExternalAccessory:(id)a3
{
  v4 = +[MapsExternalAccessory sharedInstance];
  v5 = [v4 isConnected];

  if ((v5 & 1) == 0)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Ending currentSession", v8, 2u);
    }

    v6->_state.triggerLocation.currentSession = 0;
    objc_sync_exit(v6);
  }
}

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "About to start RouteGenius", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001025C;
  v4[3] = &unk_100065648;
  v4[4] = self;
  objc_copyWeak(&v5, buf);
  sub_1000100B4(&self->_state, self, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "About to Stop RouteGenius", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012C84;
  block[3] = &unk_100065548;
  objc_copyWeak(&v5, buf);
  dispatch_async(self->_state.queue._innerQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)invalidateForMapsSuggestionsManager:(id)a3
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013144;
  v4[3] = &unk_100065710;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  sub_1000100B4(&self->_state, self, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)didUpdateLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100019B8C;
    v6[3] = &unk_100065908;
    v7 = v4;
    v8 = self;
    objc_copyWeak(&v9, location);
    sub_1000100B4(&self->_state, self, v6);
    objc_destroyWeak(&v9);

    objc_destroyWeak(location);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "received a nil location", location, 2u);
    }
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[MapsExternalAccessory sharedInstance];
  [v3 removeObserver:self name:@"MapsExternalAccessoryUpdatedNotification" object:v4];

  v5.receiver = self;
  v5.super_class = NavdRouteGenius;
  [(NavdRouteGenius *)&v5 dealloc];
}

- (void)didChangeProtectionStatusForBundleId:(id)a3
{
  v4 = [(NavdRouteGeniusRoute *)self->_state.route entry];
  v5 = [v4 isLockedOrHidden];

  if (v5)
  {

    [(NavdRouteGenius *)self stop];
  }
}

- (id).cxx_construct
{
  *(self + 1) = @"NavdRouteGenius";
  *(self + 20) = 0;
  *(self + 21) = 0xBF80000000000000;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 138) = 0u;
  *(self + 208) = 0;
  *(self + 27) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  return self;
}

@end