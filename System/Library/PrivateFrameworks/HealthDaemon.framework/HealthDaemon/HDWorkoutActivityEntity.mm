@interface HDWorkoutActivityEntity
+ (BOOL)enumerateActivityEntitiesForOwnerID:(unint64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertSubActivities:(id)activities ownerID:(unint64_t)d database:(id)database error:(id *)error;
+ (const)columnDefinitionsWithCount:(unint64_t *)count;
+ (id)_allProperties;
+ (id)_numberProperty:(id)property primaryActivityOwnerID:(unint64_t)d transaction:(id)transaction error:(id *)error;
+ (id)_primaryActivityPredicateForOwnerID:(unint64_t)d;
+ (id)_statisticsForWorkoutActivityWithPersistentId:(unint64_t)id workoutActivity:(id)activity database:(id)database error:(id *)error;
+ (id)_workoutActivityFromRow:(HDSQLiteRow *)row;
+ (id)activityEntityWithUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)indices;
+ (id)primaryWorkoutActivityForOwnerID:(unint64_t)d database:(id)database error:(id *)error;
+ (id)subActivitiesWithOwnerID:(unint64_t)d database:(id)database error:(id *)error;
+ (id)subActivityEntityWithUUID:(id)d ownerID:(unint64_t)iD database:(id)database error:(id *)error;
- (BOOL)setDuration:(double)duration transaction:(id)transaction error:(id *)error;
- (BOOL)setEndDate:(id)date transaction:(id)transaction error:(id *)error;
- (BOOL)setMetadata:(id)metadata transaction:(id)transaction error:(id *)error;
- (BOOL)unitTest_validateInTransaction:(id)transaction error:(id *)error;
- (id)UUIDInTransaction:(id)transaction error:(id *)error;
@end

@implementation HDWorkoutActivityEntity

+ (const)columnDefinitionsWithCount:(unint64_t *)count
{
  if ([self supportsNullableEndDate])
  {
    result = columnDefinitionsWithCount__nullableEndDateDefinitions;
  }

  else
  {
    result = columnDefinitionsWithCount__nonNullableEndDateDefinitions_0;
  }

  *count = 12;
  return result;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"owner_id";
  v2 = [objc_msgSend(self "ownerEntityClass")];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10B40]);
  v4 = MEMORY[0x277CCACA8];
  databaseTable = [self databaseTable];
  v6 = [v4 stringWithFormat:@"%@_owners", databaseTable];
  v12 = @"owner_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v3 initWithEntity:self name:v6 columns:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)insertSubActivities:(id)activities ownerID:(unint64_t)d database:(id)database error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  databaseCopy = database;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = activitiesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![self _insertOrReplaceWorkoutActivity:*(*(&v20 + 1) + 8 * i) shouldReplace:0 ownerID:d isPrimaryActivity:0 database:databaseCopy error:{error, v20}])
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)subActivitiesWithOwnerID:(unint64_t)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MEMORY[0x277D10B18];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v12 = [v10 predicateWithProperty:@"owner_id" equalToValue:v11];

  v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"is_primary_activity" equalToValue:MEMORY[0x277CBEC28]];
  v14 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v12 otherPredicate:v13];
  v15 = [self queryWithDatabase:databaseCopy predicate:v14];
  _allProperties = [self _allProperties];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__HDWorkoutActivityEntity_subActivitiesWithOwnerID_database_error___block_invoke;
  v22[3] = &unk_278617E98;
  v24 = v9;
  selfCopy = self;
  v23 = databaseCopy;
  v17 = v9;
  v18 = databaseCopy;
  LODWORD(error) = [v15 enumeratePersistentIDsAndProperties:_allProperties error:error enumerationHandler:v22];

  if (error)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

