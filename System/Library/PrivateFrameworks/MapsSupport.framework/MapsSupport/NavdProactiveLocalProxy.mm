@interface NavdProactiveLocalProxy
- (NavdProactiveLocalProxy)init;
- (id)_getLastLocationSafely;
- (id)_q_createLocationOperationWithLocationFuture:(id)a3;
- (void)_createActivityForNextRefreshInTimeInterval:(double)a3;
- (void)_processEntriesBeforeTimeStamp:(double)a3 withLocation:(id)a4 osTransaction:(id)a5;
- (void)_q_ProcessEntriesBeforeTimeStamp:(double)a3 withLocation:(id)a4 osTransaction:(id)a5;
- (void)_q_finishProcessingEntriesWithOsTransaction:(id)a3;
- (void)_q_startProcessingEntries;
- (void)_refreshCacheEntriesIfNeededOrForced:(BOOL)a3 osTransaction:(id)a4;
- (void)_setLastLocationSafely:(id)a3;
- (void)didPostUINotification:(unint64_t)a3 forDestination:(id)a4 fromClient:(id)a5;
- (void)forceCacheRefresh;
- (void)locationLeecher:(id)a3 errorLeechingLocation:(id)a4;
- (void)locationLeecher:(id)a3 receivedLocation:(id)a4;
- (void)nextRefreshActivityFired;
- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)a3 client:(id)a4;
- (void)requestRefreshForPlannedDestination:(id)a3 client:(id)a4;
- (void)startMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 handler:(id)a6;
- (void)statusWithCallback:(id)a3;
- (void)stopMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5;
@end

@implementation NavdProactiveLocalProxy

- (id)_getLastLocationSafely
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000267D0;
  v10 = sub_1000267E0;
  v11 = 0;
  lastLocationQueue = self->_lastLocationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001940;
  v5[3] = &unk_100065520;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lastLocationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NavdProactiveLocalProxy)init
{
  v39.receiver = self;
  v39.super_class = NavdProactiveLocalProxy;
  v2 = [(NavdProactiveLocalProxy *)&v39 init];
  if (v2)
  {
    v3 = +[NSDate date];
    startedListeningTime = v2->_startedListeningTime;
    v2->_startedListeningTime = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    suggestionsHandlers = v2->_suggestionsHandlers;
    v2->_suggestionsHandlers = v5;

    v7 = objc_alloc_init(NSOperationQueue);
    cacheOperationQueue = v2->_cacheOperationQueue;
    v2->_cacheOperationQueue = v7;

    [(NSOperationQueue *)v2->_cacheOperationQueue setMaxConcurrentOperationCount:1];
    v9 = [[NavdTTLCache alloc] initWithCacheOperationQueue:v2->_cacheOperationQueue localProxy:v2];
    cache = v2->_cache;
    v2->_cache = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    pendingRouteHypothesisUpdateHandlers = v2->_pendingRouteHypothesisUpdateHandlers;
    v2->_pendingRouteHypothesisUpdateHandlers = v11;

    v13 = +[NavdLocationManager sharedInstance];
    locationManager = v2->_locationManager;
    v2->_locationManager = v13;

    v15 = +[NavdLocationLeecher sharedLeecher];
    locationLeecher = v2->_locationLeecher;
    v2->_locationLeecher = v15;

    [(NavdLocationLeecher *)v2->_locationLeecher addObserver:v2];
    v2->_numberOfTimesRepeatedProcessing = 0;
    v17 = objc_alloc_init(NavdServerFormattedStringFormatter);
    [GEORouteHypothesisMonitor setServerFormattedStringFormatter:v17];
    v18 = objc_alloc_init(NavdRouteHypothesisUserPreferencesProvider);
    [GEORouteHypothesisMonitor setUserPreferencesProvider:v18];
    v19 = +[MNFilePaths navdCacheDirectoryPath];
    v20 = [v19 stringByAppendingPathComponent:@"working"];
    launchdKeepAliveFile = v2->_launchdKeepAliveFile;
    v2->_launchdKeepAliveFile = v20;

    v22 = [(NavdTTLCache *)v2->_cache count];
    v23 = +[NSFileManager defaultManager];
    v24 = v23;
    v25 = v2->_launchdKeepAliveFile;
    if (v22)
    {
      [v23 createFileAtPath:v25 contents:0 attributes:0];
    }

    else
    {
      [v23 removeItemAtPath:v25 error:0];
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v2 selector:"forceCacheRefresh" name:NSSystemClockDidChangeNotification object:0];

    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = v2->_locationManager;
      *buf = 138477827;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Local proxy initialized. Location manager: %{private}@", buf, 0xCu);
    }

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("com.apple.navd.lastLocationQueue", v29);
    lastLocationQueue = v2->_lastLocationQueue;
    v2->_lastLocationQueue = v30;

    [(NavdLocationLeecher *)v2->_locationLeecher startLeeching];
    v32 = +[BGSystemTaskScheduler sharedScheduler];
    v33 = v2->_lastLocationQueue;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100026484;
    v37[3] = &unk_100065158;
    v34 = v2;
    v38 = v34;
    [v32 registerForTaskWithIdentifier:@"com.apple.navd.nextValueRefreshActivity" usingQueue:v33 launchHandler:v37];

    v35 = v34;
  }

  return v2;
}

