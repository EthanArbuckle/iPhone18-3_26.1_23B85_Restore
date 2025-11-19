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
  v1 = [a1 destinationWaypointInfo];
  v2 = [v1 name];

  return v2;
}

- (id)destinationWaypointInfo
{
  if ([a1 waypointInfosCount])
  {
    v2 = [a1 waypointInfos];
    v3 = [v2 lastObject];

    v4 = [v3 mapItemStorage];
    if (v4)
    {
      v5 = v4;
      goto LABEL_8;
    }

    v6 = [v3 chargingStationInfo];

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v3 = [a1 destinationInfo];

  if (!v3)
  {
    goto LABEL_9;
  }

  v3 = objc_alloc_init(MEMORY[0x277D0ED38]);
  v5 = [a1 destinationInfo];
  [v3 setMapItemStorage:v5];
LABEL_8:

LABEL_9:

  return v3;
}

- (id)destinationWaypointMapItem
{
  v1 = [a1 destinationWaypointInfo];
  v2 = [v1 mapItemStorage];

  return v2;
}

- (id)senderName
{
  v2 = [a1 senderInfo];
  if ([v2 hasLocalContactIdentifier])
  {

LABEL_4:
    v5 = [a1 senderInfo];
    v6 = [v5 localName];

    goto LABEL_6;
  }

  v3 = [a1 senderInfo];
  v4 = [v3 hasFromDisplayName];

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)senderNameOrHandle
{
  v1 = [a1 senderInfo];
  v2 = [v1 localName];

  return v2;
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

    [a1 clearWaypointInfos];
    v6 = objc_alloc_init(MEMORY[0x277D0ED38]);
    v7 = [v4 destinationInfo];
    [v6 setMapItemStorage:v7];

    [a1 addWaypointInfo:v6];
    [a1 setDestinationInfo:0];
  }

  if (([v4 hasLastLocation] & 1) == 0 && objc_msgSend(v4, "etaInfosCount") == 1)
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "Migrating legacy location in etaInfo to modern lastLocation", v41, 2u);
    }

    v9 = [v4 etaInfos];
    v10 = [v9 lastObject];

    if ([v10 hasLatitude] && objc_msgSend(v10, "hasLongitude"))
    {
      v11 = objc_alloc_init(MEMORY[0x277D0ED18]);
      v12 = objc_alloc_init(MEMORY[0x277D0EB58]);
      [v10 latitude];
      [v12 setLat:?];
      [v10 longitude];
      [v12 setLng:?];
      [v11 setCoordinate:v12];
      [v4 setLastLocation:v11];
      [v10 setHasLatitude:0];
      [v10 setHasLongitude:0];
    }
  }

  v13 = [a1 composedRouteIfExists];

  if (v13)
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
      v17 = [v4 waypointInfosCount];
      if (v17 != [a1 waypointInfosCount])
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

        [a1 setComposedRoute:0];
      }
    }
  }

  if (![v4 hasRouteInfo])
  {
    goto LABEL_31;
  }

  v18 = [a1 hasRouteInfo];
  v19 = [v4 routeInfo];
  v20 = v19;
  if (v18)
  {
    if ([v19 coordinatesCount])
    {
    }

    else
    {
      v21 = [v4 routeInfo];
      v22 = [v21 routingPathLegsCount];

      if (!v22)
      {
        v32 = [a1 routeInfo];
        v33 = [v4 routeInfo];
        v34 = [v33 trafficColors];
        v35 = [v4 routeInfo];
        [v32 setTrafficColors:v34 count:{objc_msgSend(v35, "trafficColorsCount")}];

        v20 = [a1 routeInfo];
        v36 = [v4 routeInfo];
        v37 = [v36 trafficColorOffsets];
        v38 = [v4 routeInfo];
        [v20 setTrafficColorOffsets:v37 count:{objc_msgSend(v38, "trafficColorOffsetsCount")}];

        goto LABEL_30;
      }
    }

    v20 = [v4 routeInfo];
  }

  [a1 setRouteInfo:v20];
