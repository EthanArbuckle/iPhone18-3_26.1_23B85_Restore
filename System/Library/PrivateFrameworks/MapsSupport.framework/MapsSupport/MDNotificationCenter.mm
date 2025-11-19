@interface MDNotificationCenter
- (MDNotificationCenter)init;
- (id)_addRequest:(id)a3;
- (id)addAirportArrivalNotificationWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6;
- (id)addAnnouncement:(id)a3;
- (id)addGeoDInternalNotificationWithTitle:(id)a3 subtitle:(id)a4;
- (id)addLowFuelAlertNotificationWithDetails:(id)a3;
- (id)addMapsSuggestionsNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (id)addParkedCarNotificationWithEvent:(id)a3;
- (id)addParkedCarReplacementNotificationWithEvent:(id)a3 replacingEvent:(id)a4;
- (id)addPredictedRouteTrafficIncidentNotificationForCommuteDetails:(id)a3;
- (id)addProxyAuthFailedNotificationWithTitle:(id)a3 subtitle:(id)a4;
- (id)addPushedBookmark:(id)a3;
- (id)addRAPNotificationForFixedProblems:(id)a3;
- (id)addRAPNotificationForProblemStatusChangeWithRapInfo:(id)a3;
- (id)addUGCClearedPhotoAttributionNotificationWithTitle:(id)a3 message:(id)a4;
- (id)addUGCPhotoNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (id)addVenueNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (int)GEOUITargetForAnnouncementType:(int)a3;
- (void)_removeRequest:(id)a3;
- (void)addOfflineDataIncompatibilityNotificationForIdentifiers:(id)a3 displayNames:(id)a4 completionHandler:(id)a5;
- (void)addOfflineMapDownloadedNotificationForIdentifier:(id)a3 displayName:(id)a4;
- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUpdatedWithinTimeInterval:(double)a5;
- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUsedWithinTimeInterval:(double)a5;
- (void)addOfflineMapsRegulatoryRegionExpirationNotificationForIdentifiers:(id)a3 displayNames:(id)a4;
- (void)addOfflineMapsUnsupportedExpirationNotificationForIdentifiers:(id)a3 displayNames:(id)a4;
- (void)addOfflineMapsWillExpireNotificationForIdentifiers:(id)a3 displayNames:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6;
- (void)addPairedDeviceHasInsufficientDiskSpaceNotificationWithRequiredStorage:(unint64_t)a3 forSubscriptionIdentifiers:(id)a4 withDisplayNames:(id)a5;
- (void)addSufficientVisitsNotification:(id)a3 message:(id)a4;
- (void)clearAllNotifications;
- (void)clearNotificationWithIdentifier:(id)a3;
- (void)clearNotificationWithTrafficIncidentAlertID:(id)a3;
- (void)clearNotificationsOfType:(int64_t)a3;
- (void)dealloc;
- (void)handleNotificationResponse:(id)a3;
- (void)handleTapNotificationMetricsWithRequest:(id)a3;
- (void)showSharedTripNotification:(id)a3 ofType:(unint64_t)a4 forState:(id)a5;
- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
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

- (id)_addRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100004038;
    v13 = &unk_10003C9D8;
    v6 = v4;
    v14 = v6;
    v15 = self;
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

- (void)_removeRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  notificationCenter = self->_notificationCenter;
  v6 = [v4 identifier];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v7];

  v8 = self->_notificationCenter;
  v9 = [v4 identifier];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [(UNUserNotificationCenter *)v8 removeDeliveredNotificationsWithIdentifiers:v10];

  [(NSMutableSet *)self->_requests removeObject:v4];
  if ([v4 type] == 3)
  {
    v11 = [v4 announcementId];
    if (v11)
    {
      v12 = [MDState getDefault:@"ActiveAnnouncementID"];
      if (v12)
      {
        v13 = v12;
        if (v12 == v11)
        {
          [MDState setDefault:@"ActiveAnnouncementID" value:0];
          [MDState setDefault:@"LastAnnouncementDate" value:0];
          [(MDNotificationCenter *)self clearNotificationsOfType:3];
        }
      }
    }
  }
}

