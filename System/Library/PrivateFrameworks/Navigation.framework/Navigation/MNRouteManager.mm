@interface MNRouteManager
- (MNRouteManager)initWithAuditToken:(id)token;
- (NSArray)allRoutes;
- (void)_clearPreloader;
- (void)_updatePreloaderForRoute:(id)route;
- (void)clearCurrentRoute;
- (void)close;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocation:(id)location;
- (void)open;
- (void)updateForLocation:(id)location;
- (void)updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)updateWithAlternateRoutes:(id)routes;
- (void)updateWithPreviewRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (void)updateWithStartNavigationDetails:(id)details;
@end

@implementation MNRouteManager

- (void)locationManager:(id)manager didUpdateLocation:(id)location
{
  preloader = self->_preloader;
  routeMatch = [location routeMatch];
  [(GEORoutePreloader *)preloader updateWithRouteMatch:routeMatch];
}

- (void)_updatePreloaderForRoute:(id)route
{
  v16[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  [(MNRouteManager *)self _clearPreloader];
  route = [routeCopy route];

  isOfflineRoute = [route isOfflineRoute];
  if (route)
  {
    if ((isOfflineRoute & 1) == 0)
    {
      origin = [route origin];
      isCurrentLocation = [origin isCurrentLocation];

      if (isCurrentLocation)
      {
        if ([route transportType] == 1)
        {
          v9 = objc_alloc_init(MEMORY[0x1E69A2680]);
          [v9 addTileSetStyle:53 betweenZoom:13 andZoom:15];
          [v9 addTileSetStyle:37 betweenZoom:13 andZoom:15];
          v16[0] = v9;
          v10 = v16;
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x1E69A2268]);
          [v9 addTileSetStyle:53 betweenZoom:13 andZoom:15];
          v15 = v9;
          v10 = &v15;
        }

        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

        v12 = [objc_alloc(MEMORY[0x1E69A2550]) initWithRoute:route strategies:v11 auditToken:self->_auditToken];
        preloader = self->_preloader;
        self->_preloader = v12;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_clearPreloader
{
  [(GEORoutePreloader *)self->_preloader stop];
  [(GEORoutePreloader *)self->_preloader tearDown];
  preloader = self->_preloader;
  self->_preloader = 0;
}

- (void)clearCurrentRoute
{
  currentRouteInfo = self->_currentRouteInfo;
  self->_currentRouteInfo = 0;
}

- (void)updateWithAlternateRoutes:(id)routes
{
  v4 = [routes mutableCopy];
  alternateRoutes = self->_alternateRoutes;
  self->_alternateRoutes = v4;

  allRoutes = self->_allRoutes;
  self->_allRoutes = 0;
}

- (void)updateForLocation:(id)location
{
  preloader = self->_preloader;
  routeMatch = [location routeMatch];
  [(GEORoutePreloader *)preloader updateWithRouteMatch:routeMatch];
}

- (void)updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  v30 = *MEMORY[0x1E69E9840];
  rerouteCopy = reroute;
  requestCopy = request;
  responseCopy = response;
  if (self->_currentRouteInfo == rerouteCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rerouting to already active route"];
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      v21 = "[MNRouteManager updateForReroute:rerouteReason:request:response:]";
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNRouteManager.m";
      v24 = 1024;
      v25 = 203;
      v26 = 2080;
      v27 = "_currentRouteInfo != routeInfo";
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v20, 0x30u);
    }
  }

  else
  {
    objc_storeStrong(&self->_directionsRequest, request);
    objc_storeStrong(&self->_directionsResponse, response);
    v14 = [(NSMutableArray *)self->_alternateRoutes indexOfObject:rerouteCopy];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_alternateRoutes removeObjectAtIndex:v14];
      allRoutes = self->_allRoutes;
      self->_allRoutes = 0;
    }

    route = [(MNActiveRouteInfo *)rerouteCopy route];
    objc_storeStrong(&self->_currentRouteInfo, reroute);
    if (reason - 9 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      objc_storeStrong(&self->_originalRoute, route);
    }

    [(MNRouteManager *)self _updatePreloaderForRoute:rerouteCopy];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateWithStartNavigationDetails:(id)details
{
  v61 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  selectedRouteIndex = [detailsCopy selectedRouteIndex];
  routes = [detailsCopy routes];
  v7 = [routes count];

  if (selectedRouteIndex >= v7)
  {
    if (selectedRouteIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid selected route index"];
      v45 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *v53 = "[MNRouteManager updateWithStartNavigationDetails:]";
        *&v53[8] = 2080;
        v54 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNRouteManager.m";
        v55 = 1024;
        v56 = 146;
        v57 = 2080;
        v58 = "selectedRouteIndex != NSNotFound";
        v59 = 2112;
        v60 = v44;
        _os_log_impl(&dword_1D311E000, v45, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }

      v46 = MNGetMNNavigationSessionLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v46, OS_LOG_TYPE_ERROR, "MNStartNavigationDetails selectedRouteIndex not set", buf, 2u);
      }
    }

    routes2 = [detailsCopy routes];
    v9 = [routes2 count];

    if (selectedRouteIndex >= v9)
    {
      v47 = MEMORY[0x1E696AEC0];
      selectedRouteIndex2 = [detailsCopy selectedRouteIndex];
      routes3 = [detailsCopy routes];
      v50 = [v47 stringWithFormat:@"Selected route index is outside valid range of routes. Index: %d. Routes count: %d\n", selectedRouteIndex2, objc_msgSend(routes3, "count")];

      v51 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *v53 = "[MNRouteManager updateWithStartNavigationDetails:]";
        *&v53[8] = 2080;
        v54 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNRouteManager.m";
        v55 = 1024;
        v56 = 151;
        v57 = 2080;
        v58 = "selectedRouteIndex < details.routes.count";
        v59 = 2112;
        v60 = v50;
        _os_log_impl(&dword_1D311E000, v51, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    routes4 = [detailsCopy routes];
    v11 = [routes4 count];

    if (selectedRouteIndex >= v11)
    {
      v12 = MNGetMNNavigationSessionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        routes5 = [detailsCopy routes];
        v14 = [routes5 count];
        *buf = 67109376;
        *v53 = selectedRouteIndex;
        *&v53[4] = 1024;
        *&v53[6] = v14;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "MNStartNavigationDetails selectedRouteIndex is %d. Only (%d) routes were passed in", buf, 0xEu);
      }
    }

    selectedRouteIndex = 0;
  }

  routeAttributes = [detailsCopy routeAttributes];
  routeAttributes = self->_routeAttributes;
  self->_routeAttributes = routeAttributes;

  v17 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_routeAttributes;
    *buf = 138543362;
    *v53 = v18;
    _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "_routeAttributes = %{public}@", buf, 0xCu);
  }

  directionsRequest = [detailsCopy directionsRequest];
  commonOptions = [directionsRequest commonOptions];
  commonOptions = self->_commonOptions;
  self->_commonOptions = commonOptions;

  directionsRequest2 = [detailsCopy directionsRequest];
  directionsRequest = self->_directionsRequest;
  self->_directionsRequest = directionsRequest2;

  directionsResponse = [detailsCopy directionsResponse];
  directionsResponse = self->_directionsResponse;
  self->_directionsResponse = directionsResponse;

  requestingAppIdentifier = [detailsCopy requestingAppIdentifier];
  requestingAppIdentifier = self->_requestingAppIdentifier;
  self->_requestingAppIdentifier = requestingAppIdentifier;

  self->_selectedRouteIndex = [detailsCopy selectedRouteIndex];
  routes6 = [detailsCopy routes];
  v29 = [routes6 objectAtIndexedSubscript:selectedRouteIndex];

  v30 = [[MNActiveRouteInfo alloc] initWithRoute:v29];
  objc_storeStrong(&self->_currentRouteInfo, v30);
  destination = [v29 destination];
  originalDestination = self->_originalDestination;
  self->_originalDestination = destination;

  if ([detailsCopy navigationType] == 3 && !objc_msgSend(v29, "transportType"))
  {
    routes7 = [detailsCopy routes];
    v34 = [routes7 count];

    array = 0;
    if (v34)
    {
      v36 = 0;
      do
      {
        if (v36 != [detailsCopy selectedRouteIndex])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          routes8 = [detailsCopy routes];
          v38 = [routes8 objectAtIndexedSubscript:v36];

          if ([v38 usesZilch])
          {
            routeAttributes2 = [v38 routeAttributes];
            [routeAttributes2 setIncludeRoutingPathLeg:0];
          }

          v40 = [[MNActiveRouteInfo alloc] initWithRoute:v38];
          [array addObject:v40];
        }

        ++v36;
        routes9 = [detailsCopy routes];
        v42 = [routes9 count];
      }

      while (v36 < v42);
    }

    [(MNRouteManager *)self updateWithAlternateRoutes:array];
  }

  [(MNRouteManager *)self _updatePreloaderForRoute:v30];

  v43 = *MEMORY[0x1E69E9840];
}