LABEL_30:

LABEL_31:
  if ([v4 etaInfosCount])
  {
    v23 = [v4 etaInfos];
    v24 = [v23 mutableCopy];
    [a1 setEtaInfos:v24];
  }

  if ([v4 hasSenderInfo])
  {
    v25 = [a1 senderInfo];

    if (v25)
    {
      v26 = [a1 senderInfo];
      v27 = [v4 senderInfo];
      [v26 merge:v27];
    }

    else
    {
      v26 = [v4 senderInfo];
      [a1 setSenderInfo:v26];
    }
  }

  if ([v4 hasArrived])
  {
    [a1 setArrived:{objc_msgSend(v4, "arrived")}];
  }

  if ([v4 hasArrivedTimestamp])
  {
    [v4 arrivedTimestamp];
    [a1 setArrivedTimestamp:?];
  }

  if ([v4 hasClosed])
  {
    [a1 setClosed:{objc_msgSend(v4, "closed")}];
  }

  if ([v4 hasClosedTimestamp])
  {
    [v4 closedTimestamp];
    [a1 setClosedTimestamp:?];
  }

  if ([v4 hasGroupIdentifier])
  {
    v28 = [v4 groupIdentifier];
    [a1 setGroupIdentifier:v28];
  }

  if ([v4 hasReferenceFrame])
  {
    [a1 setReferenceFrame:{objc_msgSend(v4, "referenceFrame")}];
  }

  if ([v4 hasMuted])
  {
    [a1 setMuted:{objc_msgSend(v4, "muted")}];
  }

  if ([v4 hasUpdatedTimestamp])
  {
    [v4 updatedTimestamp];
    [a1 setUpdatedTimestamp:?];
  }

  if ([v4 hasTransportType])
  {
    [a1 setTransportType:{objc_msgSend(v4, "transportType")}];
  }

  if ([v4 waypointInfosCount])
  {
    v29 = [v4 waypointInfos];
    v30 = [v29 mutableCopy];
    [a1 setWaypointInfos:v30];
  }

  if ([v4 hasLastLocation])
  {
    v31 = [v4 lastLocation];
    [a1 setLastLocation:v31];
  }

  if ([v4 hasCurrentWaypointIndex])
  {
    [a1 setCurrentWaypointIndex:{objc_msgSend(v4, "currentWaypointIndex")}];
  }

  if ([v4 hasResumed])
  {
    [a1 setResumed:{objc_msgSend(v4, "resumed")}];
  }

  if ([v4 hasClosureReason])
  {
    [a1 setClosureReason:{objc_msgSend(v4, "closureReason")}];
  }
}

- (id)mspDescription
{
  v30 = MEMORY[0x277CCACA8];
  v29 = [a1 groupIdentifier];
  v2 = MEMORY[0x277CBEAA8];
  [a1 updatedTimestamp];
  v28 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
  v3 = MEMORY[0x277CBEAA8];
  [a1 localUpdatedTimestamp];
  v34 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  if ([a1 closed])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v33 = v4;
  v27 = [a1 closureReason];
  v31 = [a1 senderInfo];
  v32 = [v31 localName];
  v25 = [a1 destinationName];
  v23 = [a1 waypointInfosCount];
  v22 = [a1 currentWaypointIndex];
  if ([a1 arrived])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v21 = v5;
  v6 = [a1 lastLocation];
  v26 = [a1 etaInfos];
  v7 = [v26 valueForKeyPath:@"mspDescription"];
  v8 = MEMORY[0x277CCABB0];
  v24 = [a1 routeInfo];
  v9 = [v8 numberWithUnsignedInteger:{objc_msgSend(v24, "coordinatesCount")}];
  v10 = MEMORY[0x277CCABB0];
  v20 = [a1 routeInfo];
  v11 = [v10 numberWithUnsignedInteger:{objc_msgSend(v20, "routingPathLegsCount")}];
  v12 = MEMORY[0x277CCABB0];
  v13 = [a1 routeInfo];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "trafficColorsCount")}];
  if ([a1 muted])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  if ([a1 resumed])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v30 stringWithFormat:@"<%p groupID %@, last updated %@, local updated %@, closed %@ (reason: %lu), localName %@, destination %@ (%lu waypoints), current waypoint: %lu, reached %@, location %@, eta %@, (coords %@pt, routingPathLegs %@), traffic colors %@, muted %@, resumed %@", a1, v29, v28, v34, v33, v27, v32, v25, v23, v22, v21, v6, v7, v9, v11, v14, v16, v17];

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
    v103 = [a1 groupIdentifier];
    v84 = [a1 hasTransportType];
    v86 = v12;
    if (v84)
    {
      v18 = [a1 transportType];
      if (v18 >= 7)
      {
        v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v18];
        goto LABEL_15;
      }

      v19 = off_279866210[v18];
    }

    else
    {
      v19 = @"n/a";
    }

    v95 = v19;
