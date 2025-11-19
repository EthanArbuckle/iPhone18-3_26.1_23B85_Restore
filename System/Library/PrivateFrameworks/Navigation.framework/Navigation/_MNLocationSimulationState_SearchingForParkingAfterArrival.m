@interface _MNLocationSimulationState_SearchingForParkingAfterArrival
- (double)_scoreForRoad:(id)a3 coordinate:(id)a4;
- (void)_handleReachedParkingLocation;
@end

@implementation _MNLocationSimulationState_SearchingForParkingAfterArrival

- (void)_handleReachedParkingLocation
{
  if (GEOConfigGetInteger() == 3)
  {
    v6 = objc_alloc_init(_MNLocationSimulationState_ReturnToDestination);
  }

  else
  {
    v3 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
    v4 = [(_MNLocationSimulationState *)self data];
    [v4 currentTime];
    v6 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v3 waitDuration:"initWithStartTime:waitDuration:"];
  }

  v5 = [(_MNLocationSimulationState *)self delegate];
  [v5 changeState:v6];
}

- (double)_scoreForRoad:(id)a3 coordinate:(id)a4
{
  v4 = a3;
  v5 = [v4 internalRoadName];

  v6 = 0.0;
  if (v5)
  {
    if ([v4 roadClass] != 9)
    {
      v7 = [v4 coordinates3d];
      v8 = v7 + 24 * [v4 coordinateCount];
      v9 = *(v8 - 24);
      v10 = *(v8 - 16);
      GEOCalculateDistance();
      v12 = v11;
      if (v11 <= 300.0)
      {
        if ([v4 travelDirection] != 1 || (v13 = objc_msgSend(v4, "coordinates3d"), v14 = *v13, v15 = v13[1], GEOCalculateDistance(), v16 < v12))
        {
          v6 = v12;
        }
      }
    }
  }

  return v6;
}

@end