@interface HKLocationFetcher
- (BOOL)_routesAreSmoothed:(id)smoothed;
- (HKLocationFetcher)initWithHealthStore:(id)store;
- (_HKLocationShifter)shifter;
- (id)_workoutRoutesQueryForWorkout:(id)workout withUpdateHandler:(id)handler;
- (void)_handleAndShiftLocations:(id)locations forWorkout:(id)workout withSamplesHandler:(id)handler;
- (void)_processQueryResultForRoutes:(id)routes error:(id)error workout:(id)workout withUpdateHandler:(id)handler;
- (void)_requeryRoutesForWorkout:(id)workout withUpdateHandler:(id)handler;
- (void)dealloc;
- (void)fetchLocationsFromWorkout:(id)workout applyThreshold:(BOOL)threshold withSamplesHandler:(id)handler;
- (void)fetchLocationsFromWorkout:(id)workout workoutActivity:(id)activity samplesHandler:(id)handler;
- (void)fetchRoutesFromWorkout:(id)workout withUpdateHandler:(id)handler;
@end

@implementation HKLocationFetcher

- (HKLocationFetcher)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKLocationFetcher;
  v6 = [(HKLocationFetcher *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = [objc_alloc(MEMORY[0x1E696C680]) initWithHealthStore:storeCopy];
    routesStore = v7->_routesStore;
    v7->_routesStore = v8;

    v10 = HKCreateSerialDispatchQueue();
    resultsQueue = v7->_resultsQueue;
    v7->_resultsQueue = v10;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_routesQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
  }

  v3.receiver = self;
  v3.super_class = HKLocationFetcher;
  [(HKLocationFetcher *)&v3 dealloc];
}

- (_HKLocationShifter)shifter
{
  shifter = self->_shifter;
  if (!shifter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696C640]);
    v5 = self->_shifter;
    self->_shifter = v4;

    shifter = self->_shifter;
  }

  return shifter;
}

- (void)fetchLocationsFromWorkout:(id)workout applyThreshold:(BOOL)threshold withSamplesHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  workoutCopy = workout;
  handlerCopy = handler;
  _HKInitializeLogging();
  v10 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    startDate = [workoutCopy startDate];
    workoutActivityType = [workoutCopy workoutActivityType];
    uUID = [workoutCopy UUID];
    *buf = 138412802;
    v23 = startDate;
    v24 = 2048;
    v25 = workoutActivityType;
    v26 = 2114;
    v27 = uUID;
    _os_log_impl(&dword_1C3942000, v11, OS_LOG_TYPE_DEFAULT, "[routes] Request route on day %@ for workout of type %zd %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__HKLocationFetcher_fetchLocationsFromWorkout_applyThreshold_withSamplesHandler___block_invoke;
  v17[3] = &unk_1E81B9A48;
  v15 = handlerCopy;
  v19 = v15;
  objc_copyWeak(&v20, buf);
  v16 = workoutCopy;
  v18 = v16;
  thresholdCopy = threshold;
  [(HKLocationFetcher *)self fetchRoutesFromWorkout:v16 withUpdateHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __81__HKLocationFetcher_fetchLocationsFromWorkout_applyThreshold_withSamplesHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained routesStore];
    [v7 setWorkoutRoutes:v5];

    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 routesStore];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__HKLocationFetcher_fetchLocationsFromWorkout_applyThreshold_withSamplesHandler___block_invoke_2;
    v10[3] = &unk_1E81B9A20;
    v11 = *(a1 + 32);
    v14 = a3;
    v15 = *(a1 + 56);
    objc_copyWeak(&v13, (a1 + 48));
    v12 = *(a1 + 40);
    [v9 fetchAllLocationsWithCompletion:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __81__HKLocationFetcher_fetchLocationsFromWorkout_applyThreshold_withSamplesHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[HKLocationReadings alloc] initWithLocations:v3 workout:*(a1 + 32) isSmoothed:*(a1 + 56)];

  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "[routes] Fetched location readings %@", &v7, 0xCu);
  }

  if (*(a1 + 57) && (!_shouldShowMapRoute(v4, 0) || [(HKLocationReadings *)v4 count]< 1))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _handleAndShiftLocations:v4 forWorkout:*(a1 + 32) withSamplesHandler:*(a1 + 40)];
  }
}