LABEL_15:
    v83 = [a1 hasUpdatedTimestamp];
    if (v83)
    {
      v20 = MEMORY[0x277CBEAA8];
      [a1 updatedTimestamp];
      v94 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v94 = @"n/a";
    }

    v21 = @"n/a";
    v82 = [a1 hasLocalUpdatedTimestamp];
    v87 = v11;
    if (v82)
    {
      v22 = MEMORY[0x277CBEAA8];
      [a1 localUpdatedTimestamp];
      v93 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v93 = @"n/a";
    }

    if ([a1 hasSenderInfo])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v102 = v23;
    v80 = [a1 senderInfo];
    if ([v80 hasFromDisplayName])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v101 = v24;
    v79 = [a1 senderInfo];
    v25 = [v79 fromDisplayName];
    v78 = v25;
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = @"n/a";
    }

    v63 = v26;
    v77 = [a1 senderInfo];
    if ([v77 hasFromIdentifier])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v100 = v27;
    v76 = [a1 senderInfo];
    v28 = [v76 fromIdentifier];
    v75 = v28;
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = @"n/a";
    }

    v62 = v29;
    v74 = [a1 senderInfo];
    if ([v74 hasLocalName])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v99 = v30;
    v73 = [a1 senderInfo];
    v31 = [v73 localName];
    v72 = v31;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = @"n/a";
    }

    v60 = v32;
    v71 = [a1 senderInfo];
    if ([v71 hasLocalContactIdentifier])
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v108 = v33;
    v70 = [a1 senderInfo];
    v34 = [v70 localContactIdentifier];
    v69 = v34;
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = @"n/a";
    }

    v59 = v35;
    v67 = [a1 hasArrived];
    if (v67)
    {
      if ([a1 arrived])
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v21 = v36;
    }

    v66 = [a1 hasArrivedTimestamp];
    if (v66)
    {
      v37 = MEMORY[0x277CBEAA8];
      [a1 arrivedTimestamp];
      v91 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v91 = @"n/a";
    }

    v65 = [a1 hasClosed];
    if (v65)
    {
      if ([a1 closed])
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

    v64 = [a1 hasClosedTimestamp];
    if (v64)
    {
      v39 = MEMORY[0x277CBEAA8];
      [a1 closedTimestamp];
      v89 = [v39 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v89 = @"n/a";
    }

    v61 = [a1 hasClosureReason];
    v85 = v16;
    v92 = v21;
    if (v61)
    {
      v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "closureReason")}];
    }

    else
    {
      v88 = @"n/a";
    }

    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "etaInfosCount")}];
    v58 = [a1 etaInfos];
    v107 = [v58 valueForKey:@"mspDescription"];
    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "waypointInfosCount")}];
    v57 = [a1 waypointInfos];
    v106 = [v57 valueForKey:@"name"];
    if ([a1 hasLastLocation])
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    v105 = v40;
    v56 = [a1 lastLocation];
    v104 = [v56 mspDescription];
    v41 = MEMORY[0x277CCABB0];
    v55 = [a1 routeInfo];
    v96 = [v41 numberWithUnsignedInteger:{objc_msgSend(v55, "routingPathLegsCount")}];
    v42 = MEMORY[0x277CCABB0];
    v43 = [a1 routeInfo];
    v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(v43, "coordinatesCount")}];
    v45 = MEMORY[0x277CCABB0];
    v46 = [a1 routeInfo];
    v47 = [v45 numberWithUnsignedInteger:{objc_msgSend(v46, "trafficColorsCount")}];
    v48 = MEMORY[0x277CCABB0];
    v49 = [a1 routeInfo];
    v50 = [v48 numberWithUnsignedInteger:{objc_msgSend(v49, "trafficColorOffsetsCount")}];
    v51 = [a1 hasReferenceFrame];
    if (v51)
    {
      v52 = [a1 referenceFrame];
      if (v52 >= 3)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v52];
      }

      else
      {
        v53 = off_279866248[v52];
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
    v160 = v104;
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
    v114 = v103;
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
    if (v51)
    {
    }

    if (v61)
    {
    }

    v12 = v86;
    v11 = v87;
    if (v64)
    {
    }

    if (v65)
    {
    }

    if (v66)
    {
    }

    if (v67)
    {
    }

    if (v82)
    {
    }

    if (v83)
    {
    }

    if (v84)
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

  v7 = [a1 composedRoute];
  if (v7)
  {
    v8 = [a1 _polylineCoordinateForRoute:v7];
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

        v12 = v11;
        goto LABEL_51;
      }

      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25813A000, v11, OS_SIGNPOST_EVENT, v3, "truncatePointDataForPrivacy_EarlyExit_GEOPolylineCoordinateInvalid", &unk_2581CCE6D, buf, 2u);
      }

      v12 = v11;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