- (void)clearNotificationWithIdentifier:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004540;
  v5[3] = &unk_10003C9D8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)clearNotificationsOfType:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000047CC;
  v3[3] = &unk_10003CA00;
  v3[4] = self;
  v3[5] = a3;
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

- (id)addAnnouncement:(id)a3
{
  v4 = a3;
  v5 = -[MDNotificationCenter GEOUITargetForAnnouncementType:](self, "GEOUITargetForAnnouncementType:", [v4 announcementType]);
  if ([v4 hasAnnouncementID])
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v4 announcementID]);
    [GEOAPPortal captureUserAction:9029 target:v5 value:v6];
  }

  else
  {
    [GEOAPPortal captureUserAction:9029 target:v5 value:0];
  }

  v7 = [UNNotificationRequest requestForAnnouncement:v4];
  v8 = [(MDNotificationCenter *)self _addRequest:v7];

  return v8;
}

- (id)addProxyAuthFailedNotificationWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [GEOAPPortal captureUserAction:9002 target:718 value:0];
  [(MDNotificationCenter *)self clearNotificationsOfType:8];
  v8 = [UNNotificationRequest requestForProxyAuthFailedNotificationWithTitle:v7 subtitle:v6];

  v9 = [(MDNotificationCenter *)self _addRequest:v8];

  return v9;
}

- (id)addGeoDInternalNotificationWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MDNotificationCenter *)self clearNotificationsOfType:12];
  v8 = [UNNotificationRequest requestForGeoDInternalNotificationWithTitle:v7 subtitle:v6];

  v9 = [(MDNotificationCenter *)self _addRequest:v8];

  return v9;
}

- (id)addParkedCarNotificationWithEvent:(id)a3
{
  v4 = a3;
  [(MDNotificationCenter *)self clearNotificationsOfType:5];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100004F30;
  v26 = sub_100004F40;
  v27 = 0;
  v5 = +[GEOMapService sharedService];
  v6 = [v4 location];
  [v6 latitude];
  v8 = v7;
  v9 = [v4 location];
  [v9 longitude];
  v11 = v10;
  v12 = [v4 location];
  v13 = [v5 ticketForReverseGeocodeCoordinate:1 includeEntryPoints:objc_msgSend(v12 shiftLocationsIfNeeded:"referenceFrame") != 2 traits:{0, v8, v11}];

  v14 = [[GEOApplicationAuditToken alloc] initWithProxiedApplicationBundleId:@"com.apple.Maps"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004F48;
  v18[3] = &unk_10003CA50;
  v15 = v4;
  v20 = self;
  v21 = &v22;
  v19 = v15;
  [v13 submitWithHandler:v18 auditToken:v14 timeout:0 networkActivity:0];
  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

- (id)addParkedCarReplacementNotificationWithEvent:(id)a3 replacingEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MDNotificationCenter *)self clearNotificationsOfType:5];
  v8 = [UNNotificationRequest requestForParkedCarNotificationForEvent:v7 replacingEvent:v6];

  v9 = [(MDNotificationCenter *)self _addRequest:v8];

  if (v9)
  {
    [GEOAPPortal captureUserAction:9002 target:721 value:0];
  }

  return v9;
}

- (id)addLowFuelAlertNotificationWithDetails:(id)a3
{
  v4 = a3;
  [GEOAPPortal captureUserAction:9002 target:720 value:0];
  [(MDNotificationCenter *)self clearNotificationsOfType:7];
  v5 = [UNNotificationRequest requestForLowFuelAlertNotificationWithDetails:v4];

  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  return v6;
}

- (id)addMapsSuggestionsNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(MDNotificationCenter *)self clearNotificationsOfType:10];
  v11 = [UNNotificationRequest requestForMapsSuggestionsNotificationWithTitle:v10 message:v9 actionURL:v8];

  v12 = [(MDNotificationCenter *)self _addRequest:v11];

  return v12;
}

- (id)addVenueNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [GEOAPPortal captureUserAction:9002 target:686 value:0];
  [(MDNotificationCenter *)self clearNotificationsOfType:11];
  v11 = [UNNotificationRequest requestForVenueNotificationWithTitle:v10 message:v9 actionURL:v8];

  v12 = [(MDNotificationCenter *)self _addRequest:v11];

  return v12;
}

- (id)addAirportArrivalNotificationWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [GEOAPPortal captureUserAction:393 target:84 value:@"arrival"];
  [(MDNotificationCenter *)self clearNotificationsOfType:20];
  v14 = [UNNotificationRequest requestForAirportArrivalNotificationWithTitle:v13 message:v12 mapRegion:v11 regionName:v10];

  v15 = [(MDNotificationCenter *)self _addRequest:v14];

  return v15;
}

- (void)clearNotificationWithTrafficIncidentAlertID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100005658;
    v6[3] = &unk_10003C9D8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (id)addPredictedRouteTrafficIncidentNotificationForCommuteDetails:(id)a3
{
  v4 = a3;
  [(MDNotificationCenter *)self clearNotificationsOfType:6];
  v5 = [UNNotificationRequest requestForPredictedRouteTrafficIncidentNotificationWithCommuteDetails:v4];

  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  if (v6)
  {
    [GEOAPPortal captureUserAction:499 target:146 value:0];
  }

  return v6;
}

- (id)addPushedBookmark:(id)a3
{
  v4 = a3;
  [GEOAPPortal captureUserAction:9002 target:719 value:0];
  v5 = [UNNotificationRequest requestForPushedBookmark:v4];

  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  return v6;
}

- (id)addRAPNotificationForFixedProblems:(id)a3
{
  v4 = a3;
  v5 = [v4 problemStatus];
  v6 = [v5 firstObject];

  v7 = [v6 problemState];
  if ((v7 - 1) >= 5)
  {
    v8 = [NSString stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_10003CB60[v7 - 1];
  }

  [GEOAPPortal captureUserAction:9002 target:713 value:v8];

  v9 = [UNNotificationRequest requestForFixedRAP:v4];

  v10 = [(MDNotificationCenter *)self _addRequest:v9];

  return v10;
}

- (id)addRAPNotificationForProblemStatusChangeWithRapInfo:(id)a3
{
  v4 = [UNNotificationRequest requestForRAPStatusChangeNotification:a3];
  v5 = [(MDNotificationCenter *)self _addRequest:v4];

  return v5;
}

- (id)addUGCPhotoNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [GEOAPPortal captureUserAction:332 target:74 value:0];
  v11 = [UNNotificationRequest requestForSubmittedPhotosWithTitle:v10 message:v9 actionURL:v8];

  v12 = [(MDNotificationCenter *)self _addRequest:v11];

  return v12;
}

- (id)addUGCClearedPhotoAttributionNotificationWithTitle:(id)a3 message:(id)a4
{
  v5 = [UNNotificationRequest requestForClearedPhotoAttributionNotificationWithTitle:a3 message:a4];
  v6 = [(MDNotificationCenter *)self _addRequest:v5];

  return v6;
}

- (void)showSharedTripNotification:(id)a3 ofType:(unint64_t)a4 forState:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [[GEOSharedNavState alloc] initWithData:v8];

  v10 = [v9 _transportTypeStringForAnalytics];
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:v10];
        v11 = [UNNotificationRequest requestForIntermediateStopSharedTripIdentifier:v14 state:v9];
        break;
      case 5uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:v10];
        v11 = [UNNotificationRequest requestForResumeSharedTripIdentifier:v14 state:v9];
        break;
      case 6uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:v10];
        v11 = [UNNotificationRequest requestForArrivingSharedTripIdentifier:v14 state:v9];
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(a4)
    {
      case 1uLL:
        [GEOAPPortal captureUserAction:9002 target:723 value:v10];
        v11 = [UNNotificationRequest requestForSharedTripIdentifier:v14 state:v9];
        break;
      case 2uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:v10];
        v11 = [UNNotificationRequest requestForUpdatingSharedTripIdentifier:v14 state:v9];
        break;
      case 3uLL:
        [GEOAPPortal captureUserAction:9002 target:724 value:v10];
        v11 = [UNNotificationRequest requestForChargingStopSharedTripIdentifier:v14 state:v9];
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

