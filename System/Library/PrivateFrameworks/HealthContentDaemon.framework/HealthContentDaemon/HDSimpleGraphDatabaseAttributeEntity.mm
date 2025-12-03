@interface HDSimpleGraphDatabaseAttributeEntity
+ (BOOL)addAttributeWithType:(int64_t)type value:(id)value nodeID:(int64_t)d version:(int64_t)version slots:(unint64_t)slots database:(id)database error:(id *)error;
+ (BOOL)deleteAttributesWithNodeID:(int64_t)d lessThanVersion:(int64_t)version database:(id)database error:(id *)error;
+ (BOOL)deleteAttributesWithNodeID:(int64_t)d type:(int64_t)type database:(id)database error:(id *)error;
+ (BOOL)enumerateAttributesForNodeWithID:(int64_t)d skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateAttributesWithPredicate:(id)predicate skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)updateSlots:(unint64_t)slots nodeID:(int64_t)d type:(int64_t)type database:(id)database error:(id *)error;
+ (HDSimpleGraphAttribute)_attributeForRow:(uint64_t)row;
+ (id)_sqlForAttributesOfNodeSkipDeleted:(uint64_t)deleted;
+ (id)foreignKeys;
+ (id)indices;
+ (id)predicateForAttributesWithType:(int64_t)type;
+ (id)uniquedColumns;
+ (int64_t)maxVersion:(int64_t *)version slots:(unint64_t *)slots nodeID:(int64_t)d type:(int64_t)type database:(id)database error:(id *)error;
- (HDSimpleGraphDatabaseAttributeEntity)init;
@end

@implementation HDSimpleGraphDatabaseAttributeEntity

- (HDSimpleGraphDatabaseAttributeEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)addAttributeWithType:(int64_t)type value:(id)value nodeID:(int64_t)d version:(int64_t)version slots:(unint64_t)slots database:(id)database error:(id *)error
{
  valueCopy = value;
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseAttributeEntity addAttributeWithType:value:nodeID:version:slots:database:error:];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__HDSimpleGraphDatabaseAttributeEntity_addAttributeWithType_value_nodeID_version_slots_database_error___block_invoke_2;
  v19[3] = &unk_2796B94F0;
  v20 = valueCopy;
  dCopy = d;
  typeCopy = type;
  versionCopy = version;
  slotsCopy = slots;
  v16 = valueCopy;
  v17 = [databaseCopy executeCachedStatementForKey:&addAttributeWithType_value_nodeID_version_slots_database_error__key error:error SQLGenerator:&__block_literal_global_3 bindingHandler:v19 enumerationHandler:0];

  return v17;
}

uint64_t __103__HDSimpleGraphDatabaseAttributeEntity_addAttributeWithType_value_nodeID_version_slots_database_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[5]);
  sqlite3_bind_int64(a2, 2, a1[6]);
  v4 = a1[4];
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 4, a1[7]);
  v5 = a1[8];

  return sqlite3_bind_int64(a2, 5, v5);
}

+ (BOOL)updateSlots:(unint64_t)slots nodeID:(int64_t)d type:(int64_t)type database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseAttributeEntity updateSlots:nodeID:type:database:error:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HDSimpleGraphDatabaseAttributeEntity_updateSlots_nodeID_type_database_error___block_invoke_2;
  v14[3] = &__block_descriptor_56_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = slots;
  v14[5] = d;
  v14[6] = type;
  v12 = [databaseCopy executeCachedStatementForKey:&updateSlots_nodeID_type_database_error__key error:error SQLGenerator:&__block_literal_global_323_0 bindingHandler:v14 enumerationHandler:0];

  return v12;
}

uint64_t __79__HDSimpleGraphDatabaseAttributeEntity_updateSlots_nodeID_type_database_error___block_invoke_2(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  v4 = a1[6];

  return sqlite3_bind_int64(a2, 3, v4);
}

+ (BOOL)deleteAttributesWithNodeID:(int64_t)d type:(int64_t)type database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseAttributeEntity deleteAttributesWithNodeID:type:database:error:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDSimpleGraphDatabaseAttributeEntity_deleteAttributesWithNodeID_type_database_error___block_invoke_2;
  v12[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = d;
  v12[5] = type;
  v10 = [databaseCopy executeCachedStatementForKey:&deleteAttributesWithNodeID_type_database_error__key error:error SQLGenerator:&__block_literal_global_328 bindingHandler:v12 enumerationHandler:0];

  return v10;
}

uint64_t __87__HDSimpleGraphDatabaseAttributeEntity_deleteAttributesWithNodeID_type_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)deleteAttributesWithNodeID:(int64_t)d lessThanVersion:(int64_t)version database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseAttributeEntity deleteAttributesWithNodeID:lessThanVersion:database:error:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HDSimpleGraphDatabaseAttributeEntity_deleteAttributesWithNodeID_lessThanVersion_database_error___block_invoke_2;
  v12[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = d;
  v12[5] = version;
  v10 = [databaseCopy executeCachedStatementForKey:&deleteAttributesWithNodeID_lessThanVersion_database_error__key error:error SQLGenerator:&__block_literal_global_334 bindingHandler:v12 enumerationHandler:0];

  return v10;
}