LABEL_18:
        _os_signpost_emit_with_name_impl(&dword_25813A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "truncatePointDataForPrivacy", &unk_2581CCE6D, buf, 2u);
        goto LABEL_51;
      }

      goto LABEL_51;
    }

    v12 = [a1 routeInfo];
    if (!v12)
    {
      v15 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "truncatePointDataForPrivacy: missing routeInfo, creating on-demand", buf, 2u);
      }

      v12 = objc_alloc_init(MEMORY[0x277D0ED20]);
      [a1 setRouteInfo:v12];
    }

    spid = v3;
    if ([v7 usesRoutingPathPoints])
    {
      v16 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy truncating routingPathLeg from closest coordinate", buf, 2u);
      }

      v17 = [v7 routingPathDataFromStart:v8];
      v18 = [v17 mutableCopy];
      [v12 setRoutingPathLegs:v18];
    }

    [v12 clearCoordinates];
    v19 = [v7 pointCount];
    if (v19)
    {
      v20 = v19;
      v21 = [v7 pointCount];
      v22 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v52 = v20;
        v53 = 2048;
        v54 = (2 * v21);
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
        [v7 pointAt:v25];
        v27 = v26;
        [v12 addCoordinates:?];
        [v12 addCoordinates:v27];
        ++v25;
        --v24;
      }

      while (v24);
      v28 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = vcvts_n_f32_u64([v12 coordinatesCount], 1uLL);
        v30 = [v12 coordinatesCount];
        *buf = 134218240;
        v52 = v29;
        v53 = 2048;
        v54 = v30;
        _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_DEBUG, "truncatePointDataForPrivacy route info coordinates after truncation count %lu (%lu)", buf, 0x16u);
      }
    }

    [v12 clearTrafficColors];
    [v12 clearTrafficColorOffsets];
    v31 = [v7 truncatedTrafficFromRouteCoordinate:v8];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v32 = [v31 routeTrafficColors];
    v33 = [v32 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v46 + 1) + 8 * i);
          -[NSObject addTrafficColor:](v12, "addTrafficColor:", [v37 color]);
          [v37 offsetMeters];
          [v12 addTrafficColorOffset:v38];
        }

        v34 = [v32 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
  v12 = v14;
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
  v5 = [a1 lastLocation];
  v6 = [v5 coordinate];
  v7 = v6;
  if (!v5)
  {
    v15 = [a1 etaInfo];
    v16 = v15;
    if (v15 && [v15 hasLatitude] && objc_msgSend(v16, "hasLongitude"))
    {
      v5 = objc_alloc_init(MEMORY[0x277D0ED18]);
      v17 = objc_alloc_init(MEMORY[0x277D0EB58]);

      [v5 setCoordinate:v17];
      [v16 latitude];
      [v17 setLat:?];
      [v16 longitude];
      [v17 setLng:?];
      v7 = v17;
    }

    else
    {
      v5 = 0;
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

  if (!v6)
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
      v19 = [v5 hasMatchedCoordinate];
      v20 = @"NO";
      if (v19)
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
  v2 = [a1 composedRoute];
  if (v2)
  {
    v3 = [a1 _polylineCoordinateForRoute:v2];
    if (!GEOPolylineCoordinateIsInvalid())
    {
      v7 = [v2 endRouteCoordinate];
      v8 = [objc_alloc(MEMORY[0x277D0ECB0]) initWithRoute:v2 range:v3 desiredElevationModel:{v7, 0}];
      v9 = [v8 rawData];
      v10 = [v9 mutableCopy];
      v11 = [a1 routeInfo];
      [v11 setRoutingPathLegs:v10];

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
  v3 = [a3 legs];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = v3;
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
        v13 = [v11 destination];
        v14 = [v13 uniqueWaypointID];

        if (v14)
        {
          v15 = [v11 destination];
          v16 = [v15 uniqueWaypointID];

          v17 = [MEMORY[0x277CCAD78] _geo_uuidForData:v16];
          v18 = [v17 UUIDString];
        }

        else
        {
          v16 = [MEMORY[0x277CCAD78] UUID];
          v18 = [v16 UUIDString];
        }

        [v12 setUniqueIdentifier:v18];
        v19 = [v11 destination];
        v20 = [v11 destination];
        v21 = [v20 chargingInfo];

        if (v21)
        {
          v22 = objc_alloc_init(MEMORY[0x277D0ED08]);
          [v22 setMuid:{objc_msgSend(v21, "muid")}];
          v23 = [v21 name];
          v24 = [v23 copy];
          [v22 setName:v24];

          [v21 chargingTime];
          [v22 setChargingTime:?];
          [v12 setChargingStationInfo:v22];
          [v43 addObject:v22];
        }

        else
        {
          v25 = [v19 geoMapItem];

          if (!v25)
          {
            goto LABEL_14;
          }

          v26 = MEMORY[0x277D0EBC0];
          v27 = [v19 geoMapItem];
          v22 = [v26 mapItemStorageForGEOMapItem:v27 forUseType:2];

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
  if (v28 != [a1 waypointInfosCount])
  {
    goto LABEL_20;
  }

  v29 = [a1 waypointInfos];
  v30 = v6;
  v31 = v29;
  if (!(v30 | v31) || (v32 = v31, v33 = [v30 isEqual:v31], v32, v30, v32, (v33 & 1) != 0))
  {
    v34 = 0;
  }

  else
  {
LABEL_20:
    [a1 setWaypointInfos:v6];
    [a1 setCurrentWaypointIndex:0];
    [a1 _createPlaceholderETAInfosForWaypoints:v6];
    v35 = [a1 waypointInfos];
    v36 = [v35 lastObject];
    v37 = [v36 mapItemStorage];
    [a1 setDestinationInfo:v37];

    v6 = v44;
    v38 = [a1 routeInfo];
    [v38 setChargingStations:v43];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [a1 setUpdatedTimestamp:?];
    v34 = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_createPlaceholderETAInfosForWaypoints:()MSPExtras
{
  v4 = a3;
  [a1 clearEtaInfos];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__GEOSharedNavState_MSPExtras___createPlaceholderETAInfosForWaypoints___block_invoke;
  v5[3] = &unk_2798661A8;
  v5[4] = a1;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)updateRouteInfoFromComposedRoute:()MSPExtras
{
  v4 = a3;
  [a1 setComposedRoute:v4];
  v6 = objc_alloc_init(MEMORY[0x277D0ED20]);
  v5 = [v4 elevationModel];

  [v6 setElevationModel:v5];
  [a1 setRouteInfo:v6];
  [a1 truncatePointDataForPrivacy];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [a1 setUpdatedTimestamp:?];
}

- (uint64_t)updateFromTraffic:()MSPExtras
{
  v4 = a3;
  v5 = [a1 composedRoute];
  v6 = [v5 mutableData];
  v7 = [v6 traffic];
  v8 = v7;
  if (v4 | v7)
  {
    v9 = [v7 isEqual:v4];
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = [a1 composedRoute];
    v11 = [v10 mutableData];
    [v11 setTraffic:v4];

    [a1 truncatePointDataForPrivacy];
    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSinceReferenceDate];
    [a1 setUpdatedTimestamp:?];
  }

  return v9 ^ 1u;
}

- (id)composedRoute
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = [a1 composedRouteIfExists];
  if (!v2)
  {
    v3 = [a1 routeInfo];
    v4 = [v3 routingPathLegs];
    v5 = [v4 count];

    if (!v5)
    {
      if (![v3 coordinatesCount])
      {
LABEL_40:
        v2 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v13 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v60 = [v3 coordinatesCount];
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "Building composedRoute from routeInfo (%lu coordinates)", buf, 0xCu);
      }

      v14 = [v3 coordinatesCount] >> 1;
      v15 = objc_alloc_init(MEMORY[0x277D0ECD8]);
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v3 length:{"coordinates"), 16 * v14}];
      [v15 setUnpackedLatLngVertices:v16];

      [v15 setTrafficColors:objc_msgSend(v3 count:{"trafficColors"), objc_msgSend(v3, "trafficColorsCount")}];
      [v15 setTrafficColorOffsets:objc_msgSend(v3 count:{"trafficColorOffsets"), objc_msgSend(v3, "trafficColorOffsetsCount")}];
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
        v24 = [a1 destinationWaypointMapItem];
        v25 = [v23 initWithMapItem:v24];

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
      v2 = [objc_alloc(MEMORY[0x277D0EAE8]) initWithGeoWaypointRoute:v51 initializerData:v27];

LABEL_47:
      [a1 setComposedRoute:v2];
      goto LABEL_48;
    }

    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v60 = [v3 routingPathLegsCount];
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "Building composedRoute from routeInfo (%lu routingPathLegs)", buf, 0xCu);
    }

    v7 = [v3 trafficColorsCount];
    if (v7 != [v3 trafficColorOffsetsCount])
    {
      v8 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 trafficColorsCount];
        v10 = [v3 trafficColorOffsetsCount];
        *buf = 67109376;
        *v60 = v9;
        *&v60[4] = 1024;
        *&v60[6] = v10;
        _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "SharedNavRouteInfo traffic colors count (%d) is not equal to traffic color offsets count (%d). Attempting to continue anyway", buf, 0xEu);
      }
    }

    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    if ([a1 waypointInfosCount])
    {
      v12 = [a1 waypointInfosCount];
    }

    else
    {
      v12 = 1;
    }

    v15 = [v11 initWithCapacity:v12];
    if ([a1 waypointInfosCount])
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v28 = [a1 waypointInfos];
      v29 = [v28 copy];

      v30 = [v29 countByEnumeratingWithState:&v54 objects:v64 count:16];
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
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v54 + 1) + 8 * i);
            v35 = objc_alloc(MEMORY[0x277D0EAF0]);
            v36 = [v34 mapItemStorage];
            v37 = [v35 initWithMapItem:v36];

            [v15 addObject:v37];
          }

          v31 = [v29 countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v31);
      }
    }

    else
    {
      if (![a1 hasDestinationInfo])
      {
        goto LABEL_29;
      }

      v38 = objc_alloc(MEMORY[0x277D0EAF0]);
      v29 = [a1 destinationWaypointMapItem];
      v39 = [v38 initWithMapItem:v29];
      [v15 addObject:v39];
    }

