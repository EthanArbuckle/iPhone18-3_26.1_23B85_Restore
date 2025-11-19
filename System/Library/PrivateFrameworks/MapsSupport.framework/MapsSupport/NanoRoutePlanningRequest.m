@interface NanoRoutePlanningRequest
+ (id)requestForDirectionsToCustomRoute:(id)a3 currentLocation:(id)a4 companionRouteContext:(id)a5;
+ (id)requestForDirectionsWithCompanionRouteDetails:(id)a3 companionRouteContext:(id)a4;
+ (id)requestForPlaceholderDirections;
+ (id)requestWithTraceAtPath:(id)a3;
- (NSArray)waypoints;
- (NanoDirectionWaypoint)destinationWaypoint;
- (NanoDirectionWaypoint)originWaypoint;
- (NanoRoutePlanningRequest)init;
- (NanoRoutePlanningRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)requestedCompanionRouteDetails;
- (id)routeAttributes;
- (id)snapshot;
- (int)resolvedTransportType;
- (void)_addTimepointIfNeededToRouteAttributes:(id)a3;
- (void)_populateCopy:(id)a3;
- (void)_populateRouteAttributes:(id)a3 forTransportType:(int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NanoRoutePlanningRequest

- (id)routeAttributes
{
  v3 = [(NanoRoutePlanningRequest *)self resolvedTransportType];
  v4 = [GEORouteAttributes defaultRouteAttributesForTransportType:v3];
  [(NanoRoutePlanningRequest *)self _populateRouteAttributes:v4 forTransportType:v3];

  return v4;
}

- (void)_populateRouteAttributes:(id)a3 forTransportType:(int)a4
{
  v8 = a3;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v7 = [(NanoRoutePlanningRequest *)self cyclingOptions];
      [v8 setCyclingOptions:v7];
LABEL_14:

      goto LABEL_17;
    }

    if (a4 != 5)
    {
      if (a4 != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

LABEL_12:
    v7 = [(NanoRoutePlanningRequest *)self walkingOptions];
    [v8 setWalkingOptions:v7];
    goto LABEL_14;
  }

  switch(a4)
  {
    case 0:
LABEL_11:
      v6 = [(NanoRoutePlanningRequest *)self automobileOptions];
      [v8 setAutomobileOptions:v6];
LABEL_16:

      [(NanoRoutePlanningRequest *)self _addTimepointIfNeededToRouteAttributes:v8];
      break;
    case 1:
      v6 = [(NanoRoutePlanningRequest *)self transitOptions];
      [v8 setTransitOptions:v6];
      goto LABEL_16;
    case 2:
      goto LABEL_12;
  }

LABEL_17:
}

- (void)_addTimepointIfNeededToRouteAttributes:(id)a3
{
  v4 = a3;
  v5 = [(NanoRoutePlanningRequest *)self departureDate];

  if (v5)
  {
    v18 = 0;
    v17 = 0;
    v6 = [(NanoRoutePlanningRequest *)self departureDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;

    v13 = 0;
    v14 = v8;
    v15 = 0;
LABEL_5:
    v16 = 6;
    [v4 setTimepoint:&v13];
    goto LABEL_6;
  }

  v9 = [(NanoRoutePlanningRequest *)self arrivalDate];

  if (v9)
  {
    v18 = 0;
    v17 = 0;
    v10 = [(NanoRoutePlanningRequest *)self arrivalDate];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;

    v13 = 0;
    v14 = v12;
    v15 = 1;
    goto LABEL_5;
  }

LABEL_6:
}

- (NanoRoutePlanningRequest)init
{
  v15.receiver = self;
  v15.super_class = NanoRoutePlanningRequest;
  v2 = [(NanoRoutePlanningRequest *)&v15 init];
  if (v2)
  {
    v3 = [GEOApplicationAuditToken alloc];
    v4 = [v3 initWithProxiedApplicationBundleId:MapsAppBundleId];
    auditToken = v2->_auditToken;
    v2->_auditToken = v4;

    v6 = [(GEOApplicationAuditToken *)v2->_auditToken overrideTokenWithOfflineCohortId:@"com.apple.Maps"];
    v7 = v2->_auditToken;
    v2->_auditToken = v6;

    v2->_transportType = 4;
    v8 = +[GEOCompanionRouteContext context];
    companionRouteContext = v2->_companionRouteContext;
    v2->_companionRouteContext = v8;

    v10 = 3;
    if (v2->_transportType == 1)
    {
      v10 = 5;
    }

    v2->_maximumNumberOfRoutes = v10;
    v11 = +[GEOMapService sharedService];
    v12 = [v11 defaultTraits];
    traits = v2->_traits;
    v2->_traits = v12;
  }

  return v2;
}

+ (id)requestForDirectionsToCustomRoute:(id)a3 currentLocation:(id)a4 companionRouteContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[GEOLocation alloc] initWithCLLocation:v8];

  v11 = objc_opt_new();
  v12 = [NanoDirectionWaypoint directionWaypointForCurrentLocation:v10];
  v18[0] = v12;
  v13 = [NanoDirectionWaypoint directionWaypointToCustomRoute:v9];
  v18[1] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:2];
  [v11 setWaypoints:v14];

  v15 = [v9 transportType];
  [v11 setTransportType:v15];
  [v11 setCompanionRouteContext:v7];

  v16 = [v11 copy];

  return v16;
}

