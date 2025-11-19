@interface UNNotificationRequest
+ (UNNotificationRequest)requestWithContent:(id)a3 destinations:(unint64_t)a4;
+ (UNNotificationRequest)requestWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 userInfo:(id)a6 destinations:(unint64_t)a7 url:(id)a8 date:(id)a9 expirationDate:(id)a10 categoryIdentifier:(id)a11 interruptionLevel:(unint64_t)a12 shouldIgnoreDoNotDisturb:(BOOL)a13;
+ (UNNotificationRequest)requestWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 userInfo:(id)a6 destinations:(unint64_t)a7 url:(id)a8 date:(id)a9 expirationDate:(id)a10 categoryIdentifier:(id)a11 threadIdentifier:(id)a12 interruptionLevel:(unint64_t)a13 shouldIgnoreDoNotDisturb:(BOOL)a14;
+ (id)_contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 userInfo:(id)a6 url:(id)a7 date:(id)a8 expirationDate:(id)a9 categoryIdentifier:(id)a10 interruptionLevel:(unint64_t)a11 shouldIgnoreDoNotDisturb:(BOOL)a12;
+ (id)_requestForSharedTripIdentifier:(id)a3 state:(id)a4 title:(id)a5 subtitle:(id)a6 message:(id)a7 isUpdate:(BOOL)a8;
+ (id)requestForAirportArrivalNotificationWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6;
+ (id)requestForAnnouncement:(id)a3;
+ (id)requestForArrivingSharedTripIdentifier:(id)a3 state:(id)a4;
+ (id)requestForChargingStopSharedTripIdentifier:(id)a3 state:(id)a4;
+ (id)requestForClearedPhotoAttributionNotificationWithTitle:(id)a3 message:(id)a4;
+ (id)requestForDownloadedOfflineMapWithIdentifier:(id)a3 displayName:(id)a4;
+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUpdatedWithinTimeInterval:(double)a5;
+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUsedWithinTimeInterval:(double)a5;
+ (id)requestForFixedRAP:(id)a3;
+ (id)requestForIntermediateStopSharedTripIdentifier:(id)a3 state:(id)a4;
+ (id)requestForLowFuelAlertNotificationWithDetails:(id)a3;
+ (id)requestForMapsSuggestionsNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
+ (id)requestForOfflineDataIncompatibilityForIdentifiers:(id)a3 displayNames:(id)a4;
+ (id)requestForOfflineUnsupportedExpirationWithIdentifiers:(id)a3 displayNames:(id)a4 isOSVersionUnsupported:(BOOL)a5;
+ (id)requestForPairedDeviceStorageRequired:(unint64_t)a3 forSubscriptionIdentifiers:(id)a4 withDisplayNames:(id)a5;
+ (id)requestForParkedCarNotificationForEvent:(id)a3 mapItem:(id)a4;
+ (id)requestForParkedCarNotificationForEvent:(id)a3 replacingEvent:(id)a4;
+ (id)requestForPredictedRouteTrafficIncidentNotificationWithCommuteDetails:(id)a3;
+ (id)requestForProxyAuthFailedNotificationWithTitle:(id)a3 subtitle:(id)a4;
+ (id)requestForPushedBookmark:(id)a3;
+ (id)requestForRAPStatusChangeNotification:(id)a3;
+ (id)requestForResumeSharedTripIdentifier:(id)a3 state:(id)a4;
+ (id)requestForSharedTripIdentifier:(id)a3 state:(id)a4;
+ (id)requestForSubmittedPhotosWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
+ (id)requestForSufficientVisitsNotificationWithTitle:(id)a3 message:(id)a4;
+ (id)requestForTrafficIncidentAlertWithID:(id)a3 withReroute:(BOOL)a4 title:(id)a5 description:(id)a6;
+ (id)requestForUpcomingOfflineMapsExpirationForIdentifiers:(id)a3 displayNames:(id)a4 unlessUpdatedByDate:(id)a5;
+ (id)requestForUpdatingSharedTripIdentifier:(id)a3 state:(id)a4;
+ (id)requestForVenueNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (BOOL)shouldShowIfAppInForeground;
- (NSNumber)announcementDestinations;
- (NSNumber)announcementId;
- (NSNumber)announcementType;
- (id)contextValueForKey:(id)a3;
- (int64_t)type;
@end

@implementation UNNotificationRequest

