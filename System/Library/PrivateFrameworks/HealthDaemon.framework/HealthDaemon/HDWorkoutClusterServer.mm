@interface HDWorkoutClusterServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (uint64_t)_processLocation:(void *)a3 forCoordinateSeries:(unint64_t)a4 limit:(unint64_t *)a5 locationsSeen:(id *)a6 lastSentTimestamp:;
- (void)remote_createWorkoutCluster:(id)a3 completion:(id)a4;
- (void)remote_deleteWorkoutClusterWithUUID:(id)a3 completion:(id)a4;
- (void)remote_fetchRouteCoordinatesForWorkoutUUID:(id)a3 dateInterval:(id)a4 limit:(unint64_t)a5 completion:(id)a6;
- (void)remote_fetchRouteCoordinatesForWorkoutUUID:(id)a3 startDate:(id)a4 limit:(unint64_t)a5 completion:(id)a6;
- (void)remote_fetchWorkoutClusterContainingWorkoutUUID:(id)a3 completion:(id)a4;
- (void)remote_fetchWorkoutClustersContainingWorkoutUUIDs:(id)a3 completion:(id)a4;
- (void)remote_fetchWorkoutClustersWithCompletion:(id)a3;
- (void)remote_fetchWorkoutCountWithFilter:(id)a3 completion:(id)a4;
- (void)remote_fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 completion:(id)a4;
- (void)remote_fetchWorkoutUUIDsForClusterUUID:(id)a3 completion:(id)a4;
- (void)remote_fetchWorkoutsWithFilter:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 completion:(id)a6;
- (void)remote_fetchWorkoutsWithFilter:(id)a3 limit:(unint64_t)a4 sortDescriptors:(id)a5 completion:(id)a6;
- (void)remote_generateRaceRouteClustersWithLimit:(unint64_t)a3 completion:(id)a4;
- (void)remote_updateWorkoutClusterWithUUID:(id)a3 newRelevance:(id)a4 newLastWorkoutUUID:(id)a5 newBestWorkoutUUID:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 completion:(id)a9;
- (void)remote_updateWorkoutRouteLabel:(id)a3 forClusterUUID:(id)a4 completion:(id)a5;
- (void)remote_updateWorkoutRouteSnapshot:(id)a3 forClusterUUID:(id)a4 completion:(id)a5;
@end