+ (id)requestForDirectionsWithCompanionRouteDetails:(id)a3 companionRouteContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  v8 = [v6 waypoints];
  v9 = sub_1000282B8(v8, &stru_100086108);

  [(NanoRoutePlanningRequest *)v7 setWaypoints:v9];
  v10 = [v6 destinationName];
  v11 = [(NanoRoutePlanningRequest *)v7 destinationWaypoint];
  [v11 setName:v10];

  v12 = [v6 transportType];
  [(NanoRoutePlanningRequest *)v7 setTransportType:v12];
  [(NanoRoutePlanningRequest *)v7 setCompanionRouteContext:v5];

  v13 = [(NanoRoutePlanningMutableRequest *)v7 copy];

  return v13;
}

+ (id)requestForPlaceholderDirections
{
  v2 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  [(NanoRoutePlanningRequest *)v2 setCompanionRouteContext:0];
  v3 = [(NanoRoutePlanningMutableRequest *)v2 copy];

  return v3;
}

- (id)requestedCompanionRouteDetails
{
  v3 = [(NanoRoutePlanningRequest *)self destinationWaypoint];
  v4 = [v3 name];

  transportType = self->_transportType;
  v6 = [(NanoRoutePlanningRequest *)self waypoints];
  v7 = sub_1000282B8(v6, &stru_100086148);

  v8 = [GEOCompanionRouteDetails syntheticRouteDetailsWithWaypoints:v7 transportType:transportType destinationName:v4];

  return v8;
}

- (NanoDirectionWaypoint)originWaypoint
{
  v2 = [(NanoRoutePlanningRequest *)self waypoints];
  v3 = [v2 firstObject];

  return v3;
}

- (NanoDirectionWaypoint)destinationWaypoint
{
  v2 = [(NanoRoutePlanningRequest *)self waypoints];
  v3 = [v2 lastObject];

  return v3;
}

- (NSArray)waypoints
{
  waypoints = self->_waypoints;
  if (!waypoints)
  {
    self->_waypoints = &__NSArray0__struct;

    waypoints = self->_waypoints;
  }

  return waypoints;
}

- (int)resolvedTransportType
{
  if ([(NanoRoutePlanningRequest *)self transportType]== 4)
  {
    v3 = GEOGetUserTransportTypePreference();
    if ((v3 - 1) >= 4)
    {
      return 0;
    }

    else
    {
      return dword_100065A10[v3 - 1];
    }
  }

  else
  {

    return [(NanoRoutePlanningRequest *)self transportType];
  }
}

- (id)snapshot
{
  v3 = objc_alloc_init(NanoRoutePlanningRequestSnapshot);
  [(NanoRoutePlanningRequestSnapshot *)v3 setTransportType:[(NanoRoutePlanningRequest *)self transportType]];
  v4 = [(NanoRoutePlanningRequest *)self waypoints];
  [(NanoRoutePlanningRequestSnapshot *)v3 setWaypoints:v4];

  return v3;
}