- (id)contextValueForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UNNotificationRequest *)self content];
    v6 = [v5 userInfo];

    if (v6)
    {
      v7 = [(UNNotificationRequest *)self content];
      v8 = [v7 userInfo];
      v9 = [v8 objectForKeyedSubscript:v4];

      goto LABEL_10;
    }

    v10 = sub_10000D420();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v4;
      v11 = "Request userInfo empty - no value for key %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_10000D420();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v11 = "Requested userInfo for nil key";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v16, v14);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (int64_t)type
{
  v2 = [(UNNotificationRequest *)self content];
  v3 = [v2 userInfo];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"MapsNotificationType"];
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)announcementId
{
  v2 = [(UNNotificationRequest *)self contextValueForKey:@"AnnouncementID"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000403D8;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)announcementType
{
  v2 = [(UNNotificationRequest *)self contextValueForKey:@"AnnouncementType"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000403F0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)announcementDestinations
{
  v2 = [(UNNotificationRequest *)self contextValueForKey:@"AnnouncementDestinations"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1000403D8;
  }

  v5 = v4;

  return v4;
}

- (BOOL)shouldShowIfAppInForeground
{
  v3 = [(UNNotificationRequest *)self type];
  result = 0;
  if (v3 != 1)
  {
    if (v3 != 3)
    {
      return 1;
    }

    v4 = [(UNNotificationRequest *)self announcementDestinations];
    v5 = [v4 integerValue];

    if ((v5 & 2) == 0)
    {
      return 1;
    }
  }

  return result;
}

+ (UNNotificationRequest)requestWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 userInfo:(id)a6 destinations:(unint64_t)a7 url:(id)a8 date:(id)a9 expirationDate:(id)a10 categoryIdentifier:(id)a11 threadIdentifier:(id)a12 interruptionLevel:(unint64_t)a13 shouldIgnoreDoNotDisturb:(BOOL)a14
{
  v20 = a12;
  LOBYTE(v24) = a14;
  v21 = [a1 _contentWithTitle:a3 subtitle:a4 message:a5 userInfo:a6 url:a8 date:a9 expirationDate:a10 categoryIdentifier:a11 interruptionLevel:a13 shouldIgnoreDoNotDisturb:v24];
  [v21 setThreadIdentifier:v20];

  v22 = [a1 requestWithContent:v21 destinations:a7];

  return v22;
}

+ (UNNotificationRequest)requestWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 userInfo:(id)a6 destinations:(unint64_t)a7 url:(id)a8 date:(id)a9 expirationDate:(id)a10 categoryIdentifier:(id)a11 interruptionLevel:(unint64_t)a12 shouldIgnoreDoNotDisturb:(BOOL)a13
{
  LOBYTE(v18) = a13;
  v15 = [a1 _contentWithTitle:a3 subtitle:a4 message:a5 userInfo:a6 url:a8 date:a9 expirationDate:a10 categoryIdentifier:a11 interruptionLevel:a12 shouldIgnoreDoNotDisturb:v18];
  v16 = [a1 requestWithContent:v15 destinations:a7];

  return v16;
}

+ (id)_contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 userInfo:(id)a6 url:(id)a7 date:(id)a8 expirationDate:(id)a9 categoryIdentifier:(id)a10 interruptionLevel:(unint64_t)a11 shouldIgnoreDoNotDisturb:(BOOL)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v32 = v17;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v23;
    v43 = 2112;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Request for notification: %@, %@, %@, %@, %@, %@, %@", buf, 0x48u);
  }

  v26 = objc_opt_new();
  [v26 setTitle:v17];
  if (v18)
  {
    [v26 setSubtitle:v18];
  }

  [v26 setBody:{v19, a11}];
  v27 = +[UNNotificationSound defaultSound];
  [v26 setSound:v27];

  [v26 setUserInfo:v20];
  [v26 setDate:v22];
  [v26 setExpirationDate:v23];
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = &stru_10003DB78;
  }

  [v26 setCategoryIdentifier:v28];
  [v26 setDefaultActionURL:v21];
  [v26 setInterruptionLevel:v30];
  [v26 setShouldIgnoreDoNotDisturb:a12];

  return v26;
}

+ (UNNotificationRequest)requestWithContent:(id)a3 destinations:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];
  v9 = [a1 requestWithIdentifier:v8 content:v6 trigger:0 destinations:a4];

  if (!v9)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 title];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create notification request - %@", &v13, 0xCu);
    }
  }

  return v9;
}

+ (id)requestForAnnouncement:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasTitle];
    if (v7 && ([v6 title], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
    {
      v8 = [v6 title];
    }

    else
    {
      v9 = sub_10001C4BC();
      v8 = [v9 localizedStringForKey:@"Maps [push]" value:@"localized string not found" table:0];

      if (!v7)
      {
LABEL_7:
        if ([v6 hasButtonOneAppURI])
        {
          v10 = [v6 buttonOneAppURI];
          v11 = [NSURL URLWithString:v10];
        }

        else
        {
          v11 = 0;
        }

        v13 = [v6 displayDestinations];
        v14 = v13;
        v15 = v13;
        v26[0] = &off_100040408;
        v25[0] = @"MapsNotificationType";
        v25[1] = @"AnnouncementID";
        v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 announcementID]);
        v26[1] = v16;
        v25[2] = @"AnnouncementType";
        v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 announcementType]);
        v26[2] = v17;
        v25[3] = @"AnnouncementDestinations";
        v18 = [NSNumber numberWithUnsignedInteger:v15];
        v26[3] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];

        v20 = [v6 userMessage];
        if (v14)
        {
          v21 = 7;
        }

        else
        {
          v21 = 0;
        }

        LOBYTE(v23) = 0;
        v12 = [a1 requestWithTitle:v8 subtitle:0 message:v20 userInfo:v19 destinations:v21 url:v11 categoryIdentifier:off_10004AB30[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v23];

        goto LABEL_17;
      }
    }

    goto LABEL_7;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Request for empty announcement!", buf, 2u);
  }

  v12 = 0;
LABEL_17:

  return v12;
}

+ (id)requestForProxyAuthFailedNotificationWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSURL URLWithString:@"x-maps-ac-auth://"];
  LOBYTE(v11) = 1;
  v9 = [a1 requestWithTitle:v7 subtitle:0 message:v6 userInfo:0 destinations:7 url:v8 categoryIdentifier:off_10004AB68[0] interruptionLevel:GEOConfigGetUInteger() shouldIgnoreDoNotDisturb:v11];

  return v9;
}

