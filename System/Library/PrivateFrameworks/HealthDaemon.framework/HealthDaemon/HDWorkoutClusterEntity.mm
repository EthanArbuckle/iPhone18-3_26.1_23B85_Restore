@interface HDWorkoutClusterEntity
+ (BOOL)deleteWorkoutClusterWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)updateWorkoutClusterWithUUID:(id)a3 relevanceValue:(id)a4 lastWorkoutUUID:(id)a5 bestWorkoutUUID:(id)a6 workoutUUIDsToAssociate:(id)a7 workoutUUIDsToRemove:(id)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)updateWorkoutClusterWithUUID:(id)a3 routeLabel:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)updateWorkoutClusterWithUUID:(id)a3 routeSnapshot:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_baseEntityProperties;
+ (id)_clusterModelForSQLiteRow:(void *)a3 database:(uint64_t)a4 error:;
+ (id)_workoutClusterEntityForUUID:(void *)a3 database:(void *)a4 error:;
+ (id)_workoutEntityForUUID:(void *)a3 database:(void *)a4 error:;
+ (id)_workoutUUIDForPersistentID:(void *)a3 database:(uint64_t)a4 error:;
+ (id)clusterEntitiesWithTransaction:(id)a3 limit:(unint64_t)a4 error:(id *)a5;
+ (id)clusterUUIDsForWorkoutUUIDs:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)entityForClusterUUID:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)insertWorkoutCluster:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)privateSubEntities;
+ (id)uniquedColumns;
+ (id)workoutClusterContainingWorkoutUUID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)workoutClustersForProfile:(id)a3 limit:(unint64_t)a4 error:(id *)a5;
+ (id)workoutEntityForUUID:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)workoutUUIDsForClusterUUID:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)modelPropertiesWithTransaction:(id)a3 error:(id *)a4 handler:(id)a5;
- (id)snapshotEntityWithTransaction:(id)a3 error:(id *)a4;
- (id)workoutRouteSnapshotWithTransaction:(id)a3 error:(id *)a4;
- (id)workoutUUIDsWithTransaction:(id)a3 error:(id *)a4;
- (uint64_t)_associateWorkoutUUIDs:(void *)a3 transaction:(void *)a4 error:;
@end

@implementation HDWorkoutClusterEntity

+ (id)entityForClusterUUID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = [(HDWorkoutClusterEntity *)a1 _workoutClusterEntityForUUID:v8 database:v9 error:a5];

  return v10;
}

+ (id)_workoutClusterEntityForUUID:(void *)a3 database:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:v6];
  v15 = 0;
  v9 = [(HDSQLiteEntity *)HDWorkoutClusterEntity anyInDatabase:v7 predicate:v8 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v9 | v10)
  {
    v12 = v10;
    if (v11)
    {
      if (a4)
      {
        v13 = v12;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:118 format:{@"Cluster (%@) not found", v6}];
  }

  return v9;
}

