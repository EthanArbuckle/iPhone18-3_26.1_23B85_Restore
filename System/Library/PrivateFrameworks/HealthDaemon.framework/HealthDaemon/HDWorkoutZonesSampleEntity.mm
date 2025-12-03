@interface HDWorkoutZonesSampleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDWorkoutZonesSampleEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  v12 = MEMORY[0x277CCAAB0];
  zones = [object zones];
  v14 = [v12 archivedDataWithRootObject:zones requiringSecureCoding:1 error:error];

  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__HDWorkoutZonesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v19[3] = &unk_278613038;
    v15 = dCopy;
    v20 = v15;
    v21 = v14;
    if ([databaseCopy executeSQL:@"INSERT INTO workout_zones_samples (data_id error:zones) VALUES (? bindingHandler:?)" enumerationHandler:{error, v19, 0}])
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

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addWorkoutZones:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDWorkoutZonesSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end