- (void)updateWithPreviewRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  objc_storeStrong(&self->_previewRoutes, routes);
  self->_selectedRouteIndex = index;
  if ([(NSArray *)self->_previewRoutes count]<= index)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_previewRoutes objectAtIndexedSubscript:self->_selectedRouteIndex];
  }

  [(MNRouteManager *)self _updatePreloaderForRoute:v7];
}

- (void)close
{
  if (self->_tileLoaderClientIdentifier)
  {
    modernLoader = [MEMORY[0x1E69A2610] modernLoader];
    [modernLoader closeForClient:self->_tileLoaderClientIdentifier];

    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager closeServerConnection:1];

    tileLoaderClientIdentifier = self->_tileLoaderClientIdentifier;
    self->_tileLoaderClientIdentifier = 0;
  }

  [(MNRouteManager *)self _clearPreloader];
  v6 = +[MNLocationManager shared];
  [v6 unregisterObserver:self];
}

- (void)open
{
  v3 = +[MNLocationManager shared];
  [v3 registerObserver:self];

  if (!self->_tileLoaderClientIdentifier)
  {
    v4 = GEOTileLoaderClientIdentifier();
    tileLoaderClientIdentifier = self->_tileLoaderClientIdentifier;
    self->_tileLoaderClientIdentifier = v4;

    modernLoader = [MEMORY[0x1E69A2610] modernLoader];
    [modernLoader openForClient:self->_tileLoaderClientIdentifier];

    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager openServerConnection];
  }
}

- (void)dealloc
{
  [(MNRouteManager *)self close];
  v3.receiver = self;
  v3.super_class = MNRouteManager;
  [(MNRouteManager *)&v3 dealloc];
}

- (NSArray)allRoutes
{
  allRoutes = self->_allRoutes;
  if (allRoutes)
  {
    v3 = allRoutes;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:self->_currentRouteInfo];
    [(NSArray *)v5 addObjectsFromArray:self->_alternateRoutes];
    v6 = self->_allRoutes;
    self->_allRoutes = v5;
    v7 = v5;

    v3 = self->_allRoutes;
  }

  return v3;
}

- (MNRouteManager)initWithAuditToken:(id)token
{
  tokenCopy = token;
  v10.receiver = self;
  v10.super_class = MNRouteManager;
  v6 = [(MNRouteManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditToken, token);
    v8 = v7;
  }

  return v7;
}

@end