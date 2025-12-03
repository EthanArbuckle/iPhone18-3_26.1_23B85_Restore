@interface GEOSharedNavState(MSPExtras)
- (id)composedRoute;
- (id)destinationName;
- (id)destinationWaypointInfo;
- (id)destinationWaypointMapItem;
- (id)equalityTest;
- (id)etaInfo;
- (id)finalETAInfo;
- (id)mspDescription;
- (id)nextWaypointInfo;
- (id)senderName;
- (id)senderNameOrHandle;
- (uint64_t)isNavigatingToIntermediateStop;
- (uint64_t)numberOfIntermediateStopsRemaining;
- (uint64_t)stripArrivedOrClosedTrip;
- (uint64_t)stripForSendingArrival;
- (uint64_t)stripForSendingResuming;
- (uint64_t)stripForSendingStoppedSharing;
- (uint64_t)stripForSendingUpdatedETA;
- (uint64_t)stripForSendingUpdatedRoute;
- (uint64_t)stripForSendingUpdatedTraffic;
- (uint64_t)stripForSendingUpdatedWaypoints;
- (uint64_t)updateFromTraffic:()MSPExtras;
- (uint64_t)updateWaypointsFromComposedRoute:()MSPExtras;
- (unint64_t)_polylineCoordinateForRoute:()MSPExtras;
- (void)_createPlaceholderETAInfosForWaypoints:()MSPExtras;
- (void)_msp_logWithCategory:()MSPExtras type:object:prefix:;
- (void)merge:()MSPExtras;
- (void)setComposedRouteFromState:()MSPExtras;
- (void)truncatePointDataForPrivacy;
- (void)updateElevationModelToLegacyEGM96;
- (void)updateRouteInfoFromComposedRoute:()MSPExtras;
@end

@implementation GEOSharedNavState(MSPExtras)

- (id)destinationName
{
  destinationWaypointInfo = [self destinationWaypointInfo];
  name = [destinationWaypointInfo name];

  return name;
}

- (id)destinationWaypointInfo
{
  if ([self waypointInfosCount])
  {
    waypointInfos = [self waypointInfos];
    lastObject = [waypointInfos lastObject];

    mapItemStorage = [lastObject mapItemStorage];
    if (mapItemStorage)
    {
      destinationInfo = mapItemStorage;
      goto LABEL_8;
    }

    chargingStationInfo = [lastObject chargingStationInfo];

    if (chargingStationInfo)
    {
      goto LABEL_9;
    }
  }

  lastObject = [self destinationInfo];

  if (!lastObject)
  {
    goto LABEL_9;
  }

  lastObject = objc_alloc_init(MEMORY[0x277D0ED38]);
  destinationInfo = [self destinationInfo];
  [lastObject setMapItemStorage:destinationInfo];
LABEL_8:

LABEL_9:

  return lastObject;
}

- (id)destinationWaypointMapItem
{
  destinationWaypointInfo = [self destinationWaypointInfo];
  mapItemStorage = [destinationWaypointInfo mapItemStorage];

  return mapItemStorage;
}

- (id)senderName
{
  senderInfo = [self senderInfo];
  if ([senderInfo hasLocalContactIdentifier])
  {

LABEL_4:
    senderInfo2 = [self senderInfo];
    localName = [senderInfo2 localName];

    goto LABEL_6;
  }

  senderInfo3 = [self senderInfo];
  hasFromDisplayName = [senderInfo3 hasFromDisplayName];

  if (hasFromDisplayName)
  {
    goto LABEL_4;
  }

  localName = 0;
LABEL_6:

  return localName;
}

- (id)senderNameOrHandle
{
  senderInfo = [self senderInfo];
  localName = [senderInfo localName];

  return localName;
}

- (void)merge:()MSPExtras
{
  v4 = a3;
  if ([v4 hasDestinationInfo])
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "Migrating legacy destinationInfo to modern waypointInfos", buf, 2u);
    }

    [self clearWaypointInfos];
    v6 = objc_alloc_init(MEMORY[0x277D0ED38]);
    destinationInfo = [v4 destinationInfo];
    [v6 setMapItemStorage:destinationInfo];

    [self addWaypointInfo:v6];
    [self setDestinationInfo:0];
  }

  if (([v4 hasLastLocation] & 1) == 0 && objc_msgSend(v4, "etaInfosCount") == 1)
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "Migrating legacy location in etaInfo to modern lastLocation", v41, 2u);
    }

    etaInfos = [v4 etaInfos];
    lastObject = [etaInfos lastObject];

    if ([lastObject hasLatitude] && objc_msgSend(lastObject, "hasLongitude"))
    {
      v11 = objc_alloc_init(MEMORY[0x277D0ED18]);
      v12 = objc_alloc_init(MEMORY[0x277D0EB58]);
      [lastObject latitude];
      [v12 setLat:?];
      [lastObject longitude];
      [v12 setLng:?];
      [v11 setCoordinate:v12];
      [v4 setLastLocation:v11];
      [lastObject setHasLatitude:0];
      [lastObject setHasLongitude:0];
    }
  }

  composedRouteIfExists = [self composedRouteIfExists];

  if (composedRouteIfExists)
  {
    if ([v4 hasRouteInfo])
    {
      v14 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
        v15 = "Clearing generated composedRoute because incoming state has routeInfo";
        v16 = &v40;
LABEL_21:
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ([v4 waypointInfosCount])
    {
      waypointInfosCount = [v4 waypointInfosCount];
      if (waypointInfosCount != [self waypointInfosCount])
      {
        v14 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          v15 = "Clearing generated composedRoute because incoming waypoint count differs from ours";
          v16 = &v39;
          goto LABEL_21;
        }

LABEL_22:

        [self setComposedRoute:0];
      }
    }
  }

  if (![v4 hasRouteInfo])
  {
    goto LABEL_31;
  }

  hasRouteInfo = [self hasRouteInfo];
  routeInfo = [v4 routeInfo];
  routeInfo6 = routeInfo;
  if (hasRouteInfo)
  {
    if ([routeInfo coordinatesCount])
    {
    }

    else
    {
      routeInfo2 = [v4 routeInfo];
      routingPathLegsCount = [routeInfo2 routingPathLegsCount];

      if (!routingPathLegsCount)
      {
        routeInfo3 = [self routeInfo];
        routeInfo4 = [v4 routeInfo];
        trafficColors = [routeInfo4 trafficColors];
        routeInfo5 = [v4 routeInfo];
        [routeInfo3 setTrafficColors:trafficColors count:{objc_msgSend(routeInfo5, "trafficColorsCount")}];

        routeInfo6 = [self routeInfo];
        routeInfo7 = [v4 routeInfo];
        trafficColorOffsets = [routeInfo7 trafficColorOffsets];
        routeInfo8 = [v4 routeInfo];
        [routeInfo6 setTrafficColorOffsets:trafficColorOffsets count:{objc_msgSend(routeInfo8, "trafficColorOffsetsCount")}];

        goto LABEL_30;
      }
    }

    routeInfo6 = [v4 routeInfo];
  }

  [self setRouteInfo:routeInfo6];
