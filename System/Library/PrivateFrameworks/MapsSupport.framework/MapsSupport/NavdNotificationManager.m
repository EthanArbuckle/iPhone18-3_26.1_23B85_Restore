@interface NavdNotificationManager
- (void)clearAirportArrivalBulletin;
- (void)clearMapsSuggestionsBulletin;
- (void)clearVenueBulletin;
- (void)showAirportArrivalBulletinWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6;
- (void)showMapsSuggestionsBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3;
- (void)showVenueBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5;
@end

@implementation NavdNotificationManager

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)a3
{
  v3 = a3;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 title];
    v6 = [v3 message];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Traffic notification posted with title: %@ and message: %@", &v8, 0x16u);
  }

  v7 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v7 showPredictedRouteTrafficIncidentBulletinForCommuteDetails:v3];
}

- (void)showMapsSuggestionsBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsSuggestions notification posted with title: %@ and message: %@", &v12, 0x16u);
  }

  v11 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v11 showMapsSuggestionsBulletinWithTitle:v7 message:v8 actionURL:v9];
}

- (void)clearMapsSuggestionsBulletin
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v2 clearMapsSuggestionsBulletin];
}

- (void)showAirportArrivalBulletinWithTitle:(id)a3 message:(id)a4 mapRegion:(id)a5 regionName:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Airport arrival notification posted with title: %@ and message: %@", &v15, 0x16u);
  }

  v14 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v14 showAirportArrivalBulletinWithTitle:v9 message:v10 mapRegion:v12 regionName:v11];
}

- (void)clearAirportArrivalBulletin
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v2 clearAirportArrivalBulletin];
}

- (void)showVenueBulletinWithTitle:(id)a3 message:(id)a4 actionURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Venue notification posted with title: %@ and message: %@", &v12, 0x16u);
  }

  v11 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v11 showVenueBulletinWithTitle:v7 message:v8 actionURL:v9];
}

- (void)clearVenueBulletin
{
  v2 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v2 clearVenueBulletin];
}

@end