uint64_t __98__HDSimpleGraphDatabaseAttributeEntity_deleteAttributesWithNodeID_lessThanVersion_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (int64_t)maxVersion:(int64_t *)version slots:(unint64_t *)slots nodeID:(int64_t)d type:(int64_t)type database:(id)database error:(id *)error
{
  databaseCopy = database;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HDSimpleGraphDatabaseAttributeEntity_maxVersion_slots_nodeID_type_database_error___block_invoke_2;
  v17[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = d;
  v17[5] = type;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HDSimpleGraphDatabaseAttributeEntity_maxVersion_slots_nodeID_type_database_error___block_invoke_3;
  v16[3] = &unk_2796B8F40;
  v16[4] = &v22;
  v16[5] = &v18;
  v16[6] = &v26;
  if ([databaseCopy executeCachedStatementForKey:&maxVersion_slots_nodeID_type_database_error__key error:error SQLGenerator:&__block_literal_global_339 bindingHandler:v17 enumerationHandler:v16])
  {
    if (*(v27 + 24))
    {
      if (version)
      {
        *version = v23[3];
      }

      if (slots)
      {
        *slots = v19[3];
      }

      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

uint64_t __84__HDSimpleGraphDatabaseAttributeEntity_maxVersion_slots_nodeID_type_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __84__HDSimpleGraphDatabaseAttributeEntity_maxVersion_slots_nodeID_type_database_error___block_invoke_3(void *a1)
{
  *(*(a1[4] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[6] + 8) + 24) = 1;
  return 0;
}

+ (BOOL)enumerateAttributesWithPredicate:(id)predicate skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  deletedCopy = deleted;
  predicateCopy = predicate;
  databaseCopy = database;
  handlerCopy = handler;
  if (deletedCopy)
  {
    v15 = MEMORY[0x277D10B70];
    v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"value" notEqualToValue:0x28636EAE8];
    v17 = [v15 compoundPredicateWithPredicate:predicateCopy otherPredicate:v16];

    predicateCopy = v17;
  }

  v18 = [self queryWithDatabase:databaseCopy predicate:predicateCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesWithPredicate_skipDeleted_database_error_enumerationHandler___block_invoke;
  v22[3] = &unk_2796B8F68;
  v23 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v20 = [v18 enumerateProperties:&unk_2863748F8 error:error enumerationHandler:v22];

  return v20;
}

uint64_t __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesWithPredicate_skipDeleted_database_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = [(HDSimpleGraphDatabaseAttributeEntity *)*(a1 + 40) _attributeForRow:a3];
  v7 = (*(v5 + 16))(v5, v6, a4);

  return v7;
}

+ (HDSimpleGraphAttribute)_attributeForRow:(uint64_t)row
{
  objc_opt_self();
  v3 = HDSQLiteColumnAsInt64();
  v4 = HDSQLiteColumnAsInt64();
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x253077B20](a2, 3);
  v7 = HDSQLiteColumnAsInt64();
  v8 = [[HDSimpleGraphAttribute alloc] initWithRowID:v3 type:v5 value:v6 nodeID:v4 version:v7 slots:HDSQLiteColumnAsInt64()];

  return v8;
}

+ (BOOL)enumerateAttributesForNodeWithID:(int64_t)d skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  deletedCopy = deleted;
  handlerCopy = handler;
  if (deletedCopy)
  {
    v13 = &enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler__skipDeletedKey;
  }

  else
  {
    v13 = &enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler__includedDeletedKey;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler___block_invoke;
  v22[3] = &__block_descriptor_41_e15___NSString_8__0l;
  v22[4] = self;
  v23 = deletedCopy;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler___block_invoke_2;
  v20[3] = &__block_descriptor_41_e23_v16__0__sqlite3_stmt__8l;
  v20[4] = d;
  v21 = deletedCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler___block_invoke_3;
  v17[3] = &unk_2796B8FD0;
  v18 = handlerCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = [database executeCachedStatementForKey:v13 error:error SQLGenerator:v22 bindingHandler:v20 enumerationHandler:v17];

  return v15;
}

+ (id)_sqlForAttributesOfNodeSkipDeleted:(uint64_t)deleted
{
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = +[(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseAttributeEntity];
  v5 = v4;
  if (a2)
  {
    v6 = [v3 initWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ != ?", @"rowid", @"node_id", @"attribute_type", @"value", @"version", @"slots", v4, @"node_id", @"value"];
  }

  else
  {
    v6 = [v3 initWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"rowid", @"node_id", @"attribute_type", @"value", @"version", @"slots", v4, @"node_id", v9];
  }

  v7 = v6;

  return v7;
}

uint64_t __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_bind_int64(a2, 1, *(a1 + 32));
  if (*(a1 + 40) == 1)
  {

    return HDSQLiteBindStringToStatement();
  }

  return result;
}

uint64_t __119__HDSimpleGraphDatabaseAttributeEntity_enumerateAttributesForNodeWithID_skipDeleted_database_error_enumerationHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [(HDSimpleGraphDatabaseAttributeEntity *)*(a1 + 40) _attributeForRow:a2];
  v6 = (*(v4 + 16))(v4, v5, a3);

  return v6;
}

+ (id)predicateForAttributesWithType:(int64_t)type
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:type];
  v5 = [v3 predicateWithProperty:@"attribute_type" equalToValue:v4];

  return v5;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"node_id";
  v2 = +[HDSimpleGraphDatabaseNodeEntity nodeEntityForeignKey];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"node_id";
  v5[1] = @"attribute_type";
  v5[2] = @"value";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9[0] = @"attribute_type";
  v9[1] = @"value";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = [v2 initWithEntity:v3 name:@"type_value_index" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)addAttributeWithType:value:nodeID:version:slots:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)updateSlots:nodeID:type:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)deleteAttributesWithNodeID:type:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)deleteAttributesWithNodeID:lessThanVersion:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

@end