+ (id)insertWorkoutCluster:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__205;
  v25 = __Block_byref_object_dispose__205;
  v26 = 0;
  v10 = [v9 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke;
  v16[3] = &unk_27861C150;
  v20 = a1;
  v11 = v8;
  v17 = v11;
  v19 = &v21;
  v12 = v9;
  v18 = v12;
  LODWORD(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v16];

  if (a5)
  {
    v13 = v22[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 56)];
  v7 = *(a1 + 56);
  v8 = [*(a1 + 32) lastWorkoutUUID];
  v9 = [(HDWorkoutClusterEntity *)v7 _workoutEntityForUUID:v8 database:v6 error:a3];

  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = [*(a1 + 32) bestWorkoutUUID];
    v12 = [(HDWorkoutClusterEntity *)v10 _workoutEntityForUUID:v11 database:v6 error:a3];

    if (v12)
    {
      v13 = [*(a1 + 32) workoutRouteSnapshot];
      v14 = [HDRaceRouteSnapshotEntity insertSnapshotData:v13 transaction:v5 error:a3];

      v15 = *(a1 + 56);
      v16 = +[HDWorkoutClusterEntity _baseEntityProperties];
      v17 = [v16 arrayByAddingObject:@"snapshot_id"];

      v18 = *(a1 + 56);
      v19 = [*(a1 + 40) database];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke_2;
      v31 = &unk_278624198;
      v32 = *(a1 + 32);
      v33 = v9;
      v34 = v12;
      v20 = v14;
      v35 = v20;
      v21 = [v18 insertOrReplaceEntity:0 healthDatabase:v19 properties:v17 error:a3 bindingHandler:&v28];
      v22 = *(*(a1 + 48) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = *(*(*(a1 + 48) + 8) + 40);
      if (v24)
      {
        v25 = [*(a1 + 32) workoutUUIDs];
        v26 = [(HDWorkoutClusterEntity *)v24 _associateWorkoutUUIDs:v25 transaction:v5 error:a3];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)_workoutEntityForUUID:(void *)a3 database:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = HDDataEntityPredicateForDataUUID();
  v14 = 0;
  v9 = [(HDDataEntity *)HDWorkoutEntity anyInDatabase:v7 predicate:v8 error:&v14];

  v10 = v14;
  if (v9 | v10)
  {
    v11 = v10;
    if (v10)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:118 format:{@"Workout (%@) not found", v6}];
  }

  return v9;
}

+ (id)_baseEntityProperties
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"uuid";
  v3[1] = @"relevance";
  v3[2] = @"last_workout_id";
  v3[3] = @"best_workout_id";
  v3[4] = @"route_label";
  v3[5] = @"modified_date";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void __61__HDWorkoutClusterEntity_insertWorkoutCluster_profile_error___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[4] clusterUUID];
  MEMORY[0x22AAC6C00](a2, @"uuid", v4);

  [a1[4] relevanceValue];
  MEMORY[0x22AAC6B60](a2, @"relevance");
  MEMORY[0x22AAC6B90](a2, @"last_workout_id", [a1[5] persistentID]);
  MEMORY[0x22AAC6B90](a2, @"best_workout_id", [a1[6] persistentID]);
  MEMORY[0x22AAC6B90](a2, @"snapshot_id", [a1[7] persistentID]);
  v5 = [a1[4] workoutRouteLabel];
  MEMORY[0x22AAC6BD0](a2, @"route_label", v5);

  v6 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"modified_date", v6);
}

- (uint64_t)_associateWorkoutUUIDs:(void *)a3 transaction:(void *)a4 error:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = v8;
        v15 = v13;
        v16 = [v14 databaseForEntity:a1];
        v17 = [HDWorkoutClusterEntity _workoutEntityForUUID:v15 database:v16 error:a4];

        if (!v17)
        {

LABEL_13:
          v19 = 0;
          goto LABEL_14;
        }

        v18 = [HDWorkoutClusterComponentEntity associateWorkout:v17 withCluster:a1 transaction:v14 error:a4];

        if (!v18)
        {
          goto LABEL_13;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v19 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 1;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)clusterEntitiesWithTransaction:(id)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM RacePreviousRoute_workout_cluster ORDER BY relevance DESC LIMIT %lu", a4];
  v12 = [v9 databaseForEntityClass:a1];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDWorkoutClusterEntity_clusterEntitiesWithTransaction_limit_error___block_invoke;
  v16[3] = &unk_278614098;
  v13 = v10;
  v17 = v13;
  LODWORD(v10) = [v12 executeSQL:v11 error:a5 bindingHandler:0 enumerationHandler:v16];

  v14 = 0;
  if (v10)
  {
    v14 = [v13 copy];
  }

  return v14;
}

uint64_t __69__HDWorkoutClusterEntity_clusterEntitiesWithTransaction_limit_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [(HDSQLiteEntity *)[HDWorkoutClusterEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

+ (id)workoutClustersForProfile:(id)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = [v9 database];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke;
  v15[3] = &unk_27861E450;
  v17 = a1;
  v18 = a4;
  v12 = v10;
  v16 = v12;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v11 error:a5 block:v15];

  if (a5)
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"relevance" entityClass:*(a1 + 40) ascending:0];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v22[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v10 = [v7 queryWithDatabase:v5 predicate:0 limit:v8 orderingTerms:v9 groupBy:0];

  v11 = *(a1 + 40);
  v12 = +[HDWorkoutClusterEntity _baseEntityProperties];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke_2;
  v19[3] = &unk_278617E98;
  v20 = v5;
  v18 = *(a1 + 32);
  v13 = v18;
  v21 = v18;
  v14 = v5;
  v15 = [v10 enumeratePersistentIDsAndProperties:v12 error:a3 enumerationHandler:v19];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL __64__HDWorkoutClusterEntity_workoutClustersForProfile_limit_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _clusterModelForSQLiteRow:a4 database:*(a1 + 32) error:a5];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  return v6 != 0;
}

