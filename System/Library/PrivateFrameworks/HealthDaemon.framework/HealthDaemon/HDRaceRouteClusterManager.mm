@interface HDRaceRouteClusterManager
- (BOOL)generateRaceRouteClustersWithLimit:(unint64_t)limit error:(id *)error;
- (HDRaceRouteClusterManager)initWithProfile:(id)profile;
- (id)raceRouteClustersForActivityType:(unint64_t)type error:(id *)error;
@end

@implementation HDRaceRouteClusterManager

- (HDRaceRouteClusterManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDRaceRouteClusterManager;
  v5 = [(HDRaceRouteClusterManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (id)raceRouteClustersForActivityType:(unint64_t)type error:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [HDRaceRouteClusterEntity raceRouteClustersForActivityType:type profile:WeakRetained error:error];

  return v7;
}

- (BOOL)generateRaceRouteClustersWithLimit:(unint64_t)limit error:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__HDRaceRouteClusterManager_generateRaceRouteClustersWithLimit_error___block_invoke;
  v21[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v21[4] = limit;
  LODWORD(limit) = [(HDHealthEntity *)HDRaceRouteGenerationQueueEntity performWriteTransactionWithHealthDatabase:database error:error block:v21];

  if (!limit)
  {
    return 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  while (1)
  {
    v9 = objc_loadWeakRetained(&self->_profile);
    database2 = [v9 database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__HDRaceRouteClusterManager_generateRaceRouteClustersWithLimit_error___block_invoke_2;
    v16[3] = &unk_278619398;
    v16[4] = self;
    v16[5] = &v17;
    v11 = [(HDHealthEntity *)HDRaceRouteClusterEntity performWriteTransactionWithHealthDatabase:database2 error:error block:v16];

    if (!v11)
    {
      break;
    }

    if ((v18[3] & 1) == 0)
    {
      v12 = objc_loadWeakRetained(&self->_profile);
      database3 = [v12 database];
      v14 = [(HDHealthEntity *)HDRaceRouteClusterEntity performWriteTransactionWithHealthDatabase:database3 error:error block:&__block_literal_global_246];

      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v14;
}

BOOL __70__HDRaceRouteClusterManager_generateRaceRouteClustersWithLimit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDWorkoutClusterEntity clusterEntitiesWithTransaction:v5 limit:*(a1 + 32) error:a3];
  if (v6)
  {
    v7 = [HDRaceRouteGenerationQueueEntity populateWithWorkoutClusters:v6 transaction:v5 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __70__HDRaceRouteClusterManager_generateRaceRouteClustersWithLimit_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [HDRaceRouteGenerationQueueEntity nextWorkoutClusterWithTransaction:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = v5;
    if (v8)
    {
      v86 = 0;
      v87 = &v86;
      v88 = 0x3032000000;
      v89 = __Block_byref_object_copy__209;
      v90 = __Block_byref_object_dispose__209;
      v91 = 0;
      v80 = 0;
      v81 = &v80;
      v82 = 0x3032000000;
      v83 = __Block_byref_object_copy__209;
      v84 = __Block_byref_object_dispose__209;
      v85 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x3032000000;
      v77 = __Block_byref_object_copy__209;
      v78 = __Block_byref_object_dispose__209;
      v79 = 0;
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      v64 = 0;
      v65 = &v64;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy__209;
      v68 = __Block_byref_object_dispose__209;
      v69 = 0;
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __79__HDRaceRouteClusterManager__racingClusterForWorkoutCluster_transaction_error___block_invoke;
      v63[3] = &unk_278630070;
      v63[4] = &v86;
      v63[5] = &v80;
      v63[6] = &v74;
      v63[7] = &v70;
      v63[8] = &v64;
      if ([v9 modelPropertiesWithTransaction:v10 error:a3 handler:v63])
      {
        v11 = [v9 numberOfWorkoutsWithTransaction:v10 error:a3];
        v12 = v11;
        if (v11)
        {
          v59 = v11;
          v61 = a1;
          v13 = v81[5];
          WeakRetained = objc_loadWeakRetained((v8 + 8));
          v15 = [WeakRetained metadataManager];
          v16 = [HDRaceRouteClusterWorkout clusterWorkoutWithWorkoutEntity:v13 transaction:v10 metadataManager:v15 error:a3];

          v17 = v16;
          if (v16)
          {
            v57 = v16;
            v18 = v75[5];
            v19 = objc_loadWeakRetained((v8 + 8));
            v20 = [v19 metadataManager];
            v21 = [HDRaceRouteClusterWorkout clusterWorkoutWithWorkoutEntity:v18 transaction:v10 metadataManager:v20 error:a3];

            if (v21)
            {
              v55 = objc_alloc_init(MEMORY[0x277CBEA90]);
              v12 = v59;
              a1 = v61;
              v17 = v57;
              v49 = objc_alloc(MEMORY[0x277CCD860]);
              v54 = [MEMORY[0x277CCAD78] UUID];
              v48 = v87[5];
              v47 = [v59 unsignedIntegerValue];
              v22 = v71[3];
              v23 = [v57 activityType];
              v53 = [v57 workoutUUID];
              v52 = [v57 startDate];
              [v57 distance];
              v25 = v24;
              [v57 duration];
              v27 = v26;
              v51 = [v21 workoutUUID];
              v50 = [v21 startDate];
              [v21 distance];
              v29 = v28;
              [v21 duration];
              v31 = [v49 _initWithUUID:v54 workoutClusterUUID:v48 clusterSize:v47 relevanceValue:v23 workoutActivityType:v53 lastWorkoutUUID:v52 lastWorkoutDate:v22 lastWorkoutDistance:v25 lastWorkoutDuration:v27 lastWorkoutStartingPoint:v29 bestWorkoutUUID:v30 bestWorkoutDate:0 bestWorkoutDistance:v51 bestWorkoutDuration:v50 workoutRouteSnapshot:v55 workoutRouteLabel:v65[5]];
            }

            else
            {
              v31 = 0;
              v12 = v59;
              a1 = v61;
              v17 = v57;
            }
          }

          else
          {
            v31 = 0;
            v12 = v59;
          }
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      _Block_object_dispose(&v64, 8);

      _Block_object_dispose(&v70, 8);
      _Block_object_dispose(&v74, 8);

      _Block_object_dispose(&v80, 8);
      _Block_object_dispose(&v86, 8);
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v33 = [v9 snapshotEntityWithTransaction:v10 error:a3];
      if (v33)
      {
        v56 = v9;
        v58 = v31;
        v60 = v7;
        v62 = v5;
        v34 = a3;
        v35 = v10;
        v36 = a1;
        v37 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v38 = [v37 syncIdentityManager];
        v39 = [v38 currentSyncIdentity];
        v40 = [v39 entity];
        v41 = [v40 persistentID];
        v42 = objc_loadWeakRetained((*(v36 + 32) + 8));
        v43 = v35;
        v44 = v34;
        v31 = v58;
        v45 = [HDRaceRouteClusterEntity insertOrUpdateRacingCluster:v58 routeSnapshot:v33 syncIdentity:v41 transaction:v43 profile:v42 error:v44];

        if (v45)
        {
          v32 = [HDRaceRouteGenerationQueueEntity finishWorkoutCluster:v56 concreteCluster:v45 transaction:v43 error:v44];
        }

        else
        {
          v32 = 0;
        }

        v7 = v60;
        v5 = v62;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else if (a3 && *a3)
  {
    v32 = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v32 = 1;
  }

  return v32;
}

BOOL __70__HDRaceRouteClusterManager_generateRaceRouteClustersWithLimit_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HDRaceRouteGenerationQueueEntity clearQueueWithTransaction:v4 error:a3];
  v6 = v5 && [HDRaceRouteSnapshotEntity pruneUnreachableDataWithTransaction:v4 error:a3]&& [HDRaceRouteClusterEntity pruneRaceRouteClustersWithEligibleEntities:v5 transaction:v4 error:a3];

  return v6;
}

void __79__HDRaceRouteClusterManager__racingClusterForWorkoutCluster_transaction_error___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
  v28 = v11;
  v17 = a5;

  v18 = *(a1[5] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v12;
  v20 = v12;

  v21 = *(a1[6] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v13;
  v23 = v13;

  [v17 doubleValue];
  v25 = v24;

  *(*(a1[7] + 8) + 24) = v25;
  v26 = *(a1[8] + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v14;
}

@end