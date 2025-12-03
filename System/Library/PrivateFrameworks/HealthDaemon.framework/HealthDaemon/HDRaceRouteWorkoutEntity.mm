@interface HDRaceRouteWorkoutEntity
+ (BOOL)enumerateRoutePointsForWorkoutPersistentID:(int64_t)d timestampAnchor:(double)anchor limit:(unint64_t)limit startDuration:(double)duration finishDuration:(double)finishDuration transaction:(id)transaction error:(id *)error handler:(id)self0;
+ (BOOL)enumerateRoutePointsForWorkoutUUID:(id)d timestampAnchor:(double)anchor limit:(unint64_t)limit profile:(id)profile error:(id *)error dataHandler:(id)handler;
+ (BOOL)insertCodableRoutePoints:(id)points workoutPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)markForDeletionWorkoutDataWithPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)pruneWorkoutsMarkedForDeletionInTransaction:(id)transaction error:(id *)error;
+ (id)_insertWithWorkoutUUID:(uint64_t)d seriesKey:(void *)key transaction:(uint64_t)transaction error:;
+ (id)_routeKeyForPersistentID:(void *)d transaction:(uint64_t)transaction error:;
+ (id)createRaceRouteWorkoutFromWorkout:(id)workout transaction:(id)transaction profile:(id)profile error:(id *)error;
+ (id)entityForWorkoutUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)insertCodableRacingMetrics:(id)metrics transaction:(id)transaction error:(id *)error;
+ (id)privateSubEntities;
+ (id)startingPointForWorkoutWithPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
@end

@implementation HDRaceRouteWorkoutEntity

