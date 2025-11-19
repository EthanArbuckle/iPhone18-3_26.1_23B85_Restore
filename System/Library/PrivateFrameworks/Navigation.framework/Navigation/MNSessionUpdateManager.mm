@interface MNSessionUpdateManager
- (BOOL)_hasAtLeastOneActiveSubscriber;
- (MNSessionUpdateManager)init;
- (MNSessionUpdateManagerDelegate)delegate;
- (id)_baseETARequest;
- (id)_updateETARequest:(id)a3 withRouteInfo:(id)a4 andUserLocation:(id)a5;
- (id)_updateWaypointsForRequest:(id)a3 routeInfo:(id)a4 userLocation:(id)a5 etaRoute:(id)a6;
- (int)_purposeForReason:(unint64_t)a3;
- (void)_cancelPendingETARequest;
- (void)_continueETARequests;
- (void)_handleETAResponse:(id)a3 forRouteInfo:(id)a4 etaRoute:(id)a5 reason:(unint64_t)a6;
- (void)_scheduleETATimerWithInterval:(double)a3;
- (void)_sendETARequestWithParameters:(id)a3;
- (void)_sendETARequestWithReason:(unint64_t)a3;
- (void)_terminateETARequests;
- (void)_updateRouteAttributesFor:(id)a3 route:(id)a4 updatedLocation:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)pauseUpdateRequestsForSubscriber:(id)a3;
- (void)requestImmediateUpdateWithReason:(unint64_t)a3;
- (void)requestUpdateForETAUPosition:(id)a3;
- (void)restartUpdateTimer;
- (void)resumeUpdateRequestsForSubscriber:(id)a3;
- (void)sendFinalETAURequestWithReason:(unint64_t)a3;
- (void)startUpdateRequestsForRoutes:(id)a3 andNavigationType:(int64_t)a4;
- (void)stopUpdateRequests;
- (void)transitRouteUpdater:(id)a3 didFailUpdateForRouteIDs:(id)a4 withError:(id)a5;
- (void)transitRouteUpdater:(id)a3 didReceiveResponse:(id)a4;
- (void)transitRouteUpdater:(id)a3 didUpdateTransitRoutes:(id)a4;
- (void)transitRouteUpdater:(id)a3 willSendRequests:(id)a4;
- (void)transitRouteUpdater:(id)a3 willUpdateTransitForRouteIDs:(id)a4;
@end

@implementation MNSessionUpdateManager

- (MNSessionUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_hasAtLeastOneActiveSubscriber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  subscribers = self->_subscribers;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MNSessionUpdateManager__hasAtLeastOneActiveSubscriber__block_invoke;
  v5[3] = &unk_1E8430B98;
  v5[4] = &v6;
  [(NSMutableDictionary *)subscribers enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __56__MNSessionUpdateManager__hasAtLeastOneActiveSubscriber__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 unsignedIntegerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)transitRouteUpdater:(id)a3 didFailUpdateForRouteIDs:(id)a4 withError:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = v6;
  if (!self->_isPaused)
  {
    v8 = [v6 domain];
    v9 = GEOErrorDomain();
    v10 = [v8 isEqualToString:v9];

    v11 = GEOFindOrCreateLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        [v7 code];
        v13 = GEOStringForError();
        v14 = [v7 userInfo];
        v15 = GEOErrorReasonKey();
        v16 = [v14 objectForKeyedSubscript:v15];
        v19 = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Received error from transit route updater: (%@) %@", &v19, 0x16u);
      }
    }

    else if (v12)
    {
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Received error from transit route updater: %@", &v19, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self didReceiveTransitError:v7];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)transitRouteUpdater:(id)a3 didUpdateTransitRoutes:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (!self->_isPaused)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = [MNRealtimeTransitUpdate alloc];
          v14 = [(MNRealtimeTransitUpdate *)v13 initWithTransitRouteUpdate:v12, v17];
          [v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self didReceiveTransitUpdates:v6];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)transitRouteUpdater:(id)a3 willUpdateTransitForRouteIDs:(id)a4
{
  if (!self->_isPaused)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self willSendTransitUpdateRequestForRouteIDs:v6];
  }
}

- (void)transitRouteUpdater:(id)a3 didReceiveResponse:(id)a4
{
  if (!self->_isPaused)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self didReceiveTransitUpdateResponse:v6];
  }
}

- (void)transitRouteUpdater:(id)a3 willSendRequests:(id)a4
{
  if (!self->_isPaused)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained updateManager:self willSendTransitUpdateRequests:v6];
  }
}

