@interface MNRouteManager
- (MNRouteManager)initWithAuditToken:(id)a3;
- (NSArray)allRoutes;
- (void)_clearPreloader;
- (void)_updatePreloaderForRoute:(id)a3;
- (void)clearCurrentRoute;
- (void)close;
- (void)dealloc;
- (void)locationManager:(id)a3 didUpdateLocation:(id)a4;
- (void)open;
- (void)updateForLocation:(id)a3;
- (void)updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)updateWithAlternateRoutes:(id)a3;
- (void)updateWithPreviewRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)updateWithStartNavigationDetails:(id)a3;
@end

@implementation MNRouteManager

- (void)locationManager:(id)a3 didUpdateLocation:(id)a4
{
  preloader = self->_preloader;
  v5 = [a4 routeMatch];
  [(GEORoutePreloader *)preloader updateWithRouteMatch:v5];
}

- (void)_updatePreloaderForRoute:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MNRouteManager *)self _clearPreloader];
  v5 = [v4 route];

  v6 = [v5 isOfflineRoute];
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v7 = [v5 origin];
      v8 = [v7 isCurrentLocation];

      if (v8)
      {
        if ([v5 transportType] == 1)
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

        v12 = [objc_alloc(MEMORY[0x1E69A2550]) initWithRoute:v5 strategies:v11 auditToken:self->_auditToken];
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

- (void)updateWithAlternateRoutes:(id)a3
{
  v4 = [a3 mutableCopy];
  alternateRoutes = self->_alternateRoutes;
  self->_alternateRoutes = v4;

  allRoutes = self->_allRoutes;
  self->_allRoutes = 0;
}

- (void)updateForLocation:(id)a3
{
  preloader = self->_preloader;
  v4 = [a3 routeMatch];
  [(GEORoutePreloader *)preloader updateWithRouteMatch:v4];
}

- (void)updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (self->_currentRouteInfo == v11)
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
    objc_storeStrong(&self->_directionsRequest, a5);
    objc_storeStrong(&self->_directionsResponse, a6);
    v14 = [(NSMutableArray *)self->_alternateRoutes indexOfObject:v11];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_alternateRoutes removeObjectAtIndex:v14];
      allRoutes = self->_allRoutes;
      self->_allRoutes = 0;
    }

    v16 = [(MNActiveRouteInfo *)v11 route];
    objc_storeStrong(&self->_currentRouteInfo, a3);
    if (a4 - 9 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      objc_storeStrong(&self->_originalRoute, v16);
    }

    [(MNRouteManager *)self _updatePreloaderForRoute:v11];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateWithStartNavigationDetails:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 selectedRouteIndex];
  v6 = [v4 routes];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
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

    v8 = [v4 routes];
    v9 = [v8 count];

    if (v5 >= v9)
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = [v4 selectedRouteIndex];
      v49 = [v4 routes];
      v50 = [v47 stringWithFormat:@"Selected route index is outside valid range of routes. Index: %d. Routes count: %d\n", v48, objc_msgSend(v49, "count")];

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

    v10 = [v4 routes];
    v11 = [v10 count];

    if (v5 >= v11)
    {
      v12 = MNGetMNNavigationSessionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v4 routes];
        v14 = [v13 count];
        *buf = 67109376;
        *v53 = v5;
        *&v53[4] = 1024;
        *&v53[6] = v14;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "MNStartNavigationDetails selectedRouteIndex is %d. Only (%d) routes were passed in", buf, 0xEu);
      }
    }

    v5 = 0;
  }

  v15 = [v4 routeAttributes];
  routeAttributes = self->_routeAttributes;
  self->_routeAttributes = v15;

  v17 = MNGetMNRouteAttributesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_routeAttributes;
    *buf = 138543362;
    *v53 = v18;
    _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "_routeAttributes = %{public}@", buf, 0xCu);
  }

  v19 = [v4 directionsRequest];
  v20 = [v19 commonOptions];
  commonOptions = self->_commonOptions;
  self->_commonOptions = v20;

  v22 = [v4 directionsRequest];
  directionsRequest = self->_directionsRequest;
  self->_directionsRequest = v22;

  v24 = [v4 directionsResponse];
  directionsResponse = self->_directionsResponse;
  self->_directionsResponse = v24;

  v26 = [v4 requestingAppIdentifier];
  requestingAppIdentifier = self->_requestingAppIdentifier;
  self->_requestingAppIdentifier = v26;

  self->_selectedRouteIndex = [v4 selectedRouteIndex];
  v28 = [v4 routes];
  v29 = [v28 objectAtIndexedSubscript:v5];

  v30 = [[MNActiveRouteInfo alloc] initWithRoute:v29];
  objc_storeStrong(&self->_currentRouteInfo, v30);
  v31 = [v29 destination];
  originalDestination = self->_originalDestination;
  self->_originalDestination = v31;

  if ([v4 navigationType] == 3 && !objc_msgSend(v29, "transportType"))
  {
    v33 = [v4 routes];
    v34 = [v33 count];

    v35 = 0;
    if (v34)
    {
      v36 = 0;
      do
      {
        if (v36 != [v4 selectedRouteIndex])
        {
          if (!v35)
          {
            v35 = [MEMORY[0x1E695DF70] array];
          }

          v37 = [v4 routes];
          v38 = [v37 objectAtIndexedSubscript:v36];

          if ([v38 usesZilch])
          {
            v39 = [v38 routeAttributes];
            [v39 setIncludeRoutingPathLeg:0];
          }

          v40 = [[MNActiveRouteInfo alloc] initWithRoute:v38];
          [v35 addObject:v40];
        }

        ++v36;
        v41 = [v4 routes];
        v42 = [v41 count];
      }

      while (v36 < v42);
    }

    [(MNRouteManager *)self updateWithAlternateRoutes:v35];
  }

  [(MNRouteManager *)self _updatePreloaderForRoute:v30];

  v43 = *MEMORY[0x1E69E9840];
}

- (void)updateWithPreviewRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v8 = a3;
  objc_storeStrong(&self->_previewRoutes, a3);
  self->_selectedRouteIndex = a4;
  if ([(NSArray *)self->_previewRoutes count]<= a4)
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
    v3 = [MEMORY[0x1E69A2610] modernLoader];
    [v3 closeForClient:self->_tileLoaderClientIdentifier];

    v4 = [MEMORY[0x1E69A2478] modernManager];
    [v4 closeServerConnection:1];

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

    v6 = [MEMORY[0x1E69A2610] modernLoader];
    [v6 openForClient:self->_tileLoaderClientIdentifier];

    v7 = [MEMORY[0x1E69A2478] modernManager];
    [v7 openServerConnection];
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

- (MNRouteManager)initWithAuditToken:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MNRouteManager;
  v6 = [(MNRouteManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditToken, a3);
    v8 = v7;
  }

  return v7;
}

@end