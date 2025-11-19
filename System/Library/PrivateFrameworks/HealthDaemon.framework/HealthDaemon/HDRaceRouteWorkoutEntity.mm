@interface HDRaceRouteWorkoutEntity
+ (BOOL)enumerateRoutePointsForWorkoutPersistentID:(int64_t)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 startDuration:(double)a6 finishDuration:(double)a7 transaction:(id)a8 error:(id *)a9 handler:(id)a10;
+ (BOOL)enumerateRoutePointsForWorkoutUUID:(id)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 profile:(id)a6 error:(id *)a7 dataHandler:(id)a8;
+ (BOOL)insertCodableRoutePoints:(id)a3 workoutPersistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)markForDeletionWorkoutDataWithPersistentID:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)pruneWorkoutsMarkedForDeletionInTransaction:(id)a3 error:(id *)a4;
+ (id)_insertWithWorkoutUUID:(uint64_t)a3 seriesKey:(void *)a4 transaction:(uint64_t)a5 error:;
+ (id)_routeKeyForPersistentID:(void *)a3 transaction:(uint64_t)a4 error:;
+ (id)createRaceRouteWorkoutFromWorkout:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)entityForWorkoutUUID:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)insertCodableRacingMetrics:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)privateSubEntities;
+ (id)startingPointForWorkoutWithPersistentID:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDRaceRouteWorkoutEntity

+ (id)insertCodableRacingMetrics:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 routePoints];
  v11 = [HDRaceRouteLocationSeriesEntity insertCodableRoutePoints:v10 transaction:v9 error:a5];

  if (v11)
  {
    v12 = MEMORY[0x277CCAD78];
    v13 = [v8 workoutUUID];
    v14 = [v12 hk_UUIDWithData:v13];

    v15 = +[HDRaceRouteWorkoutEntity _insertWithWorkoutUUID:seriesKey:transaction:error:](a1, v14, [v11 longLongValue], v9, a5);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_insertWithWorkoutUUID:(uint64_t)a3 seriesKey:(void *)a4 transaction:(uint64_t)a5 error:
{
  v20[3] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  v10 = objc_opt_self();
  v11 = [v9 databaseForEntityClass:v10];

  v20[0] = @"workout_uuid";
  v20[1] = @"route_key";
  v20[2] = @"date_to_delete";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HDRaceRouteWorkoutEntity__insertWithWorkoutUUID_seriesKey_transaction_error___block_invoke;
  v17[3] = &unk_278616B10;
  v18 = v8;
  v19 = a3;
  v13 = v8;
  v14 = [v10 insertOrReplaceEntity:0 database:v11 properties:v12 error:a5 bindingHandler:v17];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)insertCodableRoutePoints:(id)a3 workoutPersistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HDRaceRouteWorkoutEntity *)a1 _routeKeyForPersistentID:a4 transaction:v11 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = +[HDRaceRouteLocationSeriesEntity insertCodableRoutePoints:seriesKey:transaction:error:](HDRaceRouteLocationSeriesEntity, "insertCodableRoutePoints:seriesKey:transaction:error:", v10, [v12 longLongValue], v11, a6);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_routeKeyForPersistentID:(void *)a3 transaction:(uint64_t)a4 error:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_self();
  v8 = [v6 databaseForEntityClass:v7];
  v9 = MEMORY[0x277D10B18];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v11 = [v9 predicateWithProperty:@"ROWID" equalToValue:v10];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__128;
  v22 = __Block_byref_object_dispose__128;
  v23 = 0;
  v12 = [v7 queryWithDatabase:v8 predicate:v11];
  v24[0] = @"route_key";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HDRaceRouteWorkoutEntity__routeKeyForPersistentID_transaction_error___block_invoke;
  v17[3] = &unk_278619E98;
  v17[4] = &v18;
  [v12 enumerateProperties:v13 error:a4 enumerationHandler:v17];

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)createRaceRouteWorkoutFromWorkout:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [HDRaceRouteLocationSeriesEntity createRoutePointsFromWorkout:v10 transaction:v11 profile:a5 error:a6];
  if (v12)
  {
    v13 = [v11 databaseForEntity:v10];
    v14 = [v10 UUIDForProperty:@"uuid" database:v13];
    if (v14)
    {
      v15 = +[HDRaceRouteWorkoutEntity _insertWithWorkoutUUID:seriesKey:transaction:error:](a1, v14, [v12 longLongValue], v11, a6);
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

+ (BOOL)markForDeletionWorkoutDataWithPersistentID:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = [a4 databaseForEntityClass:a1];
  v9 = [MEMORY[0x277CCDCD0] workoutType];
  [v9 maximumAllowedDuration];
  v11 = v10;

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HDRaceRouteWorkoutEntity_markForDeletionWorkoutDataWithPersistentID_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = a1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HDRaceRouteWorkoutEntity_markForDeletionWorkoutDataWithPersistentID_transaction_error___block_invoke_2;
  v15[3] = &unk_278613B58;
  v16 = v12;
  v17 = a3;
  v13 = v12;
  LOBYTE(a5) = [v8 executeCachedStatementForKey:&markForDeletionWorkoutDataWithPersistentID_transaction_error__updateDateKey error:a5 SQLGenerator:v18 bindingHandler:v15 enumerationHandler:0];

  return a5;
}

id __89__HDRaceRouteWorkoutEntity_markForDeletionWorkoutDataWithPersistentID_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) databaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ IS NULL", v2, @"date_to_delete", @"ROWID", @"date_to_delete"];

  return v3;
}