- (void)_handleETAResponse:(id)a3 forRouteInfo:(id)a4 etaRoute:(id)a5 reason:(unint64_t)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v46 = a5;
  v12 = [v10 error];
  if (v12)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Error in ETATrafficUpdate response: %@", buf, 0xCu);
    }

    if (GEOConfigGetBOOL())
    {
      sfxController = self->_sfxController;
      if (!sfxController)
      {
        v15 = objc_alloc_init(MNSoundEffectResourceController);
        v16 = self->_sfxController;
        self->_sfxController = v15;

        sfxController = self->_sfxController;
      }

      [(MNSoundEffectResourceController *)sfxController playSound:0 andReport:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained routeInfoForUpdateManager:self reason:a6];
    v19 = [v18 route];

    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = [v20 userLocationForUpdateManager:self];

    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v44 = [v10 request];
      v43 = [v44 waypointRoute];
      v42 = [v43 routeLegs];
      v23 = v10;
      v24 = [v42 count];
      v25 = [v21 routeMatch];
      [v19 waypointsFromRouteCoordinate:{objc_msgSend(v25, "routeCoordinate")}];
      v26 = v45 = v11;
      v27 = [v26 count];
      v28 = [v19 isEVRoute];
      *buf = 138413058;
      v48 = v12;
      v49 = 2048;
      v50 = v24;
      v10 = v23;
      v51 = 2048;
      v52 = v27;
      v53 = 1024;
      v54 = v28;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEBUG, "ETA Update failed. error: %@ | etaRequestLegsCount: %lu | remainingWaypointsCount: %lu | isEVRoute: %d", buf, 0x26u);

      v11 = v45;
    }

    v29 = [v11 etaRoute];
    [v29 invalidateServerDisplayETA];

    goto LABEL_11;
  }

  v32 = [v10 response];
  if ([v32 status])
  {
    v33 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_38:

      goto LABEL_39;
    }

    v34 = [v32 status];
    if (v34 <= 19)
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v35 = @"STATUS_INCOMPLETE";
          goto LABEL_37;
        }

        if (v34 == 5)
        {
          v35 = @"INVALID_REQUEST";
          goto LABEL_37;
        }
      }

      else
      {
        if (!v34)
        {
          v35 = @"STATUS_SUCCESS";
          goto LABEL_37;
        }

        if (v34 == 1)
        {
          v35 = @"STATUS_FAILED";
          goto LABEL_37;
        }
      }
    }

    else if (v34 <= 39)
    {
      if (v34 == 20)
      {
        v35 = @"FAILED_NO_RESULT";
        goto LABEL_37;
      }

      if (v34 == 30)
      {
        v35 = @"NEEDS_REFINEMENT";
        goto LABEL_37;
      }
    }

    else
    {
      switch(v34)
      {
        case '(':
          v35 = @"FAILED_NOT_AUTHORIZED";
          goto LABEL_37;
        case '2':
          v35 = @"STATUS_DEDUPED";
          goto LABEL_37;
        case '<':
          v35 = @"VERSION_MISMATCH";
LABEL_37:
          *buf = 138412290;
          v48 = v35;
          _os_log_impl(&dword_1D311E000, v33, OS_LOG_TYPE_ERROR, "Error in ETATrafficUpdate response but attempting to continue: %@", buf, 0xCu);

          goto LABEL_38;
      }
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v34];
    goto LABEL_37;
  }

LABEL_39:
  v36 = objc_loadWeakRetained(&self->_delegate);
  v21 = [v36 routeInfoForUpdateManager:self reason:a6];

  if (v21 == v11)
  {
    v39 = [v21 route];
    v19 = v32;
    v40 = [(__CFString *)v46 updateForResponse:v32 route:v39];

    v41 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v48 = v46;
      _os_log_impl(&dword_1D311E000, v41, OS_LOG_TYPE_DEFAULT, "ETA route: %{private}@", buf, 0xCu);
    }

    if (v40)
    {
      [(MNSessionUpdateManager *)self _updateForETARoute:v46];
      [v21 updateWithETARoute:v46 etaResponse:v19];
LABEL_11:
      v30 = objc_loadWeakRetained(&self->_delegate);
      [v30 updateManager:self didReceiveETAResponse:v10];
      goto LABEL_12;
    }

    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "Error updating GEOComposedETARoute with ETAU response.", buf, 2u);
    }
  }

  else
  {
    v30 = GEOFindOrCreateLog();
    v19 = v32;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v11 routeID];
      v38 = [v21 routeID];
      *buf = 138412546;
      v48 = v37;
      v49 = 2112;
      v50 = v38;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "ETA request was made for route %@, but current route is now %@. Ignoring response.", buf, 0x16u);
    }
  }

LABEL_12:

  v31 = *MEMORY[0x1E69E9840];
}

- (int)_purposeForReason:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1D328D528[a3 - 1];
  }
}

- (id)_updateWaypointsForRequest:(id)a3 routeInfo:(id)a4 userLocation:(id)a5 etaRoute:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v10];
  v13 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v12 isCurrentLocation:1];
  [v11 addObject:v13];
  if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
  {
    v43 = v12;
    v44 = v10;
    v45 = v11;
    [v8 clearWaypointTypeds];
    v14 = [v9 route];
    v15 = [v14 waypoints];

    v16 = [v15 count];
    v17 = [v8 waypointRoute];
    v18 = [v17 routeLegs];
    v19 = v16 - [v18 count];

    v42 = v15;
    v20 = [v15 count] - v19;
    v46 = v9;
    v21 = [v9 route];
    v22 = [v21 waypoints];
    v23 = [v22 subarrayWithRange:{v19, v20}];

    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v19, v20}];
      *buf = 138412290;
      v53 = v25;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_DEFAULT, "Creating ETAU request using waypoints from index set: %@.", buf, 0xCu);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v26 = v23;
    v27 = [v26 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v48;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v48 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v47 + 1) + 8 * i);
          v32 = [v31 geoWaypointTyped];
          if (v32)
          {
            [v8 addWaypointTyped:v32];
          }

          else
          {
            v33 = [v31 chargingInfo];

            if (!v33)
            {
              v34 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v53 = v31;
                _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_FAULT, "Unable to create GEOWaypointTyped from GEOComposedWaypoint for a non-EV waypoint. %@", buf, 0xCu);
              }
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v28);
    }

    v11 = v45;
    [v45 addObjectsFromArray:v26];

    v9 = v46;
    v12 = v43;
    v10 = v44;
  }

  else
  {
    [v8 clearDestinationWaypointTypeds];
    v35 = [v9 route];
    v36 = [v35 destination];
    v37 = [v36 geoWaypointTyped];

    [v8 addDestinationWaypointTyped:v37];
    v38 = [v9 route];
    v39 = [v38 destination];
    [v11 addObject:v39];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_updateETARequest:(id)a3 withRouteInfo:(id)a4 andUserLocation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v39 = 0;
      v18 = "Unable to create ETATrafficUpdateRequest because routeInfo is nil.";
      v19 = &v39;
LABEL_12:
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    }

