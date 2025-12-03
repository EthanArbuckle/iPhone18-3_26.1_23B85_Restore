@interface _MNArrivalUpdaterState
- (BOOL)_checkForApproachingWaypoint;
- (BOOL)_checkForArrival;
- (BOOL)_checkForEndOfDrivingSegment;
- (BOOL)_checkForPreArrival;
- (BOOL)_updateForApproachingWaypoint;
- (BOOL)_updateForArrival;
- (BOOL)_updateForEndOfDrivingSegment;
- (BOOL)_updateForPreArrival;
- (BOOL)_updateForSearchingForParking;
- (GEOComposedRoute)route;
- (GEOComposedRouteLeg)targetLeg;
- (MNArrivalUpdater)arrivalUpdater;
- (MNLocation)location;
- (double)_distanceToEndOfLeg;
- (int64_t)state;
- (void)_updateForEVMonitoring;
- (void)forceDepartureWithReason:(unint64_t)reason;
- (void)sendArrivalInfoFromPreviousState:(id)state;
- (void)updateForEVChargingState:(BOOL)state;
@end

@implementation _MNArrivalUpdaterState

- (BOOL)_updateForArrival
{
  _checkForArrival = [(_MNArrivalUpdaterState *)self _checkForArrival];
  if (_checkForArrival)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v5 = objc_alloc_init(_MNArrivalUpdaterState_Arrived);
    [WeakRetained changeState:v5];
  }

  return _checkForArrival;
}