LABEL_30:

LABEL_31:
  if ([v4 etaInfosCount])
  {
    etaInfos2 = [v4 etaInfos];
    v24 = [etaInfos2 mutableCopy];
    [self setEtaInfos:v24];
  }

  if ([v4 hasSenderInfo])
  {
    senderInfo = [self senderInfo];

    if (senderInfo)
    {
      senderInfo2 = [self senderInfo];
      senderInfo3 = [v4 senderInfo];
      [senderInfo2 merge:senderInfo3];
    }

    else
    {
      senderInfo2 = [v4 senderInfo];
      [self setSenderInfo:senderInfo2];
    }
  }

  if ([v4 hasArrived])
  {
    [self setArrived:{objc_msgSend(v4, "arrived")}];
  }

  if ([v4 hasArrivedTimestamp])
  {
    [v4 arrivedTimestamp];
    [self setArrivedTimestamp:?];
  }

  if ([v4 hasClosed])
  {
    [self setClosed:{objc_msgSend(v4, "closed")}];
  }

  if ([v4 hasClosedTimestamp])
  {
    [v4 closedTimestamp];
    [self setClosedTimestamp:?];
  }

  if ([v4 hasGroupIdentifier])
  {
    groupIdentifier = [v4 groupIdentifier];
    [self setGroupIdentifier:groupIdentifier];
  }

  if ([v4 hasReferenceFrame])
  {
    [self setReferenceFrame:{objc_msgSend(v4, "referenceFrame")}];
  }

  if ([v4 hasMuted])
  {
    [self setMuted:{objc_msgSend(v4, "muted")}];
  }

  if ([v4 hasUpdatedTimestamp])
  {
    [v4 updatedTimestamp];
    [self setUpdatedTimestamp:?];
  }

  if ([v4 hasTransportType])
  {
    [self setTransportType:{objc_msgSend(v4, "transportType")}];
  }

  if ([v4 waypointInfosCount])
  {
    waypointInfos = [v4 waypointInfos];
    v30 = [waypointInfos mutableCopy];
    [self setWaypointInfos:v30];
  }

  if ([v4 hasLastLocation])
  {
    lastLocation = [v4 lastLocation];
    [self setLastLocation:lastLocation];
  }

  if ([v4 hasCurrentWaypointIndex])
  {
    [self setCurrentWaypointIndex:{objc_msgSend(v4, "currentWaypointIndex")}];
  }

  if ([v4 hasResumed])
  {
    [self setResumed:{objc_msgSend(v4, "resumed")}];
  }

  if ([v4 hasClosureReason])
  {
    [self setClosureReason:{objc_msgSend(v4, "closureReason")}];
  }
}

- (id)mspDescription
{
  v30 = MEMORY[0x277CCACA8];
  groupIdentifier = [self groupIdentifier];
  v2 = MEMORY[0x277CBEAA8];
  [self updatedTimestamp];
  v28 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  v3 = MEMORY[0x277CBEAA8];
  [self localUpdatedTimestamp];
  v34 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  if ([self closed])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v33 = v4;
  closureReason = [self closureReason];
  senderInfo = [self senderInfo];
  localName = [senderInfo localName];
  destinationName = [self destinationName];
  waypointInfosCount = [self waypointInfosCount];
  currentWaypointIndex = [self currentWaypointIndex];
  if ([self arrived])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v21 = v5;
  lastLocation = [self lastLocation];
  etaInfos = [self etaInfos];
  v7 = [etaInfos valueForKeyPath:@"mspDescription"];
  v8 = MEMORY[0x277CCABB0];
  routeInfo = [self routeInfo];
  v9 = [v8 numberWithUnsignedInteger:{objc_msgSend(routeInfo, "coordinatesCount")}];
  v10 = MEMORY[0x277CCABB0];
  routeInfo2 = [self routeInfo];
  v11 = [v10 numberWithUnsignedInteger:{objc_msgSend(routeInfo2, "routingPathLegsCount")}];
  v12 = MEMORY[0x277CCABB0];
  routeInfo3 = [self routeInfo];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(routeInfo3, "trafficColorsCount")}];
  if ([self muted])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  if ([self resumed])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v30 stringWithFormat:@"<%p groupID %@, last updated %@, local updated %@, closed %@ (reason: %lu), localName %@, destination %@ (%lu waypoints), current waypoint: %lu, reached %@, location %@, eta %@, (coords %@pt, routingPathLegs %@), traffic colors %@, muted %@, resumed %@", self, groupIdentifier, v28, v34, v33, closureReason, localName, destinationName, waypointInfosCount, currentWaypointIndex, v21, lastLocation, v7, v9, v11, v14, v16, v17];

  return v18;
}

