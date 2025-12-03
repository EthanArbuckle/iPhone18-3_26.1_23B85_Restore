@interface MDNotificationCenter
- (MDNotificationCenter)init;
- (id)_addRequest:(id)request;
- (id)addAirportArrivalNotificationWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name;
- (id)addAnnouncement:(id)announcement;
- (id)addGeoDInternalNotificationWithTitle:(id)title subtitle:(id)subtitle;
- (id)addLowFuelAlertNotificationWithDetails:(id)details;
- (id)addMapsSuggestionsNotificationWithTitle:(id)title message:(id)message actionURL:(id)l;
- (id)addParkedCarNotificationWithEvent:(id)event;
- (id)addParkedCarReplacementNotificationWithEvent:(id)event replacingEvent:(id)replacingEvent;
- (id)addPredictedRouteTrafficIncidentNotificationForCommuteDetails:(id)details;
- (id)addProxyAuthFailedNotificationWithTitle:(id)title subtitle:(id)subtitle;
- (id)addPushedBookmark:(id)bookmark;
- (id)addRAPNotificationForFixedProblems:(id)problems;
- (id)addRAPNotificationForProblemStatusChangeWithRapInfo:(id)info;
- (id)addUGCClearedPhotoAttributionNotificationWithTitle:(id)title message:(id)message;
- (id)addUGCPhotoNotificationWithTitle:(id)title message:(id)message actionURL:(id)l;
- (id)addVenueNotificationWithTitle:(id)title message:(id)message actionURL:(id)l;
- (int)GEOUITargetForAnnouncementType:(int)type;
- (void)_removeRequest:(id)request;
- (void)addOfflineDataIncompatibilityNotificationForIdentifiers:(id)identifiers displayNames:(id)names completionHandler:(id)handler;
- (void)addOfflineMapDownloadedNotificationForIdentifier:(id)identifier displayName:(id)name;
- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUpdatedWithinTimeInterval:(double)interval;
- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUsedWithinTimeInterval:(double)interval;
- (void)addOfflineMapsRegulatoryRegionExpirationNotificationForIdentifiers:(id)identifiers displayNames:(id)names;
- (void)addOfflineMapsUnsupportedExpirationNotificationForIdentifiers:(id)identifiers displayNames:(id)names;
- (void)addOfflineMapsWillExpireNotificationForIdentifiers:(id)identifiers displayNames:(id)names expirationDate:(id)date completionHandler:(id)handler;
- (void)addPairedDeviceHasInsufficientDiskSpaceNotificationWithRequiredStorage:(unint64_t)storage forSubscriptionIdentifiers:(id)identifiers withDisplayNames:(id)names;
- (void)addSufficientVisitsNotification:(id)notification message:(id)message;
- (void)clearAllNotifications;
- (void)clearNotificationWithIdentifier:(id)identifier;
- (void)clearNotificationWithTrafficIncidentAlertID:(id)d;
- (void)clearNotificationsOfType:(int64_t)type;
- (void)dealloc;
- (void)handleNotificationResponse:(id)response;
- (void)handleTapNotificationMetricsWithRequest:(id)request;
- (void)showSharedTripNotification:(id)notification ofType:(unint64_t)type forState:(id)state;
- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation MDNotificationCenter

- (MDNotificationCenter)init
{
  v10.receiver = self;
  v10.super_class = MDNotificationCenter;
  v2 = [(MDNotificationCenter *)&v10 init];
  if (v2)
  {
    v3 = +[GEOUserSession sharedInstance];
    [v3 setShareSessionWithMaps:1];

    v4 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Maps"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v4;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setPrivateDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v6 = objc_alloc_init(NSMutableSet);
    requests = v2->_requests;
    v2->_requests = v6;

    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(UNUserNotificationCenter *)self->_notificationCenter setDelegate:0];
  [(UNUserNotificationCenter *)self->_notificationCenter setPrivateDelegate:0];
  v3.receiver = self;
  v3.super_class = MDNotificationCenter;
  [(MDNotificationCenter *)&v3 dealloc];
}

