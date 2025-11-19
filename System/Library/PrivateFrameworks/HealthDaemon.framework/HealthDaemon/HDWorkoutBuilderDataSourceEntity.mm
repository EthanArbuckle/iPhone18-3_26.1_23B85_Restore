@interface HDWorkoutBuilderDataSourceEntity
+ (BOOL)enumerateDataSourcesForWorkoutBuilder:(id)a3 transaction:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)removeDataSourceWithIdentifier:(id)a3 fromWorkoutBuilder:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)storeDataSourceWithIdentifier:(id)a3 archivedState:(id)a4 workoutBuilder:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)foreignKeys;
@end

@implementation HDWorkoutBuilderDataSourceEntity

+ (BOOL)storeDataSourceWithIdentifier:(id)a3 archivedState:(id)a4 workoutBuilder:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v29[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v29[0] = @"workout_builder_id";
  v29[1] = @"recovery_identifier";
  v29[2] = @"archived_state";
  v15 = MEMORY[0x277CBEA60];
  v16 = a6;
  v17 = [v15 arrayWithObjects:v29 count:3];
  v18 = [v16 databaseForEntityClass:a1];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __113__HDWorkoutBuilderDataSourceEntity_storeDataSourceWithIdentifier_archivedState_workoutBuilder_transaction_error___block_invoke;
  v25[3] = &unk_278624170;
  v26 = v14;
  v27 = v12;
  v28 = v13;
  v19 = v13;
  v20 = v12;
  v21 = v14;
  v22 = [a1 insertOrReplaceEntity:1 database:v18 properties:v17 error:a7 bindingHandler:v25];

  v23 = *MEMORY[0x277D85DE8];
  return v22 != 0;
}

void __113__HDWorkoutBuilderDataSourceEntity_storeDataSourceWithIdentifier_archivedState_workoutBuilder_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"workout_builder_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6BD0](a2, @"recovery_identifier", *(a1 + 40));
  v4 = *(a1 + 48);

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)removeDataSourceWithIdentifier:(id)a3 fromWorkoutBuilder:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v25[2] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D10B18];
  v11 = a5;
  v12 = a4;
  v13 = [v10 predicateWithProperty:@"recovery_identifier" equalToValue:a3];
  v14 = MEMORY[0x277D10B18];
  v15 = MEMORY[0x277CCABB0];
  v16 = [v12 persistentID];

  v17 = [v15 numberWithLongLong:v16];
  v18 = [v14 predicateWithProperty:@"workout_builder_id" equalToValue:v17];

  v19 = MEMORY[0x277D10B20];
  v25[0] = v13;
  v25[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v21 = [v19 predicateMatchingAllPredicates:v20];

  v22 = [v11 databaseForEntityClass:a1];

  LOBYTE(a6) = [a1 deleteEntitiesInDatabase:v22 predicate:v21 error:a6];
  v23 = *MEMORY[0x277D85DE8];
  return a6;
}

+ (BOOL)enumerateDataSourcesForWorkoutBuilder:(id)a3 transaction:(id)a4 error:(id *)a5 block:(id)a6
{
  v24[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = MEMORY[0x277D10B18];
  v12 = MEMORY[0x277CCABB0];
  v13 = a4;
  v14 = [v12 numberWithLongLong:{objc_msgSend(a3, "persistentID")}];
  v15 = [v11 predicateWithProperty:@"workout_builder_id" equalToValue:v14];

  v16 = [v13 databaseForEntityClass:a1];

  v17 = [a1 queryWithDatabase:v16 predicate:v15];

  v24[0] = @"recovery_identifier";
  v24[1] = @"archived_state";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__HDWorkoutBuilderDataSourceEntity_enumerateDataSourcesForWorkoutBuilder_transaction_error_block___block_invoke;
  v22[3] = &unk_2786145A8;
  v23 = v10;
  v19 = v10;
  LOBYTE(a5) = [v17 enumerateProperties:v18 error:a5 enumerationHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t __98__HDWorkoutBuilderDataSourceEntity_enumerateDataSourcesForWorkoutBuilder_transaction_error_block___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsData();
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"workout_builder_id";
  v2 = +[(HDHealthEntity *)HDWorkoutBuilderEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end