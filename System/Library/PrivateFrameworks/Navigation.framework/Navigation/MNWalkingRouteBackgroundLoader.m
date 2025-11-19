@interface MNWalkingRouteBackgroundLoader
- (MNWalkingRouteBackgroundLoaderDelegate)delegate;
- (id)_requestWalkingRouteWithHandler:(id)a3;
- (unint64_t)_requestTypeForArrivalState:(int64_t)a3;
- (void)_handleWalkingRouteResponse:(id)a3;
- (void)_updateForLocation:(id)a3;
- (void)_updateWalkingRoute;
- (void)dealloc;
- (void)setNavigationSessionState:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MNWalkingRouteBackgroundLoader

- (MNWalkingRouteBackgroundLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleWalkingRouteResponse:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_walkingRouteInfo, a3);
  if (v9)
  {
    v5 = [(MNNavigationSessionState *)self->_navigationSessionState location];
    [(MNWalkingRouteBackgroundLoader *)self _updateForLocation:v5];
  }

  pendingRequest = self->_pendingRequest;
  self->_pendingRequest = 0;

  v7 = +[MNTimeManager currentDate];
  dateSinceLastRouteRequest = self->_dateSinceLastRouteRequest;
  self->_dateSinceLastRouteRequest = v7;
}

- (void)_updateForLocation:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_isFetchingWalkingRoutes)
  {
    if (self->_walkingRouteInfo)
    {
      v6 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v4 course:-1.0];
      v7 = objc_alloc(MEMORY[0x1E69A2548]);
      v8 = [(MNActiveRouteInfo *)self->_walkingRouteInfo route];
      v9 = [(MNNavigationSessionState *)self->_navigationSessionState auditToken];
      v10 = [v7 initWithRoute:v8 auditToken:v9];

      v11 = [v10 matchToRouteWithLocation:v6];
      GEOConfigGetDouble();
      v13 = v12;
      [v11 distanceFromRoute];
      if (v14 <= v13)
      {
        v28 = +[MNDisplayETAInfo displayETAInfoForRouteInfo:routeCoordinate:](MNDisplayETAInfo, "displayETAInfoForRouteInfo:routeCoordinate:", self->_walkingRouteInfo, [v11 routeCoordinate]);
        if (v28)
        {
          v29 = [(MNActiveRouteInfo *)self->_walkingRouteInfo displayETAInfo];
          if (!v29 || (v30 = [v28 displayRemainingMinutesToEndOfRoute], v30 != objc_msgSend(v29, "displayRemainingMinutesToEndOfRoute")))
          {
            [(MNActiveRouteInfo *)self->_walkingRouteInfo setDisplayETAInfo:v28];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v32 = objc_opt_respondsToSelector();

            if (v32)
            {
              v33 = objc_loadWeakRetained(&self->_delegate);
              [v33 walkingRouteBackgroundLoader:self didUpdateWalkingRoute:self->_walkingRouteInfo];
            }
          }
        }
      }

      else
      {
        v15 = MNGetMNWalkingRouteBackgroundLoaderLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          [v11 distanceFromRoute];
          v35 = 134217984;
          v36 = v16;
          _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Location too far from route: %0.1f", &v35, 0xCu);
        }

        [(MNWalkingRouteBackgroundLoader *)self _updateWalkingRoute];
      }
    }

    else if (fabs(self->_lastFailedRequestCoordinate.longitude) <= 180.0)
    {
      latitude = self->_lastFailedRequestCoordinate.latitude;
      if (latitude >= -90.0 && latitude <= 90.0 && !self->_pendingRequest)
      {
        [v4 _navigation_geoCoordinate3D];
        v19 = v18;
        v21 = v20;
        v22 = self->_lastFailedRequestCoordinate.latitude;
        longitude = self->_lastFailedRequestCoordinate.longitude;
        GEOCalculateDistance();
        v25 = v24;
        GEOConfigGetDouble();
        if (v25 > v26)
        {
          v27 = MNGetMNWalkingRouteBackgroundLoaderLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v35 = 134284033;
            v36 = v19;
            v37 = 2049;
            v38 = v21;
            v39 = 2049;
            v40 = v25;
            _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_INFO, "Retrying request for background loading route from %{private}f, %{private}f. Distance from last failed request is %{private}0.1f meters.", &v35, 0x20u);
          }

          [(MNWalkingRouteBackgroundLoader *)self _updateWalkingRoute];
        }
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_updateWalkingRoute
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_isFetchingWalkingRoutes && !self->_pendingRequest)
  {
    if (self->_dateSinceLastRouteRequest && (GEOConfigGetDouble(), v4 = v3, +[MNTimeManager currentDate](MNTimeManager, "currentDate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 timeIntervalSinceDate:self->_dateSinceLastRouteRequest], v7 = v6, v5, v7 < v4))
    {
      v8 = MNGetMNWalkingRouteBackgroundLoaderLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v23 = v7;
        v24 = 2048;
        v25 = v4;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "Not requesting new background walking route because only %0.1fs has elapsed since the previous request, and at least %0.1fs is required.", buf, 0x16u);
      }
    }

    else
    {
      v9 = [(MNNavigationSessionState *)self->_navigationSessionState location];
      [v9 _navigation_geoCoordinate3D];
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = MNGetMNWalkingRouteBackgroundLoaderLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134283777;
        v23 = *&v11;
        v24 = 2049;
        v25 = *&v13;
        _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_INFO, "Requesting walking background route from server from %{private}f, %{private}f.", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__MNWalkingRouteBackgroundLoader__updateWalkingRoute__block_invoke;
      v20[3] = &unk_1E842EF88;
      v20[4] = self;
      v21[1] = v11;
      v21[2] = v13;
      v21[3] = v15;
      objc_copyWeak(v21, buf);
      v17 = [(MNWalkingRouteBackgroundLoader *)self _requestWalkingRouteWithHandler:v20];
      pendingRequest = self->_pendingRequest;
      self->_pendingRequest = v17;

      objc_destroyWeak(v21);
      objc_destroyWeak(buf);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __53__MNWalkingRouteBackgroundLoader__updateWalkingRoute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    *(v13 + 64) = *(a1 + 64);
    *(v13 + 48) = v14;
    v15 = a2;
    v8 = MNGetMNWalkingRouteBackgroundLoaderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v6;
      v9 = "Error requesting walking background route from server: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = a2;
    v8 = MNGetMNWalkingRouteBackgroundLoaderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v9 = "Received walking background route.";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 2;
LABEL_7:
      _os_log_impl(&dword_1D311E000, v10, v11, v9, &v18, v12);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleWalkingRouteResponse:a2];

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_requestWalkingRouteWithHandler:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(MNNavigationSessionState *)self->_navigationSessionState location];
    v6 = v5;
    if (v5 && ([v5 coordinate], CLLocationCoordinate2DIsValid(v35)))
    {
      v7 = [(MNNavigationSessionState *)self->_navigationSessionState currentWaypoint];
      if (v7)
      {
        v8 = [(MNNavigationSessionState *)self->_navigationSessionState currentRouteInfo];
        v9 = [v8 route];

        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v6];
          v11 = [objc_alloc(MEMORY[0x1E69A1CC8]) initWithLocation:v10 isCurrentLocation:1];
          v28 = [v9 routeAttributes];
          v12 = [v9 routeInitializerData];
          v13 = [v12 directionsRequest];
          [v13 commonOptions];
          v14 = v29 = v7;

          v15 = [(MNNavigationSessionState *)self->_navigationSessionState arrivalState];
          v16 = objc_alloc_init(MEMORY[0x1E69A1D30]);
          v17 = MNNavigationQueue();
          [v16 setCallbackQueue:v17];

          [v16 setRequestType:{-[MNWalkingRouteBackgroundLoader _requestTypeForArrivalState:](self, "_requestTypeForArrivalState:", v15)}];
          [v16 setCurrentLocation:v10];
          v33[0] = v11;
          v33[1] = v29;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
          [v16 setWaypoints:v18];

          [v16 setCurrentRoute:v9];
          [v16 setTransportType:2];
          [v16 setRouteAttributes:v28];
          [v16 setCommonOptions:v14];
          [v16 setMaxRouteCount:1];
          [v16 setHasArrived:(v15 & 0xFFFFFFFFFFFFFFFDLL) == 4];
          v19 = [(MNNavigationSessionState *)self->_navigationSessionState auditToken];
          [v16 setAuditToken:v19];

          v20 = [(MNNavigationSessionState *)self->_navigationSessionState requestingAppIdentifier];
          [v16 setRequestingAppIdentifier:v20];

          v21 = [MEMORY[0x1E69A1D18] sharedService];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __66__MNWalkingRouteBackgroundLoader__requestWalkingRouteWithHandler___block_invoke;
          v30[3] = &unk_1E842EF50;
          v31 = v4;
          v22 = [v21 requestRoutes:v16 handler:v30];

          v7 = v29;
        }

        else
        {
          v25 = MNGetMNWalkingRouteBackgroundLoaderLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "Error requesting walking background route because the navigation session state's current route is invalid.", buf, 2u);
          }

          (*(v4 + 2))(v4, 0, 0);
          v22 = 0;
        }
      }

      else
      {
        v24 = MNGetMNWalkingRouteBackgroundLoaderLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Error requesting walking background route because the navigation session state's destination waypoint is invalid.", buf, 2u);
        }

        (*(v4 + 2))(v4, 0, 0);
        v22 = 0;
      }
    }

    else
    {
      v23 = MNGetMNWalkingRouteBackgroundLoaderLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_ERROR, "Error requesting walking background route because the navigation session state's location is invalid.", buf, 2u);
      }

      (*(v4 + 2))(v4, 0, 0);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

