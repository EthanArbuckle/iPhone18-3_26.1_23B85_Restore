@interface MSPNavigationListener
- (BOOL)_currentlyArrivedAtWaypoint;
- (BOOL)_isCompatibleTransportType:(int)a3;
- (BOOL)_updateArrivalTimeAndDistance:(id)a3;
- (BOOL)_updateLocation:(id)a3 withRouteMatchedCoordinate:(id)a4;
- (BOOL)_updateTraffic:(id)a3;
- (BOOL)_updateWaypointsIfNeeded:(id)a3;
- (BOOL)isCompatibleNavigationType;
- (BOOL)isCompatibleTransportType;
- (MSPNavigationListener)init;
- (MSPNavigationListenerDelegate)delegate;
- (NSString)description;
- (NSString)navigationSessionIdentifier;
- (int)_analyticsPipelineTransportModeForGEOTransportType:(int)a3;
- (int)_currentTransportType;
- (int)_referenceFrameForDestination:(id)a3;
- (void)_checkStateIsReady;
- (void)_clearArrivedState;
- (void)_initPendingStateIfNeeded;
- (void)_performDelegateNotificationBlockIfReady:(id)a3;
- (void)_updateCurrentWaypointIndexFromArrivalTimeInfo:(id)a3;
- (void)_updateRoute:(id)a3;
- (void)_updateTransaction;
- (void)_updateTransportTypeFromCurrentState;
- (void)dealloc;
- (void)navigationListener:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationListener:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationListener:(id)a3 didUpdateETA:(id)a4;
- (void)navigationListener:(id)a3 didUpdateGuidanceState:(id)a4;
- (void)navigationListener:(id)a3 didUpdateLocation:(id)a4 routeMatchedCoordinate:(id)a5;
- (void)navigationListener:(id)a3 didUpdateRoute:(id)a4;
- (void)navigationListener:(id)a3 didUpdateTrafficForCurrentRoute:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation MSPNavigationListener

- (MSPNavigationListener)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = MSPNavigationListener;
  v2 = [(MSPNavigationListener *)&v9 init];
  if (v2)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136380675;
      v11 = "[MSPNavigationListener init]";
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[NavListener] %{private}s", buf, 0xCu);
    }

    v4 = objc_alloc(MEMORY[0x277D0EBF0]);
    v5 = [v4 initWithQueue:MEMORY[0x277D85CD0] wantsRoutes:1];
    navigationListener = v2->_navigationListener;
    v2->_navigationListener = v5;

    [(GEONavigationListener *)v2->_navigationListener setDelegate:v2];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_initPendingStateIfNeeded
{
  v3 = [(MSPNavigationListener *)self _currentTransportType];
  v4 = [(GEONavigationListener *)self->_navigationListener isResumingMultipointRoute];

  [(MSPNavigationListener *)self _initPendingStateIfNeededWithTransportType:v3 isResumingMultipointRoute:v4];
}