LABEL_13:
    v17 = 0;
    goto LABEL_24;
  }

  v11 = [v9 route];

  if (!v11)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v38 = 0;
      v18 = "Unable to create ETATrafficUpdateRequest because routeInfo has no route.";
      v19 = v38;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v10];
  [v8 setCurrentUserLocation:v12];
  v13 = [v10 routeMatch];
  if (!v13)
  {
LABEL_15:
    v34 = v10;
    v16 = objc_alloc_init(MEMORY[0x1E69A1C50]);
    v20 = [v9 route];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = [WeakRetained targetLegIndex];
    v23 = objc_loadWeakRetained(&self->_delegate);
    v35 = v13;
    LOBYTE(v22) = -[NSObject prepareForRequest:route:routeMatch:targetLegIndex:state:](v16, "prepareForRequest:route:routeMatch:targetLegIndex:state:", v8, v20, v13, v22, [v23 state]);

    if (v22)
    {
      objc_storeStrong(&self->_pendingETARoute, v16);
      v24 = [v9 route];
      v25 = [v24 directionsResponseID];
      [v8 setDirectionsResponseID:v25];

      [v8 setEtauResponseID:0];
      v26 = [v8 directionsResponseID];

      if (!v26)
      {
        v27 = [v9 route];
        v28 = [v27 etauResponseID];
        [v8 setEtauResponseID:v28];
      }

      v29 = [v9 displayETAInfo];
      v30 = [v29 displayETAToEndOfLeg];
      [v30 timeIntervalSinceReferenceDate];
      [v8 setDisplayedEta:v31];

      v16 = v16;
      v17 = v16;
    }

    else
    {
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "Unable to create ETA route for ETATrafficUpdateRequest.", v36, 2u);
      }

      v17 = 0;
    }

    v10 = v34;
    v13 = v35;
    goto LABEL_23;
  }

  v14 = [v9 route];
  v15 = [v13 route];

  if (v14 == v15)
  {
    [v13 routeCoordinate];
    goto LABEL_15;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Route match's route does not match route parameter.", buf, 2u);
  }

  v17 = 0;
LABEL_23:

LABEL_24:

  return v17;
}

- (id)_baseETARequest
{
  v3 = objc_alloc_init(MEMORY[0x1E69A1D48]);
  v4 = [MEMORY[0x1E69A2710] sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__MNSessionUpdateManager__baseETARequest__block_invoke;
  v16[3] = &unk_1E8430B58;
  v5 = v3;
  v17 = v5;
  [v4 shortSessionValues:v16];

  v6 = [MEMORY[0x1E69A2398] sharedPlatform];
  v7 = [v6 clientCapabilities];
  [v5 setClientCapabilities:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69A1C20]);
  [v8 setIncludeTravelTimeAggressive:1];
  [v8 setIncludeTravelTimeConservative:1];
  [v8 setIncludeTravelTimeEstimate:1];
  [v8 setExcludeGuidance:1];
  [v5 setCommonOptions:v8];
  [v5 setRequestingAppId:self->_requestingAppIdentifier];
  [v5 setMaxAlternateRouteCount:LODWORD(self->_maxAlternateRoutesCount)];
  v9 = objc_alloc_init(MEMORY[0x1E69A1E70]);
  [v5 setTripOrigin:v9];

  tripOrigin = self->_tripOrigin;
  v11 = [v5 tripOrigin];
  [v11 setLatLng:tripOrigin];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained recentLocationHistoryForUpdateManager:self];
  [v5 setRecentLocationHistory:v13];

  v14 = v5;
  return v5;
}

uint64_t __41__MNSessionUpdateManager__baseETARequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  [*(a1 + 32) setSessionID:{a2, a3}];
  [*(a1 + 32) setSessionRelativeTimestamp:a6];
  v10 = *(a1 + 32);

  return [v10 setSessionCreateHour:a7];
}