uint64_t __67__HDWorkoutActivityEntity_subActivitiesWithOwnerID_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = [*(a1 + 48) _workoutActivityFromRow:a4];
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v18 = 0;
  v11 = [v9 _statisticsForWorkoutActivityWithPersistentId:a2 workoutActivity:v8 database:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  v15 = v14;
  if (v14)
  {
    [v8 _setAllStatistics:v11];
    [*(a1 + 40) addObject:v8];
  }

  else if (a5)
  {
    v16 = v12;
    *a5 = v13;
  }

  else
  {
    _HKLogDroppedError();
  }

  return v15;
}

+ (id)primaryWorkoutActivityForOwnerID:(unint64_t)d database:(id)database error:(id *)error
{
  databaseCopy = database;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__32;
  v32 = __Block_byref_object_dispose__32;
  v33 = 0;
  v9 = [self _primaryActivityPredicateForOwnerID:d];
  v10 = [self queryWithDatabase:databaseCopy predicate:v9];
  _allProperties = [self _allProperties];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __75__HDWorkoutActivityEntity_primaryWorkoutActivityForOwnerID_database_error___block_invoke;
  v24 = &unk_278617EC0;
  v26 = &v28;
  selfCopy = self;
  v12 = databaseCopy;
  v25 = v12;
  LODWORD(databaseCopy) = [v10 enumeratePersistentIDsAndProperties:_allProperties error:error enumerationHandler:&v21];

  if (!databaseCopy)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v13 = v29[5];
  if (v13)
  {
LABEL_7:
    v19 = v13;
    goto LABEL_8;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v16 = [v14 hk_error:118 format:{@"Cannot find main activity for workout with persistent ID %@", v15, v21, v22, v23, v24}];
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = 0;
LABEL_8:

  _Block_object_dispose(&v28, 8);

  return v19;
}

BOOL __75__HDWorkoutActivityEntity_primaryWorkoutActivityForOwnerID_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [*(a1 + 48) _workoutActivityFromRow:a4];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 48) _statisticsForWorkoutActivityWithPersistentId:a2 workoutActivity:*(*(*(a1 + 40) + 8) + 40) database:*(a1 + 32) error:a5];
  if (v11)
  {
    [*(*(*(a1 + 40) + 8) + 40) _setAllStatistics:v11];
  }

  return v11 != 0;
}

+ (id)subActivityEntityWithUUID:(id)d ownerID:(unint64_t)iD database:(id)database error:(id *)error
{
  v23[3] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D10B18];
  v11 = MEMORY[0x277CCABB0];
  databaseCopy = database;
  dCopy = d;
  v14 = [v11 numberWithUnsignedLongLong:iD];
  v15 = [v10 predicateWithProperty:@"owner_id" equalToValue:v14];

  v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"is_primary_activity" equalToValue:MEMORY[0x277CBEC28]];
  v17 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:dCopy];

  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v19 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v18];
  v20 = [self anyInDatabase:databaseCopy predicate:v19 error:error];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)activityEntityWithUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:dCopy];

  v11 = [self anyInDatabase:v9 predicate:v10 error:error];

  return v11;
}

+ (BOOL)enumerateActivityEntitiesForOwnerID:(unint64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v11 = [transaction databaseForEntityClass:self];
  v12 = MEMORY[0x277D10B18];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v14 = [v12 predicateWithProperty:@"owner_id" equalToValue:v13];

  v15 = [self queryWithDatabase:v11 predicate:v14];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__HDWorkoutActivityEntity_enumerateActivityEntitiesForOwnerID_transaction_error_enumerationHandler___block_invoke;
  v18[3] = &unk_278617EE8;
  v19 = handlerCopy;
  selfCopy = self;
  v16 = handlerCopy;
  LOBYTE(error) = [v15 enumeratePersistentIDsAndProperties:0 error:error enumerationHandler:v18];

  return error;
}

uint64_t __100__HDWorkoutActivityEntity_enumerateActivityEntitiesForOwnerID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 40)) initWithPersistentID:a2];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

- (id)UUIDInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v6 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self UUIDForProperty:@"uuid" database:v6];

  return v7;
}