- (void)_msp_logWithCategory:()MSPExtras type:object:prefix:
{
  v171 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v10 = MSPGetSharedTripLog();
  }

  v13 = v10;
  if (os_log_type_enabled(v13, a4))
  {
    v14 = v11;
    type = a4;
    if (v14)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v14];
    }

    else
    {
      v15 = @"<nil>";
    }

    v16 = v15;
    v17 = &stru_286950698;
    if (v12)
    {
      v17 = v12;
    }

    v68 = v17;
    groupIdentifier = [self groupIdentifier];
    hasTransportType = [self hasTransportType];
    v86 = v12;
    if (hasTransportType)
    {
      transportType = [self transportType];
      if (transportType >= 7)
      {
        v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", transportType];
        goto LABEL_15;
      }

      v19 = off_279866210[transportType];
    }

    else
    {
      v19 = @"n/a";
    }

    v95 = v19;
LABEL_15:
    hasUpdatedTimestamp = [self hasUpdatedTimestamp];
    if (hasUpdatedTimestamp)
    {
      v20 = MEMORY[0x277CBEAA8];
      [self updatedTimestamp];
      v94 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v94 = @"n/a";
    }

    v21 = @"n/a";
    hasLocalUpdatedTimestamp = [self hasLocalUpdatedTimestamp];
    v87 = v11;
    if (hasLocalUpdatedTimestamp)
    {
      v22 = MEMORY[0x277CBEAA8];
      [self localUpdatedTimestamp];
      v93 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v93 = @"n/a";
    }

    if ([self hasSenderInfo])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v102 = v23;
    senderInfo = [self senderInfo];
    if ([senderInfo hasFromDisplayName])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v101 = v24;
    senderInfo2 = [self senderInfo];
    fromDisplayName = [senderInfo2 fromDisplayName];
    v78 = fromDisplayName;
    if (fromDisplayName)
    {
      v26 = fromDisplayName;
    }

    else
    {
      v26 = @"n/a";
    }

    v63 = v26;
    senderInfo3 = [self senderInfo];
    if ([senderInfo3 hasFromIdentifier])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v100 = v27;
    senderInfo4 = [self senderInfo];
    fromIdentifier = [senderInfo4 fromIdentifier];
    v75 = fromIdentifier;
    if (fromIdentifier)
    {
      v29 = fromIdentifier;
    }

    else
    {
      v29 = @"n/a";
    }

    v62 = v29;
    senderInfo5 = [self senderInfo];
    if ([senderInfo5 hasLocalName])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v99 = v30;
    senderInfo6 = [self senderInfo];
    localName = [senderInfo6 localName];
    v72 = localName;
    if (localName)
    {
      v32 = localName;
    }

    else
    {
      v32 = @"n/a";
    }

    v60 = v32;
    senderInfo7 = [self senderInfo];
    if ([senderInfo7 hasLocalContactIdentifier])
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v108 = v33;
    senderInfo8 = [self senderInfo];
    localContactIdentifier = [senderInfo8 localContactIdentifier];
    v69 = localContactIdentifier;
    if (localContactIdentifier)
    {
      v35 = localContactIdentifier;
    }

    else
    {
      v35 = @"n/a";
    }

    v59 = v35;
    hasArrived = [self hasArrived];
    if (hasArrived)
    {
      if ([self arrived])
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v21 = v36;
    }

    hasArrivedTimestamp = [self hasArrivedTimestamp];
    if (hasArrivedTimestamp)
    {
      v37 = MEMORY[0x277CBEAA8];
      [self arrivedTimestamp];
      v91 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v91 = @"n/a";
    }

    hasClosed = [self hasClosed];
    if (hasClosed)
    {
      if ([self closed])
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v90 = v38;
    }

    else
    {
      v90 = @"n/a";
    }

    hasClosedTimestamp = [self hasClosedTimestamp];
    if (hasClosedTimestamp)
    {
      v39 = MEMORY[0x277CBEAA8];
      [self closedTimestamp];
      v89 = [v39 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v89 = @"n/a";
    }

    hasClosureReason = [self hasClosureReason];
    v85 = v16;
    v92 = v21;
    if (hasClosureReason)
    {
      v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "closureReason")}];
    }

    else
    {
      v88 = @"n/a";
    }

    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "etaInfosCount")}];
    etaInfos = [self etaInfos];
    v107 = [etaInfos valueForKey:@"mspDescription"];
    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "waypointInfosCount")}];
    waypointInfos = [self waypointInfos];
    v106 = [waypointInfos valueForKey:@"name"];
    if ([self hasLastLocation])
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    v105 = v40;
    lastLocation = [self lastLocation];
    mspDescription = [lastLocation mspDescription];
    v41 = MEMORY[0x277CCABB0];
    routeInfo = [self routeInfo];
    v96 = [v41 numberWithUnsignedInteger:{objc_msgSend(routeInfo, "routingPathLegsCount")}];
    v42 = MEMORY[0x277CCABB0];
    routeInfo2 = [self routeInfo];
    v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(routeInfo2, "coordinatesCount")}];
    v45 = MEMORY[0x277CCABB0];
    routeInfo3 = [self routeInfo];
    v47 = [v45 numberWithUnsignedInteger:{objc_msgSend(routeInfo3, "trafficColorsCount")}];
    v48 = MEMORY[0x277CCABB0];
    routeInfo4 = [self routeInfo];
    v50 = [v48 numberWithUnsignedInteger:{objc_msgSend(routeInfo4, "trafficColorOffsetsCount")}];
    hasReferenceFrame = [self hasReferenceFrame];
    if (hasReferenceFrame)
    {
      referenceFrame = [self referenceFrame];
      if (referenceFrame >= 3)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", referenceFrame];
      }

      else
      {
        v53 = off_279866248[referenceFrame];
      }
    }

    else
    {
      v53 = @"n/a";
    }

    v112 = v68;
    v126 = v63;
    v130 = v62;
    v134 = v60;
    v138 = v59;
    v125 = 2113;
    v129 = 2113;
    v133 = 2113;
    v137 = 2113;
    v151 = 2113;
    v155 = 2113;
    v159 = 2113;
    v136 = v108;
    v140 = v92;
    v142 = v91;
    v144 = v90;
    v148 = v88;
    v150 = v98;
    v152 = v107;
    v156 = v106;
    v158 = v105;
    v160 = mspDescription;
    v164 = v44;
    v166 = v47;
    v168 = v50;
    v111 = 2114;
    v113 = 2114;
    v115 = 2114;
    v117 = 2114;
    v119 = 2114;
    v121 = 2114;
    v123 = 2114;
    v127 = 2114;
    v131 = 2114;
    v135 = 2114;
    v139 = 2114;
    v141 = 2114;
    v143 = 2114;
    v145 = 2114;
    v147 = 2114;
    v149 = 2114;
    v153 = 2114;
    v157 = 2114;
    v161 = 2114;
    v163 = 2114;
    v165 = 2114;
    v167 = 2114;
    v169 = 2114;
    *buf = 138551043;
    v110 = v85;
    v114 = groupIdentifier;
    v116 = v95;
    v118 = v94;
    v120 = v93;
    v122 = v102;
    v124 = v101;
    v128 = v100;
    v132 = v99;
    v146 = v89;
    v154 = v97;
    v162 = v96;
    v170 = v53;
    _os_log_impl(&dword_25813A000, v13, type, "[%{public}@] %{public}@\n== Trip %{public}@ ====\n\ttransportType: %{public}@, lastUpdated: %{public}@, locallyUpdated: %{public}@\n\tsenderInfo: %{public}@, fromDisplayName: %{public}@ [ %{private}@ ], fromIdentifier: %{public}@ [ %{private}@ ], localName: %{public}@ [ %{private}@ ], localContactIdentifier: %{public}@ [ %{private}@ ]\n\tarrived: %{public}@, arrivedTimestamp: %{public}@, closed: %{public}@, closedTimestamp: %{public}@, closureReason: %{public}@\n\tETAs: %{public}@ %{private}@\n\twaypoints: %{public}@ %{private}@\n\tlocation: %{public}@ %{private}@ \n\troute: routingPathLegs: %{public}@, coordinates: %{public}@, trafficColors: %{public}@, trafficOffsets: %{public}@, referenceFrame: %{public}@\n================", buf, 0x138u);
    if (hasReferenceFrame)
    {
    }

    if (hasClosureReason)
    {
    }

    v12 = v86;
    v11 = v87;
    if (hasClosedTimestamp)
    {
    }

    if (hasClosed)
    {
    }

    if (hasArrivedTimestamp)
    {
    }

    if (hasArrived)
    {
    }

    if (hasLocalUpdatedTimestamp)
    {
    }

    if (hasUpdatedTimestamp)
    {
    }

    if (hasTransportType)
    {
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)truncatePointDataForPrivacy
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog();
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
  }

  composedRoute = [self composedRoute];
  if (composedRoute)
  {
    v8 = [self _polylineCoordinateForRoute:composedRoute];
    if (GEOPolylineCoordinateIsInvalid())
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy early exit: closestPointOnRoute returned GEOPolylineCoordinateInvalid", buf, 2u);
      }

      v10 = v5;
      v11 = v10;
      if (v6 > 0xFFFFFFFFFFFFFFFDLL)
      {

        routeInfo = v11;
        goto LABEL_51;
      }

      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v11, OS_SIGNPOST_EVENT, v3, "truncatePointDataForPrivacy_EarlyExit_GEOPolylineCoordinateInvalid", &unk_2581CCE6D, buf, 2u);
      }

      routeInfo = v11;
      if (os_signpost_enabled(routeInfo))
      {
        *buf = 0;
LABEL_18:
        _os_signpost_emit_with_name_impl(&dword_25813A000, routeInfo, OS_SIGNPOST_INTERVAL_END, v3, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }

    routeInfo = [self routeInfo];
    if (!routeInfo)
    {
      v15 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy: missing routeInfo, creating on-demand", buf, 2u);
      }

      routeInfo = objc_alloc_init(MEMORY[0x277D0ED20]);
      [self setRouteInfo:routeInfo];
    }

    spid = v3;
    if ([composedRoute usesRoutingPathPoints])
    {
      v16 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy truncating routingPathLeg from closest coordinate", buf, 2u);
      }

      v17 = [composedRoute routingPathDataFromStart:v8];
      v18 = [v17 mutableCopy];
      [routeInfo setRoutingPathLegs:v18];
    }

    [routeInfo clearCoordinates];
    pointCount = [composedRoute pointCount];
    if (pointCount)
    {
      v20 = pointCount;
      pointCount2 = [composedRoute pointCount];
      v22 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v52 = v20;
        v53 = 2048;
        v54 = (2 * pointCount2);
        _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy composed route coordinates count %lu (%lu)", buf, 0x16u);
      }

      v23 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v52) = v8;
        _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_DEBUG, "index for current location %u", buf, 8u);
      }

      v24 = v20 - v8;
      if (v20 <= v8)
      {
        v42 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_25813A000, v42, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy early exit: index > number of coordinates", buf, 2u);
        }

        v43 = v5;
        v44 = v43;
        if (v6 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v31 = v44;
        }

        else
        {
          if (os_signpost_enabled(v43))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25813A000, v44, OS_SIGNPOST_EVENT, spid, "truncatePointDataForPrivacy_EarlyExit_NumberOfCoordinates", &unk_2581CCE6D, buf, 2u);
          }

          v31 = v44;
          if (os_signpost_enabled(v31))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25813A000, v31, OS_SIGNPOST_INTERVAL_END, spid, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
          }
        }

        goto LABEL_49;
      }

      v25 = v8;
      do
      {
        [composedRoute pointAt:v25];
        v27 = v26;
        [routeInfo addCoordinates:?];
        [routeInfo addCoordinates:v27];
        ++v25;
        --v24;
      }

      while (v24);
      v28 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = vcvts_n_f32_u64([routeInfo coordinatesCount], 1uLL);
        coordinatesCount = [routeInfo coordinatesCount];
        *buf = 134218240;
        v52 = v29;
        v53 = 2048;
        v54 = coordinatesCount;
        _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy route info coordinates after truncation count %lu (%lu)", buf, 0x16u);
      }
    }

    [routeInfo clearTrafficColors];
    [routeInfo clearTrafficColorOffsets];
    v31 = [composedRoute truncatedTrafficFromRouteCoordinate:v8];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    routeTrafficColors = [v31 routeTrafficColors];
    v33 = [routeTrafficColors countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v47;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(routeTrafficColors);
          }

          v37 = *(*(&v46 + 1) + 8 * i);
          -[NSObject addTrafficColor:](routeInfo, "addTrafficColor:", [v37 color]);
          [v37 offsetMeters];
          [routeInfo addTrafficColorOffset:v38];
        }

        v34 = [routeTrafficColors countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v34);
    }

    v39 = v5;
    v40 = v39;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25813A000, v40, OS_SIGNPOST_INTERVAL_END, spid, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
    }