- (void)fetchLocationsFromWorkout:(id)workout workoutActivity:(id)activity samplesHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  workoutCopy = workout;
  activityCopy = activity;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate = [activityCopy startDate];
  endDate = [activityCopy endDate];
  v14 = [v11 initWithStartDate:startDate endDate:endDate];

  _HKInitializeLogging();
  v15 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    startDate2 = [workoutCopy startDate];
    workoutConfiguration = [activityCopy workoutConfiguration];
    activityType = [workoutConfiguration activityType];
    uUID = [workoutCopy UUID];
    *buf = 138413058;
    v32 = startDate2;
    v33 = 2112;
    v34 = v14;
    v35 = 2048;
    v36 = activityType;
    v37 = 2114;
    v38 = uUID;
    _os_log_impl(&dword_1C3942000, v16, OS_LOG_TYPE_DEFAULT, "[routes] Request route on day %@ (interval %@) for activity of type %zd and workout %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __78__HKLocationFetcher_fetchLocationsFromWorkout_workoutActivity_samplesHandler___block_invoke;
  v25[3] = &unk_1E81B9AC0;
  objc_copyWeak(&v30, buf);
  v21 = handlerCopy;
  v29 = v21;
  v22 = workoutCopy;
  v26 = v22;
  v23 = activityCopy;
  v27 = v23;
  v24 = v14;
  v28 = v24;
  [(HKLocationFetcher *)self fetchRoutesFromWorkout:v22 withUpdateHandler:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

void __78__HKLocationFetcher_fetchLocationsFromWorkout_workoutActivity_samplesHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v24 = v5;
  if (WeakRetained && [v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = __Block_byref_object_copy__16;
    v54[4] = __Block_byref_object_dispose__16;
    v55 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v53[3] = [v5 count];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__HKLocationFetcher_fetchLocationsFromWorkout_workoutActivity_samplesHandler___block_invoke_303;
    aBlock[3] = &unk_1E81B9A70;
    v50 = v53;
    v7 = v5;
    v44 = v7;
    v25 = v6;
    v45 = v25;
    v8 = *(a1 + 32);
    v52 = a3;
    v46 = v8;
    v51 = v54;
    v47 = *(a1 + 40);
    v9 = *(a1 + 56);
    v48 = WeakRetained;
    v49 = v9;
    v10 = _Block_copy(aBlock);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2810000000;
    v41 = &unk_1C3DAF4DA;
    v42 = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v56 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        v13 = 0;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * v13);
          v15 = objc_alloc(MEMORY[0x1E696AB80]);
          v16 = [v14 startDate];
          v17 = [v14 endDate];
          v18 = [v15 initWithStartDate:v16 endDate:v17];

          v19 = [v18 intersectionWithDateInterval:*(a1 + 48)];
          [v19 duration];
          if (v20 == 0.0)
          {
            os_unfair_lock_lock(v39 + 8);
            v10[2](v10);
            os_unfair_lock_unlock(v39 + 8);
          }

          else
          {
            v21 = objc_alloc(MEMORY[0x1E696C5C8]);
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __78__HKLocationFetcher_fetchLocationsFromWorkout_workoutActivity_samplesHandler___block_invoke_2;
            v28[3] = &unk_1E81B9A98;
            v32 = &v38;
            v29 = v25;
            v30 = v14;
            v33 = v54;
            v31 = v10;
            v22 = [v21 initWithRoute:v14 dateInterval:v19 dataHandler:v28];
            v23 = [WeakRetained healthStore];
            [v23 executeQuery:v22];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v34 objects:v56 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v54, 8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __78__HKLocationFetcher_fetchLocationsFromWorkout_workoutActivity_samplesHandler___block_invoke_303(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!--*(*(*(a1 + 80) + 8) + 24))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(a1 + 40);
          v9 = [*(*(&v13 + 1) + 8 * v7) UUID];
          v10 = [v8 objectForKeyedSubscript:v9];
          [v2 addObjectsFromArray:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v11 = [[HKLocationReadings alloc] initWithLocations:v2 workout:*(a1 + 48) isSmoothed:*(a1 + 96)];
    v12 = v11;
    if (!*(*(*(a1 + 88) + 8) + 40) && [(HKLocationReadings *)v11 count]&& (_shouldShowMapRoute(v12, *(a1 + 56)) & 1) != 0)
    {
      [*(a1 + 64) _handleAndShiftLocations:v12 forWorkout:*(a1 + 48) withSamplesHandler:*(a1 + 72)];
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }
}

void __78__HKLocationFetcher_fetchLocationsFromWorkout_workoutActivity_samplesHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v16 = a3;
  v8 = a5;
  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  if (v16)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) UUID];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) UUID];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    [v11 addObjectsFromArray:v16];
  }

  else
  {
    v14 = *(*(a1 + 64) + 8);
    v15 = v8;
    v11 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
}