- (void)_checkStateIsReady
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (self->_state && !self->_postedStateIsReady && WeakRetained)
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener checking state...", buf, 2u);
    }

    v6 = [(GEOSharedNavState *)self->_state destinationInfo];
    if (!v6 || ![(GEOSharedNavState *)self->_state waypointInfosCount])
    {
      goto LABEL_15;
    }

    v7 = [(GEOSharedNavState *)self->_state etaInfo];
    if (![v7 hasEtaTimestamp] || (-[GEOSharedNavState hasTransportType](self->_state, "hasTransportType") & 1) == 0)
    {

LABEL_15:
      goto LABEL_16;
    }

    v8 = [(GEOSharedNavState *)self->_state hasCurrentWaypointIndex];

    if (v8)
    {
      v6 = [(GEONavigationListener *)self->_navigationListener lastLocation];
      [(MSPNavigationListener *)self _updateLocation:v6 withRouteMatchedCoordinate:*MEMORY[0x277D0E9F8]];
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(GEOSharedNavState *)self->_state transportType];
        if (v10 >= 7)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
        }

        else
        {
          v11 = off_2798684E0[v10];
        }

        state = self->_state;
        v14 = v11;
        v15 = [(GEOSharedNavState *)state etaInfos];
        v16 = [(GEOSharedNavState *)self->_state destinationName];
        v17 = [(GEOSharedNavState *)self->_state waypointInfosCount];

        *buf = 138413314;
        v19 = v11;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        v24 = 2048;
        v25 = v17;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener has required info (transportType: %@, ETAs: %@, destination: %@, %lu waypoints), optional (location: %@)", buf, 0x34u);
      }

      self->_postedStateIsReady = 1;
      [v4 navigationListenerIsReady:self];
      goto LABEL_15;
    }
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)navigationSessionIdentifier
{
  navigationSessionIdentifier = self->_navigationSessionIdentifier;
  if (!navigationSessionIdentifier)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_navigationSessionIdentifier;
    self->_navigationSessionIdentifier = v5;

    navigationSessionIdentifier = self->_navigationSessionIdentifier;
  }

  return navigationSessionIdentifier;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    state = self->_state;
    self->_state = 0;

    self->_postedStateIsReady = 0;
  }

  objc_storeWeak(&self->_delegate, obj);
  [(MSPNavigationListener *)self _updateTransaction];
  [(MSPNavigationListener *)self _initPendingStateIfNeeded];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v7 = "[MSPNavigationListener dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[NavListener] %{private}s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPNavigationListener;
  [(MSPNavigationListener *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCompatibleNavigationType
{
  if ([(GEONavigationListener *)self->_navigationListener navigationState]== 2)
  {
    v3 = [(GEONavigationGuidanceState *)self->_guidanceState hasNavigationType];
    if (v3)
    {
      LOBYTE(v3) = [(GEONavigationGuidanceState *)self->_guidanceState navigationType]== 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isCompatibleTransportType
{
  v3 = [(MSPNavigationListener *)self _currentTransportType];

  return [(MSPNavigationListener *)self _isCompatibleTransportType:v3];
}

- (BOOL)_isCompatibleTransportType:(int)a3
{
  if ([(GEONavigationListener *)self->_navigationListener navigationState]!= 2)
  {
    return 0;
  }

  if ((a3 - 1) > 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_2581C4878[a3 - 1];
  }

  return MSPSharedTripSharingSupportedForTransportType(v4);
}

- (int)_currentTransportType
{
  if (![(GEONavigationGuidanceState *)self->_guidanceState hasTrackedTransportType])
  {
    return 4;
  }

  guidanceState = self->_guidanceState;

  return [(GEONavigationGuidanceState *)guidanceState trackedTransportType];
}

- (BOOL)_currentlyArrivedAtWaypoint
{
  v3 = [(GEONavigationGuidanceState *)self->_guidanceState hasNavigationState];
  if (v3)
  {
    LOBYTE(v3) = ([(GEONavigationGuidanceState *)self->_guidanceState navigationState]& 0xFFFFFFFE) == 6;
  }

  return v3;
}

- (void)_updateRoute:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  state = self->_state;
  if (state)
  {
    if (([(GEOSharedNavState *)state hasReferenceFrame]& 1) == 0)
    {
      v6 = [v4 destination];
      [(GEOSharedNavState *)self->_state setReferenceFrame:[(MSPNavigationListener *)self _referenceFrameForDestination:v6]];
    }

    [(GEOSharedNavState *)self->_state updateRouteInfoFromComposedRoute:v4];
    v7 = MSPGetSharedTripNavEventsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(GEOSharedNavState *)self->_state mspDescription];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "_updateRoute %@", &v10, 0xCu);
    }

    [(MSPNavigationListener *)self _checkStateIsReady];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateTraffic:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_state)
  {
    v4 = a3;
    v5 = MSPGetSharedTripNavEventsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(GEOSharedNavState *)self->_state mspDescription];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "_updateTraffic %@", &v10, 0xCu);
    }

    v7 = [(GEOSharedNavState *)self->_state updateFromTraffic:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_updateLocation:(id)a3 withRouteMatchedCoordinate:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (self->_state)
  {
    v8 = [v6 latLng];

    if (v8)
    {
      v9 = [(GEOSharedNavState *)self->_state lastLocation];
      v10 = [(GEOSharedNavState *)self->_state lastLocation];
      v11 = [v10 coordinate];

      v12 = [v7 latLng];
      if ([v11 isEqual:v12])
      {
        [v9 matchedCoordinate];
        v13 = GEOPolylineCoordinateEqual();

        if (v13)
        {
          v14 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v15 = objc_alloc_init(MEMORY[0x277D0ED18]);
      v16 = [v7 latLng];
      [v15 setCoordinate:v16];

      if (GEOPolylineCoordinateIsValid())
      {
        [v15 setMatchedCoordinateIndex:a4];
        *&v17 = a4.var1;
        [v15 setMatchedCoordinateOffset:v17];
      }

      [(GEOSharedNavState *)self->_state setLastLocation:v15];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
      v18 = MSPGetSharedTripNavEventsLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [(GEOSharedNavState *)self->_state mspDescription];
        v22 = 138412290;
        v23 = v19;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEBUG, "_updateLocation %@", &v22, 0xCu);
      }

      v14 = 1;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_updateWaypointsIfNeeded:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0;
  if (v4)
  {
    state = self->_state;
    if (state)
    {
      if ([(GEOSharedNavState *)state updateWaypointsFromComposedRoute:v4])
      {
        v7 = MSPGetSharedTripNavEventsLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v4 waypoints];
          v9 = [v8 valueForKey:@"name"];
          v12 = 138477827;
          v13 = v9;
          _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener waypoints updated %{private}@", &v12, 0xCu);
        }

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_updateCurrentWaypointIndexFromArrivalTimeInfo:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 && self->_state)
  {
    v4 = [a3 legIndex];
    if (([(GEOSharedNavState *)self->_state hasCurrentWaypointIndex]& 1) != 0)
    {
      if ([(GEOSharedNavState *)self->_state currentWaypointIndex]!= v4)
      {
        v5 = MSPGetSharedTripNavEventsLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(GEOSharedNavState *)self->_state currentWaypointIndex];
          v9 = 134218240;
          v10 = v6;
          v11 = 2048;
          v12 = v4;
          _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "_updateETA: update current waypoint %lu -> %lu", &v9, 0x16u);
        }

        [(GEOSharedNavState *)self->_state setCurrentWaypointIndex:v4];
        [(GEOSharedNavState *)self->_state setArrived:0];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
        [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_17];
      }
    }

    else
    {
      v7 = MSPGetSharedTripNavEventsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v4;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "_updateETA: setting initial waypoint index: %lu", &v9, 0xCu);
      }

      [(GEOSharedNavState *)self->_state setCurrentWaypointIndex:v4];
      [(MSPNavigationListener *)self _checkStateIsReady];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateArrivalTimeAndDistance:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  state = self->_state;
  if (state)
  {
    if ([(GEOSharedNavState *)state etaInfosCount])
    {
      v6 = objc_alloc(MEMORY[0x277CBEAC0]);
      v7 = [v4 arrivalTimeInfo];
      v8 = [v4 arrivalTimeInfo];
      v9 = MapsMap(v8, &__block_literal_global_17);
      v10 = [v6 initWithObjects:v7 forKeys:v9];

      *v30 = 0;
      v31 = v30;
      v32 = 0x2020000000;
      v33 = 0;
      v11 = [(GEOSharedNavState *)self->_state etaInfos];
      v12 = [v11 copy];

      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __55__MSPNavigationListener__updateArrivalTimeAndDistance___block_invoke_2;
      v25 = &unk_279868468;
      v13 = v10;
      v29 = v30;
      v26 = v13;
      v27 = self;
      v28 = v4;
      [v12 enumerateObjectsUsingBlock:&v22];
      if (v31[24] == 1)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
        v14 = MSPGetSharedTripNavEventsLog();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

        if (v15)
        {
          v16 = MSPGetSharedTripNavEventsLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [(GEOSharedNavState *)self->_state etaInfos];
            v18 = MapsMap(v17, &__block_literal_global_24);
            *buf = 138412290;
            v35 = v18;
            _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "_updateETA complete: %@", buf, 0xCu);
          }
        }
      }

      v19 = v31[24];

      _Block_object_dispose(v30, 8);
    }

    else
    {
      v13 = MSPGetSharedTripNavEventsLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 0;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "_updateETA: we don't have ETAs to fill out, waiting for route update", v30, 2u);
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

