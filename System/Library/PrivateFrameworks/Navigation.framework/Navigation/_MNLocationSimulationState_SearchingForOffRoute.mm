@interface _MNLocationSimulationState_SearchingForOffRoute
- ($1AB5FA073B851C12C2339EC22442E995)_nextOffRouteTarget;
- (id)_routeToFollow;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (void)_findFirstJunction:(id)junction;
- (void)_findOffRouteLocationWithMatchedSegments:(id)segments stepFinishedHandler:(id)handler;
- (void)_findRouteToOffRouteLocation;
- (void)_findRouteToOffRouteLocation:(id)location stepFinishedHandler:(id)handler;
- (void)onEnterState;
- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason;
@end

@implementation _MNLocationSimulationState_SearchingForOffRoute

- (void)_findRouteToOffRouteLocation:(id)location stepFinishedHandler:(id)handler
{
  v36[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = MEMORY[0x1E69A1E70];
  locationCopy = location;
  v9 = [v7 alloc];
  data = [(_MNLocationSimulationState *)self data];
  lastLocation = [data lastLocation];
  v12 = [v9 initWithCLLocation:lastLocation];

  v13 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v12 isCurrentLocation:1];
  v14 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:locationCopy isCurrentLocation:0];

  v15 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  v16 = MNNavigationQueue();
  [v15 setCallbackQueue:v16];

  [v15 setRequestType:1];
  [v15 setCurrentLocation:v12];
  v36[0] = v13;
  v36[1] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v15 setWaypoints:v17];

  data2 = [(_MNLocationSimulationState *)self data];
  routeInfo = [data2 routeInfo];
  route = [routeInfo route];
  [v15 setTransportType:{objc_msgSend(route, "transportType")}];

  data3 = [(_MNLocationSimulationState *)self data];
  routeInfo2 = [data3 routeInfo];
  route2 = [routeInfo2 route];
  routeAttributes = [route2 routeAttributes];
  [v15 setRouteAttributes:routeAttributes];

  [v15 setMaxRouteCount:1];
  data4 = [(_MNLocationSimulationState *)self data];
  auditToken = [data4 auditToken];
  [v15 setAuditToken:auditToken];

  data5 = [(_MNLocationSimulationState *)self data];
  requestingAppIdentifier = [data5 requestingAppIdentifier];
  [v15 setRequestingAppIdentifier:requestingAppIdentifier];

  v29 = [objc_alloc(MEMORY[0x1E69A1D00]) initWithPurpose:1];
  [v15 setFeedback:v29];

  mEMORY[0x1E69A1D18] = [MEMORY[0x1E69A1D18] sharedService];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __100___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation_stepFinishedHandler___block_invoke;
  v34[3] = &unk_1E842EF50;
  v35 = handlerCopy;
  v31 = handlerCopy;
  v32 = [mEMORY[0x1E69A1D18] requestRoutes:v15 handler:v34];

  v33 = *MEMORY[0x1E69E9840];
}

- ($1AB5FA073B851C12C2339EC22442E995)_nextOffRouteTarget
{
  v40 = *MEMORY[0x1E69E9840];
  lastObject = [(NSMutableArray *)self->_candidateRoads lastObject];
  [(NSMutableArray *)self->_candidateRoads removeLastObject];
  checkedRoads = self->_checkedRoads;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(lastObject, "roadID")}];
  [(NSMutableSet *)checkedRoads addObject:v5];

  if (lastObject)
  {
    v6 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = lastObject;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "    Considering candidate road: %@", buf, 0xCu);
    }

    data = [(_MNLocationSimulationState *)self data];
    routeInfo = [data routeInfo];
    route = [routeInfo route];

    v10 = [objc_alloc(MEMORY[0x1E69A2548]) initWithRoute:route auditToken:0];
    [lastObject lastCoordinate2D];
    [v10 distanceToRouteFrom:?];
    v12 = v11;
    GEOConfigGetDouble();
    if (v12 <= v13)
    {
      v20 = [(GEOMapFeatureAccess *)self->_mapFeatureAccess synchronousFindRoadsFromNextIntersectionOf:lastObject];
      data2 = [(_MNLocationSimulationState *)self data];
      routeInfo2 = [data2 routeInfo];
      route2 = [routeInfo2 route];
      transportType = [route2 transportType];

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __70___MNLocationSimulationState_SearchingForOffRoute__nextOffRouteTarget__block_invoke;
      v36[3] = &unk_1E842BCD8;
      v36[4] = self;
      v37 = transportType;
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
      [lastObject lastCoordinate];
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

- (void)_findOffRouteLocationWithMatchedSegments:(id)segments stepFinishedHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  handlerCopy = handler;
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

  data = [(_MNLocationSimulationState *)self data];
  auditToken = [data auditToken];
  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setAuditToken:auditToken];

  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setAllowNetworkTileLoad:1];
  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setFlipNegativeTravelDirectionRoads:1];
  [(GEOMapFeatureAccess *)self->_mapFeatureAccess setVisitDoubleTravelDirectionRoadsTwice:0];
  v15 = objc_opt_new();
  candidateRoads = self->_candidateRoads;
  self->_candidateRoads = v15;

  v17 = objc_opt_new();
  checkedRoads = self->_checkedRoads;
  self->_checkedRoads = v17;

  data2 = [(_MNLocationSimulationState *)self data];
  routeInfo = [data2 routeInfo];
  route = [routeInfo route];

  GEOConfigGetDouble();
  [route routeCoordinateForDistanceAfterStart:?];
  if ([segmentsCopy count])
  {
    v34 = route;
    v35 = handlerCopy;
    v22 = 0;
    while (1)
    {
      v23 = [segmentsCopy objectAtIndexedSubscript:{v22, v34, v35}];
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
        road = [v23 road];
        [(NSMutableArray *)v25 addObject:road];

        [(_MNLocationSimulationState_SearchingForOffRoute *)self _nextOffRouteTarget];
        if (fabs(v28) <= 180.0 && v27 >= -90.0 && v27 <= 90.0)
        {
          break;
        }
      }

      if (++v22 >= [segmentsCopy count])
      {
        v29 = 0;
        goto LABEL_15;
      }
    }

    v29 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v27, v28}];