- (BOOL)_routesAreSmoothed:(id)smoothed
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  smoothedCopy = smoothed;
  v4 = [smoothedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = *MEMORY[0x1E696BB70];
    v8 = *MEMORY[0x1E696C7B0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(smoothedCopy);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        metadata = [v10 metadata];
        v12 = [metadata objectForKeyedSubscript:v7];
        integerValue = [v12 integerValue];

        metadata2 = [v10 metadata];
        v15 = [metadata2 objectForKeyedSubscript:v8];
        bOOLValue = [v15 BOOLValue];

        if (integerValue <= 1 && bOOLValue == 0)
        {
          v18 = 0;
          goto LABEL_14;
        }
      }

      v5 = [smoothedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_14:

  return v18;
}

- (void)_handleAndShiftLocations:(id)locations forWorkout:(id)workout withSamplesHandler:(id)handler
{
  locationsCopy = locations;
  workoutCopy = workout;
  handlerCopy = handler;
  v11 = MEMORY[0x1E696C640];
  allValidLocations = [locationsCopy allValidLocations];
  LOBYTE(v11) = [v11 isShiftRequiredForLocations:allValidLocations];

  if (v11)
  {
    shifter = [(HKLocationFetcher *)self shifter];
    allValidLocations2 = [locationsCopy allValidLocations];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__HKLocationFetcher__handleAndShiftLocations_forWorkout_withSamplesHandler___block_invoke;
    v15[3] = &unk_1E81B93D0;
    v16 = workoutCopy;
    v17 = locationsCopy;
    v18 = handlerCopy;
    [shifter shiftLocations:allValidLocations2 withCompletion:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, locationsCopy);
  }
}

void __76__HKLocationFetcher__handleAndShiftLocations_forWorkout_withSamplesHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[HKLocationReadings initWithLocations:workout:isSmoothed:]([HKLocationReadings alloc], "initWithLocations:workout:isSmoothed:", v3, *(a1 + 32), [*(a1 + 40) isSmoothed]);

  (*(*(a1 + 48) + 16))();
}

