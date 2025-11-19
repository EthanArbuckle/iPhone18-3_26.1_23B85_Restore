@interface _MNLocationSimulationState_SearchingForOffRoute
- ($1AB5FA073B851C12C2339EC22442E995)_nextOffRouteTarget;
- (id)_routeToFollow;
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (void)_findFirstJunction:(id)a3;
- (void)_findOffRouteLocationWithMatchedSegments:(id)a3 stepFinishedHandler:(id)a4;
- (void)_findRouteToOffRouteLocation;
- (void)_findRouteToOffRouteLocation:(id)a3 stepFinishedHandler:(id)a4;
- (void)onEnterState;
- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4;
@end

@implementation _MNLocationSimulationState_SearchingForOffRoute

- (void)_findRouteToOffRouteLocation:(id)a3 stepFinishedHandler:(id)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E69A1E70];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [(_MNLocationSimulationState *)self data];
  v11 = [v10 lastLocation];
  v12 = [v9 initWithCLLocation:v11];

  v13 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v12 isCurrentLocation:1];
  v14 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v8 isCurrentLocation:0];

  v15 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  v16 = MNNavigationQueue();
  [v15 setCallbackQueue:v16];

  [v15 setRequestType:1];
  [v15 setCurrentLocation:v12];
  v36[0] = v13;
  v36[1] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v15 setWaypoints:v17];

  v18 = [(_MNLocationSimulationState *)self data];
  v19 = [v18 routeInfo];
  v20 = [v19 route];
  [v15 setTransportType:{objc_msgSend(v20, "transportType")}];

  v21 = [(_MNLocationSimulationState *)self data];
  v22 = [v21 routeInfo];
  v23 = [v22 route];
  v24 = [v23 routeAttributes];
  [v15 setRouteAttributes:v24];

  [v15 setMaxRouteCount:1];
  v25 = [(_MNLocationSimulationState *)self data];
  v26 = [v25 auditToken];
  [v15 setAuditToken:v26];

  v27 = [(_MNLocationSimulationState *)self data];
  v28 = [v27 requestingAppIdentifier];
  [v15 setRequestingAppIdentifier:v28];

  v29 = [objc_alloc(MEMORY[0x1E69A1D00]) initWithPurpose:1];
  [v15 setFeedback:v29];

  v30 = [MEMORY[0x1E69A1D18] sharedService];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __100___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation_stepFinishedHandler___block_invoke;
  v34[3] = &unk_1E842EF50;
  v35 = v6;
  v31 = v6;
  v32 = [v30 requestRoutes:v15 handler:v34];

  v33 = *MEMORY[0x1E69E9840];
}

- ($1AB5FA073B851C12C2339EC22442E995)_nextOffRouteTarget
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_candidateRoads lastObject];
  [(NSMutableArray *)self->_candidateRoads removeLastObject];
  checkedRoads = self->_checkedRoads;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "roadID")}];
  [(NSMutableSet *)checkedRoads addObject:v5];

  if (v3)
  {
    v6 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v3;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "    Considering candidate road: %@", buf, 0xCu);
    }

    v7 = [(_MNLocationSimulationState *)self data];
    v8 = [v7 routeInfo];
    v9 = [v8 route];

    v10 = [objc_alloc(MEMORY[0x1E69A2548]) initWithRoute:v9 auditToken:0];
    [v3 lastCoordinate2D];
    [v10 distanceToRouteFrom:?];
    v12 = v11;
    GEOConfigGetDouble();
    if (v12 <= v13)
    {
      v20 = [(GEOMapFeatureAccess *)self->_mapFeatureAccess synchronousFindRoadsFromNextIntersectionOf:v3];
      v21 = [(_MNLocationSimulationState *)self data];
      v22 = [v21 routeInfo];
      v23 = [v22 route];
      v24 = [v23 transportType];

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __70___MNLocationSimulationState_SearchingForOffRoute__nextOffRouteTarget__block_invoke;
      v36[3] = &unk_1E842BCD8;
      v36[4] = self;
      v37 = v24;
      v25 = [v20 _geo_filtered:v36];

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70___MNLocationSimulationState_SearchingForOffRoute__nextOffRouteTarget__block_invoke_2;
      v34[3] = &unk_1E842BD00;
      v35 = v10;
      v26 = [v25 sortedArrayUsingComparator:v34];

      [(NSMutableArray *)self->_candidateRoads addObjectsFromArray:v26];
      *&v17 = -180.0;
      while ([(NSMutableArray *)self->_candidateRoads count])
      {
        [(_MNLocationSimulationState_SearchingForOffRoute *)self _nextOffRouteTarget];
        *&v15 = v27;
        if (fabs(v28) <= 180.0 && v27 >= -90.0 && v27 <= 90.0)
        {
          v19 = v29;
          *&v17 = v28;
          goto LABEL_13;
        }
      }

      *&v19 = 1.79769313e308;
      *&v15 = -180.0;
LABEL_13:
    }

    else
    {
      [v3 lastCoordinate];
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }
  }

  else
  {
    *&v17 = -180.0;
    *&v19 = 1.79769313e308;
    *&v15 = -180.0;
  }

  v30 = *MEMORY[0x1E69E9840];
  v31 = *&v15;
  v32 = *&v17;
  v33 = *&v19;
  result.var2 = v33;
  result.var1 = v32;
  result.var0 = v31;
  return result;
}

