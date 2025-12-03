@interface GEORequestCounterServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (void)addCacheResultWithRequest:(id)request;
- (void)clearWithMessage:(id)message;
- (void)externalCountWithRequest:(id)request;
- (void)externalIncrementWithRequest:(id)request;
- (void)fetchRoutePreloadSessionsWithMessage:(id)message;
- (void)getCacheResultsWithRequest:(id)request;
- (void)incrementWithMessage:(id)message;
- (void)readProactiveTileDownloadsWithMessage:(id)message;
- (void)readRequestLogsWithMessage:(id)message;
- (void)readRequestsWithMessage:(id)message;
- (void)recordRoutePreloadSessionWithMessage:(id)message;
- (void)runBackgroundTask:(id)task;
- (void)setCountersEnabledWithMessage:(id)message;
@end

@implementation GEORequestCounterServer

- (void)getCacheResultsWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEORequestCounterCacheGetResultsReply alloc] initWithRequest:requestCopy];
  startTime = [requestCopy startTime];
  if (startTime)
  {
  }

  else
  {
    endTime = [requestCopy endTime];

    if (!endTime)
    {
      goto LABEL_12;
    }
  }

  v7 = [NSDateInterval alloc];
  startTime2 = [requestCopy startTime];
  v9 = startTime2;
  if (!startTime2)
  {
    v9 = +[NSDate distantPast];
  }

  endTime2 = [requestCopy endTime];
  if (endTime2)
  {
    endTime = [v7 initWithStartDate:v9 endDate:endTime2];
  }

  else
  {
    v11 = +[NSDate distantFuture];
    endTime = [v7 initWithStartDate:v9 endDate:v11];
  }

  if (!startTime2)
  {
  }

LABEL_12:
  v12 = +[GEORequestCounter sharedCounter];
  mode = [requestCopy mode];
  appId = [requestCopy appId];
  requestKindRaw = [requestCopy requestKindRaw];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000552C;
  v17[3] = &unk_1000824B8;
  v18 = v4;
  v16 = v4;
  [v12 placeCacheGetCounts:mode forApp:appId inTimeRange:endTime ofType:requestKindRaw handler:v17];
}

- (void)addCacheResultWithRequest:(id)request
{
  requestCopy = request;
  v8 = +[GEORequestCounter sharedCounter];
  result = [requestCopy result];
  appId = [requestCopy appId];
  requestKindRaw = [requestCopy requestKindRaw];
  timestamp = [requestCopy timestamp];

  [v8 placeCacheRegisterCacheResult:result forApp:appId requestType:requestKindRaw timestamp:timestamp];
}

- (void)externalCountWithRequest:(id)request
{
  requestCopy = request;
  v4 = +[GEORequestCounterPersistence sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005798;
  v6[3] = &unk_100083610;
  v7 = requestCopy;
  v5 = requestCopy;
  [v4 externalRequestsCount:v6];
}

- (void)externalIncrementWithRequest:(id)request
{
  info = [request info];
  v3 = +[GEORequestCounterPersistence sharedInstance];
  appId = [info appId];
  startTime = [info startTime];
  endTime = [info endTime];
  xmitBytes = [info xmitBytes];
  recvBytes = [info recvBytes];
  usedInterface = [info usedInterface];
  requestType = [info requestType];
  requestSubtype = [info requestSubtype];
  source = [info source];
  [v3 incrementExternalForApp:appId startTime:startTime endTime:endTime xmitBytes:xmitBytes recvBytes:recvBytes usedInterfaces:usedInterface requestType:requestType requestSubtype:requestSubtype source:source];
}

- (void)fetchRoutePreloadSessionsWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"since"];
  v6 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v5 unsignedIntegerValue]);

  v7 = +[GEORequestCounter sharedCounter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005A7C;
  v10[3] = &unk_100083610;
  v11 = messageCopy;
  v8 = messageCopy;
  v9 = +[GEOXPCConnection defaultXPCServerConnectionQueue];
  [v7 fetchRoutePreloadSessionsFrom:v6 completion:v10 completionQueue:v9];
}

- (void)recordRoutePreloadSessionWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"start"];
  v23 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v5 unsignedIntegerValue]);

  userInfo2 = [messageCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:@"end"];
  v8 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v7 unsignedIntegerValue]);

  userInfo3 = [messageCopy userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:@"transport_type"];
  integerValue = [v10 integerValue];

  userInfo4 = [messageCopy userInfo];
  v13 = [userInfo4 objectForKeyedSubscript:@"tiles_preloaded"];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  userInfo5 = [messageCopy userInfo];
  v16 = [userInfo5 objectForKeyedSubscript:@"tiles_used"];
  unsignedIntegerValue2 = [v16 unsignedIntegerValue];

  userInfo6 = [messageCopy userInfo];

  v19 = [userInfo6 objectForKeyedSubscript:@"tiles_missed"];
  unsignedIntegerValue3 = [v19 unsignedIntegerValue];

  v21 = +[GEORequestCounter sharedCounter];
  v22 = [[NSDateInterval alloc] initWithStartDate:v23 endDate:v8];
  [v21 recordRoutePreloadSessionAt:v22 transportType:integerValue tilesPreloaded:unsignedIntegerValue tilesUsed:unsignedIntegerValue2 tilesMissed:unsignedIntegerValue3];
}

- (void)readProactiveTileDownloadsWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"since"];

  v6 = +[GEORequestCounter sharedCounter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005E68;
  v8[3] = &unk_1000824B8;
  v9 = messageCopy;
  v7 = messageCopy;
  [v6 readProactiveTileDownloadsSince:v5 handler:v8];
}

- (void)runBackgroundTask:(id)task
{
  taskCopy = task;
  identifier = [taskCopy identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  identifier2 = [taskCopy identifier];
  v7 = [identifier2 isEqualToString:GEORequestCounterPowerLoggerBackgroundTaskIdentifier];

  if (v7)
  {
    v8 = +[GEORequestCountPowerLogger sharedInstance];
    [v8 flushToPowerLog];

    [taskCopy setTaskCompleted];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GEORequestCounterServer;
    [(GEORequestCounterServer *)&v9 runBackgroundTask:taskCopy];
  }
}

- (void)clearWithMessage:(id)message
{
  messageCopy = message;
  v3 = +[GEORequestCounter sharedCounter];
  [v3 clearCounters];

  [messageCopy sendReply:0];
}

- (void)readRequestLogsWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"startTime"];
  v7 = [userInfo objectForKeyedSubscript:@"endTime"];
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
  v17 = messageCopy;
  v14 = messageCopy;
  [v13 readRequestLogsDuring:v10 handler:v16];
}

- (void)readRequestsWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"startTime"];
  v7 = [userInfo objectForKeyedSubscript:@"endTime"];
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
  v17 = messageCopy;
  v14 = messageCopy;
  [v13 readRequestsPerAppDuring:v10 handler:v16];
}

- (void)incrementWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v37 = [userInfo objectForKeyedSubscript:@"startTime"];
  v5 = [userInfo objectForKeyedSubscript:@"endTime"];
  v6 = [userInfo objectForKeyedSubscript:@"appID"];
  v7 = [userInfo objectForKeyedSubscript:@"xmitB"];
  longLongValue = [v7 longLongValue];

  v8 = [userInfo objectForKeyedSubscript:@"recvB"];
  longLongValue2 = [v8 longLongValue];

  v9 = [userInfo objectForKeyedSubscript:@"reqType"];
  intValue = [v9 intValue];

  v11 = [userInfo objectForKeyedSubscript:@"cohortID"];
  v12 = [userInfo objectForKeyedSubscript:@"reqMode"];
  intValue2 = [v12 intValue];

  LODWORD(v13) = intValue & 0x7F00;
  v14 = (intValue >> 8) & 0x7F;
  v15 = 1 << (BYTE1(intValue) & 0x7F);
  if ((v15 & 0xC05) != 0)
  {
    v16 = intValue;
  }

  else
  {
    v16 = 0;
  }

  if ((v15 & 0xAA) != 0)
  {
    v17 = intValue << 32;
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
  v19 = [userInfo objectForKeyedSubscript:@"error"];
  v33 = _geo_NSErrorFromDictionaryRepresentationCopy();

  v20 = [userInfo objectForKeyedSubscript:@"iface"];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  v22 = [userInfo objectForKeyedSubscript:@"reqResult"];
  unsignedIntegerValue2 = [v22 unsignedIntegerValue];

  v24 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138478595;
    v39 = v25;
    v40 = 2113;
    v41 = v6;
    v42 = 1024;
    v43 = intValue;
    v44 = 1024;
    v45 = unsignedIntegerValue2;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{private}@ got appID=%{private}@ type=0x%x result=%hhu", buf, 0x22u);
  }

  v26 = +[GEORequestCountPowerLogger sharedInstance];
  [v26 incrementCountForClient:v6 requestType:intValue];

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
  [v27 reportResponse:v30 | v31 usedInterfaces:unsignedIntegerValue requestMode:intValue2 forCohortId:v28 duration:v33 error:?];

  v29 = +[GEORequestCounterPersistence sharedInstance];
  [v29 incrementForApp:v6 startTime:v37 endTime:v5 requestType:intValue result:unsignedIntegerValue2 xmitBytes:longLongValue recvBytes:longLongValue2 usedInterfaces:unsignedIntegerValue withCompletion:0];

  [messageCopy sendReply:0];
}

