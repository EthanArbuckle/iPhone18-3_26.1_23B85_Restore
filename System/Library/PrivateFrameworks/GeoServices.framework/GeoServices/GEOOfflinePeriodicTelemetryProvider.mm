@interface GEOOfflinePeriodicTelemetryProvider
- (GEOOfflinePeriodicTelemetryProvider)init;
- (void)reportTelemetryForType:(int64_t)type completionHandler:(id)handler;
@end

@implementation GEOOfflinePeriodicTelemetryProvider

- (void)reportTelemetryForType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  global_queue = geo_get_global_queue();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003D1AC;
  v9[3] = &unk_100083160;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v6 fetchAllSubscriptionsWithCallbackQueue:global_queue completionHandler:v9];
}

- (GEOOfflinePeriodicTelemetryProvider)init
{
  v7.receiver = self;
  v7.super_class = GEOOfflinePeriodicTelemetryProvider;
  v2 = [(GEOOfflinePeriodicTelemetryProvider *)&v7 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2;
  }

  return v2;
}

@end