- (void)_findOffRouteLocationWithMatchedSegments:(id)a3 stepFinishedHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Starting search for off route target.", buf, 2u);
  }

  v9 = objc_alloc(MEMORY[0x1E69A2198]);
  v10 = geo_dispatch_queue_create();
  v11 = [v9 initWithQueue:v10];
  mapFeatureAccess = self->_mapFeatureAccess;
  self->_mapFeatureAccess = v11;

  v13 = [(_MNLocationSimulationState *)self data];
  v14 = [v13 auditToken];
  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setAuditToken:v14];

  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setAllowNetworkTileLoad:1];
  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setFlipNegativeTravelDirectionRoads:1];
  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:0];
  v15 = objc_opt_new();
  candidateRoads = self->_candidateRoads;
  self->_candidateRoads = v15;

  v17 = objc_opt_new();
  checkedRoads = self->_checkedRoads;
  self->_checkedRoads = v17;

  v19 = [(_MNLocationSimulationState *)self data];
  v20 = [v19 routeInfo];
  v21 = [v20 route];

  GEOConfigGetDouble();
  [v21 routeCoordinateForDistanceAfterStart:?];
  if ([v6 count])
  {
    v34 = v21;
    v35 = v7;
    v22 = 0;
    while (1)
    {
      v23 = [v6 objectAtIndexedSubscript:{v22, v34, v35}];
      [v23 endRouteCoordinate];
      if ((GEOPolylineCoordinateIsABeforeB() & 1) == 0)
      {
        v24 = MNGetMNNavigationSimulationLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v23;
          _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_DEBUG, "Checking divergence from matched segment: %@", buf, 0xCu);
        }

        v25 = self->_candidateRoads;
        v26 = [v23 road];
        [(NSMutableArray *)v25 addObject:v26];

        [(_MNLocationSimulationState_SearchingForOffRoute *)self _nextOffRouteTarget];
        if (fabs(v28) <= 180.0 && v27 >= -90.0 && v27 <= 90.0)
        {
          break;
        }
      }

      if (++v22 >= [v6 count])
      {
        v29 = 0;
        goto LABEL_15;
      }
    }

    v29 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v27, v28}];

LABEL_15:
    v21 = v34;
    v7 = v35;
  }

  else
  {
    v29 = 0;
  }

  v30 = self->_mapFeatureAccess;
  self->_mapFeatureAccess = 0;

  v31 = self->_candidateRoads;
  self->_candidateRoads = 0;

  v32 = self->_checkedRoads;
  self->_checkedRoads = 0;

  v7[2](v7, v29, v29 != 0);
  v33 = *MEMORY[0x1E69E9840];
}

