@interface MCPOIBusynessEventCollector
+ (void)startProcessingPayload:(id)a3;
- (MCPOIBusynessEventCollector)initWithBusynessData:(id)a3;
- (void)collectBluePOI:(id)a3 analytics:(id)a4;
- (void)collectDifferentialPrivacy:(id)a3;
- (void)collectRealTime;
- (void)dealloc;
- (void)processBluePOI;
- (void)processDifferentialPrivacy;
- (void)processRealTime;
- (void)reportMetrics;
- (void)start;
@end

@implementation MCPOIBusynessEventCollector

- (MCPOIBusynessEventCollector)initWithBusynessData:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MCPOIBusynessEventCollector;
  v6 = [(MCPOIBusynessEventCollector *)&v14 init];
  if (v6)
  {
    [v5 writeToDisk];
    objc_storeStrong(&v6->_poiBusynessData, a3);
    v7 = [v5 leechedGEOLocation];
    location = v6->_location;
    v6->_location = v7;

    v6->_rtEnabled = GEOConfigGetBOOL();
    v6->_dpEnabled = GEOConfigGetBOOL();
    v6->_bpEnabled = GEOConfigGetBOOL();
    v9 = dispatch_group_create();
    reportingGroup = v6->_reportingGroup;
    v6->_reportingGroup = v9;

    v11 = geo_dispatch_queue_create_with_qos();
    eventCollectorQueue = v6->_eventCollectorQueue;
    v6->_eventCollectorQueue = v11;
  }

  return v6;
}

- (void)dealloc
{
  v3 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MCPOIBusynessEventCollector.dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = MCPOIBusynessEventCollector;
  [(MCPOIBusynessEventCollector *)&v4 dealloc];
}

+ (void)startProcessingPayload:(id)a3
{
  v3 = a3;
  v4 = [[MCPOIBusynessEventCollector alloc] initWithBusynessData:v3];

  [(MCPOIBusynessEventCollector *)v4 start];
}

- (void)start
{
  v3 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(GEOLocation *)self->_location coordinate];
    v5 = v4;
    [(GEOLocation *)self->_location coordinate];
    *buf = 134283777;
    v12 = v5;
    v13 = 2049;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MCPOIBusynessEventCollector.start, location: %{private}f,%{private}f", buf, 0x16u);
  }

  v7 = +[MCPOIBusynessState sharedState];
  [v7 incrementRunCount];

  [(MCPOIBusynessEventCollector *)self processRealTime];
  [(MCPOIBusynessEventCollector *)self processDifferentialPrivacy];
  eventCollectorQueue = self->_eventCollectorQueue;
  reportingGroup = self->_reportingGroup;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C874;
  block[3] = &unk_10001C650;
  block[4] = self;
  dispatch_group_notify(reportingGroup, eventCollectorQueue, block);
}

- (void)reportMetrics
{
  dispatch_assert_queue_V2(self->_eventCollectorQueue);
  BYTE1(v3) = self->_bpCollected;
  LOBYTE(v3) = self->_bpEnabled;
  [MCPOIBusynessAnalytics reportCompleteWithRTEnabled:self->_rtEnabled rtCollected:self->_rtCollected rtError:self->_rtError dpEnabled:self->_dpEnabled dpCollected:self->_dpCollected dpError:self->_dpError bpEnabled:v3 bpCollected:self->_bpError bpError:?];
}

- (void)processRealTime
{
  if (self->_rtEnabled)
  {
    v8[9] = v2;
    v8[10] = v3;
    dispatch_group_enter(self->_reportingGroup);
    location = self->_location;
    Integer = GEOConfigGetInteger();
    eventCollectorQueue = self->_eventCollectorQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000C9A8;
    v8[3] = &unk_10001D950;
    v8[4] = self;
    [GEOPOIBusynessHelper checkIsEnabledForLocation:location radius:Integer workQueue:eventCollectorQueue result:v8];
  }
}