- (void)addOfflineMapDownloadedNotificationForIdentifier:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  [GEOAPPortal captureUserAction:376 target:84 value:@"1"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005E68;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUsedWithinTimeInterval:(double)a5
{
  v8 = a3;
  v9 = a4;
  [GEOAPPortal captureUserAction:395 target:84 value:@"not in use"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005FC8;
  v12[3] = &unk_10003CAA0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)addOfflineMapsRegulatoryRegionExpirationNotificationForIdentifiers:(id)a3 displayNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  [GEOAPPortal captureUserAction:395 target:84 value:@"regulatory"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000611C;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineMapsUnsupportedExpirationNotificationForIdentifiers:(id)a3 displayNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  [GEOAPPortal captureUserAction:395 target:84 value:@"regulatory"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006270;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineMapsExpiredNotificationForIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUpdatedWithinTimeInterval:(double)a5
{
  v8 = a3;
  v9 = a4;
  [GEOAPPortal captureUserAction:395 target:84 value:@"not updated"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000063F4;
  v12[3] = &unk_10003CAA0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)addOfflineMapsWillExpireNotificationForIdentifiers:(id)a3 displayNames:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006574;
  block[3] = &unk_10003CAC8;
  block[4] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v9 = v17;
  v10 = v16;
  v11 = v15;
  v12 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addOfflineDataIncompatibilityNotificationForIdentifiers:(id)a3 displayNames:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000066E4;
  v10[3] = &unk_10003CAF0;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)handleNotificationResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 notification];
  v6 = [v5 request];

  v7 = [v6 trafficIncidentAlert];

  if (v7)
  {
    v8 = [(_MapsIPCInterface *)[MapsPushDaemonIPCInterface alloc] initWithListenerEndpointIdentifier:@"kPushDaemonXPCEndpointIdentifier"];
    if ([(_MapsIPCInterface *)v8 canReceiveMessages])
    {
      v9 = objc_alloc_init(IPCHandleTrafficAlertMessage);
      v10 = [v4 actionIdentifier];
      -[IPCHandleTrafficAlertMessage setShouldReroute:](v9, "setShouldReroute:", [v10 isEqualToString:@"TrafficIncidentAlertRerouteAction"]);

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

  [(MDNotificationCenter *)self handleTapNotificationMetricsWithRequest:v6];
  v13 = [v6 content];
  v14 = [v13 categoryIdentifier];
  v15 = [v14 isEqualToString:off_10004ABA0[0]];

  if (v15)
  {
    v16 = [v4 actionIdentifier];
    v17 = [v16 isEqualToString:UNNotificationDismissActionIdentifier];

    if (v17)
    {
      [GEOAPPortal captureUserAction:328 target:74 value:0];
    }
  }

  v18 = [v6 sharedTripIdentifier];

  if (!v18)
  {
    v19 = [v4 actionIdentifier];
    [(MDNotificationCenter *)self clearNotificationWithIdentifier:v19];
  }

  v20 = [v6 content];
  v21 = [v20 categoryIdentifier];
  v22 = [v21 isEqualToString:off_10004AB90[0]];

  if (v22)
  {
    v23 = +[MapsPushManager defaultManager];
    [v23 propagateIDSMessageOfType:2 message:&stru_10003DB78];
  }
}

- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4
{
  v5 = a4;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received notification response - %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006D3C;
  v8[3] = &unk_10003C9D8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received notification response - %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006EA0;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleTapNotificationMetricsWithRequest:(id)a3
{
  v56 = a3;
  v4 = [v56 content];
  v5 = [v4 categoryIdentifier];
  v6 = [v5 isEqualToString:off_10004AB30[0]];

  v7 = [v56 content];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"AnnouncementID"];

    v11 = [v56 content];
    v12 = [v11 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"AnnouncementID"];

    v14 = -[MDNotificationCenter GEOUITargetForAnnouncementType:](self, "GEOUITargetForAnnouncementType:", [v13 integerValue]);
    v15 = [v10 stringValue];
    [GEOAPPortal captureUserAction:9030 target:v14 value:v15];

LABEL_6:
    goto LABEL_17;
  }

  v16 = [v7 categoryIdentifier];
  v17 = [v16 isEqualToString:off_10004AB90[0]];

  if (v17)
  {
    v10 = [v56 fixedRAPProblemStatusStateString];
    v18 = 713;
LABEL_5:
    [GEOAPPortal captureUserAction:9003 target:v18 value:v10];
    goto LABEL_6;
  }

  v19 = [v56 content];
  v20 = [v19 categoryIdentifier];
  v21 = [v20 isEqualToString:off_10004AB68[0]];

  if (v21)
  {
    v22 = 9003;
    v23 = 718;
    goto LABEL_15;
  }

  v24 = [v56 content];
  v25 = [v24 categoryIdentifier];
  v26 = [v25 isEqualToString:off_10004AB78[0]];

  if (v26)
  {
    v22 = 9003;
    v23 = 719;
    goto LABEL_15;
  }

  v27 = [v56 content];
  v28 = [v27 categoryIdentifier];
  v29 = [v28 isEqualToString:off_10004AB58[0]];

  if (v29)
  {
    v22 = 9003;
    v23 = 708;
    goto LABEL_15;
  }

  v30 = [v56 content];
  v31 = [v30 categoryIdentifier];
  v32 = [v31 isEqualToString:off_10004AB60[0]];

  if (v32)
  {
    v22 = 9003;
    v23 = 721;
    goto LABEL_15;
  }

  v34 = [v56 content];
  v35 = [v34 categoryIdentifier];
  v36 = [v35 isEqualToString:off_10004AB50[0]];

  if (v36)
  {
    if ([v56 type] == 11)
    {
      v22 = 9003;
      v23 = 686;
    }

    else
    {
      if ([v56 type] == 20)
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

  v37 = [v56 content];
  v38 = [v37 categoryIdentifier];
  v39 = [v38 isEqualToString:off_10004ABA8[0]];

  if (v39)
  {
    v10 = [v56 sharedTripTransportTypeString];
    v18 = 723;
    goto LABEL_5;
  }

  v40 = [v56 content];
  v41 = [v40 categoryIdentifier];
  v42 = [v41 isEqualToString:off_10004ABB0[0]];

  if (v42)
  {
    v10 = [v56 sharedTripTransportTypeString];
    v18 = 724;
    goto LABEL_5;
  }

  v43 = [v56 content];
  v44 = [v43 categoryIdentifier];
  v45 = [v44 isEqualToString:off_10004ABA0[0]];

  if (v45)
  {
    v22 = 334;
    v23 = 74;
    goto LABEL_15;
  }

  v46 = [v56 content];
  v47 = [v46 categoryIdentifier];
  v48 = [v47 isEqualToString:kUNCategoryOfflineMapData[0]];

  if (v48)
  {
    v49 = [v56 content];
    v50 = [v49 userInfo];
    v51 = [v50 objectForKeyedSubscript:@"MapsNotificationType"];
    v52 = [v51 integerValue];

    if (v52 == 18)
    {
      v53 = [v56 content];
      v54 = [v53 userInfo];
      v55 = [v54 objectForKeyedSubscript:off_10004ABC8];

      [GEOAPPortal captureUserAction:375 target:84 value:v55];
    }

    else if (v52 == 17)
    {
      v22 = 379;
      v23 = 84;
      goto LABEL_15;
    }
  }

LABEL_17:
}

- (int)GEOUITargetForAnnouncementType:(int)a3
{
  if ((a3 - 1) >= 7)
  {
    return 725;
  }

  else
  {
    return a3 + 725;
  }
}

- (void)addSufficientVisitsNotification:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MDNotificationCenter *)self clearNotificationsOfType:16];
  v9 = [UNNotificationRequest requestForSufficientVisitsNotificationWithTitle:v7 message:v6];

  v8 = [(MDNotificationCenter *)self _addRequest:v9];
}

- (void)addPairedDeviceHasInsufficientDiskSpaceNotificationWithRequiredStorage:(unint64_t)a3 forSubscriptionIdentifiers:(id)a4 withDisplayNames:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (MapsFeature_IsEnabled_StandaloneWatchOffline())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006770;
    v10[3] = &unk_10003CAA0;
    v10[4] = self;
    v13 = a3;
    v11 = v8;
    v12 = v9;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

@end