- (BOOL)_checkForArrival
{
  v83 = *MEMORY[0x1E69E9840];
  location = [(_MNArrivalUpdaterState *)self location];
  if (!location)
  {
    v15 = 0;
    goto LABEL_70;
  }

  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  v5 = targetLeg;
  if (!targetLeg)
  {
    arrivalParameters = GEOFindOrCreateLog();
    if (os_log_type_enabled(arrivalParameters, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, arrivalParameters, OS_LOG_TYPE_ERROR, "Target leg is nil.", buf, 2u);
    }

LABEL_17:
    v15 = 0;
    goto LABEL_69;
  }

  arrivalParameters = [targetLeg arrivalParameters];
  if (!arrivalParameters)
  {
    routeMatch = GEOFindOrCreateLog();
    if (os_log_type_enabled(routeMatch, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, routeMatch, OS_LOG_TYPE_ERROR, "No arrival parameters on leg.", buf, 2u);
    }

    v15 = 0;
    goto LABEL_68;
  }

  [(_MNArrivalUpdaterState *)self _distanceToEndOfLeg];
  if (v7 < 0.0)
  {
    goto LABEL_17;
  }

  v8 = v7;
  if ([arrivalParameters hasArrivalParametersEndOfRouteDistanceThreshold])
  {
    if (v8 > [arrivalParameters arrivalParametersEndOfRouteDistanceThreshold])
    {
      goto LABEL_17;
    }
  }

  routeMatch = [location routeMatch];
  state = [location state];
  if (state == 1 && [arrivalParameters endOfRouteDistanceThreshold])
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v80 = [v5 legIndex];
      *&v80[4] = 2048;
      *&v80[6] = v8;
      v81 = 1024;
      endOfRouteDistanceThreshold = [arrivalParameters endOfRouteDistanceThreshold];
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "Checking arrival via distance to end of leg[%d] (%0.1fm). Threshold: %um", buf, 0x18u);
    }

    if (v8 < [arrivalParameters endOfRouteDistanceThreshold])
    {
      arrivalMapRegions = GEOFindOrCreateLog();
      if (os_log_type_enabled(arrivalMapRegions, OS_LOG_TYPE_DEFAULT))
      {
        legIndex = [v5 legIndex];
        endOfRouteDistanceThreshold2 = [arrivalParameters endOfRouteDistanceThreshold];
        *buf = 134218496;
        *v80 = v8;
        *&v80[8] = 1024;
        *&v80[10] = legIndex;
        v81 = 1024;
        endOfRouteDistanceThreshold = endOfRouteDistanceThreshold2;
        _os_log_impl(&dword_1D311E000, arrivalMapRegions, OS_LOG_TYPE_DEFAULT, "Arrival triggered by distance (%0.1fm) to end of leg[%d]. Threshold: %um", buf, 0x18u);
      }

LABEL_66:
      v15 = 1;
      goto LABEL_67;
    }
  }

  v66 = routeMatch;
  v67 = v5;
  [location coordinate];
  v17 = v16;
  v19 = v18;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = arrivalParameters;
  arrivalMapRegions = [arrivalParameters arrivalMapRegions];
  v20 = [arrivalMapRegions countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (!v20)
  {
    v22 = 0;
    goto LABEL_40;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v74;
  v68 = location;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v74 != v23)
      {
        objc_enumerationMutation(arrivalMapRegions);
      }

      v25 = *(*(&v73 + 1) + 8 * i);
      arrivalRegionAction = [v25 arrivalRegionAction];
      if (state != 1)
      {
        if (arrivalRegionAction != 3)
        {
          continue;
        }

LABEL_30:
        arrivalRegion = [v25 arrivalRegion];
        v28 = [arrivalRegion containsCoordinate:{v17, v19}];

        if (v28)
        {
          roadMatch = [location roadMatch];

          arrivalRegion2 = [v25 arrivalRegion];
          if (roadMatch)
          {
            v31 = location;
            v32 = arrivalMapRegions;
            roadMatch2 = [v31 roadMatch];
            [roadMatch2 coordinateOnRoad];
            v35 = v34;
            v37 = v36;
            roadMatch3 = [v31 roadMatch];
            [roadMatch3 roadWidth];
            LODWORD(v31) = [arrivalRegion2 containsCoordinate:v35 radius:{v37, v39}];

            if (!v31)
            {
              v22 = 1;
              arrivalMapRegions = v32;
              location = v68;
              continue;
            }

            v47 = GEOFindOrCreateLog();
            arrivalMapRegions = v32;
            v5 = v67;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              legIndex2 = [v67 legIndex];
              *buf = 67109379;
              *v80 = legIndex2;
              *&v80[4] = 2113;
              *&v80[6] = v25;
              _os_log_impl(&dword_1D311E000, v47, OS_LOG_TYPE_DEFAULT, "Arrival triggered by user's current road entering arrival region of leg[%d]: %{private}@", buf, 0x12u);
            }

            arrivalParameters = v65;
            routeMatch = v66;
            location = v68;
LABEL_65:

            goto LABEL_66;
          }

          rawLocation = [location rawLocation];
          [rawLocation coordinate];
          v42 = v41;
          v44 = v43;
          [location horizontalAccuracy];
          v46 = [arrivalRegion2 containsCoordinate:v42 radius:{v44, v45}];

          if (v46)
          {
            v47 = GEOFindOrCreateLog();
            v5 = v67;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              legIndex3 = [v67 legIndex];
              *buf = 67109379;
              *v80 = legIndex3;
              *&v80[4] = 2113;
              *&v80[6] = v25;
              _os_log_impl(&dword_1D311E000, v47, OS_LOG_TYPE_DEFAULT, "Arrival triggered by user location entering arrival region of leg[%d]: %{private}@", buf, 0x12u);
            }

            arrivalParameters = v65;
            routeMatch = v66;
            goto LABEL_65;
          }
        }

        v22 = 1;
        continue;
      }

      if (arrivalRegionAction == 2)
      {
        goto LABEL_30;
      }
    }

    v21 = [arrivalMapRegions countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_40:

  routeMatch = v66;
  if (state == 1 && v22 & 1 | (([v66 isOnParkingLotRoad]& 1) == 0))
  {
    v15 = 0;
    v5 = v67;
    arrivalParameters = v65;
    goto LABEL_68;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  arrivalParameters = v65;
  arrivalMapRegions = [v65 arrivalPoints];
  v49 = [arrivalMapRegions countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v70;
    while (2)
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v70 != v51)
        {
          objc_enumerationMutation(arrivalMapRegions);
        }

        v53 = *(*(&v69 + 1) + 8 * j);
        point = [v53 point];
        [point coordinate];

        GEOCalculateDistance();
        v56 = v55;
        v57 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          legIndex4 = [v67 legIndex];
          radius = [v53 radius];
          *buf = 67109632;
          *v80 = legIndex4;
          *&v80[4] = 2048;
          *&v80[6] = v56;
          v81 = 1024;
          endOfRouteDistanceThreshold = radius;
          _os_log_impl(&dword_1D311E000, v57, OS_LOG_TYPE_INFO, "Checking arrival via arrival point of leg[%d]. Distance: %0.1fm, Radius: %um", buf, 0x18u);
        }

        if (v56 <= [v53 radius])
        {
          v61 = GEOFindOrCreateLog();
          v5 = v67;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            legIndex5 = [v67 legIndex];
            *buf = 67109379;
            *v80 = legIndex5;
            *&v80[4] = 2113;
            *&v80[6] = v53;
            _os_log_impl(&dword_1D311E000, v61, OS_LOG_TYPE_DEFAULT, "Arrival triggered by user location within arrival point of leg[%d]: %{private}@", buf, 0x12u);
          }

          v15 = 1;
          goto LABEL_61;
        }
      }

      v50 = [arrivalMapRegions countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }

    v15 = 0;
    v5 = v67;
