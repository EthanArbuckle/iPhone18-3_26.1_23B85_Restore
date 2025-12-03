@interface _MNLocationSimulationState_SearchingForParkingAfterArrival
- (double)_scoreForRoad:(id)road coordinate:(id)coordinate;
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
    data = [(_MNLocationSimulationState *)self data];
    [data currentTime];
    v6 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v3 waitDuration:"initWithStartTime:waitDuration:"];
  }

  delegate = [(_MNLocationSimulationState *)self delegate];
  [delegate changeState:v6];
}

- (double)_scoreForRoad:(id)road coordinate:(id)coordinate
{
  roadCopy = road;
  internalRoadName = [roadCopy internalRoadName];

  v6 = 0.0;
  if (internalRoadName)
  {
    if ([roadCopy roadClass] != 9)
    {
      coordinates3d = [roadCopy coordinates3d];
      v8 = coordinates3d + 24 * [roadCopy coordinateCount];
      v9 = *(v8 - 24);
      v10 = *(v8 - 16);
      GEOCalculateDistance();
      v12 = v11;
      if (v11 <= 300.0)
      {
        if ([roadCopy travelDirection] != 1 || (v13 = objc_msgSend(roadCopy, "coordinates3d"), v14 = *v13, v15 = v13[1], GEOCalculateDistance(), v16 < v12))
        {
          v6 = v12;
        }
      }
    }
  }

  return v6;
}

@end