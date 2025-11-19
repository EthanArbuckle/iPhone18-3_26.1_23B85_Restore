@interface NavdPendingTTLCacheEntry
- (BOOL)_isFinishedResolvingWaypoints;
- (NavdPendingTTLCacheEntry)initWithDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 handler:(id)a6 cacheOperationQueue:(id)a7 navdCache:(id)a8;
- (void)_findWaypointsForKey:(id)a3 currentLocation:(id)a4;
- (void)_finishedResolvingWaypointsForKey:(id)a3;
- (void)_receivedDestinationWaypoint:(id)a3 forKey:(id)a4;
- (void)_receivedErrorWhileResolvingDestinationWaypoint:(id)a3 forKey:(id)a4;
- (void)_receivedErrorWhileResolvingOriginWaypoint:(id)a3 forKey:(id)a4;
- (void)_receivedOriginWaypoint:(id)a3 forKey:(id)a4;
- (void)_setState:(int64_t)a3;
- (void)findWaypointsForKey:(id)a3 handler:(id)a4;
- (void)removePendingStops:(id)a3;
- (void)resolveMapItem:(id)a3;
- (void)setLocalUpdatesOnlyForClientInfo:(id)a3;
- (void)subsumePendingCacheEntry:(id)a3;
@end

@implementation NavdPendingTTLCacheEntry

- (NavdPendingTTLCacheEntry)initWithDestination:(id)a3 forClient:(id)a4 uuid:(id)a5 handler:(id)a6 cacheOperationQueue:(id)a7 navdCache:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v41.receiver = self;
  v41.super_class = NavdPendingTTLCacheEntry;
  v21 = [(NavdPendingTTLCacheEntry *)&v41 init];
  v22 = v21;
  if (v21)
  {
    v37 = v20;
    objc_storeWeak(&v21->_cacheOperationQueue, v19);
    objc_storeStrong(&v22->_cache, a8);
    v22->_state = 0;
    v23 = objc_alloc_init(NSMutableDictionary);
    clientInfoStates = v22->_clientInfoStates;
    v22->_clientInfoStates = v23;

    v25 = objc_alloc_init(NavdClientInfoState);
    [(NavdClientInfoState *)v25 setHandler:v18];
    v39 = v17;
    [(NavdClientInfoState *)v25 setUuid:v17];
    v40 = v16;
    [(NSMutableDictionary *)v22->_clientInfoStates setObject:v25 forKeyedSubscript:v16];
    objc_storeStrong(&v22->_plannedDestination, a3);
    v26 = objc_alloc_init(GEORouteHypothesisRequest);
    [v26 setTransportType:{objc_msgSend(v15, "transportType")}];
    v27 = [v15 arrivalDate];
    [v27 timeIntervalSinceReferenceDate];
    [v26 setArrivalDate:?];

    v28 = [v15 expirationDate];
    v29 = [v15 arrivalDate];
    v30 = +[GEONavdDefaults sharedInstance];
    [v30 minimumExpirationOffset];
    v31 = [v29 dateByAddingTimeInterval:?];

    if (v28)
    {
      if ([v28 compare:v31] != -1)
      {
        v17 = v39;
LABEL_8:
        [v28 timeIntervalSinceReferenceDate];
        [v26 setExpirationDate:?];
        request = v22->_request;
        v22->_request = v26;

        v35 = v22;
        v16 = v40;
        v20 = v38;
        goto LABEL_9;
      }

      v33 = v31;
    }

    else
    {
      v28 = [v15 arrivalDate];
      v32 = +[GEONavdDefaults sharedInstance];
      [v32 defaultExpirationOffset];
      v33 = [v28 dateByAddingTimeInterval:?];
    }

    v17 = v39;

    v28 = v33;
    goto LABEL_8;
  }

LABEL_9:

  return v22;
}

- (void)_setState:(int64_t)a3
{
  [(NavdPendingTTLCacheEntry *)self willChangeValueForKey:@"state"];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    state = self->_state;
    if (state >= 3)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %lu)", self->_state];
    }

    else
    {
      v7 = off_100065CD8[state];
    }

    v8 = v7;
    if (a3 >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %lu)", a3];
    }

    else
    {
      v9 = off_100065CD8[a3];
    }

    *buf = 138478083;
    v11 = v8;
    v12 = 2113;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Changing state of start monitoring job from %{private}@ to %{private}@", buf, 0x16u);
  }

  self->_state = a3;
  [(NavdPendingTTLCacheEntry *)self didChangeValueForKey:@"state"];
}

- (void)setLocalUpdatesOnlyForClientInfo:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_clientInfoStates objectForKeyedSubscript:a3];
  if (v3)
  {
    v4 = v3;
    [v3 setLocalUpdatesOnly:1];
    v3 = v4;
  }
}

- (void)removePendingStops:(id)a3
{
  v4 = a3;
  clientInfoStates = self->_clientInfoStates;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020A58;
  v10[3] = &unk_100065BF0;
  v11 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)clientInfoStates keysOfEntriesPassingTest:v10];
  v8 = self->_clientInfoStates;
  v9 = [v7 allObjects];
  [(NSMutableDictionary *)v8 removeObjectsForKeys:v9];
}

- (void)subsumePendingCacheEntry:(id)a3
{
  clientInfoStates = self->_clientInfoStates;
  v4 = [a3 clientInfoStates];
  [(NSMutableDictionary *)clientInfoStates addEntriesFromDictionary:v4];
}