+ (id)_clusterModelForSQLiteRow:(void *)a3 database:(uint64_t)a4 error:
{
  v5 = a3;
  v6 = objc_opt_self();
  v7 = HDSQLiteColumnWithNameAsUUID();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v11 = v10;
  v12 = HDSQLiteColumnWithNameAsString();
  v13 = [(HDWorkoutClusterEntity *)v6 _workoutUUIDForPersistentID:v8 database:v5 error:a4];
  if (v13)
  {
    v14 = [(HDWorkoutClusterEntity *)v6 _workoutUUIDForPersistentID:v9 database:v5 error:a4];
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CCDC20]) _initWithUUID:v7 workoutUUIDs:0 lastWorkoutUUID:v13 bestWorkoutUUID:v14 relevanceValue:0 workoutRouteSnapshot:v12 workoutRouteLabel:v11];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)workoutClusterContainingWorkoutUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__205;
  v23 = __Block_byref_object_dispose__205;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke;
  v15[3] = &unk_278616AA0;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  v17 = &v19;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

uint64_t __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutEntityForUUID:v5 database:a3 error:?];
  v7 = v6;
  if (v6)
  {
    v31 = a3;
    v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
    v8 = MEMORY[0x277D10B50];
    v9 = [*(a1 + 48) databaseTable];
    v30 = [v8 innerJoinClauseFromTable:v9 toTargetEntity:objc_opt_class() as:0 localReference:*MEMORY[0x277D10A40] targetKey:@"cluster_id"];

    v10 = MEMORY[0x277D10B58];
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v30, 0}];
    v12 = [v10 predicateWithJoinClauses:v11];

    v13 = MEMORY[0x277D10B90];
    v14 = MEMORY[0x277CCACA8];
    v15 = +[HDWorkoutClusterComponentEntity databaseTable];
    v16 = [v14 stringWithFormat:@"%@.%@ = ?", v15, @"workout_id", 0];
    v36[0] = v29;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v18 = [v13 predicateWithSQL:v16 overProperties:MEMORY[0x277CBEBF8] values:v17];

    v19 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v12 otherPredicate:v18];
    v20 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modified_date" entityClass:*(a1 + 48) ascending:0];
    v21 = *(a1 + 48);
    v35 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v23 = [v21 queryWithDatabase:v5 predicate:v19 limit:1 orderingTerms:v22 groupBy:0];

    v24 = *(a1 + 48);
    v25 = +[HDWorkoutClusterEntity _baseEntityProperties];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke_2;
    v32[3] = &unk_278617EC0;
    v34 = *(a1 + 40);
    v33 = v5;
    v26 = [v23 enumeratePersistentIDsAndProperties:v25 error:v31 enumerationHandler:v32];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