+ (id)requestWithTraceAtPath:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MNTraceLoader);
  v18 = 0;
  v5 = [v4 loadTraceWithPath:v3 outError:&v18];
  if (v5)
  {
    v6 = objc_alloc_init(NanoRoutePlanningMutableRequest);
    [(NanoRoutePlanningRequest *)v6 setPreferredMode:3];
    [(NanoRoutePlanningRequest *)v6 setTracePath:v3];
    v7 = [v5 directions];
    v8 = [v7 firstObject];

    v9 = [v8 waypoints];
    v10 = sub_1000282B8(v9, &stru_100086188);
    [(NanoRoutePlanningRequest *)v6 setWaypoints:v10];

    v11 = [v8 request];
    v12 = [v11 routeAttributes];

    -[NanoRoutePlanningRequest setTransportType:](v6, "setTransportType:", [v12 mainTransportType]);
    v13 = [v12 automobileOptions];
    [(NanoRoutePlanningRequest *)v6 setAutomobileOptions:v13];

    v14 = [v12 transitOptions];
    [(NanoRoutePlanningRequest *)v6 setTransitOptions:v14];

    v15 = [v12 walkingOptions];
    [(NanoRoutePlanningRequest *)v6 setWalkingOptions:v15];

    v16 = [v12 cyclingOptions];
    [(NanoRoutePlanningRequest *)v6 setCyclingOptions:v16];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NanoRoutePlanningRequest);
  [(NanoRoutePlanningRequest *)self _populateCopy:v4];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NanoRoutePlanningMutableRequest);
  [(NanoRoutePlanningRequest *)self _populateCopy:v4];
  return v4;
}

- (void)_populateCopy:(id)a3
{
  objc_storeStrong(a3 + 2, self->_auditToken);
  v5 = a3;
  objc_storeStrong(v5 + 3, self->_companionRouteContext);
  v5[4] = self->_preferredMode;
  objc_storeStrong(v5 + 5, self->_waypoints);
  *(v5 + 3) = self->_transportType;
  v5[6] = self->_maximumNumberOfRoutes;
  objc_storeStrong(v5 + 7, self->_traits);
  *(v5 + 8) = self->_startNavigationAutomatically;
  objc_storeStrong(v5 + 8, self->_departureDate);
  objc_storeStrong(v5 + 9, self->_arrivalDate);
  objc_storeStrong(v5 + 10, self->_automobileOptions);
  objc_storeStrong(v5 + 11, self->_transitOptions);
  objc_storeStrong(v5 + 12, self->_walkingOptions);
  objc_storeStrong(v5 + 13, self->_cyclingOptions);
  objc_storeStrong(v5 + 14, self->_tracePath);
}

