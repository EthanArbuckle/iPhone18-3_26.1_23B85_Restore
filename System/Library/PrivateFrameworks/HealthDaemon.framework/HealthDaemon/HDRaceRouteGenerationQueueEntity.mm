@interface HDRaceRouteGenerationQueueEntity
+ (BOOL)finishWorkoutCluster:(id)cluster concreteCluster:(id)concreteCluster transaction:(id)transaction error:(id *)error;
+ (BOOL)populateWithWorkoutClusters:(id)clusters transaction:(id)transaction error:(id *)error;
+ (id)clearQueueWithTransaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)nextWorkoutClusterWithTransaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDRaceRouteGenerationQueueEntity

+ (BOOL)populateWithWorkoutClusters:(id)clusters transaction:(id)transaction error:(id *)error
{
  clustersCopy = clusters;
  transactionCopy = transaction;
  if ([clustersCopy count])
  {
    v10 = [MEMORY[0x277CCAB68] stringWithString:@"INSERT OR IGNORE INTO RacePreviousRoute_generation_queue (workout_cluster_id) VALUES (?)"];
    if ([clustersCopy count] >= 2)
    {
      v11 = 1;
      do
      {
        [v10 appendString:{@", (?)"}];
        ++v11;
      }

      while ([clustersCopy count] > v11);
    }

    v12 = [transactionCopy databaseForEntityClass:self];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__HDRaceRouteGenerationQueueEntity_populateWithWorkoutClusters_transaction_error___block_invoke;
    v15[3] = &unk_278614860;
    v16 = clustersCopy;
    v13 = [v12 executeUncachedSQL:v10 error:error bindingHandler:v15 enumerationHandler:0];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

unint64_t __82__HDRaceRouteGenerationQueueEntity_populateWithWorkoutClusters_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      v7 = [*(a1 + 32) objectAtIndexedSubscript:?];
      sqlite3_bind_int64(a2, v6, [v7 persistentID]);

      result = [*(a1 + 32) count];
      v5 = v6;
    }

    while (result > v6);
  }

  return result;
}

+ (id)nextWorkoutClusterWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  v7 = [transactionCopy databaseForEntityClass:self];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HDRaceRouteGenerationQueueEntity_nextWorkoutClusterWithTransaction_error___block_invoke;
  v11[3] = &unk_278614620;
  v11[4] = &v12;
  LODWORD(error) = [v7 executeSQL:@"SELECT workout_cluster_id FROM RacePreviousRoute_generation_queue WHERE concrete_cluster_id IS NULL LIMIT 1" error:error bindingHandler:0 enumerationHandler:v11];

  if (error)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __76__HDRaceRouteGenerationQueueEntity_nextWorkoutClusterWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = [(HDSQLiteEntity *)[HDWorkoutClusterEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

+ (BOOL)finishWorkoutCluster:(id)cluster concreteCluster:(id)concreteCluster transaction:(id)transaction error:(id *)error
{
  clusterCopy = cluster;
  concreteClusterCopy = concreteCluster;
  v12 = [transaction databaseForEntityClass:self];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__HDRaceRouteGenerationQueueEntity_finishWorkoutCluster_concreteCluster_transaction_error___block_invoke;
  v16[3] = &unk_278613038;
  v17 = concreteClusterCopy;
  v18 = clusterCopy;
  v13 = clusterCopy;
  v14 = concreteClusterCopy;
  LOBYTE(error) = [v12 executeSQL:@"UPDATE RacePreviousRoute_generation_queue SET concrete_cluster_id = ? WHERE workout_cluster_id = ?" error:error bindingHandler:v16 enumerationHandler:0];

  return error;
}

uint64_t __91__HDRaceRouteGenerationQueueEntity_finishWorkoutCluster_concreteCluster_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) persistentID];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (id)clearQueueWithTransaction:(id)transaction error:(id *)error
{
  v5 = [transaction databaseForEntityClass:self];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDRaceRouteGenerationQueueEntity_clearQueueWithTransaction_error___block_invoke;
  v12[3] = &unk_278614098;
  v7 = v6;
  v13 = v7;
  if ([v5 executeSQL:@"SELECT concrete_cluster_id FROM RacePreviousRoute_generation_queue WHERE concrete_cluster_id IS NOT NULL" error:error bindingHandler:0 enumerationHandler:v12] && (v8 = v5, objc_opt_self(), v9 = objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"DELETE FROM RacePreviousRoute_generation_queue", error, 0, 0), v8, v9))
  {
    v10 = [v7 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __68__HDRaceRouteGenerationQueueEntity_clearQueueWithTransaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [(HDSQLiteEntity *)[HDRaceRouteClusterEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

+ (id)uniquedColumns
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"workout_cluster_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"workout_cluster_id";
  v2 = +[(HDHealthEntity *)HDWorkoutClusterEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end