uint64_t __55__MSPNavigationListener__updateArrivalTimeAndDistance___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 legIndex];

  return [v2 numberWithUnsignedInteger:v3];
}

void __55__MSPNavigationListener__updateArrivalTimeAndDistance___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8 || ![v5 hasEtaTimestamp])
  {
    [v5 remainingTime];
    v13 = v12;
    [v8 remainingTime];
    if (vabdd_f64(v13, v14) >= 0.00999999978)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [v8 remainingTime];
      MNDisplayETAAndRemainingMinutes();
      v10 = 0;
      [v10 timeIntervalSinceReferenceDate];
      [v5 setEtaTimestamp:?];
      v15 = MSPGetSharedTripNavEventsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        [v5 remainingTime];
        v17 = v16;
        [v8 remainingTime];
        *buf = 134218496;
        v21 = a3;
        v22 = 2048;
        v23 = v17;
        v24 = 2048;
        v25 = v18;
        _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "_updateETA: updating waypoint %lu remaining time: %#.1lfs -> %#.1lfs", buf, 0x20u);
      }

      [v8 remainingTime];
      [v5 setRemainingTime:?];
      if ([*(*(a1 + 40) + 32) hasCurrentWaypointIndex] && objc_msgSend(*(*(a1 + 40) + 32), "currentWaypointIndex") == a3)
      {
        [*(a1 + 48) distanceRemainingToEndOfLeg];
        [v5 setRemainingDistance:?];
      }

      else
      {
        [v5 setRemainingDistance:0.0];
        [v5 setHasRemainingDistance:0];
      }
    }

    else
    {
      v10 = MSPGetSharedTripNavEventsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v21 = a3;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "_updateETA: skipping unchanged waypoint %lu eta", buf, 0xCu);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v9 = MSPGetSharedTripNavEventsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v21 = a3;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "_updateETA: clearing passed waypoint %lu etaInfo", buf, 0xCu);
    }

    v10 = [*(*(a1 + 40) + 32) etaInfos];
    v11 = objc_alloc_init(MEMORY[0x277D0ED10]);
    [v10 replaceObjectAtIndex:a3 withObject:v11];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransportTypeFromCurrentState
{
  v16 = *MEMORY[0x277D85DE8];
  guidanceState = self->_guidanceState;
  if (guidanceState)
  {
    if ([(GEONavigationGuidanceState *)guidanceState hasTrackedTransportType])
    {
      if (![(GEOSharedNavState *)self->_state hasTransportType]|| (v4 = [(GEOSharedNavState *)self->_state transportType], v4 != [(GEONavigationGuidanceState *)self->_guidanceState trackedTransportType]))
      {
        v5 = MSPGetSharedTripNavEventsLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = [(GEOSharedNavState *)self->_state transportType];
          if (v6 >= 7)
          {
            v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v6];
          }

          else
          {
            v7 = off_2798684E0[v6];
          }

          v8 = v7;
          v9 = [(GEONavigationGuidanceState *)self->_guidanceState trackedTransportType];
          if (v9 >= 7)
          {
            v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
          }

          else
          {
            v10 = off_2798684E0[v9];
          }

          *buf = 138412546;
          v13 = v8;
          v14 = 2112;
          v15 = v10;
          _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "_updateTransportType %@ -> %@", buf, 0x16u);
        }

        [(GEOSharedNavState *)self->_state setTransportType:[(GEONavigationGuidanceState *)self->_guidanceState trackedTransportType]];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int)_referenceFrameForDestination:(id)a3
{
  v3 = a3;
  if ([v3 hasMapItemStorage])
  {
    v4 = [v3 mapItemStorage];
    if ([v4 referenceFrame])
    {
      v5 = [v4 referenceFrame];
    }

    else
    {
      v11 = MEMORY[0x277D0EB88];
      [v4 coordinate];
      if ([v11 isLocationShiftRequiredForCoordinate:?])
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    goto LABEL_10;
  }

  if ([v3 hasWaypoint])
  {
    v4 = [v3 waypoint];
    v6 = [v4 waypointLocation];
    v7 = [v6 location];
    v8 = [v7 hasReferenceFrame];

    if (v8)
    {
      v9 = [v4 waypointLocation];
      v10 = [v9 location];
      v5 = [v10 referenceFrame];

LABEL_10:
      goto LABEL_17;
    }
  }

  if ([v3 hasLatLng])
  {
    v12 = [v3 latLng];
    [v12 lat];
    v14 = v13;
    v15 = [v3 latLng];
    [v15 lng];
    v17 = v16;

    if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v14, v17}])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_17:

  return v5;
}