LABEL_29:
    v40 = [v3 routingPathLegsCount];
    if (v40 != [v15 count] && objc_msgSend(v15, "count") > v40)
    {
      v41 = [v15 count] - v40;
      v42 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v15 count];
        *buf = 134218496;
        *v60 = v40;
        *&v60[8] = 2048;
        v61 = v43;
        v62 = 2048;
        v63 = v41;
        _os_log_impl(&dword_25813A000, v42, OS_LOG_TYPE_DEFAULT, "Found %lu routingPathLegs for %lu waypoints, dropping %lu leading waypoints", buf, 0x20u);
      }

      [v15 removeObjectsInRange:{0, v41}];
    }

    if (![v15 count] || !v40 || v40 > objc_msgSend(v15, "count"))
    {
      v44 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [v15 count];
        *buf = 134218240;
        *v60 = v40;
        *&v60[8] = 2048;
        v61 = v45;
        _os_log_impl(&dword_25813A000, v44, OS_LOG_TYPE_ERROR, "Cannot create composedRoute from %lu routingPathLegs and %lu waypoints", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v17 = objc_opt_new();
    [v17 setTransportType:{objc_msgSend(a1, "transportType")}];
    v46 = objc_alloc(MEMORY[0x277D0ECB0]);
    v47 = [v3 routingPathLegs];
    v48 = [v46 initWithRawData:v47 elevationModel:{objc_msgSend(v3, "elevationModel")}];
    [v17 setRawRouteGeometry:v48];

    [v17 setDestinations:v15];
    [v17 setIsOriginCurrentLocation:1];
    [v17 setSource:4];
    v49 = [v3 trafficColorsCount];
    if (v49 >= [v3 trafficColorOffsetsCount])
    {
      v50 = [v3 trafficColorOffsetsCount];
    }

    else
    {
      v50 = [v3 trafficColorsCount];
    }

    [v17 setTrafficColors:objc_msgSend(v3 offsets:"trafficColors") count:{objc_msgSend(v3, "trafficColorOffsets"), v50}];
    v2 = [v17 buildRoute];
    goto LABEL_47;
  }

LABEL_49:
  v52 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)setComposedRouteFromState:()MSPExtras
{
  v4 = [a3 composedRouteIfExists];
  [a1 setComposedRoute:v4];
}

