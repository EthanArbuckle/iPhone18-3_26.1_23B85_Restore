@interface __MNDepartureTimeSpentCondition
- (__MNDepartureTimeSpentCondition)initWithUpdater:(id)a3 timeThreshold:(double)a4;
- (double)scoreForLocation:(id)a3;
@end

@implementation __MNDepartureTimeSpentCondition

- (double)scoreForLocation:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  v6 = -1.0;
  if (WeakRetained)
  {
    initialDate = self->_initialDate;
    if (initialDate)
    {
      [(NSDate *)initialDate timeIntervalSinceNow];
      v9 = v8;
      v10 = objc_loadWeakRetained(&self->_updater);
      v11 = [v10 route];
      v12 = [v4 routeMatch];
      v13 = [v11 segmentIndexForPointIndex:{objc_msgSend(v12, "routeCoordinate")}];

      if ([v4 state] == 1)
      {
        v14 = objc_loadWeakRetained(&self->_updater);
        v15 = [v14 arrivalWaypointLegIndex];

        if (v13 > v15)
        {
          threshold = self->_threshold;
          if (threshold <= -v9)
          {
            v21 = MNGetMNDepartureUpdaterLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = objc_loadWeakRetained(&self->_updater);
              v23 = [v22 arrivalWaypointLegIndex];
              v24 = self->_threshold;
              v25[0] = 67109632;
              v25[1] = v23;
              v26 = 2048;
              v27 = -v9;
              v28 = 2048;
              v29 = v24;
              _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Minimum time spent at intermediary waypoint arrival point completed. Leg: %d. Time (%0.1fm) > Required time (%0.1fm).", v25, 0x1Cu);
            }

            v6 = 1.0;
          }

          else
          {
            v6 = -v9 / threshold;
          }
        }
      }
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] now];
      v18 = self->_initialDate;
      self->_initialDate = v17;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (__MNDepartureTimeSpentCondition)initWithUpdater:(id)a3 timeThreshold:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = __MNDepartureTimeSpentCondition;
  v7 = [(__MNDepartureTimeSpentCondition *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_updater, v6);
    v8->_threshold = fmin(a4, 1.0);
    v9 = v8;
  }

  return v8;
}

@end