+ (id)requestForParkedCarNotificationForEvent:(id)a3 mapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10001D414();
  v9 = [v6 identifier];

  if (v9)
  {
    v51[0] = &off_100040420;
    v50[0] = @"MapsNotificationType";
    v50[1] = off_10004AB18[0];
    v10 = [v6 identifier];
    v11 = [v10 UUIDString];
    v51[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
  }

  else
  {
    v48 = @"MapsNotificationType";
    v49 = &off_100040420;
    v12 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  }

  v13 = sub_10001C4BC();
  v14 = [v13 localizedStringForKey:@"Parked Car [FindMyCar]" value:@"localized string not found" table:0];
  v15 = [v6 date];
  GEOConfigGetDouble();
  v16 = [NSDate dateWithTimeIntervalSinceNow:?];
  LOBYTE(v42) = 0;
  v17 = [a1 _contentWithTitle:v14 subtitle:0 message:&stru_10003DB78 userInfo:v12 url:v8 date:v15 expirationDate:v16 categoryIdentifier:off_10004AB58[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v42];

  v18 = v7;
  v19 = v6;
  v20 = v17;
  v21 = [v19 nearbyLocationOfInterest];

  if (v21)
  {
    v22 = [v19 nearbyLocationOfInterest];
    v23 = [v22 type];
    v24 = [v19 nearbyLocationOfInterest];
    v25 = [v24 customLabel];
    v26 = sub_100021084(v23, v25);

    v21 = sub_10000759C(v18, v26);
  }

  if (![v21 length])
  {
    v27 = [v19 mapItem];
    v28 = [v27 name];

    v21 = v28;
  }

  if ([v21 length] && objc_msgSend(v21, "hasSuffix:", @"."))
  {
    v29 = [v21 substringToIndex:{objc_msgSend(v21, "length") - 1}];

    v21 = v29;
  }

  if ([v21 length])
  {
    v30 = sub_10001C4BC();
    v31 = [v30 localizedStringForKey:@"Notification message (with address) [FindMyCar notification]" value:@"localized string not found" table:0];
    v32 = [NSString stringWithFormat:v31, v21];
    [v20 setBody:v32];

LABEL_13:
    goto LABEL_15;
  }

  v33 = sub_10001C4BC();
  v34 = [v33 localizedStringForKey:@"Notification message (no address) [FindMyCar notification]" value:@"localized string not found" table:0];
  [v20 setBody:v34];

  if (!v18)
  {
    v37 = [v19 mapItem];
    v38 = [v37 geoMapItemHandle];

    if (v38)
    {
      v39 = dispatch_semaphore_create(0);
      v40 = +[GEOMapService sharedService];
      v43 = [v19 mapItem];
      v41 = [v43 geoMapItemHandle];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100021184;
      v44[3] = &unk_10003D470;
      v45 = v39;
      v46 = v19;
      v47 = v20;
      v30 = v39;
      [v40 resolveMapItemFromHandle:v41 completionHandler:v44];

      dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
      v31 = v45;
      goto LABEL_13;
    }
  }

LABEL_15:

  v35 = [a1 requestWithContent:v20 destinations:7];

  return v35;
}

+ (id)requestForParkedCarNotificationForEvent:(id)a3 replacingEvent:(id)a4
{
  v5 = a3;
  v6 = sub_10001D414();
  v42 = @"MapsNotificationType";
  v43 = &off_100040420;
  v7 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v8 = sub_10001C4BC();
  v9 = [v8 localizedStringForKey:@"Parked Car Updated [notification]" value:@"localized string not found" table:0];
  v10 = [v5 date];
  GEOConfigGetDouble();
  v11 = [NSDate dateWithTimeIntervalSinceNow:?];
  LOBYTE(v37) = 0;
  v12 = [a1 _contentWithTitle:v9 subtitle:0 message:&stru_10003DB78 userInfo:v7 url:v6 date:v10 expirationDate:v11 categoryIdentifier:off_10004AB60[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v37];

  v13 = v5;
  v14 = v12;
  v15 = [v13 nearbyLocationOfInterest];

  if (v15)
  {
    v16 = [v13 nearbyLocationOfInterest];
    v17 = [v16 type];
    v18 = [v13 nearbyLocationOfInterest];
    v19 = [v18 customLabel];
    v20 = sub_100021084(v17, v19);

    v15 = sub_10000759C(0, v20);
  }

  if (![v15 length])
  {
    v21 = [v13 mapItem];
    v22 = [v21 name];

    v15 = v22;
  }

  if ([v15 length] && objc_msgSend(v15, "hasSuffix:", @"."))
  {
    v23 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 1}];

    v15 = v23;
  }

  if ([v15 length])
  {
    v24 = sub_10001C4BC();
    v25 = [v24 localizedStringForKey:@"Notification message (with address) [FindMyCar notification]" value:@"localized string not found" table:0];
    v26 = [NSString stringWithFormat:v25, v15];
    [v14 setBody:v26];
  }

  else
  {
    v27 = sub_10001C4BC();
    v28 = [v27 localizedStringForKey:@"Notification message (no address) [FindMyCar notification]" value:@"localized string not found" table:0];
    [v14 setBody:v28];

    v29 = [v13 mapItem];
    v30 = [v29 geoMapItemHandle];

    if (!v30)
    {
      goto LABEL_13;
    }

    v31 = dispatch_semaphore_create(0);
    v32 = +[GEOMapService sharedService];
    v33 = [v13 mapItem];
    v34 = [v33 geoMapItemHandle];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100021184;
    v38[3] = &unk_10003D470;
    v39 = v31;
    v40 = v13;
    v41 = v14;
    v24 = v31;
    [v32 resolveMapItemFromHandle:v34 completionHandler:v38];

    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    v25 = v39;
  }

LABEL_13:
  v35 = [a1 requestWithContent:v14 destinations:7];

  return v35;
}

