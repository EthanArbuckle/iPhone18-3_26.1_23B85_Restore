@interface NavdPendingTTLCacheEntry
- (BOOL)_isFinishedResolvingWaypoints;
- (NavdPendingTTLCacheEntry)initWithDestination:(id)destination forClient:(id)client uuid:(id)uuid handler:(id)handler cacheOperationQueue:(id)queue navdCache:(id)cache;
- (void)_findWaypointsForKey:(id)key currentLocation:(id)location;
- (void)_finishedResolvingWaypointsForKey:(id)key;
- (void)_receivedDestinationWaypoint:(id)waypoint forKey:(id)key;
- (void)_receivedErrorWhileResolvingDestinationWaypoint:(id)waypoint forKey:(id)key;
- (void)_receivedErrorWhileResolvingOriginWaypoint:(id)waypoint forKey:(id)key;
- (void)_receivedOriginWaypoint:(id)waypoint forKey:(id)key;
- (void)_setState:(int64_t)state;
- (void)findWaypointsForKey:(id)key handler:(id)handler;
- (void)removePendingStops:(id)stops;
- (void)resolveMapItem:(id)item;
- (void)setLocalUpdatesOnlyForClientInfo:(id)info;
- (void)subsumePendingCacheEntry:(id)entry;
@end

@implementation NavdPendingTTLCacheEntry

- (NavdPendingTTLCacheEntry)initWithDestination:(id)destination forClient:(id)client uuid:(id)uuid handler:(id)handler cacheOperationQueue:(id)queue navdCache:(id)cache
{
  destinationCopy = destination;
  clientCopy = client;
  uuidCopy = uuid;
  handlerCopy = handler;
  queueCopy = queue;
  cacheCopy = cache;
  v41.receiver = self;
  v41.super_class = NavdPendingTTLCacheEntry;
  v21 = [(NavdPendingTTLCacheEntry *)&v41 init];
  v22 = v21;
  if (v21)
  {
    v37 = cacheCopy;
    objc_storeWeak(&v21->_cacheOperationQueue, queueCopy);
    objc_storeStrong(&v22->_cache, cache);
    v22->_state = 0;
    v23 = objc_alloc_init(NSMutableDictionary);
    clientInfoStates = v22->_clientInfoStates;
    v22->_clientInfoStates = v23;

    v25 = objc_alloc_init(NavdClientInfoState);
    [(NavdClientInfoState *)v25 setHandler:handlerCopy];
    v39 = uuidCopy;
    [(NavdClientInfoState *)v25 setUuid:uuidCopy];
    v40 = clientCopy;
    [(NSMutableDictionary *)v22->_clientInfoStates setObject:v25 forKeyedSubscript:clientCopy];
    objc_storeStrong(&v22->_plannedDestination, destination);
    v26 = objc_alloc_init(GEORouteHypothesisRequest);
    [v26 setTransportType:{objc_msgSend(destinationCopy, "transportType")}];
    arrivalDate = [destinationCopy arrivalDate];
    [arrivalDate timeIntervalSinceReferenceDate];
    [v26 setArrivalDate:?];

    expirationDate = [destinationCopy expirationDate];
    arrivalDate2 = [destinationCopy arrivalDate];
    v30 = +[GEONavdDefaults sharedInstance];
    [v30 minimumExpirationOffset];
    v31 = [arrivalDate2 dateByAddingTimeInterval:?];

    if (expirationDate)
    {
      if ([expirationDate compare:v31] != -1)
      {
        uuidCopy = v39;
LABEL_8:
        [expirationDate timeIntervalSinceReferenceDate];
        [v26 setExpirationDate:?];
        request = v22->_request;
        v22->_request = v26;

        v35 = v22;
        clientCopy = v40;
        cacheCopy = v38;
        goto LABEL_9;
      }

      v33 = v31;
    }

    else
    {
      expirationDate = [destinationCopy arrivalDate];
      v32 = +[GEONavdDefaults sharedInstance];
      [v32 defaultExpirationOffset];
      v33 = [expirationDate dateByAddingTimeInterval:?];
    }

    uuidCopy = v39;

    expirationDate = v33;
    goto LABEL_8;
  }

LABEL_9:

  return v22;
}

- (void)_setState:(int64_t)state
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
    if (state >= 3)
    {
      state = [NSString stringWithFormat:@"(unknown: %lu)", state];
    }

    else
    {
      state = off_100065CD8[state];
    }

    *buf = 138478083;
    v11 = v8;
    v12 = 2113;
    v13 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Changing state of start monitoring job from %{private}@ to %{private}@", buf, 0x16u);
  }

  self->_state = state;
  [(NavdPendingTTLCacheEntry *)self didChangeValueForKey:@"state"];
}

- (void)setLocalUpdatesOnlyForClientInfo:(id)info
{
  v3 = [(NSMutableDictionary *)self->_clientInfoStates objectForKeyedSubscript:info];
  if (v3)
  {
    v4 = v3;
    [v3 setLocalUpdatesOnly:1];
    v3 = v4;
  }
}

