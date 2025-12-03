@interface NavdNotificationManager
- (void)clearAirportArrivalBulletin;
- (void)clearMapsSuggestionsBulletin;
- (void)clearVenueBulletin;
- (void)showAirportArrivalBulletinWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name;
- (void)showMapsSuggestionsBulletinWithTitle:(id)title message:(id)message actionURL:(id)l;
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details;
- (void)showVenueBulletinWithTitle:(id)title message:(id)message actionURL:(id)l;
@end

@implementation NavdNotificationManager

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details
{
  detailsCopy = details;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    title = [detailsCopy title];
    message = [detailsCopy message];
    v8 = 138412546;
    v9 = title;
    v10 = 2112;
    v11 = message;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Traffic notification posted with title: %@ and message: %@", &v8, 0x16u);
  }

  v7 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v7 showPredictedRouteTrafficIncidentBulletinForCommuteDetails:detailsCopy];
}

- (void)showMapsSuggestionsBulletinWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = titleCopy;
    v14 = 2112;
    v15 = messageCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsSuggestions notification posted with title: %@ and message: %@", &v12, 0x16u);
  }

  v11 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v11 showMapsSuggestionsBulletinWithTitle:titleCopy message:messageCopy actionURL:lCopy];
}

- (void)clearMapsSuggestionsBulletin
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v2 clearMapsSuggestionsBulletin];
}

- (void)showAirportArrivalBulletinWithTitle:(id)title message:(id)message mapRegion:(id)region regionName:(id)name
{
  titleCopy = title;
  messageCopy = message;
  nameCopy = name;
  regionCopy = region;
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = titleCopy;
    v17 = 2112;
    v18 = messageCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Airport arrival notification posted with title: %@ and message: %@", &v15, 0x16u);
  }

  v14 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v14 showAirportArrivalBulletinWithTitle:titleCopy message:messageCopy mapRegion:regionCopy regionName:nameCopy];
}

- (void)clearAirportArrivalBulletin
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v2 clearAirportArrivalBulletin];
}

- (void)showVenueBulletinWithTitle:(id)title message:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = titleCopy;
    v14 = 2112;
    v15 = messageCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Venue notification posted with title: %@ and message: %@", &v12, 0x16u);
  }

  v11 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v11 showVenueBulletinWithTitle:titleCopy message:messageCopy actionURL:lCopy];
}

- (void)clearVenueBulletin
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v2 clearVenueBulletin];
}

@end