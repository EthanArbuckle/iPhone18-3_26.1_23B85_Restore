@interface NanoRoutePlanningRequestSnapshot
- (BOOL)isEqual:(id)equal;
- (NanoRoutePlanningRequestSnapshot)init;
- (id)deltaFromSnapshot:(id)snapshot;
@end

@implementation NanoRoutePlanningRequestSnapshot

- (NanoRoutePlanningRequestSnapshot)init
{
  v6.receiver = self;
  v6.super_class = NanoRoutePlanningRequestSnapshot;
  v2 = [(NanoRoutePlanningRequestSnapshot *)&v6 init];
  if (v2)
  {
    v3 = +[NSDate date];
    timestamp = v2->_timestamp;
    v2->_timestamp = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    transportType = [(NanoRoutePlanningRequestSnapshot *)self transportType];
    if (transportType == [v5 transportType])
    {
      waypoints = [(NanoRoutePlanningRequestSnapshot *)self waypoints];
      waypoints2 = [v5 waypoints];
      v9 = [MNComparison isValue:waypoints equalTo:waypoints2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)deltaFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (snapshotCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = snapshotCopy;
    v6 = objc_alloc_init(NanoRoutePlanningRequestDelta);
    -[NanoRoutePlanningRequestDelta setTransportTypeChanged:](v6, "setTransportTypeChanged:", -[NanoRoutePlanningRequestSnapshot transportType](self, "transportType") != [v5 transportType]);
    waypoints = [(NanoRoutePlanningRequestSnapshot *)self waypoints];
    waypoints2 = [v5 waypoints];

    [(NanoRoutePlanningRequestDelta *)v6 setWaypointsChanged:[MNComparison isValue:waypoints equalTo:waypoints2]^ 1];
  }

  else
  {
    v6 = +[NanoRoutePlanningRequestDelta everythingChanged];
  }

  return v6;
}

@end