- (BOOL)setEndDate:(id)date transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v17[0] = @"end_date";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HDWorkoutActivityEntity_setEndDate_transaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = dateCopy;
  v12 = dateCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v10 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)setDuration:(double)duration transaction:(id)transaction error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v9 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v14[0] = @"duration";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDWorkoutActivityEntity_setDuration_transaction_error___block_invoke;
  v13[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  *&v13[4] = duration;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v9 error:error bindingHandler:v13];

  v11 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)setMetadata:(id)metadata transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v17[0] = @"metadata";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HDWorkoutActivityEntity_setMetadata_transaction_error___block_invoke;
  v15[3] = &unk_278614508;
  v16 = metadataCopy;
  v12 = metadataCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v10 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)unitTest_validateInTransaction:(id)transaction error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__32;
  v20 = __Block_byref_object_dispose__32;
  v21 = 0;
  v7 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v26[0] = @"lap_length";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDWorkoutActivityEntity_unitTest_validateInTransaction_error___block_invoke;
  v15[3] = &unk_278617F30;
  v15[4] = &v22;
  v15[5] = &v16;
  [(HDSQLiteEntity *)self getValuesForProperties:v8 database:v7 handler:v15];

  if (v23[3])
  {
    v9 = 1;
  }

  else
  {
    v10 = v17[5];
    v11 = v10;
    v9 = v10 == 0;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void __64__HDWorkoutActivityEntity_unitTest_validateInTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AAC6C30](a3, 0);
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = objc_opt_class();
    v7 = *(*(a1 + 40) + 8);
    obj = *(v7 + 40);
    v8 = [v5 unarchivedObjectOfClass:v6 fromData:v4 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 32) + 8) + 24) = v8 != 0;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

+ (id)_allProperties
{
  v5[11] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"owner_id";
  v5[2] = @"is_primary_activity";
  v5[3] = @"activity_type";
  v5[4] = @"location_type";
  v5[5] = @"swimming_location_type";
  v5[6] = @"lap_length";
  v5[7] = @"start_date";
  v5[8] = @"end_date";
  v5[9] = @"duration";
  v5[10] = @"metadata";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:11];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __114__HDWorkoutActivityEntity__insertOrReplaceWorkoutActivity_shouldReplace_ownerID_isPrimaryActivity_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) UUID];
  MEMORY[0x22AAC6C00](a2, @"uuid", v4);

  MEMORY[0x22AAC6B90](a2, @"owner_id", *(a1 + 48));
  MEMORY[0x22AAC6B30](a2, @"is_primary_activity", *(a1 + 56));
  MEMORY[0x22AAC6B90](a2, @"activity_type", [*(a1 + 40) activityType]);
  MEMORY[0x22AAC6B90](a2, @"location_type", [*(a1 + 40) locationType]);
  MEMORY[0x22AAC6B90](a2, @"swimming_location_type", [*(a1 + 40) swimmingLocationType]);
  v5 = [*(a1 + 40) lapLength];
  HDSQLiteBindSecureCodingObjectToProperty();

  v6 = [*(a1 + 32) startDate];
  MEMORY[0x22AAC6B50](a2, @"start_date", v6);

  v7 = [*(a1 + 32) endDate];
  MEMORY[0x22AAC6B50](a2, @"end_date", v7);

  [*(a1 + 32) duration];
  MEMORY[0x22AAC6B60](a2, @"duration");
  v8 = [*(a1 + 32) metadata];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)_workoutActivityFromRow:(HDSQLiteRow *)row
{
  v3 = HDSQLiteColumnWithNameAsUUID();
  v4 = objc_alloc_init(MEMORY[0x277CCDC38]);
  [v4 setActivityType:HDSQLiteColumnWithNameAsInt64()];
  [v4 setLocationType:HDSQLiteColumnWithNameAsInt64()];
  [v4 setSwimmingLocationType:HDSQLiteColumnWithNameAsInt64()];
  objc_opt_class();
  v5 = HDSQLiteColumnWithNameAsObject();
  [v4 setLapLength:v5];

  v6 = HDSQLiteColumnWithNameAsDate();
  v7 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v9 = v8;
  hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
  v11 = HDSQLiteColumnWithNameAsObjectWithClasses();
  v12 = objc_alloc(MEMORY[0x277CCDBF0]);
  v13 = [v12 _initWithUUID:v3 workoutConfiguration:v4 startDate:v6 endDate:v7 workoutEvents:MEMORY[0x277CBEBF8] startsPaused:0 duration:v9 metadata:v11 statisticsPerType:0];

  return v13;
}