uint64_t __89__HDRaceRouteWorkoutEntity_markForDeletionWorkoutDataWithPersistentID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (BOOL)pruneWorkoutsMarkedForDeletionInTransaction:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 databaseForEntityClass:a1];
  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 predicateWithProperty:@"date_to_delete" lessThanValue:v9];

  v11 = [a1 queryWithDatabase:v7 predicate:v10];
  v20[0] = @"route_key";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDRaceRouteWorkoutEntity_pruneWorkoutsMarkedForDeletionInTransaction_error___block_invoke;
  v18[3] = &unk_27861E4C0;
  v13 = v6;
  v19 = v13;
  v14 = [v11 enumerateProperties:v12 error:a4 enumerationHandler:v18];

  if (v14)
  {
    v15 = [a1 deleteEntitiesInDatabase:v7 predicate:v10 error:a4];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL __78__HDRaceRouteWorkoutEntity_pruneWorkoutsMarkedForDeletionInTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = *(a1 + 32);

  return [HDRaceRouteLocationSeriesEntity deleteSeriesDataWithIdentifier:v6 transaction:v7 error:a4];
}

+ (BOOL)enumerateRoutePointsForWorkoutUUID:(id)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 profile:(id)a6 error:(id *)a7 dataHandler:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = [a6 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HDRaceRouteWorkoutEntity_enumerateRoutePointsForWorkoutUUID_timestampAnchor_limit_profile_error_dataHandler___block_invoke;
  v20[3] = &unk_2786252D0;
  v22 = v15;
  v23 = a1;
  v24 = a4;
  v25 = a5;
  v21 = v14;
  v17 = v15;
  v18 = v14;
  LOBYTE(a7) = [a1 performReadTransactionWithHealthDatabase:v16 error:a7 block:v20];

  return a7;
}

BOOL __111__HDRaceRouteWorkoutEntity_enumerateRoutePointsForWorkoutUUID_timestampAnchor_limit_profile_error_dataHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 48) entityForWorkoutUUID:*(a1 + 32) transaction:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 numberForProperty:@"route_key" transaction:v5 error:a3];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 longLongValue];
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __111__HDRaceRouteWorkoutEntity_enumerateRoutePointsForWorkoutUUID_timestampAnchor_limit_profile_error_dataHandler___block_invoke_2;
      v15[3] = &unk_2786252A8;
      v16 = *(a1 + 40);
      v13 = [HDRaceRouteLocationSeriesEntity enumerateRoutePointsForSeries:v10 timestampAnchor:v12 limit:v5 transaction:a3 error:v15 handler:v11];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)enumerateRoutePointsForWorkoutPersistentID:(int64_t)a3 timestampAnchor:(double)a4 limit:(unint64_t)a5 startDuration:(double)a6 finishDuration:(double)a7 transaction:(id)a8 error:(id *)a9 handler:(id)a10
{
  v18 = a8;
  v19 = a10;
  v20 = [(HDRaceRouteWorkoutEntity *)a1 _routeKeyForPersistentID:a3 transaction:v18 error:a9];
  v21 = v20;
  if (v20)
  {
    v22 = +[HDRaceRouteLocationSeriesEntity enumerateRoutePointsForSeries:timestampAnchor:limit:startDuration:finishDuration:transaction:error:handler:](HDRaceRouteLocationSeriesEntity, "enumerateRoutePointsForSeries:timestampAnchor:limit:startDuration:finishDuration:transaction:error:handler:", [v20 longLongValue], a5, v18, a9, v19, a4, a6, a7);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)entityForWorkoutUUID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = [v8 predicateWithProperty:@"workout_uuid" equalToValue:a3];
  v11 = [v9 databaseForEntityClass:a1];

  v12 = [a1 anyInDatabase:v11 predicate:v10 error:a5];

  return v12;
}

+ (id)startingPointForWorkoutWithPersistentID:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HDRaceRouteWorkoutEntity *)a1 _routeKeyForPersistentID:a3 transaction:v8 error:a5];
  v10 = v9;
  if (v9)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__128;
    v20 = __Block_byref_object_dispose__128;
    v21 = 0;
    v11 = [v9 longLongValue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__HDRaceRouteWorkoutEntity_startingPointForWorkoutWithPersistentID_transaction_error___block_invoke;
    v15[3] = &unk_2786252F8;
    v15[4] = &v16;
    if ([HDRaceRouteLocationSeriesEntity enumerateRoutePointsForSeries:v11 timestampAnchor:1 limit:v8 transaction:a5 error:v15 handler:-1.0])
    {
      v12 = v17[5];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __86__HDRaceRouteWorkoutEntity_startingPointForWorkoutWithPersistentID_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE41F8];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 latitude_deg];
  v7 = v6;
  [v4 longitude_deg];
  v9 = v8;

  v10 = [v5 initWithLatitude:v7 longitude:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return 0;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __71__HDRaceRouteWorkoutEntity__routeKeyForPersistentID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

void __79__HDRaceRouteWorkoutEntity__insertWithWorkoutUUID_seriesKey_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"workout_uuid", *(a1 + 32));
  MEMORY[0x22AAC6B90](a2, @"route_key", *(a1 + 40));

  JUMPOUT(0x22AAC6BA0);
}

@end