@implementation HDWorkoutClusterServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:@"com.apple.health.RacePreviousRoute"];

  v17 = [v16 raceRouteClusterManager];
  v18 = [HDWorkoutClusterManager alloc];
  v19 = [v13 profile];
  v20 = [(HDWorkoutClusterManager *)v18 initWithProfile:v19];

  if (v17)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (v22)
    {
      if (a7)
      {
        v23 = v22;
        *a7 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v24 = 0;
  }

  else
  {
    v24 = [(HDStandardTaskServer *)[HDWorkoutClusterServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    objc_storeStrong(&v24->_raceRouteClusterManager, v17);
    objc_storeStrong(&v24->_workoutClusterManager, v20);
    [(HDWorkoutClusterManager *)v24->_workoutClusterManager takeAccessibilityAssertionIfNeeded];
    v24->_maxWorkoutBatchSize = 400;
    v24->_maxRouteCoordinateBatchSize = 7200;
  }

  return v24;
}

- (void)remote_fetchWorkoutCountWithFilter:(id)a3 completion:(id)a4
{
  workoutClusterManager = self->_workoutClusterManager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDWorkoutClusterManager *)workoutClusterManager workoutCountWithFilter:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_fetchWorkoutsWithFilter:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 completion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a6;
  maxWorkoutBatchSize = self->_maxWorkoutBatchSize;
  if (a5 >= maxWorkoutBatchSize)
  {
    v12 = self->_maxWorkoutBatchSize;
  }

  else
  {
    v12 = a5;
  }

  if (a5)
  {
    maxWorkoutBatchSize = v12;
  }

  workoutClusterManager = self->_workoutClusterManager;
  if (self)
  {
    v14 = maxWorkoutBatchSize;
  }

  else
  {
    v14 = 0;
  }

  v24 = 0;
  v25 = 0;
  v15 = [(HDWorkoutClusterManager *)workoutClusterManager workoutsWithFilter:a3 anchor:a4 limit:v14 newAnchor:&v25 error:&v24];
  v16 = v25;
  v17 = v24;
  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v20 = v18;
    v21 = [v15 count];
    v22 = HKStringFromBool();
    v23 = [v17 localizedDescription];
    *buf = 134218754;
    v27 = v21;
    v28 = 2114;
    v29 = v22;
    v30 = 2112;
    v31 = v16;
    v32 = 2114;
    v33 = v23;
    _os_log_debug_impl(&dword_228986000, v20, OS_LOG_TYPE_DEBUG, "Fetched %lu workouts with success=%{public}@, newAnchor=%@, error=%{public}@", buf, 0x2Au);
  }

  v10[2](v10, v15, v16, v17);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchWorkoutsWithFilter:(id)a3 limit:(unint64_t)a4 sortDescriptors:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a6;
  maxWorkoutBatchSize = self->_maxWorkoutBatchSize;
  if (a4 >= maxWorkoutBatchSize)
  {
    v12 = self->_maxWorkoutBatchSize;
  }

  else
  {
    v12 = a4;
  }

  if (a4)
  {
    maxWorkoutBatchSize = v12;
  }

  if (self)
  {
    v13 = maxWorkoutBatchSize;
  }

  else
  {
    v13 = 0;
  }

  workoutClusterManager = self->_workoutClusterManager;
  v23 = 0;
  v15 = [(HDWorkoutClusterManager *)workoutClusterManager workoutsWithFilter:a3 limit:v13 sortDescriptors:a5 error:&v23];
  v16 = v23;
  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v19 = v17;
    v20 = [v15 count];
    v21 = HKStringFromBool();
    v22 = [v16 localizedDescription];
    *buf = 134218498;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    v28 = 2114;
    v29 = v22;
    _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "Fetched %lu workouts with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  v10[2](v10, v15, v16);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchRouteCoordinatesForWorkoutUUID:(id)a3 startDate:(id)a4 limit:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  maxRouteCoordinateBatchSize = self->_maxRouteCoordinateBatchSize;
  if (a5 >= maxRouteCoordinateBatchSize)
  {
    v14 = self->_maxRouteCoordinateBatchSize;
  }

  else
  {
    v14 = a5;
  }

  if (a5)
  {
    maxRouteCoordinateBatchSize = v14;
  }

  if (self)
  {
    v15 = maxRouteCoordinateBatchSize;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x277CCD168]);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__51;
  v28[4] = __Block_byref_object_dispose__51;
  v29 = 0;
  workoutClusterManager = self->_workoutClusterManager;
  v27 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__HDWorkoutClusterServer_remote_fetchRouteCoordinatesForWorkoutUUID_startDate_limit_completion___block_invoke;
  v22[3] = &unk_27861AC28;
  v22[4] = self;
  v18 = v16;
  v23 = v18;
  v24 = v30;
  v25 = v28;
  v26 = v15;
  v19 = [(HDWorkoutClusterManager *)workoutClusterManager enumerateRouteLocationsForWorkoutUUID:v10 startDate:v11 limit:v15 + 1 error:&v27 handler:v22];
  v20 = v27;
  if (v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  (v12)[2](v12, v21, v20);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

uint64_t __96__HDWorkoutClusterServer_remote_fetchRouteCoordinatesForWorkoutUUID_startDate_limit_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[8];
  v5 = *(a1[6] + 8);
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [(HDWorkoutClusterServer *)v3 _processLocation:a2 forCoordinateSeries:v2 limit:v4 locationsSeen:(v5 + 24) lastSentTimestamp:&obj];
  objc_storeStrong((v6 + 40), obj);
  return v7;
}