BOOL __76__HDWorkoutClusterEntity_workoutClusterContainingWorkoutUUID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _clusterModelForSQLiteRow:a4 database:*(a1 + 32) error:a5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)clusterUUIDsForWorkoutUUIDs:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB18];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [v10 database];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke;
  v17[3] = &unk_278614698;
  v20 = a1;
  v18 = v8;
  v13 = v11;
  v19 = v13;
  v14 = v8;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v12 error:a5 block:v17];

  if (a5)
  {
    v15 = [v13 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v20 = [a2 databaseForEntityClass:a1[6]];
  v18 = objc_alloc(MEMORY[0x277CCAB68]);
  v17 = [a1[6] databaseTable];
  v16 = [a1[6] databaseTable];
  v4 = +[HDWorkoutClusterComponentEntity databaseTable];
  v5 = [a1[6] databaseTable];
  v6 = *MEMORY[0x277D10A40];
  v7 = +[HDDataEntity databaseTable];
  v8 = +[HDDataEntity databaseTable];
  v9 = +[HDDataEntity databaseTable];
  v10 = objc_msgSend(v18, "initWithFormat:", @"SELECT %@.%@ FROM %@ INNER JOIN %@ ON %@.%@ = %@ INNER JOIN %@ ON %@.%@ = %@ WHERE %@.%@ IN ("), v17, CFSTR("uuid"), v16, v4, v5, v6, CFSTR("cluster_id"), v7, v8, CFSTR("data_id"), CFSTR("workout_id"), v9, CFSTR("uuid"), 0;

  if ([a1[4] count])
  {
    v11 = 0;
    v12 = @"?";
    do
    {
      [v10 appendFormat:v12];
      ++v11;
      v13 = [a1[4] count];
      v12 = @",?";
    }

    while (v13 > v11);
  }

  [v10 appendString:@""]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke_2;
  v23[3] = &unk_278614860;
  v24 = a1[4];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke_3;
  v21[3] = &unk_278614098;
  v22 = a1[5];
  v14 = [v20 executeUncachedSQL:v10 error:a3 bindingHandler:v23 enumerationHandler:v21];

  return v14;
}

uint64_t __68__HDWorkoutClusterEntity_clusterUUIDsForWorkoutUUIDs_profile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x22AAC6CA0](a2, 0);
  [v2 addObject:v3];

  return 1;
}

+ (id)workoutEntityForUUID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = [HDWorkoutClusterEntity _workoutEntityForUUID:v8 database:v9 error:a5];

  return v10;
}

+ (id)workoutUUIDsForClusterUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__205;
  v23 = __Block_byref_object_dispose__205;
  v24 = 0;
  v10 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDWorkoutClusterEntity_workoutUUIDsForClusterUUID_profile_error___block_invoke;
  v15[3] = &unk_278616AA0;
  v18 = a1;
  v11 = v8;
  v16 = v11;
  v17 = &v19;
  LODWORD(a5) = [(HDHealthEntity *)HDWorkoutClusterEntity performReadTransactionWithHealthDatabase:v10 error:a5 block:v15];

  if (a5)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __67__HDWorkoutClusterEntity_workoutUUIDsForClusterUUID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutClusterEntityForUUID:v6 database:a3 error:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 workoutUUIDsWithTransaction:v5 error:a3];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 40) + 8) + 40) != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)workoutUUIDsWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 databaseForEntity:self];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__HDWorkoutClusterEntity_workoutUUIDsWithTransaction_error___block_invoke;
  v16 = &unk_27862F998;
  v9 = v8;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  if (self && [HDWorkoutClusterComponentEntity enumerateWorkoutsForCluster:self transaction:v6 error:a4 block:&v13])
  {
    v11 = [v10 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __60__HDWorkoutClusterEntity_workoutUUIDsWithTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = +[HDWorkoutClusterEntity _workoutUUIDForPersistentID:database:error:](HDWorkoutClusterEntity, [a2 persistentID], *(a1 + 32), a3);
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  return v4 != 0;
}

+ (id)_workoutUUIDForPersistentID:(void *)a3 database:(uint64_t)a4 error:
{
  v6 = a3;
  objc_opt_self();
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v8 = HDDataEntityPredicateForRowID(v7, 1);

  v9 = [(HDSQLiteEntity *)HDDataEntity propertyValueForAnyInDatabase:v6 property:@"uuid" predicate:v8 error:a4];

  v10 = _HDUUIDForSQLiteValue();

  return v10;
}

+ (BOOL)updateWorkoutClusterWithUUID:(id)a3 routeSnapshot:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeSnapshot_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v16];

  return a6;
}

uint64_t __83__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeSnapshot_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 48)];
  v7 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutClusterEntityForUUID:v6 database:a3 error:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 snapshotEntityWithTransaction:v5 error:a3];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 updateSnapshotData:*(a1 + 40) transaction:v5 error:a3];
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

