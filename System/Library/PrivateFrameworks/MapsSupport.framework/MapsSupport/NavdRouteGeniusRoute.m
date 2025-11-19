@interface NavdRouteGeniusRoute
- (BOOL)hasRouteLoaded;
- (BOOL)isLoadingRoute;
- (BOOL)isOnRoute:(id)a3 location:(id)a4;
- (NavdRouteGeniusRoute)initWithEntry:(id)a3;
- (id).cxx_construct;
- (id)description;
- (id)destinationWaypoint;
- (id)matchResultForLocation:(id)a3;
- (id)route;
- (void)destinationGEOLocation:(id)a3;
- (void)loadRoute;
- (void)setDestinationWaypoint:(id)a3;
- (void)setRoute:(id)a3;
- (void)updateForRerouteWithLocation:(id)a3 time:(id)a4;
- (void)updateRerouteInfoForLocation:(id)a3 time:(id)a4;
@end

@implementation NavdRouteGeniusRoute

- (NavdRouteGeniusRoute)initWithEntry:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NavdRouteGeniusRoute;
  v6 = [(NavdRouteGeniusRoute *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state.queue._innerQueue, a3);
    v8 = objc_alloc_init(NSArray);
    origin = v7->_state.origin;
    v7->_state.origin = v8;
  }

  return v7;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [NSMutableString alloc];
  if (LOBYTE(v2->_state.routes))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  innerQueue = v2->_state.queue._innerQueue;
  v6 = [(NSString *)v2->_state.queue._name latLng];
  [v6 lat];
  v8 = v7;
  v9 = [(NSString *)v2->_state.queue._name latLng];
  [v9 lng];
  v11 = [v3 initWithFormat:@"entry: %@\r\nHasRouteLoaded : %@\r\nDestinationWaypoint : <%.6f, %.6f> \r\nOffRouteInfos: count=%lu\r\n", innerQueue, v4, v8, v10, -[GEOComposedWaypoint count](v2->_state.origin, "count")];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v2->_state.origin;
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

  objc_sync_exit(v2);

  return v11;
}

- (id)destinationWaypoint
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state.queue._name;
  objc_sync_exit(v2);

  return v3;
}

- (void)setDestinationWaypoint:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  name = obj->_state.queue._name;
  obj->_state.queue._name = v4;

  objc_sync_exit(obj);
}

- (void)destinationGEOLocation:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  name = obj->_state.queue._name;
  obj->_state.queue._name = v4;

  objc_sync_exit(obj);
}

- (id)route
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state.route;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRoute:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  LOWORD(obj->_state.routes) = 1;
  locationHistory = obj->_state.locationHistory;
  obj->_state.locationHistory = 0;

  if (v4)
  {
    v6 = [[GEONavigationDrivingMapMatcher alloc] initWithRoute:v4 auditToken:0];
    v7 = obj->_state.locationHistory;
    obj->_state.locationHistory = v6;

    [(NavdBucketizedLocations *)obj->_state.locationHistory setRequiresRoadNetworkData:1];
    [(NavdBucketizedLocations *)obj->_state.locationHistory setShouldWaitForSnappedSegments:1];
    [(NavdBucketizedLocations *)obj->_state.locationHistory setUseMatchedCoordinateForMatching:1];
  }

  route = obj->_state.route;
  obj->_state.route = v4;

  objc_sync_exit(obj);
}

- (id)matchResultForLocation:(id)a3
{
  v4 = a3;
  locationHistory = self->_state.locationHistory;
  [v4 coordinate];
  v6 = GEOLocationFromCLLocationCoordinate2D();
  v7 = [(NavdBucketizedLocations *)locationHistory matchLocation:v6 transportType:0];

  return v7;
}

- (BOOL)isOnRoute:(id)a3 location:(id)a4
{
  v5 = a4;
  v6 = [a3 routeMatch];
  [v6 distanceFromRoute];
  v8 = v7;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [v5 horizontalAccuracy];
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
  [v6 roadWidth];
  if (v14 < v15)
  {
    [v6 roadWidth];
    v14 = v16;
  }

  GEOConfigGetDouble();
  v18 = v17;
  [v5 horizontalAccuracy];
  v19 = v18 + v14;
  if (v20 > 0.0)
  {
    [v5 horizontalAccuracy];
    v19 = v21 + v19;
  }

  return v8 < v19;
}

- (BOOL)isLoadingRoute
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = BYTE1(v2->_state.routes);
  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  routes = v2->_state.routes;
  objc_sync_exit(v2);

  return routes;
}

- (void)updateRerouteInfoForLocation:(id)a3 time:(id)a4
{
  v6 = a3;
  v7 = a4;
  origin = self->_state.origin;
  if (origin)
  {
    [(GEOComposedWaypoint *)origin count];
    v9 = [NavdOffRouteInfo alloc];
    [v6 coordinate];
    v11 = v10;
    [v6 coordinate];
    v13 = v12;
    v14 = [(NSString *)self->_state.queue._name latLng];
    [v14 lat];
    v16 = v15;
    v17 = [(NSString *)self->_state.queue._name latLng];
    [v17 lng];
    v19 = [(NavdOffRouteInfo *)v9 initWithCurrentDate:v7 location:v11 destination:v13, v16, v18];

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
          [v6 coordinate];
          v30 = v29;
          [v6 coordinate];
          [(NavdOffRouteInfo *)v28 updateWithCurrentDate:v7 location:v28 == v19 isMostRecentReroute:0 throttledReroutesCount:v30];
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

- (void)updateForRerouteWithLocation:(id)a3 time:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v20 = a4;
  v7 = [NavdOffRouteInfo alloc];
  v8 = self->_state.queue._name;
  if ([(NSString *)v8 hasMapItemStorage])
  {
    v9 = [(NSString *)v8 mapItemStorage];
    [v9 coordinate];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v9 = [(NSString *)v8 latLng];
    [v9 lat];
    v11 = v14;
    v15 = [(NSString *)v8 latLng];
    [v15 lng];
    v13 = v16;
  }

  v17 = [(NavdOffRouteInfo *)v7 initWithCurrentDate:v20 location:var0 destination:var1, v11, v13];
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