- (void)statusWithCallback:(id)a3
{
  v4 = a3;
  if (self->_valueRefreshTimeStamp == 0.0)
  {
    v6 = @"None";
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v6 = [NSDateFormatter localizedStringFromDate:v5 dateStyle:1 timeStyle:2];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002661C;
  v10[3] = &unk_100066078;
  v11 = v6;
  v12 = v4;
  v10[4] = self;
  v7 = v6;
  v8 = v4;
  v9 = [NSBlockOperation blockOperationWithBlock:v10];
  [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v9];
}

- (void)_setLastLocationSafely:(id)a3
{
  v4 = a3;
  lastLocationQueue = self->_lastLocationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000267BC;
  v7[3] = &unk_1000650C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lastLocationQueue, v7);
}

- (void)_refreshCacheEntriesIfNeededOrForced:(BOOL)a3 osTransaction:(id)a4
{
  if (a3)
  {
    v5 = a4;
    AbsoluteTime = CFDateGetAbsoluteTime(+[NSDate distantFuture]);
  }

  else
  {
    v7 = a4;
    AbsoluteTime = CFAbsoluteTimeGetCurrent();
  }

  [(NavdProactiveLocalProxy *)self _processEntriesBeforeTimeStamp:a4 osTransaction:AbsoluteTime];
}

- (id)_q_createLocationOperationWithLocationFuture:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSBlockOperation);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026928;
  v8[3] = &unk_1000650C0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v5 addExecutionBlock:v8];

  return v5;
}

- (void)_q_ProcessEntriesBeforeTimeStamp:(double)a3 withLocation:(id)a4 osTransaction:(id)a5
{
  v8 = a4;
  v9 = a5;
  v38 = DefaultLoggingSubsystem;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
    v12 = [NSDateFormatter localizedStringFromDate:v11 dateStyle:1 timeStyle:3];
    *buf = 138478083;
    v63 = v12;
    v64 = 2113;
    v65 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Processing all entries before %{private}@ (with location %{private}@)", buf, 0x16u);
  }

  [(NavdProactiveLocalProxy *)self _q_startProcessingEntries];
  v13 = objc_alloc_init(NavdLocationFuture);
  v14 = v13;
  v40 = v9;
  v41 = v8;
  if (v8)
  {
    [(NavdLocationFuture *)v13 fulfillWithLocation:v8];
    [(NavdProactiveLocalProxy *)self _setLastLocationSafely:v8];
    v39 = 0;
  }

  else
  {
    v39 = [(NavdProactiveLocalProxy *)self _q_createLocationOperationWithLocationFuture:v13];
  }

  v15 = v14;
  v16 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = self->_cache;
  v18 = [(NavdTTLCache *)v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
  v42 = v15;
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v55 + 1) + 8 * i) blockIfShouldUpdateForTimestamp:v15 locationFuture:a3];
        v23 = v22;
        if (v22)
        {
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_1000271B4;
          v53[3] = &unk_1000660A0;
          v54 = v22;
          v24 = [NSBlockOperation blockOperationWithBlock:v53];
          [v16 addObject:v24];

          v15 = v42;
        }
      }

      v19 = [(NavdTTLCache *)v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v19);
  }

  if (v39)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v49 + 1) + 8 * j) addDependency:v39];
        }

        v27 = [v25 countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v27);
    }

    v15 = v42;
  }

  v30 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = [v16 count];
    *buf = 134217984;
    v63 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%lu entries to process", buf, 0xCu);
  }

  if ([v16 count])
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000271C4;
    v47[3] = &unk_1000650C0;
    v47[4] = self;
    v48 = v40;
    v32 = [NSBlockOperation blockOperationWithBlock:v47];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v16;
    v34 = [v33 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v44;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [v32 addDependency:*(*(&v43 + 1) + 8 * k)];
        }

        v35 = [v33 countByEnumeratingWithState:&v43 objects:v59 count:16];
      }

      while (v35);
    }

    v15 = v42;
    if (v39)
    {
      [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v39];
    }

    [(NSOperationQueue *)self->_cacheOperationQueue addOperations:v33 waitUntilFinished:0];
    [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v32];
  }

  else
  {
    [(NavdProactiveLocalProxy *)self _q_finishProcessingEntriesWithOsTransaction:v40];
  }
}

