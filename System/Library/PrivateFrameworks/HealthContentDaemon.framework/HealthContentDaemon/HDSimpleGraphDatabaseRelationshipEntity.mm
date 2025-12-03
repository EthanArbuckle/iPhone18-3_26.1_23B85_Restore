@interface HDSimpleGraphDatabaseRelationshipEntity
+ (BOOL)addRelationshipWithType:(int64_t)type subjectNodeID:(int64_t)d objectNodeID:(int64_t)iD version:(int64_t)version slots:(unint64_t)slots database:(id)database error:(id *)error;
+ (BOOL)deleteRelationshipsWithSubjectID:(int64_t)d lessThanVersion:(int64_t)version database:(id)database error:(id *)error;
+ (BOOL)deleteRelationshipsWithSubjectID:(int64_t)d relationshipID:(int64_t)iD database:(id)database error:(id *)error;
+ (BOOL)enumerateRelationshipsWithPredicate:(id)predicate skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateRelationshipsWithSubjectID:(int64_t)d skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)removeRelationshipWithType:(int64_t)type subjectNodeID:(int64_t)d objectNodeID:(int64_t)iD database:(id)database error:(id *)error;
+ (BOOL)updateSlots:(unint64_t)slots subjectNodeID:(int64_t)d relationshipID:(int64_t)iD database:(id)database error:(id *)error;
+ (HDSimpleGraphRelationship)_relationshipForRow:;
+ (id)_sqlForRelationshipsOfNodeSkipDeleted:(uint64_t)deleted;
+ (id)foreignKeys;
+ (id)indices;
+ (id)uniquedColumns;
+ (int64_t)maxVersion:(int64_t *)version slots:(unint64_t *)slots subjectNodeID:(int64_t)d relationshipID:(int64_t)iD database:(id)database error:(id *)error;
- (HDSimpleGraphDatabaseRelationshipEntity)init;
@end

@implementation HDSimpleGraphDatabaseRelationshipEntity

- (HDSimpleGraphDatabaseRelationshipEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)addRelationshipWithType:(int64_t)type subjectNodeID:(int64_t)d objectNodeID:(int64_t)iD version:(int64_t)version slots:(unint64_t)slots database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseRelationshipEntity addRelationshipWithType:subjectNodeID:objectNodeID:version:slots:database:error:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __123__HDSimpleGraphDatabaseRelationshipEntity_addRelationshipWithType_subjectNodeID_objectNodeID_version_slots_database_error___block_invoke_2;
  v17[3] = &__block_descriptor_72_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = d;
  v17[5] = type;
  v17[6] = iD;
  v17[7] = version;
  v17[8] = slots;
  v15 = [databaseCopy executeCachedStatementForKey:&addRelationshipWithType_subjectNodeID_objectNodeID_version_slots_database_error__key error:error SQLGenerator:&__block_literal_global_0 bindingHandler:v17 enumerationHandler:0];

  return v15;
}

uint64_t __123__HDSimpleGraphDatabaseRelationshipEntity_addRelationshipWithType_subjectNodeID_objectNodeID_version_slots_database_error___block_invoke_2(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  sqlite3_bind_int64(a2, 3, a1[6]);
  sqlite3_bind_int64(a2, 4, a1[7]);
  v4 = a1[8];

  return sqlite3_bind_int64(a2, 5, v4);
}

+ (BOOL)updateSlots:(unint64_t)slots subjectNodeID:(int64_t)d relationshipID:(int64_t)iD database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseRelationshipEntity updateSlots:subjectNodeID:relationshipID:database:error:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__HDSimpleGraphDatabaseRelationshipEntity_updateSlots_subjectNodeID_relationshipID_database_error___block_invoke_2;
  v14[3] = &__block_descriptor_56_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = slots;
  v14[5] = d;
  v14[6] = iD;
  v12 = [databaseCopy executeCachedStatementForKey:&updateSlots_subjectNodeID_relationshipID_database_error__key error:error SQLGenerator:&__block_literal_global_323 bindingHandler:v14 enumerationHandler:0];

  return v12;
}

uint64_t __99__HDSimpleGraphDatabaseRelationshipEntity_updateSlots_subjectNodeID_relationshipID_database_error___block_invoke_2(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  v4 = a1[6];

  return sqlite3_bind_int64(a2, 3, v4);
}