+ (id)_statisticsForWorkoutActivityWithPersistentId:(unint64_t)id workoutActivity:(id)activity database:(id)database error:(id *)error
{
  activityCopy = activity;
  v10 = MEMORY[0x277CBEB38];
  databaseCopy = database;
  v12 = objc_alloc_init(v10);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__HDWorkoutActivityEntity__statisticsForWorkoutActivityWithPersistentId_workoutActivity_database_error___block_invoke;
  v18[3] = &unk_278617F80;
  v19 = activityCopy;
  v20 = v12;
  v13 = v12;
  v14 = activityCopy;
  LODWORD(error) = [HDWorkoutStatisticsEntity enumerateWorkoutStatisticsForActivityId:id database:databaseCopy error:error handler:v18];

  if (error)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __104__HDWorkoutActivityEntity__statisticsForWorkoutActivityWithPersistentId_workoutActivity_database_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCDA50]);
  v5 = [v3 quantityType];
  v6 = [*(a1 + 32) startDate];
  v7 = [*(a1 + 32) endDate];
  v8 = [v4 initWithDataType:v5 startDate:v6 endDate:v7];

  v9 = [v3 quantityType];
  v10 = [v9 aggregationStyle];

  v11 = [v3 quantity];
  if (v10)
  {
    [v8 setAverageQuantity:v11];
  }

  else
  {
    [v8 setSumQuantity:v11];
  }

  v12 = [v3 min];
  [v8 setMinimumQuantity:v12];

  v13 = [v3 max];
  [v8 setMaximumQuantity:v13];

  v14 = *(a1 + 40);
  v15 = [v3 quantityType];
  [v14 setObject:v8 forKeyedSubscript:v15];

  return 1;
}

+ (id)_primaryActivityPredicateForOwnerID:(unint64_t)d
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v5 = [v3 predicateWithProperty:@"owner_id" equalToValue:v4];

  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"is_primary_activity" equalToValue:MEMORY[0x277CBEC38]];
  v7 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v6];

  return v7;
}

+ (id)_numberProperty:(id)property primaryActivityOwnerID:(unint64_t)d transaction:(id)transaction error:(id *)error
{
  propertyCopy = property;
  transactionCopy = transaction;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__32;
  v25 = __Block_byref_object_dispose__32;
  v26 = 0;
  v12 = [transactionCopy databaseForEntityClass:self];
  v13 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [objc_opt_class() disambiguatedDatabaseTable];
  v15 = [v13 stringWithFormat:@"SELECT %@ FROM %@ WHERE (%@=1) AND (%@=?)", propertyCopy, disambiguatedDatabaseTable, @"is_primary_activity", @"owner_id"];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HDWorkoutActivityEntity__numberProperty_primaryActivityOwnerID_transaction_error___block_invoke;
  v20[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v20[4] = d;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__HDWorkoutActivityEntity__numberProperty_primaryActivityOwnerID_transaction_error___block_invoke_2;
  v19[3] = &unk_278614620;
  v19[4] = &v21;
  if ([v12 executeSQL:v15 error:error bindingHandler:v20 enumerationHandler:v19])
  {
    v16 = v22[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  _Block_object_dispose(&v21, 8);

  return v17;
}

uint64_t __84__HDWorkoutActivityEntity__numberProperty_primaryActivityOwnerID_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end