+ (BOOL)updateWorkoutClusterWithUUID:(id)a3 routeLabel:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeLabel_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v16];

  return a6;
}

uint64_t __80__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeLabel_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [(HDWorkoutClusterEntity *)*(a1 + 48) _workoutClusterEntityForUUID:v5 database:a3 error:?];
  if (v6)
  {
    v13[0] = @"route_label";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_routeLabel_profile_error___block_invoke_2;
    v11[3] = &unk_278614508;
    v12 = *(a1 + 40);
    v8 = [v6 updateProperties:v7 database:v5 error:a3 bindingHandler:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)updateWorkoutClusterWithUUID:(id)a3 relevanceValue:(id)a4 lastWorkoutUUID:(id)a5 bestWorkoutUUID:(id)a6 workoutUUIDsToAssociate:(id)a7 workoutUUIDsToRemove:(id)a8 profile:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [a9 database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke;
  v31[3] = &unk_278626488;
  v37 = v21;
  v38 = a1;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = v17;
  v28 = v16;
  v29 = [a1 performWriteTransactionWithHealthDatabase:v22 error:a10 block:v31];

  return v29;
}

uint64_t __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 80)];
  v7 = [(HDWorkoutClusterEntity *)*(a1 + 80) _workoutClusterEntityForUUID:v6 database:a3 error:?];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v9 = v8;
    if (*(a1 + 40))
    {
      [v8 appendFormat:@", %@ = ?", @"relevance"];
    }

    if (*(a1 + 48))
    {
      [v9 appendFormat:@", %@ = ?", @"last_workout_id"];
      v10 = [(HDWorkoutClusterEntity *)*(a1 + 80) _workoutEntityForUUID:v6 database:a3 error:?];
      if (!v10 || ![HDWorkoutClusterComponentEntity associateWorkout:v10 withCluster:v7 transaction:v5 error:a3])
      {
        v11 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v10 = 0;
    }

    if (*(a1 + 56))
    {
      [v9 appendFormat:@", %@ = ?", @"best_workout_id"];
      v11 = [(HDWorkoutClusterEntity *)*(a1 + 80) _workoutEntityForUUID:v6 database:a3 error:?];
      if (!v11)
      {

        goto LABEL_36;
      }

      if (![HDWorkoutClusterComponentEntity associateWorkout:v11 withCluster:v7 transaction:v5 error:a3])
      {
        v35 = v11;
        v11 = 0;

        goto LABEL_36;
      }

      v28 = v5;
    }

    else
    {
      v28 = v5;
      v11 = 0;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [*(a1 + 80) databaseTable];
    v14 = [v12 stringWithFormat:@"UPDATE %@ SET %@ = ?%@ WHERE %@ = ?", v13, @"modified_date", v9, *MEMORY[0x277D10A40]];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke_2;
    v36[3] = &unk_27862F9C0;
    v37 = *(a1 + 40);
    v30 = v10;
    v38 = v10;
    v39 = v11;
    v15 = v7;
    v40 = v15;
    v29 = v14;
    v34 = v39;
    if ([v6 executeUncachedSQL:v14 error:a3 bindingHandler:v36 enumerationHandler:0])
    {
      v5 = v28;
      if ([(HDWorkoutClusterEntity *)v15 _associateWorkoutUUIDs:v28 transaction:a3 error:?])
      {
        v16 = *(a1 + 72);
        v33 = v28;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = v16;
        v32 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v32)
        {
          v31 = *v42;
          v26 = v9;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v42 != v31)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v41 + 1) + 8 * i);
              v19 = v33;
              v20 = v18;
              v21 = [v19 databaseForEntity:v15];
              v22 = [HDWorkoutClusterEntity _workoutEntityForUUID:v20 database:v21 error:a3];

              if (!v22)
              {

LABEL_33:
                v11 = 0;
                v9 = v26;
                goto LABEL_34;
              }

              v23 = [HDWorkoutClusterComponentEntity removeWorkout:v22 fromCluster:v15 transaction:v19 error:a3];

              if (!v23)
              {
                goto LABEL_33;
              }
            }

            v11 = 1;
            v9 = v26;
            v32 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v11 = 1;
        }

