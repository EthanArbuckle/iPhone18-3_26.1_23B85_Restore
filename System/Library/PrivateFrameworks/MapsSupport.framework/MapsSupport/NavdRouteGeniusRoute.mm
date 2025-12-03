@interface NavdRouteGeniusRoute
- (BOOL)hasRouteLoaded;
- (BOOL)isLoadingRoute;
- (BOOL)isOnRoute:(id)route location:(id)location;
- (NavdRouteGeniusRoute)initWithEntry:(id)entry;
- (id).cxx_construct;
- (id)description;
- (id)destinationWaypoint;
- (id)matchResultForLocation:(id)location;
- (id)route;
- (void)destinationGEOLocation:(id)location;
- (void)loadRoute;
- (void)setDestinationWaypoint:(id)waypoint;
- (void)setRoute:(id)route;
- (void)updateForRerouteWithLocation:(id)location time:(id)time;
- (void)updateRerouteInfoForLocation:(id)location time:(id)time;
@end

@implementation NavdRouteGeniusRoute

- (NavdRouteGeniusRoute)initWithEntry:(id)entry
{
  entryCopy = entry;
  v11.receiver = self;
  v11.super_class = NavdRouteGeniusRoute;
  v6 = [(NavdRouteGeniusRoute *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state.queue._innerQueue, entry);
    v8 = objc_alloc_init(NSArray);
    origin = v7->_state.origin;
    v7->_state.origin = v8;
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [NSMutableString alloc];
  if (LOBYTE(selfCopy->_state.routes))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  innerQueue = selfCopy->_state.queue._innerQueue;
  latLng = [(NSString *)selfCopy->_state.queue._name latLng];
  [latLng lat];
  v8 = v7;
  latLng2 = [(NSString *)selfCopy->_state.queue._name latLng];
  [latLng2 lng];
  v11 = [v3 initWithFormat:@"entry: %@\r\nHasRouteLoaded : %@\r\nDestinationWaypoint : <%.6f, %.6f> \r\nOffRouteInfos: count=%lu\r\n", innerQueue, v4, v8, v10, -[GEOComposedWaypoint count](selfCopy->_state.origin, "count")];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = selfCopy->_state.origin;
  v13 = [(GEOComposedWaypoint *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) description];
        [v11 appendFormat:@"\r\n%@", v16];
      }

      v13 = [(GEOComposedWaypoint *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)destinationWaypoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state.queue._name;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDestinationWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  obj = self;
  objc_sync_enter(obj);
  name = obj->_state.queue._name;
  obj->_state.queue._name = waypointCopy;

  objc_sync_exit(obj);
}

- (void)destinationGEOLocation:(id)location
{
  locationCopy = location;
  obj = self;
  objc_sync_enter(obj);
  name = obj->_state.queue._name;
  obj->_state.queue._name = locationCopy;

  objc_sync_exit(obj);
}

- (id)route
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state.route;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  obj = self;
  objc_sync_enter(obj);
  LOWORD(obj->_state.routes) = 1;
  locationHistory = obj->_state.locationHistory;
  obj->_state.locationHistory = 0;

  if (routeCopy)
  {
    v6 = [[GEONavigationDrivingMapMatcher alloc] initWithRoute:routeCopy auditToken:0];
    v7 = obj->_state.locationHistory;
    obj->_state.locationHistory = v6;

    [(NavdBucketizedLocations *)obj->_state.locationHistory setRequiresRoadNetworkData:1];
    [(NavdBucketizedLocations *)obj->_state.locationHistory setShouldWaitForSnappedSegments:1];
    [(NavdBucketizedLocations *)obj->_state.locationHistory setUseMatchedCoordinateForMatching:1];
  }

  route = obj->_state.route;
  obj->_state.route = routeCopy;

  objc_sync_exit(obj);
}

- (id)matchResultForLocation:(id)location
{
  locationCopy = location;
  locationHistory = self->_state.locationHistory;
  [locationCopy coordinate];
  v6 = GEOLocationFromCLLocationCoordinate2D();
  v7 = [(NavdBucketizedLocations *)locationHistory matchLocation:v6 transportType:0];

  return v7;
}