- (uint64_t)_processLocation:(void *)a3 forCoordinateSeries:(unint64_t)a4 limit:(unint64_t *)a5 locationsSeen:(id *)a6 lastSentTimestamp:
{
  v11 = a2;
  v12 = a3;
  if (a1)
  {
    v13 = *a5 + 1;
    *a5 = v13;
    if (v13 <= a4)
    {
      v15 = objc_alloc_init(MEMORY[0x277CCD160]);
      [v11 coordinate];
      [v15 setLatitude:?];
      [v11 coordinate];
      [v15 setLongitude:v16];
      [v12 addCoordinates:v15];
      *a6 = [v11 timestamp];

      v14 = 1;
      goto LABEL_6;
    }

    [*a6 timeIntervalSinceReferenceDate];
    [v12 setResumeDate:?];
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (void)remote_fetchRouteCoordinatesForWorkoutUUID:(id)a3 dateInterval:(id)a4 limit:(unint64_t)a5 completion:(id)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a6;
  maxRouteCoordinateBatchSize = self->_maxRouteCoordinateBatchSize;
  v13 = objc_alloc_init(MEMORY[0x277CCD168]);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__51;
  v31[4] = __Block_byref_object_dispose__51;
  v32 = 0;
  workoutClusterManager = self->_workoutClusterManager;
  v15 = [v10 startDate];
  if (a5 >= maxRouteCoordinateBatchSize)
  {
    v16 = maxRouteCoordinateBatchSize;
  }

  else
  {
    v16 = a5;
  }

  if (a5)
  {
    maxRouteCoordinateBatchSize = v16;
  }

  v30 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__HDWorkoutClusterServer_remote_fetchRouteCoordinatesForWorkoutUUID_dateInterval_limit_completion___block_invoke;
  v23[3] = &unk_27861AC50;
  v17 = v10;
  v24 = v17;
  v25 = self;
  v18 = v13;
  v26 = v18;
  v27 = v33;
  v28 = v31;
  v29 = maxRouteCoordinateBatchSize;
  v19 = [(HDWorkoutClusterManager *)workoutClusterManager enumerateRouteLocationsForWorkoutUUID:v22 startDate:v15 limit:maxRouteCoordinateBatchSize + 1 error:&v30 handler:v23];
  v20 = v30;

  if (v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  (v11)[2](v11, v21, v20);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

uint64_t __99__HDWorkoutClusterServer_remote_fetchRouteCoordinatesForWorkoutUUID_dateInterval_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) endDate];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v3 timestamp];
  v7 = [*(a1 + 32) endDate];
  v8 = [v6 hk_isAfterDate:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
LABEL_4:
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(*(a1 + 64) + 8);
    obj = *(v14 + 40);
    v9 = [(HDWorkoutClusterServer *)v10 _processLocation:v3 forCoordinateSeries:v11 limit:v12 locationsSeen:(v13 + 24) lastSentTimestamp:&obj];
    objc_storeStrong((v14 + 40), obj);
  }

  return v9;
}