+ (id)insertCodableRacingMetrics:(id)metrics transaction:(id)transaction error:(id *)error
{
  metricsCopy = metrics;
  transactionCopy = transaction;
  routePoints = [metricsCopy routePoints];
  v11 = [HDRaceRouteLocationSeriesEntity insertCodableRoutePoints:routePoints transaction:transactionCopy error:error];

  if (v11)
  {
    v12 = MEMORY[0x277CCAD78];
    workoutUUID = [metricsCopy workoutUUID];
    v14 = [v12 hk_UUIDWithData:workoutUUID];

    v15 = +[HDRaceRouteWorkoutEntity _insertWithWorkoutUUID:seriesKey:transaction:error:](self, v14, [v11 longLongValue], transactionCopy, error);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_insertWithWorkoutUUID:(uint64_t)d seriesKey:(void *)key transaction:(uint64_t)transaction error:
{
  v20[3] = *MEMORY[0x277D85DE8];
  v8 = a2;
  keyCopy = key;
  v10 = objc_opt_self();
  v11 = [keyCopy databaseForEntityClass:v10];

  v20[0] = @"workout_uuid";
  v20[1] = @"route_key";
  v20[2] = @"date_to_delete";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HDRaceRouteWorkoutEntity__insertWithWorkoutUUID_seriesKey_transaction_error___block_invoke;
  v17[3] = &unk_278616B10;
  v18 = v8;
  dCopy = d;
  v13 = v8;
  v14 = [v10 insertOrReplaceEntity:0 database:v11 properties:v12 error:transaction bindingHandler:v17];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)insertCodableRoutePoints:(id)points workoutPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  pointsCopy = points;
  transactionCopy = transaction;
  v12 = [(HDRaceRouteWorkoutEntity *)self _routeKeyForPersistentID:d transaction:transactionCopy error:error];
  v13 = v12;
  if (v12)
  {
    v14 = +[HDRaceRouteLocationSeriesEntity insertCodableRoutePoints:seriesKey:transaction:error:](HDRaceRouteLocationSeriesEntity, "insertCodableRoutePoints:seriesKey:transaction:error:", pointsCopy, [v12 longLongValue], transactionCopy, error);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_routeKeyForPersistentID:(void *)d transaction:(uint64_t)transaction error:
{
  v24[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_opt_self();
  v8 = [dCopy databaseForEntityClass:v7];
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
  [v12 enumerateProperties:v13 error:transaction enumerationHandler:v17];

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)createRaceRouteWorkoutFromWorkout:(id)workout transaction:(id)transaction profile:(id)profile error:(id *)error
{
  workoutCopy = workout;
  transactionCopy = transaction;
  v12 = [HDRaceRouteLocationSeriesEntity createRoutePointsFromWorkout:workoutCopy transaction:transactionCopy profile:profile error:error];
  if (v12)
  {
    v13 = [transactionCopy databaseForEntity:workoutCopy];
    v14 = [workoutCopy UUIDForProperty:@"uuid" database:v13];
    if (v14)
    {
      v15 = +[HDRaceRouteWorkoutEntity _insertWithWorkoutUUID:seriesKey:transaction:error:](self, v14, [v12 longLongValue], transactionCopy, error);
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

+ (BOOL)markForDeletionWorkoutDataWithPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v8 = [transaction databaseForEntityClass:self];
  workoutType = [MEMORY[0x277CCDCD0] workoutType];
  [workoutType maximumAllowedDuration];
  v11 = v10;

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HDRaceRouteWorkoutEntity_markForDeletionWorkoutDataWithPersistentID_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HDRaceRouteWorkoutEntity_markForDeletionWorkoutDataWithPersistentID_transaction_error___block_invoke_2;
  v15[3] = &unk_278613B58;
  v16 = v12;
  dCopy = d;
  v13 = v12;
  LOBYTE(error) = [v8 executeCachedStatementForKey:&markForDeletionWorkoutDataWithPersistentID_transaction_error__updateDateKey error:error SQLGenerator:v18 bindingHandler:v15 enumerationHandler:0];

  return error;
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

+ (BOOL)pruneWorkoutsMarkedForDeletionInTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v7 = [transactionCopy databaseForEntityClass:self];
  v8 = MEMORY[0x277D10B18];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 predicateWithProperty:@"date_to_delete" lessThanValue:date];

  v11 = [self queryWithDatabase:v7 predicate:v10];
  v20[0] = @"route_key";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDRaceRouteWorkoutEntity_pruneWorkoutsMarkedForDeletionInTransaction_error___block_invoke;
  v18[3] = &unk_27861E4C0;
  v13 = transactionCopy;
  v19 = v13;
  v14 = [v11 enumerateProperties:v12 error:error enumerationHandler:v18];

  if (v14)
  {
    v15 = [self deleteEntitiesInDatabase:v7 predicate:v10 error:error];
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

+ (BOOL)enumerateRoutePointsForWorkoutUUID:(id)d timestampAnchor:(double)anchor limit:(unint64_t)limit profile:(id)profile error:(id *)error dataHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  database = [profile database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HDRaceRouteWorkoutEntity_enumerateRoutePointsForWorkoutUUID_timestampAnchor_limit_profile_error_dataHandler___block_invoke;
  v20[3] = &unk_2786252D0;
  v22 = handlerCopy;
  selfCopy = self;
  anchorCopy = anchor;
  limitCopy = limit;
  v21 = dCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v20];

  return error;
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

+ (BOOL)enumerateRoutePointsForWorkoutPersistentID:(int64_t)d timestampAnchor:(double)anchor limit:(unint64_t)limit startDuration:(double)duration finishDuration:(double)finishDuration transaction:(id)transaction error:(id *)error handler:(id)self0
{
  transactionCopy = transaction;
  handlerCopy = handler;
  v20 = [(HDRaceRouteWorkoutEntity *)self _routeKeyForPersistentID:d transaction:transactionCopy error:error];
  v21 = v20;
  if (v20)
  {
    v22 = +[HDRaceRouteLocationSeriesEntity enumerateRoutePointsForSeries:timestampAnchor:limit:startDuration:finishDuration:transaction:error:handler:](HDRaceRouteLocationSeriesEntity, "enumerateRoutePointsForSeries:timestampAnchor:limit:startDuration:finishDuration:transaction:error:handler:", [v20 longLongValue], limit, transactionCopy, error, handlerCopy, anchor, duration, finishDuration);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)entityForWorkoutUUID:(id)d transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v10 = [v8 predicateWithProperty:@"workout_uuid" equalToValue:d];
  v11 = [transactionCopy databaseForEntityClass:self];

  v12 = [self anyInDatabase:v11 predicate:v10 error:error];

  return v12;
}

+ (id)startingPointForWorkoutWithPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9 = [(HDRaceRouteWorkoutEntity *)self _routeKeyForPersistentID:d transaction:transactionCopy error:error];
  v10 = v9;
  if (v9)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__128;
    v20 = __Block_byref_object_dispose__128;
    v21 = 0;
    longLongValue = [v9 longLongValue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__HDRaceRouteWorkoutEntity_startingPointForWorkoutWithPersistentID_transaction_error___block_invoke;
    v15[3] = &unk_2786252F8;
    v15[4] = &v16;
    if ([HDRaceRouteLocationSeriesEntity enumerateRoutePointsForSeries:longLongValue timestampAnchor:1 limit:transactionCopy transaction:error error:v15 handler:-1.0])
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