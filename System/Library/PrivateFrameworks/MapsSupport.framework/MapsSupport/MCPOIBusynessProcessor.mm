@interface MCPOIBusynessProcessor
+ (MCPOIBusynessProcessor)sharedProcessor;
- (MCPOIBusynessProcessor)init;
- (void)didUpdateLocation:(id)location;
- (void)didUpdateVisit:(id)visit;
- (void)finished;
- (void)leechLocation;
- (void)noLocationAuth;
@end

@implementation MCPOIBusynessProcessor

+ (MCPOIBusynessProcessor)sharedProcessor
{
  if (qword_100023288 != -1)
  {
    sub_10000F8C0();
  }

  v3 = qword_100023290;

  return v3;
}

- (MCPOIBusynessProcessor)init
{
  v10.receiver = self;
  v10.super_class = MCPOIBusynessProcessor;
  v2 = [(MCPOIBusynessProcessor *)&v10 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_group_create();
    waitGroup = v2->_waitGroup;
    v2->_waitGroup = v5;

    v7 = +[MCPOIBusynessLocationManager sharedLocationManager];
    v8 = qword_100023298;
    qword_100023298 = v7;

    [qword_100023298 setLocationDelegate:v2];
  }

  return v2;
}

- (void)leechLocation
{
  dispatch_assert_queue_not_V2(self->_queue);
  v3 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MCPOIBusynessProcessor: requestingLocation", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000022C0;
  block[3] = &unk_10001C628;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(queue, block);
  if ((v10[24] & 1) == 0)
  {
    dispatch_group_enter(self->_waitGroup);
    [qword_100023298 requestLocation];
    if (GEOConfigGetBOOL())
    {
      dispatch_group_enter(self->_waitGroup);
      [qword_100023298 requestVisit];
    }

    waitGroup = self->_waitGroup;
    v6 = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002330;
    v7[3] = &unk_10001C650;
    v7[4] = self;
    dispatch_group_notify(waitGroup, v6, v7);
  }

  _Block_object_dispose(buf, 8);
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  v5 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v12 = locationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MCPOIBusynessProcessor didUpdateLocation : %{private}@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002458;
  v8[3] = &unk_10001C678;
  v9 = locationCopy;
  selfCopy = self;
  v7 = locationCopy;
  dispatch_async(queue, v8);
}

- (void)didUpdateVisit:(id)visit
{
  visitCopy = visit;
  v5 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v11 = visitCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MCPOIBusynessProcessor didUpdateVisit : %{private}@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002600;
  v8[3] = &unk_10001C678;
  v8[4] = self;
  v9 = visitCopy;
  v7 = visitCopy;
  dispatch_async(queue, v8);
}

- (void)noLocationAuth
{
  v3 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MCPOIBusynessProcessor noLocationAuth", v4, 2u);
  }

  dispatch_group_leave(self->_waitGroup);
}

- (void)finished
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_location)
  {
    v3 = +[MCPOIBusynessUploadConditionsChecker sharedConditionsCheckerInstance];
    v4 = [v3 shouldUseVisit:self->_visit forLocation:self->_location];

    if (v4)
    {
      v5 = [CLLocation alloc];
      [(CLVisit *)self->_visit coordinate];
      v7 = v6;
      v9 = v8;
      [(CLVisit *)self->_visit horizontalAccuracy];
      v11 = v10;
      arrivalDate = [(CLVisit *)self->_visit arrivalDate];
      v13 = [v5 initWithCoordinate:arrivalDate altitude:v7 horizontalAccuracy:v9 verticalAccuracy:NAN timestamp:{v11, NAN}];
    }

    v14 = [[MCPOIBusynessData alloc] initWithLocation:self->_location visit:self->_visit];
    [MCPOIBusynessEventCollector startProcessingPayload:v14];
  }

  self->_isWaiting = 0;
}

@end