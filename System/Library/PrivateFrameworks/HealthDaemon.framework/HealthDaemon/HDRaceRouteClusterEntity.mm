@interface HDRaceRouteClusterEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (BOOL)pruneRaceRouteClustersWithEligibleEntities:(id)entities transaction:(id)transaction error:(id *)error;
+ (BOOL)unitTest_deleteAllClusterAndBackingDataInTransaction:(id)transaction error:(id *)error;
+ (HDRaceRouteClusterEntity)_entityForClusterUUID:(void *)d database:(void *)database error:;
+ (id)_baseEntityProperties;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)entityForClusterUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)insertCodableCluster:(id)cluster syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
+ (id)insertOrUpdateRacingCluster:(id)cluster routeSnapshot:(id)snapshot syncIdentity:(int64_t)identity transaction:(id)transaction profile:(id)profile error:(id *)error;
+ (id)privateSubEntities;
+ (id)raceRouteClustersForActivityType:(unint64_t)type profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
+ (uint64_t)_deleteClusterBackingDataWithPredicate:(void *)predicate transaction:(uint64_t)transaction error:;
+ (uint64_t)_enumerateRoutePointsForClusterUUID:(double)d workoutSelection:(uint64_t)selection timestampAnchor:(void *)anchor limit:(uint64_t)limit startDuration:(uint64_t)duration finishDuration:(void *)finishDuration profile:(uint64_t)profile error:(void *)self0 dataHandler:;
- (uint64_t)_fetchWorkoutIDsWithTransaction:(uint64_t)transaction error:(void *)error handler:;
@end

@implementation HDRaceRouteClusterEntity

+ (id)_baseEntityProperties
{
  v3[23] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"uuid";
  v3[1] = @"workout_cluster_uuid";
  v3[2] = @"relevance";
  v3[3] = @"workout_activity_type";
  v3[4] = @"workout_cluster_size";
  v3[5] = @"last_workout_uuid";
  v3[6] = @"last_workout_date";
  v3[7] = @"last_workout_distance";
  v3[8] = @"last_workout_duration";
  v3[9] = @"last_workout_rowid";
  v3[10] = @"best_workout_uuid";
  v3[11] = @"best_workout_date";
  v3[12] = @"best_workout_distance";
  v3[13] = @"best_workout_duration";
  v3[14] = @"best_workout_rowid";
  v3[15] = @"snapshot_id";
  v3[16] = @"route_label";
  v3[17] = @"modified_date";
  v3[18] = @"sync_provenance";
  v3[19] = @"frozen";
  v3[20] = @"sync_anchor";
  v3[21] = @"relevance_anchor";
  v3[22] = @"sync_identity";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:23];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void __102__HDRaceRouteClusterEntity__insertRacingCluster_routeSnapshot_syncIdentity_transaction_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) clusterUUID];
  MEMORY[0x22AAC6C00](a2, @"uuid", v4);

  v5 = [*(a1 + 32) workoutClusterUUID];
  MEMORY[0x22AAC6C00](a2, @"workout_cluster_uuid", v5);

  [*(a1 + 32) relevanceValue];
  MEMORY[0x22AAC6B60](a2, @"relevance");
  MEMORY[0x22AAC6B90](a2, @"workout_activity_type", [*(a1 + 32) workoutActivityType]);
  MEMORY[0x22AAC6B90](a2, @"workout_cluster_size", [*(a1 + 32) clusterSize]);
  v6 = [*(a1 + 32) lastWorkoutUUID];
  MEMORY[0x22AAC6C00](a2, @"last_workout_uuid", v6);

  v7 = [*(a1 + 32) lastWorkoutDate];
  MEMORY[0x22AAC6B50](a2, @"last_workout_date", v7);

  [*(a1 + 32) lastWorkoutDistance];
  MEMORY[0x22AAC6B60](a2, @"last_workout_distance");
  [*(a1 + 32) lastWorkoutDuration];
  MEMORY[0x22AAC6B60](a2, @"last_workout_duration");
  MEMORY[0x22AAC6B90](a2, @"last_workout_rowid", [*(a1 + 40) persistentID]);
  v8 = [*(a1 + 32) bestWorkoutUUID];
  MEMORY[0x22AAC6C00](a2, @"best_workout_uuid", v8);

  v9 = [*(a1 + 32) bestWorkoutDate];
  MEMORY[0x22AAC6B50](a2, @"best_workout_date", v9);

  [*(a1 + 32) bestWorkoutDistance];
  MEMORY[0x22AAC6B60](a2, @"best_workout_distance");
  [*(a1 + 32) bestWorkoutDuration];
  MEMORY[0x22AAC6B60](a2, @"best_workout_duration");
  MEMORY[0x22AAC6B90](a2, @"best_workout_rowid", [*(a1 + 48) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"snapshot_id", [*(a1 + 56) persistentID]);
  v10 = [*(a1 + 32) workoutRouteLabel];
  MEMORY[0x22AAC6BD0](a2, @"route_label", v10);

  v11 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"modified_date", v11);

  MEMORY[0x22AAC6B90](a2, @"sync_provenance", 0);
  MEMORY[0x22AAC6B30](a2, @"frozen", 1);
  MEMORY[0x22AAC6B90](a2, @"sync_anchor", *(*(*(a1 + 64) + 8) + 24));
  MEMORY[0x22AAC6B90](a2, @"relevance_anchor", *(*(*(a1 + 64) + 8) + 24));
  v12 = *(a1 + 72);

  JUMPOUT(0x22AAC6B90);
}

