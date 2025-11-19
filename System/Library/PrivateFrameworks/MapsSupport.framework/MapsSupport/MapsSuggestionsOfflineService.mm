@interface MapsSuggestionsOfflineService
- (BOOL)_anyDownloadedRegionContainsCoordinate:(id)a3;
- (BOOL)shouldKeepEntryWhenOffline:(id)a3;
- (MapsSuggestionsOfflineService)init;
@end

@implementation MapsSuggestionsOfflineService

- (MapsSuggestionsOfflineService)init
{
  v9.receiver = self;
  v9.super_class = MapsSuggestionsOfflineService;
  v2 = [(MapsSuggestionsOfflineService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MapsSuggestionsOfflineServiceQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(GEOMapDataSubscriptionManager);
    subscriptionManager = v2->_subscriptionManager;
    v2->_subscriptionManager = v6;
  }

  return v2;
}

- (BOOL)shouldKeepEntryWhenOffline:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    if ([v4 type] == 24)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not showing ContactActivity entries while offline", buf, 2u);
      }

      v6 = 0;
      goto LABEL_20;
    }

    v5 = [v4 geoMapItem];
    if (v5)
    {
      v7 = [v4 geoMapItem];
      [v7 coordinate];
      v9 = v8;
      v11 = v10;

      LODWORD(v7) = [(MapsSuggestionsOfflineService *)self _anyDownloadedRegionContainsCoordinate:v9, v11];
      v12 = GEOFindOrCreateLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (!v7)
      {
        if (v13)
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Entry's map item is NOT within a downloaded region, throwing away entry.", v17, 2u);
        }

        v6 = 0;
        goto LABEL_19;
      }

      if (!v13)
      {
        v6 = 1;
        goto LABEL_19;
      }

      v18 = 0;
      v14 = "Entry's map item is within a downloaded region, keeping entry.";
      v6 = 1;
      v15 = &v18;
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      v6 = 1;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_19:

        goto LABEL_20;
      }

      *v19 = 0;
      v14 = "Entry does not have an associated map item, keeping entry.";
      v15 = v19;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, v15, 2u);
    goto LABEL_19;
  }

  v5 = GEOFindOrCreateLog();
  v6 = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Maps was NOT forced into offline mode, keeping entry.", v21, 2u);
  }

LABEL_20:

  return v6;
}

- (BOOL)_anyDownloadedRegionContainsCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  subscriptionManager = self->_subscriptionManager;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002D604;
  v13[3] = &unk_100067698;
  v9 = v6;
  v16 = var0;
  v17 = var1;
  v14 = v9;
  v15 = &v18;
  [(GEOMapDataSubscriptionManager *)subscriptionManager fetchAllSubscriptionsWithCallbackQueue:queue completionHandler:v13];
  GEOConfigGetDouble();
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  dispatch_group_wait(v9, v11);
  LOBYTE(v6) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v6;
}

@end