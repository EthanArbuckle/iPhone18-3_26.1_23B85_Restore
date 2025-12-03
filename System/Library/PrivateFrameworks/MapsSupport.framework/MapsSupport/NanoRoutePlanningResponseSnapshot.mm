@interface NanoRoutePlanningResponseSnapshot
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NanoRoutePlanningResponseSnapshot)init;
- (id)deltaFromSnapshot:(id)snapshot;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    revisionIdentifiers = [(NanoRoutePlanningResponseSnapshot *)self revisionIdentifiers];
    revisionIdentifiers2 = [v5 revisionIdentifiers];
    if ([MNComparison isValue:revisionIdentifiers equalTo:revisionIdentifiers2])
    {
      selectedRouteIdentifier = [(NanoRoutePlanningResponseSnapshot *)self selectedRouteIdentifier];
      selectedRouteIdentifier2 = [v5 selectedRouteIdentifier];
      if ([MNComparison isValue:selectedRouteIdentifier equalTo:selectedRouteIdentifier2])
      {
        selectedRideIndexes = [(NanoRoutePlanningResponseSnapshot *)self selectedRideIndexes];
        selectedRideIndexes2 = [v5 selectedRideIndexes];
        v12 = [MNComparison isValue:selectedRideIndexes equalTo:selectedRideIndexes2];
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

- (id)deltaFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (snapshotCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = snapshotCopy;
    v6 = objc_alloc_init(NanoRoutePlanningResponseDelta);
    routeIdentifiers = [(NanoRoutePlanningResponseSnapshot *)self routeIdentifiers];
    routeIdentifiers2 = [(NanoRoutePlanningResponseSnapshot *)v5 routeIdentifiers];
    [(NanoRoutePlanningResponseDelta *)v6 setRoutesChanged:[MNComparison isValue:routeIdentifiers equalTo:routeIdentifiers2]^ 1];

    selectedRouteIdentifier = [(NanoRoutePlanningResponseSnapshot *)self selectedRouteIdentifier];
    selectedRouteIdentifier2 = [(NanoRoutePlanningResponseSnapshot *)v5 selectedRouteIdentifier];
    [(NanoRoutePlanningResponseDelta *)v6 setSelectedRouteChanged:[MNComparison isValue:selectedRouteIdentifier equalTo:selectedRouteIdentifier2]^ 1];

    revisionIdentifiers = [(NanoRoutePlanningResponseSnapshot *)self revisionIdentifiers];
    revisionIdentifiers2 = [(NanoRoutePlanningResponseSnapshot *)v5 revisionIdentifiers];
    [(NanoRoutePlanningResponseDelta *)v6 setRouteRevisionsChanged:[MNComparison isValue:revisionIdentifiers equalTo:revisionIdentifiers2]^ 1];

    selectedRideIndexes = [(NanoRoutePlanningResponseSnapshot *)self selectedRideIndexes];
    selectedRideIndexes2 = [(NanoRoutePlanningResponseSnapshot *)v5 selectedRideIndexes];
    [(NanoRoutePlanningResponseDelta *)v6 setSelectedRideIndexesChanged:[MNComparison isValue:selectedRideIndexes equalTo:selectedRideIndexes2]^ 1];

    if ([(NanoRoutePlanningResponseDelta *)v6 routeRevisionsChanged])
    {
      timestamp = [(NanoRoutePlanningResponseSnapshot *)v5 timestamp];
      timestamp2 = [(NanoRoutePlanningResponseSnapshot *)self timestamp];
      v17 = [timestamp compare:timestamp2];

      if (v17 == -1)
      {
        selfCopy = v5;
      }

      else
      {
        selfCopy = self;
      }

      if (v17 == -1)
      {
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = v5;
      }

      v20 = selfCopy;
      v21 = selfCopy2;
      v22 = [NSMutableOrderedSet alloc];
      revisionIdentifiers3 = [(NanoRoutePlanningResponseSnapshot *)v21 revisionIdentifiers];
      v24 = [v22 initWithArray:revisionIdentifiers3];

      revisionIdentifiers4 = [(NanoRoutePlanningResponseSnapshot *)v20 revisionIdentifiers];
      v26 = [NSSet setWithArray:revisionIdentifiers4];
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
  routeIdentifiers = [(NanoRoutePlanningResponseSnapshot *)self routeIdentifiers];
  selectedRouteIdentifier = [(NanoRoutePlanningResponseSnapshot *)self selectedRouteIdentifier];
  revisionIdentifiers = [(NanoRoutePlanningResponseSnapshot *)self revisionIdentifiers];
  selectedRideIndexes = [(NanoRoutePlanningResponseSnapshot *)self selectedRideIndexes];
  v8 = [NSString stringWithFormat:@"%@ {\nrouteIdentifiers: %@\nselectedRouteIdentifier: %@\nrevisionIdentifiers: %@\nselectedRideIndexes: %@\n}", v3, routeIdentifiers, selectedRouteIdentifier, revisionIdentifiers, selectedRideIndexes];

  return v8;
}

@end