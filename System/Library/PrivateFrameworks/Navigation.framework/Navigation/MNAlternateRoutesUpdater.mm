@interface MNAlternateRoutesUpdater
- (BOOL)setAlternateRoutes:(id)routes forMainRoute:(id)route;
- (BOOL)updateForLocation:(id)location;
- (BOOL)updateForReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (NSArray)alternateRoutes;
@end

@implementation MNAlternateRoutesUpdater

- (NSArray)alternateRoutes
{
  v21 = *MEMORY[0x1E69E9840];
  alternateRoutes = self->_alternateRoutes;
  if (alternateRoutes)
  {
    v3 = alternateRoutes;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_trackedAlternateRoutes, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_trackedAlternateRoutes;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          alternateRoute = [*(*(&v16 + 1) + 8 * i) alternateRoute];
          [(NSArray *)v5 addObject:alternateRoute];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = self->_alternateRoutes;
    self->_alternateRoutes = v5;
    v13 = v5;

    v3 = self->_alternateRoutes;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)updateForReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  rerouteCopy = reroute;
  mainRoute = self->_mainRoute;
  if (mainRoute != rerouteCopy)
  {
    v8 = [(NSArray *)self->_alternateRoutes indexOfObject:rerouteCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v10 = v8;
      v9 = [(NSArray *)self->_alternateRoutes mutableCopy];
      [v9 removeObjectAtIndex:v10];
      if (reason == 11 && self->_mainRoute)
      {
        [v9 addObject:?];
      }
    }

    [(MNAlternateRoutesUpdater *)self setAlternateRoutes:v9 forMainRoute:rerouteCopy];
  }

  return mainRoute != rerouteCopy;
}

- (BOOL)updateForLocation:(id)location
{
  v32 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (-[NSMutableArray count](self->_trackedAlternateRoutes, "count") && ([locationCopy routeMatch], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (!self->_mainRoute)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tracking alternate routes requires the main route."];
      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = 136316162;
        v23 = "[MNAlternateRoutesUpdater updateForLocation:]";
        v24 = 2080;
        v25 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNAlternateRoutesUpdater.m";
        v26 = 1024;
        v27 = 104;
        v28 = 2080;
        v29 = "_mainRoute != nil";
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v22, 0x30u);
      }
    }

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    if ([(NSMutableArray *)self->_trackedAlternateRoutes count])
    {
      v7 = 0;
      do
      {
        v8 = [(NSMutableArray *)self->_trackedAlternateRoutes objectAtIndex:v7];
        mainRoute = [v8 mainRoute];
        route = [mainRoute route];
        routeMatch = [locationCopy routeMatch];
        route2 = [routeMatch route];

        if (route != route2 || ([locationCopy routeMatch], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "routeCoordinate"), objc_msgSend(v8, "divergenceCoordinate"), v14 = GEOPolylineCoordinateCompare(), v13, v14 == 1))
        {
          [indexSet addIndex:v7];
        }

        ++v7;
      }

      while (v7 < [(NSMutableArray *)self->_trackedAlternateRoutes count]);
    }

    v15 = [indexSet count];
    v16 = v15 != 0;
    if (v15)
    {
      [(NSMutableArray *)self->_trackedAlternateRoutes removeObjectsAtIndexes:indexSet];
      alternateRoutes = self->_alternateRoutes;
      self->_alternateRoutes = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)setAlternateRoutes:(id)routes forMainRoute:(id)route
{
  v37 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  routeCopy = route;
  alternateRoutes = self->_alternateRoutes;
  self->_alternateRoutes = 0;

  selfCopy = self;
  objc_storeStrong(&self->_mainRoute, route);
  v9 = objc_alloc_init(MNRouteDivergenceFinder);
  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = routesCopy;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = 0;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        route = [routeCopy route];
        route2 = [v14 route];
        v17 = [(MNRouteDivergenceFinder *)v9 findFirstDivergenceBetweenRoute:route andRoute:route2];
        firstObject = [v17 firstObject];

        routeCoordinate = [firstObject routeCoordinate];
        if (firstObject)
        {
          v20 = routeCoordinate;
          if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
          {
            route3 = [routeCopy route];
            v22 = [route3 routeCoordinateForDistance:v20 afterRouteCoordinate:40.0];

            v23 = objc_alloc_init(_MNTrackedAlternateRoute);
            [(_MNTrackedAlternateRoute *)v23 setMainRoute:routeCopy];
            [(_MNTrackedAlternateRoute *)v23 setAlternateRoute:v14];
            [(_MNTrackedAlternateRoute *)v23 setDivergenceCoordinate:v22];
            [(NSMutableArray *)v30 addObject:v23];

            v29 = 1;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  else
  {
    v29 = 0;
  }

  v24 = [(NSMutableArray *)selfCopy->_trackedAlternateRoutes count];
  LOBYTE(v24) = v24 != [(NSMutableArray *)v30 count];
  trackedAlternateRoutes = selfCopy->_trackedAlternateRoutes;
  selfCopy->_trackedAlternateRoutes = v30;

  v26 = *MEMORY[0x1E69E9840];
  return (v24 | v29) & 1;
}

@end