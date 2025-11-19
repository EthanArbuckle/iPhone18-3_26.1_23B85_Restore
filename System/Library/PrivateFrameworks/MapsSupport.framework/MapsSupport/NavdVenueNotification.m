@interface NavdVenueNotification
+ (void)hide;
+ (void)showWithMapItem:(id)a3 airport:(id)a4;
@end

@implementation NavdVenueNotification

+ (void)showWithMapItem:(id)a3 airport:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GEOMapURLBuilder URLForInternalBusiness:id:provider:](GEOMapURLBuilder, "URLForInternalBusiness:id:provider:", 0, [v5 _muid], 0);
  v8 = GEOFindOrCreateLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Venue notication URL : %@", &v13, 0xCu);
    }

    if (![v6 length])
    {
      v10 = [v5 name];

      v6 = v10;
    }

    v8 = objc_alloc_init(NavdNotificationManager);
    v11 = MapsSuggestionsLocalizedTitleFormatForVenueWelcomeNotification();
    v12 = MapsSuggestionsLocalizedSubtitleForVenueWelcomeNotification();
    [v8 showVenueBulletinWithTitle:v11 message:v12 actionURL:v7];
  }

  else if (v9)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Unable to build url for notification", &v13, 2u);
  }
}

+ (void)hide
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Remove Venue notication", v4, 2u);
  }

  v3 = objc_alloc_init(NavdNotificationManager);
  [(NavdNotificationManager *)v3 clearVenueBulletin];
}

@end