@interface __MNDepartureMinimumArrivalDistanceCondition
- (__MNDepartureMinimumArrivalDistanceCondition)initWithUpdater:(id)a3 distanceThreshold:(double)a4;
- (double)scoreForLocation:(id)a3;
@end

@implementation __MNDepartureMinimumArrivalDistanceCondition

- (double)scoreForLocation:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_updater);
    v7 = [v6 arrivalLeg];

    [v4 coordinate];
    v8 = [v7 destination];
    [v8 coordinate];

    GEOCalculateDistance();
    v10 = v9;
    if (v9 < self->_closestDistanceToWaypoint)
    {
      self->_closestDistanceToWaypoint = v9;
      v11 = MNGetMNDepartureUpdaterLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v28 = 134217984;
        *v29 = v10;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "Updating closest distance to waypoint: %g", &v28, 0xCu);
      }
    }

    v12 = objc_loadWeakRetained(&self->_updater);
    v13 = [v12 route];
    v14 = [v4 routeMatch];
    v15 = [v13 segmentIndexForPointIndex:{objc_msgSend(v14, "routeCoordinate")}];

    v16 = -1.0;
    if ([v4 state] == 1)
    {
      v17 = objc_loadWeakRetained(&self->_updater);
      v18 = [v17 arrivalWaypointLegIndex];

      if (v15 > v18)
      {
        closestDistanceToWaypoint = self->_closestDistanceToWaypoint;
        threshold = self->_threshold;
        if (closestDistanceToWaypoint <= threshold)
        {
          v21 = MNGetMNDepartureUpdaterLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = objc_loadWeakRetained(&self->_updater);
            v23 = [v22 arrivalWaypointLegIndex];
            v24 = self->_closestDistanceToWaypoint;
            v25 = self->_threshold;
            v28 = 67109632;
            *v29 = v23;
            *&v29[4] = 2048;
            *&v29[6] = v24;
            v30 = 2048;
            v31 = v25;
            _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Minimum distance to intermediary waypoint arrival point completed. Leg: %d. Distance (%0.1fm) < Required distance (%0.1fm).", &v28, 0x1Cu);
          }

          v16 = 1.0;
        }

        else
        {
          v16 = threshold / closestDistanceToWaypoint;
        }
      }
    }
  }

  else
  {
    v16 = -1.0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

- (__MNDepartureMinimumArrivalDistanceCondition)initWithUpdater:(id)a3 distanceThreshold:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = __MNDepartureMinimumArrivalDistanceCondition;
  v7 = [(__MNDepartureMinimumArrivalDistanceCondition *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_updater, v6);
    v8->_threshold = a4;
    v8->_closestDistanceToWaypoint = 1.79769313e308;
    v9 = v8;
  }

  return v8;
}

@end