- (id)_addRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100004038;
    v13 = &unk_10003C9D8;
    v6 = requestCopy;
    v14 = v6;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, &v10);
    v7 = [v6 identifier:v10];
    v8 = v14;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot add empty request!", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_removeRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  notificationCenter = self->_notificationCenter;
  identifier = [requestCopy identifier];
  v15 = identifier;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v7];

  v8 = self->_notificationCenter;
  identifier2 = [requestCopy identifier];
  v14 = identifier2;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [(UNUserNotificationCenter *)v8 removeDeliveredNotificationsWithIdentifiers:v10];

  [(NSMutableSet *)self->_requests removeObject:requestCopy];
  if ([requestCopy type] == 3)
  {
    announcementId = [requestCopy announcementId];
    if (announcementId)
    {
      v12 = [MDState getDefault:@"ActiveAnnouncementID"];
      if (v12)
      {
        v13 = v12;
        if (v12 == announcementId)
        {
          [MDState setDefault:@"ActiveAnnouncementID" value:0];
          [MDState setDefault:@"LastAnnouncementDate" value:0];
          [(MDNotificationCenter *)self clearNotificationsOfType:3];
        }
      }
    }
  }
}

- (void)clearNotificationWithIdentifier:(id)identifier
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004540;
  v5[3] = &unk_10003C9D8;
  identifierCopy = identifier;
  selfCopy = self;
  v4 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)clearNotificationsOfType:(int64_t)type
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000047CC;
  v3[3] = &unk_10003CA00;
  v3[4] = self;
  v3[5] = type;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)clearAllNotifications
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing all notifications!", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSMutableSet *)self->_requests copy];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MDNotificationCenter *)self _removeRequest:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)addAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v5 = -[MDNotificationCenter GEOUITargetForAnnouncementType:](self, "GEOUITargetForAnnouncementType:", [announcementCopy announcementType]);
  if ([announcementCopy hasAnnouncementID])
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [announcementCopy announcementID]);
    [GEOAPPortal captureUserAction:9029 target:v5 value:v6];
  }

  else
  {
    [GEOAPPortal captureUserAction:9029 target:v5 value:0];
  }

  v7 = [UNNotificationRequest requestForAnnouncement:announcementCopy];
  v8 = [(MDNotificationCenter *)self _addRequest:v7];

  return v8;
}

- (id)addProxyAuthFailedNotificationWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  [GEOAPPortal captureUserAction:9002 target:718 value:0];
  [(MDNotificationCenter *)self clearNotificationsOfType:8];
  v8 = [UNNotificationRequest requestForProxyAuthFailedNotificationWithTitle:titleCopy subtitle:subtitleCopy];

  v9 = [(MDNotificationCenter *)self _addRequest:v8];

  return v9;
}

- (id)addGeoDInternalNotificationWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  [(MDNotificationCenter *)self clearNotificationsOfType:12];
  v8 = [UNNotificationRequest requestForGeoDInternalNotificationWithTitle:titleCopy subtitle:subtitleCopy];

  v9 = [(MDNotificationCenter *)self _addRequest:v8];

  return v9;
}