- (void)_q_startProcessingEntries
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Started processing entries", v3, 2u);
  }
}

- (void)_q_finishProcessingEntriesWithOsTransaction:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Finished processing entries", &v28, 2u);
  }

  [(NavdTTLCache *)self->_cache nextRefreshTimeStamp];
  if (v6 < 0.0)
  {
    v7 = +[NSFileManager defaultManager];
    [v7 removeItemAtPath:self->_launchdKeepAliveFile error:0];

    goto LABEL_15;
  }

  v8 = v6 - CFAbsoluteTimeGetCurrent();
  if (v8 > 0.0)
  {
    self->_numberOfTimesRepeatedProcessing = 0;
LABEL_14:
    [(NavdProactiveLocalProxy *)self _createActivityForNextRefreshInTimeInterval:v8];
    goto LABEL_15;
  }

  v9 = self->_numberOfTimesRepeatedProcessing + 1;
  self->_numberOfTimesRepeatedProcessing = v9;
  v10 = +[GEONavdDefaults sharedInstance];
  v11 = [v10 maximumNumberOfProcessingLoopRepeats];

  if (v9 >= v11)
  {
    numberOfTimesRepeatedProcessing = self->_numberOfTimesRepeatedProcessing;
    v15 = +[GEONavdDefaults sharedInstance];
    v16 = numberOfTimesRepeatedProcessing - [v15 maximumNumberOfProcessingLoopRepeats];

    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_numberOfTimesRepeatedProcessing - 1;
      v28 = 134217984;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "refresh timestamp was in the past and we already scheduled %ld repeated refreshes so falling back to error time interval", &v28, 0xCu);
    }

    v19 = +[GEONavdDefaults sharedInstance];
    [v19 refreshTimeIntervalBackoffBase];
    v21 = v20;

    v22 = +[GEONavdDefaults sharedInstance];
    [v22 refreshTimeIntervalToUseIfError];
    v24 = v23 * pow(v21, v16);

    v25 = +[GEONavdDefaults sharedInstance];
    [v25 refreshTimeIntervalBackoffMax];
    v27 = v26;

    v8 = fmin(v24, v27);
    goto LABEL_14;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = self->_numberOfTimesRepeatedProcessing;
    v28 = 134217984;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "refresh timestamp was in the past, so scheduling another update (%ld times in a row).", &v28, 0xCu);
  }

  [(NavdProactiveLocalProxy *)self _processEntriesBeforeTimeStamp:v4 osTransaction:CFAbsoluteTimeGetCurrent()];
LABEL_15:
}

- (void)_processEntriesBeforeTimeStamp:(double)a3 withLocation:(id)a4 osTransaction:(id)a5
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10002763C;
  v13 = &unk_1000660C8;
  v17 = a3;
  v14 = self;
  v15 = a4;
  v16 = a5;
  v7 = v16;
  v8 = v15;
  v9 = [NSBlockOperation blockOperationWithBlock:&v10];
  [v9 setQueuePriority:{4, v10, v11, v12, v13, v14}];
  [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v9];
}