- (void)fetchRoutesFromWorkout:(id)workout withUpdateHandler:(id)handler
{
  workoutCopy = workout;
  handlerCopy = handler;
  v8 = [(HKLocationFetcher *)self _workoutRoutesQueryForWorkout:workoutCopy withUpdateHandler:handlerCopy];
  routesQuery = self->_routesQuery;
  self->_routesQuery = v8;

  objc_initWeak(&location, self);
  v10 = self->_routesQuery;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __62__HKLocationFetcher_fetchRoutesFromWorkout_withUpdateHandler___block_invoke;
  v16 = &unk_1E81B9AE8;
  v11 = handlerCopy;
  v18 = v11;
  v12 = workoutCopy;
  v17 = v12;
  objc_copyWeak(&v19, &location);
  [(HKAnchoredObjectQuery *)v10 setUpdateHandler:&v13];
  [(HKHealthStore *)self->_healthStore executeQuery:self->_routesQuery, v13, v14, v15, v16];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __62__HKLocationFetcher_fetchRoutesFromWorkout_withUpdateHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a6;
  _HKInitializeLogging();
  if (v7)
  {
    v8 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
    {
      __62__HKLocationFetcher_fetchRoutesFromWorkout_withUpdateHandler___block_invoke_cold_1(v7, v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 UUID];
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_1C3942000, v11, OS_LOG_TYPE_DEFAULT, "[routes] Update called; run location series query for workout %{public}@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _requeryRoutesForWorkout:*(a1 + 32) withUpdateHandler:*(a1 + 40)];
  }
}

- (id)_workoutRoutesQueryForWorkout:(id)workout withUpdateHandler:(id)handler
{
  workoutCopy = workout;
  handlerCopy = handler;
  v8 = [MEMORY[0x1E696C378] predicateForObjectsFromWorkout:workoutCopy];
  v9 = [MEMORY[0x1E696C3D0] dataTypeWithCode:102];
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x1E696BF08]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__HKLocationFetcher__workoutRoutesQueryForWorkout_withUpdateHandler___block_invoke;
  v15[3] = &unk_1E81B9B10;
  objc_copyWeak(&v18, &location);
  v11 = workoutCopy;
  v16 = v11;
  v12 = handlerCopy;
  v17 = v12;
  v13 = [v10 initWithType:v9 predicate:v8 anchor:0 limit:0 resultsHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v13;
}

void __69__HKLocationFetcher__workoutRoutesQueryForWorkout_withUpdateHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processQueryResultForRoutes:v9 error:v8 workout:*(a1 + 32) withUpdateHandler:*(a1 + 40)];
}

- (void)_requeryRoutesForWorkout:(id)workout withUpdateHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  workoutCopy = workout;
  handlerCopy = handler;
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uUID = [workoutCopy UUID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uUID;
    _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[routes] Querying for all routes for workout %{public}@", &buf, 0xCu);
  }

  v11 = dispatch_group_create();
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = handlerCopy;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__16;
  v51 = __Block_byref_object_dispose__16;
  v52 = 0;
  v30 = [MEMORY[0x1E696C3D0] dataTypeWithCode:102];
  dispatch_group_enter(v11);
  v29 = [MEMORY[0x1E696C378] predicateForObjectsFromWorkout:workoutCopy];
  v13 = objc_alloc(MEMORY[0x1E696BF08]);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke;
  v43[3] = &unk_1E81B9B60;
  v43[4] = self;
  v14 = workoutCopy;
  v44 = v14;
  v15 = v12;
  v45 = v15;
  p_buf = &buf;
  v16 = v11;
  v46 = v16;
  v17 = [v13 initWithType:v30 predicate:v29 anchor:0 limit:0 resultsHandler:v43];
  dispatch_group_enter(v16);
  v18 = [MEMORY[0x1E696C378] predicateForWorkoutRoutesUsingMetadataForWorkout:v14];
  v19 = objc_alloc(MEMORY[0x1E696BF08]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_314;
  v38[3] = &unk_1E81B9B60;
  v38[4] = self;
  v20 = v14;
  v39 = v20;
  v21 = v15;
  v40 = v21;
  v42 = &buf;
  v22 = v16;
  v41 = v22;
  v23 = [v19 initWithType:v30 predicate:v18 anchor:0 limit:0 resultsHandler:v38];
  [(HKHealthStore *)self->_healthStore executeQuery:v17];
  [(HKHealthStore *)self->_healthStore executeQuery:v23];
  objc_initWeak(&location, self);
  resultsQueue = self->_resultsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_316;
  block[3] = &unk_1E81B9BA8;
  v32 = v21;
  v33 = v20;
  v25 = v20;
  v26 = v21;
  objc_copyWeak(&v36, &location);
  v34 = v28;
  v35 = &buf;
  v27 = v28;
  dispatch_group_notify(v22, resultsQueue, block);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
}