- (id)equalityTest
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__GEOSharedNavState_MSPExtras__equalityTest__block_invoke;
  v3[3] = &unk_2798661D0;
  v3[4] = a1;
  v1 = MEMORY[0x259C7AD60](v3);

  return v1;
}

- (uint64_t)stripArrivedOrClosedTrip
{
  v10 = *MEMORY[0x277D85DE8];
  if (![a1 arrived] || objc_msgSend(a1, "hasClosed") && (objc_msgSend(a1, "closed") & 1) != 0 || (result = objc_msgSend(a1, "isNavigatingToIntermediateStop"), (result & 1) == 0))
  {
    if ([a1 closed])
    {
      v3 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [a1 groupIdentifier];
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "Stripping route and ETAs from trip %@ (closed)", &v8, 0xCu);
      }

      v5 = [a1 waypointInfos];
      [a1 _createPlaceholderETAInfosForWaypoints:v5];
    }

    else
    {
      if (![a1 arrived])
      {
        goto LABEL_13;
      }

      v5 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [a1 groupIdentifier];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "Stripping route from trip %@ (arrived)", &v8, 0xCu);
      }
    }

LABEL_13:
    [a1 setRouteInfo:0];
    result = [a1 setComposedRoute:0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)etaInfo
{
  if ([a1 hasCurrentWaypointIndex] && (v2 = objc_msgSend(a1, "currentWaypointIndex"), objc_msgSend(a1, "etaInfosCount") > v2))
  {
    v3 = [a1 etaInfos];
    v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(a1, "currentWaypointIndex")}];
  }

  else
  {
    v3 = [a1 etaInfos];
    v4 = [v3 firstObject];
  }

  v5 = v4;

  return v5;
}

