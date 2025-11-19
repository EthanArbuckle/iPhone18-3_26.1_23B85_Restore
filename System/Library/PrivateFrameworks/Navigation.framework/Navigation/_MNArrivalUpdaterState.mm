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
- (void)forceDepartureWithReason:(unint64_t)a3;
- (void)sendArrivalInfoFromPreviousState:(id)a3;
- (void)updateForEVChargingState:(BOOL)a3;
@end

@implementation _MNArrivalUpdaterState

- (BOOL)_updateForArrival
{
  v3 = [(_MNArrivalUpdaterState *)self _checkForArrival];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v5 = objc_alloc_init(_MNArrivalUpdaterState_Arrived);
    [WeakRetained changeState:v5];
  }

  return v3;
}

- (BOOL)_checkForArrival
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = [(_MNArrivalUpdaterState *)self location];
  if (!v3)
  {
    v15 = 0;
    goto LABEL_70;
  }

  v4 = [(_MNArrivalUpdaterState *)self targetLeg];
  v5 = v4;
  if (!v4)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Target leg is nil.", buf, 2u);
    }

LABEL_17:
    v15 = 0;
    goto LABEL_69;
  }

  v6 = [v4 arrivalParameters];
  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "No arrival parameters on leg.", buf, 2u);
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
  if ([v6 hasArrivalParametersEndOfRouteDistanceThreshold])
  {
    if (v8 > [v6 arrivalParametersEndOfRouteDistanceThreshold])
    {
      goto LABEL_17;
    }
  }

  v9 = [v3 routeMatch];
  v10 = [v3 state];
  if (v10 == 1 && [v6 endOfRouteDistanceThreshold])
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v80 = [v5 legIndex];
      *&v80[4] = 2048;
      *&v80[6] = v8;
      v81 = 1024;
      v82 = [v6 endOfRouteDistanceThreshold];
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "Checking arrival via distance to end of leg[%d] (%0.1fm). Threshold: %um", buf, 0x18u);
    }

    if (v8 < [v6 endOfRouteDistanceThreshold])
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 legIndex];
        v14 = [v6 endOfRouteDistanceThreshold];
        *buf = 134218496;
        *v80 = v8;
        *&v80[8] = 1024;
        *&v80[10] = v13;
        v81 = 1024;
        v82 = v14;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "Arrival triggered by distance (%0.1fm) to end of leg[%d]. Threshold: %um", buf, 0x18u);
      }

LABEL_66:
      v15 = 1;
      goto LABEL_67;
    }
  }

  v66 = v9;
  v67 = v5;
  [v3 coordinate];
  v17 = v16;
  v19 = v18;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = v6;
  v12 = [v6 arrivalMapRegions];
  v20 = [v12 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (!v20)
  {
    v22 = 0;
    goto LABEL_40;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v74;
  v68 = v3;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v74 != v23)
      {
        objc_enumerationMutation(v12);
      }

      v25 = *(*(&v73 + 1) + 8 * i);
      v26 = [v25 arrivalRegionAction];
      if (v10 != 1)
      {
        if (v26 != 3)
        {
          continue;
        }

LABEL_30:
        v27 = [v25 arrivalRegion];
        v28 = [v27 containsCoordinate:{v17, v19}];

        if (v28)
        {
          v29 = [v3 roadMatch];

          v30 = [v25 arrivalRegion];
          if (v29)
          {
            v31 = v3;
            v32 = v12;
            v33 = [v31 roadMatch];
            [v33 coordinateOnRoad];
            v35 = v34;
            v37 = v36;
            v38 = [v31 roadMatch];
            [v38 roadWidth];
            LODWORD(v31) = [v30 containsCoordinate:v35 radius:{v37, v39}];

            if (!v31)
            {
              v22 = 1;
              v12 = v32;
              v3 = v68;
              continue;
            }

            v47 = GEOFindOrCreateLog();
            v12 = v32;
            v5 = v67;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = [v67 legIndex];
              *buf = 67109379;
              *v80 = v48;
              *&v80[4] = 2113;
              *&v80[6] = v25;
              _os_log_impl(&dword_1D311E000, v47, OS_LOG_TYPE_DEFAULT, "Arrival triggered by user's current road entering arrival region of leg[%d]: %{private}@", buf, 0x12u);
            }

            v6 = v65;
            v9 = v66;
            v3 = v68;
LABEL_65:

            goto LABEL_66;
          }

          v40 = [v3 rawLocation];
          [v40 coordinate];
          v42 = v41;
          v44 = v43;
          [v3 horizontalAccuracy];
          v46 = [v30 containsCoordinate:v42 radius:{v44, v45}];

          if (v46)
          {
            v47 = GEOFindOrCreateLog();
            v5 = v67;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [v67 legIndex];
              *buf = 67109379;
              *v80 = v60;
              *&v80[4] = 2113;
              *&v80[6] = v25;
              _os_log_impl(&dword_1D311E000, v47, OS_LOG_TYPE_DEFAULT, "Arrival triggered by user location entering arrival region of leg[%d]: %{private}@", buf, 0x12u);
            }

            v6 = v65;
            v9 = v66;
            goto LABEL_65;
          }
        }

        v22 = 1;
        continue;
      }

      if (v26 == 2)
      {
        goto LABEL_30;
      }
    }

    v21 = [v12 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v9 = v66;
  if (v10 == 1 && v22 & 1 | (([v66 isOnParkingLotRoad]& 1) == 0))
  {
    v15 = 0;
    v5 = v67;
    v6 = v65;
    goto LABEL_68;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = v65;
  v12 = [v65 arrivalPoints];
  v49 = [v12 countByEnumeratingWithState:&v69 objects:v77 count:16];
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
          objc_enumerationMutation(v12);
        }

        v53 = *(*(&v69 + 1) + 8 * j);
        v54 = [v53 point];
        [v54 coordinate];

        GEOCalculateDistance();
        v56 = v55;
        v57 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [v67 legIndex];
          v59 = [v53 radius];
          *buf = 67109632;
          *v80 = v58;
          *&v80[4] = 2048;
          *&v80[6] = v56;
          v81 = 1024;
          v82 = v59;
          _os_log_impl(&dword_1D311E000, v57, OS_LOG_TYPE_INFO, "Checking arrival via arrival point of leg[%d]. Distance: %0.1fm, Radius: %um", buf, 0x18u);
        }

        if (v56 <= [v53 radius])
        {
          v61 = GEOFindOrCreateLog();
          v5 = v67;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [v67 legIndex];
            *buf = 67109379;
            *v80 = v62;
            *&v80[4] = 2113;
            *&v80[6] = v53;
            _os_log_impl(&dword_1D311E000, v61, OS_LOG_TYPE_DEFAULT, "Arrival triggered by user location within arrival point of leg[%d]: %{private}@", buf, 0x12u);
          }

          v15 = 1;
          goto LABEL_61;
        }
      }

      v50 = [v12 countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }

    v15 = 0;
    v5 = v67;