+ (id)insertOrUpdateRacingCluster:(id)cluster routeSnapshot:(id)snapshot syncIdentity:(int64_t)identity transaction:(id)transaction profile:(id)profile error:(id *)error
{
  clusterCopy = cluster;
  snapshotCopy = snapshot;
  transactionCopy = transaction;
  profileCopy = profile;
  v16 = [transactionCopy databaseForEntityClass:self];
  lastWorkoutUUID = [clusterCopy lastWorkoutUUID];
  bestWorkoutUUID = [clusterCopy bestWorkoutUUID];
  v61 = 0;
  v19 = lastWorkoutUUID;
  v20 = bestWorkoutUUID;
  v21 = v16;
  objc_opt_self();
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = -1;
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __85__HDRaceRouteClusterEntity__entityForLastWorkoutUUID_bestWorkoutUUID_database_error___block_invoke;
  v65 = &unk_278613038;
  v22 = v19;
  v66 = v22;
  v23 = v20;
  v67 = v23;
  v72 = MEMORY[0x277D85DD0];
  v73 = 3221225472;
  v74 = __85__HDRaceRouteClusterEntity__entityForLastWorkoutUUID_bestWorkoutUUID_database_error___block_invoke_2;
  v75 = &unk_278614620;
  v76 = &v77;
  if (![v21 executeSQL:@"SELECT ROWID FROM RacePreviousRoute_concrete_cluster WHERE last_workout_uuid = ? AND best_workout_uuid = ?" error:&v61 bindingHandler:&v62 enumerationHandler:&v72] || v78[3] == -1)
  {
    v25 = 0;
  }

  else
  {
    v24 = [HDRaceRouteClusterEntity alloc];
    v25 = [(HDSQLiteEntity *)v24 initWithPersistentID:v78[3]];
  }

  _Block_object_dispose(&v77, 8);
  v26 = v61;

  if (!v25)
  {
    if (v26)
    {
      if (error)
      {
        v30 = v26;
        v28 = 0;
        *error = v26;
      }

      else
      {
        _HKLogDroppedError();
        v28 = 0;
      }

      goto LABEL_9;
    }

    v31 = clusterCopy;
    v32 = snapshotCopy;
    v33 = v31;
    v50 = v32;
    v51 = v32;
    v34 = transactionCopy;
    v54 = profileCopy;
    v48 = objc_opt_self();
    lastWorkoutUUID2 = [v33 lastWorkoutUUID];
    v28 = [HDWorkoutClusterEntity workoutEntityForUUID:lastWorkoutUUID2 transaction:v34 error:error];

    v53 = v28;
    if (!v28)
    {
      v40 = v34;
      v41 = v51;
LABEL_33:

      snapshotCopy = v50;
      goto LABEL_9;
    }

    bestWorkoutUUID2 = [v33 bestWorkoutUUID];
    v28 = [HDWorkoutClusterEntity workoutEntityForUUID:bestWorkoutUUID2 transaction:v34 error:error];

    v37 = v28;
    if (!v28)
    {
      v40 = v34;
      v41 = v51;
LABEL_32:

      goto LABEL_33;
    }

    v47 = v28;
    v38 = [HDRaceRouteWorkoutEntity createRaceRouteWorkoutFromWorkout:v53 transaction:v34 profile:v54 error:error];
    if (!v38)
    {
      v40 = v34;
      v28 = 0;
      v41 = v51;
LABEL_31:

      v37 = v47;
      goto LABEL_32;
    }

    v46 = v38;
    persistentID = [(HDSQLiteEntity *)v53 persistentID];
    if (persistentID == [(HDSQLiteEntity *)v47 persistentID])
    {
      v40 = v34;
      v41 = v51;
      v42 = v48;
      [v40 databaseForEntityClass:{v48, v46}];
    }

    else
    {
      v40 = v34;
      [HDRaceRouteWorkoutEntity createRaceRouteWorkoutFromWorkout:v47 transaction:v34 profile:v54 error:error];
      v41 = v51;
      v45 = v42 = v48;
      if (!v45)
      {
        v28 = 0;
LABEL_30:
        v38 = v46;
        goto LABEL_31;
      }

      [v40 databaseForEntityClass:{v48, v45}];
    }
    v43 = ;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = -1;
    v72 = MEMORY[0x277D85DD0];
    v73 = 3221225472;
    v74 = __102__HDRaceRouteClusterEntity__insertRacingCluster_routeSnapshot_syncIdentity_transaction_profile_error___block_invoke;
    v75 = &unk_278614620;
    v76 = &v77;
    v52 = v43;
    if ([v43 executeSQL:@"SELECT COALESCE(MAX(relevance_anchor) + 1 error:1) FROM RacePreviousRoute_concrete_cluster" bindingHandler:error enumerationHandler:{0, &v72}])
    {
      v49 = +[HDRaceRouteClusterEntity _baseEntityProperties];
      v62 = MEMORY[0x277D85DD0];
      v63 = 3221225472;
      v64 = __102__HDRaceRouteClusterEntity__insertRacingCluster_routeSnapshot_syncIdentity_transaction_profile_error___block_invoke_2;
      v65 = &unk_27861E400;
      v66 = v33;
      v67 = v46;
      v68 = v44;
      v69 = v41;
      v70 = &v77;
      identityCopy = identity;
      v28 = [v42 insertOrReplaceEntity:0 database:v52 properties:v49 error:error bindingHandler:&v62];
    }

    else
    {
      v28 = 0;
    }

    _Block_object_dispose(&v77, 8);

    goto LABEL_30;
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __109__HDRaceRouteClusterEntity_insertOrUpdateRacingCluster_routeSnapshot_syncIdentity_transaction_profile_error___block_invoke;
  v57[3] = &unk_278613528;
  v58 = snapshotCopy;
  v59 = clusterCopy;
  v27 = v25;
  v60 = v27;
  v28 = 0;
  if ([v21 executeSQL:@"UPDATE RacePreviousRoute_concrete_cluster SET relevance_anchor = (SELECT COALESCE(MAX(relevance_anchor) + 1 error:1) FROM RacePreviousRoute_concrete_cluster) bindingHandler:sync_anchor = (CASE WHEN snapshot_id = ? AND route_label = ? THEN sync_anchor ELSE (SELECT COALESCE(MAX(relevance_anchor) + 1 enumerationHandler:{1) FROM RacePreviousRoute_concrete_cluster) END), relevance = ?, workout_cluster_uuid = ?, snapshot_id = ?, route_label = ?, modified_date = ? WHERE ROWID = ? AND (relevance != ? OR workout_cluster_uuid != ? OR snapshot_id != ? OR route_label != ?)", error, v57, 0}])
  {
    v28 = v27;
  }

LABEL_9:

  return v28;
}

void __109__HDRaceRouteClusterEntity_insertOrUpdateRacingCluster_routeSnapshot_syncIdentity_transaction_profile_error___block_invoke(id *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [a1[4] persistentID]);
  v4 = [a1[5] workoutRouteLabel];
  HDSQLiteBindFoundationValueToStatement();

  [a1[5] relevanceValue];
  sqlite3_bind_double(a2, 3, v5);
  v6 = [a1[5] workoutClusterUUID];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 5, [a1[4] persistentID]);
  v7 = [a1[5] workoutRouteLabel];
  HDSQLiteBindFoundationValueToStatement();

  v8 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 8, [a1[6] persistentID]);
  [a1[5] relevanceValue];
  sqlite3_bind_double(a2, 9, v9);
  v10 = [a1[5] workoutClusterUUID];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 11, [a1[4] persistentID]);
  v11 = [a1[5] workoutRouteLabel];
  HDSQLiteBindFoundationValueToStatement();
}