- (BOOL)isOnRoute:(id)route location:(id)location
{
  locationCopy = location;
  routeMatch = [route routeMatch];
  [routeMatch distanceFromRoute];
  v8 = v7;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [locationCopy horizontalAccuracy];
    v11 = v10;
    GEOConfigGetDouble();
    v23 = 134218496;
    v24 = v8;
    v25 = 2048;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Distance to route : %.6f , accuracy : %.6f, networkdefault(NavdRouteGenius_OnRouteDistance) : %.6f", &v23, 0x20u);
  }

  GEOConfigGetDouble();
  v14 = v13;
  [routeMatch roadWidth];
  if (v14 < v15)
  {
    [routeMatch roadWidth];
    v14 = v16;
  }

  GEOConfigGetDouble();
  v18 = v17;
  [locationCopy horizontalAccuracy];
  v19 = v18 + v14;
  if (v20 > 0.0)
  {
    [locationCopy horizontalAccuracy];
    v19 = v21 + v19;
  }

  return v8 < v19;
}

- (BOOL)isLoadingRoute
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = BYTE1(selfCopy->_state.routes);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)loadRoute
{
  obj = self;
  objc_sync_enter(obj);
  BYTE1(obj->_state.routes) = 1;
  objc_sync_exit(obj);
}

- (BOOL)hasRouteLoaded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  routes = selfCopy->_state.routes;
  objc_sync_exit(selfCopy);

  return routes;
}

- (void)updateRerouteInfoForLocation:(id)location time:(id)time
{
  locationCopy = location;
  timeCopy = time;
  origin = self->_state.origin;
  if (origin)
  {
    [(GEOComposedWaypoint *)origin count];
    v9 = [NavdOffRouteInfo alloc];
    [locationCopy coordinate];
    v11 = v10;
    [locationCopy coordinate];
    v13 = v12;
    latLng = [(NSString *)self->_state.queue._name latLng];
    [latLng lat];
    v16 = v15;
    latLng2 = [(NSString *)self->_state.queue._name latLng];
    [latLng2 lng];
    v19 = [(NavdOffRouteInfo *)v9 initWithCurrentDate:timeCopy location:v11 destination:v13, v16, v18];

    v20 = [(GEOComposedWaypoint *)self->_state.origin arrayByAddingObject:v19];
    v21 = self->_state.origin;
    self->_state.origin = v20;

    v34 = [(GEOComposedWaypoint *)self->_state.origin copy];
    v22 = objc_alloc_init(NSArray);
    v23 = self->_state.origin;
    self->_state.origin = v22;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = v34;
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v25)
    {
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          [locationCopy coordinate];
          v30 = v29;
          [locationCopy coordinate];
          [(NavdOffRouteInfo *)v28 updateWithCurrentDate:timeCopy location:v28 == v19 isMostRecentReroute:0 throttledReroutesCount:v30];
          [(NavdOffRouteInfo *)v28 penalty];
          if (v31 > 2.22044605e-16)
          {
            v32 = [(GEOComposedWaypoint *)self->_state.origin arrayByAddingObject:v28];
            v33 = self->_state.origin;
            self->_state.origin = v32;
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v25);
    }
  }
}

- (void)updateForRerouteWithLocation:(id)location time:(id)time
{
  var1 = location.var1;
  var0 = location.var0;
  timeCopy = time;
  v7 = [NavdOffRouteInfo alloc];
  v8 = self->_state.queue._name;
  if ([(NSString *)v8 hasMapItemStorage])
  {
    mapItemStorage = [(NSString *)v8 mapItemStorage];
    [mapItemStorage coordinate];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    mapItemStorage = [(NSString *)v8 latLng];
    [mapItemStorage lat];
    v11 = v14;
    latLng = [(NSString *)v8 latLng];
    [latLng lng];
    v13 = v16;
  }

  v17 = [(NavdOffRouteInfo *)v7 initWithCurrentDate:timeCopy location:var0 destination:var1, v11, v13];
  v18 = [(GEOComposedWaypoint *)self->_state.origin arrayByAddingObject:v17];
  origin = self->_state.origin;
  self->_state.origin = v18;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end