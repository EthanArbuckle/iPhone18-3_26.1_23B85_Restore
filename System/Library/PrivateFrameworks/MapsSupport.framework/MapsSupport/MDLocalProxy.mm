@interface MDLocalProxy
- (BOOL)deleteAppGroupContainer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MDLocalProxy)initWithState:(id)a3;
- (void)addSufficientVisitsNotification:(id)a3 message:(id)a4;
- (void)clearAirportArrivalBulletin;
- (void)clearBulletinWithRecordID:(id)a3;
- (void)clearLowFuelAlertBulletin;
- (void)clearMapsSuggestionsBulletin;
- (void)clearParkedCarBulletin;
- (void)clearPredictedRouteTrafficIncidentBulletin;
- (void)clearTrafficIncidentBulletinWithAlertID:(id)a3;
- (void)clearVenueBulletin;
- (void)dealloc;
- (void)deleteFilesOutsideContainer;
- (void)fetchDevicePushToken:(id)a3;
- (void)handleMapsApplicationRemoval:(id)a3;
- (void)showAirportArrivalBulletinWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6;
- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)a3;
- (void)showMapsSuggestionsBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (void)showParkedCarBulletinForEvent:(id)a3;
- (void)showParkedCarReplacementBulletinForEvent:(id)a3 replacingEvent:(id)a4;
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3;
- (void)showVenueBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
@end

@implementation MDLocalProxy

- (MDLocalProxy)initWithState:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MDLocalProxy;
  v6 = [(MDLocalProxy *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, a3);
    v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.Maps.mapspushd"];
    listener = v7->_listener;
    v7->_listener = v8;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  v3.receiver = self;
  v3.super_class = MDLocalProxy;
  [(MDLocalProxy *)&v3 dealloc];
}

- (void)showParkedCarBulletinForEvent:(id)a3
{
  v8 = a3;
  v4 = [(MDState *)self->_state locationManager];
  v5 = [v4 mapsLocationAuthorized];

  if (v5)
  {
    v6 = [(MDState *)self->_state notificationCenter];
    v7 = [v6 addParkedCarNotificationWithEvent:v8];
  }
}

- (void)showParkedCarReplacementBulletinForEvent:(id)a3 replacingEvent:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MDState *)self->_state locationManager];
  v8 = [v7 mapsLocationAuthorized];

  if (v8)
  {
    v9 = [(MDState *)self->_state notificationCenter];
    v10 = [v9 addParkedCarReplacementNotificationWithEvent:v11 replacingEvent:v6];
  }
}

- (void)clearParkedCarBulletin
{
  v2 = [(MDState *)self->_state notificationCenter];
  [v2 clearNotificationsOfType:5];
}

- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)a3
{
  v6 = a3;
  v4 = [(MDState *)self->_state notificationCenter];
  v5 = [v4 addLowFuelAlertNotificationWithDetails:v6];
}

- (void)clearLowFuelAlertBulletin
{
  v2 = [(MDState *)self->_state notificationCenter];
  [v2 clearNotificationsOfType:7];
}

- (void)showMapsSuggestionsBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MDState *)self->_state notificationCenter];
  v11 = [v10 addMapsSuggestionsNotificationWithTitle:v12 message:v8 actionURL:v9];
}

- (void)clearMapsSuggestionsBulletin
{
  v2 = [(MDState *)self->_state notificationCenter];
  [v2 clearNotificationsOfType:10];
}

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3
{
  v6 = a3;
  v4 = [(MDState *)self->_state notificationCenter];
  v5 = [v4 addPredictedRouteTrafficIncidentNotificationForCommuteDetails:v6];
}

- (void)clearPredictedRouteTrafficIncidentBulletin
{
  v2 = [(MDState *)self->_state notificationCenter];
  [v2 clearNotificationsOfType:6];
}

- (void)clearTrafficIncidentBulletinWithAlertID:(id)a3
{
  state = self->_state;
  v4 = a3;
  v5 = [(MDState *)state notificationCenter];
  [v5 clearNotificationWithTrafficIncidentAlertID:v4];
}

- (void)showAirportArrivalBulletinWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MDState *)self->_state notificationCenter];
  v14 = [v13 addAirportArrivalNotificationWithTitle:v15 message:v10 mapRegion:v11 regionName:v12];
}