+ (id)raceRouteClustersForActivityType:(unint64_t)type profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v10 = objc_alloc_init(v8);
  database = [profileCopy database];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDRaceRouteClusterEntity_raceRouteClustersForActivityType_profile_error___block_invoke;
  v15[3] = &unk_27861E450;
  selfCopy = self;
  typeCopy = type;
  v12 = v10;
  v16 = v12;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __75__HDRaceRouteClusterEntity_raceRouteClustersForActivityType_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 databaseForEntityClass:*(a1 + 40)];
  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v8 = [v6 predicateWithProperty:@"workout_activity_type" equalToValue:v7];

  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"frozen" equalToValue:MEMORY[0x277CBEC38]];
  v10 = MEMORY[0x277D10B20];
  v29[0] = v8;
  v29[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v13 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"relevance" entityClass:*(a1 + 40) ascending:0];
  v14 = *(a1 + 40);
  v15 = *MEMORY[0x277D10C08];
  v28 = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v17 = [v14 queryWithDatabase:v5 predicate:v12 limit:v15 orderingTerms:v16 groupBy:0];

  v18 = *(a1 + 40);
  v19 = +[HDRaceRouteClusterEntity _baseEntityProperties];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__HDRaceRouteClusterEntity_raceRouteClustersForActivityType_profile_error___block_invoke_2;
  v25[3] = &unk_27861E428;
  v26 = v4;
  v27 = *(a1 + 32);
  v20 = v4;
  v21 = [v17 enumeratePersistentIDsAndProperties:v19 error:a3 enumerationHandler:v25];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __75__HDRaceRouteClusterEntity_raceRouteClustersForActivityType_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = HDSQLiteColumnWithNameAsUUID();
  v8 = HDSQLiteColumnWithNameAsUUID();
  v39 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v38 = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsUUID();
  v12 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v14 = v13;
  HDSQLiteColumnWithNameAsDouble();
  v16 = v15;
  v43 = HDSQLiteColumnWithNameAsUUID();
  v42 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v18 = v17;
  HDSQLiteColumnWithNameAsDouble();
  v20 = v19;
  v21 = HDSQLiteColumnWithNameAsInt64();
  v22 = HDSQLiteColumnWithNameAsString();
  v23 = [(HDSQLiteEntity *)[HDRaceRouteSnapshotEntity alloc] initWithPersistentID:v21];
  v24 = [(HDRaceRouteSnapshotEntity *)v23 snapshotDataWithTransaction:*(a1 + 32) error:a5];
  if (v24)
  {
    v40 = v12;
    v41 = v11;
    v25 = v8;
    v26 = v7;
    v27 = HDSQLiteColumnWithNameAsInt64();
    v28 = *(a1 + 32);
    v44 = 0;
    v29 = [HDRaceRouteWorkoutEntity startingPointForWorkoutWithPersistentID:v27 transaction:v28 error:&v44];
    v30 = v44;
    v31 = v30;
    if (v29)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30 == 0;
    }

    v33 = v32;
    if (v32)
    {
      v34 = *(a1 + 40);
      v35 = [objc_alloc(MEMORY[0x277CCD860]) _initWithUUID:v26 workoutClusterUUID:v25 clusterSize:v39 relevanceValue:v38 workoutActivityType:v41 lastWorkoutUUID:v40 lastWorkoutDate:v10 lastWorkoutDistance:v14 lastWorkoutDuration:v16 lastWorkoutStartingPoint:v18 bestWorkoutUUID:v20 bestWorkoutDate:v29 bestWorkoutDistance:v43 bestWorkoutDuration:v42 workoutRouteSnapshot:v24 workoutRouteLabel:v22];
      [v34 addObject:v35];
    }

    else if (a5)
    {
      v36 = v30;
      *a5 = v31;
    }

    else
    {
      _HKLogDroppedError();
    }

    v7 = v26;
    v8 = v25;
    v12 = v40;
    v11 = v41;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