- (NanoRoutePlanningRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = NanoRoutePlanningRequest;
  v5 = [(NanoRoutePlanningRequest *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_auditToken"];
    auditToken = v5->_auditToken;
    v5->_auditToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_companionRouteContext"];
    companionRouteContext = v5->_companionRouteContext;
    v5->_companionRouteContext = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preferredMode"];
    v5->_preferredMode = [v10 unsignedIntegerValue];

    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_transportType"];
    v5->_transportType = [v15 integerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maximumNumberOfRoutes"];
    v5->_maximumNumberOfRoutes = [v16 unsignedIntegerValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_traits"];
    traits = v5->_traits;
    v5->_traits = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startNavigationAutomatically"];
    v5->_startNavigationAutomatically = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_departureDate"];
    departureDate = v5->_departureDate;
    v5->_departureDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_arrivalDate"];
    arrivalDate = v5->_arrivalDate;
    v5->_arrivalDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_automobileOptions"];
    automobileOptions = v5->_automobileOptions;
    v5->_automobileOptions = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_transitOptions"];
    transitOptions = v5->_transitOptions;
    v5->_transitOptions = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_walkingOptions"];
    walkingOptions = v5->_walkingOptions;
    v5->_walkingOptions = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cyclingOptions"];
    cyclingOptions = v5->_cyclingOptions;
    v5->_cyclingOptions = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tracePath"];
    tracePath = v5->_tracePath;
    v5->_tracePath = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  auditToken = self->_auditToken;
  v9 = a3;
  [v9 encodeObject:auditToken forKey:@"_auditToken"];
  [v9 encodeObject:self->_companionRouteContext forKey:@"_companionRouteContext"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_preferredMode];
  [v9 encodeObject:v5 forKey:@"_preferredMode"];

  [v9 encodeObject:self->_waypoints forKey:@"_waypoints"];
  v6 = [NSNumber numberWithInt:self->_transportType];
  [v9 encodeObject:v6 forKey:@"_transportType"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_maximumNumberOfRoutes];
  [v9 encodeObject:v7 forKey:@"_maximumNumberOfRoutes"];

  [v9 encodeObject:self->_traits forKey:@"_traits"];
  v8 = [NSNumber numberWithBool:self->_startNavigationAutomatically];
  [v9 encodeObject:v8 forKey:@"_startNavigationAutomatically"];

  [v9 encodeObject:self->_departureDate forKey:@"_departureDate"];
  [v9 encodeObject:self->_arrivalDate forKey:@"_arrivalDate"];
  [v9 encodeObject:self->_automobileOptions forKey:@"_automobileOptions"];
  [v9 encodeObject:self->_transitOptions forKey:@"_transitOptions"];
  [v9 encodeObject:self->_walkingOptions forKey:@"_walkingOptions"];
  [v9 encodeObject:self->_cyclingOptions forKey:@"_cyclingOptions"];
  [v9 encodeObject:self->_tracePath forKey:@"_tracePath"];
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = NanoRoutePlanningRequest;
  v3 = [(NanoRoutePlanningRequest *)&v9 description];
  v4 = [(NanoRoutePlanningRequest *)self transportType];
  if (v4 >= 7)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_1000861A8[v4];
  }

  v6 = [(NanoRoutePlanningRequest *)self waypoints];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%@, %lu waypoints, auto-start: %d)", v3, v5, [v6 count], -[NanoRoutePlanningRequest startNavigationAutomatically](self, "startNavigationAutomatically"));

  return v7;
}

- (id)debugDescription
{
  v3 = &MNClearStoredRoutesWithSubpathUsedBefore_ptr;
  v38.receiver = self;
  v38.super_class = NanoRoutePlanningRequest;
  v4 = [(NanoRoutePlanningRequest *)&v38 debugDescription];
  v5 = [(NanoRoutePlanningRequest *)self transportType];
  if (v5 >= 7)
  {
    v6 = [NSString stringWithFormat:@"(unknown: %i)", v5];
  }

  else
  {
    v6 = off_1000861A8[v5];
  }

  v7 = [(NanoRoutePlanningRequest *)self waypoints];
  v8 = [v7 count];
  v9 = [(NanoRoutePlanningRequest *)self startNavigationAutomatically];
  v10 = [(NanoRoutePlanningRequest *)self waypoints];
  v11 = v10;
  if (v10)
  {
    if ([v10 count])
    {
      v32 = v9;
      v34 = v7;
      v35 = v6;
      v36 = v4;
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v33 = v11;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      v16 = *v40;
      v37 = v12;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v39 + 1) + 8 * v17);
          if (v18)
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_16;
            }

            v21 = v3;
            v22 = [v18 performSelector:"accessibilityIdentifier"];
            v23 = v22;
            if (v22 && ![v22 isEqualToString:v20])
            {
              v25 = v13;
              v26 = v21;
              v24 = [v21[352] stringWithFormat:@"%@<%p, %@>", v20, v18, v23];

              v3 = v26;
              v13 = v25;
              v12 = v37;
            }

            else
            {

              v3 = v21;
LABEL_16:
              v24 = [v3[352] stringWithFormat:@"%@<%p>", v20, v18];
            }

            goto LABEL_19;
          }

          v24 = @"<nil>";
LABEL_19:

          [v12 addObject:v24];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v27 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
        v15 = v27;
        if (!v27)
        {
LABEL_23:

          v28 = [v13 componentsJoinedByString:{@", "}];
          v29 = [v3[352] stringWithFormat:@"<%p> [%@]", v13, v28];

          v4 = v36;
          v7 = v34;
          v6 = v35;
          v11 = v33;
          v9 = v32;
          goto LABEL_26;
        }
      }
    }

    v29 = [NSString stringWithFormat:@"<%p> (empty)", v11];
  }

  else
  {
    v29 = @"<nil>";
  }

LABEL_26:

  v30 = [NSString stringWithFormat:@"%@ (%@, %lu waypoints, auto-start: %d)\n\t%@", v4, v6, v8, v9, v29];

  return v30;
}

@end