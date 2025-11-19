@interface HDSmoothingTask
- (BOOL)isEqual:(id)a3;
- (id)_initWithWorkout:(id)a3 routes:(id)a4 analyticsSubmissionCoordinator:(id)a5;
- (id)description;
- (void)setSmoothingError:(uint64_t)a1;
- (void)setTransaction:(uint64_t)a1;
@end

@implementation HDSmoothingTask

- (id)_initWithWorkout:(id)a3 routes:(id)a4 analyticsSubmissionCoordinator:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v74.receiver = self;
  v74.super_class = HDSmoothingTask;
  v11 = [(HDSmoothingTask *)&v74 init];
  if (v11)
  {
    v70 = v10;
    v12 = [v8 copy];
    workout = v11->_workout;
    v11->_workout = v12;

    v72 = v9;
    v14 = [v9 copy];
    routes = v11->_routes;
    v11->_routes = v14;

    v11->_smoothingAttempts = 0;
    v11->_currentActivitySmoothingIndex = 0;
    v11->_isTimedOut = 0;
    v16 = v11->_routes;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v17 = v16;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v75 objects:buf count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v76;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v76 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v20 += [*(*(&v75 + 1) + 8 * i) count];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v75 objects:buf count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v11->_totalLocations = v20;
    v73 = v8;
    v23 = [v8 metadata];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277CCE188]];
    v11->_extendedMode = [v24 BOOLValue];

    v25 = 360.0;
    if (!v11->_extendedMode)
    {
      v25 = 30.0;
    }

    v11->_smoothingTaskTimeout = v25;
    v26 = [MEMORY[0x277CBEAA8] now];
    smoothingTaskCreationDate = v11->_smoothingTaskCreationDate;
    v11->_smoothingTaskCreationDate = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    smoothedRoutes = v11->_smoothedRoutes;
    v11->_smoothedRoutes = v28;

    v71 = v11;
    v30 = v11->_workout;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = [(HKWorkout *)v30 metadata];
    v33 = *MEMORY[0x277CCE1A0];
    v34 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCE1A0]];

    if (v34)
    {
      v35 = [(HKWorkout *)v30 startDate];
      v36 = [v35 hk_isBeforeDate:v34];

      if (v36)
      {
        v37 = objc_alloc(MEMORY[0x277CCA970]);
        v38 = [(HKWorkout *)v30 startDate];
        v39 = [v37 initWithStartDate:v38 endDate:v34];

        [(NSArray *)v31 addObject:v39];
      }
    }

    v68 = v34;
    v69 = v30;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v40 = [(HKWorkout *)v30 workoutEvents];
    v41 = [v40 countByEnumeratingWithState:&v75 objects:buf count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v76;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v76 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v75 + 1) + 8 * j);
          v46 = [v45 metadata];
          v47 = [v46 objectForKeyedSubscript:v33];

          if (v47)
          {
            v48 = [v45 dateInterval];
            v49 = [v48 startDate];

            if ([v49 hk_isBeforeDate:v47])
            {
              v50 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v49 endDate:v47];
              [(NSArray *)v31 addObject:v50];
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v75 objects:buf count:16];
      }

      while (v42);
    }

    v11 = v71;
    workoutIntervals = v71->_workoutIntervals;
    v71->_workoutIntervals = v31;

    v52 = [(HKWorkout *)v71->_workout _routeSmoothingActivities];
    routeSmoothingActivities = v71->_routeSmoothingActivities;
    v71->_routeSmoothingActivities = v52;

    v54 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = v73;
    v55 = [v73 metadata];
    v56 = [v55 objectForKeyedSubscript:*MEMORY[0x277CCE0E8]];
    v57 = [v54 initWithUUIDString:v56];

    if (v57)
    {
      v58 = [v73 workoutActivityType];
      [v73 duration];
      v60 = v59;
      v61 = [v73 workoutActivities];
      v62 = [v61 count];
      LOBYTE(v67) = 0;
      LOBYTE(v66) = v71->_extendedMode;
      v10 = v70;
      [HDWorkoutUtilities submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:v70 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskCreated" sessionIdentifier:v57 activityType:v58 duration:v60 activityCount:v62 extendedMode:v66 totalLocations:v71->_totalLocations routeSmoothingRetryCount:0 activityID:0 failure:v67];

      v9 = v72;
    }

    else
    {
      _HKInitializeLogging();
      v63 = *MEMORY[0x277CCC330];
      v9 = v72;
      v10 = v70;
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "Unable to log analytics for workout, no sessionUUID not found", buf, 2u);
      }
    }
  }

  v64 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(HKWorkout *)self->_workout UUID];
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 UUID];
  v8 = [v5 isEqual:v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HKWorkout *)self->_workout UUID];
  totalLocations = self->_totalLocations;
  v9.receiver = self;
  v9.super_class = HDSmoothingTask;
  v6 = [(HDSmoothingTask *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@ totalLocations=%tu %@>", v4, totalLocations, v6];

  return v7;
}

- (void)setTransaction:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)setSmoothingError:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

@end