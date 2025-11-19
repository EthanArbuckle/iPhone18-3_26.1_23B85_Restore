@interface MNWalkingTurnByTurnLocationTracker
- (BOOL)_allowRerouteForLocation:(id)a3;
- (BOOL)_allowSwitchToTransportType:(int)a3 forLocation:(id)a4;
- (MNWalkingTurnByTurnLocationTracker)initWithNavigationSession:(id)a3;
- (id)_newMapMatcherForRoute:(id)a3;
- (int)_detectedMotionForLocation:(id)a3;
- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
@end

@implementation MNWalkingTurnByTurnLocationTracker

- (BOOL)_allowSwitchToTransportType:(int)a3 forLocation:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    goto LABEL_7;
  }

  [v6 speed];
  if (v8 < 5.36 || ([v7 rawLocation], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "coordinate"), v9, latitude = self->_detectedTransportTypeOrigin.latitude, longitude = self->_detectedTransportTypeOrigin.longitude, GEOCalculateDistance(), v12 < 100.0))
  {
LABEL_7:
    v14 = 0;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138477827;
      v18 = @"AUTOMOBILE";
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEBUG, "Allow switching to transport type: %{private}@", &v17, 0xCu);
    }

    v14 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int)_detectedMotionForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MNLocationTracker *)self navigationSession];
  v6 = [v5 motionContext];

  [v6 confidence];
  if ([v6 isWalking] & 1) != 0 || (objc_msgSend(v6, "isRunning"))
  {
    detectedTransportType = 2;
  }

  else
  {
    if (([v6 isDriving] & 1) == 0)
    {
      detectedTransportType = self->_detectedTransportType;
      goto LABEL_9;
    }

    detectedTransportType = 0;
  }

  if (self->_detectedTransportType != detectedTransportType)
  {
    v8 = [v4 rawLocation];
    [v8 coordinate];
    v10 = v9;
    v12 = v11;

    self->_detectedTransportType = detectedTransportType;
    self->_detectedTransportTypeOrigin.latitude = v10;
    self->_detectedTransportTypeOrigin.longitude = v12;
  }

LABEL_9:

  return detectedTransportType;
}

- (BOOL)_allowRerouteForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MNLocationTracker *)self navigationSessionState];
  v6 = [v5 initialRouteSource];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = [(MNLocationTracker *)self navigationSessionState];
    v8 = [v7 hasBeenOnRouteOnce];

    GEOConfigGetDouble();
    v10 = v9;
    if (v8)
    {
      v11 = [(MNTurnByTurnLocationTracker *)self lastKnownGoodLocationOnRoute];
      v12 = [v11 routeMatch];
      [v12 locationCoordinate3D];

      [v4 _navigation_geoCoordinate3D];
      GEOCalculateDistance();
      v14 = v13;
    }

    else
    {
      v16 = [v4 routeMatch];
      [v16 distanceFromRoute];
      v14 = v17;
    }

    v15 = v14 > v10;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v10 = a3;
  v12.receiver = self;
  v12.super_class = MNWalkingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v12 _updateForReroute:v10 rerouteReason:a4 request:a5 response:a6];
  if (a4 != 11)
  {
    v11 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:v10 alternateRouteInfo:0];
    [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v11];
  }
}

- (id)_newMapMatcherForRoute:(id)a3
{
  v4 = MEMORY[0x1E69A22A0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(MNLocationTracker *)self _auditToken];
  v8 = [v6 initWithRoute:v5 auditToken:v7];

  return v8;
}

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = MNWalkingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v4 startTrackingWithInitialLocation:a3 targetLegIndex:a4];
}

- (MNWalkingTurnByTurnLocationTracker)initWithNavigationSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = MNWalkingTurnByTurnLocationTracker;
  v3 = [(MNTurnByTurnLocationTracker *)&v7 initWithNavigationSession:a3];
  v4 = v3;
  if (v3)
  {
    v3->_detectedTransportType = 4;
    v5 = v3;
  }

  return v4;
}

@end