- (id)addParkedCarNotificationWithEvent:(id)event
{
  eventCopy = event;
  [(MDNotificationCenter *)self clearNotificationsOfType:5];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100004F30;
  v26 = sub_100004F40;
  v27 = 0;
  v5 = +[GEOMapService sharedService];
  location = [eventCopy location];
  [location latitude];
  v8 = v7;
  location2 = [eventCopy location];
  [location2 longitude];
  v11 = v10;
  location3 = [eventCopy location];
  v13 = [v5 ticketForReverseGeocodeCoordinate:1 includeEntryPoints:objc_msgSend(location3 shiftLocationsIfNeeded:"referenceFrame") != 2 traits:{0, v8, v11}];

  v14 = [[GEOApplicationAuditToken alloc] initWithProxiedApplicationBundleId:@"com.apple.Maps"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004F48;
  v18[3] = &unk_10003CA50;
  v15 = eventCopy;
  selfCopy = self;
  v21 = &v22;
  v19 = v15;
  [v13 submitWithHandler:v18 auditToken:v14 timeout:0 networkActivity:0];
  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

- (id)addParkedCarReplacementNotificationWithEvent:(id)event replacingEvent:(id)replacingEvent
{
  replacingEventCopy = replacingEvent;
  eventCopy = event;
  [(MDNotificationCenter *)self clearNotificationsOfType:5];
  v8 = [UNNotificationRequest requestForParkedCarNotificationForEvent:eventCopy replacingEvent:replacingEventCopy];

  v9 = [(MDNotificationCenter *)self _addRequest:v8];

  if (v9)
  {
    [GEOAPPortal captureUserAction:9002 target:721 value:0];
  }

  return v9;
}

- (id)addLowFuelAlertNotificationWithDetails:(id)details
{
  detailsCopy = details;
  [GEOAPPortal captureUserAction:9002 target:720 value:0];
  [(MDNotificationCenter *)self clearNotificationsOfType:7];
  v5 = [UNNotificationRequest requestForLowFuelAlertNotificationWithDetails:detailsCopy];

  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  return v6;
}

- (id)addMapsSuggestionsNotificationWithTitle:(id)title message:(id)message actionURL:(id)l
{
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  [(MDNotificationCenter *)self clearNotificationsOfType:10];
  v11 = [UNNotificationRequest requestForMapsSuggestionsNotificationWithTitle:titleCopy message:messageCopy actionURL:lCopy];

  v12 = [(MDNotificationCenter *)self _addRequest:v11];

  return v12;
}

- (id)addVenueNotificationWithTitle:(id)title message:(id)message actionURL:(id)l
{
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  [GEOAPPortal captureUserAction:9002 target:686 value:0];
  [(MDNotificationCenter *)self clearNotificationsOfType:11];
  v11 = [UNNotificationRequest requestForVenueNotificationWithTitle:titleCopy message:messageCopy actionURL:lCopy];

  v12 = [(MDNotificationCenter *)self _addRequest:v11];

  return v12;
}

- (id)addAirportArrivalNotificationWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name
{
  nameCopy = name;
  regionCopy = region;
  messageCopy = message;
  titleCopy = title;
  [GEOAPPortal captureUserAction:393 target:84 value:@"arrival"];
  [(MDNotificationCenter *)self clearNotificationsOfType:20];
  v14 = [UNNotificationRequest requestForAirportArrivalNotificationWithTitle:titleCopy message:messageCopy mapRegion:regionCopy regionName:nameCopy];

  v15 = [(MDNotificationCenter *)self _addRequest:v14];

  return v15;
}

- (void)clearNotificationWithTrafficIncidentAlertID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100005658;
    v6[3] = &unk_10003C9D8;
    v6[4] = self;
    v7 = dCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (id)addPredictedRouteTrafficIncidentNotificationForCommuteDetails:(id)details
{
  detailsCopy = details;
  [(MDNotificationCenter *)self clearNotificationsOfType:6];
  v5 = [UNNotificationRequest requestForPredictedRouteTrafficIncidentNotificationWithCommuteDetails:detailsCopy];

  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  if (v6)
  {
    [GEOAPPortal captureUserAction:499 target:146 value:0];
  }

  return v6;
}

- (id)addPushedBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  [GEOAPPortal captureUserAction:9002 target:719 value:0];
  v5 = [UNNotificationRequest requestForPushedBookmark:bookmarkCopy];

  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  return v6;
}

- (id)addRAPNotificationForFixedProblems:(id)problems
{
  problemsCopy = problems;
  problemStatus = [problemsCopy problemStatus];
  firstObject = [problemStatus firstObject];

  problemState = [firstObject problemState];
  if ((problemState - 1) >= 5)
  {
    v8 = [NSString stringWithFormat:@"(unknown: %i)", problemState];
  }

  else
  {
    v8 = off_10003CB60[problemState - 1];
  }

  [GEOAPPortal captureUserAction:9002 target:713 value:v8];

  v9 = [UNNotificationRequest requestForFixedRAP:problemsCopy];

  v10 = [(MDNotificationCenter *)self _addRequest:v9];

  return v10;
}

- (id)addRAPNotificationForProblemStatusChangeWithRapInfo:(id)info
{
  v4 = [UNNotificationRequest requestForRAPStatusChangeNotification:info];
  v5 = [(MDNotificationCenter *)self _addRequest:v4];

  return v5;
}

- (id)addUGCPhotoNotificationWithTitle:(id)title message:(id)message actionURL:(id)l
{
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  [GEOAPPortal captureUserAction:332 target:74 value:0];
  v11 = [UNNotificationRequest requestForSubmittedPhotosWithTitle:titleCopy message:messageCopy actionURL:lCopy];

  v12 = [(MDNotificationCenter *)self _addRequest:v11];

  return v12;
}

- (id)addUGCClearedPhotoAttributionNotificationWithTitle:(id)title message:(id)message
{
  v5 = [UNNotificationRequest requestForClearedPhotoAttributionNotificationWithTitle:title message:message];
  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  return v6;
}

- (void)showSharedTripNotification:(id)notification ofType:(unint64_t)type forState:(id)state
{
  notificationCopy = notification;
  stateCopy = state;
  v9 = [[GEOSharedNavState alloc] initWithData:stateCopy];

  _transportTypeStringForAnalytics = [v9 _transportTypeStringForAnalytics];
  if (type > 3)
  {
    switch(type)
    {
      case 4uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:_transportTypeStringForAnalytics];
        v11 = [UNNotificationRequest requestForIntermediateStopSharedTripIdentifier:notificationCopy state:v9];
        break;
      case 5uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:_transportTypeStringForAnalytics];
        v11 = [UNNotificationRequest requestForResumeSharedTripIdentifier:notificationCopy state:v9];
        break;
      case 6uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:_transportTypeStringForAnalytics];
        v11 = [UNNotificationRequest requestForArrivingSharedTripIdentifier:notificationCopy state:v9];
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(type)
    {
      case 1uLL:
        [GEOAPPortal captureUserAction:9002 target:723 value:_transportTypeStringForAnalytics];
        v11 = [UNNotificationRequest requestForSharedTripIdentifier:notificationCopy state:v9];
        break;
      case 2uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:_transportTypeStringForAnalytics];
        v11 = [UNNotificationRequest requestForUpdatingSharedTripIdentifier:notificationCopy state:v9];
        break;
      case 3uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:_transportTypeStringForAnalytics];
        v11 = [UNNotificationRequest requestForChargingStopSharedTripIdentifier:notificationCopy state:v9];
        break;
      default:
        goto LABEL_16;
    }
  }

  v12 = v11;
  if (v11)
  {
    v13 = [(MDNotificationCenter *)self _addRequest:v11];
  }