- (void)collectRealTime
{
  dispatch_assert_queue_V2(self->_eventCollectorQueue);
  v3 = IOPSDrawingUnlimitedPower();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [MCPOIBusynessAnalytics report:v4];
  v5 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSMutableArray *)self->_poiPredictionData count];
    v7 = "ON";
    if (v3)
    {
      v7 = "NOT ON";
    }

    *buf = 67109378;
    v16 = v6;
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Collecting RT data with %d predictions %s battery", buf, 0x12u);
  }

  [(GEOLocation *)self->_location timestamp];
  v8 = [NSNumber numberWithDouble:?];
  [(GEOLocation *)self->_location coordinate];
  v9 = [NSNumber numberWithDouble:?];
  [(GEOLocation *)self->_location coordinate];
  v11 = [NSNumber numberWithDouble:v10];
  [(GEOLocation *)self->_location horizontalAccuracy];
  v12 = [NSNumber numberWithDouble:?];
  [(GEOLocation *)self->_location verticalAccuracy];
  v13 = [NSNumber numberWithDouble:?];
  v14 = [NSNumber numberWithInt:[(GEOLocation *)self->_location altitude]];
  [GEOAPPortal capturePoiBusynessDataWithTimestamp:v8 GEOLatLng_lat:v9 GEOLatLng_lng:v11 horizontalAccuracy:v12 verticalAccuracy:v13 altitude:v14 poiPredictions:self->_poiPredictionData];
}

- (void)processBluePOI
{
  if (self->_bpEnabled)
  {
    v3 = objc_alloc_init(MCPOIBusynessBluePOIAnalytics);
    dispatch_group_enter(self->_reportingGroup);
    v4 = [(MCPOIBusynessData *)self->_poiBusynessData visit];

    [(MCPOIBusynessBluePOIAnalytics *)v3 setIsInVisit:v4 != 0];
    v5 = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "No valid visists, calling fetchInferedPlaceNames:", buf, 2u);
    }

    v6 = +[MCPOIBusynessLocationManager sharedLocationManager];
    eventCollectorQueue = self->_eventCollectorQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000CF18;
    v9[3] = &unk_10001D978;
    v9[4] = self;
    v10 = v3;
    v8 = v3;
    [v6 fetchInferedPlaceNames:v4 != 0 analytics:v8 completionQueue:eventCollectorQueue completion:v9];
  }

  else
  {

    [(MCPOIBusynessEventCollector *)self collectRealTime];
  }
}

- (void)collectBluePOI:(id)a3 analytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_eventCollectorQueue);
  v8 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v15 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Resolving muids for %d BluePOI inferences", buf, 8u);
  }

  v9 = objc_alloc_init(MCRoutineHelper);
  eventCollectorQueue = self->_eventCollectorQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D318;
  v12[3] = &unk_10001D9C8;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [(MCRoutineHelper *)v9 findMUIDsForPlaceInferences:v6 analytics:v11 completionQueue:eventCollectorQueue completionHandler:v12];
}

- (void)processDifferentialPrivacy
{
  if (self->_dpEnabled)
  {
    v8[9] = v2;
    v8[10] = v3;
    if (sub_10000C1E0())
    {
      dispatch_group_enter(self->_reportingGroup);
      location = self->_location;
      v6 = GEOConfigGetArray();
      eventCollectorQueue = self->_eventCollectorQueue;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000D764;
      v8[3] = &unk_10001D9F0;
      v8[4] = self;
      [GEOPOIBusynessHelper generateDPPOIBusynessForLocation:location radii:v6 workQueue:eventCollectorQueue result:v8];
    }
  }
}

- (void)collectDifferentialPrivacy:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventCollectorQueue);
  [MCPOIBusynessAnalytics report:3];
  v5 = [GEOPOIBusynessHelper dpClientVersionHashWithMCPOIBusynessVersion:@"1"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v6 = qword_100023348;
  v23 = qword_100023348;
  if (!qword_100023348)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000DDB8;
    v18 = &unk_10001D900;
    v19 = &v20;
    v7 = sub_10000C3A4();
    v21[3] = dlsym(v7, "kDPMetadataVersionHash");
    qword_100023348 = *(v19[1] + 24);
    v6 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v6)
  {
    sub_10000FA5C();
  }

  v24 = *v6;
  v25 = v5;
  v8 = v24;
  v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DB74;
  v12[3] = &unk_10001DA18;
  v13 = v9;
  v14 = v5;
  v10 = v5;
  v11 = v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v12];
}

@end