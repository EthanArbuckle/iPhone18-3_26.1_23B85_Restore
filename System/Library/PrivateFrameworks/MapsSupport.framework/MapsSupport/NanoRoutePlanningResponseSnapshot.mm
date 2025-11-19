@interface NanoRoutePlanningResponseSnapshot
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NanoRoutePlanningResponseSnapshot)init;
- (id)deltaFromSnapshot:(id)a3;
@end

@implementation NanoRoutePlanningResponseSnapshot

- (NanoRoutePlanningResponseSnapshot)init
{
  v6.receiver = self;
  v6.super_class = NanoRoutePlanningResponseSnapshot;
  v2 = [(NanoRoutePlanningResponseSnapshot *)&v6 init];
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
    v6 = [(NanoRoutePlanningResponseSnapshot *)self revisionIdentifiers];
    v7 = [v5 revisionIdentifiers];
    if ([MNComparison isValue:v6 equalTo:v7])
    {
      v8 = [(NanoRoutePlanningResponseSnapshot *)self selectedRouteIdentifier];
      v9 = [v5 selectedRouteIdentifier];
      if ([MNComparison isValue:v8 equalTo:v9])
      {
        v10 = [(NanoRoutePlanningResponseSnapshot *)self selectedRideIndexes];
        v11 = [v5 selectedRideIndexes];
        v12 = [MNComparison isValue:v10 equalTo:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)deltaFromSnapshot:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = objc_alloc_init(NanoRoutePlanningResponseDelta);
    v7 = [(NanoRoutePlanningResponseSnapshot *)self routeIdentifiers];
    v8 = [(NanoRoutePlanningResponseSnapshot *)v5 routeIdentifiers];
    [(NanoRoutePlanningResponseDelta *)v6 setRoutesChanged:[MNComparison isValue:v7 equalTo:v8]^ 1];

    v9 = [(NanoRoutePlanningResponseSnapshot *)self selectedRouteIdentifier];
    v10 = [(NanoRoutePlanningResponseSnapshot *)v5 selectedRouteIdentifier];
    [(NanoRoutePlanningResponseDelta *)v6 setSelectedRouteChanged:[MNComparison isValue:v9 equalTo:v10]^ 1];

    v11 = [(NanoRoutePlanningResponseSnapshot *)self revisionIdentifiers];
    v12 = [(NanoRoutePlanningResponseSnapshot *)v5 revisionIdentifiers];
    [(NanoRoutePlanningResponseDelta *)v6 setRouteRevisionsChanged:[MNComparison isValue:v11 equalTo:v12]^ 1];

    v13 = [(NanoRoutePlanningResponseSnapshot *)self selectedRideIndexes];
    v14 = [(NanoRoutePlanningResponseSnapshot *)v5 selectedRideIndexes];
    [(NanoRoutePlanningResponseDelta *)v6 setSelectedRideIndexesChanged:[MNComparison isValue:v13 equalTo:v14]^ 1];

    if ([(NanoRoutePlanningResponseDelta *)v6 routeRevisionsChanged])
    {
      v15 = [(NanoRoutePlanningResponseSnapshot *)v5 timestamp];
      v16 = [(NanoRoutePlanningResponseSnapshot *)self timestamp];
      v17 = [v15 compare:v16];

      if (v17 == -1)
      {
        v18 = v5;
      }

      else
      {
        v18 = self;
      }

      if (v17 == -1)
      {
        v19 = self;
      }

      else
      {
        v19 = v5;
      }

      v20 = v18;
      v21 = v19;
      v22 = [NSMutableOrderedSet alloc];
      v23 = [(NanoRoutePlanningResponseSnapshot *)v21 revisionIdentifiers];
      v24 = [v22 initWithArray:v23];

      v25 = [(NanoRoutePlanningResponseSnapshot *)v20 revisionIdentifiers];
      v26 = [NSSet setWithArray:v25];
      [v24 minusSet:v26];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100003694;
      v30[3] = &unk_100084C58;
      v31 = v21;
      v27 = v21;
      v28 = sub_1000282B8(v24, v30);
      [(NanoRoutePlanningResponseDelta *)v6 setIdentifiersForChangedRoutes:v28];
    }
  }

  else
  {
    v6 = +[NanoRoutePlanningResponseDelta everythingChanged];
  }

  return v6;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = NanoRoutePlanningResponseSnapshot;
  v3 = [(NanoRoutePlanningResponseSnapshot *)&v10 description];
  v4 = [(NanoRoutePlanningResponseSnapshot *)self routeIdentifiers];
  v5 = [(NanoRoutePlanningResponseSnapshot *)self selectedRouteIdentifier];
  v6 = [(NanoRoutePlanningResponseSnapshot *)self revisionIdentifiers];
  v7 = [(NanoRoutePlanningResponseSnapshot *)self selectedRideIndexes];
  v8 = [NSString stringWithFormat:@"%@ {\nrouteIdentifiers: %@\nselectedRouteIdentifier: %@\nrevisionIdentifiers: %@\nselectedRideIndexes: %@\n}", v3, v4, v5, v6, v7];

  return v8;
}

@end