- (void)removePendingStops:(id)stops
{
  stopsCopy = stops;
  clientInfoStates = self->_clientInfoStates;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020A58;
  v10[3] = &unk_100065BF0;
  v11 = stopsCopy;
  v6 = stopsCopy;
  v7 = [(NSMutableDictionary *)clientInfoStates keysOfEntriesPassingTest:v10];
  v8 = self->_clientInfoStates;
  allObjects = [v7 allObjects];
  [(NSMutableDictionary *)v8 removeObjectsForKeys:allObjects];
}

- (void)subsumePendingCacheEntry:(id)entry
{
  clientInfoStates = self->_clientInfoStates;
  clientInfoStates = [entry clientInfoStates];
  [(NSMutableDictionary *)clientInfoStates addEntriesFromDictionary:clientInfoStates];
}

- (void)findWaypointsForKey:(id)key handler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if (self->_state == 1)
  {
    [(NavdPendingTTLCacheEntry *)self _setState:2];
    v8 = [handlerCopy copy];
    findWaypointsHandler = self->_findWaypointsHandler;
    self->_findWaypointsHandler = v8;

    v10 = +[NavdLocationManager sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100020CC8;
    v14[3] = &unk_100065C18;
    v14[4] = self;
    v15 = keyCopy;
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

- (void)_findWaypointsForKey:(id)key currentLocation:(id)location
{
  keyCopy = key;
  locationCopy = location;
  [locationCopy coordinate];
  v9 = v8;
  [locationCopy coordinate];
  v11 = [[GEOLocation alloc] initWithGEOCoordinate:{v9, v10}];
  request = [keyCopy request];
  destinationLocation = [request destinationLocation];

  [destinationLocation coordinate];
  GEOCalculateDistance();
  v15 = v14;
  v16 = NavigationConfig_NavdMonitoringDistanceThreshold[1];
  GEOConfigGetDouble();
  v18 = v17;
  [locationCopy horizontalAccuracy];
  if (v15 >= v19 + v18)
  {
    v29 = +[GEOMapService sharedService];
    navd_defaultTraitsForNavd = [v29 navd_defaultTraitsForNavd];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000211A0;
    v38[3] = &unk_100065C68;
    v38[4] = self;
    v31 = keyCopy;
    v39 = v31;
    v32 = [GEOComposedWaypoint composedWaypointForCurrentLocation:v11 traits:navd_defaultTraitsForNavd completionHandler:v38 networkActivityHandler:0];

    v33 = +[GEOMapService sharedService];
    navd_defaultTraitsForNavd2 = [v33 navd_defaultTraitsForNavd];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100021380;
    v36[3] = &unk_100065C68;
    v36[4] = self;
    v37 = v31;
    v35 = [GEOComposedWaypoint composedWaypointForMapItem:destinationLocation traits:navd_defaultTraitsForNavd2 clientAttributes:0 completionHandler:v36 networkActivityHandler:0];
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [locationCopy horizontalAccuracy];
      *buf = 134218240;
      v41 = v21;
      v42 = 2048;
      v43 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Distance between source and destination is less than the location accuracy: %f plus addendum: %f", buf, 0x16u);
    }

    [locationCopy horizontalAccuracy];
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

    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:keyCopy];
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

- (void)_receivedOriginWaypoint:(id)waypoint forKey:(id)key
{
  waypointCopy = waypoint;
  keyCopy = key;
  originWaypoint = self->_originWaypoint;
  self->_originWaypoint = waypointCopy;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:keyCopy];
  }
}

- (void)_receivedErrorWhileResolvingOriginWaypoint:(id)waypoint forKey:(id)key
{
  waypointCopy = waypoint;
  keyCopy = key;
  originWaypointError = self->_originWaypointError;
  self->_originWaypointError = waypointCopy;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:keyCopy];
  }
}

- (void)_receivedDestinationWaypoint:(id)waypoint forKey:(id)key
{
  waypointCopy = waypoint;
  keyCopy = key;
  destinationWaypoint = self->_destinationWaypoint;
  self->_destinationWaypoint = waypointCopy;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:keyCopy];
  }
}

- (void)_receivedErrorWhileResolvingDestinationWaypoint:(id)waypoint forKey:(id)key
{
  waypointCopy = waypoint;
  keyCopy = key;
  destinationWaypointError = self->_destinationWaypointError;
  self->_destinationWaypointError = waypointCopy;

  if ([(NavdPendingTTLCacheEntry *)self _isFinishedResolvingWaypoints])
  {
    [(NavdPendingTTLCacheEntry *)self _finishedResolvingWaypointsForKey:keyCopy];
  }
}

- (void)_finishedResolvingWaypointsForKey:(id)key
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

- (void)resolveMapItem:(id)item
{
  itemCopy = item;
  [(NavdPendingTTLCacheEntry *)self _setState:1];
  v5 = +[GEOMapService sharedService];
  handle = [(GEOPlannedDestination *)self->_plannedDestination handle];
  v7 = +[GEOMapService sharedService];
  navd_defaultTraitsForNavd = [v7 navd_defaultTraitsForNavd];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002191C;
  v10[3] = &unk_100065CB8;
  v10[4] = self;
  v11 = itemCopy;
  v9 = itemCopy;
  [v5 resolveMapItemFromHandle:handle withTraits:navd_defaultTraitsForNavd useCache:1 coordinateOnlyRefinement:1 completionHandler:v10];
}

@end