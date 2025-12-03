@interface NavdTTLCacheEntry
- (BOOL)_loadFromBackingStore;
- (BOOL)hasHandlerForClientInfo:(id)info;
- (NavdTTLCacheEntry)initWithKey:(id)key cacheOperationQueue:(id)queue cache:(id)cache;
- (NavdTTLCacheEntry)initWithRowId:(int64_t)id refreshTimestamp:(double)timestamp state:(int64_t)state cacheOperationQueue:(id)queue cache:(id)cache;
- (double)_nextTimerIntervalForValue:(id)value;
- (id)blockIfShouldUpdateForTimestamp:(double)timestamp locationFuture:(id)future;
- (void)_clearLoadedValues;
- (void)_recievedUpdatedHypothesis:(id)hypothesis updateRefreshTimeStamp:(BOOL)stamp;
- (void)_saveEntry;
- (void)_setState:(int64_t)state;
- (void)_updateWithLocation:(id)location;
- (void)clientDisplayedUINotification:(unint64_t)notification;
- (void)removeHandlerForClientInfo:(id)info;
- (void)setHandler:(id)handler forClient:(id)client;
- (void)setLocalUpdatesOnlyForClientInfo:(id)info;
- (void)subsumePendingEntry:(id)entry;
@end

@implementation NavdTTLCacheEntry

- (NavdTTLCacheEntry)initWithRowId:(int64_t)id refreshTimestamp:(double)timestamp state:(int64_t)state cacheOperationQueue:(id)queue cache:(id)cache
{
  queueCopy = queue;
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = NavdTTLCacheEntry;
  v14 = [(NavdTTLCacheEntry *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_rowId = id;
    v14->_state = state;
    v14->_refreshTimestamp = timestamp;
    objc_storeWeak(&v14->_cacheOperationQueue, queueCopy);
    objc_storeStrong(&v15->_cache, cache);
    v16 = objc_alloc_init(NSMutableDictionary);
    clientInfoStates = v15->_clientInfoStates;
    v15->_clientInfoStates = v16;
  }

  return v15;
}

- (NavdTTLCacheEntry)initWithKey:(id)key cacheOperationQueue:(id)queue cache:(id)cache
{
  keyCopy = key;
  cacheCopy = cache;
  queueCopy = queue;
  v12 = [(NavdTTLCacheEntry *)self initWithRowId:-1 refreshTimestamp:3 state:queueCopy cacheOperationQueue:cacheCopy cache:CFAbsoluteTimeGetCurrent()];

  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
  }

  return v12;
}

- (id)blockIfShouldUpdateForTimestamp:(double)timestamp locationFuture:(id)future
{
  futureCopy = future;
  state = [(NavdTTLCacheEntry *)self state];
  if (state == 1)
  {
    [(NavdTTLCacheEntry *)self _setState:2];
    objc_storeStrong(&self->_locationFuture, future);
  }

  else if (!state)
  {
    [(NavdTTLCacheEntry *)self refreshTimestamp];
    if (v9 > timestamp)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [(NavdTTLCacheEntry *)self _setState:v10];
    objc_storeStrong(&self->_locationFuture, future);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100034090;
    v14[3] = &unk_100065180;
    v14[4] = self;
    v11 = objc_retainBlock(v14);
    v12 = objc_retainBlock(v11);

    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)setHandler:(id)handler forClient:(id)client
{
  handlerCopy = handler;
  clientCopy = client;
  v7 = [(NSMutableDictionary *)self->_clientInfoStates objectForKeyedSubscript:clientCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(NavdClientInfoState);
    [(NSMutableDictionary *)self->_clientInfoStates setObject:v7 forKeyedSubscript:clientCopy];
  }

  [(NavdClientInfoState *)v7 setHandler:handlerCopy];
}

- (void)removeHandlerForClientInfo:(id)info
{
  infoCopy = info;
  v4 = [(NSMutableDictionary *)self->_clientInfoStates objectForKeyedSubscript:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_clientInfoStates removeObjectForKey:infoCopy];
    if ([v4 localUpdatesOnly])
    {
      --self->_localOnlyUpdatesCount;
    }
  }
}

- (BOOL)hasHandlerForClientInfo:(id)info
{
  v3 = [(NSMutableDictionary *)self->_clientInfoStates objectForKey:info];
  v4 = v3 != 0;

  return v4;
}

- (void)setLocalUpdatesOnlyForClientInfo:(id)info
{
  v4 = [(NSMutableDictionary *)self->_clientInfoStates objectForKeyedSubscript:info];
  if (v4)
  {
    v5 = v4;
    if (([v4 localUpdatesOnly] & 1) == 0)
    {
      [v5 setLocalUpdatesOnly:1];
      ++self->_localOnlyUpdatesCount;
    }
  }

  _objc_release_x1();
}

- (void)clientDisplayedUINotification:(unint64_t)notification
{
  if ([(NavdTTLCacheEntry *)self _loadFromBackingStore])
  {
    monitor = [(GEORouteHypothesisValue *)self->_value monitor];
    [monitor clientDisplayedUINotification:notification];

    [(NavdTTLCacheEntry *)self _saveEntry];

    [(NavdTTLCacheEntry *)self _clearLoadedValues];
  }
}

