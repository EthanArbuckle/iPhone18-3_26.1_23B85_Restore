@interface MNTunnelLocationProjector
- ($212C09783140BCCD23384160D545CE0D)_projectedRouteCoordinateFrom:(id)a3 timeInterval:(double)a4 tunnelRange:(GEOPolylineCoordinateRange)a5;
- (GEOPolylineCoordinateRange)_tunnelRangeForRouteCoordinate:(id)a3;
- (MNTunnelLocationProjector)init;
- (MNTunnelLocationProjectorDelegate)delegate;
- (id)_projectedLocationFrom:(id)a3 timeInterval:(double)a4 tunnelRange:(GEOPolylineCoordinateRange)a5;
- (id)_tunnelRanges;
- (void)_locationUpdateOverdueTimerFired;
- (void)_resetTimerWithTimeout:(double)a3;
- (void)dealloc;
- (void)stop;
- (void)updateForRouteInfo:(id)a3;
- (void)updateLocation:(id)a3;
@end

@implementation MNTunnelLocationProjector

- (MNTunnelLocationProjectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($212C09783140BCCD23384160D545CE0D)_projectedRouteCoordinateFrom:(id)a3 timeInterval:(double)a4 tunnelRange:(GEOPolylineCoordinateRange)a5
{
  end = a5.end;
  start = a5.start;
  if (GEOPolylineCoordinateIsInvalid())
  {
    return *MEMORY[0x1E69A1918];
  }

  else
  {
    v11 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
    v12 = [(MNActiveRouteInfo *)self->_currentRouteInfo etaRoute];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    *&v32[3] = a4;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2810000000;
    v13 = *MEMORY[0x1E69A1918];
    v30 = "";
    v31 = v13;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__MNTunnelLocationProjector__projectedRouteCoordinateFrom_timeInterval_tunnelRange___block_invoke;
    v21[3] = &unk_1E8430228;
    v25 = start;
    v26 = end;
    v23 = v32;
    v24 = &v27;
    v14 = v11;
    v22 = v14;
    [v14 iterateTravelTimeRangesFromRouteCoordinate:a3 etaRoute:v12 handler:v21];
    v15 = v28[4];
    IsValid = GEOPolylineCoordinateIsValid();
    v10 = v28[4];
    if (IsValid)
    {
      IsABeforeB = GEOPolylineCoordinateIsABeforeB();
      if (IsABeforeB)
      {
        v18 = end;
      }

      else
      {
        v18 = start;
      }

      if (IsABeforeB)
      {
        end = start;
      }

      if (GEOPolylineCoordinateIsABeforeB())
      {
        v19 = v10;
      }

      else
      {
        v19 = v18;
      }

      if (GEOPolylineCoordinateIsABeforeB())
      {
        v10 = v19;
      }

      else
      {
        v10 = end;
      }

      v28[4] = v10;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v32, 8);
  }

  return v10;
}

uint64_t __84__MNTunnelLocationProjector__projectedRouteCoordinateFrom_timeInterval_tunnelRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double a5, double a6)
{
  v12 = *(a1 + 56);
  result = GEOPolylineCoordinateIsABeforeB();
  if ((result & 1) == 0)
  {
    v14 = *(a1 + 64);
    result = GEOPolylineCoordinateIsABeforeB();
    if (result)
    {
LABEL_5:
      *a4 = 1;
      return result;
    }

    v15 = *(*(*(a1 + 40) + 8) + 24);
    if (v15 < a6)
    {
      result = [*(a1 + 32) routeCoordinateForDistance:a2 afterRouteCoordinate:v15 * a5 / a6];
      *(*(*(a1 + 48) + 8) + 32) = result;
      goto LABEL_5;
    }

    *(*(*(a1 + 48) + 8) + 32) = a3;
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - a6;
  }

  return result;
}