- (void)setCountersEnabledWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v6 BOOLValue];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = v9;
    v11 = "NO";
    if (bOOLValue)
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
  [v12 setCountersEnabled:bOOLValue];

  [messageCopy sendReply:0];
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 1561)
  {
    if (v13 > 2614)
    {
      switch(v13)
      {
        case 2615:
          if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D90, 0))
          {
            v25 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
            v16 = v25;
            if (v25)
            {
              [v25 setSignpostId:id];
              [(GEORequestCounterServer *)self fetchRoutePreloadSessionsWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
        case 2617:
          if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D78, 0))
          {
            v31 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
            v16 = v31;
            if (v31)
            {
              [v31 setSignpostId:id];
              [(GEORequestCounterServer *)self recordRoutePreloadSessionWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
        case 2690:
          if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D60, 0))
          {
            v20 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
            v16 = v20;
            if (v20)
            {
              [v20 setSignpostId:id];
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
          if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D30, 0))
          {
            v22 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
            v16 = v22;
            if (v22)
            {
              [v22 setSignpostId:id];
              [(GEORequestCounterServer *)self readRequestLogsWithMessage:v16];
              goto LABEL_48;
            }

            goto LABEL_52;
          }

          goto LABEL_50;
        case 1800:
          v27 = objc_opt_class();
          v28 = sub_100001388(@"requestCounter", messageCopy, objectCopy, v27, peerCopy);
          v16 = v28;
          if (v28)
          {
            [v28 setSignpostId:id];
            [(GEORequestCounterServer *)self externalIncrementWithRequest:v16];
            goto LABEL_48;
          }

          goto LABEL_52;
        case 1866:
          if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D00, 0))
          {
            v17 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
            v16 = v17;
            if (v17)
            {
              [v17 setSignpostId:id];
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
        v24 = sub_100001388(@"requestCounter", messageCopy, objectCopy, v23, peerCopy);
        v16 = v24;
        if (v24)
        {
          [v24 setSignpostId:id];
          [(GEORequestCounterServer *)self externalCountWithRequest:v16];
          goto LABEL_48;
        }

        goto LABEL_52;
      case 1404:
        v29 = objc_opt_class();
        v30 = sub_100001388(@"requestCounter", messageCopy, objectCopy, v29, peerCopy);
        v16 = v30;
        if (v30)
        {
          [v30 setSignpostId:id];
          [(GEORequestCounterServer *)self addCacheResultWithRequest:v16];
          goto LABEL_48;
        }

        goto LABEL_52;
      case 1542:
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088DA8, 1))
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"requestCounter", messageCopy, objectCopy, v18, peerCopy);
          v16 = v19;
          if (v19)
          {
            [v19 setSignpostId:id];
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
        if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D48, 0))
        {
          v21 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
          v16 = v21;
          if (v21)
          {
            [v21 setSignpostId:id];
            [(GEORequestCounterServer *)self clearWithMessage:v16];
            goto LABEL_48;
          }

          goto LABEL_52;
        }

        goto LABEL_50;
      case 965:
        v26 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v26;
        if (v26)
        {
          [v26 setSignpostId:id];
          [(GEORequestCounterServer *)self incrementWithMessage:v16];
          goto LABEL_48;
        }

        goto LABEL_52;
      case 1272:
        if (sub_100001B78(peerCopy, objectCopy, @"requestCounter", messageCopy, &off_100088D18, 0))
        {
          v15 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
          v16 = v15;
          if (v15)
          {
            [v15 setSignpostId:id];
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