LABEL_61:
    v6 = v65;
    v9 = v66;
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
  v2 = [(_MNArrivalUpdaterState *)self details];
  v3 = [v2 navigationSessionState];
  v4 = [v3 location];

  return v4;
}

- (GEOComposedRouteLeg)targetLeg
{
  v2 = [(_MNArrivalUpdaterState *)self details];
  v3 = [v2 navigationSessionState];
  v4 = [v3 targetLeg];

  return v4;
}

- (double)_distanceToEndOfLeg
{
  v3 = [(_MNArrivalUpdaterState *)self location];
  v4 = [(_MNArrivalUpdaterState *)self targetLeg];
  v5 = [v4 endPointIndex];
  v6 = [v3 routeMatch];
  [v6 routeCoordinate];
  v7 = GEOPolylineCoordinateCompare();

  if (v7 == -1)
  {
    v12 = -1.0;
  }

  else
  {
    v8 = [(_MNArrivalUpdaterState *)self route];
    v9 = [v3 routeMatch];
    [v8 distanceBetweenRouteCoordinate:objc_msgSend(v9 andRouteCoordinate:{"routeCoordinate"), v5}];
    v11 = v10;

    v12 = fabs(v11);
  }

  return v12;
}

- (BOOL)_updateForPreArrival
{
  v3 = [(_MNArrivalUpdaterState *)self _checkForPreArrival];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v5 = objc_alloc_init(_MNArrivalUpdaterState_PreArrival);
    [WeakRetained changeState:v5];
  }

  return v3;
}

- (BOOL)_checkForPreArrival
{
  v3 = [(_MNArrivalUpdaterState *)self details];
  v4 = [v3 navigationSessionState];
  v5 = [v4 targetLeg];
  v6 = [v5 arrivalParameters];

  v7 = [(_MNArrivalUpdaterState *)self location];
  LOBYTE(v3) = [v6 containsLocation:v7 arrivalRegionType:5];

  return v3;
}

- (BOOL)_updateForEndOfDrivingSegment
{
  v3 = [(_MNArrivalUpdaterState *)self _checkForEndOfDrivingSegment];
  if (v3)
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

  return v3;
}

- (BOOL)_checkForEndOfDrivingSegment
{
  v3 = [(_MNArrivalUpdaterState *)self route];
  v4 = [v3 transportType];

  if (v4)
  {
    return 0;
  }

  v5 = [(_MNArrivalUpdaterState *)self details];
  v6 = [v5 navigationSessionState];
  v7 = [v6 targetLeg];
  v8 = [v7 arrivalParameters];

  v9 = [(_MNArrivalUpdaterState *)self location];
  LOBYTE(v5) = [v8 containsLocation:v9 arrivalRegionType:8];

  return v5;
}