LABEL_49:
    goto LABEL_51;
  }

  v13 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy early exit: no composed route to truncate", buf, 2u);
  }

  v14 = v5;
  routeInfo = v14;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    goto LABEL_18;
  }

LABEL_51:

  v41 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_polylineCoordinateForRoute:()MSPExtras
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  lastLocation = [self lastLocation];
  coordinate = [lastLocation coordinate];
  v7 = coordinate;
  if (!lastLocation)
  {
    etaInfo = [self etaInfo];
    v16 = etaInfo;
    if (etaInfo && [etaInfo hasLatitude] && objc_msgSend(v16, "hasLongitude"))
    {
      lastLocation = objc_alloc_init(MEMORY[0x277D0ED18]);
      v17 = objc_alloc_init(MEMORY[0x277D0EB58]);

      [lastLocation setCoordinate:v17];
      [v16 latitude];
      [v17 setLat:?];
      [v16 longitude];
      [v17 setLng:?];
      v7 = v17;
    }

    else
    {
      lastLocation = 0;
    }

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = *MEMORY[0x277D0E9F8];
    v13 = *(MEMORY[0x277D0E9F8] + 4);
    goto LABEL_13;
  }

  if (!coordinate)
  {
    goto LABEL_12;
  }

LABEL_3:
  [v7 lat];
  v9 = v8;
  [v7 lng];
  v11 = [v4 closestPointOnRoute:{v9, v10}];
  v12 = v11;
  v13 = HIDWORD(v11);
  v14 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134217984;
    v25 = v12;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "polylineCoordinateForRoute closest index %lu, sourced from route + latlng", &v24, 0xCu);
  }