LABEL_34:
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v5 = v28;
    }

    v10 = v30;
    goto LABEL_36;
  }

  v11 = 0;
LABEL_37:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __161__HDWorkoutClusterEntity_updateWorkoutClusterWithUUID_relevanceValue_lastWorkoutUUID_bestWorkoutUUID_workoutUUIDsToAssociate_workoutUUIDsToRemove_profile_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 1, v4);
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 doubleValue];
    sqlite3_bind_double(a2, 2, v6);
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    sqlite3_bind_int64(a2, v7++, [v8 persistentID]);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sqlite3_bind_int64(a2, v7++, [v9 persistentID]);
  }

  v10 = [*(a1 + 56) persistentID];

  return sqlite3_bind_int64(a2, v7, v10);
}

+ (BOOL)deleteWorkoutClusterWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDWorkoutClusterEntity_deleteWorkoutClusterWithUUID_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = v8;
  v14 = a1;
  v10 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v12];

  return a5;
}

uint64_t __69__HDWorkoutClusterEntity_deleteWorkoutClusterWithUUID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = objc_opt_self();
  v11 = [v8 databaseForEntityClass:v10];
  v12 = [v10 queryWithDatabase:v11 predicate:v9];

  v23[0] = @"snapshot_id";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDWorkoutClusterEntity__deleteClusterBackingDataWithPredicate_transaction_error___block_invoke;
  v21[3] = &unk_27861E4C0;
  v22 = v8;
  v14 = v8;
  v15 = [v12 enumerateProperties:v13 error:a3 enumerationHandler:v21];

  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = [v14 databaseForEntityClass:v16];
    v18 = [v16 deleteEntitiesInDatabase:v17 predicate:v9 error:a3];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)snapshotEntityWithTransaction:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v18[0] = @"snapshot_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [v6 databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HDWorkoutClusterEntity_snapshotEntityWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LOBYTE(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v13];

  if (a4)
  {
    v9 = [HDRaceRouteSnapshotEntity alloc];
    v10 = [(HDSQLiteEntity *)v9 initWithPersistentID:v15[3]];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __62__HDWorkoutClusterEntity_snapshotEntityWithTransaction_error___block_invoke(uint64_t a1)
{
  result = HDSQLiteColumnWithNameAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)modelPropertiesWithTransaction:(id)a3 error:(id *)a4 handler:(id)a5
{
  v23[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 databaseForEntity:self];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v23[0] = @"uuid";
  v23[1] = @"last_workout_id";
  v23[2] = @"best_workout_id";
  v23[3] = @"relevance";
  v23[4] = @"route_label";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__HDWorkoutClusterEntity_modelPropertiesWithTransaction_error_handler___block_invoke;
  v16[3] = &unk_27862F9E8;
  v12 = v9;
  v17 = v12;
  v18 = &v19;
  v13 = [(HDSQLiteEntity *)self getValuesForProperties:v11 database:v10 error:a4 handler:v16];

  if (v13)
  {
    LOBYTE(v13) = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __71__HDWorkoutClusterEntity_modelPropertiesWithTransaction_error_handler___block_invoke(uint64_t a1)
{
  v11 = HDSQLiteColumnWithNameAsUUID();
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v5 = v4;
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:v2];
  v8 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:v3];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  (*(v9 + 16))(v9, v11, v7, v8, v10, v6);

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)workoutRouteSnapshotWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDWorkoutClusterEntity *)self snapshotEntityWithTransaction:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 snapshotDataWithTransaction:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __83__HDWorkoutClusterEntity__deleteClusterBackingDataWithPredicate_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [(HDSQLiteEntity *)[HDRaceRouteSnapshotEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v7 = [(HDRaceRouteSnapshotEntity *)v6 deleteDataWithTransaction:*(a1 + 32) error:a4];

  return v7;
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
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"ROWID" deletionAction:0 isDeferred:1];
  v8[0] = @"last_workout_id";
  v3 = +[(HDDataEntity *)HDWorkoutEntity];
  v9[0] = v3;
  v8[1] = @"best_workout_id";
  v4 = +[(HDDataEntity *)HDWorkoutEntity];
  v8[2] = @"snapshot_id";
  v9[1] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end