LABEL_61:
    arrivalParameters = v65;
    routeMatch = v66;
  }

  else
  {
    v15 = 0;
    v5 = v67;
  }

LABEL_67:

LABEL_68:
LABEL_69:

LABEL_70:
  v63 = *MEMORY[0x1E69E9840];
  return v15;
}

- (MNLocation)location
{
  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  location = [navigationSessionState location];

  return location;
}

- (GEOComposedRouteLeg)targetLeg
{
  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  targetLeg = [navigationSessionState targetLeg];

  return targetLeg;
}

- (double)_distanceToEndOfLeg
{
  location = [(_MNArrivalUpdaterState *)self location];
  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  endPointIndex = [targetLeg endPointIndex];
  routeMatch = [location routeMatch];
  [routeMatch routeCoordinate];
  v7 = GEOPolylineCoordinateCompare();

  if (v7 == -1)
  {
    v12 = -1.0;
  }

  else
  {
    route = [(_MNArrivalUpdaterState *)self route];
    routeMatch2 = [location routeMatch];
    [route distanceBetweenRouteCoordinate:objc_msgSend(routeMatch2 andRouteCoordinate:{"routeCoordinate"), endPointIndex}];
    v11 = v10;

    v12 = fabs(v11);
  }

  return v12;
}

- (BOOL)_updateForPreArrival
{
  _checkForPreArrival = [(_MNArrivalUpdaterState *)self _checkForPreArrival];
  if (_checkForPreArrival)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v5 = objc_alloc_init(_MNArrivalUpdaterState_PreArrival);
    [WeakRetained changeState:v5];
  }

  return _checkForPreArrival;
}

- (BOOL)_checkForPreArrival
{
  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  targetLeg = [navigationSessionState targetLeg];
  arrivalParameters = [targetLeg arrivalParameters];

  location = [(_MNArrivalUpdaterState *)self location];
  LOBYTE(details) = [arrivalParameters containsLocation:location arrivalRegionType:5];

  return details;
}

- (BOOL)_updateForEndOfDrivingSegment
{
  _checkForEndOfDrivingSegment = [(_MNArrivalUpdaterState *)self _checkForEndOfDrivingSegment];
  if (_checkForEndOfDrivingSegment)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Reached end of driving segment with upcoming walking segment. Triggering parked vehicle state.", v8, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v6 = objc_alloc_init(_MNArrivalUpdaterState_EndOfDrivingSegment);
    [WeakRetained changeState:v6];
  }

  return _checkForEndOfDrivingSegment;
}

- (BOOL)_checkForEndOfDrivingSegment
{
  route = [(_MNArrivalUpdaterState *)self route];
  transportType = [route transportType];

  if (transportType)
  {
    return 0;
  }

  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  targetLeg = [navigationSessionState targetLeg];
  arrivalParameters = [targetLeg arrivalParameters];

  location = [(_MNArrivalUpdaterState *)self location];
  LOBYTE(details) = [arrivalParameters containsLocation:location arrivalRegionType:8];

  return details;
}

- (BOOL)_updateForApproachingWaypoint
{
  _checkForApproachingWaypoint = [(_MNArrivalUpdaterState *)self _checkForApproachingWaypoint];
  if ([(_MNArrivalUpdaterState *)self state]!= 2 && _checkForApproachingWaypoint)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v5 = objc_alloc_init(_MNArrivalUpdaterState_ApproachingWaypoint);
    [WeakRetained changeState:v5];
  }

  return _checkForApproachingWaypoint;
}