- (void)_sendETARequestWithParameters:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained wantsETAUpdates];

  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v4 reason];
      if ((v9 - 1) > 6)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E8430BB8[v9 - 1];
      }

      *buf = 138412290;
      v115 = v10;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to make ETATrafficUpdate request for reason: %@", buf, 0xCu);
    }

    if (self->_pendingETARequest)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Not sending ETAU request because one is already in progress.", buf, 2u);
      }

      goto LABEL_53;
    }

    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__21496;
    v112 = __Block_byref_object_dispose__21497;
    v12 = objc_loadWeakRetained(&self->_delegate);
    v113 = [v12 routeInfoForUpdateManager:self reason:{objc_msgSend(v4, "reason")}];

    if (!v109[5])
    {
      v37 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v37, OS_LOG_TYPE_DEFAULT, "No route provided to ETATrafficUpdate request. Skipping update.", buf, 2u);
      }

      if ([v4 shouldRepeatAfterCompletion])
      {
        [(MNSessionUpdateManager *)self _continueETARequests];
      }

      goto LABEL_52;
    }

    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__21496;
    v106 = __Block_byref_object_dispose__21497;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v107 = [v13 userLocationForUpdateManager:self];

    v14 = v103[5];
    if (v14)
    {
      v15 = [v14 routeMatch];
      v16 = [v15 routeCoordinate];
      v17 = [v109[5] route];
      LOBYTE(v16) = [v17 pointCount] > v16;

      if (v16)
      {
        v18 = [(MNSessionUpdateManager *)self _baseETARequest];
        v19 = [v4 routeAttributes];
        [v18 setRouteAttributes:v19];

        [v18 setPurpose:{-[MNSessionUpdateManager _purposeForReason:](self, "_purposeForReason:", objc_msgSend(v4, "reason"))}];
        v96 = 0;
        v97 = &v96;
        v98 = 0x3032000000;
        v99 = __Block_byref_object_copy__21496;
        v100 = __Block_byref_object_dispose__21497;
        v101 = [(MNSessionUpdateManager *)self _updateETARequest:v18 withRouteInfo:v109[5] andUserLocation:v103[5]];
        if (v97[5])
        {
          if ([v4 shouldTrackPendingRequest])
          {
            objc_storeStrong(&self->_pendingETARequest, v18);
          }

          v94[0] = 0;
          v94[1] = v94;
          v94[2] = 0x3032000000;
          v94[3] = __Block_byref_object_copy__21496;
          v94[4] = __Block_byref_object_dispose__21497;
          v95 = [(MNSessionUpdateManager *)self _updateWaypointsForRequest:v18 routeInfo:v109[5] userLocation:v103[5] etaRoute:v97[5]];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v21 = v20;
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke;
          aBlock[3] = &unk_1E8430A88;
          v22 = v4;
          v87 = v22;
          v89 = &v108;
          objc_copyWeak(v92, &location);
          v23 = v18;
          v88 = v23;
          v90 = v94;
          v92[1] = v21;
          v91 = &v96;
          v63 = _Block_copy(aBlock);
          v64 = objc_alloc_init(MEMORY[0x1E69A1D50]);
          if ([v22 shouldUseConditionalRequest])
          {
            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_2;
            v71[3] = &unk_1E8430B08;
            objc_copyWeak(&v80, &location);
            v62 = v64;
            v72 = v62;
            v24 = v23;
            v73 = v24;
            v76 = &v108;
            v25 = v22;
            v77 = &v102;
            v78 = &v96;
            v79 = v94;
            v74 = v25;
            v75 = self;
            v61 = _Block_copy(v71);
            v26 = [MEMORY[0x1E695DF00] now];
            dateOfLastUpdate = self->_dateOfLastUpdate;
            self->_dateOfLastUpdate = v26;

            v28 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              [v103[5] coordinate];
              v30 = v29;
              [v103[5] coordinate];
              v32 = v31;
              v33 = [v103[5] routeMatch];
              [v33 routeCoordinate];
              v34 = GEOPolylineCoordinateAsShortString();
              v35 = [v25 reason];
              if ((v35 - 1) > 6)
              {
                v36 = @"Unknown";
              }

              else
              {
                v36 = off_1E8430BB8[v35 - 1];
              }

              v56 = [v109[5] routeID];
              *buf = 134284547;
              v115 = v30;
              v116 = 2049;
              v117 = v32;
              v118 = 2112;
              v119 = v34;
              v120 = 2112;
              v121 = v36;
              v122 = 2112;
              v123 = v56;
              _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEFAULT, "Starting conditional ETATrafficUpdate request from location: %{private}f, %{private}f (%@) | reason: %@ | routeID: %@", buf, 0x34u);
            }

            v57 = [v109[5] route];
            v58 = v103[5];
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_43;
            v65[3] = &unk_1E8430B30;
            objc_copyWeak(&v70, &location);
            v66 = v24;
            v67 = v62;
            v59 = v61;
            v68 = v59;
            v69 = v63;
            [(MNSessionUpdateManager *)self _updateRouteAttributesFor:v66 route:v57 updatedLocation:v58 completion:v65];

            objc_destroyWeak(&v70);
            objc_destroyWeak(&v80);
          }

          else
          {
            v45 = objc_loadWeakRetained(&self->_delegate);
            [v45 updateManager:self willSendETARequest:v23];

            v46 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              [v103[5] coordinate];
              v48 = v47;
              [v103[5] coordinate];
              v50 = v49;
              v51 = [v22 reason];
              if ((v51 - 1) > 6)
              {
                v52 = @"Unknown";
              }

              else
              {
                v52 = off_1E8430BB8[v51 - 1];
              }

              v53 = [v109[5] routeID];
              *buf = 134284291;
              v115 = v48;
              v116 = 2049;
              v117 = v50;
              v118 = 2112;
              v119 = v52;
              v120 = 2112;
              v121 = v53;
              _os_log_impl(&dword_1D311E000, v46, OS_LOG_TYPE_DEFAULT, "Sending immediate ETATrafficUpdate request from location: %{private}f, %{private}f | reason: %@ | routeID: %@", buf, 0x2Au);
            }

            v54 = [v109[5] route];
            v55 = v103[5];
            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 3221225472;
            v81[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_40;
            v81[3] = &unk_1E8430AB0;
            v82 = v23;
            v83 = self;
            v84 = v64;
            v85 = v63;
            [(MNSessionUpdateManager *)self _updateRouteAttributesFor:v82 route:v54 updatedLocation:v55 completion:v81];
          }

          objc_destroyWeak(v92);
          objc_destroyWeak(&location);
          _Block_object_dispose(v94, 8);
        }

        else
        {
          v44 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v44, OS_LOG_TYPE_ERROR, "Error creating ETATrafficUpdate request.", buf, 2u);
          }

          if ([v4 shouldRepeatAfterCompletion])
          {
            [(MNSessionUpdateManager *)self _continueETARequests];
          }
        }

        _Block_object_dispose(&v96, 8);

        goto LABEL_51;
      }

      v39 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v103[5] routeMatch];
        [v40 routeCoordinate];
        v41 = GEOPolylineCoordinateAsShortString();
        v42 = [v109[5] route];
        v43 = [v42 pointCount];
        *buf = 138412546;
        v115 = v41;
        v116 = 1024;
        LODWORD(v117) = v43;
        _os_log_impl(&dword_1D311E000, v39, OS_LOG_TYPE_DEFAULT, "User location [%@] is at or past end of route (%d). Skipping update.", buf, 0x12u);
      }

      if (![v4 shouldRepeatAfterCompletion])
      {
        goto LABEL_51;
      }
    }

    else
    {
      v38 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "Error creating ETATrafficUpdate request because userLocation is nil.", buf, 2u);
      }

      if (([v4 shouldRepeatAfterCompletion] & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    [(MNSessionUpdateManager *)self _continueETARequests];
LABEL_51:
    _Block_object_dispose(&v102, 8);

LABEL_52:
    _Block_object_dispose(&v108, 8);

    goto LABEL_53;
  }

  if (v8)
  {
    *buf = 0;
  }

LABEL_53:
  v60 = *MEMORY[0x1E69E9840];
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = GEOFindOrCreateLog();
  v10 = v9;
  if (!v6)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v13 = [*(a1 + 32) reason];
    if ((v13 - 1) > 6)
    {
      v14 = @"Unknown";
    }

    else
    {
      v14 = off_1E8430BB8[v13 - 1];
    }

    v16 = [*(*(*(a1 + 48) + 8) + 40) routeID];
    v17 = [v5 status];
    if (v17 <= 19)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = @"STATUS_INCOMPLETE";
          goto LABEL_33;
        }

        if (v17 == 5)
        {
          v18 = @"INVALID_REQUEST";
          goto LABEL_33;
        }
      }

      else
      {
        if (!v17)
        {
          v18 = @"STATUS_SUCCESS";
          goto LABEL_33;
        }

        if (v17 == 1)
        {
          v18 = @"STATUS_FAILED";
          goto LABEL_33;
        }
      }
    }

    else if (v17 <= 39)
    {
      if (v17 == 20)
      {
        v18 = @"FAILED_NO_RESULT";
        goto LABEL_33;
      }

      if (v17 == 30)
      {
        v18 = @"NEEDS_REFINEMENT";
        goto LABEL_33;
      }
    }

    else
    {
      switch(v17)
      {
        case '(':
          v18 = @"FAILED_NOT_AUTHORIZED";
          goto LABEL_33;
        case '2':
          v18 = @"STATUS_DEDUPED";
          goto LABEL_33;
        case '<':
          v18 = @"VERSION_MISMATCH";
LABEL_33:
          *buf = 138412802;
          v32 = v14;
          v33 = 2112;
          v34 = v16;
          v35 = 2112;
          v36[0] = v18;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Received ETATrafficUpdate response for reason: %@ | route: %@ | Status: %@", buf, 0x20u);

          goto LABEL_34;
      }
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
    goto LABEL_33;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [*(a1 + 32) reason];
    if ((v11 - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E8430BB8[v11 - 1];
    }

    v15 = [*(*(*(a1 + 48) + 8) + 40) routeID];
    *buf = 138412802;
    v32 = v12;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36[0] = v6;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Received ETATrafficUpdate error for reason: %@ | route: %@ | Error: %@", buf, 0x20u);
  }

LABEL_34:

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "[MNSessionUpdateManager _sendETARequestWithParameters:]_block_invoke";
      v33 = 2080;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v35 = 1024;
      LODWORD(v36[0]) = 484;
      WORD2(v36[0]) = 2080;
      *(v36 + 6) = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v20 = [v6 domain];
    v21 = GEOErrorDomain();
    if ([v20 isEqualToString:v21])
    {
      v22 = [v6 code];

      if (v22 == -2)
      {
        if ([*(a1 + 32) shouldRepeatAfterCompletion])
        {
          [WeakRetained _continueETARequests];
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

    if (v6 && [*(a1 + 32) shouldRetryImmediatelyOnError] && (objc_msgSend(*(a1 + 40), "routeAttributes"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "shouldRetryForError:", v6), v23, v24))
    {
      [*(a1 + 32) setShouldRetryImmediatelyOnError:0];
      if ([*(a1 + 32) shouldTrackPendingRequest])
      {
        v25 = WeakRetained[16];
        WeakRetained[16] = 0;
      }

      v26 = [*(a1 + 40) routeAttributes];
      [*(a1 + 32) setRouteAttributes:v26];

      [WeakRetained _sendETARequestWithParameters:*(a1 + 32)];
    }

    else
    {
      v27 = objc_alloc_init(MNSessionUpdateResponseInfo);
      [(MNSessionUpdateResponseInfo *)v27 setWaypoints:*(*(*(a1 + 56) + 8) + 40)];
      [(MNSessionUpdateResponseInfo *)v27 setRequest:*(a1 + 40)];
      [(MNSessionUpdateResponseInfo *)v27 setResponse:v5];
      [(MNSessionUpdateResponseInfo *)v27 setError:v6];
      [(MNSessionUpdateResponseInfo *)v27 setResponseTime:v8 - *(a1 + 80)];
      if ([*(a1 + 32) shouldTrackPendingRequest])
      {
        v28 = WeakRetained[16];
        WeakRetained[16] = 0;
      }

      [WeakRetained _handleETAResponse:v27 forRouteInfo:*(*(*(a1 + 48) + 8) + 40) etaRoute:*(*(*(a1 + 64) + 8) + 40) reason:{objc_msgSend(*(a1 + 32), "reason")}];
      if ([*(a1 + 32) shouldRepeatAfterCompletion])
      {
        [WeakRetained _continueETARequests];
      }
    }
  }

LABEL_52:

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_40(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setRouteAttributes:a2];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = *(a1 + 40);
  v5 = *(v4 + 96);
  *(v4 + 96) = v3;

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  return [v10 sendETATrafficUpdateRequest:v6 auditToken:v8 throttleToken:v9 finishedHandler:v11];
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    [*(a1 + 32) cancelRequest:*(a1 + 40)];
    goto LABEL_13;
  }

  v9 = objc_loadWeakRetained(WeakRetained + 1);
  v10 = [v9 routeInfoForUpdateManager:v8 reason:{objc_msgSend(*(a1 + 48), "reason")}];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v31 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v32 = "No route provided to ETATrafficUpdate request. Skipping update.";
    v33 = v31;
    v34 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v13 = objc_loadWeakRetained(v8 + 1);
  v14 = [v13 userLocationForUpdateManager:v8];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [v8 _updateETARequest:*(a1 + 40) withRouteInfo:*(*(*(a1 + 64) + 8) + 40) andUserLocation:*(*(*(a1 + 72) + 8) + 40)];
  v18 = *(*(a1 + 80) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v20 = [*(a1 + 56) _updateWaypointsForRequest:*(a1 + 40) routeInfo:*(*(*(a1 + 64) + 8) + 40) userLocation:*(*(*(a1 + 72) + 8) + 40) etaRoute:?];
    v21 = *(*(a1 + 88) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = objc_loadWeakRetained(v8 + 1);
    [v23 updateManager:v8 willSendETARequest:*(a1 + 40)];

    v24 = *(a1 + 40);
    v25 = [*(*(*(a1 + 64) + 8) + 40) route];
    v26 = *(*(*(a1 + 72) + 8) + 40);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_41;
    v35[3] = &unk_1E8430AE0;
    v36 = v5;
    v39 = v6;
    v27 = *(a1 + 40);
    v28 = *(a1 + 72);
    v37 = v27;
    v40 = v28;
    v29 = *(a1 + 48);
    v30 = *(a1 + 64);
    v38 = v29;
    v41 = v30;
    [v8 _updateRouteAttributesFor:v24 route:v25 updatedLocation:v26 completion:v35];

    goto LABEL_13;
  }

  v31 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v32 = "Error creating ETATrafficUpdate request.";
    v33 = v31;
    v34 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_1D311E000, v33, v34, v32, buf, 2u);
  }

LABEL_11:

  [*(a1 + 32) cancelRequest:*(a1 + 40)];
  if ([*(a1 + 48) shouldRepeatAfterCompletion])
  {
    [v8 _continueETARequests];
  }

LABEL_13:
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_43(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) setRouteAttributes:v4];
    [*(a1 + 40) sendConditionalETATrafficUpdateRequest:*(a1 + 32) timeWindowDuration:*(WeakRetained + 3) auditToken:*(WeakRetained + 4) throttleToken:*(a1 + 48) willSendRequestHandler:*(a1 + 56) finishedHandler:WeakRetained[11]];
  }
}