- (BOOL)_loadFromBackingStore
{
  v3 = [(NavdTTLCachePrivate *)self->_cache loadEntryForRowId:[(NavdTTLCacheEntry *)self rowId]];
  v4 = [v3 count];
  if (v4 == 2)
  {
    v5 = [v3 objectAtIndex:0];
    key = self->_key;
    self->_key = v5;

    v7 = [v3 objectAtIndex:1];
    value = self->_value;
    self->_value = v7;
  }

  return v4 == 2;
}

- (void)_clearLoadedValues
{
  key = self->_key;
  self->_key = 0;

  value = self->_value;
  self->_value = 0;
}

- (void)_updateWithLocation:(id)location
{
  locationCopy = location;
  v5 = dispatch_group_create();
  if ([(NavdTTLCacheEntry *)self state]== 2)
  {
    v6 = [(NavdTTLCacheEntry *)self localUpdatesOnly]^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    rowId = self->_rowId;
    if (v6)
    {
      v8 = @"YES";
    }

    *buf = 134218243;
    *&buf[4] = rowId;
    *&buf[12] = 2113;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "About to process rowId %lld. AllowServer is %{private}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = 0;
  if ([(NavdTTLCacheEntry *)self _loadFromBackingStore])
  {
    dispatch_group_enter(v5);
    [locationCopy coordinate];
    v11 = v10;
    [locationCopy coordinate];
    v13 = [[GEOLocation alloc] initWithGEOCoordinate:{v11, v12}];
    v14 = [MNFamiliarRouteProvider alloc];
    v15 = +[NSDate now];
    v16 = [v14 initWithPurpose:1 reason:@"Time to Leave" date:v15];

    objc_initWeak(location, self);
    monitor = [(GEORouteHypothesisValue *)self->_value monitor];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100034910;
    v29 = &unk_100067938;
    objc_copyWeak(&v32, location);
    v31 = buf;
    v33 = v6;
    v30 = v5;
    [monitor updateLocation:v13 allowServer:v6 familiarRouteProvider:v16 hypothesisHandler:&v26];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  v18 = [GEONavdDefaults sharedInstance:v26];
  [v18 updateTimeout];
  v20 = dispatch_walltime(0, (v19 * 1000000000.0));

  if (dispatch_group_wait(v5, v20))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Timed out while waiting for updateLocation.", location, 2u);
      }

      dispatch_group_leave(v5);
      *(*&buf[8] + 24) = 1;
      v23 = objc_alloc_init(GEORouteHypothesis);
      v24 = GEOErrorDomain();
      v25 = [NSError errorWithDomain:v24 code:-19 userInfo:0];
      [v23 _setError:v25];

      [(NavdTTLCacheEntry *)selfCopy _recievedUpdatedHypothesis:v23 updateRefreshTimeStamp:1];
    }

    objc_sync_exit(selfCopy);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_setState:(int64_t)state
{
  [(NavdTTLCacheEntry *)self willChangeValueForKey:@"state"];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    rowId = self->_rowId;
    state = self->_state;
    if (state >= 5)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %lu)", self->_state];
    }

    else
    {
      v8 = *(&off_100067958 + state);
    }

    v9 = v8;
    if (state >= 5)
    {
      state = [NSString stringWithFormat:@"(unknown: %lu)", state];
    }

    else
    {
      state = *(&off_100067958 + state);
    }

    *buf = 134218499;
    v12 = rowId;
    v13 = 2113;
    v14 = v9;
    v15 = 2113;
    v16 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Changing state of rowId %lld from %{private}@ to %{private}@", buf, 0x20u);
  }

  self->_state = state;
  [(NavdTTLCacheEntry *)self didChangeValueForKey:@"state"];
}

- (double)_nextTimerIntervalForValue:(id)value
{
  valueCopy = value;
  v4 = +[GEONavdDefaults sharedInstance];
  useConservativeDepartureForRefreshTimer = [v4 useConservativeDepartureForRefreshTimer];

  currentHypothesis = [valueCopy currentHypothesis];
  v7 = currentHypothesis;
  if (useConservativeDepartureForRefreshTimer)
  {
    [currentHypothesis conservativeDepartureDate];
  }

  else
  {
    [currentHypothesis suggestedDepartureDate];
  }
  v8 = ;

  currentHypothesis2 = [valueCopy currentHypothesis];
  transportType = [currentHypothesis2 transportType];
  v11 = +[GEONavdDefaults sharedInstance];
  v12 = v11;
  if (transportType == 1)
  {
    refreshEquationLowestFrequencyTransit = [v11 refreshEquationLowestFrequencyTransit];
  }

  else
  {
    refreshEquationLowestFrequencyTransit = [v11 refreshEquationLowestFrequency];
  }

  v14 = refreshEquationLowestFrequencyTransit;

  v15 = +[GEONavdDefaults sharedInstance];
  refreshEquationHighestFrequency = [v15 refreshEquationHighestFrequency];

  currentHypothesis3 = [valueCopy currentHypothesis];

  if (currentHypothesis3)
  {
    [v8 timeIntervalSinceReferenceDate];
    v19 = (v18 - CFAbsoluteTimeGetCurrent()) * 0.0166666667;
    v20 = exp(-(v19 / v14 * (v19 / v14)));
    v21 = v14 - v20 * (v14 - refreshEquationHighestFrequency);
    v22 = +[GEONavdDefaults sharedInstance];
    [v22 maximumTimeBetweenConsecutiveHypothesisUpdatesInSeconds];
    v24 = v23;

    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v29 = 134218496;
      v30 = v21;
      v31 = 2048;
      v32 = v19;
      v33 = 2048;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "calculated refresh interval in minutes: %f, deltaT in minutes: %f, exp: %f", &v29, 0x20u);
    }

    v26 = fmax(v21 * 60.0, v24);
  }

  else
  {
    v25 = +[GEONavdDefaults sharedInstance];
    [v25 refreshTimeIntervalToUseIfError];
    v26 = v27;
  }

  return v26;
}