+ (BOOL)deleteRelationshipsWithSubjectID:(int64_t)d relationshipID:(int64_t)iD database:(id)database error:(id *)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__HDSimpleGraphDatabaseRelationshipEntity_deleteRelationshipsWithSubjectID_relationshipID_database_error___block_invoke_2;
  v7[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v7[4] = d;
  v7[5] = iD;
  return [database executeCachedStatementForKey:&deleteRelationshipsWithSubjectID_relationshipID_database_error__key error:error SQLGenerator:&__block_literal_global_329 bindingHandler:v7 enumerationHandler:0];
}

uint64_t __106__HDSimpleGraphDatabaseRelationshipEntity_deleteRelationshipsWithSubjectID_relationshipID_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)deleteRelationshipsWithSubjectID:(int64_t)d lessThanVersion:(int64_t)version database:(id)database error:(id *)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HDSimpleGraphDatabaseRelationshipEntity_deleteRelationshipsWithSubjectID_lessThanVersion_database_error___block_invoke_2;
  v7[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v7[4] = d;
  v7[5] = version;
  return [database executeCachedStatementForKey:&deleteRelationshipsWithSubjectID_lessThanVersion_database_error__key error:error SQLGenerator:&__block_literal_global_335 bindingHandler:v7 enumerationHandler:0];
}

uint64_t __107__HDSimpleGraphDatabaseRelationshipEntity_deleteRelationshipsWithSubjectID_lessThanVersion_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (int64_t)maxVersion:(int64_t *)version slots:(unint64_t *)slots subjectNodeID:(int64_t)d relationshipID:(int64_t)iD database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseRelationshipEntity maxVersion:slots:subjectNodeID:relationshipID:database:error:];
  }

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
  v17[2] = __104__HDSimpleGraphDatabaseRelationshipEntity_maxVersion_slots_subjectNodeID_relationshipID_database_error___block_invoke_2;
  v17[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = d;
  v17[5] = iD;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HDSimpleGraphDatabaseRelationshipEntity_maxVersion_slots_subjectNodeID_relationshipID_database_error___block_invoke_3;
  v16[3] = &unk_2796B8F40;
  v16[4] = &v22;
  v16[5] = &v18;
  v16[6] = &v26;
  if ([databaseCopy executeCachedStatementForKey:&maxVersion_slots_subjectNodeID_relationshipID_database_error__key error:error SQLGenerator:&__block_literal_global_340 bindingHandler:v17 enumerationHandler:v16])
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

uint64_t __104__HDSimpleGraphDatabaseRelationshipEntity_maxVersion_slots_subjectNodeID_relationshipID_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __104__HDSimpleGraphDatabaseRelationshipEntity_maxVersion_slots_subjectNodeID_relationshipID_database_error___block_invoke_3(void *a1)
{
  *(*(a1[4] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[6] + 8) + 24) = 1;
  return 0;
}

+ (BOOL)removeRelationshipWithType:(int64_t)type subjectNodeID:(int64_t)d objectNodeID:(int64_t)iD database:(id)database error:(id *)error
{
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseRelationshipEntity removeRelationshipWithType:subjectNodeID:objectNodeID:database:error:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__HDSimpleGraphDatabaseRelationshipEntity_removeRelationshipWithType_subjectNodeID_objectNodeID_database_error___block_invoke;
  v14[3] = &__block_descriptor_56_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = d;
  v14[5] = type;
  v14[6] = iD;
  v12 = [databaseCopy executeSQL:@"DELETE FROM relationships WHERE subject_id = ? AND relationship_type = ? AND object_id = ?" error:error bindingHandler:v14 enumerationHandler:0];

  return v12;
}

uint64_t __112__HDSimpleGraphDatabaseRelationshipEntity_removeRelationshipWithType_subjectNodeID_objectNodeID_database_error___block_invoke(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  v4 = a1[6];

  return sqlite3_bind_int64(a2, 3, v4);
}

+ (BOOL)enumerateRelationshipsWithPredicate:(id)predicate skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  deletedCopy = deleted;
  predicateCopy = predicate;
  databaseCopy = database;
  handlerCopy = handler;
  if (deletedCopy)
  {
    v15 = MEMORY[0x277D10B70];
    v16 = MEMORY[0x277D10B18];
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:204];
    v18 = [v16 predicateWithProperty:@"object_id" notEqualToValue:v17];
    v19 = [v15 compoundPredicateWithPredicate:predicateCopy otherPredicate:v18];

    predicateCopy = v19;
  }

  v20 = [self queryWithDatabase:databaseCopy predicate:predicateCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithPredicate_skipDeleted_database_error_enumerationHandler___block_invoke;
  v24[3] = &unk_2796B8F68;
  v25 = handlerCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v22 = [v20 enumerateProperties:&unk_2863747D8 error:error enumerationHandler:v24];

  return v22;
}