void __56__MNSessionUpdateManager__sendETARequestWithParameters___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRouteAttributes:a2];
  v3 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    [*(*(*(a1 + 64) + 8) + 40) coordinate];
    v7 = v6;
    [*(*(*(a1 + 64) + 8) + 40) coordinate];
    v9 = v8;
    v10 = [*(*(*(a1 + 64) + 8) + 40) routeMatch];
    [v10 routeCoordinate];
    v11 = GEOPolylineCoordinateAsShortString();
    v12 = [*(a1 + 48) reason];
    if ((v12 - 1) > 6)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E8430BB8[v12 - 1];
    }

    v14 = [*(*(*(a1 + 72) + 8) + 40) routeID];
    v18 = 134219267;
    v19 = v5;
    v20 = 2049;
    v21 = v7;
    v22 = 2049;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Sending conditional ETATrafficUpdate request %p from location: %{private}f, %{private}f (%@) | reason: %@ | routeID: %@", &v18, 0x3Eu);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [*(a1 + 40) formattedText];
    v18 = 138477827;
    v19 = v16;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEBUG, "Full request: %{private}@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_sendETARequestWithReason:(unint64_t)a3
{
  v5 = objc_opt_new();
  [v5 setReason:a3];
  [v5 setShouldUseConditionalRequest:self->_opportunisticRequestTimeWindow > 0.0];
  [v5 setShouldRepeatAfterCompletion:1];
  [v5 setShouldRetryImmediatelyOnError:1];
  [v5 setShouldTrackPendingRequest:1];
  [(MNSessionUpdateManager *)self _sendETARequestWithParameters:v5];
}

