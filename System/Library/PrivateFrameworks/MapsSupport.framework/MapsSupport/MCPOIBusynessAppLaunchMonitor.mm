@interface MCPOIBusynessAppLaunchMonitor
+ (MCPOIBusynessAppLaunchMonitor)sharedAppLaunchMonitor;
+ (id)_contextStorePredicate;
+ (void)_processLaunch;
- (MCPOIBusynessAppLaunchMonitor)init;
- (void)_createContextStoreRegistrationIfNecessary;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation MCPOIBusynessAppLaunchMonitor

+ (MCPOIBusynessAppLaunchMonitor)sharedAppLaunchMonitor
{
  if (qword_1000232E8 != -1)
  {
    sub_10000F970();
  }

  v3 = qword_1000232E0;

  return v3;
}

- (MCPOIBusynessAppLaunchMonitor)init
{
  v11.receiver = self;
  v11.super_class = MCPOIBusynessAppLaunchMonitor;
  v2 = [(MCPOIBusynessAppLaunchMonitor *)&v11 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    signal(30, 1);
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = *(v2 + 2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000069E4;
    handler[3] = &unk_10001C650;
    v10 = v2;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(v2 + 2));
  }

  return v2;
}

- (void)startMonitoring
{
  v3 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "startMonitoring", buf, 2u);
  }

  v5 = self->_isolater;
  _geo_isolate_lock();
  [(MCPOIBusynessAppLaunchMonitor *)self _createContextStoreRegistrationIfNecessary];
  v4 = +[_CDClientContext userContext];
  [v4 registerCallback:self->_changeRegistration];

  _geo_isolate_unlock();
}

- (void)_createContextStoreRegistrationIfNecessary
{
  isolater = self->_isolater;
  geo_assert_isolated();
  if (!self->_changeRegistration)
  {
    v6 = +[MCPOIBusynessAppLaunchMonitor _contextStorePredicate];
    v4 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.Maps.geocorrectiond.applaunch.registration" contextualPredicate:v6 clientIdentifier:@"com.apple.Maps.geocorrectiond.contextstore-registration" callback:&stru_10001CA68];
    changeRegistration = self->_changeRegistration;
    self->_changeRegistration = v4;
  }
}

+ (void)_processLaunch
{
  [MCPOIBusynessAnalytics report:0];
  if (+[MCPOIBusynessUploadConditionsChecker shouldUploadBasedOnTime])
  {
    v2 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "attempting to leech location", buf, 2u);
    }

    v3 = +[MCPOIBusynessProcessor sharedProcessor];
    [v3 leechLocation];
  }

  else
  {
    [MCPOIBusynessAnalytics report:4];
    v3 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Should not upload payload", v4, 2u);
    }
  }
}

+ (id)_contextStorePredicate
{
  v2 = +[MCPOIBusynessLocationOfInterestManager sharedLocationOfInterestManagerInstance];
  v3 = [v2 suppressedLocationsOfInterestUUIDs];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + 3);
  v5 = +[_CDContextQueries keyPathForLowPowerModeStatus];
  v6 = [_CDContextualPredicate predicateForKeyPath:v5 withFormat:@"SELF.%@.value == NO", v5];
  [v4 addObject:v6];

  UInteger = GEOConfigGetUInteger();
  v8 = 20;
  if (UInteger > 0x14)
  {
    v8 = UInteger;
  }

  if (v8 >= 0x64)
  {
    v9 = 100;
  }

  else
  {
    v9 = v8;
  }

  v10 = +[_CDContextQueries keyPathForBatteryLevel];
  v11 = [_CDContextualPredicate predicateForKeyPath:v10 withFormat:@"SELF.%@.value >= %d", v10, v9];
  [v4 addObject:v11];

  v12 = +[_CDContextQueries keyPathForNearbyLOIIdentifiers];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [_CDContextualPredicate predicateForKeyPath:v12 withFormat:@"NOT (%@ IN SELF.%@.value)", *(*(&v23 + 1) + 8 * i), v12, v23];
        [v4 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = +[_CDContextQueries keyPathForAppUsageDataDictionaries];
  v20 = [_CDContextualPredicate predicateForKeyPath:v19 withFormat:@"SELF.%@.value.@count > 0", v19];
  [v4 addObject:v20];

  v21 = [_CDContextualPredicate andPredicateWithSubpredicates:v4];

  return v21;
}

- (void)stopMonitoring
{
  v3 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stopMonitoring", buf, 2u);
  }

  v6 = self->_isolater;
  _geo_isolate_lock();
  [(MCPOIBusynessAppLaunchMonitor *)self _createContextStoreRegistrationIfNecessary];
  v4 = +[_CDClientContext userContext];
  [v4 deregisterCallback:self->_changeRegistration];

  changeRegistration = self->_changeRegistration;
  self->_changeRegistration = 0;

  _geo_isolate_unlock();
}

@end