- (void)startMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[NavdOsTransaction alloc] initWithTransactionName:"startMonitoringDestination"];
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v33 = v10;
    v34 = 2113;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Start monitoring destination: %{private}@, clientID: %{private}@", buf, 0x16u);
  }

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10002785C;
  v25 = &unk_1000660F0;
  v26 = self;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v14;
  v31 = v13;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = [NSBlockOperation blockOperationWithBlock:&v22];
  [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v21, v22, v23, v24, v25, v26];
}

- (void)requestRefreshForPlannedDestination:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NavdOsTransaction alloc] initWithTransactionName:"requestRefreshForPlannedDestination"];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v23 = v6;
    v24 = 2113;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Request Refresh for destination: %{private}@, clientID: %{private}@", buf, 0x16u);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100027A3C;
  v17 = &unk_100065C40;
  v18 = self;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = [NSBlockOperation blockOperationWithBlock:&v14];
  [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v13, v14, v15, v16, v17, v18];
}

- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NavdOsTransaction alloc] initWithTransactionName:"onlyPerformLocalUpdatesForDestination"];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v23 = v6;
    v24 = 2113;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Only perform local updates for destination: %{private}@, clientID: %{private}@", buf, 0x16u);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100027C18;
  v17 = &unk_100065C40;
  v18 = self;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = [NSBlockOperation blockOperationWithBlock:&v14];
  [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v13, v14, v15, v16, v17, v18];
}

- (void)stopMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[NavdOsTransaction alloc] initWithTransactionName:"stopMonitoringDestination"];
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v25 = v8;
    v26 = 2113;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Stop monitoring destination for destination:%{private}@, for client id: %{private}@", buf, 0x16u);
  }

  v13 = +[NSFileManager defaultManager];
  [v13 createFileAtPath:self->_launchdKeepAliveFile contents:0 attributes:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100027E48;
  v19[3] = &unk_100064F08;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v18 = [NSBlockOperation blockOperationWithBlock:v19];
  [(NSOperationQueue *)self->_cacheOperationQueue addOperation:v18];
}

- (void)nextRefreshActivityFired
{
  v3 = [[NavdOsTransaction alloc] initWithTransactionName:"refreshActivityFired"];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Value refresh activity fired", v9, 2u);
  }

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  [v5 deregisterTaskWithIdentifier:@"com.apple.navd.nextValueRefreshActivity"];

  self->_valueRefreshTimeStamp = 0.0;
  Current = CFAbsoluteTimeGetCurrent();
  v7 = +[GEONavdDefaults sharedInstance];
  [v7 minimumTimerTimeStampFudge];
  [(NavdProactiveLocalProxy *)self _processEntriesBeforeTimeStamp:v3 osTransaction:v8 + Current];
}

- (void)_createActivityForNextRefreshInTimeInterval:(double)a3
{
  v5 = +[GEONavdDefaults sharedInstance];
  [v5 maximumRefreshIntervalLeeway];
  v7 = v6;

  v8 = fmin(v7, a3);
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v20 = a3;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "creating next refresh activity with interval %f and leeway %f", buf, 0x16u);
  }

  v10 = +[BGSystemTaskScheduler sharedScheduler];
  [v10 deregisterTaskWithIdentifier:@"com.apple.navd.nextValueRefreshActivity"];

  self->_valueRefreshTimeStamp = CFAbsoluteTimeGetCurrent() + a3;
  v11 = sub_1000326B4(@"com.apple.navd.nextValueRefreshActivity", 1, a3, v8);
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v20 = a3;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Registering next value refresh XPC activity triggered (timer: (%f), graceperiod: (%f), delay: (%f)", buf, 0x20u);
  }

  v13 = +[BGSystemTaskScheduler sharedScheduler];
  v18 = 0;
  v14 = [v13 submitTaskRequest:v11 error:&v18];
  v15 = v18;

  if ((v14 & 1) == 0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *&v17 = COERCE_DOUBLE(@"Unknown");
      if (v15)
      {
        v17 = v15;
      }

      *buf = 138412290;
      v20 = *&v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to submit background system task with error: %@", buf, 0xCu);
    }
  }
}