- (void)clearAirportArrivalBulletin
{
  v2 = [(MDState *)self->_state notificationCenter];
  [v2 clearNotificationsOfType:20];
}

- (void)showVenueBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MDState *)self->_state notificationCenter];
  v11 = [v10 addVenueNotificationWithTitle:v12 message:v8 actionURL:v9];
}

- (void)clearVenueBulletin
{
  v2 = [(MDState *)self->_state notificationCenter];
  [v2 clearNotificationsOfType:11];
}

- (void)clearBulletinWithRecordID:(id)a3
{
  state = self->_state;
  v4 = a3;
  v5 = [(MDState *)state notificationCenter];
  [v5 clearNotificationWithIdentifier:v4];
}

- (void)addSufficientVisitsNotification:(id)a3 message:(id)a4
{
  state = self->_state;
  v6 = a4;
  v7 = a3;
  v8 = [(MDState *)state notificationCenter];
  [v8 addSufficientVisitsNotification:v7 message:v6];
}

- (void)fetchDevicePushToken:(id)a3
{
  pushManager = self->_pushManager;
  v5 = a3;
  v6 = [(MDDevicePushManager *)pushManager devicePushToken];
  (*(a3 + 2))(v5, v6);
}

- (void)handleMapsApplicationRemoval:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000025A4;
  v4[3] = &unk_10003C8B8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)deleteFilesOutsideContainer
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "App Removal: Deleting files outside of container", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [&off_100040300 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138543618;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(&off_100040300);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v3 fileExistsAtPath:{v9, v15}])
        {
          v16 = 0;
          v10 = [v3 removeItemAtPath:v9 error:&v16];
          v11 = v16;
          v12 = v11;
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 0;
          }

          if (!v13)
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v22 = v9;
              v23 = 2114;
              v24 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error deleting '%{public}@': %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [&off_100040300 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }
}

- (BOOL)deleteAppGroupContainer
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "App Removal: Deleting app group container", buf, 2u);
  }

  if (!container_query_create())
  {
    goto LABEL_17;
  }

  container_query_set_class();
  v3 = xpc_string_create([@"group.com.apple.Maps" UTF8String]);
  container_query_set_group_identifiers();

  container_query_set_persona_unique_string();
  single_result = container_query_get_single_result();
  last_error = container_query_get_last_error();
  if (!single_result || last_error)
  {
    v10 = container_error_copy_unlocalized_description();
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not fetch group container for deletion; error = %s", buf, 0xCu);
    }

    free(v10);
LABEL_17:
    container_query_free();
    container_error_free();
    container_free_array_of_containers();
    return 0;
  }

  v6 = container_operation_delete() != 0;
  v7 = v6;
  if (!v6)
  {
    v8 = container_error_copy_unlocalized_description();
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not delete group container; error = %s", buf, 0xCu);
    }

    free(v8);
  }

  container_query_free();
  container_error_free();
  container_free_array_of_containers();
  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.MapsSupport.ParkedCarBulletin"];
  v9 = [v7 valueForEntitlement:@"com.apple.MapsSupport.MapsDaemon"];
  if (v8 | v9)
  {
    if (qword_10004ABE0 != -1)
    {
      sub_100021964();
    }

    [v7 setExportedInterface:qword_10004ABE8];
    [v7 setExportedObject:self];
    [v7 setRemoteObjectInterface:qword_10004ABF0];
    v10 = [(MDState *)self->_state peerConnectionsLock];
    [v10 lock];

    v11 = [(MDState *)self->_state peerConnections];
    [v11 addObject:v7];

    v12 = [(MDState *)self->_state peerConnectionsLock];
    [v12 unlock];

    objc_initWeak(&location, v7);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100002E94;
    v21[3] = &unk_10003C920;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    [v7 setInvalidationHandler:v21];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100002F38;
    v18 = &unk_10003C920;
    objc_copyWeak(&v20, &location);
    v19 = self;
    [v7 setInterruptionHandler:&v15];
    [v7 resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location) = 67109120;
      HIDWORD(location) = [v7 processIdentifier];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ERROR: PID (%d) is trying to connect without proper entitlement.", &location, 8u);
    }
  }

  return (v8 | v9) != 0;
}

@end