- (BOOL)_updateForApproachingWaypoint
{
  v3 = [(_MNArrivalUpdaterState *)self _checkForApproachingWaypoint];
  if ([(_MNArrivalUpdaterState *)self state]!= 2 && v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
    v5 = objc_alloc_init(_MNArrivalUpdaterState_ApproachingWaypoint);
    [WeakRetained changeState:v5];
  }

  return v3;
}

- (BOOL)_checkForApproachingWaypoint
{
  v3 = [(_MNArrivalUpdaterState *)self details];
  v4 = [v3 navigationSessionState];
  v5 = [v4 targetLeg];
  v6 = [v5 arrivalParameters];

  v7 = [(_MNArrivalUpdaterState *)self location];
  LOBYTE(v3) = [v6 containsLocation:v7 arrivalRegionType:7];

  return v3;
}

- (void)_updateForEVMonitoring
{
  v3 = [(_MNArrivalUpdaterState *)self details];
  v4 = [v3 evChargingStateMonitor];

  if (!v4)
  {
    v5 = [(_MNArrivalUpdaterState *)self route];
    v6 = [v5 isEVRoute];

    if (v6)
    {
      v7 = [(_MNArrivalUpdaterState *)self location];
      v8 = [v7 state];

      if (v8 == 1)
      {
        [(_MNArrivalUpdaterState *)self _distanceToEndOfLeg];
        v10 = v9;
        GEOConfigGetDouble();
        if (v10 <= v11)
        {
          v12 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
          [v12 startMonitoringForEV];
        }
      }
    }
  }
}

- (GEOComposedRoute)route
{
  v2 = [(_MNArrivalUpdaterState *)self details];
  v3 = [v2 navigationSessionState];
  v4 = [v3 currentRouteInfo];
  v5 = [v4 route];

  return v5;
}

- (MNArrivalUpdater)arrivalUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);

  return WeakRetained;
}

- (BOOL)_updateForSearchingForParking
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(_MNArrivalUpdaterState *)self route];
  v4 = [v3 transportType];

  if (v4)
  {
    goto LABEL_24;
  }

  v5 = [(_MNArrivalUpdaterState *)self details];
  v6 = [v5 navigationSessionState];
  v7 = [v6 isOnLastLeg];

  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [(_MNArrivalUpdaterState *)self details];
  v9 = [v8 isInParkingDetectionRegion];

  if (v9)
  {
LABEL_20:
    v28 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v29 = objc_alloc_init(_MNArrivalUpdaterState_SearchingForParkingAfterArrival);
    [v28 changeState:v29];

    result = 1;
    goto LABEL_21;
  }

  v10 = [(_MNArrivalUpdaterState *)self location];
  if ([v10 state] != 1)
  {
LABEL_23:

LABEL_24:
    result = 0;
    goto LABEL_21;
  }

  v11 = [(_MNArrivalUpdaterState *)self targetLeg];
  v12 = [v10 routeMatch];
  v13 = [v12 legIndex];
  v14 = [v11 legIndex];

  if (v13 != v14)
  {

    goto LABEL_23;
  }

  v15 = [(_MNArrivalUpdaterState *)self details];
  v16 = [v15 navigationSessionState];
  v17 = [v16 targetLeg];
  v18 = [v17 arrivalParameters];

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

        v25 = [v18 regionContainmentTypeForLocation:v10 arrivalRegionType:objc_msgSend(*(*(&v31 + 1) + 8 * i) parameters:{"integerValue"), v19}];
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

- (void)sendArrivalInfoFromPreviousState:(id)a3
{
  v4 = a3;
  v11 = objc_opt_new();
  [v11 setArrivalState:{-[_MNArrivalUpdaterState state](self, "state")}];
  v5 = [(_MNArrivalUpdaterState *)self targetLeg];
  [v11 setLegIndex:{objc_msgSend(v5, "legIndex")}];
  v6 = [v5 destination];
  [v11 setDestination:v6];

  v7 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v8 = [v7 safeDelegate];
  v9 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v10 = [v4 state];

  [v8 arrivalUpdater:v9 didUpdateArrivalInfo:v11 previousState:v10];
}

- (void)updateForEVChargingState:(BOOL)a3
{
  if (a3)
  {
    v4 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v3 = objc_alloc_init(_MNArrivalUpdaterState_Arrived);
    [v4 changeState:v3];
  }
}

- (void)forceDepartureWithReason:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_arrivalUpdater);
  v4 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:a3];
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