+ (BOOL)pruneRaceRouteClustersWithEligibleEntities:(id)entities transaction:(id)transaction error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v9 = [entities hk_map:&__block_literal_global_80];
  v10 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"ROWID" values:v9];
  if ([(HDRaceRouteClusterEntity *)self _deleteClusterBackingDataWithPredicate:v10 transaction:transactionCopy error:error])
  {
    v11 = [transactionCopy databaseForEntityClass:self];
    v12 = [self deleteEntitiesInDatabase:v11 predicate:v10 error:error];
    v21 = 0;
    v13 = [HDRaceRouteWorkoutEntity pruneWorkoutsMarkedForDeletionInTransaction:transactionCopy error:&v21];
    v14 = v21;
    if (!v13)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v18 = v15;
        v19 = objc_opt_class();
        *buf = 138543618;
        v23 = v19;
        v24 = 2114;
        v25 = v14;
        v20 = v19;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to prune workouts marked for deletion: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __89__HDRaceRouteClusterEntity_pruneRaceRouteClustersWithEligibleEntities_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

+ (uint64_t)_deleteClusterBackingDataWithPredicate:(void *)predicate transaction:(uint64_t)transaction error:
{
  v18[3] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [predicateCopy databaseForEntityClass:v8];
  v10 = [v8 queryWithDatabase:v9 predicate:v7];

  v18[0] = @"last_workout_rowid";
  v18[1] = @"best_workout_rowid";
  v18[2] = @"snapshot_id";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HDRaceRouteClusterEntity__deleteClusterBackingDataWithPredicate_transaction_error___block_invoke;
  v16[3] = &unk_27861E4C0;
  v17 = predicateCopy;
  v12 = predicateCopy;
  v13 = [v10 enumerateProperties:v11 error:transaction enumerationHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (uint64_t)_enumerateRoutePointsForClusterUUID:(double)d workoutSelection:(uint64_t)selection timestampAnchor:(void *)anchor limit:(uint64_t)limit startDuration:(uint64_t)duration finishDuration:(void *)finishDuration profile:(uint64_t)profile error:(void *)self0 dataHandler:
{
  anchorCopy = anchor;
  errorCopy = error;
  finishDurationCopy = finishDuration;
  v21 = objc_opt_self();
  database = [finishDurationCopy database];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __158__HDRaceRouteClusterEntity__enumerateRoutePointsForClusterUUID_workoutSelection_timestampAnchor_limit_startDuration_finishDuration_profile_error_dataHandler___block_invoke;
  v27[3] = &unk_27861E538;
  v30 = v21;
  limitCopy = limit;
  selfCopy = self;
  durationCopy = duration;
  v34 = a2;
  dCopy = d;
  v28 = anchorCopy;
  v29 = errorCopy;
  v23 = errorCopy;
  v24 = anchorCopy;
  v25 = [v21 performReadTransactionWithHealthDatabase:database error:profile block:v27];

  return v25;
}

+ (BOOL)unitTest_deleteAllClusterAndBackingDataInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  if ([(HDRaceRouteClusterEntity *)self _deleteClusterBackingDataWithPredicate:transactionCopy transaction:error error:?])
  {
    v7 = [transactionCopy databaseForEntityClass:self];
    if ([(HDSQLiteEntity *)HDRaceRouteWorkoutEntity deleteEntitiesInDatabase:v7 predicate:0 error:error])
    {
      v8 = [self deleteEntitiesInDatabase:v7 predicate:0 error:error];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (HDRaceRouteClusterEntity)_entityForClusterUUID:(void *)d database:(void *)database error:
{
  v6 = a2;
  dCopy = d;
  objc_opt_self();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v21 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__HDRaceRouteClusterEntity__entityForClusterUUID_database_error___block_invoke;
  v19[3] = &unk_278614860;
  v8 = v6;
  v20 = v8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HDRaceRouteClusterEntity__entityForClusterUUID_database_error___block_invoke_2;
  v18[3] = &unk_278614620;
  v18[4] = &v22;
  v9 = [dCopy executeSQL:@"SELECT ROWID FROM RacePreviousRoute_concrete_cluster WHERE uuid = ?" error:&v21 bindingHandler:v19 enumerationHandler:v18];
  v10 = v21;
  v11 = v10;
  if (v9 && v23[3] == -1 && !v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:database code:118 format:{@"Racing cluster (%@) not found", v8}];
  }

  else
  {
    v12 = v10;
    v13 = v12;
    if (v12)
    {
      if (database)
      {
        v14 = v12;
        *database = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if ((v23[3] & 0x8000000000000000) == 0)
  {
    v15 = [HDRaceRouteClusterEntity alloc];
    v16 = [(HDSQLiteEntity *)v15 initWithPersistentID:v23[3]];
    goto LABEL_13;
  }

LABEL_12:
  v16 = 0;
LABEL_13:

  _Block_object_dispose(&v22, 8);

  return v16;
}

uint64_t __85__HDRaceRouteClusterEntity__entityForLastWorkoutUUID_bestWorkoutUUID_database_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

void __69__HDRaceRouteClusterEntity__workoutIDForSelection_transaction_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  v8 = v9;
  if (v7 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_5;
    }

    v8 = v5;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
LABEL_5:
}

- (uint64_t)_fetchWorkoutIDsWithTransaction:(uint64_t)transaction error:(void *)error handler:
{
  v7 = a2;
  errorCopy = error;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__72;
  v24 = __Block_byref_object_dispose__72;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__72;
  v18 = __Block_byref_object_dispose__72;
  v19 = 0;
  v9 = [v7 databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HDRaceRouteClusterEntity__fetchWorkoutIDsWithTransaction_error_handler___block_invoke;
  v13[3] = &unk_278614860;
  v13[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDRaceRouteClusterEntity__fetchWorkoutIDsWithTransaction_error_handler___block_invoke_2;
  v12[3] = &unk_278615C30;
  v12[4] = &v20;
  v12[5] = &v14;
  v10 = [v9 executeSQL:@"SELECT last_workout_rowid error:best_workout_rowid FROM RacePreviousRoute_concrete_cluster WHERE ROWID = ?" bindingHandler:transaction enumerationHandler:{v13, v12}];

  errorCopy[2](errorCopy, v21[5], v15[5]);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __85__HDRaceRouteClusterEntity__deleteClusterBackingDataWithPredicate_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (![HDRaceRouteWorkoutEntity markForDeletionWorkoutDataWithPersistentID:HDSQLiteColumnAsInt64() transaction:*(a1 + 32) error:a4]|| ![HDRaceRouteWorkoutEntity markForDeletionWorkoutDataWithPersistentID:HDSQLiteColumnAsInt64() transaction:*(a1 + 32) error:a4])
  {
    return 0;
  }

  v6 = [(HDSQLiteEntity *)[HDRaceRouteSnapshotEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v7 = [(HDRaceRouteSnapshotEntity *)v6 deleteDataWithTransaction:*(a1 + 32) error:a4];

  return v7;
}

uint64_t __59__HDRaceRouteClusterEntity__isFrozenWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __102__HDRaceRouteClusterEntity__applyIncrementalChangeWithRelevance_workoutClusterUUID_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_double(a2, 1, *(a1 + 48));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  v6 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 4, v6);
}

uint64_t __97__HDRaceRouteClusterEntity__applyIncrementalChangeWithRouteLabel_snapshotData_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) persistentID]);
  v5 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  v6 = [*(a1 + 48) persistentID];

  return sqlite3_bind_int64(a2, 4, v6);
}

void __99__HDRaceRouteClusterEntity__insertCodableLastRoutePoints_codableBestRoutePoints_transaction_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t __107__HDRaceRouteClusterEntity__pruneRaceRouteClustersFromWorkoutClusterUUID_eligibleEntity_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v5);
}

BOOL __107__HDRaceRouteClusterEntity__pruneRaceRouteClustersFromWorkoutClusterUUID_eligibleEntity_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = HDSQLiteColumnAsInt64();
  result = [HDRaceRouteWorkoutEntity markForDeletionWorkoutDataWithPersistentID:v5 transaction:*(a1 + 32) error:a3];
  if (result)
  {
    v8 = *(a1 + 32);

    return [HDRaceRouteWorkoutEntity markForDeletionWorkoutDataWithPersistentID:v6 transaction:v8 error:a3];
  }

  return result;
}

uint64_t __107__HDRaceRouteClusterEntity__pruneRaceRouteClustersFromWorkoutClusterUUID_eligibleEntity_transaction_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __74__HDRaceRouteClusterEntity__fetchWorkoutIDsWithTransaction_error_handler___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __74__HDRaceRouteClusterEntity__fetchWorkoutIDsWithTransaction_error_handler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 0;
}

BOOL __158__HDRaceRouteClusterEntity__enumerateRoutePointsForClusterUUID_workoutSelection_timestampAnchor_limit_startDuration_finishDuration_profile_error_dataHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [(HDRaceRouteClusterEntity *)*(a1 + 48) _entityForClusterUUID:v6 database:a3 error:?];
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = v5;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__72;
    v27 = __Block_byref_object_dispose__72;
    v28 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__HDRaceRouteClusterEntity__workoutIDForSelection_transaction_error___block_invoke;
    v22[3] = &unk_27861E498;
    v22[4] = &v23;
    v22[5] = v8;
    if ([(HDRaceRouteClusterEntity *)v7 _fetchWorkoutIDsWithTransaction:v9 error:a3 handler:v22])
    {
      v10 = v24[5];
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;
    _Block_object_dispose(&v23, 8);

    if (v12)
    {
      v13 = [v12 longLongValue];
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      v16 = *(a1 + 80);
      v17 = *(a1 + 88);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __158__HDRaceRouteClusterEntity__enumerateRoutePointsForClusterUUID_workoutSelection_timestampAnchor_limit_startDuration_finishDuration_profile_error_dataHandler___block_invoke_2;
      v19[3] = &unk_27861E510;
      v21 = v16;
      v20 = *(a1 + 40);
      v11 = [HDRaceRouteWorkoutEntity enumerateRoutePointsForWorkoutPersistentID:v13 timestampAnchor:v15 limit:v9 startDuration:a3 finishDuration:v19 transaction:v14 error:v16 handler:v17];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __158__HDRaceRouteClusterEntity__enumerateRoutePointsForClusterUUID_workoutSelection_timestampAnchor_limit_startDuration_finishDuration_profile_error_dataHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBFC78];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 latitude_deg];
  v7 = v6;
  [v4 longitude_deg];
  v9 = v8;
  [v4 altitude_m];
  v11 = v10;
  [v4 odometer_m];
  v13 = v12;
  [v4 timestamp_s];
  v15 = v14 - *(a1 + 40);
  v16 = [v4 signalEnvironmentType];

  v17 = [v5 initWithLatitude:v16 longitude:v7 altitude:v9 odometer:v11 timestamp:v13 signalEnvironmentType:v15];
  v18 = (*(*(a1 + 32) + 16))();

  return v18;
}

