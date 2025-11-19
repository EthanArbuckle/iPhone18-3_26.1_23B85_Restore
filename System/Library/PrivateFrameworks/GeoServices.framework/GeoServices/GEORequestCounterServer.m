@interface GEORequestCounterServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (void)addCacheResultWithRequest:(id)a3;
- (void)clearWithMessage:(id)a3;
- (void)externalCountWithRequest:(id)a3;
- (void)externalIncrementWithRequest:(id)a3;
- (void)fetchRoutePreloadSessionsWithMessage:(id)a3;
- (void)getCacheResultsWithRequest:(id)a3;
- (void)incrementWithMessage:(id)a3;
- (void)readProactiveTileDownloadsWithMessage:(id)a3;
- (void)readRequestLogsWithMessage:(id)a3;
- (void)readRequestsWithMessage:(id)a3;
- (void)recordRoutePreloadSessionWithMessage:(id)a3;
- (void)runBackgroundTask:(id)a3;
- (void)setCountersEnabledWithMessage:(id)a3;
@end

@implementation GEORequestCounterServer

- (void)getCacheResultsWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEORequestCounterCacheGetResultsReply alloc] initWithRequest:v3];
  v5 = [v3 startTime];
  if (v5)
  {
  }

  else
  {
    v6 = [v3 endTime];

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v7 = [NSDateInterval alloc];
  v8 = [v3 startTime];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSDate distantPast];
  }

  v10 = [v3 endTime];
  if (v10)
  {
    v6 = [v7 initWithStartDate:v9 endDate:v10];
  }

  else
  {
    v11 = +[NSDate distantFuture];
    v6 = [v7 initWithStartDate:v9 endDate:v11];
  }

  if (!v8)
  {
  }

LABEL_12:
  v12 = +[GEORequestCounter sharedCounter];
  v13 = [v3 mode];
  v14 = [v3 appId];
  v15 = [v3 requestKindRaw];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000552C;
  v17[3] = &unk_1000824B8;
  v18 = v4;
  v16 = v4;
  [v12 placeCacheGetCounts:v13 forApp:v14 inTimeRange:v6 ofType:v15 handler:v17];
}

- (void)addCacheResultWithRequest:(id)a3
{
  v3 = a3;
  v8 = +[GEORequestCounter sharedCounter];
  v4 = [v3 result];
  v5 = [v3 appId];
  v6 = [v3 requestKindRaw];
  v7 = [v3 timestamp];

  [v8 placeCacheRegisterCacheResult:v4 forApp:v5 requestType:v6 timestamp:v7];
}

- (void)externalCountWithRequest:(id)a3
{
  v3 = a3;
  v4 = +[GEORequestCounterPersistence sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005798;
  v6[3] = &unk_100083610;
  v7 = v3;
  v5 = v3;
  [v4 externalRequestsCount:v6];
}

- (void)externalIncrementWithRequest:(id)a3
{
  v13 = [a3 info];
  v3 = +[GEORequestCounterPersistence sharedInstance];
  v4 = [v13 appId];
  v5 = [v13 startTime];
  v6 = [v13 endTime];
  v7 = [v13 xmitBytes];
  v8 = [v13 recvBytes];
  v9 = [v13 usedInterface];
  v10 = [v13 requestType];
  v11 = [v13 requestSubtype];
  v12 = [v13 source];
  [v3 incrementExternalForApp:v4 startTime:v5 endTime:v6 xmitBytes:v7 recvBytes:v8 usedInterfaces:v9 requestType:v10 requestSubtype:v11 source:v12];
}

- (void)fetchRoutePreloadSessionsWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"since"];
  v6 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v5 unsignedIntegerValue]);

  v7 = +[GEORequestCounter sharedCounter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005A7C;
  v10[3] = &unk_100083610;
  v11 = v3;
  v8 = v3;
  v9 = +[GEOXPCConnection defaultXPCServerConnectionQueue];
  [v7 fetchRoutePreloadSessionsFrom:v6 completion:v10 completionQueue:v9];
}

- (void)recordRoutePreloadSessionWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"start"];
  v23 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v5 unsignedIntegerValue]);

  v6 = [v3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"end"];
  v8 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v7 unsignedIntegerValue]);

  v9 = [v3 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"transport_type"];
  v11 = [v10 integerValue];

  v12 = [v3 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"tiles_preloaded"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v3 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"tiles_used"];
  v17 = [v16 unsignedIntegerValue];

  v18 = [v3 userInfo];

  v19 = [v18 objectForKeyedSubscript:@"tiles_missed"];
  v20 = [v19 unsignedIntegerValue];

  v21 = +[GEORequestCounter sharedCounter];
  v22 = [[NSDateInterval alloc] initWithStartDate:v23 endDate:v8];
  [v21 recordRoutePreloadSessionAt:v22 transportType:v11 tilesPreloaded:v14 tilesUsed:v17 tilesMissed:v20];
}

- (void)readProactiveTileDownloadsWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"since"];

  v6 = +[GEORequestCounter sharedCounter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005E68;
  v8[3] = &unk_1000824B8;
  v9 = v3;
  v7 = v3;
  [v6 readProactiveTileDownloadsSince:v5 handler:v8];
}

- (void)runBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:GEORequestCounterPowerLoggerBackgroundTaskIdentifier];

  if (v7)
  {
    v8 = +[GEORequestCountPowerLogger sharedInstance];
    [v8 flushToPowerLog];

    [v4 setTaskCompleted];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GEORequestCounterServer;
    [(GEORequestCounterServer *)&v9 runBackgroundTask:v4];
  }
}

- (void)clearWithMessage:(id)a3
{
  v4 = a3;
  v3 = +[GEORequestCounter sharedCounter];
  [v3 clearCounters];

  [v4 sendReply:0];
}

- (void)readRequestLogsWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"startTime"];
  v7 = [v5 objectForKeyedSubscript:@"endTime"];
  v8 = [NSDateInterval alloc];
  v9 = v6;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSDate distantPast];
    if (v7)
    {
LABEL_3:
      v10 = [v8 initWithStartDate:v9 endDate:v7];
      if (v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v15 = +[NSDate distantFuture];
  v10 = [v8 initWithStartDate:v9 endDate:v15];

  if (!v6)
  {
LABEL_4:
  }

LABEL_5:
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138478083;
    v19 = v12;
    v20 = 2113;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{private}@ got in %{private}@", buf, 0x16u);
  }

  v13 = +[GEORequestCounter sharedCounter];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100006320;
  v16[3] = &unk_1000824B8;
  v17 = v4;
  v14 = v4;
  [v13 readRequestLogsDuring:v10 handler:v16];
}

- (void)readRequestsWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"startTime"];
  v7 = [v5 objectForKeyedSubscript:@"endTime"];
  v8 = [NSDateInterval alloc];
  v9 = v6;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSDate distantPast];
    if (v7)
    {
LABEL_3:
      v10 = [v8 initWithStartDate:v9 endDate:v7];
      if (v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v15 = +[NSDate distantFuture];
  v10 = [v8 initWithStartDate:v9 endDate:v15];

  if (!v6)
  {
LABEL_4:
  }

LABEL_5:
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138478083;
    v19 = v12;
    v20 = 2113;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{private}@ got in %{private}@", buf, 0x16u);
  }

  v13 = +[GEORequestCounter sharedCounter];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100006694;
  v16[3] = &unk_1000816D8;
  v17 = v4;
  v14 = v4;
  [v13 readRequestsPerAppDuring:v10 handler:v16];
}

- (void)incrementWithMessage:(id)a3
{
  v36 = a3;
  v4 = [v36 userInfo];
  v37 = [v4 objectForKeyedSubscript:@"startTime"];
  v5 = [v4 objectForKeyedSubscript:@"endTime"];
  v6 = [v4 objectForKeyedSubscript:@"appID"];
  v7 = [v4 objectForKeyedSubscript:@"xmitB"];
  v35 = [v7 longLongValue];

  v8 = [v4 objectForKeyedSubscript:@"recvB"];
  v34 = [v8 longLongValue];

  v9 = [v4 objectForKeyedSubscript:@"reqType"];
  v10 = [v9 intValue];

  v11 = [v4 objectForKeyedSubscript:@"cohortID"];
  v12 = [v4 objectForKeyedSubscript:@"reqMode"];
  v32 = [v12 intValue];

  LODWORD(v13) = v10 & 0x7F00;
  v14 = (v10 >> 8) & 0x7F;
  v15 = 1 << (BYTE1(v10) & 0x7F);
  if ((v15 & 0xC05) != 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  if ((v15 & 0xAA) != 0)
  {
    v17 = v10 << 32;
  }

  else
  {
    LODWORD(v13) = v16;
    v17 = 0;
  }

  if (v14 <= 0xB)
  {
    v13 = v13;
  }

  else
  {
    v13 = 0;
  }

  v31 = v13;
  if (v14 <= 0xB)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v30 = v18;
  v19 = [v4 objectForKeyedSubscript:@"error"];
  v33 = _geo_NSErrorFromDictionaryRepresentationCopy();

  v20 = [v4 objectForKeyedSubscript:@"iface"];
  v21 = [v20 unsignedIntegerValue];

  v22 = [v4 objectForKeyedSubscript:@"reqResult"];
  v23 = [v22 unsignedIntegerValue];

  v24 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138478595;
    v39 = v25;
    v40 = 2113;
    v41 = v6;
    v42 = 1024;
    v43 = v10;
    v44 = 1024;
    v45 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{private}@ got appID=%{private}@ type=0x%x result=%hhu", buf, 0x22u);
  }

  v26 = +[GEORequestCountPowerLogger sharedInstance];
  [v26 incrementCountForClient:v6 requestType:v10];

  v27 = +[GEOOfflineStateManager shared];
  if ([v11 length])
  {
    v28 = v11;
  }

  else
  {
    v28 = v6;
  }

  [v5 timeIntervalSinceDate:v37];
  [v27 reportResponse:v30 | v31 usedInterfaces:v21 requestMode:v32 forCohortId:v28 duration:v33 error:?];

  v29 = +[GEORequestCounterPersistence sharedInstance];
  [v29 incrementForApp:v6 startTime:v37 endTime:v5 requestType:v10 result:v23 xmitBytes:v35 recvBytes:v34 usedInterfaces:v21 withCompletion:0];

  [v36 sendReply:0];
}