LABEL_13:
  if (GEOPolylineCoordinateIsInvalid())
  {
    v18 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      hasMatchedCoordinate = [lastLocation hasMatchedCoordinate];
      v20 = @"NO";
      if (hasMatchedCoordinate)
      {
        v20 = @"YES";
      }

      v21 = v20;
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEBUG, "polylineCoordinateForRoute no valid closest index, will use whole route (sender provided: %@)", &v24, 0xCu);
    }

    v13 = 0;
    v12 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12 | (v13 << 32);
}

- (void)updateElevationModelToLegacyEGM96
{
  composedRoute = [self composedRoute];
  if (composedRoute)
  {
    v3 = [self _polylineCoordinateForRoute:composedRoute];
    if (!GEOPolylineCoordinateIsInvalid())
    {
      endRouteCoordinate = [composedRoute endRouteCoordinate];
      v8 = [objc_alloc(MEMORY[0x277D0ECB0]) initWithRoute:composedRoute range:v3 desiredElevationModel:{endRouteCoordinate, 0}];
      rawData = [v8 rawData];
      v10 = [rawData mutableCopy];
      routeInfo = [self routeInfo];
      [routeInfo setRoutingPathLegs:v10];

      goto LABEL_10;
    }

    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v5 = "updateElevationModelToLegacyEGM96 early exit: closestPointOnRoute returned GEOPolylineCoordinateInvalid";
      v6 = &v12;
LABEL_7:
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    }
  }

  else
  {
    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "updateElevationModelToLegacyEGM96 early exit: no composed route";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (uint64_t)updateWaypointsFromComposedRoute:()MSPExtras
{
  v50 = *MEMORY[0x277D85DE8];
  legs = [a3 legs];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(legs, "count")}];
  v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(legs, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = legs;
  v6 = v4;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
  v44 = v4;
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277D0ED38]);
        [v6 addObject:v12];
        destination = [v11 destination];
        uniqueWaypointID = [destination uniqueWaypointID];

        if (uniqueWaypointID)
        {
          destination2 = [v11 destination];
          uniqueWaypointID2 = [destination2 uniqueWaypointID];

          v17 = [MEMORY[0x277CCAD78] _geo_uuidForData:uniqueWaypointID2];
          uUIDString = [v17 UUIDString];
        }

        else
        {
          uniqueWaypointID2 = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uniqueWaypointID2 UUIDString];
        }

        [v12 setUniqueIdentifier:uUIDString];
        destination3 = [v11 destination];
        destination4 = [v11 destination];
        chargingInfo = [destination4 chargingInfo];

        if (chargingInfo)
        {
          v22 = objc_alloc_init(MEMORY[0x277D0ED08]);
          [v22 setMuid:{objc_msgSend(chargingInfo, "muid")}];
          name = [chargingInfo name];
          v24 = [name copy];
          [v22 setName:v24];

          [chargingInfo chargingTime];
          [v22 setChargingTime:?];
          [v12 setChargingStationInfo:v22];
          [v43 addObject:v22];
        }

        else
        {
          geoMapItem = [destination3 geoMapItem];

          if (!geoMapItem)
          {
            goto LABEL_14;
          }

          v26 = MEMORY[0x277D0EBC0];
          geoMapItem2 = [destination3 geoMapItem];
          v22 = [v26 mapItemStorageForGEOMapItem:geoMapItem2 forUseType:2];

          [v12 setMapItemStorage:v22];
        }

        v6 = v44;