void __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_2;
  block[3] = &unk_1E81B9B38;
  v16 = v8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = v9;
  v14 = *(a1 + 56);
  v11 = v14;
  v20 = v14;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

void __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = [*(a1 + 40) UUID];
    v13 = 134218242;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Found %lu routes via associations for workout %{public}@", &v13, 0x16u);
  }

  if ([*(a1 + 32) count])
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
    [v7 unionSet:v8];
  }

  v9 = *(*(a1 + 72) + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (!v12)
  {
    v11 = *(a1 + 56);
  }

  objc_storeStrong(v10, v11);
  dispatch_group_leave(*(a1 + 64));
}

void __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_314(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_2_315;
  block[3] = &unk_1E81B9B38;
  v16 = v8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = v9;
  v14 = *(a1 + 56);
  v11 = v14;
  v20 = v14;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

void __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_2_315(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = [*(a1 + 40) UUID];
    v13 = 134218242;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Found %lu routes via metadata for workout %{public}@", &v13, 0x16u);
  }

  if ([*(a1 + 32) count])
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
    [v7 unionSet:v8];
  }

  v9 = *(*(a1 + 72) + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (!v12)
  {
    v11 = *(a1 + 56);
  }

  objc_storeStrong(v10, v11);
  dispatch_group_leave(*(a1 + 64));
}

void __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_316(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_64];

  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 count];
    v8 = [*(a1 + 40) UUID];
    v10 = 134218242;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1C3942000, v6, OS_LOG_TYPE_DEFAULT, "[routes] Found %lu unique routes workout %{public}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _processQueryResultForRoutes:v3 error:*(*(*(a1 + 56) + 8) + 40) workout:*(a1 + 40) withUpdateHandler:*(a1 + 48)];
}

uint64_t __64__HKLocationFetcher__requeryRoutesForWorkout_withUpdateHandler___block_invoke_2_317(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_processQueryResultForRoutes:(id)routes error:(id)error workout:(id)workout withUpdateHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  errorCopy = error;
  workoutCopy = workout;
  handlerCopy = handler;
  if (errorCopy)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
    {
      [HKLocationFetcher _processQueryResultForRoutes:errorCopy error:v14 workout:? withUpdateHandler:?];
    }

    goto LABEL_4;
  }

  if (![routesCopy count])
  {
LABEL_4:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_5;
  }

  routesStore = [(HKLocationFetcher *)self routesStore];
  v16 = [routesStore containsSameValuesAs:routesCopy];

  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [routesCopy count];
      firstObject = [routesCopy firstObject];
      uUID = [firstObject UUID];
      uUID2 = [workoutCopy UUID];
      v26 = 134218498;
      v27 = v19;
      v28 = 2112;
      v29 = uUID;
      v30 = 2114;
      v31 = uUID2;
      _os_log_impl(&dword_1C3942000, v18, OS_LOG_TYPE_DEFAULT, "[routes] Fetched %zd new samples (first: %@) for workout %{public}@", &v26, 0x20u);
    }

    sourceRevision = [workoutCopy sourceRevision];
    source = [sourceRevision source];
    _isAppleWatch = [source _isAppleWatch];

    (*(handlerCopy + 2))(handlerCopy, routesCopy, [(HKLocationFetcher *)self _routesAreSmoothed:routesCopy]|| (_isAppleWatch & 1) == 0);
  }

LABEL_5:
}

void __62__HKLocationFetcher_fetchRoutesFromWorkout_withUpdateHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "[routes] An error occurred while updating series samples for workout. %@", &v2, 0xCu);
}

- (void)_processQueryResultForRoutes:(uint64_t)a1 error:(NSObject *)a2 workout:withUpdateHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "[routes] Could not fetch series samples for workout. %@", &v2, 0xCu);
}

@end