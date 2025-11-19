@interface HDWorkoutZonesSampleEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDWorkoutZonesSampleEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277CCAAB0];
  v13 = [a3 zones];
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:a7];

  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__HDWorkoutZonesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v19[3] = &unk_278613038;
    v15 = v11;
    v20 = v15;
    v21 = v14;
    if ([v10 executeSQL:@"INSERT INTO workout_zones_samples (data_id error:zones) VALUES (? bindingHandler:?)" enumerationHandler:{a7, v19, 0}])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __92__HDWorkoutZonesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addWorkoutZones:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDWorkoutZonesSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end