LABEL_14:
      }

      v8 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v8);
  }

  v28 = [v6 count];
  if (v28 != [self waypointInfosCount])
  {
    goto LABEL_20;
  }

  waypointInfos = [self waypointInfos];
  v30 = v6;
  v31 = waypointInfos;
  if (!(v30 | v31) || (v32 = v31, v33 = [v30 isEqual:v31], v32, v30, v32, (v33 & 1) != 0))
  {
    v34 = 0;
  }

  else
  {
LABEL_20:
    [self setWaypointInfos:v6];
    [self setCurrentWaypointIndex:0];
    [self _createPlaceholderETAInfosForWaypoints:v6];
    waypointInfos2 = [self waypointInfos];
    lastObject = [waypointInfos2 lastObject];
    mapItemStorage = [lastObject mapItemStorage];
    [self setDestinationInfo:mapItemStorage];

    v6 = v44;
    routeInfo = [self routeInfo];
    [routeInfo setChargingStations:v43];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [self setUpdatedTimestamp:?];
    v34 = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_createPlaceholderETAInfosForWaypoints:()MSPExtras
{
  v4 = a3;
  [self clearEtaInfos];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__GEOSharedNavState_MSPExtras___createPlaceholderETAInfosForWaypoints___block_invoke;
  v5[3] = &unk_2798661A8;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)updateRouteInfoFromComposedRoute:()MSPExtras
{
  v4 = a3;
  [self setComposedRoute:v4];
  v6 = objc_alloc_init(MEMORY[0x277D0ED20]);
  elevationModel = [v4 elevationModel];

  [v6 setElevationModel:elevationModel];
  [self setRouteInfo:v6];
  [self truncatePointDataForPrivacy];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [self setUpdatedTimestamp:?];
}

- (uint64_t)updateFromTraffic:()MSPExtras
{
  v4 = a3;
  composedRoute = [self composedRoute];
  mutableData = [composedRoute mutableData];
  traffic = [mutableData traffic];
  v8 = traffic;
  if (v4 | traffic)
  {
    v9 = [traffic isEqual:v4];
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    composedRoute2 = [self composedRoute];
    mutableData2 = [composedRoute2 mutableData];
    [mutableData2 setTraffic:v4];

    [self truncatePointDataForPrivacy];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    [self setUpdatedTimestamp:?];
  }

  return v9 ^ 1u;
}

- (id)composedRoute
{
  v65 = *MEMORY[0x277D85DE8];
  composedRouteIfExists = [self composedRouteIfExists];
  if (!composedRouteIfExists)
  {
    routeInfo = [self routeInfo];
    routingPathLegs = [routeInfo routingPathLegs];
    v5 = [routingPathLegs count];

    if (!v5)
    {
      if (![routeInfo coordinatesCount])
      {
LABEL_40:
        composedRouteIfExists = 0;
LABEL_48:

        goto LABEL_49;
      }

      v13 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v60 = [routeInfo coordinatesCount];
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "Building composedRoute from routeInfo (%lu coordinates)", buf, 0xCu);
      }

      v14 = [routeInfo coordinatesCount] >> 1;
      v15 = objc_alloc_init(MEMORY[0x277D0ECD8]);
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(routeInfo length:{"coordinates"), 16 * v14}];
      [v15 setUnpackedLatLngVertices:v16];

      [v15 setTrafficColors:objc_msgSend(routeInfo count:{"trafficColors"), objc_msgSend(routeInfo, "trafficColorsCount")}];
      [v15 setTrafficColorOffsets:objc_msgSend(routeInfo count:{"trafficColorOffsets"), objc_msgSend(routeInfo, "trafficColorOffsetsCount")}];
      v17 = objc_alloc_init(MEMORY[0x277D0ED78]);
      [v17 setManeuverStartZilchIndex:0];
      v18 = (v14 - 1);
      [v17 setManeuverEndBasicIndex:v18];
      [v17 setManeuverEndZilchIndex:v18];
      [v15 addStep:v17];
      if ([v15 hasUnpackedLatLngVertices])
      {
        [v15 coordinateAt:0];
        v21 = [objc_alloc(MEMORY[0x277D0EB80]) initWithLatitude:v19 longitude:v20];
        v22 = [objc_alloc(MEMORY[0x277D0EAF0]) initWithLocation:v21 isCurrentLocation:1];
        v23 = objc_alloc(MEMORY[0x277D0EAF0]);
        destinationWaypointMapItem = [self destinationWaypointMapItem];
        v25 = [v23 initWithMapItem:destinationWaypointMapItem];

        v58[0] = v22;
        v58[1] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        v27 = [objc_alloc(MEMORY[0x277D0ECF0]) initWithWaypoints:v26 routeAttributes:0 directionsResponse:0];
      }

      else
      {
        v27 = 0;
      }

      v51 = objc_alloc_init(MEMORY[0x277D0EE38]);
      [v51 addRouteLeg:v15];
      composedRouteIfExists = [objc_alloc(MEMORY[0x277D0EAE8]) initWithGeoWaypointRoute:v51 initializerData:v27];

LABEL_47:
      [self setComposedRoute:composedRouteIfExists];
      goto LABEL_48;
    }

    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v60 = [routeInfo routingPathLegsCount];
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "Building composedRoute from routeInfo (%lu routingPathLegs)", buf, 0xCu);
    }

    trafficColorsCount = [routeInfo trafficColorsCount];
    if (trafficColorsCount != [routeInfo trafficColorOffsetsCount])
    {
      v8 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        trafficColorsCount2 = [routeInfo trafficColorsCount];
        trafficColorOffsetsCount = [routeInfo trafficColorOffsetsCount];
        *buf = 67109376;
        *v60 = trafficColorsCount2;
        *&v60[4] = 1024;
        *&v60[6] = trafficColorOffsetsCount;
        _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "SharedNavRouteInfo traffic colors count (%d) is not equal to traffic color offsets count (%d). Attempting to continue anyway", buf, 0xEu);
      }
    }

    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    if ([self waypointInfosCount])
    {
      waypointInfosCount = [self waypointInfosCount];
    }

    else
    {
      waypointInfosCount = 1;
    }

    v15 = [v11 initWithCapacity:waypointInfosCount];
    if ([self waypointInfosCount])
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      waypointInfos = [self waypointInfos];
      destinationWaypointMapItem2 = [waypointInfos copy];

      v30 = [destinationWaypointMapItem2 countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v55;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(destinationWaypointMapItem2);
            }

            v34 = *(*(&v54 + 1) + 8 * i);
            v35 = objc_alloc(MEMORY[0x277D0EAF0]);
            mapItemStorage = [v34 mapItemStorage];
            v37 = [v35 initWithMapItem:mapItemStorage];

            [v15 addObject:v37];
          }

          v31 = [destinationWaypointMapItem2 countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v31);
      }
    }

    else
    {
      if (![self hasDestinationInfo])
      {
        goto LABEL_29;
      }

      v38 = objc_alloc(MEMORY[0x277D0EAF0]);
      destinationWaypointMapItem2 = [self destinationWaypointMapItem];
      v39 = [v38 initWithMapItem:destinationWaypointMapItem2];
      [v15 addObject:v39];
    }