- (void)findWaypointsForKey:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_state == 1)
  {
    [(NavdPendingTTLCacheEntry *)self _setState:2];
    v8 = [v7 copy];
    findWaypointsHandler = self->_findWaypointsHandler;
    self->_findWaypointsHandler = v8;

    v10 = +[NavdLocationManager sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100020CC8;
    v14[3] = &unk_100065C18;
    v14[4] = self;
    v15 = v6;
    [v10 getCurrentLocationWithHandler:v14];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      state = self->_state;
      if (state >= 3)
      {
        v13 = [NSString stringWithFormat:@"(unknown: %lu)", self->_state];
      }

      else
      {
        v13 = off_100065CD8[state];
      }

      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "findWaypointsForKey:handler: may have been called twice on same Entry.  Was in state %{public}@ when it was called.  Returning.", buf, 0xCu);
    }
  }
}

- (void)_findWaypointsForKey:(id)a3 currentLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 coordinate];
  v9 = v8;
  [v7 coordinate];
  v11 = [[GEOLocation alloc] initWithGEOCoordinate:{v9, v10}];
  v12 = [v6 request];
  v13 = [v12 destinationLocation];

  [v13 coordinate];
  GEOCalculateDistance();
  v15 = v14;
  v16 = NavigationConfig_NavdMonitoringDistanceThreshold[1];
  GEOConfigGetDouble();
  v18 = v17;
  [v7 horizontalAccuracy];
  if (v15 >= v19 + v18)
  {
    v29 = +[GEOMapService sharedService];
    v30 = [v29 navd_defaultTraitsForNavd];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000211A0;
    v38[3] = &unk_100065C68;
    v38[4] = self;
    v31 = v6;
    v39 = v31;
    v32 = [GEOComposedWaypoint composedWaypointForCurrentLocation:v11 traits:v30 completionHandler:v38 networkActivityHandler:0];

    v33 = +[GEOMapService sharedService];
    v34 = [v33 navd_defaultTraitsForNavd];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100021380;
    v36[3] = &unk_100065C68;
    v36[4] = self;
    v37 = v31;
    v35 = [GEOComposedWaypoint composedWaypointForMapItem:v13 traits:v34 clientAttributes:0 completionHandler:v36 networkActivityHandler:0];
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [v7 horizontalAccuracy];
      *buf = 134218240;
      v41 = v21;
      v42 = 2048;
      v43 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Distance between source and destination is less than the location accuracy: %f plus addendum: %f", buf, 0x16u);
    }

    [v7 horizontalAccuracy];
    v23 = [NSString stringWithFormat:@"Distance between source and destination is less than the location accuracy: %f plus addendum: %f", v22, *&v18];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v41 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{private}@", buf, 0xCu);
    }

    v25 = [NSError GEOErrorWithCode:-10 reason:v23];
    objc_storeStrong(&self->_originWaypointError, v25);
    originWaypoint = self->_originWaypoint;
    self->_originWaypoint = 0;

    destinationWaypoint = self->_destinationWaypoint;
    self->_destinationWaypoint = 0;

    destinationWaypointError = self->_destinationWaypointError;
    self->_destinationWaypointError = v25;

    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:v6];
  }
}

- (BOOL)_isFinishedResolvingWaypoints
{
  if (!self->_originWaypoint && !self->_originWaypointError)
  {
    return 0;
  }

  if (self->_destinationWaypoint)
  {
    return 1;
  }

  return self->_destinationWaypointError != 0;
}

- (void)_receivedOriginWaypoint:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v8 = a4;
  originWaypoint = self->_originWaypoint;
  self->_originWaypoint = v6;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:v8];
  }
}

- (void)_receivedErrorWhileResolvingOriginWaypoint:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v8 = a4;
  originWaypointError = self->_originWaypointError;
  self->_originWaypointError = v6;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:v8];
  }
}

- (void)_receivedDestinationWaypoint:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v8 = a4;
  destinationWaypoint = self->_destinationWaypoint;
  self->_destinationWaypoint = v6;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:v8];
  }
}

- (void)_receivedErrorWhileResolvingDestinationWaypoint:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v8 = a4;
  destinationWaypointError = self->_destinationWaypointError;
  self->_destinationWaypointError = v6;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:v8];
  }
}

- (void)_finishedResolvingWaypointsForKey:(id)a3
{
  originWaypoint = self->_originWaypoint;
  destinationWaypoint = self->_destinationWaypoint;
  originWaypointError = self->_originWaypointError;
  destinationWaypointError = self->_destinationWaypointError;
  (*(self->_findWaypointsHandler + 2))();
  findWaypointsHandler = self->_findWaypointsHandler;
  self->_findWaypointsHandler = 0;

  v9 = self->_originWaypoint;
  self->_originWaypoint = 0;

  v10 = self->_originWaypointError;
  self->_originWaypointError = 0;

  v11 = self->_destinationWaypoint;
  self->_destinationWaypoint = 0;

  v12 = self->_destinationWaypointError;
  self->_destinationWaypointError = 0;
}

- (void)resolveMapItem:(id)a3
{
  v4 = a3;
  [(NavdPendingTTLCacheEntry *)self _setState:1];
  v5 = +[GEOMapService sharedService];
  v6 = [(GEOPlannedDestination *)self->_plannedDestination handle];
  v7 = +[GEOMapService sharedService];
  v8 = [v7 navd_defaultTraitsForNavd];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002191C;
  v10[3] = &unk_100065CB8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v5 resolveMapItemFromHandle:v6 withTraits:v8 useCache:1 coordinateOnlyRefinement:1 completionHandler:v10];
}

@end