@interface HDWorkoutStatisticsEntity
+ (BOOL)enumerateWorkoutStatisticsForActivityId:(unint64_t)id database:(id)database error:(id *)error handler:(id)handler;
+ (BOOL)insertWorkoutStatistics:(id)statistics workoutActivityId:(unint64_t)id database:(id)database error:(id *)error;
+ (id)_allProperties;
+ (id)foreignKeys;
+ (id)uniquedColumns;
+ (id)workoutStatisticsForActivityId:(unint64_t)id quantityType:(id)type database:(id)database error:(id *)error;
@end

@implementation HDWorkoutStatisticsEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"workout_activity_id";
  v2 = [objc_msgSend(self "ownerEntityClass")];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"workout_activity_id";
  v5[1] = @"data_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)insertWorkoutStatistics:(id)statistics workoutActivityId:(unint64_t)id database:(id)database error:(id *)error
{
  statisticsCopy = statistics;
  databaseCopy = database;
  quantityType = [statisticsCopy quantityType];
  canonicalUnit = [quantityType canonicalUnit];

  _allProperties = [self _allProperties];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__HDWorkoutStatisticsEntity_insertWorkoutStatistics_workoutActivityId_database_error___block_invoke;
  v19[3] = &unk_278613AE8;
  v21 = canonicalUnit;
  idCopy = id;
  v20 = statisticsCopy;
  v15 = canonicalUnit;
  v16 = statisticsCopy;
  v17 = [self insertOrReplaceEntity:0 database:databaseCopy properties:_allProperties error:error bindingHandler:v19];

  return v17 != 0;
}

void __86__HDWorkoutStatisticsEntity_insertWorkoutStatistics_workoutActivityId_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"workout_activity_id", *(a1 + 48));
  v4 = [*(a1 + 32) quantityType];
  MEMORY[0x22AAC6B90](a2, @"data_type", [v4 code]);

  v5 = [*(a1 + 32) quantity];
  [v5 doubleValueForUnit:*(a1 + 40)];
  v7 = v6;

  MEMORY[0x22AAC6B60](a2, @"quantity", v7);
  v8 = [*(a1 + 32) min];

  if (v8)
  {
    v9 = [*(a1 + 32) min];
    [v9 doubleValueForUnit:*(a1 + 40)];
    v11 = v10;

    MEMORY[0x22AAC6B60](a2, @"min", v11);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"min");
  }

  v12 = [*(a1 + 32) max];

  if (v12)
  {
    v13 = [*(a1 + 32) max];
    [v13 doubleValueForUnit:*(a1 + 40)];

    JUMPOUT(0x22AAC6B60);
  }

  JUMPOUT(0x22AAC6BA0);
}

+ (BOOL)enumerateWorkoutStatisticsForActivityId:(unint64_t)id database:(id)database error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__HDWorkoutStatisticsEntity_enumerateWorkoutStatisticsForActivityId_database_error_handler___block_invoke;
  v16[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v16[4] = self;
  v14 = handlerCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HDWorkoutStatisticsEntity_enumerateWorkoutStatisticsForActivityId_database_error_handler___block_invoke_2;
  v15[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = id;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__HDWorkoutStatisticsEntity_enumerateWorkoutStatisticsForActivityId_database_error_handler___block_invoke_3;
  v13[3] = &unk_278613B30;
  v11 = handlerCopy;
  LOBYTE(error) = [database executeCachedStatementForKey:&enumerateWorkoutStatisticsForActivityId_database_error_handler__enumerationKey error:error SQLGenerator:v16 bindingHandler:v15 enumerationHandler:v13];

  return error;
}

id __92__HDWorkoutStatisticsEntity_enumerateWorkoutStatisticsForActivityId_database_error_handler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"data_type", @"quantity", @"min", @"max", v2, @"workout_activity_id"];

  return v3;
}

