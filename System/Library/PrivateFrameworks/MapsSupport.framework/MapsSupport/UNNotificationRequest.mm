@interface UNNotificationRequest
+ (UNNotificationRequest)requestWithContent:(id)content destinations:(unint64_t)destinations;
+ (UNNotificationRequest)requestWithTitle:(id)title subtitle:(id)subtitle message:(id)message userInfo:(id)info destinations:(unint64_t)destinations url:(id)url date:(id)date expirationDate:(id)self0 categoryIdentifier:(id)self1 interruptionLevel:(unint64_t)self2 shouldIgnoreDoNotDisturb:(BOOL)self3;
+ (UNNotificationRequest)requestWithTitle:(id)title subtitle:(id)subtitle message:(id)message userInfo:(id)info destinations:(unint64_t)destinations url:(id)url date:(id)date expirationDate:(id)self0 categoryIdentifier:(id)self1 threadIdentifier:(id)self2 interruptionLevel:(unint64_t)self3 shouldIgnoreDoNotDisturb:(BOOL)self4;
+ (id)_contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message userInfo:(id)info url:(id)url date:(id)date expirationDate:(id)expirationDate categoryIdentifier:(id)self0 interruptionLevel:(unint64_t)self1 shouldIgnoreDoNotDisturb:(BOOL)self2;
+ (id)_requestForSharedTripIdentifier:(id)identifier state:(id)state title:(id)title subtitle:(id)subtitle message:(id)message isUpdate:(BOOL)update;
+ (id)requestForAirportArrivalNotificationWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name;
+ (id)requestForAnnouncement:(id)announcement;
+ (id)requestForArrivingSharedTripIdentifier:(id)identifier state:(id)state;
+ (id)requestForChargingStopSharedTripIdentifier:(id)identifier state:(id)state;
+ (id)requestForClearedPhotoAttributionNotificationWithTitle:(id)title message:(id)message;
+ (id)requestForDownloadedOfflineMapWithIdentifier:(id)identifier displayName:(id)name;
+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUpdatedWithinTimeInterval:(double)interval;
+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUsedWithinTimeInterval:(double)interval;
+ (id)requestForFixedRAP:(id)p;
+ (id)requestForIntermediateStopSharedTripIdentifier:(id)identifier state:(id)state;
+ (id)requestForLowFuelAlertNotificationWithDetails:(id)details;
+ (id)requestForMapsSuggestionsNotificationWithTitle:(id)title message:(id)message actionURL:(id)l;
+ (id)requestForOfflineDataIncompatibilityForIdentifiers:(id)identifiers displayNames:(id)names;
+ (id)requestForOfflineUnsupportedExpirationWithIdentifiers:(id)identifiers displayNames:(id)names isOSVersionUnsupported:(BOOL)unsupported;
+ (id)requestForPairedDeviceStorageRequired:(unint64_t)required forSubscriptionIdentifiers:(id)identifiers withDisplayNames:(id)names;
+ (id)requestForParkedCarNotificationForEvent:(id)event mapItem:(id)item;
+ (id)requestForParkedCarNotificationForEvent:(id)event replacingEvent:(id)replacingEvent;
+ (id)requestForPredictedRouteTrafficIncidentNotificationWithCommuteDetails:(id)details;
+ (id)requestForProxyAuthFailedNotificationWithTitle:(id)title subtitle:(id)subtitle;
+ (id)requestForPushedBookmark:(id)bookmark;
+ (id)requestForRAPStatusChangeNotification:(id)notification;
+ (id)requestForResumeSharedTripIdentifier:(id)identifier state:(id)state;
+ (id)requestForSharedTripIdentifier:(id)identifier state:(id)state;
+ (id)requestForSubmittedPhotosWithTitle:(id)title message:(id)message actionURL:(id)l;
+ (id)requestForSufficientVisitsNotificationWithTitle:(id)title message:(id)message;
+ (id)requestForTrafficIncidentAlertWithID:(id)d withReroute:(BOOL)reroute title:(id)title description:(id)description;
+ (id)requestForUpcomingOfflineMapsExpirationForIdentifiers:(id)identifiers displayNames:(id)names unlessUpdatedByDate:(id)date;
+ (id)requestForUpdatingSharedTripIdentifier:(id)identifier state:(id)state;
+ (id)requestForVenueNotificationWithTitle:(id)title message:(id)message actionURL:(id)l;
- (BOOL)shouldShowIfAppInForeground;
- (NSNumber)announcementDestinations;
- (NSNumber)announcementId;
- (NSNumber)announcementType;
- (id)contextValueForKey:(id)key;
- (int64_t)type;
@end

@implementation UNNotificationRequest

