@interface _MNLocationSimulationState_SearchingForParkingBeforeArrival
- (double)_scoreForRoad:(id)a3 coordinate:(id)a4;
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (void)_findParkingLocation:(id)a3;
- (void)_findRouteToParkingDestination;
- (void)_findRouteToParkingLocation:(id)a3 finishedHandler:(id)a4;
- (void)_handleReachedParkingLocation;
@end

@implementation _MNLocationSimulationState_SearchingForParkingBeforeArrival

- (void)_handleReachedParkingLocation
{
  v3 = [(_MNLocationSimulationState *)self delegate];
  v2 = objc_alloc_init(_MNLocationSimulationState_WaitingForParkingSignal);
  [v3 changeState:v2];
}

- (void)_findRouteToParkingLocation:(id)a3 finishedHandler:(id)a4
{
  v32[2] = *MEMORY[0x1E69E9840];
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
  [v15 setCurrentLocation:v8];

  v32[0] = v13;
  v32[1] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v15 setWaypoints:v17];

  [v15 setTransportType:0];
  v18 = [(_MNLocationSimulationState *)self data];
  v19 = [v18 routeInfo];
  v20 = [v19 route];
  v21 = [v20 routeAttributes];
  [v15 setRouteAttributes:v21];

  [v15 setMaxRouteCount:1];
  v22 = [(_MNLocationSimulationState *)self data];
  v23 = [v22 auditToken];
  [v15 setAuditToken:v23];

  v24 = [(_MNLocationSimulationState *)self data];
  v25 = [v24 requestingAppIdentifier];
  [v15 setRequestingAppIdentifier:v25];

  v26 = [MEMORY[0x1E69A1D18] sharedService];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __107___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingLocation_finishedHandler___block_invoke;
  v30[3] = &unk_1E842EF50;
  v31 = v6;
  v27 = v6;
  v28 = [v26 requestRoutes:v15 handler:v30];

  v29 = *MEMORY[0x1E69E9840];
}

- (double)_scoreForRoad:(id)a3 coordinate:(id)a4
{
  v5 = a3;
  v6 = [v5 internalRoadName];

  v7 = 0.0;
  if (v6)
  {
    if ([v5 roadClass] != 9)
    {
      v8 = [v5 coordinates3d];
      v9 = v8 + 24 * [v5 coordinateCount];
      v10 = *(v9 - 24);
      v11 = *(v9 - 16);
      if ([v5 travelDirection] != 1 || (GEOCalculateDistance(), v13 = v12, v14 = objc_msgSend(v5, "coordinates3d"), v15 = *v14, v16 = v14[1], GEOCalculateDistance(), v17 < v13))
      {
        v18 = objc_alloc(MEMORY[0x1E69A2548]);
        v19 = [(_MNLocationSimulationState *)self data];
        v20 = [v19 routeInfo];
        v21 = [v20 route];
        v22 = [(_MNLocationSimulationState *)self data];
        v23 = [v22 auditToken];
        v24 = [v18 initWithRoute:v21 auditToken:v23];

        [v24 distanceToRouteFrom:{v10, v11}];
        if (v25 >= 50.0 && v25 <= 75.0)
        {
          v26 = [(_MNLocationSimulationState *)self data];
          v27 = [v26 routeInfo];
          v28 = [v27 route];

          [v28 pointAt:{objc_msgSend(v28, "pointCount") - 1}];
          GEOCalculateDistance();
          v7 = v29;
        }
      }
    }
  }

  return v7;
}

- (void)_findParkingLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69A2198]);
  v6 = [v5 initWithQueue:MEMORY[0x1E69E96A0]];
  v7 = [(_MNLocationSimulationState *)self data];
  v8 = [v7 auditToken];
  [v6 setAuditToken:v8];

  [v6 setAllowNetworkTileLoad:1];
  [v6 setFlipNegativeTravelDirectionRoads:1];
  [v6 setVisitDoubleTravelDirectionRoadsTwice:0];
  v9 = [(_MNLocationSimulationState *)self data];
  v10 = [v9 lastLocation];
  [v10 _navigation_geoCoordinate];
  v12 = v11;
  v14 = v13;

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__8092;
  v32[4] = __Block_byref_object_dispose__8093;
  v33 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v15 = [(_MNLocationSimulationState *)self data];
  v16 = [v15 routeInfo];
  v17 = [v16 route];
  v18 = [(_MNLocationSimulationState *)self data];
  v19 = [v18 routeInfo];
  v20 = [v19 route];
  [v17 pointAt:{objc_msgSend(v20, "pointCount") - 1}];
  v22 = v21;
  v24 = v23;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __84___MNLocationSimulationState_SearchingForParkingBeforeArrival__findParkingLocation___block_invoke;
  v30[3] = &unk_1E842BD50;
  v30[7] = v12;
  v30[8] = v14;
  v30[4] = self;
  v30[5] = v31;
  v30[6] = v32;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __84___MNLocationSimulationState_SearchingForParkingBeforeArrival__findParkingLocation___block_invoke_2;
  v27[3] = &unk_1E842BD78;
  v29 = v32;
  v25 = v4;
  v28 = v25;
  v26 = [v6 findRoadsNear:v30 radius:v27 handler:v22 completionHandler:{v24, 200.0}];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

- (void)_findRouteToParkingDestination
{
  v3 = [MNSequence alloc];
  v4 = dispatch_queue_create("MNNavigationSimulation_SearchingForParking", 0);
  v5 = [(MNSequence *)v3 initWithQueue:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke;
  v8[3] = &unk_1E842F1D8;
  v8[4] = self;
  [(MNSequence *)v5 addStep:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke_2;
  v7[3] = &unk_1E842BC60;
  v7[4] = self;
  [(MNSequence *)v5 addStep:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke_3;
  v6[3] = &unk_1E842BD28;
  v6[4] = self;
  [(MNSequence *)v5 addStep:v6];
  [(MNSequence *)v5 start];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  if (!self->_routeToParkingDestination)
  {
    v21 = [(_MNLocationSimulationState *)self data];
    v22 = [v21 lastLocation];
    [v22 _navigation_geoCoordinate3D];
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v7 = [(_MNLocationSimulationState *)self data];
    v29 = [v7 lastLocation];
    [v29 course];
    v20 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v24 course:v26 speed:v28, v30, 0.0];

LABEL_7:
    goto LABEL_8;
  }

  v32 = 0.0;
  v5 = [(_MNLocationSimulationState *)self data];
  v6 = -[_MNLocationSimulationState_FollowingRoute _projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:](self, "_projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:", [v5 lastRouteCoordinate], &v32, a3);

  if (GEOPolylineCoordinateIsValid())
  {
    v7 = [(_MNLocationSimulationState_SearchingForParkingBeforeArrival *)self _routeToFollow];
    [v7 pointAtRouteCoordinate:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v7 courseAtRouteCoordinateIndex:v6];
    v15 = v14;
    v16 = [(_MNLocationSimulationState *)self data];
    [v16 setLastRouteCoordinate:v6];

    v17 = [v7 legs];
    v18 = [(_MNLocationSimulationState *)self data];
    v19 = [v17 objectAtIndexedSubscript:{objc_msgSend(v18, "currentLegIndex")}];

    if ([(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:v6 atEndOfLeg:v19])
    {
      [(_MNLocationSimulationState_SearchingForParkingBeforeArrival *)self _handleReachedParkingLocation];
    }

    v20 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v9 course:v11 speed:v13, v15, v32];

    goto LABEL_7;
  }

  v20 = 0;
LABEL_8:

  return v20;
}

@end