- (id)finalETAInfo
{
  v1 = [a1 etaInfos];
  v2 = [v1 lastObject];

  return v2;
}

- (uint64_t)numberOfIntermediateStopsRemaining
{
  if ([a1 waypointInfosCount])
  {
    v2 = [a1 waypointInfosCount];
    if ([a1 hasCurrentWaypointIndex])
    {
      v3 = ~[a1 currentWaypointIndex];
    }

    else
    {
      v3 = -1;
    }

    return v3 + v2;
  }

  else
  {
    v4 = [a1 routeInfo];
    v5 = [v4 chargingStationsCount];

    return v5;
  }
}

- (uint64_t)isNavigatingToIntermediateStop
{
  result = [a1 waypointInfosCount];
  if (result)
  {
    result = [a1 hasCurrentWaypointIndex];
    if (result)
    {
      v3 = [a1 currentWaypointIndex];
      return [a1 waypointInfosCount] - 1 > v3;
    }
  }

  return result;
}

- (id)nextWaypointInfo
{
  if ([a1 hasCurrentWaypointIndex] && (v2 = objc_msgSend(a1, "currentWaypointIndex"), objc_msgSend(a1, "waypointInfosCount") > v2))
  {
    v3 = [a1 waypointInfos];
    v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(a1, "currentWaypointIndex")}];
  }

  else
  {
    v4 = [a1 destinationWaypointInfo];
  }

  return v4;
}

