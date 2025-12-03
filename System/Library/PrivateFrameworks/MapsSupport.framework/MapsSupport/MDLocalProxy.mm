@interface MDLocalProxy
- (BOOL)deleteAppGroupContainer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MDLocalProxy)initWithState:(id)state;
- (void)addSufficientVisitsNotification:(id)notification message:(id)message;
- (void)clearAirportArrivalBulletin;
- (void)clearBulletinWithRecordID:(id)d;
- (void)clearLowFuelAlertBulletin;
- (void)clearMapsSuggestionsBulletin;
- (void)clearParkedCarBulletin;
- (void)clearPredictedRouteTrafficIncidentBulletin;
- (void)clearTrafficIncidentBulletinWithAlertID:(id)d;
- (void)clearVenueBulletin;
- (void)dealloc;
- (void)deleteFilesOutsideContainer;
- (void)fetchDevicePushToken:(id)token;
- (void)handleMapsApplicationRemoval:(id)removal;
- (void)showAirportArrivalBulletinWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name;
- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)details;
- (void)showMapsSuggestionsBulletinWithTitle:(id)title message:(id)message actionURL:(id)l;
- (void)showParkedCarBulletinForEvent:(id)event;
- (void)showParkedCarReplacementBulletinForEvent:(id)event replacingEvent:(id)replacingEvent;
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details;
- (void)showVenueBulletinWithTitle:(id)title message:(id)message actionURL:(id)l;
@end

@implementation MDLocalProxy

- (MDLocalProxy)initWithState:(id)state
{
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = MDLocalProxy;
  v6 = [(MDLocalProxy *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, state);
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

- (void)showParkedCarBulletinForEvent:(id)event
{
  eventCopy = event;
  locationManager = [(MDState *)self->_state locationManager];
  mapsLocationAuthorized = [locationManager mapsLocationAuthorized];

  if (mapsLocationAuthorized)
  {
    notificationCenter = [(MDState *)self->_state notificationCenter];
    v7 = [notificationCenter addParkedCarNotificationWithEvent:eventCopy];
  }
}

- (void)showParkedCarReplacementBulletinForEvent:(id)event replacingEvent:(id)replacingEvent
{
  eventCopy = event;
  replacingEventCopy = replacingEvent;
  locationManager = [(MDState *)self->_state locationManager];
  mapsLocationAuthorized = [locationManager mapsLocationAuthorized];

  if (mapsLocationAuthorized)
  {
    notificationCenter = [(MDState *)self->_state notificationCenter];
    v10 = [notificationCenter addParkedCarReplacementNotificationWithEvent:eventCopy replacingEvent:replacingEventCopy];
  }
}

- (void)clearParkedCarBulletin
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:5];
}

- (void)showLowFuelAlertBulletinForLowFuelDetails:(id)details
{
  detailsCopy = details;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v5 = [notificationCenter addLowFuelAlertNotificationWithDetails:detailsCopy];
}

- (void)clearLowFuelAlertBulletin
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:7];
}

- (void)showMapsSuggestionsBulletinWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v11 = [notificationCenter addMapsSuggestionsNotificationWithTitle:titleCopy message:messageCopy actionURL:lCopy];
}

- (void)clearMapsSuggestionsBulletin
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:10];
}

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details
{
  detailsCopy = details;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v5 = [notificationCenter addPredictedRouteTrafficIncidentNotificationForCommuteDetails:detailsCopy];
}

- (void)clearPredictedRouteTrafficIncidentBulletin
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:6];
}

- (void)clearTrafficIncidentBulletinWithAlertID:(id)d
{
  state = self->_state;
  dCopy = d;
  notificationCenter = [(MDState *)state notificationCenter];
  [notificationCenter clearNotificationWithTrafficIncidentAlertID:dCopy];
}

- (void)showAirportArrivalBulletinWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name
{
  titleCopy = title;
  messageCopy = message;
  regionCopy = region;
  nameCopy = name;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v14 = [notificationCenter addAirportArrivalNotificationWithTitle:titleCopy message:messageCopy mapRegion:regionCopy regionName:nameCopy];
}

- (void)clearAirportArrivalBulletin
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:20];
}

- (void)showVenueBulletinWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  notificationCenter = [(MDState *)self->_state notificationCenter];
  v11 = [notificationCenter addVenueNotificationWithTitle:titleCopy message:messageCopy actionURL:lCopy];
}

- (void)clearVenueBulletin
{
  notificationCenter = [(MDState *)self->_state notificationCenter];
  [notificationCenter clearNotificationsOfType:11];
}

- (void)clearBulletinWithRecordID:(id)d
{
  state = self->_state;
  dCopy = d;
  notificationCenter = [(MDState *)state notificationCenter];
  [notificationCenter clearNotificationWithIdentifier:dCopy];
}

- (void)addSufficientVisitsNotification:(id)notification message:(id)message
{
  state = self->_state;
  messageCopy = message;
  notificationCopy = notification;
  notificationCenter = [(MDState *)state notificationCenter];
  [notificationCenter addSufficientVisitsNotification:notificationCopy message:messageCopy];
}

- (void)fetchDevicePushToken:(id)token
{
  pushManager = self->_pushManager;
  tokenCopy = token;
  devicePushToken = [(MDDevicePushManager *)pushManager devicePushToken];
  (*(token + 2))(tokenCopy, devicePushToken);
}

- (void)handleMapsApplicationRemoval:(id)removal
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000025A4;
  v4[3] = &unk_10003C8B8;
  v4[4] = self;
  removalCopy = removal;
  v3 = removalCopy;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.MapsSupport.ParkedCarBulletin"];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.MapsSupport.MapsDaemon"];
  if (v8 | v9)
  {
    if (qword_10004ABE0 != -1)
    {
      sub_100021964();
    }

    [connectionCopy setExportedInterface:qword_10004ABE8];
    [connectionCopy setExportedObject:self];
    [connectionCopy setRemoteObjectInterface:qword_10004ABF0];
    peerConnectionsLock = [(MDState *)self->_state peerConnectionsLock];
    [peerConnectionsLock lock];

    peerConnections = [(MDState *)self->_state peerConnections];
    [peerConnections addObject:connectionCopy];

    peerConnectionsLock2 = [(MDState *)self->_state peerConnectionsLock];
    [peerConnectionsLock2 unlock];

    objc_initWeak(&location, connectionCopy);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100002E94;
    v21[3] = &unk_10003C920;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    [connectionCopy setInvalidationHandler:v21];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100002F38;
    v18 = &unk_10003C920;
    objc_copyWeak(&v20, &location);
    selfCopy = self;
    [connectionCopy setInterruptionHandler:&v15];
    [connectionCopy resume];
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
      HIDWORD(location) = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ERROR: PID (%d) is trying to connect without proper entitlement.", &location, 8u);
    }
  }

  return (v8 | v9) != 0;
}

@end