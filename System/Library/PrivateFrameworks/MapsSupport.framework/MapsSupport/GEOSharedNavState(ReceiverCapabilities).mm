@interface GEOSharedNavState(ReceiverCapabilities)
- (BOOL)requiresChangesForCompatibilityWithReceiverCapabilities:()ReceiverCapabilities;
- (id)instanceCompatibleWithReceiverCapabilities:()ReceiverCapabilities;
@end

@implementation GEOSharedNavState(ReceiverCapabilities)

- (BOOL)requiresChangesForCompatibilityWithReceiverCapabilities:()ReceiverCapabilities
{
  v4 = a3;
  v5 = (![v4 supportsRoutingPathLeg] || GEOConfigGetBOOL()) && (objc_msgSend(a1, "hasRouteInfo") & 1) != 0 || (!objc_msgSend(v4, "supportsWaypointRouteSharing") || GEOConfigGetBOOL()) && ((objc_msgSend(a1, "hasRouteInfo") & 1) != 0 || objc_msgSend(a1, "waypointInfosCount") || objc_msgSend(a1, "etaInfosCount")) || (objc_msgSend(v4, "supportsWGS84ElevationModel") & 1) == 0 && (objc_msgSend(a1, "hasRouteInfo") & 1) != 0;

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
  v26 = a1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__GEOSharedNavState_ReceiverCapabilities__instanceCompatibleWithReceiverCapabilities___block_invoke;
  v20[3] = &unk_2798687D0;
  v20[4] = v26;
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
    v7 = [v6 routeInfo];
    [v7 clearCoordinates];
    goto LABEL_6;
  }

  if (([v4 supportsRoutingPathLeg] & 1) == 0)
  {
LABEL_3:
    v6 = v5[2](v5);
    v7 = [v6 routeInfo];
    [v7 clearRoutingPathLegs];
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
      v14 = [v8 routeInfo];
      [v14 clearChargingStations];

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
      v9 = [v8 finalETAInfo];
      if (v9)
      {
        v10 = [v8 lastLocation];
        if ([v10 hasCoordinate])
        {
          v11 = [v10 coordinate];
          [v11 lat];
          [v9 setLatitude:?];

          v12 = [v10 coordinate];
          [v12 lng];
          [v9 setLongitude:?];

          [v8 setLastLocation:0];
        }

        v13 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
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

  v15 = [v22[5] routeInfo];
  v16 = [v15 routingPathLegs];
  if ([v16 count])
  {
    v17 = [v4 supportsWGS84ElevationModel];

    if (v17)
    {
      goto LABEL_30;
    }

    v15 = v5[2](v5);
    [v15 updateElevationModelToLegacyEGM96];
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