uint64_t __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithPredicate_skipDeleted_database_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = +[HDSimpleGraphDatabaseRelationshipEntity _relationshipForRow:];
  v8 = (*(v6 + 16))(v6, v7, a4);

  return v8;
}

+ (HDSimpleGraphRelationship)_relationshipForRow:
{
  objc_opt_self();
  v0 = HDSQLiteColumnAsInt64();
  v1 = HDSQLiteColumnAsInt64();
  v2 = HDSQLiteColumnAsInt64();
  v3 = HDSQLiteColumnAsInt64();
  v4 = HDSQLiteColumnAsInt64();
  v5 = [[HDSimpleGraphRelationship alloc] initWithRowID:v0 subjectID:v1 type:v2 objectID:v3 version:v4 slots:HDSQLiteColumnAsInt64()];

  return v5;
}

+ (BOOL)enumerateRelationshipsWithSubjectID:(int64_t)d skipDeleted:(BOOL)deleted database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  deletedCopy = deleted;
  handlerCopy = handler;
  if (deletedCopy)
  {
    v13 = &enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler__skipDeletedKey;
  }

  else
  {
    v13 = &enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler__includedDeletedKey;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler___block_invoke;
  v22[3] = &__block_descriptor_41_e15___NSString_8__0l;
  v22[4] = self;
  v23 = deletedCopy;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler___block_invoke_2;
  v20[3] = &__block_descriptor_41_e23_v16__0__sqlite3_stmt__8l;
  v20[4] = d;
  v21 = deletedCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler___block_invoke_3;
  v17[3] = &unk_2796B8FD0;
  v18 = handlerCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = [database executeCachedStatementForKey:v13 error:error SQLGenerator:v22 bindingHandler:v20 enumerationHandler:v17];

  return v15;
}

+ (id)_sqlForRelationshipsOfNodeSkipDeleted:(uint64_t)deleted
{
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = +[(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity];
  v5 = v4;
  if (a2)
  {
    v6 = [v3 initWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ != ?", @"rowid", @"subject_id", @"relationship_type", @"object_id", @"version", @"slots", v4, @"subject_id", @"object_id"];
  }

  else
  {
    v6 = [v3 initWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"rowid", @"subject_id", @"relationship_type", @"object_id", @"version", @"slots", v4, @"subject_id", v9];
  }

  v7 = v6;

  return v7;
}

uint64_t __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_bind_int64(a2, 1, *(a1 + 32));
  if (*(a1 + 40) == 1)
  {

    return sqlite3_bind_int64(a2, 2, 204);
  }

  return result;
}

uint64_t __125__HDSimpleGraphDatabaseRelationshipEntity_enumerateRelationshipsWithSubjectID_skipDeleted_database_error_enumerationHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = +[HDSimpleGraphDatabaseRelationshipEntity _relationshipForRow:];
  v7 = (*(v5 + 16))(v5, v6, a3);

  return v7;
}

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"subject_id";
  v2 = +[HDSimpleGraphDatabaseNodeEntity nodeEntityForeignKey];
  v7[1] = @"object_id";
  v8[0] = v2;
  v3 = +[HDSimpleGraphDatabaseNodeEntity nodeEntityForeignKey];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"subject_id";
  v5[1] = @"relationship_type";
  v5[2] = @"object_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9 = @"object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v5 = [v2 initWithEntity:v3 name:@"object_id_index" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)addRelationshipWithType:subjectNodeID:objectNodeID:version:slots:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)updateSlots:subjectNodeID:relationshipID:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)maxVersion:slots:subjectNodeID:relationshipID:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)removeRelationshipWithType:subjectNodeID:objectNodeID:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

@end