LABEL_29:
    routingPathLegsCount = [routeInfo routingPathLegsCount];
    if (routingPathLegsCount != [v15 count] && objc_msgSend(v15, "count") > routingPathLegsCount)
    {
      v41 = [v15 count] - routingPathLegsCount;
      v42 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v15 count];
        *buf = 134218496;
        *v60 = routingPathLegsCount;
        *&v60[8] = 2048;
        v61 = v43;
        v62 = 2048;
        v63 = v41;
        _os_log_impl(&dword_25813A000, v42, OS_LOG_TYPE_DEFAULT, "Found %lu routingPathLegs for %lu waypoints, dropping %lu leading waypoints", buf, 0x20u);
      }

      [v15 removeObjectsInRange:{0, v41}];
    }

    if (![v15 count] || !routingPathLegsCount || routingPathLegsCount > objc_msgSend(v15, "count"))
    {
      v44 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [v15 count];
        *buf = 134218240;
        *v60 = routingPathLegsCount;
        *&v60[8] = 2048;
        v61 = v45;
        _os_log_impl(&dword_25813A000, v44, OS_LOG_TYPE_ERROR, "Cannot create composedRoute from %lu routingPathLegs and %lu waypoints", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v17 = objc_opt_new();
    [v17 setTransportType:{objc_msgSend(self, "transportType")}];
    v46 = objc_alloc(MEMORY[0x277D0ECB0]);
    routingPathLegs2 = [routeInfo routingPathLegs];
    v48 = [v46 initWithRawData:routingPathLegs2 elevationModel:{objc_msgSend(routeInfo, "elevationModel")}];
    [v17 setRawRouteGeometry:v48];

    [v17 setDestinations:v15];
    [v17 setIsOriginCurrentLocation:1];
    [v17 setSource:4];
    trafficColorsCount3 = [routeInfo trafficColorsCount];
    if (trafficColorsCount3 >= [routeInfo trafficColorOffsetsCount])
    {
      trafficColorOffsetsCount2 = [routeInfo trafficColorOffsetsCount];
    }

    else
    {
      trafficColorOffsetsCount2 = [routeInfo trafficColorsCount];
    }

    [v17 setTrafficColors:objc_msgSend(routeInfo offsets:"trafficColors") count:{objc_msgSend(routeInfo, "trafficColorOffsets"), trafficColorOffsetsCount2}];
    composedRouteIfExists = [v17 buildRoute];
    goto LABEL_47;
  }

LABEL_49:
  v52 = *MEMORY[0x277D85DE8];

  return composedRouteIfExists;
}

- (void)setComposedRouteFromState:()MSPExtras
{
  composedRouteIfExists = [a3 composedRouteIfExists];
  [self setComposedRoute:composedRouteIfExists];
}

- (id)equalityTest
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__GEOSharedNavState_MSPExtras__equalityTest__block_invoke;
  v3[3] = &unk_2798661D0;
  v3[4] = self;
  v1 = MEMORY[0x259C7AD60](v3);

  return v1;
}