+ (id)uniquedColumns
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"ROWID" deletionAction:0 isDeferred:1];
  v6 = @"snapshot_id";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertCodableCluster:(id)cluster syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  v117 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  transactionCopy = transaction;
  v13 = MEMORY[0x277CCAD78];
  uuid = [clusterCopy uuid];
  v89 = [v13 hk_UUIDWithData:uuid];

  v88 = [transactionCopy databaseForEntityClass:self];
  v99 = 0;
  v15 = [(HDRaceRouteClusterEntity *)self _entityForClusterUUID:v89 database:v88 error:&v99];
  v16 = v99;
  v85 = v16;
  if (!v15)
  {
    if ([v16 hk_isObjectNotFoundError])
    {
      lastWorkoutMetrics = [clusterCopy lastWorkoutMetrics];
      bestWorkoutMetrics = [clusterCopy bestWorkoutMetrics];
      if (lastWorkoutMetrics && bestWorkoutMetrics)
      {
        v81 = [HDRaceRouteWorkoutEntity insertCodableRacingMetrics:lastWorkoutMetrics transaction:transactionCopy error:error];
        if (v81)
        {
          workoutUUID = [lastWorkoutMetrics workoutUUID];
          workoutUUID2 = [bestWorkoutMetrics workoutUUID];
          v24 = [workoutUUID isEqualToData:workoutUUID2];

          if (v24)
          {
            [clusterCopy routeSnapshot];
            goto LABEL_48;
          }

          v80 = [HDRaceRouteWorkoutEntity insertCodableRacingMetrics:bestWorkoutMetrics transaction:transactionCopy error:error];
          if (v80)
          {
            [clusterCopy routeSnapshot];
            v62 = LABEL_48:;
            v63 = [HDRaceRouteSnapshotEntity insertSnapshotData:v62 transaction:transactionCopy error:error];

            if (v63)
            {
              v64 = +[HDRaceRouteClusterEntity _baseEntityProperties];
              v90[0] = MEMORY[0x277D85DD0];
              v90[1] = 3221225472;
              v90[2] = __95__HDRaceRouteClusterEntity_insertCodableCluster_syncProvenance_syncIdentity_transaction_error___block_invoke;
              v90[3] = &unk_27861E7A0;
              v91 = clusterCopy;
              v92 = lastWorkoutMetrics;
              v93 = v81;
              v94 = bestWorkoutMetrics;
              v95 = v79;
              v96 = v63;
              provenanceCopy = provenance;
              identityCopy = identity;
              v15 = [self insertOrReplaceEntity:0 database:v88 properties:v64 error:error bindingHandler:v90];

              v65 = v15 != 0;
            }

            else
            {
              v65 = 0;
              v15 = 0;
            }

            if (v65)
            {
              goto LABEL_56;
            }

LABEL_53:
            v43 = 0;
            goto LABEL_68;
          }
        }

        else
        {
        }
      }

      else
      {
        _HKInitializeLogging();
        v58 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "Resetting received sync anchors due to last or best metric being nil.", buf, 2u);
        }

        v59 = [MEMORY[0x277CCA9B8] hk_error:1403 description:@"Last or best metric is nil."];
        v60 = v59;
        if (v59)
        {
          if (error)
          {
            v61 = v59;
            *error = v60;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v51 = v85;
      v52 = v51;
      if (v51)
      {
        if (error)
        {
          v53 = v51;
          *error = v52;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v15 = 0;
    goto LABEL_53;
  }

  v17 = transactionCopy;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  LOBYTE(v103) = 0;
  v18 = [v17 databaseForEntity:v15];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __59__HDRaceRouteClusterEntity__isFrozenWithTransaction_error___block_invoke;
  v113 = &unk_278614860;
  v114 = v15;
  v106 = MEMORY[0x277D85DD0];
  v107 = 3221225472;
  v108 = __59__HDRaceRouteClusterEntity__isFrozenWithTransaction_error___block_invoke_2;
  v109 = &unk_278614620;
  v110 = &v100;
  v19 = [v18 executeSQL:@"SELECT frozen FROM RacePreviousRoute_concrete_cluster WHERE ROWID = ?" error:error bindingHandler:buf enumerationHandler:&v106];

  if (v19)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v101 + 24)];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v100, 8);

  if (!v20)
  {
    goto LABEL_37;
  }

  if ([v20 BOOLValue])
  {
    v25 = MEMORY[0x277CCAD78];
    workoutClusterUUID = [clusterCopy workoutClusterUUID];
    v27 = [v25 hk_UUIDWithData:workoutClusterUUID];

    _HKInitializeLogging();
    v28 = MEMORY[0x277CCC330];
    v29 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v89;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "Updating relevance value for re-synced cluster UUID: %{public}@ (workout cluster %{public}@)", buf, 0x16u);
    }

    [clusterCopy relevance];
    v31 = v30;
    v32 = v27;
    v33 = [v17 databaseForEntity:v15];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __102__HDRaceRouteClusterEntity__applyIncrementalChangeWithRelevance_workoutClusterUUID_transaction_error___block_invoke;
    v113 = &unk_2786199F8;
    v116 = v31;
    v34 = v32;
    v114 = v34;
    v115 = v15;
    LODWORD(v32) = [v33 executeSQL:@"UPDATE RacePreviousRoute_concrete_cluster SET relevance = ? error:workout_cluster_uuid = ? bindingHandler:modified_date = ? WHERE ROWID = ?" enumerationHandler:{error, buf, 0}];

    if (v32)
    {
      if (![clusterCopy hasRouteSnapshot] || !objc_msgSend(clusterCopy, "hasRouteLabel"))
      {
        goto LABEL_22;
      }

      _HKInitializeLogging();
      v35 = *v28;
      if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v89;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "Updating route snapshot/label for re-synced cluster UUID: %{public}@ (workout cluster %{public}@)", buf, 0x16u);
      }

      routeLabel = [clusterCopy routeLabel];
      routeSnapshot = [clusterCopy routeSnapshot];
      v37 = routeLabel;
      v38 = v17;
      v39 = [HDRaceRouteSnapshotEntity insertSnapshotData:routeSnapshot transaction:v38 error:error];
      if (v39)
      {
        v40 = [v38 databaseForEntity:v15];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __97__HDRaceRouteClusterEntity__applyIncrementalChangeWithRouteLabel_snapshotData_transaction_error___block_invoke;
        v113 = &unk_278613528;
        v41 = v37;
        v114 = v41;
        v42 = v39;
        v115 = v42;
        v116 = v15;
        v87 = [v40 executeSQL:@"UPDATE RacePreviousRoute_concrete_cluster SET route_label = ? error:snapshot_id = ? bindingHandler:modified_date = ? WHERE ROWID = ?" enumerationHandler:{error, buf, 0}];

        if (v87)
        {
LABEL_22:
          v43 = v15;
LABEL_66:

          goto LABEL_67;
        }
      }

      else
      {
      }
    }

    v43 = 0;
    goto LABEL_66;
  }

  lastWorkoutMetrics2 = [clusterCopy lastWorkoutMetrics];
  routePoints = [lastWorkoutMetrics2 routePoints];
  bestWorkoutMetrics2 = [clusterCopy bestWorkoutMetrics];
  routePoints2 = [bestWorkoutMetrics2 routePoints];
  v47 = routePoints;
  v48 = routePoints2;
  v49 = v17;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v113 = __Block_byref_object_copy__72;
  v114 = __Block_byref_object_dispose__72;
  v115 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__72;
  v110 = __Block_byref_object_dispose__72;
  v111 = 0;
  v100 = MEMORY[0x277D85DD0];
  v101 = 3221225472;
  v102 = __99__HDRaceRouteClusterEntity__insertCodableLastRoutePoints_codableBestRoutePoints_transaction_error___block_invoke;
  v103 = &unk_27861E4E8;
  v104 = buf;
  v105 = &v106;
  if ((-[HDRaceRouteClusterEntity _fetchWorkoutIDsWithTransaction:error:handler:](v15, v49, error, &v100) & 1) == 0 || [v47 count] && !+[HDRaceRouteWorkoutEntity insertCodableRoutePoints:workoutPersistentID:transaction:error:](HDRaceRouteWorkoutEntity, "insertCodableRoutePoints:workoutPersistentID:transaction:error:", v47, objc_msgSend(*(*&buf[8] + 40), "longLongValue"), v49, error))
  {
    goto LABEL_32;
  }

  if (![v48 count] || +[HDRaceRouteWorkoutEntity insertCodableRoutePoints:workoutPersistentID:transaction:error:](HDRaceRouteWorkoutEntity, "insertCodableRoutePoints:workoutPersistentID:transaction:error:", v48, objc_msgSend(*(v107 + 40), "longLongValue"), v49, error))
  {
    v50 = 1;
  }

  else
  {
LABEL_32:
    v50 = 0;
  }

  _Block_object_dispose(&v106, 8);

  _Block_object_dispose(buf, 8);
  if (!v50)
  {
    goto LABEL_37;
  }

  if ([clusterCopy final])
  {
    *buf = @"frozen";
    v54 = MEMORY[0x277CBEA60];
    v55 = v49;
    v56 = [v54 arrayWithObjects:buf count:1];
    v57 = [v55 databaseForEntity:v15];

    LOBYTE(v55) = [v15 updateProperties:v56 database:v57 error:error bindingHandler:&__block_literal_global_413];
    if ((v55 & 1) == 0)
    {
LABEL_37:
      v43 = 0;
LABEL_67:

      goto LABEL_68;
    }
  }

  if (![clusterCopy final])
  {
    goto LABEL_61;
  }