- (void)_updateRouteAttributesFor:(id)a3 route:(id)a4 updatedLocation:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v37 = a6;
  v12 = [v11 _navigation_geoLocation];
  v13 = [v12 latLng];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = v14;
  if (v13)
  {
    [v14 addObject:v13];
  }

  else
  {
    v16 = [v10 origin];
    v17 = [v16 latLng];
    [v15 addObject:v17];
  }

  v18 = [v11 routeMatch];
  v19 = [v18 legIndex];

  v20 = [v10 legs];
  v21 = [v20 count];

  if (v19 < v21)
  {
    do
    {
      v22 = [v10 legs];
      v23 = [v22 objectAtIndexedSubscript:v19];
      v24 = [v23 destination];
      v25 = [v24 latLng];
      [v15 addObject:v25];

      ++v19;
      v26 = [v10 legs];
      v27 = [v26 count];
    }

    while (v19 < v27);
  }

  v28 = [v9 routeAttributes];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = v9;
  }

  else
  {
    v31 = [v10 routeAttributes];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if ((v32 & 1) == 0)
    {
      v34 = [MNRouteAttributes alloc];
      v35 = [v10 routeAttributes];
      v33 = [(MNRouteAttributes *)v34 initWithAttributes:v35 latLngs:v15];

      goto LABEL_12;
    }

    v30 = v10;
  }

  v33 = [v30 routeAttributes];
LABEL_12:
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__MNSessionUpdateManager__updateRouteAttributesFor_route_updatedLocation_completion___block_invoke;
  v38[3] = &unk_1E8430A60;
  v39 = v37;
  v36 = v37;
  [(MNRouteAttributes *)v33 buildRouteAttributesForETAUpdateRequest:v9 queue:MEMORY[0x1E69E96A0] result:v38];
}