- (id)_projectedLocationFrom:(id)a3 timeInterval:(double)a4 tunnelRange:(GEOPolylineCoordinateRange)a5
{
  end = a5.end;
  start = a5.start;
  v9 = a3;
  if ([v9 state] == 1)
  {
    v10 = [v9 routeMatch];
    v11 = -[MNTunnelLocationProjector _projectedRouteCoordinateFrom:timeInterval:tunnelRange:](self, "_projectedRouteCoordinateFrom:timeInterval:tunnelRange:", [v10 routeCoordinate], start, end, a4);
    if (GEOPolylineCoordinateIsInvalid())
    {
      v12 = 0;
    }

    else
    {
      v13 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
      v14 = objc_alloc(MEMORY[0x1E69A2540]);
      v15 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
      [v13 pointAtRouteCoordinate:v11];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 stepIndexForRouteCoordinate:v11];
      [v13 courseAtRouteCoordinateIndex:v11];
      v24 = v23;
      v25 = +[MNTimeManager currentDate];
      v26 = [v14 initWithRoute:v15 routeCoordinate:v11 locationCoordinate:v22 stepIndex:v25 matchedCourse:v17 timestamp:{v19, v21, v24}];

      [v26 setModifiedHorizontalAccuracy:10.0];
      [v26 setIsTunnelProjection:1];
      [v26 setIsGoodMatch:1];
      [v26 setShouldProjectLocationAlongRoute:1];
      memset(&v37[2], 0, 156);
      if (v9)
      {
        [v9 clientLocation];
      }

      [v26 locationCoordinate];
      *(&v37[2] + 4) = v27;
      [v26 locationCoordinate];
      *(&v37[2] + 12) = v28;
      *(&v37[8] + 4) = *(&v37[2] + 4);
      [v26 matchedCourse];
      *(&v37[5] + 12) = v29;
      [v13 distanceBetweenRouteCoordinate:objc_msgSend(v10 andRouteCoordinate:{"routeCoordinate"), v11}];
      *(&v37[4] + 12) = v30 / a4;
      v31 = [v26 timestamp];
      [v31 timeIntervalSinceReferenceDate];
      *(&v37[6] + 12) = v32;

      v33 = objc_alloc(MEMORY[0x1E6985C40]);
      v36[6] = v37[8];
      v36[7] = v37[9];
      v37[0] = v37[10];
      *(v37 + 12) = *(&v37[10] + 12);
      v36[2] = v37[4];
      v36[3] = v37[5];
      v36[4] = v37[6];
      v36[5] = v37[7];
      v36[0] = v37[2];
      v36[1] = v37[3];
      v34 = [v33 initWithClientLocation:v36];
      v12 = [[MNLocation alloc] initWithRouteMatch:v26 rawLocation:v34 locationFixType:2];
      [(MNLocation *)v12 setLocationUnreliable:1];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_locationUpdateOverdueTimerFired
{
  v55 = *MEMORY[0x1E69E9840];
  lastUnprojectedLocation = self->_lastUnprojectedLocation;
  if (lastUnprojectedLocation && self->_lastUnprojectedLocationDate && self->_currentRouteInfo && -[MNLocation state](lastUnprojectedLocation, "state") == 1 && (-[MNLocation routeMatch](self->_lastUnprojectedLocation, "routeMatch"), v4 = objc_claimAutoreleasedReturnValue(), v5 = -[MNTunnelLocationProjector _tunnelRangeForRouteCoordinate:](self, "_tunnelRangeForRouteCoordinate:", [v4 routeCoordinate]), v7 = v6, v4, !GEOPolylineCoordinateRangeIsInvalid()))
  {
    v9 = +[MNTimeManager currentDate];
    [v9 timeIntervalSinceDate:self->_lastUnprojectedLocationDate];
    v11 = v10;

    if (v11 < 0.0)
    {
      v43 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v46 = "[MNTunnelLocationProjector _locationUpdateOverdueTimerFired]";
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTunnelLocationProjector.m";
        v49 = 1024;
        *v50 = 192;
        *&v50[4] = 2080;
        *&v50[6] = "timeInterval >= 0";
        _os_log_impl(&dword_1D311E000, v43, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
      }
    }

    if (v11 >= 0.0)
    {
      v12 = +[MNLocationManager shared];
      [v12 timeScale];
      v14 = v11 / v13;

      if (!self->_isProjecting)
      {
        v15 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
        [v15 pointAtRouteCoordinate:v5];
        v17 = v16;
        v19 = v18;
        [v15 pointAtRouteCoordinate:v7];
        v21 = v20;
        v23 = v22;
        v24 = MNGetMNTunnelProjectorLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = GEOPolylineCoordinateRangeAsString();
          [v15 distanceBetweenRouteCoordinate:v5 andRouteCoordinate:v7];
          *buf = 138413570;
          v46 = v25;
          v47 = 2048;
          v48 = v17;
          v49 = 2048;
          *v50 = v19;
          *&v50[8] = 2048;
          *&v50[10] = v21;
          v51 = 2048;
          v52 = v23;
          v53 = 2048;
          v54 = v26;
          _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_INFO, "Starting location projection through tunnel [%@] (%f, %f) to (%f, %f), tunnel length: %0.1f meters", buf, 0x3Eu);
        }
      }

      v27 = [(MNTunnelLocationProjector *)self _projectedLocationFrom:self->_lastUnprojectedLocation timeInterval:v5 tunnelRange:v7, v14];
      if (v27)
      {
        v28 = MNGetMNTunnelProjectorLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v44 = [v27 routeMatch];
          [v44 routeCoordinate];
          v29 = GEOPolylineCoordinateAsString();
          v30 = [v27 routeMatch];
          [v30 locationCoordinate];
          v32 = v31;
          v33 = [v27 routeMatch];
          [v33 locationCoordinate];
          v35 = v34;
          v36 = [(MNActiveRouteInfo *)self->_currentRouteInfo route];
          v37 = [(MNLocation *)self->_lastUnprojectedLocation routeMatch];
          v38 = [v37 routeCoordinate];
          v39 = [v27 routeMatch];
          [v36 distanceBetweenRouteCoordinate:v38 andRouteCoordinate:{objc_msgSend(v39, "routeCoordinate")}];
          *buf = 134219010;
          v46 = *&v14;
          v47 = 2112;
          v48 = v29;
          v49 = 2048;
          *v50 = v32;
          *&v50[8] = 2048;
          *&v50[10] = v35;
          v51 = 2048;
          v52 = v40;
          _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_INFO, "Time: %0.1fs, projected location: [%@] (%f, %f), distance: %0.1f meters", buf, 0x34u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained tunnelLocationProjector:self didUpdateLocation:v27];
      }

      v42 = +[MNLocationManager shared];
      [v42 expectedGpsUpdateInterval];
      [(MNTunnelLocationProjector *)self _resetTimerWithTimeout:?];

      self->_isProjecting = v27 != 0;
    }
  }

  else
  {
    self->_isProjecting = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_resetTimerWithTimeout:(double)a3
{
  v5 = +[MNLocationManager shared];
  [v5 timeScale];
  v7 = v6;

  [(MNDispatchTimer *)self->_locationUpdateOverdueTimer cancel];
  objc_initWeak(&location, self);
  v8 = [MNDispatchTimer alloc];
  v9 = MNNavigationQueue();
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __52__MNTunnelLocationProjector__resetTimerWithTimeout___block_invoke;
  v15 = &unk_1E8430EA0;
  objc_copyWeak(&v16, &location);
  v10 = [(MNDispatchTimer *)v8 initWithTime:v9 queue:&v12 handler:a3 / v7];
  locationUpdateOverdueTimer = self->_locationUpdateOverdueTimer;
  self->_locationUpdateOverdueTimer = v10;

  [(MNDispatchTimer *)self->_locationUpdateOverdueTimer activate:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __52__MNTunnelLocationProjector__resetTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _locationUpdateOverdueTimerFired];
}

- (id)_tunnelRanges
{
  v28 = *MEMORY[0x1E69E9840];
  p_tunnelRanges = &self->_tunnelRanges;
  tunnelRanges = self->_tunnelRanges;
  if (tunnelRanges)
  {
    v20 = tunnelRanges;
  }

  else
  {
    currentRouteInfo = self->_currentRouteInfo;
    if (currentRouteInfo)
    {
      v19 = p_tunnelRanges;
      v5 = [(MNActiveRouteInfo *)currentRouteInfo route];
      v20 = [MEMORY[0x1E695DF70] array];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = [v5 cameraInfos];
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            v12 = [v11 styleAttributes];
            v13 = [v12 attributes];
            v14 = [v13 firstObject];

            if ([v14 key] == 65639)
            {
              v21 = 0;
              v22 = 0;
              v21 = [v11 routeCoordinateRange];
              v22 = v15;
              v21 = [v5 routeCoordinateForDistance:v21 beforeRouteCoordinate:100.0];
              v16 = [MEMORY[0x1E696B098] value:&v21 withObjCType:"{GEOPolylineCoordinateRange={?=If}{?=If}}"];
              [(NSArray *)v20 addObject:v16];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v8);
      }

      objc_storeStrong(v19, v20);
    }

    else
    {
      v20 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v20;
}

- (GEOPolylineCoordinateRange)_tunnelRangeForRouteCoordinate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!GEOPolylineCoordinateIsInvalid())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(MNTunnelLocationProjector *)self _tunnelRanges];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v17 = 0uLL;
          [v9 getValue:&v17];
          if (GEOPolylineCoordinateRangeIsValid() && (GEOPolylineCoordinateInRange() & 1) != 0)
          {

            goto LABEL_14;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x1E69A1920];