- (BOOL)_checkForApproachingWaypoint
{
  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  targetLeg = [navigationSessionState targetLeg];
  arrivalParameters = [targetLeg arrivalParameters];

  location = [(_MNArrivalUpdaterState *)self location];
  LOBYTE(details) = [arrivalParameters containsLocation:location arrivalRegionType:7];

  return details;
}

- (void)_updateForEVMonitoring
{
  details = [(_MNArrivalUpdaterState *)self details];
  evChargingStateMonitor = [details evChargingStateMonitor];

  if (!evChargingStateMonitor)
  {
    route = [(_MNArrivalUpdaterState *)self route];
    isEVRoute = [route isEVRoute];

    if (isEVRoute)
    {
      location = [(_MNArrivalUpdaterState *)self location];
      state = [location state];

      if (state == 1)
      {
        [(_MNArrivalUpdaterState *)self _distanceToEndOfLeg];
        v10 = v9;
        GEOConfigGetDouble();
        if (v10 <= v11)
        {
          arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
          [arrivalUpdater startMonitoringForEV];
        }
      }
    }
  }
}

- (GEOComposedRoute)route
{
  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];

  return route;
}

- (MNArrivalUpdater)arrivalUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);

  return WeakRetained;
}

- (BOOL)_updateForSearchingForParking
{
  v36 = *MEMORY[0x1E69E9840];
  route = [(_MNArrivalUpdaterState *)self route];
  transportType = [route transportType];

  if (transportType)
  {
    goto LABEL_24;
  }

  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  isOnLastLeg = [navigationSessionState isOnLastLeg];

  if (!isOnLastLeg)
  {
    goto LABEL_24;
  }

  details2 = [(_MNArrivalUpdaterState *)self details];
  isInParkingDetectionRegion = [details2 isInParkingDetectionRegion];

  if (isInParkingDetectionRegion)
  {
LABEL_20:
    arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v29 = objc_alloc_init(_MNArrivalUpdaterState_SearchingForParkingAfterArrival);
    [arrivalUpdater changeState:v29];

    result = 1;
    goto LABEL_21;
  }

  location = [(_MNArrivalUpdaterState *)self location];
  if ([location state] != 1)
  {
LABEL_23:

LABEL_24:
    result = 0;
    goto LABEL_21;
  }

  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  routeMatch = [location routeMatch];
  legIndex = [routeMatch legIndex];
  legIndex2 = [targetLeg legIndex];

  if (legIndex != legIndex2)
  {

    goto LABEL_23;
  }

  details3 = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState2 = [details3 navigationSessionState];
  targetLeg2 = [navigationSessionState2 targetLeg];
  arrivalParameters = [targetLeg2 arrivalParameters];

  v19 = objc_opt_new();
  [(_MNArrivalUpdaterState *)self parkingDetectionExcludeRadius];
  [v19 setIncludeDistancePadding:?];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [&unk_1F4EE2BF0 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v32;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(&unk_1F4EE2BF0);
        }

        v25 = [arrivalParameters regionContainmentTypeForLocation:location arrivalRegionType:objc_msgSend(*(*(&v31 + 1) + 8 * i) parameters:{"integerValue"), v19}];
        v22 |= v25 != 2;
        if (!v25)
        {
          v26 = 0;
          goto LABEL_18;
        }
      }

      v21 = [&unk_1F4EE2BF0 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = 1;
LABEL_18:

  result = 0;
  if ((v22 & 1) != 0 && v26)
  {
    goto LABEL_20;
  }

LABEL_21:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendArrivalInfoFromPreviousState:(id)state
{
  stateCopy = state;
  v11 = objc_opt_new();
  [v11 setArrivalState:{-[_MNArrivalUpdaterState state](self, "state")}];
  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  [v11 setLegIndex:{objc_msgSend(targetLeg, "legIndex")}];
  destination = [targetLeg destination];
  [v11 setDestination:destination];

  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  state = [stateCopy state];

  [safeDelegate arrivalUpdater:arrivalUpdater2 didUpdateArrivalInfo:v11 previousState:state];
}

- (void)updateForEVChargingState:(BOOL)state
{
  if (state)
  {
    arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v3 = objc_alloc_init(_MNArrivalUpdaterState_Arrived);
    [arrivalUpdater changeState:v3];
  }
}

- (void)forceDepartureWithReason:(unint64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
  v4 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:reason];
  [WeakRetained changeState:v4];
}

- (int64_t)state
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Must be implemented by subclasses.", v3, 2u);
  }

  return -1;
}

@end