- (void)_updateTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  transaction = self->_transaction;
  if (transaction)
  {
    v6 = 1;
  }

  else
  {
    v6 = WeakRetained == 0;
  }

  if (v6)
  {
    if (transaction)
    {
      v7 = WeakRetained == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && ![(MSPNavigationListener *)self isInNavigatingState])
    {
      v8 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "MSPNavigationListener not navigating or no delegate, stopping transaction", v12, 2u);
      }

      v9 = 0;
      goto LABEL_19;
    }
  }

  else if ([(MSPNavigationListener *)self isInNavigatingState])
  {
    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "MSPNavigationListener now navigating with delegate, starting transaction", buf, 2u);
    }

    v9 = os_transaction_create();
LABEL_19:
    v11 = self->_transaction;
    self->_transaction = v9;
  }
}

- (void)navigationListener:(id)a3 didUpdateGuidanceState:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener guidance state change: %@", &v9, 0xCu);
  }

  if ([(GEONavigationListener *)self->_navigationListener navigationState]== 2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&self->_guidanceState, v7);
  if (self->_state)
  {
    [(MSPNavigationListener *)self _updateTransportTypeFromCurrentState];
    [(GEOSharedNavState *)self->_state setArrived:[(MSPNavigationListener *)self _currentlyArrivedAtWaypoint]];
    [(MSPNavigationListener *)self _checkStateIsReady];
  }

  else
  {
    [(MSPNavigationListener *)self _initPendingStateIfNeeded];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)a3 didUpdateETA:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener ETA update: %{public}@", &v10, 0xCu);
  }

  v7 = [v5 arrivalTimeInfo];
  v8 = [v7 firstObject];
  [(MSPNavigationListener *)self _updateCurrentWaypointIndexFromArrivalTimeInfo:v8];

  if ([(MSPNavigationListener *)self _updateArrivalTimeAndDistance:v5])
  {
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_31];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)a3 didUpdateLocation:(id)a4 routeMatchedCoordinate:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "MSPNavigationListener location update: %@", &v10, 0xCu);
  }

  if ([(MSPNavigationListener *)self _updateLocation:v7 withRouteMatchedCoordinate:a5])
  {
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_33];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)a3 didUpdateRoute:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uniqueRouteID];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener route update: %{public}@", &v10, 0xCu);
  }

  if ([(MSPNavigationListener *)self _updateWaypointsIfNeeded:v5])
  {
    [(MSPNavigationListener *)self _clearArrivedState];
    [(GEOSharedNavState *)self->_state setResumed:0];
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_35_0];
  }

  [(MSPNavigationListener *)self _updateRoute:v5];
  v8 = [v5 traffic];
  [(MSPNavigationListener *)self _updateTraffic:v8];

  [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_37];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)a3 didUpdateTrafficForCurrentRoute:(id)a4
{
  v5 = a4;
  v6 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener traffic update", v8, 2u);
  }

  v7 = [(MSPNavigationListener *)self _updateTraffic:v5];
  if (v7)
  {
    [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_39];
  }
}