- (void)_saveEntry
{
  [(NavdTTLCachePrivate *)self->_cache saveValue:self->_value forKey:self->_key];
  self->_rowId = [(GEORouteHypothesisValue *)self->_value rowId];
  [(GEORouteHypothesisValue *)self->_value valueRefreshTimeStamp];
  self->_refreshTimestamp = v3;
  if (self->_rowId == -1)
  {
    cache = self->_cache;
    key = self->_key;
    value = self->_value;

    [(NavdTTLCachePrivate *)cache removeEntry:self withKey:key value:value];
  }
}

- (void)_recievedUpdatedHypothesis:(id)hypothesis updateRefreshTimeStamp:(BOOL)stamp
{
  stampCopy = stamp;
  hypothesisCopy = hypothesis;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(GEORouteHypothesisValue *)self->_value description];
    v24 = 138478083;
    v25 = hypothesisCopy;
    v26 = 2113;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Calculated new hypothesis: %{private}@\nFor value: %{private}@", &v24, 0x16u);
  }

  if (hypothesisCopy)
  {
    currentHypothesis = [(GEORouteHypothesisValue *)self->_value currentHypothesis];
    if (!currentHypothesis)
    {
      error = [hypothesisCopy error];

      if (error)
      {
        goto LABEL_7;
      }

      currentHypothesis = +[GEONavdAnalyticsManager sharedManager];
      analyticsReporter = [currentHypothesis analyticsReporter];
      [hypothesisCopy estimatedTravelTime];
      [analyticsReporter recordInitialTravelTime:?];
    }

LABEL_7:
    [(GEORouteHypothesisValue *)self->_value setCurrentHypothesis:hypothesisCopy];
    error2 = [hypothesisCopy error];
    v12 = hypothesisCopy;
    if (error2)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v24 = 138477827;
        v25 = error2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Error while refreshing the value: %{private}@", &v24, 0xCu);
      }

      domain = [error2 domain];
      v15 = GEOErrorDomain();
      if ([domain isEqualToString:v15])
      {
        code = [error2 code];

        if (code == -1501)
        {
          [(GEORouteHypothesisValue *)self->_value setValueRefreshTimeStamp:-1.0];
          [(NavdTTLCachePrivate *)self->_cache removeEntry:self withKey:self->_key value:self->_value];
        }
      }

      else
      {
      }
    }

    else
    {
      [GEONavdPowerLogManager _powerLogWithEventName:@"ReceivedNewHypothesis"];
      if (stampCopy)
      {
        localUpdatesOnly = [(NavdTTLCacheEntry *)self localUpdatesOnly];
        v18 = -1.0;
        if ((localUpdatesOnly & 1) == 0)
        {
          Current = CFAbsoluteTimeGetCurrent();
          [(NavdTTLCacheEntry *)self _nextTimerIntervalForValue:self->_value];
          v18 = v20 + Current;
        }

        [(GEORouteHypothesisValue *)self->_value setValueRefreshTimeStamp:v18];
        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          [(GEORouteHypothesisValue *)self->_value valueRefreshTimeStamp];
          v24 = 134217984;
          v25 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Value refreshed and timestamp set to: %f", &v24, 0xCu);
        }
      }

      [(NavdTTLCacheEntry *)self _saveEntry];
    }

    [(NavdTTLCachePrivate *)self->_cache callHandlers:self->_clientInfoStates withHypothesis:v12];
  }

  [(NavdTTLCacheEntry *)self _clearLoadedValues];
  [(NavdTTLCacheEntry *)self _setState:0];
}

- (void)subsumePendingEntry:(id)entry
{
  clientInfoStates = self->_clientInfoStates;
  clientInfoStates = [entry clientInfoStates];
  [(NSMutableDictionary *)clientInfoStates addEntriesFromDictionary:clientInfoStates];

  self->_localOnlyUpdatesCount = 0;
  v6 = self->_clientInfoStates;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003525C;
  v7[3] = &unk_100065048;
  v7[4] = self;
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v7];
}

@end