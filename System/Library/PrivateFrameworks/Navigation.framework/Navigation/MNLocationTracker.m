@interface MNLocationTracker
- (MNLocationTracker)init;
- (MNLocationTracker)initWithNavigationSession:(id)a3;
- (MNLocationTrackerDelegate)delegate;
- (MNNavigationSession)navigationSession;
- (id)matchedLocationForLocation:(id)a3;
- (int)transportType;
- (void)_roadFeaturesForFeature:(id)a3 outRoadName:(id *)a4 outShieldText:(id *)a5 outShieldType:(int64_t *)a6;
- (void)_setTargetLegIndex:(unint64_t)a3;
- (void)_updateArrivalInfo:(id)a3 previousState:(int64_t)a4;
- (void)dealloc;
- (void)insertWaypoint:(id)a3 completionHandler:(id)a4;
- (void)removeWaypointAtIndex:(unint64_t)a3 completionHandler:(id)a4;
- (void)rerouteWithWaypoints:(id)a3 completionHandler:(id)a4;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)updateDestination:(id)a3 completionHandler:(id)a4;
@end

@implementation MNLocationTracker

- (MNNavigationSession)navigationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  return WeakRetained;
}

- (MNLocationTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_roadFeaturesForFeature:(id)a3 outRoadName:(id *)a4 outShieldText:(id *)a5 outShieldType:(int64_t *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 feature];
    if (v12)
    {
      v13 = v12;
      if (self->_localizeRoadNames)
      {
        GEOFeatureGetLocalizedLabel();
      }

      else
      {
        GEOFeatureGetNativeLabel();
      }

      GEOFeatureGetLocalizedShield();
      v14 = [v13 attributes];
      v15 = [v14 isRamp];

      if (v15)
      {
        v16 = [v13 attributes];
        v17 = [v16 rampType];

        switch(v17)
        {
          case 2:
            v23 = [v13 attributes];
            v24 = [v23 rampDirection];

            v21 = 0;
            if (v24 > 1)
            {
              if (v24 == 2)
              {
                v22 = @"Freeway Off Ramp";
                goto LABEL_44;
              }

              if (v24 != 3)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v24)
              {
                if (v24 == 1)
                {
                  v22 = @"Freeway On Ramp";
                  goto LABEL_44;
                }

LABEL_45:
                if (a4)
                {
                  v27 = v21;
                  *a4 = v21;
                }

                if (a5)
                {
                  v28 = 0;
                  *a5 = 0;
                }

                if (a6)
                {
                  *a6 = 0;
                }

                goto LABEL_52;
              }

              v26 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v31 = "[MNLocationTracker _roadFeaturesForFeature:outRoadName:outShieldText:outShieldType:]";
                v32 = 2080;
                v33 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
                v34 = 1024;
                v35 = 335;
                _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
              }
            }

            v22 = @"Freeway Ramp";
            goto LABEL_44;
          case 1:
LABEL_19:
            v19 = [v13 attributes];
            v20 = [v19 rampDirection];

            v21 = 0;
            if (v20 > 1)
            {
              if (v20 == 2)
              {
                v22 = @"Off Ramp";
                goto LABEL_44;
              }

              if (v20 != 3)
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (v20)
              {
                if (v20 == 1)
                {
                  v22 = @"On Ramp";
LABEL_44:
                  v21 = _MNLocalizedStringFromThisBundle(v22);
                  goto LABEL_45;
                }

                goto LABEL_45;
              }

              v25 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v31 = "[MNLocationTracker _roadFeaturesForFeature:outRoadName:outShieldText:outShieldType:]";
                v32 = 2080;
                v33 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
                v34 = 1024;
                v35 = 319;
                _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
              }
            }

            v22 = @"Ramp";
            goto LABEL_44;
          case 0:
            v18 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = "[MNLocationTracker _roadFeaturesForFeature:outRoadName:outShieldText:outShieldType:]";
              v32 = 2080;
              v33 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
              v34 = 1024;
              v35 = 314;
              _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
            }

            goto LABEL_19;
        }
      }

      v21 = 0;
      goto LABEL_45;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

LABEL_52:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateArrivalInfo:(id)a3 previousState:(int64_t)a4
{
  v7 = a3;
  p_arrivalInfo = &self->_arrivalInfo;
  if (self->_arrivalInfo != v7)
  {
    v10 = v7;
    objc_storeStrong(p_arrivalInfo, a3);
    if ([(MNArrivalInfo *)v10 isInArrivalState])
    {
      self->_hasVisitedFirstStop = 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didUpdateArrivalInfo:v10 previousState:a4];
  }

  MEMORY[0x1EEE66BE0](p_arrivalInfo);
}

- (void)_setTargetLegIndex:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_targetLegIndex != a3)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      targetLegIndex = self->_targetLegIndex;
      v9[0] = 67109376;
      v9[1] = targetLegIndex;
      v10 = 1024;
      v11 = a3;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Changing target leg index from %d to %d.", v9, 0xEu);
    }

    self->_targetLegIndex = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didUpdateTargetLegIndex:a3];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)matchedLocationForLocation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNLocationTracker::matchedLocationForLocation:", &v19, 0xCu);
  }

  v7 = MNGetMNLocationTrackerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MatchedLocationForLocation", "", &v19, 2u);
  }

  v11 = [(MNLocationTracker *)self _matchedLocationForLocation:v4];
  if (v11)
  {
    v12 = MNGetPuckTrackingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v11 uuid];
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - calling didUpdateMatchedLocation:", &v19, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained locationTracker:self didUpdateMatchedLocation:v11];
  }

  v15 = v10;
  v16 = v15;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v16, OS_SIGNPOST_INTERVAL_END, v8, "MatchedLocationForLocation", "", &v19, 2u);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)updateDestination:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)removeWaypointAtIndex:(unint64_t)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)insertWaypoint:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)rerouteWithWaypoints:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v5 = [(MNNavigationSessionState *)self->_navigationSessionState currentRouteInfo:a3];
  v10 = [v5 route];

  v6 = [v10 routeInitializerData];
  v7 = [v6 directionsRequest];
  v8 = [v7 tripInfo];
  v9 = [v8 hasVisitedFirstStop];

  if (v9)
  {
    self->_hasVisitedFirstStop = 1;
  }
}

- (int)transportType
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    v8 = 136316162;
    v9 = "[MNLocationTracker transportType]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNLocationTracker.m";
    v12 = 1024;
    v13 = 74;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: %@ must implement '%@'", &v8, 0x30u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696AA70] object:0];

  v4.receiver = self;
  v4.super_class = MNLocationTracker;
  [(MNLocationTracker *)&v4 dealloc];
}

- (MNLocationTracker)initWithNavigationSession:(id)a3
{
  v4 = a3;
  v5 = [(MNLocationTracker *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    objc_storeWeak(&v5->_navigationSession, v4);
    v6->_targetLegIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [v4 auditToken];
    auditToken = v6->_auditToken;
    v6->_auditToken = v7;

    v9 = v6;
  }

  return v6;
}

- (MNLocationTracker)init
{
  v6.receiver = self;
  v6.super_class = MNLocationTracker;
  v2 = [(MNLocationTracker *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MNLocationTracker *)v2 _updateShouldLocalizeRoadNames];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__defaultsDidChange name:*MEMORY[0x1E696AA70] object:0];
  }

  return v3;
}

@end