void __66__MNWalkingRouteBackgroundLoader__requestWalkingRouteWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = MNGetMNWalkingRouteBackgroundLoaderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error requesting walking background route from server: %@", &v14, 0xCu);
    }
  }

  v11 = [v7 firstObject];
  if (v11)
  {
    v12 = [[MNActiveRouteInfo alloc] initWithRoute:v11];
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_requestTypeForArrivalState:(int64_t)a3
{
  if (a3 == 5)
  {
    return 10;
  }

  else
  {
    return 9;
  }
}

- (void)stop
{
  if (self->_isFetchingWalkingRoutes)
  {
    v3 = MNGetMNWalkingRouteBackgroundLoaderLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Stopped background loading of walking route.", v9, 2u);
    }

    [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
    self->_isFetchingWalkingRoutes = 0;
    dateSinceLastRouteRequest = self->_dateSinceLastRouteRequest;
    self->_dateSinceLastRouteRequest = 0;

    walkingRouteInfo = self->_walkingRouteInfo;
    if (walkingRouteInfo)
    {
      self->_walkingRouteInfo = 0;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 walkingRouteBackgroundLoader:self didUpdateWalkingRoute:0];
      }
    }
  }
}

- (void)start
{
  if (self->_isFetchingWalkingRoutes)
  {
    v2 = MNGetMNWalkingRouteBackgroundLoaderLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "[MNWalkingRouteBackground start]: Already fetching walking routes.", buf, 2u);
    }
  }

  else
  {
    self->_isFetchingWalkingRoutes = 1;
    dateSinceLastRouteRequest = self->_dateSinceLastRouteRequest;
    self->_dateSinceLastRouteRequest = 0;

    *&self->_lastFailedRequestCoordinate.latitude = kGEOLocationCoordinate3DInvalid_12499;
    self->_lastFailedRequestCoordinate.altitude = 1.79769313e308;
    v5 = MNGetMNWalkingRouteBackgroundLoaderLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Started background loading of walking route.", v6, 2u);
    }

    [(MNWalkingRouteBackgroundLoader *)self _updateWalkingRoute];
  }
}

