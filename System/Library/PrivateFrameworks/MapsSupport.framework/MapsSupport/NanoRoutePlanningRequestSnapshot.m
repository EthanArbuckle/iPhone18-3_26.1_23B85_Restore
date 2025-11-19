@interface NanoRoutePlanningRequestSnapshot
- (BOOL)isEqual:(id)a3;
- (NanoRoutePlanningRequestSnapshot)init;
- (id)deltaFromSnapshot:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NanoRoutePlanningRequestSnapshot *)self transportType];
    if (v6 == [v5 transportType])
    {
      v7 = [(NanoRoutePlanningRequestSnapshot *)self waypoints];
      v8 = [v5 waypoints];
      v9 = [MNComparison isValue:v7 equalTo:v8];
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

- (id)deltaFromSnapshot:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = objc_alloc_init(NanoRoutePlanningRequestDelta);
    -[NanoRoutePlanningRequestDelta setTransportTypeChanged:](v6, "setTransportTypeChanged:", -[NanoRoutePlanningRequestSnapshot transportType](self, "transportType") != [v5 transportType]);
    v7 = [(NanoRoutePlanningRequestSnapshot *)self waypoints];
    v8 = [v5 waypoints];

    [(NanoRoutePlanningRequestDelta *)v6 setWaypointsChanged:[MNComparison isValue:v7 equalTo:v8]^ 1];
  }

  else
  {
    v6 = +[NanoRoutePlanningRequestDelta everythingChanged];
  }

  return v6;
}

@end