LABEL_16:
}

- (void)addOfflineMapDownloadedNotificationForIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  [GEOAPPortal captureUserAction:376 target:84 value:@"1"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E68;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v11 = identifierCopy;
  v12 = nameCopy;
  v8 = nameCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUsedWithinTimeInterval:(double)interval
{
  identifiersCopy = identifiers;
  namesCopy = names;
  [GEOAPPortal captureUserAction:395 target:84 value:@"not in use"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005FC8;
  v12[3] = &unk_10003CAA0;
  v12[4] = self;
  v13 = identifiersCopy;
  v14 = namesCopy;
  intervalCopy = interval;
  v10 = namesCopy;
  v11 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)addOfflineMapsRegulatoryRegionExpirationNotificationForIdentifiers:(id)identifiers displayNames:(id)names
{
  identifiersCopy = identifiers;
  namesCopy = names;
  [GEOAPPortal captureUserAction:395 target:84 value:@"regulatory"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000611C;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v11 = identifiersCopy;
  v12 = namesCopy;
  v8 = namesCopy;
  v9 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineMapsUnsupportedExpirationNotificationForIdentifiers:(id)identifiers displayNames:(id)names
{
  identifiersCopy = identifiers;
  namesCopy = names;
  [GEOAPPortal captureUserAction:395 target:84 value:@"regulatory"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006270;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v11 = identifiersCopy;
  v12 = namesCopy;
  v8 = namesCopy;
  v9 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUpdatedWithinTimeInterval:(double)interval
{
  identifiersCopy = identifiers;
  namesCopy = names;
  [GEOAPPortal captureUserAction:395 target:84 value:@"not updated"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000063F4;
  v12[3] = &unk_10003CAA0;
  v12[4] = self;
  v13 = identifiersCopy;
  v14 = namesCopy;
  intervalCopy = interval;
  v10 = namesCopy;
  v11 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)addOfflineMapsWillExpireNotificationForIdentifiers:(id)identifiers displayNames:(id)names expirationDate:(id)date completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006574;
  block[3] = &unk_10003CAC8;
  block[4] = self;
  identifiersCopy = identifiers;
  namesCopy = names;
  dateCopy = date;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = dateCopy;
  v11 = namesCopy;
  v12 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineDataIncompatibilityNotificationForIdentifiers:(id)identifiers displayNames:(id)names completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000066E4;
  v10[3] = &unk_10003CAF0;
  v10[4] = self;
  identifiersCopy = identifiers;
  namesCopy = names;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = namesCopy;
  v9 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)handleNotificationResponse:(id)response
{
  responseCopy = response;
  notification = [responseCopy notification];
  request = [notification request];

  trafficIncidentAlert = [request trafficIncidentAlert];

  if (trafficIncidentAlert)
  {
    v8 = [(_MapsIPCInterface *)[MapsPushDaemonIPCInterface alloc] initWithListenerEndpointIdentifier:@"kPushDaemonXPCEndpointIdentifier"];
    if ([(_MapsIPCInterface *)v8 canReceiveMessages])
    {
      v9 = objc_alloc_init(IPCHandleTrafficAlertMessage);
      actionIdentifier = [responseCopy actionIdentifier];
      -[IPCHandleTrafficAlertMessage setShouldReroute:](v9, "setShouldReroute:", [actionIdentifier isEqualToString:@"TrafficIncidentAlertRerouteAction"]);

      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Notifying Maps of response: %@", buf, 0xCu);
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100006B3C;
      v24[3] = &unk_10003CB18;
      v25 = v9;
      v12 = v9;
      [(MapsPushDaemonIPCInterface *)v8 handleTrafficeReroute:v12 completion:v24];
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Can't send IPC message due to mapsIPCServer because it can't receive messages.", buf, 2u);
      }
    }
  }

  [(MDNotificationCenter *)self handleTapNotificationMetricsWithRequest:request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v15 = [categoryIdentifier isEqualToString:off_10004ABA0[0]];

  if (v15)
  {
    actionIdentifier2 = [responseCopy actionIdentifier];
    v17 = [actionIdentifier2 isEqualToString:UNNotificationDismissActionIdentifier];

    if (v17)
    {
      [GEOAPPortal captureUserAction:328 target:74 value:0];
    }
  }

  sharedTripIdentifier = [request sharedTripIdentifier];

  if (!sharedTripIdentifier)
  {
    actionIdentifier3 = [responseCopy actionIdentifier];
    [(MDNotificationCenter *)self clearNotificationWithIdentifier:actionIdentifier3];
  }

  content2 = [request content];
  categoryIdentifier2 = [content2 categoryIdentifier];
  v22 = [categoryIdentifier2 isEqualToString:off_10004AB90[0]];

  if (v22)
  {
    v23 = +[MapsPushManager defaultManager];
    [v23 propagateIDSMessageOfType:2 message:&stru_10003DB78];
  }
}

- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response
{
  responseCopy = response;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = responseCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received notification response - %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006D3C;
  v8[3] = &unk_10003C9D8;
  v8[4] = self;
  v9 = responseCopy;
  v7 = responseCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = responseCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received notification response - %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006EA0;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v13 = responseCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = responseCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleTapNotificationMetricsWithRequest:(id)request
{
  requestCopy = request;
  content = [requestCopy content];
  categoryIdentifier = [content categoryIdentifier];
  v6 = [categoryIdentifier isEqualToString:off_10004AB30[0]];

  content2 = [requestCopy content];
  v8 = content2;
  if (v6)
  {
    userInfo = [content2 userInfo];
    fixedRAPProblemStatusStateString = [userInfo objectForKeyedSubscript:@"AnnouncementID"];

    content3 = [requestCopy content];
    userInfo2 = [content3 userInfo];
    v13 = [userInfo2 objectForKeyedSubscript:@"AnnouncementID"];

    v14 = -[MDNotificationCenter GEOUITargetForAnnouncementType:](self, "GEOUITargetForAnnouncementType:", [v13 integerValue]);
    stringValue = [fixedRAPProblemStatusStateString stringValue];
    [GEOAPPortal captureUserAction:9030 target:v14 value:stringValue];

LABEL_6:
    goto LABEL_17;
  }

  categoryIdentifier2 = [content2 categoryIdentifier];
  v17 = [categoryIdentifier2 isEqualToString:off_10004AB90[0]];

  if (v17)
  {
    fixedRAPProblemStatusStateString = [requestCopy fixedRAPProblemStatusStateString];
    v18 = 713;
LABEL_5:
    [GEOAPPortal captureUserAction:9003 target:v18 value:fixedRAPProblemStatusStateString];
    goto LABEL_6;
  }

  content4 = [requestCopy content];
  categoryIdentifier3 = [content4 categoryIdentifier];
  v21 = [categoryIdentifier3 isEqualToString:off_10004AB68[0]];

  if (v21)
  {
    v22 = 9003;
    v23 = 718;
    goto LABEL_15;
  }

  content5 = [requestCopy content];
  categoryIdentifier4 = [content5 categoryIdentifier];
  v26 = [categoryIdentifier4 isEqualToString:off_10004AB78[0]];

  if (v26)
  {
    v22 = 9003;
    v23 = 719;
    goto LABEL_15;
  }

  content6 = [requestCopy content];
  categoryIdentifier5 = [content6 categoryIdentifier];
  v29 = [categoryIdentifier5 isEqualToString:off_10004AB58[0]];

  if (v29)
  {
    v22 = 9003;
    v23 = 708;
    goto LABEL_15;
  }

  content7 = [requestCopy content];
  categoryIdentifier6 = [content7 categoryIdentifier];
  v32 = [categoryIdentifier6 isEqualToString:off_10004AB60[0]];

  if (v32)
  {
    v22 = 9003;
    v23 = 721;
    goto LABEL_15;
  }

  content8 = [requestCopy content];
  categoryIdentifier7 = [content8 categoryIdentifier];
  v36 = [categoryIdentifier7 isEqualToString:off_10004AB50[0]];

  if (v36)
  {
    if ([requestCopy type] == 11)
    {
      v22 = 9003;
      v23 = 686;
    }

    else
    {
      if ([requestCopy type] == 20)
      {
        v33 = @"arrival";
        v22 = 381;
        v23 = 84;
        goto LABEL_16;
      }

      v22 = 500;
      v23 = 146;
    }

LABEL_15:
    v33 = 0;
LABEL_16:
    [GEOAPPortal captureUserAction:v22 target:v23 value:v33];
    goto LABEL_17;
  }

  content9 = [requestCopy content];
  categoryIdentifier8 = [content9 categoryIdentifier];
  v39 = [categoryIdentifier8 isEqualToString:off_10004ABA8[0]];

  if (v39)
  {
    fixedRAPProblemStatusStateString = [requestCopy sharedTripTransportTypeString];
    v18 = 723;
    goto LABEL_5;
  }

  content10 = [requestCopy content];
  categoryIdentifier9 = [content10 categoryIdentifier];
  v42 = [categoryIdentifier9 isEqualToString:off_10004ABB0[0]];

  if (v42)
  {
    fixedRAPProblemStatusStateString = [requestCopy sharedTripTransportTypeString];
    v18 = 724;
    goto LABEL_5;
  }

  content11 = [requestCopy content];
  categoryIdentifier10 = [content11 categoryIdentifier];
  v45 = [categoryIdentifier10 isEqualToString:off_10004ABA0[0]];

  if (v45)
  {
    v22 = 334;
    v23 = 74;
    goto LABEL_15;
  }

  content12 = [requestCopy content];
  categoryIdentifier11 = [content12 categoryIdentifier];
  v48 = [categoryIdentifier11 isEqualToString:kUNCategoryOfflineMapData[0]];

  if (v48)
  {
    content13 = [requestCopy content];
    userInfo3 = [content13 userInfo];
    v51 = [userInfo3 objectForKeyedSubscript:@"MapsNotificationType"];
    integerValue = [v51 integerValue];

    if (integerValue == 18)
    {
      content14 = [requestCopy content];
      userInfo4 = [content14 userInfo];
      v55 = [userInfo4 objectForKeyedSubscript:off_10004ABC8];

      [GEOAPPortal captureUserAction:375 target:84 value:v55];
    }

    else if (integerValue == 17)
    {
      v22 = 379;
      v23 = 84;
      goto LABEL_15;
    }
  }

LABEL_17:
}

- (int)GEOUITargetForAnnouncementType:(int)type
{
  if ((type - 1) >= 7)
  {
    return 725;
  }

  else
  {
    return type + 725;
  }
}

- (void)addSufficientVisitsNotification:(id)notification message:(id)message
{
  messageCopy = message;
  notificationCopy = notification;
  [(MDNotificationCenter *)self clearNotificationsOfType:16];
  v9 = [UNNotificationRequest requestForSufficientVisitsNotificationWithTitle:notificationCopy message:messageCopy];

  v8 = [(MDNotificationCenter *)self _addRequest:v9];
}

- (void)addPairedDeviceHasInsufficientDiskSpaceNotificationWithRequiredStorage:(unint64_t)storage forSubscriptionIdentifiers:(id)identifiers withDisplayNames:(id)names
{
  identifiersCopy = identifiers;
  namesCopy = names;
  if (MapsFeature_IsEnabled_StandaloneWatchOffline())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006770;
    v10[3] = &unk_10003CAA0;
    v10[4] = self;
    storageCopy = storage;
    v11 = identifiersCopy;
    v12 = namesCopy;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

@end