- (id)contextValueForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    content = [(UNNotificationRequest *)self content];
    userInfo = [content userInfo];

    if (userInfo)
    {
      content2 = [(UNNotificationRequest *)self content];
      userInfo2 = [content2 userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:keyCopy];

      goto LABEL_10;
    }

    v10 = sub_10000D420();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = keyCopy;
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
  content = [(UNNotificationRequest *)self content];
  userInfo = [content userInfo];

  if (userInfo)
  {
    v4 = [userInfo objectForKeyedSubscript:@"MapsNotificationType"];
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
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
  type = [(UNNotificationRequest *)self type];
  result = 0;
  if (type != 1)
  {
    if (type != 3)
    {
      return 1;
    }

    announcementDestinations = [(UNNotificationRequest *)self announcementDestinations];
    integerValue = [announcementDestinations integerValue];

    if ((integerValue & 2) == 0)
    {
      return 1;
    }
  }

  return result;
}

+ (UNNotificationRequest)requestWithTitle:(id)title subtitle:(id)subtitle message:(id)message userInfo:(id)info destinations:(unint64_t)destinations url:(id)url date:(id)date expirationDate:(id)self0 categoryIdentifier:(id)self1 threadIdentifier:(id)self2 interruptionLevel:(unint64_t)self3 shouldIgnoreDoNotDisturb:(BOOL)self4
{
  threadIdentifierCopy = threadIdentifier;
  LOBYTE(v24) = disturb;
  v21 = [self _contentWithTitle:title subtitle:subtitle message:message userInfo:info url:url date:date expirationDate:expirationDate categoryIdentifier:identifier interruptionLevel:level shouldIgnoreDoNotDisturb:v24];
  [v21 setThreadIdentifier:threadIdentifierCopy];

  v22 = [self requestWithContent:v21 destinations:destinations];

  return v22;
}

+ (UNNotificationRequest)requestWithTitle:(id)title subtitle:(id)subtitle message:(id)message userInfo:(id)info destinations:(unint64_t)destinations url:(id)url date:(id)date expirationDate:(id)self0 categoryIdentifier:(id)self1 interruptionLevel:(unint64_t)self2 shouldIgnoreDoNotDisturb:(BOOL)self3
{
  LOBYTE(v18) = disturb;
  v15 = [self _contentWithTitle:title subtitle:subtitle message:message userInfo:info url:url date:date expirationDate:expirationDate categoryIdentifier:identifier interruptionLevel:level shouldIgnoreDoNotDisturb:v18];
  v16 = [self requestWithContent:v15 destinations:destinations];

  return v16;
}

+ (id)_contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message userInfo:(id)info url:(id)url date:(id)date expirationDate:(id)expirationDate categoryIdentifier:(id)self0 interruptionLevel:(unint64_t)self1 shouldIgnoreDoNotDisturb:(BOOL)self2
{
  titleCopy = title;
  subtitleCopy = subtitle;
  messageCopy = message;
  infoCopy = info;
  urlCopy = url;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  identifierCopy = identifier;
  v25 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413826;
    v32 = titleCopy;
    v33 = 2112;
    v34 = messageCopy;
    v35 = 2112;
    v36 = infoCopy;
    v37 = 2112;
    v38 = urlCopy;
    v39 = 2112;
    v40 = dateCopy;
    v41 = 2112;
    v42 = expirationDateCopy;
    v43 = 2112;
    v44 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Request for notification: %@, %@, %@, %@, %@, %@, %@", buf, 0x48u);
  }

  v26 = objc_opt_new();
  [v26 setTitle:titleCopy];
  if (subtitleCopy)
  {
    [v26 setSubtitle:subtitleCopy];
  }

  [v26 setBody:{messageCopy, level}];
  v27 = +[UNNotificationSound defaultSound];
  [v26 setSound:v27];

  [v26 setUserInfo:infoCopy];
  [v26 setDate:dateCopy];
  [v26 setExpirationDate:expirationDateCopy];
  if (identifierCopy)
  {
    v28 = identifierCopy;
  }

  else
  {
    v28 = &stru_10003DB78;
  }

  [v26 setCategoryIdentifier:v28];
  [v26 setDefaultActionURL:urlCopy];
  [v26 setInterruptionLevel:v30];
  [v26 setShouldIgnoreDoNotDisturb:disturb];

  return v26;
}

+ (UNNotificationRequest)requestWithContent:(id)content destinations:(unint64_t)destinations
{
  contentCopy = content;
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];
  v9 = [self requestWithIdentifier:uUIDString content:contentCopy trigger:0 destinations:destinations];

  if (!v9)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      title = [contentCopy title];
      v13 = 138412290;
      v14 = title;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create notification request - %@", &v13, 0xCu);
    }
  }

  return v9;
}