- (void)didPostUINotification:(unint64_t)a3 forDestination:(id)a4 fromClient:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[NavdOsTransaction alloc] initWithTransactionName:"postUiNotification"];
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218499;
    v22 = a3;
    v23 = 2113;
    v24 = v8;
    v25 = 2113;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Post UI Notification %lu for destination %{private}@ clientId %{private}@", buf, 0x20u);
  }

  cacheOperationQueue = self->_cacheOperationQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000283AC;
  v16[3] = &unk_100066118;
  v19 = v10;
  v20 = a3;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(NSOperationQueue *)cacheOperationQueue addOperationWithBlock:v16];
}

- (void)forceCacheRefresh
{
  v3 = [[NavdOsTransaction alloc] initWithTransactionName:"forceCacheRefresh"];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Forcing cache refresh", v5, 2u);
  }

  [(NavdProactiveLocalProxy *)self _refreshCacheEntriesIfNeededOrForced:1 osTransaction:v3];
}

- (void)locationLeecher:(id)a3 receivedLocation:(id)a4
{
  v5 = a4;
  v6 = +[GEONavdDefaults sharedInstance];
  [v6 minimumTimeIntervalToConsiderLeechedLocationInSeconds];
  v8 = v7;

  v9 = +[GEONavdDefaults sharedInstance];
  [v9 minimumDistanceToConsiderLeechedLocationInMeters];
  v11 = v10;

  if (v8 >= 0.0 && v11 >= 0.0)
  {
    v12 = [(NavdProactiveLocalProxy *)self _getLastLocationSafely];
    if (v12)
    {
      [v5 distanceFromLocation:v12];
      v14 = fabs(v13);
    }

    else
    {
      v14 = 0.0;
    }

    if (self->_lastLeechedLocationRefresh)
    {
      v15 = +[NSDate date];
      [v15 timeIntervalSinceDate:self->_lastLeechedLocationRefresh];
      v17 = v16;

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = 1.79769313e308;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v18 = v17 <= v8 || v14 <= v11;
    if (v18 || ([v5 horizontalAccuracy], v21 = v20, (-[NSObject horizontalAccuracy](v12, "horizontalAccuracy"), v21 >= v22) && (objc_msgSend(v5, "horizontalAccuracy"), v24 = v23, -[NSObject horizontalAccuracy](v12, "horizontalAccuracy"), v14 <= v25 + v24)))
    {
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEBUG))
      {
        v30 = 138478339;
        v31 = *&v5;
        v32 = 2048;
        v33 = v14;
        v34 = 2048;
        v35 = v17;
        _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEBUG, "Not using leeched location: %{private}@ (moved %f) (timeElapsed %f)", &v30, 0x20u);
      }

      goto LABEL_24;
    }

LABEL_21:
    v19 = [[NavdOsTransaction alloc] initWithTransactionName:"using leeched location"];
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138478339;
      v31 = *&v5;
      v32 = 2048;
      v33 = v14;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Using leeched location: %{private}@ (moved %f)  (timeElapsed %f)", &v30, 0x20u);
    }

    v27 = +[NSDate date];
    lastLeechedLocationRefresh = self->_lastLeechedLocationRefresh;
    self->_lastLeechedLocationRefresh = v27;

    v29 = +[NSDate distantPast];
    [v29 timeIntervalSinceReferenceDate];
    [(NavdProactiveLocalProxy *)self _processEntriesBeforeTimeStamp:v5 withLocation:v19 osTransaction:?];

LABEL_24:
    goto LABEL_25;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = 134218240;
    v31 = v8;
    v32 = 2048;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Avoiding an unscheduled hypothesis update (leechedUpdateTimeThreshold = %f) (leechedUpdateDistanceThreshold = %f)", &v30, 0x16u);
  }

LABEL_25:
}

- (void)locationLeecher:(id)a3 errorLeechingLocation:(id)a4
{
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Error leeching location: %{private}@", &v6, 0xCu);
  }
}

@end