void __85__MNSessionUpdateManager__updateRouteAttributesFor_route_updatedLocation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Error updating route attributes with LPR/Vehicle info: %@. Continuing ETA update anyway", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_cancelPendingETARequest
{
  v17 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[MNSessionUpdateManager _cancelPendingETARequest]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v13 = 1024;
      v14 = 366;
      v15 = 2080;
      v16 = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v9, 0x26u);
    }
  }

  pendingETARequest = self->_pendingETARequest;
  if (pendingETARequest)
  {
    if ([(GEOETATrafficUpdateRequest *)pendingETARequest hasXpcUuid])
    {
      v4 = objc_alloc_init(MEMORY[0x1E69A1D50]);
      [v4 cancelRequest:self->_pendingETARequest];
    }

    v5 = self->_pendingETARequest;
    self->_pendingETARequest = 0;

    pendingETARoute = self->_pendingETARoute;
    self->_pendingETARoute = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_terminateETARequests
{
  v13 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = "[MNSessionUpdateManager _terminateETARequests]";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v9 = 1024;
      v10 = 358;
      v11 = 2080;
      v12 = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v5, 0x26u);
    }
  }

  [(NSTimer *)self->_etaTimer invalidate];
  [(MNSessionUpdateManager *)self _cancelPendingETARequest];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_continueETARequests
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained wantsETAUpdates];

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MNSessionUpdateManager__continueETARequests__block_invoke;
    block[3] = &unk_1E8430ED8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }
  }
}

- (void)_scheduleETATimerWithInterval:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[MNSessionUpdateManager _scheduleETATimerWithInterval:]";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v18 = 1024;
      v19 = 323;
      v20 = 2080;
      v21 = "[NSThread isMainThread]";
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", location, 0x26u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained wantsETAUpdates];

  if (v6)
  {
    [(NSTimer *)self->_etaTimer invalidate];
    objc_initWeak(location, self);
    v7 = MEMORY[0x1E695DFF0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__MNSessionUpdateManager__scheduleETATimerWithInterval___block_invoke;
    v13[3] = &unk_1E8430A38;
    objc_copyWeak(&v14, location);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v13 block:a3];
    etaTimer = self->_etaTimer;
    self->_etaTimer = v8;

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56__MNSessionUpdateManager__scheduleETATimerWithInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__MNSessionUpdateManager__scheduleETATimerWithInterval___block_invoke_2;
    v3[3] = &unk_1E8430ED8;
    v4 = WeakRetained;
    MNRunAsyncOnNavigationQueue(v3);
  }
}

- (void)resumeUpdateRequestsForSubscriber:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__MNSessionUpdateManager_resumeUpdateRequestsForSubscriber___block_invoke;
    v8[3] = &unk_1E8430D50;
    v8[4] = self;
    v9 = v4;
    MNRunAsyncOnNavigationQueue(v8);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MNSessionUpdateManager resumeUpdateRequestsForSubscriber:]";
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v14 = 1024;
      v15 = 300;
      v16 = 2080;
      v17 = "subscriber != nil";
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __60__MNSessionUpdateManager_resumeUpdateRequestsForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  if ([v2 unsignedIntegerValue] != 1)
  {
    [*(*(a1 + 32) + 56) setObject:&unk_1F4EE2AD0 forKey:*(a1 + 40)];
    *(*(a1 + 32) + 120) = 0;
    [*(*(a1 + 32) + 48) setActive:(*(*(a1 + 32) + 120) & 1) == 0];
  }
}

- (void)pauseUpdateRequestsForSubscriber:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MNSessionUpdateManager_pauseUpdateRequestsForSubscriber___block_invoke;
    v8[3] = &unk_1E8430D50;
    v8[4] = self;
    v9 = v4;
    MNRunAsyncOnNavigationQueue(v8);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "[MNSessionUpdateManager pauseUpdateRequestsForSubscriber:]";
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
      v14 = 1024;
      v15 = 277;
      v16 = 2080;
      v17 = "subscriber != nil";
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __59__MNSessionUpdateManager_pauseUpdateRequestsForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [v2 unsignedIntegerValue];
    v3 = v6;
    if (v4)
    {
      [*(*(a1 + 32) + 56) setObject:&unk_1F4EE2AB8 forKey:*(a1 + 40)];
      v5 = [*(a1 + 32) _hasAtLeastOneActiveSubscriber];
      v3 = v6;
      if ((v5 & 1) == 0)
      {
        *(*(a1 + 32) + 120) = 1;
        [*(*(a1 + 32) + 48) setActive:(*(*(a1 + 32) + 120) & 1) == 0];
        v3 = v6;
      }
    }
  }
}

- (void)requestUpdateForETAUPosition:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MNSessionUpdateManager_requestUpdateForETAUPosition___block_invoke;
  v6[3] = &unk_1E8430D50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __55__MNSessionUpdateManager_requestUpdateForETAUPosition___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 64) isValid])
  {
    if (*(*(a1 + 32) + 104) == 1)
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Last request was server-driven. Skipping server update.", &v18, 2u);
      }
    }

    else
    {
      v3 = [MEMORY[0x1E695DF00] now];
      v2 = v3;
      v4 = *(a1 + 32);
      if (*(v4 + 96))
      {
        [v3 timeIntervalSinceDate:?];
        v6 = v5;
        [*(a1 + 40) timeSinceLastUpdate];
        if (v6 < v7)
        {
          v15 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            [*(a1 + 40) timeSinceLastUpdate];
            v18 = 134218240;
            v19 = v6;
            v20 = 2048;
            v21 = v16;
            _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Time since last update (%f seconds ago) is within minimum (%f seconds). Skipping server update.", &v18, 0x16u);
          }

          goto LABEL_14;
        }

        v4 = *(a1 + 32);
      }

      v8 = [*(v4 + 64) fireDate];
      [v8 timeIntervalSinceDate:v2];
      v10 = v9;

      v11 = *(*(a1 + 32) + 72) + v10;
      v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v11];
      [*(*(a1 + 32) + 64) setFireDate:v12];

      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 40) routeCoordinate];
        GEOPolylineCoordinateAsShortString();
        v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v18 = 138412546;
        v19 = v14;
        v20 = 2048;
        v21 = v11;
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Request ETA update for server provided position at [%@]. Scheduling the next update for %f seconds from now", &v18, 0x16u);
      }

      [*(a1 + 32) _sendETARequestWithReason:2];
      *(*(a1 + 32) + 104) = 1;
    }