- (void)setCountersEnabledWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"enabled"];
  v7 = [v6 BOOLValue];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = v9;
    v11 = "NO";
    if (v7)
    {
      v11 = "YES";
    }

    v13 = 138478083;
    v14 = v9;
    v15 = 2081;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{private}@ got enabled=%{private}s", &v13, 0x16u);
  }

  v12 = +[GEORequestCounter sharedCounter];
  [v12 setCountersEnabled:v7];

  [v4 sendReply:0];
}

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 > 1561)
  {
    if (v13 > 2614)
    {
      switch(v13)
      {
        case 2615:
          if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D90, 0))
          {
            v25 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v25;
            if (v25)
            {
              [v25 setSignpostId:a6];
              [(GEORequestCounterServer *)self fetchRoutePreloadSessionsWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
        case 2617:
          if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D78, 0))
          {
            v31 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v31;
            if (v31)
            {
              [v31 setSignpostId:a6];
              [(GEORequestCounterServer *)self recordRoutePreloadSessionWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
        case 2690:
          if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D60, 0))
          {
            v20 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v20;
            if (v20)
            {
              [v20 setSignpostId:a6];
              [(GEORequestCounterServer *)self readProactiveTileDownloadsWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
      }
    }

    else
    {
      switch(v13)
      {
        case 1562:
          if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D30, 0))
          {
            v22 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v22;
            if (v22)
            {
              [v22 setSignpostId:a6];
              [(GEORequestCounterServer *)self readRequestLogsWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
        case 1800:
          v27 = objc_opt_class();
          v28 = sub_100001388(@"requestCounter", v10, v11, v27, v12);
          v16 = v28;
          if (v28)
          {
            [v28 setSignpostId:a6];
            [(GEORequestCounterServer *)self externalIncrementWithRequest:v16];
            goto LABEL_48;
          }

          goto LABEL_52;
        case 1866:
          if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D00, 0))
          {
            v17 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v17;
            if (v17)
            {
              [v17 setSignpostId:a6];
              [(GEORequestCounterServer *)self setCountersEnabledWithMessage:v16];
              goto LABEL_48;
            }

LABEL_52:
            v14 = 0;
            goto LABEL_49;
          }

LABEL_50:
          v14 = 1;
          break;
      }
    }
  }

  else if (v13 > 1387)
  {
    switch(v13)
    {
      case 1388:
        v23 = objc_opt_class();
        v24 = sub_100001388(@"requestCounter", v10, v11, v23, v12);
        v16 = v24;
        if (v24)
        {
          [v24 setSignpostId:a6];
          [(GEORequestCounterServer *)self externalCountWithRequest:v16];
          goto LABEL_48;
        }

        goto LABEL_52;
      case 1404:
        v29 = objc_opt_class();
        v30 = sub_100001388(@"requestCounter", v10, v11, v29, v12);
        v16 = v30;
        if (v30)
        {
          [v30 setSignpostId:a6];
          [(GEORequestCounterServer *)self addCacheResultWithRequest:v16];
          goto LABEL_48;
        }

        goto LABEL_52;
      case 1542:
        v14 = 1;
        if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088DA8, 1))
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"requestCounter", v10, v11, v18, v12);
          v16 = v19;
          if (v19)
          {
            [v19 setSignpostId:a6];
            [(GEORequestCounterServer *)self getCacheResultsWithRequest:v16];
            goto LABEL_48;
          }

          goto LABEL_52;
        }

        break;
    }
  }

  else
  {
    switch(v13)
    {
      case 519:
        if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D48, 0))
        {
          v21 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v21;
          if (v21)
          {
            [v21 setSignpostId:a6];
            [(GEORequestCounterServer *)self clearWithMessage:v16];
            goto LABEL_48;
          }

          goto LABEL_52;
        }

        goto LABEL_50;
      case 965:
        v26 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
        v16 = v26;
        if (v26)
        {
          [v26 setSignpostId:a6];
          [(GEORequestCounterServer *)self incrementWithMessage:v16];
          goto LABEL_48;
        }

        goto LABEL_52;
      case 1272:
        if (sub_100001B78(v12, v11, @"requestCounter", v10, &off_100088D18, 0))
        {
          v15 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v15;
          if (v15)
          {
            [v15 setSignpostId:a6];
            [(GEORequestCounterServer *)self readRequestsWithMessage:v16];
LABEL_48:
            v14 = 1;
LABEL_49:

            break;
          }

          goto LABEL_52;
        }

        goto LABEL_50;
    }
  }

  return v14;
}

@end