+ (id)requestForLowFuelAlertNotificationWithDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 engineType];
  v6 = objc_alloc_init(NSURLComponents);
  [v6 setScheme:@"x-maps-bulletin"];
  [v6 setHost:&stru_10003DB78];
  v7 = +[NSMutableArray array];
  v8 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"LowFuel"];
  [v7 addObject:v8];
  if (v5)
  {
    v9 = [NSURLQueryItem alloc];
    v10 = [v5 stringValue];
    v11 = [v9 initWithName:@"engineType" value:v10];

    [v7 addObject:v11];
  }

  [v6 setQueryItems:v7];
  v12 = [v6 URL];

  v20 = @"MapsNotificationType";
  v21 = &off_100040438;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v14 = [v4 title];
  v15 = [v4 subtitle];

  v16 = +[NSDate distantFuture];
  LOBYTE(v19) = 0;
  v17 = [a1 requestWithTitle:v14 subtitle:0 message:v15 userInfo:v13 destinations:15 url:v12 date:0 expirationDate:v16 categoryIdentifier:off_10004AB38[0] interruptionLevel:2 shouldIgnoreDoNotDisturb:v19];

  return v17;
}

+ (id)requestForMapsSuggestionsNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v15 = @"MapsNotificationType";
  v16 = &off_100040450;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(v14) = 0;
  v12 = [a1 requestWithTitle:v10 subtitle:0 message:v9 userInfo:v11 destinations:7 url:v8 date:0 expirationDate:0 categoryIdentifier:off_10004AB50[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:{v14, v15, v16}];

  return v12;
}

+ (id)requestForAirportArrivalNotificationWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [a5 data];
  v13 = [v12 base64EncodedStringWithOptions:0];
  v14 = objc_alloc_init(NSURLComponents);
  [v14 setScheme:@"x-maps-bulletin"];
  [v14 setHost:&stru_10003DB78];
  v15 = [v9 dataUsingEncoding:4];

  v16 = [v15 base64EncodedStringWithOptions:0];

  v17 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"MapsPushNotificationTypeOfflineMapsSuggestion"];
  v29[0] = v17;
  v18 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationPushData" value:v13];
  v29[1] = v18;
  v19 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationTypeOfflineMapsSuggestionRegionName" value:v16];
  v29[2] = v19;
  v20 = [NSArray arrayWithObjects:v29 count:3];
  [v14 setQueryItems:v20];

  v27 = @"MapsNotificationType";
  v28 = &off_100040468;
  v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v22 = [v14 URL];
  LOBYTE(v25) = 0;
  v23 = [a1 requestWithTitle:v11 subtitle:0 message:v10 userInfo:v21 destinations:7 url:v22 date:0 expirationDate:0 categoryIdentifier:off_10004AB50[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v25];

  return v23;
}

+ (id)requestForVenueNotificationWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v15 = @"MapsNotificationType";
  v16 = &off_100040480;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(v14) = 0;
  v12 = [a1 requestWithTitle:v10 subtitle:0 message:v9 userInfo:v11 destinations:7 url:v8 date:0 expirationDate:0 categoryIdentifier:off_10004AB50[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:{v14, v15, v16}];

  return v12;
}

+ (id)requestForTrafficIncidentAlertWithID:(id)a3 withReroute:(BOOL)a4 title:(id)a5 description:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v26[0] = @"MapsNotificationType";
    v26[1] = off_10004AB20[0];
    v27[0] = &off_100040498;
    v27[1] = v10;
    v26[2] = off_10004AB28[0];
    v27[2] = &__kCFBooleanTrue;
    v12 = a6;
    v13 = a5;
    v14 = v27;
    v15 = v26;
    v16 = 3;
  }

  else
  {
    v24[0] = @"MapsNotificationType";
    v24[1] = off_10004AB28[0];
    v25[0] = &off_100040498;
    v25[1] = &__kCFBooleanTrue;
    v17 = a6;
    v18 = a5;
    v14 = v25;
    v15 = v24;
    v16 = 2;
  }

  v19 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16];
  v20 = off_10004AB48;
  if (!v8)
  {
    v20 = off_10004AB40;
  }

  LOBYTE(v23) = 1;
  v21 = [a1 requestWithTitle:a5 subtitle:0 message:a6 userInfo:v19 destinations:6 categoryIdentifier:*v20 interruptionLevel:1 shouldIgnoreDoNotDisturb:v23];

  return v21;
}

+ (id)requestForPredictedRouteTrafficIncidentNotificationWithCommuteDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 commuteDetailsIdentifier];
  v6 = objc_alloc_init(NSURLComponents);
  [v6 setScheme:@"x-maps-bulletin"];
  [v6 setHost:&stru_10003DB78];
  v7 = +[NSMutableArray array];
  v8 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"CommuteDetails"];
  [v7 addObject:v8];
  if ([v5 length])
  {
    v9 = [[NSURLQueryItem alloc] initWithName:@"uniqueID" value:v5];
    [v7 addObject:v9];
  }

  [v6 setQueryItems:v7];
  v10 = [v6 URL];

  v18 = @"MapsNotificationType";
  v19 = &off_1000404B0;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v12 = [v4 title];
  v13 = [v4 message];
  v14 = [v4 expirationDate];

  LOBYTE(v17) = 1;
  v15 = [a1 requestWithTitle:v12 subtitle:0 message:v13 userInfo:v11 destinations:7 url:v10 date:0 expirationDate:v14 categoryIdentifier:off_10004AB50[0] interruptionLevel:2 shouldIgnoreDoNotDisturb:v17];

  return v15;
}