- (uint64_t)stripArrivedOrClosedTrip
{
  v10 = *MEMORY[0x277D85DE8];
  if (![self arrived] || objc_msgSend(self, "hasClosed") && (objc_msgSend(self, "closed") & 1) != 0 || (result = objc_msgSend(self, "isNavigatingToIntermediateStop"), (result & 1) == 0))
  {
    if ([self closed])
    {
      v3 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        groupIdentifier = [self groupIdentifier];
        v8 = 138412290;
        v9 = groupIdentifier;
        _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "Stripping route and ETAs from trip %@ (closed)", &v8, 0xCu);
      }

      waypointInfos = [self waypointInfos];
      [self _createPlaceholderETAInfosForWaypoints:waypointInfos];
    }

    else
    {
      if (![self arrived])
      {
        goto LABEL_13;
      }

      waypointInfos = MSPGetSharedTripLog();
      if (os_log_type_enabled(waypointInfos, OS_LOG_TYPE_DEFAULT))
      {
        groupIdentifier2 = [self groupIdentifier];
        v8 = 138412290;
        v9 = groupIdentifier2;
        _os_log_impl(&dword_25813A000, waypointInfos, OS_LOG_TYPE_DEFAULT, "Stripping route from trip %@ (arrived)", &v8, 0xCu);
      }
    }

LABEL_13:
    [self setRouteInfo:0];
    result = [self setComposedRoute:0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)etaInfo
{
  if ([self hasCurrentWaypointIndex] && (v2 = objc_msgSend(self, "currentWaypointIndex"), objc_msgSend(self, "etaInfosCount") > v2))
  {
    etaInfos = [self etaInfos];
    firstObject = [etaInfos objectAtIndexedSubscript:{objc_msgSend(self, "currentWaypointIndex")}];
  }

  else
  {
    etaInfos = [self etaInfos];
    firstObject = [etaInfos firstObject];
  }

  v5 = firstObject;

  return v5;
}

- (id)finalETAInfo
{
  etaInfos = [self etaInfos];
  lastObject = [etaInfos lastObject];

  return lastObject;
}

- (uint64_t)numberOfIntermediateStopsRemaining
{
  if ([self waypointInfosCount])
  {
    waypointInfosCount = [self waypointInfosCount];
    if ([self hasCurrentWaypointIndex])
    {
      v3 = ~[self currentWaypointIndex];
    }

    else
    {
      v3 = -1;
    }

    return v3 + waypointInfosCount;
  }

  else
  {
    routeInfo = [self routeInfo];
    chargingStationsCount = [routeInfo chargingStationsCount];

    return chargingStationsCount;
  }
}

- (uint64_t)isNavigatingToIntermediateStop
{
  result = [self waypointInfosCount];
  if (result)
  {
    result = [self hasCurrentWaypointIndex];
    if (result)
    {
      currentWaypointIndex = [self currentWaypointIndex];
      return [self waypointInfosCount] - 1 > currentWaypointIndex;
    }
  }

  return result;
}

- (id)nextWaypointInfo
{
  if ([self hasCurrentWaypointIndex] && (v2 = objc_msgSend(self, "currentWaypointIndex"), objc_msgSend(self, "waypointInfosCount") > v2))
  {
    waypointInfos = [self waypointInfos];
    destinationWaypointInfo = [waypointInfos objectAtIndexedSubscript:{objc_msgSend(self, "currentWaypointIndex")}];
  }

  else
  {
    destinationWaypointInfo = [self destinationWaypointInfo];
  }

  return destinationWaypointInfo;
}

- (uint64_t)stripForSendingUpdatedWaypoints
{
  if ([self hasCurrentWaypointIndex])
  {
    waypointInfosCount = [self waypointInfosCount];
    if (waypointInfosCount > [self currentWaypointIndex])
    {
      currentWaypointIndex = [self currentWaypointIndex];
      v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, currentWaypointIndex}];
      waypointInfos = [self waypointInfos];
      [waypointInfos enumerateObjectsAtIndexes:v4 options:0 usingBlock:&__block_literal_global_3];
    }
  }

  [self setLastLocation:0];

  return [self setRouteInfo:0];
}

- (uint64_t)stripForSendingUpdatedRoute
{
  [self setSenderInfo:0];
  [self setDestinationInfo:0];
  [self setLastLocation:0];
  [self truncatePointDataForPrivacy];

  return [self clearWaypointInfos];
}

- (uint64_t)stripForSendingUpdatedETA
{
  [self setSenderInfo:0];
  [self setRouteInfo:0];
  [self setDestinationInfo:0];

  return [self clearWaypointInfos];
}

- (uint64_t)stripForSendingUpdatedTraffic
{
  routeInfo = [self routeInfo];
  [routeInfo clearCoordinates];

  routeInfo2 = [self routeInfo];
  [routeInfo2 clearRoutingPathLegs];

  [self setLastLocation:0];
  [self setSenderInfo:0];
  [self setDestinationInfo:0];

  return [self clearWaypointInfos];
}

- (uint64_t)stripForSendingArrival
{
  [self setSenderInfo:0];
  [self setRouteInfo:0];
  result = [self waypointInfosCount];
  if (result)
  {
    result = [self waypointInfosCount];
    if (result != 1)
    {
      v3 = 0;
      do
      {
        result = [self currentWaypointIndex];
        if (v3 == result)
        {
          break;
        }

        waypointInfos = [self waypointInfos];
        v5 = [waypointInfos objectAtIndex:v3];

        [v5 setMapItemStorage:0];
        [v5 setChargingStationInfo:0];

        ++v3;
        result = [self waypointInfosCount];
      }

      while (v3 < result - 1);
    }
  }

  return result;
}

- (uint64_t)stripForSendingResuming
{
  [self setSenderInfo:0];

  return [self setRouteInfo:0];
}

- (uint64_t)stripForSendingStoppedSharing
{
  [self setRouteInfo:0];
  [self setDestinationInfo:0];
  [self setLastLocation:0];
  [self clearWaypointInfos];

  return [self clearEtaInfos];
}

@end