- (void)navigationListener:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 shortDescription];
    v13 = 138412546;
    v14 = v9;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener did arrive at waypoint: %@ legIndex: %lu", &v13, 0x16u);
  }

  [(GEOSharedNavState *)self->_state setArrived:1];
  [(GEOSharedNavState *)self->_state setResumed:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  [(GEOSharedNavState *)self->_state setArrivedTimestamp:?];
  [(GEOSharedNavState *)self->_state setUpdatedTimestamp:v11];
  [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_41];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)navigationListener:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MSPGetSharedTripNavEventsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2048;
    v13 = a5;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "MSPNavigationListener did resume navigating from waypoint: %@ legIndex: %lu", &v10, 0x16u);
  }

  [(MSPNavigationListener *)self _clearArrivedState];
  [(GEOSharedNavState *)self->_state setResumed:1];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(GEOSharedNavState *)self->_state setUpdatedTimestamp:?];
  [(MSPNavigationListener *)self _performDelegateNotificationBlockIfReady:&__block_literal_global_43];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clearArrivedState
{
  [(GEOSharedNavState *)self->_state setArrived:0];
  [(GEOSharedNavState *)self->_state setArrivedTimestamp:0.0];
  state = self->_state;

  [(GEOSharedNavState *)state setHasArrivedTimestamp:0];
}

- (int)_analyticsPipelineTransportModeForGEOTransportType:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return dword_2581C48A8[a3];
  }
}

- (void)_performDelegateNotificationBlockIfReady:(id)a3
{
  v5 = a3;
  if (self->_postedStateIsReady || ([(MSPNavigationListener *)self _checkStateIsReady], self->_postedStateIsReady))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5[2](v5, self, WeakRetained);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPNavigationListener;
  v4 = [(MSPNavigationListener *)&v8 description];
  v5 = [(GEONavigationListener *)self->_navigationListener description];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, v5];

  return v6;
}

- (MSPNavigationListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end