- (void)remote_createWorkoutCluster:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v17 = 0;
  v8 = a4;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager createWorkoutCluster:v6 error:&v17];
  v10 = v17;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v6 clusterUUID];
    v14 = HKStringFromBool();
    v15 = [v10 localizedDescription];
    *buf = 138543874;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Created workout cluster (%{public}@) with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  v8[2](v8, v9, v10);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchWorkoutClustersWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  workoutClusterManager = self->_workoutClusterManager;
  v13 = 0;
  v4 = a3;
  v5 = [(HDWorkoutClusterManager *)workoutClusterManager allWorkoutClustersWithError:&v13];
  v6 = v13;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 count];
    v10 = HKStringFromBool();
    v11 = [v6 localizedDescription];
    *buf = 134218498;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Fetched all workout clusters (count %lu) with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  v4[2](v4, v5, v6);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchWorkoutClusterContainingWorkoutUUID:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v17 = 0;
  v8 = a4;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager workoutClusterContainingWorkoutUUID:v6 error:&v17];
  v10 = v17;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 clusterUUID];
    v14 = HKStringFromBool();
    v15 = [v10 localizedDescription];
    *buf = 138544130;
    v19 = v13;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Fetched cluster (%{public}@) for workout UUID %{public}@ with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  v8[2](v8, v9, v10);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchWorkoutClustersContainingWorkoutUUIDs:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v18 = 0;
  v8 = a4;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager workoutClustersContainingWorkoutUUIDs:v6 error:&v18];
  v10 = v18;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 count];
    v14 = [v6 count];
    v15 = HKStringFromBool();
    v16 = [v10 localizedDescription];
    *buf = 134218754;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Fetched clusters (count %lu) for workouts (count %lu) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  v8[2](v8, v9, v10);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchWorkoutUUIDsForClusterUUID:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v17 = 0;
  v8 = a4;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager allWorkoutUUIDsForClusterUUID:v6 error:&v17];
  v10 = v17;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 count];
    v14 = HKStringFromBool();
    v15 = [v10 localizedDescription];
    *buf = 138544130;
    v19 = v6;
    v20 = 2048;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Fetched workout UUIDs (cluster=%{public}@, count %lu) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  v8[2](v8, v9, v10);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v17 = 0;
  v8 = a4;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager workoutRouteSnapshotForClusterUUID:v6 error:&v17];
  v10 = v17;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = vcvtd_n_f64_u64([v9 length], 0xAuLL);
    v14 = HKStringFromBool();
    v15 = [v10 localizedDescription];
    *buf = 138544130;
    v19 = v6;
    v20 = 2048;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Fetched route snapshot (cluster=%{public}@, %0.1lf kB) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  v8[2](v8, v9, v10);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remote_updateWorkoutRouteSnapshot:(id)a3 forClusterUUID:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  workoutClusterManager = self->_workoutClusterManager;
  v20 = 0;
  v11 = a5;
  v12 = [(HDWorkoutClusterManager *)workoutClusterManager updateWorkoutClusterWithUUID:v9 newRouteSnapshot:v8 error:&v20];
  v13 = v20;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = vcvtd_n_f64_u64([v8 length], 0xAuLL);
    v17 = HKStringFromBool();
    v18 = [v13 localizedDescription];
    *buf = 138544130;
    v22 = v9;
    v23 = 2048;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "Updated route snapshot (cluster=%{public}@, %0.1lf kB) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  v11[2](v11, v12, v13);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)remote_updateWorkoutRouteLabel:(id)a3 forClusterUUID:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  workoutClusterManager = self->_workoutClusterManager;
  v18 = 0;
  v10 = a5;
  v11 = [(HDWorkoutClusterManager *)workoutClusterManager updateWorkoutClusterWithUUID:v8 newRouteLabel:a3 error:&v18];
  v12 = v18;
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = HKStringFromBool();
    v16 = [v12 localizedDescription];
    *buf = 138543874;
    v20 = v8;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "Updated route label (cluster=%{public}@) with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  v10[2](v10, v11, v12);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)remote_updateWorkoutClusterWithUUID:(id)a3 newRelevance:(id)a4 newLastWorkoutUUID:(id)a5 newBestWorkoutUUID:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 completion:(id)a9
{
  v32 = *MEMORY[0x277D85DE8];
  v15 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v25 = 0;
  v17 = a9;
  v18 = [(HDWorkoutClusterManager *)workoutClusterManager updateWorkoutClusterWithUUID:v15 newRelevance:a4 newLastWorkoutUUID:a5 newBestWorkoutUUID:a6 newWorkoutAssociations:a7 workoutAssociationsToRemove:a8 error:&v25];
  v19 = v25;
  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = HKStringFromBool();
    v23 = [v19 localizedDescription];
    *buf = 138543874;
    v27 = v15;
    v28 = 2114;
    v29 = v22;
    v30 = 2114;
    v31 = v23;
    _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Updated workout cluster (%{public}@) with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  v17[2](v17, v18, v19);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)remote_deleteWorkoutClusterWithUUID:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  workoutClusterManager = self->_workoutClusterManager;
  v16 = 0;
  v8 = a4;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager deleteWorkoutClusterWithUUID:v6 error:&v16];
  v10 = v16;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = HKStringFromBool();
    v14 = [v10 localizedDescription];
    *buf = 138543874;
    v18 = v6;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Deleted workout cluster (%{public}@) with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  v8[2](v8, v9, v10);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_generateRaceRouteClustersWithLimit:(unint64_t)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  workoutClusterManager = self->_workoutClusterManager;
  v20[5] = a3;
  v21 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDWorkoutClusterServer_remote_generateRaceRouteClustersWithLimit_completion___block_invoke;
  v20[3] = &unk_27861AC78;
  v20[4] = self;
  v9 = [(HDWorkoutClusterManager *)workoutClusterManager performUsingAccessibilityAssertionWithError:&v21 block:v20];
  v10 = v21;
  v11 = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = HKStringFromBool();
    v15 = [v10 localizedDescription];
    *buf = 134218754;
    v23 = v11 - Current;
    v24 = 2048;
    v25 = a3;
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Generated Race Route clusters (%0.3lfs, limit %lu) with success=%{public}@, error=%{public}@", buf, 0x2Au);
  }

  if (v9)
  {
    v16 = [(HDWorkoutClusterManager *)self->_workoutClusterManager profile];
    v17 = [v16 nanoSyncManager];

    v18 = [(HDWorkoutClusterManager *)self->_workoutClusterManager accessibilityAssertion];
    [v17 syncHealthDataWithOptions:1 reason:@"Race Route clusters generated" accessibilityAssertion:v18 completion:&__block_literal_global_54];
  }

  v6[2](v6, v9, v10);

  v19 = *MEMORY[0x277D85DE8];
}

void __79__HDWorkoutClusterServer_remote_generateRaceRouteClustersWithLimit_completion___block_invoke_301(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to sync Racing clusters after generation: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end