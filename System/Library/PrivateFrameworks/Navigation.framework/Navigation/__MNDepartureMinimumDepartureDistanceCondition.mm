@interface __MNDepartureMinimumDepartureDistanceCondition
- (__MNDepartureMinimumDepartureDistanceCondition)initWithUpdater:(id)a3 arrivalPoints:(id)a4 distanceThreshold:(double)a5;
- (double)scoreForLocation:(id)a3;
@end

@implementation __MNDepartureMinimumDepartureDistanceCondition

- (double)scoreForLocation:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_updater);
    v7 = [v6 arrivalLeg];

    [v4 coordinate];
    v8 = objc_loadWeakRetained(&self->_updater);
    v9 = [v8 route];
    [v9 pointAt:{objc_msgSend(v7, "endPointIndex")}];

    arrivalPoints = self->_arrivalPoints;
    if (arrivalPoints)
    {
      threshold = self->_threshold;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = arrivalPoints;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        v15 = 0.0;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            v18 = [v17 point];
            [v18 lat];
            v19 = [v17 point];
            [v19 lng];

            GEOCalculateDistance();
            if (v20 > v15)
            {
              v21 = v20;
              GEOCalculateDistance();
              threshold = self->_threshold + v22;
              v15 = v21;
            }
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 0.0;
      }

      v27 = threshold;
    }

    else
    {
      v24 = [v7 destination];
      [v24 coordinate];

      GEOCalculateDistance();
      v15 = v25;
      GEOCalculateDistance();
      v27 = self->_threshold + v26;
    }

    if (v15 >= v27)
    {
      v28 = MNGetMNDepartureUpdaterLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_loadWeakRetained(&self->_updater);
        v30 = [v29 arrivalWaypointLegIndex];
        *buf = 67109632;
        v39 = v30;
        v40 = 2048;
        v41 = v15;
        v42 = 2048;
        v43 = v27;
        _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEFAULT, "Minimum deviation from intermediary waypoint detected. Leg: %d. Distance (%0.1fm) > Required distance (%0.1fm).", buf, 0x1Cu);
      }

      v23 = 1.0;
    }

    else
    {
      v23 = v15 / v27;
    }
  }

  else
  {
    v23 = -1.0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v23;
}

- (__MNDepartureMinimumDepartureDistanceCondition)initWithUpdater:(id)a3 arrivalPoints:(id)a4 distanceThreshold:(double)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = __MNDepartureMinimumDepartureDistanceCondition;
  v10 = [(__MNDepartureMinimumDepartureDistanceCondition *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_updater, v8);
    objc_storeStrong(&v11->_arrivalPoints, a4);
    v11->_threshold = a5;
    v12 = v11;
  }

  return v11;
}

@end