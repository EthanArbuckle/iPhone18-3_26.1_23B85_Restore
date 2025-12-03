@interface GEOSharedNavState(ReceiverCapabilities)
- (BOOL)requiresChangesForCompatibilityWithReceiverCapabilities:()ReceiverCapabilities;
- (id)instanceCompatibleWithReceiverCapabilities:()ReceiverCapabilities;
@end

@implementation GEOSharedNavState(ReceiverCapabilities)

- (BOOL)requiresChangesForCompatibilityWithReceiverCapabilities:()ReceiverCapabilities
{
  v4 = a3;
  v5 = (![v4 supportsRoutingPathLeg] || GEOConfigGetBOOL()) && (objc_msgSend(self, "hasRouteInfo") & 1) != 0 || (!objc_msgSend(v4, "supportsWaypointRouteSharing") || GEOConfigGetBOOL()) && ((objc_msgSend(self, "hasRouteInfo") & 1) != 0 || objc_msgSend(self, "waypointInfosCount") || objc_msgSend(self, "etaInfosCount")) || (objc_msgSend(v4, "supportsWGS84ElevationModel") & 1) == 0 && (objc_msgSend(self, "hasRouteInfo") & 1) != 0;

  return v5;
}

- (id)instanceCompatibleWithReceiverCapabilities:()ReceiverCapabilities
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  selfCopy = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__GEOSharedNavState_ReceiverCapabilities__instanceCompatibleWithReceiverCapabilities___block_invoke;
  v20[3] = &unk_2798687D0;
  v20[4] = selfCopy;
  v20[5] = &v21;
  v5 = MEMORY[0x259C7AD60](v20);
  if (![v22[5] hasRouteInfo])
  {
    goto LABEL_7;
  }

  if (GEOConfigGetBOOL())
  {
    goto LABEL_3;
  }

  if ([v4 supportsRoutingPathLeg])
  {
    v6 = v5[2](v5);
    routeInfo = [v6 routeInfo];
    [routeInfo clearCoordinates];
    goto LABEL_6;
  }

  if (([v4 supportsRoutingPathLeg] & 1) == 0)
  {
LABEL_3:
    v6 = v5[2](v5);
    routeInfo = [v6 routeInfo];
    [routeInfo clearRoutingPathLegs];
LABEL_6:
  }

LABEL_7:
  if (([v22[5] hasRouteInfo] & 1) != 0 || objc_msgSend(v22[5], "waypointInfosCount") || objc_msgSend(v22[5], "etaInfosCount"))
  {
    if (GEOConfigGetBOOL())
    {
      goto LABEL_11;
    }

    if ([v4 supportsWaypointRouteSharing])
    {
      v8 = v5[2](v5);
      routeInfo2 = [v8 routeInfo];
      [routeInfo2 clearChargingStations];

      [v8 setDestinationInfo:0];
LABEL_21:

      goto LABEL_22;
    }

    if (([v4 supportsWaypointRouteSharing] & 1) == 0)
    {
LABEL_11:
      v8 = v5[2](v5);
      if ([v8 arrived] && objc_msgSend(v8, "isNavigatingToIntermediateStop"))
      {
        [v8 setArrived:0];
      }

      [v8 clearWaypointInfos];
      finalETAInfo = [v8 finalETAInfo];
      if (finalETAInfo)
      {
        lastLocation = [v8 lastLocation];
        if ([lastLocation hasCoordinate])
        {
          coordinate = [lastLocation coordinate];
          [coordinate lat];
          [finalETAInfo setLatitude:?];

          coordinate2 = [lastLocation coordinate];
          [coordinate2 lng];
          [finalETAInfo setLongitude:?];

          [v8 setLastLocation:0];
        }

        v13 = [MEMORY[0x277CBEB18] arrayWithObject:finalETAInfo];
        [v8 setEtaInfos:v13];
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if (![v22[5] hasRouteInfo])
  {
    goto LABEL_30;
  }

  routeInfo3 = [v22[5] routeInfo];
  routingPathLegs = [routeInfo3 routingPathLegs];
  if ([routingPathLegs count])
  {
    supportsWGS84ElevationModel = [v4 supportsWGS84ElevationModel];

    if (supportsWGS84ElevationModel)
    {
      goto LABEL_30;
    }

    routeInfo3 = v5[2](v5);
    [routeInfo3 updateElevationModelToLegacyEGM96];
  }

  else
  {
  }

LABEL_30:
  v18 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v18;
}

@end