+ (id)requestForSufficientVisitsNotificationWithTitle:(id)a3 message:(id)a4
{
  v16 = @"MapsNotificationType";
  v17 = &off_1000404C8;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v9 = objc_alloc_init(NSURLComponents);
  [v9 setScheme:@"x-maps-bulletin"];
  [v9 setHost:&stru_10003DB78];
  v10 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"MapsPushNotificationTypeVisitedPlacesSufficientVisits"];
  v18 = v10;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  [v9 setQueryItems:v11];

  v12 = [v9 URL];

  LOBYTE(v15) = 0;
  v13 = [a1 requestWithTitle:v7 subtitle:0 message:v6 userInfo:v8 destinations:7 url:v12 date:0 expirationDate:0 categoryIdentifier:off_10004ABB8[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v15];

  return v13;
}

+ (id)requestForPushedBookmark:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 data];
    v7 = [v6 base64EncodedStringWithOptions:0];
    v8 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotifcationTypePushToPhone", @"MapsPushNotificationPushData", v7];
    v43 = [NSURL URLWithString:v8];

    v45 = @"MapsNotificationType";
    v46 = &off_1000404E0;
    v9 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v10 = sub_10001C4BC();
    v11 = [v10 localizedStringForKey:@"Maps [push]" value:@"localized string not found" table:0];
    v12 = v5;
    v13 = [v12 type];
    if (v13 >= 2)
    {
      if (v13 == 4)
      {
        v42 = a1;
        if ([v12 placesCount] > 1)
        {
          v41 = v6;
          v15 = [v12 placesAtIndex:0];
          v25 = [v12 places];
          v26 = [v25 lastObject];

          if ([v15 type]== 2)
          {
            v39 = sub_10001C4BC();
            v27 = [v39 localizedStringForKey:@"Directions to '%@[a place]' [push-notification]" value:@"localized string not found" table:0];
            v37 = [v26 title];
            v38 = v27;
            v28 = [NSString stringWithFormat:v27, v37];
            v6 = v41;
          }

          else
          {
            v29 = [v26 type];
            v36 = v26;
            v30 = sub_10001C4BC();
            v39 = v30;
            if (v29 == 2)
            {
              v31 = [v30 localizedStringForKey:@"Directions from '%@[a place]' [push-notification]" value:@"localized string not found" table:0];
              v37 = [v15 title];
              v38 = v31;
              v28 = [NSString stringWithFormat:v31, v37];
            }

            else
            {
              v32 = [v30 localizedStringForKey:@"Directions from '%@[a place]' to '%@[another place]' [push-notification]" value:@"localized string not found" table:0];
              v33 = [v15 title];
              v34 = [v36 title];
              v37 = v33;
              v38 = v32;
              v28 = [NSString stringWithFormat:v32, v33, v34];
            }

            v6 = v41;
            v26 = v36;
          }

          v14 = v28;
        }

        else
        {
          v15 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Synced bookmark of trip needs at least 2 places", buf, 2u);
          }

          v14 = 0;
        }

        goto LABEL_6;
      }

      v14 = 0;
      if (v13 != 3)
      {
LABEL_7:

        LOBYTE(v35) = 0;
        v23 = [a1 requestWithTitle:v11 subtitle:0 message:v14 userInfo:v9 destinations:7 url:v43 categoryIdentifier:off_10004AB78[0] interruptionLevel:2 shouldIgnoreDoNotDisturb:v35];

        goto LABEL_9;
      }
    }

    v42 = a1;
    v15 = sub_10001C4BC();
    [v15 localizedStringForKey:@"Location of '%@[a place]' [push]" value:@"localized string not found" table:0];
    v40 = v5;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    v19 = v7;
    v21 = v20 = v6;
    v22 = [v12 title];
    v14 = [NSString stringWithFormat:v21, v22];

    v6 = v20;
    v7 = v19;
    v9 = v18;
    v10 = v17;
    v11 = v16;
    v5 = v40;
LABEL_6:

    a1 = v42;
    goto LABEL_7;
  }

  v23 = 0;
LABEL_9:

  return v23;
}

+ (id)requestForFixedRAP:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 problemStatusCount])
  {
    v6 = [v5 problemStatus];
    v7 = [v6 objectAtIndexedSubscript:0];

    v21 = [v5 data];
    v8 = [v21 base64EncodedStringWithOptions:0];
    v9 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotifcationTypeProblemResolved", @"MapsPushNotificationPushData", v8];
    v10 = [NSURL URLWithString:v9];

    v22[0] = @"MapsNotificationType";
    v22[1] = off_10004AB98[0];
    v23[0] = &off_1000404F8;
    v11 = [v7 problemState];
    if ((v11 - 1) >= 5)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", v11];
    }

    else
    {
      v12 = off_10003D490[v11 - 1];
    }

    v23[1] = v12;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    v15 = [v7 notification];
    v16 = [v15 localizedTitle];
    v17 = [v7 notification];
    v18 = [v17 localizedText];
    LOBYTE(v20) = 0;
    v13 = [a1 requestWithTitle:v16 subtitle:0 message:v18 userInfo:v14 destinations:7 url:v10 categoryIdentifier:off_10004AB90[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v20];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)requestForRAPStatusChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 rapResponse];
  v6 = [v5 notification];

  v7 = [v6 title];
  v8 = [v7 stringValue];

  if ([v8 length])
  {
    v9 = [v4 data];
    v10 = [v9 base64EncodedStringWithOptions:0];
    v11 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotifcationTypeProblemStatusChange", @"MapsPushNotificationPushData", v10];
    v12 = [NSURL URLWithString:v11];

    v19 = @"MapsNotificationType";
    v20 = &off_100040510;
    v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v6 body];
    v15 = [v14 stringValue];

    LOBYTE(v18) = 0;
    v16 = [a1 requestWithTitle:v8 subtitle:0 message:v15 userInfo:v13 destinations:7 url:v12 categoryIdentifier:off_10004AB90[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)requestForSubmittedPhotosWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v15 = @"MapsNotificationType";
  v16 = &off_100040528;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(v14) = 0;
  v12 = [a1 requestWithTitle:v10 subtitle:0 message:v9 userInfo:v11 destinations:7 url:v8 categoryIdentifier:off_10004ABA0[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:{v14, v15, v16}];

  return v12;
}

+ (id)requestForClearedPhotoAttributionNotificationWithTitle:(id)a3 message:(id)a4
{
  v16 = @"MapsNotificationType";
  v17 = &off_100040540;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v9 = objc_alloc_init(NSURLComponents);
  [v9 setScheme:@"x-maps-bulletin"];
  [v9 setHost:&stru_10003DB78];
  v10 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"MapsPushNotificationTypeUGCPhotoCreditCleared"];
  v18 = v10;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  [v9 setQueryItems:v11];

  v12 = [v9 URL];

  LOBYTE(v15) = 0;
  v13 = [a1 requestWithTitle:v7 subtitle:0 message:v6 userInfo:v8 destinations:7 url:v12 categoryIdentifier:off_10004ABA0[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v15];

  return v13;
}

+ (id)requestForSharedTripIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 initialNotificationSubtitle];
  v9 = [v6 initialNotificationBody];
  v10 = [a1 _requestForSharedTripIdentifier:v7 state:v6 title:&stru_10003DB78 subtitle:v8 message:v9 isUpdate:0];

  return v10;
}

+ (id)requestForUpdatingSharedTripIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 updateNotificationSubtitle];
  v9 = [v6 updateNotificationBody];
  v10 = [a1 _requestForSharedTripIdentifier:v7 state:v6 title:&stru_10003DB78 subtitle:v8 message:v9 isUpdate:1];

  return v10;
}

+ (id)requestForChargingStopSharedTripIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 chargingStopNotificationSubtitle];
  v9 = [v6 chargingStopNotificationBody];
  v10 = [a1 _requestForSharedTripIdentifier:v7 state:v6 title:&stru_10003DB78 subtitle:v8 message:v9 isUpdate:1];

  return v10;
}

+ (id)requestForIntermediateStopSharedTripIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 intermediateArrivalNotificationSubtitle];
  v9 = [v6 intermediateArrivalNotificationBody];
  v10 = [a1 _requestForSharedTripIdentifier:v7 state:v6 title:&stru_10003DB78 subtitle:v8 message:v9 isUpdate:1];

  return v10;
}

+ (id)requestForResumeSharedTripIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 waypointResumeNotificationSubtitle];
  v9 = [v6 waypointResumeNotificationBody];
  v10 = [a1 _requestForSharedTripIdentifier:v7 state:v6 title:&stru_10003DB78 subtitle:v8 message:v9 isUpdate:1];

  return v10;
}

+ (id)requestForArrivingSharedTripIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 arrivalNotificationSubtitle];
  v9 = [v6 arrivalNotificationBody];
  v10 = [a1 _requestForSharedTripIdentifier:v7 state:v6 title:&stru_10003DB78 subtitle:v8 message:v9 isUpdate:1];

  return v10;
}

+ (id)_requestForSharedTripIdentifier:(id)a3 state:(id)a4 title:(id)a5 subtitle:(id)a6 message:(id)a7 isUpdate:(BOOL)a8
{
  v33 = a8;
  v13 = a3;
  v14 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v15 = [v14 etaInfo];
  [v15 etaTimestamp];
  v17 = v16;
  v18 = GEOConfigMSPDefaultTripClosedExpiryInterval[1];
  GEOConfigGetDouble();
  v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:v19 + v17];

  v32 = [v14 data];
  v21 = [v32 base64EncodedStringWithOptions:0];
  v22 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotificationTypeSharedTrip", @"MapsPushNotificationPushData", v21];
  v23 = [NSURL URLWithString:v22];

  v37[0] = off_10004AB80[0];
  v37[1] = @"MapsNotificationType";
  v38[0] = v13;
  v38[1] = &off_100040558;
  v24 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v25 = [v24 mutableCopy];

  if ([v14 hasTransportType])
  {
    v26 = [v14 transportType];
    if (v26 >= 7)
    {
      v27 = [NSString stringWithFormat:@"(unknown: %i)", v26];
    }

    else
    {
      v27 = off_10003D4B8[v26];
    }

    [v25 setObject:v27 forKeyedSubscript:off_10004AB88[0]];
  }

  v28 = off_10004ABB0;
  if (!v33)
  {
    v28 = off_10004ABA8;
  }

  LOBYTE(v31) = 0;
  v29 = [a1 requestWithTitle:v36 subtitle:v35 message:v34 userInfo:v25 destinations:7 url:v23 expirationDate:v20 categoryIdentifier:*v28 threadIdentifier:v13 interruptionLevel:2 shouldIgnoreDoNotDisturb:v31];

  return v29;
}

