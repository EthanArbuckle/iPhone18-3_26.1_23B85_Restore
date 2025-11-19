@interface HDWorkoutBuilderAssociatedObjectEntity
+ (BOOL)enumerateAssociatedUUIDsForBuilder:(id)a3 transaction:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)removeAssociationFromBuilder:(id)a3 toUUID:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)uniquedColumns;
+ (int64_t)associateObject:(id)a3 code:(int64_t)a4 timestamp:(double)a5 withBuilder:(id)a6 transaction:(id)a7 error:(id *)a8;
@end

@implementation HDWorkoutBuilderAssociatedObjectEntity

+ (int64_t)associateObject:(id)a3 code:(int64_t)a4 timestamp:(double)a5 withBuilder:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a6;
  v15 = [a7 databaseForEntityClass:a1];
  v31 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __103__HDWorkoutBuilderAssociatedObjectEntity_associateObject_code_timestamp_withBuilder_transaction_error___block_invoke;
  v30[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v30[4] = a1;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __103__HDWorkoutBuilderAssociatedObjectEntity_associateObject_code_timestamp_withBuilder_transaction_error___block_invoke_2;
  v25 = &unk_2786214F8;
  v16 = v14;
  v26 = v16;
  v17 = v13;
  v27 = v17;
  v28 = a5;
  v29 = a4;
  LOBYTE(a1) = [v15 executeCachedStatementForKey:&associateObject_code_timestamp_withBuilder_transaction_error__insertKey error:&v31 SQLGenerator:v30 bindingHandler:&v22 enumerationHandler:0];
  v18 = v31;
  v19 = v18;
  if (a1)
  {
    v20 = 1;
  }

  else if ([v18 hd_isConstraintViolation])
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id __103__HDWorkoutBuilderAssociatedObjectEntity_associateObject_code_timestamp_withBuilder_transaction_error___block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[0] = @"workout_builder_id";
  v6[1] = @"object_uuid";
  v6[2] = @"timestamp";
  v6[3] = @"type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:0];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __103__HDWorkoutBuilderAssociatedObjectEntity_associateObject_code_timestamp_withBuilder_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) UUID];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_double(a2, 3, *(a1 + 48));
  v5 = *(a1 + 56);

  return sqlite3_bind_int64(a2, 4, v5);
}

+ (BOOL)enumerateAssociatedUUIDsForBuilder:(id)a3 transaction:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a4 databaseForEntityClass:a1];
  v19 = v10;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke;
  v20[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v20[4] = a1;
  v17 = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke_2;
  v18[3] = &unk_278614860;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke_3;
  v16[3] = &unk_278613B30;
  v13 = v11;
  v14 = v10;
  LOBYTE(a5) = [v12 executeCachedStatementForKey:&enumerateAssociatedUUIDsForBuilder_transaction_error_block__enumerationKey error:a5 SQLGenerator:v20 bindingHandler:v18 enumerationHandler:v16];

  return a5;
}

id __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT DISTINCT %@, %@ FROM %@ WHERE %@ = ?", @"object_uuid", @"type", v2, @"workout_builder_id", 0];

  return v3;
}

uint64_t __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v1 = HKWithAutoreleasePool();

  return v1;
}

uint64_t __101__HDWorkoutBuilderAssociatedObjectEntity_enumerateAssociatedUUIDsForBuilder_transaction_error_block___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AAC6CA0](*(a1 + 40), 0);
  v6 = *(a1 + 40);
  v7 = HDSQLiteColumnAsInt64();
  v8 = (*(v4 + 16))(v4, v5, v7, a2);

  return v8;
}

+ (BOOL)removeAssociationFromBuilder:(id)a3 toUUID:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CCACA8];
  v13 = a5;
  v14 = [a1 disambiguatedDatabaseTable];
  v15 = [v12 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ? AND %@ = ?", v14, @"workout_builder_id", @"object_uuid"];

  v16 = [v13 databaseForEntityClass:a1];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HDWorkoutBuilderAssociatedObjectEntity_removeAssociationFromBuilder_toUUID_transaction_error___block_invoke;
  v20[3] = &unk_278613038;
  v21 = v10;
  v22 = v11;
  v17 = v11;
  v18 = v10;
  LOBYTE(a6) = [v16 executeSQL:v15 error:a6 bindingHandler:v20 enumerationHandler:0];

  return a6;
}

uint64_t __96__HDWorkoutBuilderAssociatedObjectEntity_removeAssociationFromBuilder_toUUID_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
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

+ (id)uniquedColumns
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"workout_builder_id";
  v5[1] = @"object_uuid";
  v5[2] = @"timestamp";
  v5[3] = @"type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end