- (void)_findFirstJunction:(id)a3
{
  v4 = a3;
  v5 = [(_MNLocationSimulationState *)self data];
  v6 = [v5 routeInfo];
  v7 = [v6 route];

  v8 = objc_alloc(MEMORY[0x1E69A2330]);
  v9 = [(_MNLocationSimulationState *)self data];
  v10 = [v9 auditToken];
  v11 = [v8 initWithRoute:v7 auditToken:v10 loggingIdentifier:@"MNNavigationSimulation"];

  v12 = [v7 endRouteCoordinate];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___MNLocationSimulationState_SearchingForOffRoute__findFirstJunction___block_invoke;
  v15[3] = &unk_1E842BCB0;
  v16 = v4;
  v13 = *MEMORY[0x1E69A1928];
  v14 = v4;
  [v11 matchRouteFromStart:v13 toEnd:v12 finishedHandler:v15];
}

- (void)_findRouteToOffRouteLocation
{
  v3 = [MNSequence alloc];
  v4 = geo_dispatch_queue_create();
  v5 = [(MNSequence *)v3 initWithQueue:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation__block_invoke;
  v9[3] = &unk_1E842F1D8;
  v9[4] = self;
  [(MNSequence *)v5 addStep:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation__block_invoke_2;
  v8[3] = &unk_1E842BC38;
  v8[4] = self;
  [(MNSequence *)v5 addStep:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation__block_invoke_3;
  v7[3] = &unk_1E842BC60;
  v7[4] = self;
  [(MNSequence *)v5 addStep:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation__block_invoke_264;
  v6[3] = &unk_1E842BC88;
  v6[4] = self;
  [(MNSequence *)v5 setSequenceFinalizeHandler:v6];
  [(MNSequence *)v5 start];
}

- (id)_routeToFollow
{
  routeToOffRouteLocation = self->_routeToOffRouteLocation;
  if (routeToOffRouteLocation)
  {
    v3 = routeToOffRouteLocation;
  }

  else
  {
    v4 = [(_MNLocationSimulationState *)self data];
    v3 = [v4 routeToFollow];
  }

  return v3;
}

- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4
{
  if (!self->_routeToOffRouteLocation)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = _MNLocationSimulationState_SearchingForOffRoute;
    [(_MNLocationSimulationState_FollowingRoute *)&v6 updateWithRouteInfo:a3 rerouteReason:a4];
  }
}

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  v23 = 0.0;
  v5 = [(_MNLocationSimulationState *)self data];
  v6 = -[_MNLocationSimulationState_FollowingRoute _projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:](self, "_projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:", [v5 lastRouteCoordinate], &v23, a3);

  if (GEOPolylineCoordinateIsValid())
  {
    v7 = [(_MNLocationSimulationState_SearchingForOffRoute *)self _routeToFollow];
    [v7 pointAtRouteCoordinate:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v7 courseAtRouteCoordinateIndex:v6];
    v15 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v9 course:v11 speed:v13, v14, v23];
    v16 = [(_MNLocationSimulationState *)self data];
    [v16 setLastRouteCoordinate:v6];

    if (self->_routeToOffRouteLocation)
    {
      v17 = [v7 legs];
      v18 = [(_MNLocationSimulationState *)self data];
      v19 = [v17 objectAtIndexedSubscript:{objc_msgSend(v18, "currentLegIndex")}];

      if ([(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:v6 atEndOfLeg:v19])
      {
        v20 = [(_MNLocationSimulationState *)self delegate];
        v21 = objc_opt_new();
        [v20 changeState:v21];
      }
    }

    else if (self->_shouldStartSearchOnNextLocation)
    {
      self->_shouldStartSearchOnNextLocation = 0;
      [(_MNLocationSimulationState_SearchingForOffRoute *)self _findRouteToOffRouteLocation];
    }
  }

  else
  {
    v7 = [(_MNLocationSimulationState *)self data];
    v15 = [v7 lastLocation];
  }

  return v15;
}

- (void)onEnterState
{
  v3 = [(_MNLocationSimulationState *)self data];
  v4 = [v3 lastLocation];

  if (v4)
  {

    [(_MNLocationSimulationState_SearchingForOffRoute *)self _findRouteToOffRouteLocation];
  }

  else
  {
    self->_shouldStartSearchOnNextLocation = 1;
  }
}

@end