LABEL_56:
  v66 = MEMORY[0x277CCAD78];
  workoutClusterUUID2 = [clusterCopy workoutClusterUUID];
  v68 = [v66 hk_UUIDWithData:workoutClusterUUID2];

  v69 = v68;
  v70 = v15;
  v71 = transactionCopy;
  v72 = [v71 databaseForEntityClass:objc_opt_self()];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __107__HDRaceRouteClusterEntity__pruneRaceRouteClustersFromWorkoutClusterUUID_eligibleEntity_transaction_error___block_invoke;
  v113 = &unk_278613038;
  v73 = v69;
  v114 = v73;
  v74 = v70;
  v115 = v74;
  v100 = MEMORY[0x277D85DD0];
  v101 = 3221225472;
  v102 = __107__HDRaceRouteClusterEntity__pruneRaceRouteClustersFromWorkoutClusterUUID_eligibleEntity_transaction_error___block_invoke_2;
  v103 = &unk_278614098;
  v75 = v71;
  v104 = v75;
  if ([v72 executeSQL:@"SELECT last_workout_rowid error:best_workout_rowid FROM RacePreviousRoute_concrete_cluster WHERE workout_cluster_uuid = ? AND ROWID != ?" bindingHandler:error enumerationHandler:{buf, &v100}])
  {
    v106 = MEMORY[0x277D85DD0];
    v107 = 3221225472;
    v108 = __107__HDRaceRouteClusterEntity__pruneRaceRouteClustersFromWorkoutClusterUUID_eligibleEntity_transaction_error___block_invoke_3;
    v109 = &unk_278613038;
    v110 = v73;
    v111 = v74;
    v76 = [v72 executeSQL:@"DELETE FROM RacePreviousRoute_concrete_cluster WHERE workout_cluster_uuid = ? AND ROWID != ?" error:error bindingHandler:&v106 enumerationHandler:0];
  }

  else
  {
    v76 = 0;
  }

  if (!v76)
  {
    v43 = 0;
    v15 = v74;
  }

  else
  {
LABEL_61:
    v15 = v15;
    v43 = v15;
  }

LABEL_68:

  v77 = *MEMORY[0x277D85DE8];

  return v43;
}

void __95__HDRaceRouteClusterEntity_insertCodableCluster_syncProvenance_syncIdentity_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) uuid];
  MEMORY[0x22AAC6B40](a2, @"uuid", v4);

  v5 = [*(a1 + 32) workoutClusterUUID];
  MEMORY[0x22AAC6B40](a2, @"workout_cluster_uuid", v5);

  [*(a1 + 32) relevance];
  MEMORY[0x22AAC6B60](a2, @"relevance");
  MEMORY[0x22AAC6B90](a2, @"workout_activity_type", [*(a1 + 32) activityType]);
  MEMORY[0x22AAC6B90](a2, @"workout_cluster_size", [*(a1 + 32) clusterSize]);
  v6 = [*(a1 + 40) workoutUUID];
  MEMORY[0x22AAC6B40](a2, @"last_workout_uuid", v6);

  [*(a1 + 40) startDate];
  MEMORY[0x22AAC6B60](a2, @"last_workout_date");
  [*(a1 + 40) distance];
  MEMORY[0x22AAC6B60](a2, @"last_workout_distance");
  [*(a1 + 40) duration];
  MEMORY[0x22AAC6B60](a2, @"last_workout_duration");
  MEMORY[0x22AAC6B90](a2, @"last_workout_rowid", [*(a1 + 48) persistentID]);
  v7 = [*(a1 + 56) workoutUUID];
  MEMORY[0x22AAC6B40](a2, @"best_workout_uuid", v7);

  [*(a1 + 56) startDate];
  MEMORY[0x22AAC6B60](a2, @"best_workout_date");
  [*(a1 + 56) distance];
  MEMORY[0x22AAC6B60](a2, @"best_workout_distance");
  [*(a1 + 56) duration];
  MEMORY[0x22AAC6B60](a2, @"best_workout_duration");
  MEMORY[0x22AAC6B90](a2, @"best_workout_rowid", [*(a1 + 64) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"snapshot_id", [*(a1 + 72) persistentID]);
  v8 = [*(a1 + 32) routeLabel];
  MEMORY[0x22AAC6BD0](a2, @"route_label", v8);

  v9 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"modified_date", v9);

  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 80));
  MEMORY[0x22AAC6B30](a2, @"frozen", [*(a1 + 32) final]);
  MEMORY[0x22AAC6B90](a2, @"sync_anchor", 0);
  MEMORY[0x22AAC6B90](a2, @"relevance_anchor", 0);
  v10 = *(a1 + 88);

  JUMPOUT(0x22AAC6B90);
}

+ (id)entityForClusterUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [(HDRaceRouteClusterEntity *)self _entityForClusterUUID:dCopy database:v9 error:error];

  return v10;
}