- (uint64_t)stripForSendingUpdatedWaypoints
{
  if ([a1 hasCurrentWaypointIndex])
  {
    v2 = [a1 waypointInfosCount];
    if (v2 > [a1 currentWaypointIndex])
    {
      v3 = [a1 currentWaypointIndex];
      v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v3}];
      v5 = [a1 waypointInfos];
      [v5 enumerateObjectsAtIndexes:v4 options:0 usingBlock:&__block_literal_global_3];
    }
  }

  [a1 setLastLocation:0];

  return [a1 setRouteInfo:0];
}

- (uint64_t)stripForSendingUpdatedRoute
{
  [a1 setSenderInfo:0];
  [a1 setDestinationInfo:0];
  [a1 setLastLocation:0];
  [a1 truncatePointDataForPrivacy];

  return [a1 clearWaypointInfos];
}

- (uint64_t)stripForSendingUpdatedETA
{
  [a1 setSenderInfo:0];
  [a1 setRouteInfo:0];
  [a1 setDestinationInfo:0];

  return [a1 clearWaypointInfos];
}

- (uint64_t)stripForSendingUpdatedTraffic
{
  v2 = [a1 routeInfo];
  [v2 clearCoordinates];

  v3 = [a1 routeInfo];
  [v3 clearRoutingPathLegs];

  [a1 setLastLocation:0];
  [a1 setSenderInfo:0];
  [a1 setDestinationInfo:0];

  return [a1 clearWaypointInfos];
}

- (uint64_t)stripForSendingArrival
{
  [a1 setSenderInfo:0];
  [a1 setRouteInfo:0];
  result = [a1 waypointInfosCount];
  if (result)
  {
    result = [a1 waypointInfosCount];
    if (result != 1)
    {
      v3 = 0;
      do
      {
        result = [a1 currentWaypointIndex];
        if (v3 == result)
        {
          break;
        }

        v4 = [a1 waypointInfos];
        v5 = [v4 objectAtIndex:v3];

        [v5 setMapItemStorage:0];
        [v5 setChargingStationInfo:0];

        ++v3;
        result = [a1 waypointInfosCount];
      }

      while (v3 < result - 1);
    }
  }

  return result;
}

- (uint64_t)stripForSendingResuming
{
  [a1 setSenderInfo:0];

  return [a1 setRouteInfo:0];
}

- (uint64_t)stripForSendingStoppedSharing
{
  [a1 setRouteInfo:0];
  [a1 setDestinationInfo:0];
  [a1 setLastLocation:0];
  [a1 clearWaypointInfos];

  return [a1 clearEtaInfos];
}

@end