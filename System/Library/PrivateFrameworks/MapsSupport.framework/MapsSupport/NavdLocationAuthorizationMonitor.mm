@interface NavdLocationAuthorizationMonitor
+ (id)sharedMonitor;
- (BOOL)isAuthorizedForLocationWithClientBundleIdentifier:(id)a3;
- (NavdLocationAuthorizationMonitor)init;
- (int)_q_getAuthorizationForLocationWithBundleIdentifier:(id)a3;
- (void)_q_reset;
- (void)_reset;
@end

@implementation NavdLocationAuthorizationMonitor

+ (id)sharedMonitor
{
  if (qword_100075938 != -1)
  {
    sub_10003D9C8();
  }

  v3 = qword_100075930;

  return v3;
}

- (NavdLocationAuthorizationMonitor)init
{
  v10.receiver = self;
  v10.super_class = NavdLocationAuthorizationMonitor;
  v2 = [(NavdLocationAuthorizationMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    authStatusDictionary = v2->_authStatusDictionary;
    v2->_authStatusDictionary = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("NavdLocationAuthorizationMonitor", v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000EB48, CLAuthorizationStatusChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)_q_reset
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing auth status dictionary", v4, 2u);
  }

  [(NSMutableDictionary *)self->_authStatusDictionary removeAllObjects];
}

- (void)_reset
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ECE4;
  block[3] = &unk_100065180;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (int)_q_getAuthorizationForLocationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_authStatusDictionary objectForKey:v4];
  v6 = GEOFindOrCreateLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v13 = 138477827;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Location auth for %{private}@ found in the dictionary. Not requesting from CL.", &v13, 0xCu);
    }

    LODWORD(v6) = [v5 integerValue];
  }

  else
  {
    if (v7)
    {
      v13 = 138477827;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Location auth for %{private}@ NOT found in the dictionary. Requesting from CL.", &v13, 0xCu);
    }

    v8 = [NSBundle bundleWithPath:v4];
    v9 = [v8 bundlePath];
    v6 = [CLLocationManager authorizationStatusForBundlePath:v9];

    authStatusDictionary = self->_authStatusDictionary;
    v11 = [NSNumber numberWithInt:v6];
    [(NSMutableDictionary *)authStatusDictionary setObject:v11 forKey:v4];
  }

  return v6;
}

- (BOOL)isAuthorizedForLocationWithClientBundleIdentifier:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F1F8;
  block[3] = &unk_1000654F8;
  v20 = &v25;
  block[4] = self;
  v6 = v4;
  v19 = v6;
  dispatch_sync(serialQueue, block);
  v7 = self->_serialQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000F230;
  v17[3] = &unk_100065520;
  v17[4] = self;
  v17[5] = &v21;
  dispatch_sync(v7, v17);
  if ((*(v26 + 6) - 3) > 1 || (*(v22 + 6) - 3) > 1)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(v26 + 6);
      v14 = *(v22 + 6);
      v15 = +[CLLocationManager navdLocationBundleSource];
      *buf = 67109891;
      v30 = v13;
      v31 = 1024;
      v32 = v14;
      v33 = 2113;
      v34 = v15;
      v35 = 2113;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Location Authorization Denied (Client Auth Status %d,  NavdAuthStatus %d, NavdLocationBundleSource %{private}@, ClientBundleIdentifier %{private}@)", buf, 0x22u);
    }

    v12 = 0;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(v26 + 6);
      v10 = *(v22 + 6);
      v11 = +[CLLocationManager navdLocationBundleSource];
      *buf = 67109891;
      v30 = v9;
      v31 = 1024;
      v32 = v10;
      v33 = 2113;
      v34 = v11;
      v35 = 2113;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Location Authorization Approved (Client Auth Status %d,  NavdAuthStatus %d, NavdLocationBundleSource %{private}@, ClientBundleIdentifier %{private}@)", buf, 0x22u);
    }

    v12 = 1;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

@end