LABEL_14:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)requestImmediateUpdateWithReason:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__MNSessionUpdateManager_requestImmediateUpdateWithReason___block_invoke;
  v3[3] = &unk_1E8430A10;
  v3[4] = self;
  v3[5] = a3;
  MNRunAsyncOnNavigationQueue(v3);
}

uint64_t __59__MNSessionUpdateManager_requestImmediateUpdateWithReason___block_invoke(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Requesting immediate ETAU update.", v4, 2u);
  }

  *(*(a1 + 32) + 104) = 0;
  [*(a1 + 32) _cancelPendingETARequest];
  return [*(a1 + 32) _sendETARequestWithReason:*(a1 + 40)];
}

- (void)sendFinalETAURequestWithReason:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained wantsETAUpdates];

  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Sending final ETA update.", v9, 2u);
    }

    v8 = objc_opt_new();
    [v8 setReason:a3];
    [v8 setShouldUseConditionalRequest:0];
    [v8 setShouldRepeatAfterCompletion:0];
    [v8 setShouldRetryImmediatelyOnError:0];
    [v8 setShouldTrackPendingRequest:0];
    [(MNSessionUpdateManager *)self _sendETARequestWithParameters:v8];
  }
}

- (void)restartUpdateTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MNSessionUpdateManager_restartUpdateTimer__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__MNSessionUpdateManager_restartUpdateTimer__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 64))
  {
    v1 = result;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "restarting ETA updates", v5, 2u);
    }

    [*(*(v1 + 32) + 64) invalidate];
    v3 = *(v1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;

    return [*(v1 + 32) _continueETARequests];
  }

  return result;
}

- (void)stopUpdateRequests
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MNSessionUpdateManager_stopUpdateRequests__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__MNSessionUpdateManager_stopUpdateRequests__block_invoke(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "stopping transit/ETA updates", v6, 2u);
  }

  [*(*(a1 + 32) + 48) setActive:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  return [*(a1 + 32) _terminateETARequests];
}

- (void)startUpdateRequestsForRoutes:(id)a3 andNavigationType:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MNSessionUpdateManager_startUpdateRequestsForRoutes_andNavigationType___block_invoke;
    block[3] = &unk_1E84309E8;
    v9 = a4;
    block[4] = self;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(MNSessionUpdateManager *)self stopUpdateRequests];
  }
}

void __73__MNSessionUpdateManager_startUpdateRequestsForRoutes_andNavigationType___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 3)
  {
    if (*(*(a1 + 32) + 64))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ETA updates already started."];
      v33 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v41 = "[MNSessionUpdateManager startUpdateRequestsForRoutes:andNavigationType:]_block_invoke";
        v42 = 2080;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNSessionUpdateManager.m";
        v44 = 1024;
        v45 = 157;
        v46 = 2080;
        v47 = "_etaTimer == nil";
        v48 = 2112;
        v49 = v32;
        _os_log_impl(&dword_1D311E000, v33, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    v2 = [MEMORY[0x1E695DF00] now];
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    [*(a1 + 32) _scheduleETATimerWithInterval:*(*(a1 + 32) + 80)];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = a1;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 transitRouteUpdateRequest];
        if (v13)
        {
          v14 = [v12 route];
          v15 = [v14 suggestedRoute];
          v16 = [v15 supportsRouteUpdates];

          if (v16)
          {
            if (fabs(v10) < 0.000001)
            {
              v17 = [v12 route];
              [v17 transitUpdateInitialDelay];
              v10 = v18;
            }

            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v19 = [v5 count];
  v20 = *(*(v34 + 32) + 48);
  if (v19)
  {
    if (!v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E69A2690]) initWithDelegate:*(v34 + 32) andInitialTTL:v10];
      v22 = *(v34 + 32);
      v23 = *(v22 + 48);
      *(v22 + 48) = v21;

      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(v34 + 32) + 48);
        v26 = [v5 count];
        *buf = 138412546;
        v41 = v25;
        v42 = 2048;
        v43 = v26;
        _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_DEFAULT, "creating transit updater %@ for %lu requests", buf, 0x16u);
      }

      v20 = *(*(v34 + 32) + 48);
    }

    [v20 setRequests:v5];
    [*(*(v34 + 32) + 48) setActive:(*(*(v34 + 32) + 120) & 1) == 0];
  }

  else if (v20)
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(*(v34 + 32) + 48);
      *buf = 138412290;
      v41 = v28;
      _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEFAULT, "tearing down transit updater %@ because we have no requests", buf, 0xCu);
    }

    [*(*(v34 + 32) + 48) setActive:0];
    v29 = *(v34 + 32);
    v30 = *(v29 + 48);
    *(v29 + 48) = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSTimer *)self->_etaTimer invalidate];
  [(GEOTransitRouteUpdater *)self->_transitUpdater setActive:0];
  pendingETARequest = self->_pendingETARequest;
  if (pendingETARequest && [(GEOETATrafficUpdateRequest *)pendingETARequest hasXpcUuid])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A1D50]);
    [v4 cancelRequest:self->_pendingETARequest];
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Deallocated.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = MNSessionUpdateManager;
  [(MNSessionUpdateManager *)&v6 dealloc];
}

- (MNSessionUpdateManager)init
{
  v11.receiver = self;
  v11.super_class = MNSessionUpdateManager;
  v2 = [(MNSessionUpdateManager *)&v11 init];
  if (v2)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Initializing.", v10, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    subscribers = v2->_subscribers;
    v2->_subscribers = v4;

    v2->_isPaused = 1;
    GEOConfigGetDouble();
    v2->_etaRequestInterval = fmax(v6, 5.0);
    GEOConfigGetDouble();
    if (etaRequestInterval <= 0.0)
    {
      etaRequestInterval = v2->_etaRequestInterval;
    }

    v2->_initialRequestDelay = etaRequestInterval;
    v2->_opportunisticRequestTimeWindow = 150.0;
    v2->_maxAlternateRoutesCount = 2;
    v8 = v2;
  }

  return v2;
}

@end