LABEL_15:
    route = v34;
    handlerCopy = v35;
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

  handlerCopy[2](handlerCopy, v29, v29 != 0);
  v33 = *MEMORY[0x1E69E9840];
}

- (void)_findFirstJunction:(id)junction
{
  junctionCopy = junction;
  data = [(_MNLocationSimulationState *)self data];
  routeInfo = [data routeInfo];
  route = [routeInfo route];

  v8 = objc_alloc(MEMORY[0x1E69A2330]);
  data2 = [(_MNLocationSimulationState *)self data];
  auditToken = [data2 auditToken];
  v11 = [v8 initWithRoute:route auditToken:auditToken loggingIdentifier:@"MNNavigationSimulation"];

  endRouteCoordinate = [route endRouteCoordinate];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___MNLocationSimulationState_SearchingForOffRoute__findFirstJunction___block_invoke;
  v15[3] = &unk_1E842BCB0;
  v16 = junctionCopy;
  v13 = *MEMORY[0x1E69A1928];
  v14 = junctionCopy;
  [v11 matchRouteFromStart:v13 toEnd:endRouteCoordinate finishedHandler:v15];
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
    routeToFollow = routeToOffRouteLocation;
  }

  else
  {
    data = [(_MNLocationSimulationState *)self data];
    routeToFollow = [data routeToFollow];
  }

  return routeToFollow;
}

- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason
{
  if (!self->_routeToOffRouteLocation)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = _MNLocationSimulationState_SearchingForOffRoute;
    [(_MNLocationSimulationState_FollowingRoute *)&v6 updateWithRouteInfo:info rerouteReason:reason];
  }
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  v23 = 0.0;
  data = [(_MNLocationSimulationState *)self data];
  v6 = -[_MNLocationSimulationState_FollowingRoute _projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:](self, "_projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:", [data lastRouteCoordinate], &v23, time);

  if (GEOPolylineCoordinateIsValid())
  {
    _routeToFollow = [(_MNLocationSimulationState_SearchingForOffRoute *)self _routeToFollow];
    [_routeToFollow pointAtRouteCoordinate:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [_routeToFollow courseAtRouteCoordinateIndex:v6];
    lastLocation = [(_MNLocationSimulationState *)self _locationWithCoordinate:v9 course:v11 speed:v13, v14, v23];
    data2 = [(_MNLocationSimulationState *)self data];
    [data2 setLastRouteCoordinate:v6];

    if (self->_routeToOffRouteLocation)
    {
      legs = [_routeToFollow legs];
      data3 = [(_MNLocationSimulationState *)self data];
      v19 = [legs objectAtIndexedSubscript:{objc_msgSend(data3, "currentLegIndex")}];

      if ([(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:v6 atEndOfLeg:v19])
      {
        delegate = [(_MNLocationSimulationState *)self delegate];
        v21 = objc_opt_new();
        [delegate changeState:v21];
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
    _routeToFollow = [(_MNLocationSimulationState *)self data];
    lastLocation = [_routeToFollow lastLocation];
  }

  return lastLocation;
}

- (void)onEnterState
{
  data = [(_MNLocationSimulationState *)self data];
  lastLocation = [data lastLocation];

  if (lastLocation)
  {

    [(_MNLocationSimulationState_SearchingForOffRoute *)self _findRouteToOffRouteLocation];
  }

  else
  {
    self->_shouldStartSearchOnNextLocation = 1;
  }
}

@end