uint64_t __79__HDRaceRouteClusterEntity__enumerateClusterUUIDsForProfile_error_dataHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDRaceRouteClusterEntity__enumerateClusterUUIDsForProfile_error_dataHandler___block_invoke_2;
  v8[3] = &unk_278613B30;
  v9 = *(a1 + 32);
  v6 = [v5 executeSQL:@"SELECT uuid FROM RacePreviousRoute_concrete_cluster" error:a3 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

uint64_t __79__HDRaceRouteClusterEntity__enumerateClusterUUIDsForProfile_error_dataHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v12 = [self nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v12;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  v75 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v38 = sessionCopy;
  v15 = [sessionCopy maxEncodedBytesPerChangeSetForSyncEntityClass:self];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v68[3] = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = start;
  objc_opt_self();
  v17 = +[HDRaceRouteClusterEntity _baseEntityProperties];
  v69 = @"modified_date";
  v70 = @"sync_provenance";
  v71 = @"frozen";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:3];
  v40 = [v17 arrayByExcludingObjectsInArray:v18];

  v19 = [v40 componentsJoinedByString:{@", "}];
  database = [profileCopy database];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v43[3] = &unk_27861E840;
  selfCopy = self;
  v21 = v19;
  v44 = v21;
  v48 = &v56;
  v53 = start;
  v54 = end;
  v49 = &v60;
  v22 = profileCopy;
  v45 = v22;
  v50 = v68;
  v23 = v16;
  v46 = v23;
  v51 = &v64;
  v55 = v15;
  v24 = handlerCopy;
  v47 = v24;
  v25 = [self performReadTransactionWithHealthDatabase:database error:error block:v43];

  if (*(v61 + 24) != 1)
  {
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_10:
    v35 = 0;
    goto LABEL_11;
  }

  v26 = objc_alloc_init(HDCodableRacingCluster);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_5;
  v41[3] = &unk_27861E868;
  v27 = v26;
  v42 = v27;
  v28 = v41;
  v29 = v22;
  v30 = objc_opt_self();
  database2 = [v29 database];

  v69 = MEMORY[0x277D85DD0];
  v70 = 3221225472;
  v71 = __79__HDRaceRouteClusterEntity__enumerateClusterUUIDsForProfile_error_dataHandler___block_invoke;
  v72 = &unk_27861E7C8;
  v73 = v28;
  v74 = v30;
  v32 = v28;
  LOBYTE(v28) = [v30 performReadTransactionWithHealthDatabase:database2 error:error block:&v69];

  if ((v28 & 1) == 0)
  {

    goto LABEL_10;
  }

  eligibleClusterUUIDs = [(HDCodableRacingCluster *)v27 eligibleClusterUUIDs];
  v34 = [eligibleClusterUUIDs count] == 0;

  if (!v34)
  {
    [v23 addObject:v27];
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v35 = [v24 sendCodableChange:v23 resultAnchor:v57[3] sequence:v65[3] done:1 error:error];
LABEL_11:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(v68, 8);

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 96)];
  v7 = *(*(*(a1 + 64) + 8) + 24);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM RacePreviousRoute_concrete_cluster WHERE relevance_anchor > %lld AND relevance_anchor <= %lld ORDER BY relevance_anchor ASC", *(a1 + 32), v7, *(a1 + 112)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v17[3] = &unk_27861E818;
  v9 = *(a1 + 104);
  v22 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v25 = v9;
  v26 = *(a1 + 96);
  v18 = v5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 80);
  v19 = v10;
  v23 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 88);
  v20 = v12;
  v24 = v13;
  v27 = *(a1 + 120);
  v21 = *(a1 + 56);
  v14 = v5;
  v15 = [v6 executeSQL:v8 error:a3 bindingHandler:0 enumerationHandler:v17];

  return v15;
}

