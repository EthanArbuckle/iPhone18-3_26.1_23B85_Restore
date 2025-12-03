@interface __MNDepartureMinimumDepartureDistanceCondition
- (__MNDepartureMinimumDepartureDistanceCondition)initWithUpdater:(id)updater arrivalPoints:(id)points distanceThreshold:(double)threshold;
- (double)scoreForLocation:(id)location;
@end

@implementation __MNDepartureMinimumDepartureDistanceCondition

- (double)scoreForLocation:(id)location
{
  v45 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_updater);
    arrivalLeg = [v6 arrivalLeg];

    [locationCopy coordinate];
    v8 = objc_loadWeakRetained(&self->_updater);
    route = [v8 route];
    [route pointAt:{objc_msgSend(arrivalLeg, "endPointIndex")}];

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
            point = [v17 point];
            [point lat];
            point2 = [v17 point];
            [point2 lng];

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
      destination = [arrivalLeg destination];
      [destination coordinate];

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
        arrivalWaypointLegIndex = [v29 arrivalWaypointLegIndex];
        *buf = 67109632;
        v39 = arrivalWaypointLegIndex;
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

- (__MNDepartureMinimumDepartureDistanceCondition)initWithUpdater:(id)updater arrivalPoints:(id)points distanceThreshold:(double)threshold
{
  updaterCopy = updater;
  pointsCopy = points;
  v14.receiver = self;
  v14.super_class = __MNDepartureMinimumDepartureDistanceCondition;
  v10 = [(__MNDepartureMinimumDepartureDistanceCondition *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_updater, updaterCopy);
    objc_storeStrong(&v11->_arrivalPoints, points);
    v11->_threshold = threshold;
    v12 = v11;
  }

  return v11;
}

@end