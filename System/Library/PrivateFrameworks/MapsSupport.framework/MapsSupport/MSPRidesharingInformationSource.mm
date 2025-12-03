@interface MSPRidesharingInformationSource
- (MSPRidesharingInformationSource)initWithStartWaypoint:(id)waypoint endWaypoint:(id)endWaypoint;
@end

@implementation MSPRidesharingInformationSource

- (MSPRidesharingInformationSource)initWithStartWaypoint:(id)waypoint endWaypoint:(id)endWaypoint
{
  waypointCopy = waypoint;
  endWaypointCopy = endWaypoint;
  v14.receiver = self;
  v14.super_class = MSPRidesharingInformationSource;
  v8 = [(MSPRidesharingInformationSource *)&v14 init];
  if (v8)
  {
    v9 = [waypointCopy copy];
    startWaypoint = v8->_startWaypoint;
    v8->_startWaypoint = v9;

    v11 = [endWaypointCopy copy];
    endWaypoint = v8->_endWaypoint;
    v8->_endWaypoint = v11;
  }

  return v8;
}

@end