uint64_t __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 64) + 8) + 24) = 1;
  *(*(*(a1 + 72) + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  objc_opt_self();
  v7 = objc_alloc_init(HDCodableRacingCluster);
  v8 = HDSQLiteColumnWithNameAsData();
  [(HDCodableRacingCluster *)v7 setUuid:v8];

  v9 = HDSQLiteColumnWithNameAsData();
  [(HDCodableRacingCluster *)v7 setWorkoutClusterUUID:v9];

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableRacingCluster *)v7 setRelevance:?];
  if (v4 > v5)
  {
    [(HDCodableRacingCluster *)v7 setActivityType:HDSQLiteColumnWithNameAsInt64()];
    [(HDCodableRacingCluster *)v7 setClusterSize:HDSQLiteColumnWithNameAsInt64()];
    v10 = objc_alloc_init(HDCodableRacingMetrics);
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableRacingMetrics *)v10 setWorkoutUUID:v11];

    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableRacingMetrics *)v10 setStartDate:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableRacingMetrics *)v10 setDistance:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableRacingMetrics *)v10 setDuration:?];
    [(HDCodableRacingCluster *)v7 setLastWorkoutMetrics:v10];
    v12 = objc_alloc_init(HDCodableRacingMetrics);
    v13 = HDSQLiteColumnWithNameAsData();
    [(HDCodableRacingMetrics *)v12 setWorkoutUUID:v13];

    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableRacingMetrics *)v12 setStartDate:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableRacingMetrics *)v12 setDistance:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableRacingMetrics *)v12 setDuration:?];
    [(HDCodableRacingCluster *)v7 setBestWorkoutMetrics:v12];
    v14 = HDSQLiteColumnWithNameAsString();
    [(HDCodableRacingCluster *)v7 setRouteLabel:v14];
  }

  v15 = *(a1 + 112);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v7;
  v19 = v17;
  v20 = v16;
  objc_opt_self();
  v21 = HDSQLiteColumnWithNameAsInt64();
  v22 = [v19 syncIdentityManager];

  v23 = [v22 identityForEntityID:v21 transaction:v20 error:a3];

  if (v23)
  {
    v24 = [v23 identity];
    v25 = [v24 codableSyncIdentity];
    [(HDCodableRacingCluster *)v18 setSyncIdentity:v25];

    if (v4 <= v5)
    {
      *(*(*(a1 + 80) + 8) + 24) += [(PBCodable *)v18 encodedByteCount];
      [*(a1 + 48) addObject:v18];
      v66 = 1;
    }

    else
    {
      v26 = MEMORY[0x277CCAD78];
      v27 = [(HDCodableRacingCluster *)v18 uuid];
      v28 = [v26 hk_UUIDWithData:v27];

      v79 = [(HDSQLiteEntity *)[HDRaceRouteSnapshotEntity alloc] initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
      v29 = [(HDRaceRouteSnapshotEntity *)v79 snapshotDataWithTransaction:*(a1 + 32) error:a3];
      if (v29)
      {
        v77 = v29;
        [(HDCodableRacingCluster *)v18 setRouteSnapshot:v29];
        v105 = 0;
        v106 = &v105;
        v107 = 0x2020000000;
        v108 = 0xBFF0000000000000;
        v101 = 0;
        v102 = &v101;
        v103 = 0x2020000000;
        v104 = 0xBFF0000000000000;
        v30 = MEMORY[0x277CCAD78];
        v31 = [(HDCodableRacingCluster *)v18 bestWorkoutMetrics];
        v32 = [v31 workoutUUID];
        v78 = [v30 hk_UUIDWithData:v32];

        v33 = *(a1 + 32);
        v34 = [*(a1 + 40) metadataManager];
        v35 = [HDRaceRouteClusterWorkout clusterWorkoutWithWorkoutUUID:v78 transaction:v33 metadataManager:v34 error:a3];

        v80 = v35;
        if (v35)
        {
          v36 = MEMORY[0x277CCAD78];
          v37 = [(HDCodableRacingCluster *)v18 lastWorkoutMetrics];
          v38 = [v37 workoutUUID];
          v39 = [v36 hk_UUIDWithData:v38];

          v40 = *(a1 + 32);
          v41 = [*(a1 + 40) metadataManager];
          v42 = [HDRaceRouteClusterWorkout clusterWorkoutWithWorkoutUUID:v39 transaction:v40 metadataManager:v41 error:a3];
          v76 = v39;

          if (v42)
          {
            *(*(*(a1 + 88) + 8) + 24) = 0;
            v81 = v42;
            while (1)
            {
              v43 = [(HDCodableRacingCluster *)v18 copy];
              v44 = *(*(*(a1 + 80) + 8) + 24);
              v45 = [v43 encodedByteCount];
              v46 = *(a1 + 112);
              v47 = *(a1 + 120) - v45 - v44;
              if (v47 >= 150)
              {
                v48 = v47 / 50;
              }

              else
              {
                v48 = 2;
              }

              v97 = 0;
              v98 = &v97;
              v99 = 0x2020000000;
              v100 = 0;
              v49 = v102[3];
              [v42 startDuration];
              v51 = v50;
              [v42 finishDuration];
              v53 = v52;
              v54 = vcvtpd_u64_f64(vcvtd_n_f64_s64(v48, 1uLL));
              v55 = *(a1 + 40);
              v92[0] = MEMORY[0x277D85DD0];
              v92[1] = 3221225472;
              v92[2] = __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3;
              v92[3] = &unk_27861E7F0;
              v94 = &v97;
              v96 = v54;
              v56 = v43;
              v93 = v56;
              v95 = &v101;
              if (([(HDRaceRouteClusterEntity *)v49 _enumerateRoutePointsForClusterUUID:v51 workoutSelection:v53 timestampAnchor:v46 limit:v28 startDuration:1 finishDuration:v54 + 1 profile:v55 error:a3 dataHandler:v92]& 1) == 0)
              {
                v66 = 0;
                v65 = 1;
                goto LABEL_29;
              }

              v57 = v18;
              v58 = v28;
              v88 = 0;
              v89 = &v88;
              v90 = 0x2020000000;
              v91 = 0;
              v59 = [v56 lastWorkoutMetrics];
              v60 = [v59 workoutUUID];
              v61 = [v56 bestWorkoutMetrics];
              v62 = [v61 workoutUUID];
              v63 = [v60 isEqualToData:v62];

              if (v63)
              {
                v64 = v98;
              }

              else
              {
                v67 = *(a1 + 112);
                v68 = v106[3];
                [v80 startDuration];
                v70 = v69;
                v28 = v58;
                [v80 finishDuration];
                v72 = v71;
                v73 = *(a1 + 40);
                v83[0] = MEMORY[0x277D85DD0];
                v83[1] = 3221225472;
                v83[2] = __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_4;
                v83[3] = &unk_27861E7F0;
                v85 = &v88;
                v87 = v54;
                v84 = v56;
                v86 = &v105;
                LODWORD(v73) = [(HDRaceRouteClusterEntity *)v68 _enumerateRoutePointsForClusterUUID:v70 workoutSelection:v72 timestampAnchor:v67 limit:v58 startDuration:2 finishDuration:v54 + 1 profile:v73 error:a3 dataHandler:v83];

                if (!v73)
                {
                  v66 = 0;
                  v65 = 1;
                  goto LABEL_26;
                }

                if (v98[3] > v54)
                {
LABEL_20:
                  v65 = 1;
                  goto LABEL_21;
                }

                v64 = v89;
              }

              if (v64[3] > v54)
              {
                goto LABEL_20;
              }

              [v56 setFinal:1];
              v65 = 0;
LABEL_21:
              *(*(*(a1 + 80) + 8) + 24) += [v56 encodedByteCount];
              [*(a1 + 48) addObject:v56];
              if (*(*(*(a1 + 80) + 8) + 24) > *(a1 + 120))
              {
                v28 = v58;
                v18 = v57;
                v42 = v81;
                if ([*(a1 + 56) sendCodableChange:*(a1 + 48) resultAnchor:*(*(*(a1 + 72) + 8) + 24) sequence:*(*(*(a1 + 88) + 8) + 24) done:0 error:a3])
                {
                  ++*(*(*(a1 + 88) + 8) + 24);
                  *(*(*(a1 + 80) + 8) + 24) = 0;
                  [*(a1 + 48) removeAllObjects];
                  v66 = 1;
                }

                else
                {
                  v66 = 0;
                }

                goto LABEL_28;
              }

              v66 = 1;
              v28 = v58;
LABEL_26:
              v18 = v57;
              v42 = v81;
LABEL_28:
              _Block_object_dispose(&v88, 8);
LABEL_29:

              _Block_object_dispose(&v97, 8);
              if (!v65 || (v66 & 1) == 0)
              {
                goto LABEL_38;
              }
            }
          }

          v66 = 0;
LABEL_38:
        }

        else
        {
          v66 = 0;
        }

        _Block_object_dispose(&v101, 8);
        _Block_object_dispose(&v105, 8);
        v74 = v79;
        v29 = v77;
      }

      else
      {
        v66 = 0;
        v74 = v79;
      }
    }
  }

  else
  {

    v66 = 0;
  }

  return v66;
}

uint64_t __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3(uint64_t a1, void *a2)
{
  if (++*(*(*(a1 + 40) + 8) + 24) <= *(a1 + 56))
  {
    v3 = [a2 codableRepresentationForSync];
    v4 = [*(a1 + 32) lastWorkoutMetrics];
    [v4 addRoutePoints:v3];

    [v3 timestamp];
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  return 1;
}

uint64_t __103__HDRaceRouteClusterEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_4(uint64_t a1, void *a2)
{
  if (++*(*(*(a1 + 40) + 8) + 24) <= *(a1 + 56))
  {
    v3 = [a2 codableRepresentationForSync];
    v4 = [*(a1 + 32) bestWorkoutMetrics];
    [v4 addRoutePoints:v3];

    [v3 timestamp];
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  return 1;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableRacingCluster alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  objectsCopy = objects;
  v12 = -[HDInsertRacingClustersOperation initWithClusters:provenance:]([HDInsertRacingClustersOperation alloc], "initWithClusters:provenance:", objectsCopy, [store syncProvenance]);

  LODWORD(error) = [(HDJournalableOperation *)v12 performOrJournalWithProfile:profileCopy error:error];
  return error ^ 1;
}

@end