+ (id)requestForAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v6 = announcementCopy;
  if (announcementCopy)
  {
    hasTitle = [announcementCopy hasTitle];
    if (hasTitle && ([v6 title], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
    {
      title = [v6 title];
    }

    else
    {
      v9 = sub_10001C4BC();
      title = [v9 localizedStringForKey:@"Maps [push]" value:@"localized string not found" table:0];

      if (!hasTitle)
      {
LABEL_7:
        if ([v6 hasButtonOneAppURI])
        {
          buttonOneAppURI = [v6 buttonOneAppURI];
          v11 = [NSURL URLWithString:buttonOneAppURI];
        }

        else
        {
          v11 = 0;
        }

        displayDestinations = [v6 displayDestinations];
        v14 = displayDestinations;
        v15 = displayDestinations;
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

        userMessage = [v6 userMessage];
        if (v14)
        {
          v21 = 7;
        }

        else
        {
          v21 = 0;
        }

        LOBYTE(v23) = 0;
        v12 = [self requestWithTitle:title subtitle:0 message:userMessage userInfo:v19 destinations:v21 url:v11 categoryIdentifier:off_10004AB30[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v23];

        goto LABEL_17;
      }
    }

    goto LABEL_7;
  }

  title = GEOFindOrCreateLog();
  if (os_log_type_enabled(title, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, title, OS_LOG_TYPE_DEBUG, "Request for empty announcement!", buf, 2u);
  }

  v12 = 0;
LABEL_17:

  return v12;
}

+ (id)requestForProxyAuthFailedNotificationWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v8 = [NSURL URLWithString:@"x-maps-ac-auth://"];
  LOBYTE(v11) = 1;
  v9 = [self requestWithTitle:titleCopy subtitle:0 message:subtitleCopy userInfo:0 destinations:7 url:v8 categoryIdentifier:off_10004AB68[0] interruptionLevel:GEOConfigGetUInteger() shouldIgnoreDoNotDisturb:v11];

  return v9;
}

+ (id)requestForParkedCarNotificationForEvent:(id)event mapItem:(id)item
{
  eventCopy = event;
  itemCopy = item;
  v8 = sub_10001D414();
  identifier = [eventCopy identifier];

  if (identifier)
  {
    v51[0] = &off_100040420;
    v50[0] = @"MapsNotificationType";
    v50[1] = off_10004AB18[0];
    identifier2 = [eventCopy identifier];
    uUIDString = [identifier2 UUIDString];
    v51[1] = uUIDString;
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
  date = [eventCopy date];
  GEOConfigGetDouble();
  v16 = [NSDate dateWithTimeIntervalSinceNow:?];
  LOBYTE(v42) = 0;
  v17 = [self _contentWithTitle:v14 subtitle:0 message:&stru_10003DB78 userInfo:v12 url:v8 date:date expirationDate:v16 categoryIdentifier:off_10004AB58[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v42];

  v18 = itemCopy;
  v19 = eventCopy;
  v20 = v17;
  nearbyLocationOfInterest = [v19 nearbyLocationOfInterest];

  if (nearbyLocationOfInterest)
  {
    nearbyLocationOfInterest2 = [v19 nearbyLocationOfInterest];
    type = [nearbyLocationOfInterest2 type];
    nearbyLocationOfInterest3 = [v19 nearbyLocationOfInterest];
    customLabel = [nearbyLocationOfInterest3 customLabel];
    v26 = sub_100021084(type, customLabel);

    nearbyLocationOfInterest = sub_10000759C(v18, v26);
  }

  if (![nearbyLocationOfInterest length])
  {
    mapItem = [v19 mapItem];
    name = [mapItem name];

    nearbyLocationOfInterest = name;
  }

  if ([nearbyLocationOfInterest length] && objc_msgSend(nearbyLocationOfInterest, "hasSuffix:", @"."))
  {
    v29 = [nearbyLocationOfInterest substringToIndex:{objc_msgSend(nearbyLocationOfInterest, "length") - 1}];

    nearbyLocationOfInterest = v29;
  }

  if ([nearbyLocationOfInterest length])
  {
    v30 = sub_10001C4BC();
    v31 = [v30 localizedStringForKey:@"Notification message (with address) [FindMyCar notification]" value:@"localized string not found" table:0];
    v32 = [NSString stringWithFormat:v31, nearbyLocationOfInterest];
    [v20 setBody:v32];

LABEL_13:
    goto LABEL_15;
  }

  v33 = sub_10001C4BC();
  v34 = [v33 localizedStringForKey:@"Notification message (no address) [FindMyCar notification]" value:@"localized string not found" table:0];
  [v20 setBody:v34];

  if (!v18)
  {
    mapItem2 = [v19 mapItem];
    geoMapItemHandle = [mapItem2 geoMapItemHandle];

    if (geoMapItemHandle)
    {
      v39 = dispatch_semaphore_create(0);
      v40 = +[GEOMapService sharedService];
      mapItem3 = [v19 mapItem];
      geoMapItemHandle2 = [mapItem3 geoMapItemHandle];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100021184;
      v44[3] = &unk_10003D470;
      v45 = v39;
      v46 = v19;
      v47 = v20;
      v30 = v39;
      [v40 resolveMapItemFromHandle:geoMapItemHandle2 completionHandler:v44];

      dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
      v31 = v45;
      goto LABEL_13;
    }
  }

LABEL_15:

  v35 = [self requestWithContent:v20 destinations:7];

  return v35;
}

+ (id)requestForParkedCarNotificationForEvent:(id)event replacingEvent:(id)replacingEvent
{
  eventCopy = event;
  v6 = sub_10001D414();
  v42 = @"MapsNotificationType";
  v43 = &off_100040420;
  v7 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v8 = sub_10001C4BC();
  v9 = [v8 localizedStringForKey:@"Parked Car Updated [notification]" value:@"localized string not found" table:0];
  date = [eventCopy date];
  GEOConfigGetDouble();
  v11 = [NSDate dateWithTimeIntervalSinceNow:?];
  LOBYTE(v37) = 0;
  v12 = [self _contentWithTitle:v9 subtitle:0 message:&stru_10003DB78 userInfo:v7 url:v6 date:date expirationDate:v11 categoryIdentifier:off_10004AB60[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v37];

  v13 = eventCopy;
  v14 = v12;
  nearbyLocationOfInterest = [v13 nearbyLocationOfInterest];

  if (nearbyLocationOfInterest)
  {
    nearbyLocationOfInterest2 = [v13 nearbyLocationOfInterest];
    type = [nearbyLocationOfInterest2 type];
    nearbyLocationOfInterest3 = [v13 nearbyLocationOfInterest];
    customLabel = [nearbyLocationOfInterest3 customLabel];
    v20 = sub_100021084(type, customLabel);

    nearbyLocationOfInterest = sub_10000759C(0, v20);
  }

  if (![nearbyLocationOfInterest length])
  {
    mapItem = [v13 mapItem];
    name = [mapItem name];

    nearbyLocationOfInterest = name;
  }

  if ([nearbyLocationOfInterest length] && objc_msgSend(nearbyLocationOfInterest, "hasSuffix:", @"."))
  {
    v23 = [nearbyLocationOfInterest substringToIndex:{objc_msgSend(nearbyLocationOfInterest, "length") - 1}];

    nearbyLocationOfInterest = v23;
  }

  if ([nearbyLocationOfInterest length])
  {
    v24 = sub_10001C4BC();
    v25 = [v24 localizedStringForKey:@"Notification message (with address) [FindMyCar notification]" value:@"localized string not found" table:0];
    v26 = [NSString stringWithFormat:v25, nearbyLocationOfInterest];
    [v14 setBody:v26];
  }

  else
  {
    v27 = sub_10001C4BC();
    v28 = [v27 localizedStringForKey:@"Notification message (no address) [FindMyCar notification]" value:@"localized string not found" table:0];
    [v14 setBody:v28];

    mapItem2 = [v13 mapItem];
    geoMapItemHandle = [mapItem2 geoMapItemHandle];

    if (!geoMapItemHandle)
    {
      goto LABEL_13;
    }

    v31 = dispatch_semaphore_create(0);
    v32 = +[GEOMapService sharedService];
    mapItem3 = [v13 mapItem];
    geoMapItemHandle2 = [mapItem3 geoMapItemHandle];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100021184;
    v38[3] = &unk_10003D470;
    v39 = v31;
    v40 = v13;
    v41 = v14;
    v24 = v31;
    [v32 resolveMapItemFromHandle:geoMapItemHandle2 completionHandler:v38];

    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    v25 = v39;
  }

LABEL_13:
  v35 = [self requestWithContent:v14 destinations:7];

  return v35;
}

+ (id)requestForLowFuelAlertNotificationWithDetails:(id)details
{
  detailsCopy = details;
  engineType = [detailsCopy engineType];
  v6 = objc_alloc_init(NSURLComponents);
  [v6 setScheme:@"x-maps-bulletin"];
  [v6 setHost:&stru_10003DB78];
  v7 = +[NSMutableArray array];
  v8 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"LowFuel"];
  [v7 addObject:v8];
  if (engineType)
  {
    v9 = [NSURLQueryItem alloc];
    stringValue = [engineType stringValue];
    v11 = [v9 initWithName:@"engineType" value:stringValue];

    [v7 addObject:v11];
  }

  [v6 setQueryItems:v7];
  v12 = [v6 URL];

  v20 = @"MapsNotificationType";
  v21 = &off_100040438;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  title = [detailsCopy title];
  subtitle = [detailsCopy subtitle];

  v16 = +[NSDate distantFuture];
  LOBYTE(v19) = 0;
  v17 = [self requestWithTitle:title subtitle:0 message:subtitle userInfo:v13 destinations:15 url:v12 date:0 expirationDate:v16 categoryIdentifier:off_10004AB38[0] interruptionLevel:2 shouldIgnoreDoNotDisturb:v19];

  return v17;
}

+ (id)requestForMapsSuggestionsNotificationWithTitle:(id)title message:(id)message actionURL:(id)l
{
  v15 = @"MapsNotificationType";
  v16 = &off_100040450;
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(v14) = 0;
  v12 = [self requestWithTitle:titleCopy subtitle:0 message:messageCopy userInfo:v11 destinations:7 url:lCopy date:0 expirationDate:0 categoryIdentifier:off_10004AB50[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:{v14, v15, v16}];

  return v12;
}

+ (id)requestForAirportArrivalNotificationWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name
{
  nameCopy = name;
  messageCopy = message;
  titleCopy = title;
  data = [region data];
  v13 = [data base64EncodedStringWithOptions:0];
  v14 = objc_alloc_init(NSURLComponents);
  [v14 setScheme:@"x-maps-bulletin"];
  [v14 setHost:&stru_10003DB78];
  v15 = [nameCopy dataUsingEncoding:4];

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
  v23 = [self requestWithTitle:titleCopy subtitle:0 message:messageCopy userInfo:v21 destinations:7 url:v22 date:0 expirationDate:0 categoryIdentifier:off_10004AB50[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v25];

  return v23;
}

+ (id)requestForVenueNotificationWithTitle:(id)title message:(id)message actionURL:(id)l
{
  v15 = @"MapsNotificationType";
  v16 = &off_100040480;
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(v14) = 0;
  v12 = [self requestWithTitle:titleCopy subtitle:0 message:messageCopy userInfo:v11 destinations:7 url:lCopy date:0 expirationDate:0 categoryIdentifier:off_10004AB50[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:{v14, v15, v16}];

  return v12;
}

+ (id)requestForTrafficIncidentAlertWithID:(id)d withReroute:(BOOL)reroute title:(id)title description:(id)description
{
  rerouteCopy = reroute;
  dCopy = d;
  v11 = dCopy;
  if (dCopy)
  {
    v26[0] = @"MapsNotificationType";
    v26[1] = off_10004AB20[0];
    v27[0] = &off_100040498;
    v27[1] = dCopy;
    v26[2] = off_10004AB28[0];
    v27[2] = &__kCFBooleanTrue;
    descriptionCopy = description;
    titleCopy = title;
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
    descriptionCopy2 = description;
    titleCopy2 = title;
    v14 = v25;
    v15 = v24;
    v16 = 2;
  }

  v19 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16];
  v20 = off_10004AB48;
  if (!rerouteCopy)
  {
    v20 = off_10004AB40;
  }

  LOBYTE(v23) = 1;
  v21 = [self requestWithTitle:title subtitle:0 message:description userInfo:v19 destinations:6 categoryIdentifier:*v20 interruptionLevel:1 shouldIgnoreDoNotDisturb:v23];

  return v21;
}

+ (id)requestForPredictedRouteTrafficIncidentNotificationWithCommuteDetails:(id)details
{
  detailsCopy = details;
  commuteDetailsIdentifier = [detailsCopy commuteDetailsIdentifier];
  v6 = objc_alloc_init(NSURLComponents);
  [v6 setScheme:@"x-maps-bulletin"];
  [v6 setHost:&stru_10003DB78];
  v7 = +[NSMutableArray array];
  v8 = [[NSURLQueryItem alloc] initWithName:@"MapsPushNotificationType" value:@"CommuteDetails"];
  [v7 addObject:v8];
  if ([commuteDetailsIdentifier length])
  {
    v9 = [[NSURLQueryItem alloc] initWithName:@"uniqueID" value:commuteDetailsIdentifier];
    [v7 addObject:v9];
  }

  [v6 setQueryItems:v7];
  v10 = [v6 URL];

  v18 = @"MapsNotificationType";
  v19 = &off_1000404B0;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  title = [detailsCopy title];
  message = [detailsCopy message];
  expirationDate = [detailsCopy expirationDate];

  LOBYTE(v17) = 1;
  v15 = [self requestWithTitle:title subtitle:0 message:message userInfo:v11 destinations:7 url:v10 date:0 expirationDate:expirationDate categoryIdentifier:off_10004AB50[0] interruptionLevel:2 shouldIgnoreDoNotDisturb:v17];

  return v15;
}

+ (id)requestForSufficientVisitsNotificationWithTitle:(id)title message:(id)message
{
  v16 = @"MapsNotificationType";
  v17 = &off_1000404C8;
  messageCopy = message;
  titleCopy = title;
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
  v13 = [self requestWithTitle:titleCopy subtitle:0 message:messageCopy userInfo:v8 destinations:7 url:v12 date:0 expirationDate:0 categoryIdentifier:off_10004ABB8[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v15];

  return v13;
}

+ (id)requestForPushedBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = bookmarkCopy;
  if (bookmarkCopy)
  {
    data = [bookmarkCopy data];
    v7 = [data base64EncodedStringWithOptions:0];
    v8 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotifcationTypePushToPhone", @"MapsPushNotificationPushData", v7];
    v43 = [NSURL URLWithString:v8];

    v45 = @"MapsNotificationType";
    v46 = &off_1000404E0;
    v9 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v10 = sub_10001C4BC();
    v11 = [v10 localizedStringForKey:@"Maps [push]" value:@"localized string not found" table:0];
    v12 = v5;
    type = [v12 type];
    if (type >= 2)
    {
      if (type == 4)
      {
        selfCopy2 = self;
        if ([v12 placesCount] > 1)
        {
          v41 = data;
          v15 = [v12 placesAtIndex:0];
          places = [v12 places];
          lastObject = [places lastObject];

          if ([v15 type]== 2)
          {
            v39 = sub_10001C4BC();
            v27 = [v39 localizedStringForKey:@"Directions to '%@[a place]' [push-notification]" value:@"localized string not found" table:0];
            title = [lastObject title];
            v38 = v27;
            v28 = [NSString stringWithFormat:v27, title];
            data = v41;
          }

          else
          {
            type2 = [lastObject type];
            v36 = lastObject;
            v30 = sub_10001C4BC();
            v39 = v30;
            if (type2 == 2)
            {
              v31 = [v30 localizedStringForKey:@"Directions from '%@[a place]' [push-notification]" value:@"localized string not found" table:0];
              title = [v15 title];
              v38 = v31;
              v28 = [NSString stringWithFormat:v31, title];
            }

            else
            {
              v32 = [v30 localizedStringForKey:@"Directions from '%@[a place]' to '%@[another place]' [push-notification]" value:@"localized string not found" table:0];
              title2 = [v15 title];
              title3 = [v36 title];
              title = title2;
              v38 = v32;
              v28 = [NSString stringWithFormat:v32, title2, title3];
            }

            data = v41;
            lastObject = v36;
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
      if (type != 3)
      {
LABEL_7:

        LOBYTE(v35) = 0;
        v23 = [self requestWithTitle:v11 subtitle:0 message:v14 userInfo:v9 destinations:7 url:v43 categoryIdentifier:off_10004AB78[0] interruptionLevel:2 shouldIgnoreDoNotDisturb:v35];

        goto LABEL_9;
      }
    }

    selfCopy2 = self;
    v15 = sub_10001C4BC();
    [v15 localizedStringForKey:@"Location of '%@[a place]' [push]" value:@"localized string not found" table:0];
    v40 = v5;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    v19 = v7;
    v21 = v20 = data;
    title4 = [v12 title];
    v14 = [NSString stringWithFormat:v21, title4];

    data = v20;
    v7 = v19;
    v9 = v18;
    v10 = v17;
    v11 = v16;
    v5 = v40;
LABEL_6:

    self = selfCopy2;
    goto LABEL_7;
  }

  v23 = 0;
LABEL_9:

  return v23;
}

+ (id)requestForFixedRAP:(id)p
{
  pCopy = p;
  v5 = pCopy;
  if (pCopy && [pCopy problemStatusCount])
  {
    problemStatus = [v5 problemStatus];
    v7 = [problemStatus objectAtIndexedSubscript:0];

    data = [v5 data];
    v8 = [data base64EncodedStringWithOptions:0];
    v9 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotifcationTypeProblemResolved", @"MapsPushNotificationPushData", v8];
    v10 = [NSURL URLWithString:v9];

    v22[0] = @"MapsNotificationType";
    v22[1] = off_10004AB98[0];
    v23[0] = &off_1000404F8;
    problemState = [v7 problemState];
    if ((problemState - 1) >= 5)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", problemState];
    }

    else
    {
      v12 = off_10003D490[problemState - 1];
    }

    v23[1] = v12;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    notification = [v7 notification];
    localizedTitle = [notification localizedTitle];
    notification2 = [v7 notification];
    localizedText = [notification2 localizedText];
    LOBYTE(v20) = 0;
    v13 = [self requestWithTitle:localizedTitle subtitle:0 message:localizedText userInfo:v14 destinations:7 url:v10 categoryIdentifier:off_10004AB90[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v20];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)requestForRAPStatusChangeNotification:(id)notification
{
  notificationCopy = notification;
  rapResponse = [notificationCopy rapResponse];
  notification = [rapResponse notification];

  title = [notification title];
  stringValue = [title stringValue];

  if ([stringValue length])
  {
    data = [notificationCopy data];
    v10 = [data base64EncodedStringWithOptions:0];
    v11 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotifcationTypeProblemStatusChange", @"MapsPushNotificationPushData", v10];
    v12 = [NSURL URLWithString:v11];

    v19 = @"MapsNotificationType";
    v20 = &off_100040510;
    v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    body = [notification body];
    stringValue2 = [body stringValue];

    LOBYTE(v18) = 0;
    v16 = [self requestWithTitle:stringValue subtitle:0 message:stringValue2 userInfo:v13 destinations:7 url:v12 categoryIdentifier:off_10004AB90[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)requestForSubmittedPhotosWithTitle:(id)title message:(id)message actionURL:(id)l
{
  v15 = @"MapsNotificationType";
  v16 = &off_100040528;
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  LOBYTE(v14) = 0;
  v12 = [self requestWithTitle:titleCopy subtitle:0 message:messageCopy userInfo:v11 destinations:7 url:lCopy categoryIdentifier:off_10004ABA0[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:{v14, v15, v16}];

  return v12;
}

+ (id)requestForClearedPhotoAttributionNotificationWithTitle:(id)title message:(id)message
{
  v16 = @"MapsNotificationType";
  v17 = &off_100040540;
  messageCopy = message;
  titleCopy = title;
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
  v13 = [self requestWithTitle:titleCopy subtitle:0 message:messageCopy userInfo:v8 destinations:7 url:v12 categoryIdentifier:off_10004ABA0[0] interruptionLevel:0 shouldIgnoreDoNotDisturb:v15];

  return v13;
}

+ (id)requestForSharedTripIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  initialNotificationSubtitle = [stateCopy initialNotificationSubtitle];
  initialNotificationBody = [stateCopy initialNotificationBody];
  v10 = [self _requestForSharedTripIdentifier:identifierCopy state:stateCopy title:&stru_10003DB78 subtitle:initialNotificationSubtitle message:initialNotificationBody isUpdate:0];

  return v10;
}

+ (id)requestForUpdatingSharedTripIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  updateNotificationSubtitle = [stateCopy updateNotificationSubtitle];
  updateNotificationBody = [stateCopy updateNotificationBody];
  v10 = [self _requestForSharedTripIdentifier:identifierCopy state:stateCopy title:&stru_10003DB78 subtitle:updateNotificationSubtitle message:updateNotificationBody isUpdate:1];

  return v10;
}

+ (id)requestForChargingStopSharedTripIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  chargingStopNotificationSubtitle = [stateCopy chargingStopNotificationSubtitle];
  chargingStopNotificationBody = [stateCopy chargingStopNotificationBody];
  v10 = [self _requestForSharedTripIdentifier:identifierCopy state:stateCopy title:&stru_10003DB78 subtitle:chargingStopNotificationSubtitle message:chargingStopNotificationBody isUpdate:1];

  return v10;
}

+ (id)requestForIntermediateStopSharedTripIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  intermediateArrivalNotificationSubtitle = [stateCopy intermediateArrivalNotificationSubtitle];
  intermediateArrivalNotificationBody = [stateCopy intermediateArrivalNotificationBody];
  v10 = [self _requestForSharedTripIdentifier:identifierCopy state:stateCopy title:&stru_10003DB78 subtitle:intermediateArrivalNotificationSubtitle message:intermediateArrivalNotificationBody isUpdate:1];

  return v10;
}

+ (id)requestForResumeSharedTripIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  waypointResumeNotificationSubtitle = [stateCopy waypointResumeNotificationSubtitle];
  waypointResumeNotificationBody = [stateCopy waypointResumeNotificationBody];
  v10 = [self _requestForSharedTripIdentifier:identifierCopy state:stateCopy title:&stru_10003DB78 subtitle:waypointResumeNotificationSubtitle message:waypointResumeNotificationBody isUpdate:1];

  return v10;
}

+ (id)requestForArrivingSharedTripIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  identifierCopy = identifier;
  arrivalNotificationSubtitle = [stateCopy arrivalNotificationSubtitle];
  arrivalNotificationBody = [stateCopy arrivalNotificationBody];
  v10 = [self _requestForSharedTripIdentifier:identifierCopy state:stateCopy title:&stru_10003DB78 subtitle:arrivalNotificationSubtitle message:arrivalNotificationBody isUpdate:1];

  return v10;
}

+ (id)_requestForSharedTripIdentifier:(id)identifier state:(id)state title:(id)title subtitle:(id)subtitle message:(id)message isUpdate:(BOOL)update
{
  updateCopy = update;
  identifierCopy = identifier;
  stateCopy = state;
  titleCopy = title;
  subtitleCopy = subtitle;
  messageCopy = message;
  etaInfo = [stateCopy etaInfo];
  [etaInfo etaTimestamp];
  v17 = v16;
  v18 = GEOConfigMSPDefaultTripClosedExpiryInterval[1];
  GEOConfigGetDouble();
  v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:v19 + v17];

  data = [stateCopy data];
  v21 = [data base64EncodedStringWithOptions:0];
  v22 = [NSString stringWithFormat:@"%@://?%@=%@&%@=%@", @"x-maps-bulletin", @"MapsPushNotificationType", @"MapsPushNotificationTypeSharedTrip", @"MapsPushNotificationPushData", v21];
  v23 = [NSURL URLWithString:v22];

  v37[0] = off_10004AB80[0];
  v37[1] = @"MapsNotificationType";
  v38[0] = identifierCopy;
  v38[1] = &off_100040558;
  v24 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v25 = [v24 mutableCopy];

  if ([stateCopy hasTransportType])
  {
    transportType = [stateCopy transportType];
    if (transportType >= 7)
    {
      v27 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v27 = off_10003D4B8[transportType];
    }

    [v25 setObject:v27 forKeyedSubscript:off_10004AB88[0]];
  }

  v28 = off_10004ABB0;
  if (!updateCopy)
  {
    v28 = off_10004ABA8;
  }

  LOBYTE(v31) = 0;
  v29 = [self requestWithTitle:titleCopy subtitle:subtitleCopy message:messageCopy userInfo:v25 destinations:7 url:v23 expirationDate:v20 categoryIdentifier:*v28 threadIdentifier:identifierCopy interruptionLevel:2 shouldIgnoreDoNotDisturb:v31];

  return v29;
}

+ (id)requestForDownloadedOfflineMapWithIdentifier:(id)identifier displayName:(id)name
{
  nameCopy = name;
  v6 = sub_10001C4BC();
  v7 = [v6 localizedStringForKey:@"OFFLINE_MAP_DOWNLOADED_NOTIFICATION_TITLE" value:@"localized string not found" table:@"Offline"];

  v8 = [nameCopy length];
  v9 = sub_10001C4BC();
  v10 = v9;
  if (v8)
  {
    v11 = [v9 localizedStringForKey:@"OFFLINE_MAP_DOWNLOADED_NOTIFICATION_MESSAGE" value:@"localized string not found" table:@"Offline"];

    nameCopy = [NSString localizedStringWithFormat:v11, nameCopy];
    v10 = v11;
  }

  else
  {
    nameCopy = [v9 localizedStringForKey:@"OFFLINE_MAP_DOWNLOADED_NOTIFICATION_MESSAGE_NO_NAME" value:@"localized string not found" table:@"Offline"];
  }

  v18 = @"MapsNotificationType";
  v19 = &off_100040570;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v14 = sub_10001FC00(0);
  LOBYTE(v17) = 0;
  v15 = [self requestWithTitle:v7 subtitle:0 message:nameCopy userInfo:v13 destinations:7 url:v14 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v17];

  return v15;
}

+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUsedWithinTimeInterval:(double)interval
{
  identifiersCopy = identifiers;
  namesCopy = names;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = identifiersCopy;
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

      v12 = [namesCopy objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v14)];

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
  v25 = [self requestWithTitle:v19 subtitle:0 message:v22 userInfo:v23 destinations:7 url:v24 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v27];

  return v25;
}

+ (id)requestForOfflineUnsupportedExpirationWithIdentifiers:(id)identifiers displayNames:(id)names isOSVersionUnsupported:(BOOL)unsupported
{
  unsupportedCopy = unsupported;
  identifiersCopy = identifiers;
  namesCopy = names;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = identifiersCopy;
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

      v13 = [namesCopy objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v15)];

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
  if (unsupportedCopy)
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
  if (unsupportedCopy)
  {
    v30 = 0;
  }

  else
  {
    v30 = @"EXPIRED_MAPS";
  }

  v31 = sub_10001FC00(v30);
  LOBYTE(v34) = 0;
  v32 = [self requestWithTitle:v21 subtitle:0 message:v26 userInfo:v29 destinations:7 url:v31 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v34];

  return v32;
}

+ (id)requestForExpiredOfflineMapsWithIdentifiers:(id)identifiers displayNames:(id)names dueToNotBeingUpdatedWithinTimeInterval:(double)interval
{
  identifiersCopy = identifiers;
  namesCopy = names;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = identifiersCopy;
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

      v12 = [namesCopy objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v14)];

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
  v25 = [self requestWithTitle:v19 subtitle:0 message:v22 userInfo:v23 destinations:7 url:v24 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v27];

  return v25;
}

+ (id)requestForUpcomingOfflineMapsExpirationForIdentifiers:(id)identifiers displayNames:(id)names unlessUpdatedByDate:(id)date
{
  identifiersCopy = identifiers;
  namesCopy = names;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = identifiersCopy;
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

      v12 = [namesCopy objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v14)];

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
  v25 = [self requestWithTitle:v19 subtitle:0 message:v22 userInfo:v23 destinations:7 url:v24 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v27];

  return v25;
}

+ (id)requestForOfflineDataIncompatibilityForIdentifiers:(id)identifiers displayNames:(id)names
{
  identifiersCopy = identifiers;
  namesCopy = names;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = identifiersCopy;
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

      v11 = [namesCopy objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v13)];

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
  v24 = [self requestWithTitle:v18 subtitle:0 message:v21 userInfo:v22 destinations:7 url:v23 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v26];

  return v24;
}

+ (id)requestForPairedDeviceStorageRequired:(unint64_t)required forSubscriptionIdentifiers:(id)identifiers withDisplayNames:(id)names
{
  identifiersCopy = identifiers;
  namesCopy = names;
  v10 = [NSByteCountFormatter stringFromByteCount:(llround(required * 0.000001) * 1000000.0) countStyle:2];
  if ([identifiersCopy count] == 1 && (objc_msgSend(identifiersCopy, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(namesCopy, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v13))
  {
    firstObject = [identifiersCopy firstObject];
    v15 = [namesCopy objectForKeyedSubscript:firstObject];

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
  v24 = [self requestWithTitle:v17 subtitle:0 message:v20 userInfo:v22 destinations:7 url:v23 categoryIdentifier:kUNCategoryOfflineMapData[0] interruptionLevel:1 shouldIgnoreDoNotDisturb:v26];

  return v24;
}

@end