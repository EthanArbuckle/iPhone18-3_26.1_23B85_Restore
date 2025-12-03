@interface MapsSuggestionsOfflineDownloadNotificationAction
- (MapsSuggestionsOfflineDownloadNotificationAction)initWithEntry:(id)entry budget:(id)budget completion:(id)completion;
- (NSString)uniqueName;
- (void)actWithHandler:(id)handler;
@end

@implementation MapsSuggestionsOfflineDownloadNotificationAction

- (MapsSuggestionsOfflineDownloadNotificationAction)initWithEntry:(id)entry budget:(id)budget completion:(id)completion
{
  entryCopy = entry;
  budgetCopy = budget;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = MapsSuggestionsOfflineDownloadNotificationAction;
  v12 = [(MapsSuggestionsOfflineDownloadNotificationAction *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entry, entry);
    objc_storeStrong(&v13->_budget, budget);
    v14 = objc_retainBlock(completionCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    v13->_hasBeenTriggered = 0;
  }

  return v13;
}

- (void)actWithHandler:(id)handler
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_hasBeenTriggered)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_hasBeenTriggered = 1;
    objc_sync_exit(obj);

    v3 = [(MapsSuggestionsEntry *)obj->_entry stringForKey:@"MapsSuggestionsFlightArrivalAirportLocalityKey"];
    if (v3)
    {
      v4 = [(MapsSuggestionsEntry *)obj->_entry numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
      [v4 doubleValue];

      v5 = [(MapsSuggestionsEntry *)obj->_entry numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
      [v5 doubleValue];

      v6 = objc_alloc_init(GEOMapDataSubscriptionManager);
      v7 = GEOConfigMapsSuggestionsOfflineMapsTipDefaultRegionRadius[1];
      GEOConfigGetInteger();
      GEOMapRectMakeWithRadialDistance();
      v12 = [[GEOMapRegion alloc] initWithMapRect:{v8, v9, v10, v11}];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100031C38;
      v17[3] = &unk_100067880;
      v17[4] = obj;
      v18 = v3;
      v13 = v12;
      v19 = v13;
      v14 = [v6 determineEstimatedSizeForSubscriptionWithRegion:v13 dataTypes:1024 queue:&_dispatch_main_q completionHandler:v17];
      handler = obj->_handler;
      if (handler)
      {
        handler[2]();
      }
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "MapsSuggestionsFlightArrivalAirportLocalityKey is nil, not showing notification.", buf, 2u);
      }
    }
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end