- (void)setNavigationSessionState:(id)a3
{
  v10 = a3;
  v4 = [(MNNavigationSessionState *)self->_navigationSessionState location];
  v5 = [v10 location];

  v6 = [(MNWalkingRouteBackgroundLoader *)self _requestTypeForArrivalState:[(MNNavigationSessionState *)self->_navigationSessionState arrivalState]];
  v7 = [v10 copy];
  navigationSessionState = self->_navigationSessionState;
  self->_navigationSessionState = v7;

  if (v4 != v5 && self->_isFetchingWalkingRoutes)
  {
    v9 = [(MNNavigationSessionState *)self->_navigationSessionState location];
    [(MNWalkingRouteBackgroundLoader *)self _updateForLocation:v9];
  }

  if (v6 != -[MNWalkingRouteBackgroundLoader _requestTypeForArrivalState:](self, "_requestTypeForArrivalState:", [v10 arrivalState]))
  {
    [(MNWalkingRouteBackgroundLoader *)self _updateWalkingRoute];
  }
}

- (void)dealloc
{
  [(MNWalkingRouteBackgroundLoader *)self stop];
  v3.receiver = self;
  v3.super_class = MNWalkingRouteBackgroundLoader;
  [(MNWalkingRouteBackgroundLoader *)&v3 dealloc];
}

@end