+ (id)requestForDownloadedOfflineMapWithIdentifier:(id)a3 displayName:(id)a4
{
  v5 = a4;
  v6 = sub_10001C4BC();
  v7 = [v6 localizedStringForKey:@"OFFLINE_MAP_DOWNLOADED_NOTIFICATION_TITLE" value:@"localized string not found" table:@"Offline"];

  v8 = [v5 length];
  v9 = sub_10001C4BC();
  v10 = v9;
  if (v8)
  {
    v11 = [v9 localizedStringForKey:@"OFFLINE_MAP_DOWNLOADED_NOTIFICATION_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v12 = [NSString localizedStringWithFormat:v11, v5];
    v10 = v11;
  }

  else
  {
    v12 = [v9 localizedStringForKey:@"OFFLINE_MAP_DOWNLOADED_NOTIFICATION_MESSAGE_NO_NAME" value:@"localized string not found" table:@"Offline"];
  }

  v18 = @"MapsNotificationType";
  v19 = &off_100040570;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v14 = sub_10001FC00(0);
  LOBYTE(v17) = 0;
  v15 = [a1 requestWithTitle:v7 subtitle:0 message:v12 userInfo:v13 destinations:7 url:v14 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v17];

  return v15;
}

+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUsedWithinTimeInterval:(double)a5
{
  v7 = a3;
  v8 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v29;
LABEL_3:
    v14 = 0;
    v15 = v12;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v12 = [v8 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v14)];

      if ([v12 length])
      {
        break;
      }

      v14 = v14 + 1;
      v15 = v12;
      if (v11 == v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [v9 count];
  v17 = sub_10001C4BC();
  v18 = v17;
  if (v16 == 1 && v12)
  {
    v19 = [v17 localizedStringForKey:@"OFFLINE_MAPS_OPTIMIZE_STORAGE_REMOVED_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

    v20 = sub_10001C4BC();
    v21 = [v20 localizedStringForKey:@"OFFLINE_MAPS_OPTIMIZE_STORAGE_REMOVED_NOTIFICATION_MESSAGE_SINGLE_NAME" value:@"localized string not found" table:@"Offline"];
    v22 = [NSString localizedStringWithFormat:v21, v12];
  }

  else
  {
    v19 = [v17 localizedStringForKey:@"OFFLINE_MAPS_OPTIMIZE_STORAGE_REMOVED_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v20 = sub_10001C4BC();
    v22 = [v20 localizedStringForKey:@"OFFLINE_MAPS_OPTIMIZE_STORAGE_REMOVED_NOTIFICATION_MESSAGE_MULTIPLE" value:@"localized string not found" table:@"Offline"];
  }

  v32[0] = @"MapsNotificationType";
  v32[1] = off_10004ABC8;
  v33[0] = &off_100040588;
  v33[1] = @"not in use";
  v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  v24 = sub_10001FC00(@"EXPIRED_MAPS");
  LOBYTE(v27) = 0;
  v25 = [a1 requestWithTitle:v19 subtitle:0 message:v22 userInfo:v23 destinations:7 url:v24 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v27];

  return v25;
}

+ (id)requestForOfflineUnsupportedExpirationWithIdentifiers:(id)a3 displayNames:(id)a4 isOSVersionUnsupported:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v36;
LABEL_3:
    v15 = 0;
    v16 = v13;
    while (1)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v13 = [v9 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v15)];

      if ([v13 length])
      {
        break;
      }

      v15 = v15 + 1;
      v16 = v13;
      if (v12 == v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = [v10 count] == 1 && v13 != 0;
  v19 = sub_10001C4BC();
  v20 = v19;
  if (v5)
  {
    if (v18)
    {
      v21 = [v19 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

      v22 = sub_10001C4BC();
      v23 = v22;
      v24 = @"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_SINGLE_NAME";
LABEL_22:
      v25 = [v22 localizedStringForKey:v24 value:@"localized string not found" table:@"Offline"];
      v26 = [NSString localizedStringWithFormat:v25, v13];

      goto LABEL_26;
    }

    v21 = [v19 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v27 = sub_10001C4BC();
    v23 = v27;
    v28 = @"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_MULTIPLE";
  }

  else
  {
    if (v18)
    {
      v21 = [v19 localizedStringForKey:@"OFFLINE_MAPS_UNSUPPORTED_REGION_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

      v22 = sub_10001C4BC();
      v23 = v22;
      v24 = @"OFFLINE_MAPS_UNSUPPORTED_REGION_NOTIFICATION_MESSAGE_SINGLE_NAME";
      goto LABEL_22;
    }

    v21 = [v19 localizedStringForKey:@"OFFLINE_MAPS_UNSUPPORTED_REGION_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v27 = sub_10001C4BC();
    v23 = v27;
    v28 = @"OFFLINE_MAPS_UNSUPPORTED_REGION_NOTIFICATION_MESSAGE_MULTIPLE";
  }

  v26 = [v27 localizedStringForKey:v28 value:@"localized string not found" table:@"Offline"];
LABEL_26:

  v39[0] = @"MapsNotificationType";
  v39[1] = off_10004ABC8;
  v40[0] = &off_100040588;
  v40[1] = @"regulatory";
  v29 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
  if (v5)
  {
    v30 = 0;
  }

  else
  {
    v30 = @"EXPIRED_MAPS";
  }

  v31 = sub_10001FC00(v30);
  LOBYTE(v34) = 0;
  v32 = [a1 requestWithTitle:v21 subtitle:0 message:v26 userInfo:v29 destinations:7 url:v31 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v34];

  return v32;
}

+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)a3 displayNames:(id)a4 dueToNotBeingUpdatedWithinTimeInterval:(double)a5
{
  v7 = a3;
  v8 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v29;
LABEL_3:
    v14 = 0;
    v15 = v12;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v12 = [v8 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v14)];

      if ([v12 length])
      {
        break;
      }

      v14 = v14 + 1;
      v15 = v12;
      if (v11 == v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [v9 count];
  v17 = sub_10001C4BC();
  v18 = v17;
  if (v16 == 1 && v12)
  {
    v19 = [v17 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

    v20 = sub_10001C4BC();
    v21 = [v20 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_SINGLE_NAME" value:@"localized string not found" table:@"Offline"];
    v22 = [NSString localizedStringWithFormat:v21, v12];
  }

  else
  {
    v19 = [v17 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v20 = sub_10001C4BC();
    v22 = [v20 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_MULTIPLE" value:@"localized string not found" table:@"Offline"];
  }

  v32[0] = @"MapsNotificationType";
  v32[1] = off_10004ABC8;
  v33[0] = &off_100040588;
  v33[1] = @"not updated";
  v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  v24 = sub_10001FC00(@"EXPIRED_MAPS");
  LOBYTE(v27) = 0;
  v25 = [a1 requestWithTitle:v19 subtitle:0 message:v22 userInfo:v23 destinations:7 url:v24 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v27];

  return v25;
}

+ (id)requestForUpcomingOfflineMapsExpirationForIdentifiers:(id)a3 displayNames:(id)a4 unlessUpdatedByDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v29;
LABEL_3:
    v14 = 0;
    v15 = v12;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v12 = [v8 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v14)];

      if ([v12 length])
      {
        break;
      }

      v14 = v14 + 1;
      v15 = v12;
      if (v11 == v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [v9 count];
  v17 = sub_10001C4BC();
  v18 = v17;
  if (v16 == 1 && v12)
  {
    v19 = [v17 localizedStringForKey:@"OFFLINE_MAPS_UPCOMING_UPDATE_REQUIRED_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

    v20 = sub_10001C4BC();
    v21 = [v20 localizedStringForKey:@"OFFLINE_MAPS_UPCOMING_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_SINGLE_NAME" value:@"localized string not found" table:@"Offline"];
    v22 = [NSString localizedStringWithFormat:v21, v12];
  }

  else
  {
    v21 = [v17 localizedStringForKey:@"OFFLINE_MAPS_UPCOMING_UPDATE_REQUIRED_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v20 = sub_10001C4BC();
    v19 = [v20 localizedStringForKey:@"OFFLINE_MAPS_UPCOMING_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_MULTIPLE" value:@"localized string not found" table:@"Offline"];
    v22 = 0;
  }

  v32[0] = @"MapsNotificationType";
  v32[1] = off_10004ABC8;
  v33[0] = &off_100040588;
  v33[1] = @"Will expire";
  v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  v24 = sub_10001FC00(0);
  LOBYTE(v27) = 0;
  v25 = [a1 requestWithTitle:v19 subtitle:0 message:v22 userInfo:v23 destinations:7 url:v24 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v27];

  return v25;
}

+ (id)requestForOfflineDataIncompatibilityForIdentifiers:(id)a3 displayNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    v14 = v11;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v11 = [v7 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v13)];

      if ([v11 length])
      {
        break;
      }

      v13 = v13 + 1;
      v14 = v11;
      if (v10 == v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [v8 count];
  v16 = sub_10001C4BC();
  v17 = v16;
  if (v15 == 1 && v11)
  {
    v18 = [v16 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

    v19 = sub_10001C4BC();
    v20 = [v19 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_SINGLE_NAME" value:@"localized string not found" table:@"Offline"];
    v21 = [NSString localizedStringWithFormat:v20, v11];
  }

  else
  {
    v18 = [v16 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v19 = sub_10001C4BC();
    v21 = [v19 localizedStringForKey:@"OFFLINE_MAPS_UPDATE_REQUIRED_NOTIFICATION_MESSAGE_MULTIPLE" value:@"localized string not found" table:@"Offline"];
  }

  v31 = @"MapsNotificationType";
  v32 = &off_1000405A0;
  v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v23 = sub_10001FC00(0);
  LOBYTE(v26) = 0;
  v24 = [a1 requestWithTitle:v18 subtitle:0 message:v21 userInfo:v22 destinations:7 url:v23 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v26];

  return v24;
}

+ (id)requestForPairedDeviceStorageRequired:(unint64_t)a3 forSubscriptionIdentifiers:(id)a4 withDisplayNames:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [NSByteCountFormatter stringFromByteCount:(llround(a3 * 0.000001) * 1000000.0) countStyle:2];
  if ([v8 count] == 1 && (objc_msgSend(v8, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v13))
  {
    v14 = [v8 firstObject];
    v15 = [v9 objectForKeyedSubscript:v14];

    v16 = sub_10001C4BC();
    v17 = [v16 localizedStringForKey:@"OFFLINE_MAPS_WATCH_INSUFFICIENT_STORAGE_NOTIFICATION_TITLE_SINGLE" value:@"localized string not found" table:@"Offline"];

    v18 = sub_10001C4BC();
    v19 = [v18 localizedStringForKey:@"OFFLINE_MAPS_WATCH_INSUFFICIENT_STORAGE_NOTIFICATION_MESSAGE_SINGLE" value:@"localized string not found" table:@"Offline"];
    v20 = [NSString localizedStringWithFormat:v19, v15, v10];
  }

  else
  {
    v21 = sub_10001C4BC();
    v17 = [v21 localizedStringForKey:@"OFFLINE_MAPS_WATCH_INSUFFICIENT_STORAGE_NOTIFICATION_TITLE_MULTIPLE" value:@"localized string not found" table:@"Offline"];

    v15 = sub_10001C4BC();
    v18 = [v15 localizedStringForKey:@"OFFLINE_MAPS_WATCH_INSUFFICIENT_STORAGE_NOTIFICATION_MESSAGE_MULTIPLE" value:@"localized string not found" table:@"Offline"];
    v20 = [NSString localizedStringWithFormat:v18, v10];
  }

  v27 = @"MapsNotificationType";
  v28 = &off_1000405B8;
  v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v23 = [NSURL URLWithString:@"bridge:tab=SETTINGS&root=GENERAL_LINK&path=USAGE_LINK"];
  LOBYTE(v26) = 0;
  v24 = [a1 requestWithTitle:v17 subtitle:0 message:v20 userInfo:v22 destinations:7 url:v23 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v26];

  return v24;
}

@end