uint64_t __92__HDWorkoutStatisticsEntity_enumerateWorkoutStatisticsForActivityId_database_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCD830] _quantityTypeWithCode:HDSQLiteColumnAsInt64()];
  v5 = MEMORY[0x22AAC6C50](a2, 1);
  v6 = MEMORY[0x277CCD7E8];
  v7 = [v4 canonicalUnit];
  v8 = [v6 quantityWithUnit:v7 doubleValue:v5];

  v9 = 0;
  if ((MEMORY[0x22AAC6CD0](a2, 2) & 1) == 0)
  {
    v10 = MEMORY[0x22AAC6C50](a2, 2);
    v11 = MEMORY[0x277CCD7E8];
    v12 = [v4 canonicalUnit];
    v9 = [v11 quantityWithUnit:v12 doubleValue:v10];
  }

  if (MEMORY[0x22AAC6CD0](a2, 3))
  {
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x22AAC6C50](a2, 3);
    v15 = MEMORY[0x277CCD7E8];
    v16 = [v4 canonicalUnit];
    v13 = [v15 quantityWithUnit:v16 doubleValue:v14];
  }

  v17 = [[_HDWorkoutStatistics alloc] initWithQuantityType:v4 quantity:v8 min:v9 max:v13];
  v18 = (*(*(a1 + 32) + 16))();

  return v18;
}

+ (id)workoutStatisticsForActivityId:(unint64_t)id quantityType:(id)type database:(id)database error:(id *)error
{
  typeCopy = type;
  databaseCopy = database;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v28 = 0;
  idCopy = id;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__HDWorkoutStatisticsEntity_workoutStatisticsForActivityId_quantityType_database_error___block_invoke;
  v22[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDWorkoutStatisticsEntity_workoutStatisticsForActivityId_quantityType_database_error___block_invoke_2;
  v19[3] = &unk_278613B58;
  v20 = typeCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HDWorkoutStatisticsEntity_workoutStatisticsForActivityId_quantityType_database_error___block_invoke_3;
  v16[3] = &unk_278613B80;
  v12 = v20;
  v17 = v12;
  v18 = &v23;
  if ([databaseCopy executeCachedStatementForKey:&workoutStatisticsForActivityId_quantityType_database_error__enumerationKey error:error SQLGenerator:v22 bindingHandler:v19 enumerationHandler:v16])
  {
    v13 = v24[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v23, 8);

  return v14;
}

id __88__HDWorkoutStatisticsEntity_workoutStatisticsForActivityId_quantityType_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", @"quantity", @"min", @"max", v2, @"workout_activity_id", @"data_type"];

  return v3;
}

uint64_t __88__HDWorkoutStatisticsEntity_workoutStatisticsForActivityId_quantityType_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_double(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) code];

  return sqlite3_bind_double(a2, 2, v4);
}

uint64_t __88__HDWorkoutStatisticsEntity_workoutStatisticsForActivityId_quantityType_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C50](a2, 0);
  v5 = MEMORY[0x277CCD7E8];
  v6 = [*(a1 + 32) canonicalUnit];
  v7 = [v5 quantityWithUnit:v6 doubleValue:v4];

  v8 = 0;
  if ((MEMORY[0x22AAC6CD0](a2, 1) & 1) == 0)
  {
    v9 = MEMORY[0x22AAC6C50](a2, 1);
    v10 = MEMORY[0x277CCD7E8];
    v11 = [*(a1 + 32) canonicalUnit];
    v8 = [v10 quantityWithUnit:v11 doubleValue:v9];
  }

  if (MEMORY[0x22AAC6CD0](a2, 2))
  {
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x22AAC6C50](a2, 2);
    v14 = MEMORY[0x277CCD7E8];
    v15 = [*(a1 + 32) canonicalUnit];
    v12 = [v14 quantityWithUnit:v15 doubleValue:v13];
  }

  v16 = [[_HDWorkoutStatistics alloc] initWithQuantityType:*(a1 + 32) quantity:v7 min:v8 max:v12];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  return 0;
}

+ (id)_allProperties
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"workout_activity_id";
  v5[1] = @"data_type";
  v5[2] = @"quantity";
  v5[3] = @"min";
  v5[4] = @"max";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end