LABEL_14:
  v11 = *(&v17 + 1);
  v10 = v17;
  v12 = *MEMORY[0x1E69E9840];
  result.end = v11;
  result.start = v10;
  return result;
}

- (void)stop
{
  currentRouteInfo = self->_currentRouteInfo;
  self->_currentRouteInfo = 0;

  tunnelRanges = self->_tunnelRanges;
  self->_tunnelRanges = 0;

  lastUnprojectedLocation = self->_lastUnprojectedLocation;
  self->_lastUnprojectedLocation = 0;

  lastUnprojectedLocationDate = self->_lastUnprojectedLocationDate;
  self->_lastUnprojectedLocationDate = 0;

  [(MNDispatchTimer *)self->_locationUpdateOverdueTimer cancel];
  locationUpdateOverdueTimer = self->_locationUpdateOverdueTimer;
  self->_locationUpdateOverdueTimer = 0;

  self->_isProjecting = 0;
}

- (void)updateForRouteInfo:(id)a3
{
  v10 = a3;
  currentRouteInfo = self->_currentRouteInfo;
  if (!currentRouteInfo || (-[MNActiveRouteInfo routeID](currentRouteInfo, "routeID"), v6 = objc_claimAutoreleasedReturnValue(), [v10 routeID], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    [(MNTunnelLocationProjector *)self stop];
    objc_storeStrong(&self->_currentRouteInfo, a3);
    tunnelRanges = self->_tunnelRanges;
    self->_tunnelRanges = 0;
  }
}

- (void)updateLocation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 isProjected] & 1) == 0)
  {
    if (self->_isProjecting)
    {
      v6 = MNGetMNTunnelProjectorLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Stopping projection because of new location: %@", &v12, 0xCu);
      }
    }

    self->_isProjecting = 0;
    [(MNTunnelLocationProjector *)self _resetTimerWithTimeout:self->_locationOverdueTimeoutForTunnel];
    if ([v5 state] == 1)
    {
      objc_storeStrong(&self->_lastUnprojectedLocation, a3);
      v7 = +[MNTimeManager currentDate];
      lastUnprojectedLocationDate = self->_lastUnprojectedLocationDate;
      self->_lastUnprojectedLocationDate = v7;
    }

    else
    {
      lastUnprojectedLocation = self->_lastUnprojectedLocation;
      self->_lastUnprojectedLocation = 0;

      v10 = self->_lastUnprojectedLocationDate;
      self->_lastUnprojectedLocationDate = 0;

      [(MNDispatchTimer *)self->_locationUpdateOverdueTimer cancel];
      lastUnprojectedLocationDate = self->_locationUpdateOverdueTimer;
      self->_locationUpdateOverdueTimer = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNTunnelLocationProjector *)self stop];
  v3.receiver = self;
  v3.super_class = MNTunnelLocationProjector;
  [(MNTunnelLocationProjector *)&v3 dealloc];
}

- (MNTunnelLocationProjector)init
{
  v5.receiver = self;
  v5.super_class = MNTunnelLocationProjector;
  v2 = [(MNTunnelLocationProjector *)&v5 init];
  if (v2)
  {
    if (GEOConfigGetBOOL())
    {
      GEOConfigGetDouble();
    }

    else
    {
      v3 = 0x7FEFFFFFFFFFFFFFLL;
    }

    *&v2->_locationOverdueTimeoutForTunnel = v3;
  }

  return v2;
}

@end