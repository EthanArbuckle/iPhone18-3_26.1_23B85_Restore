@interface HDSimpleGraphDatabaseNodeEntity
+ (BOOL)deleteNodeWithID:(int64_t)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)enumerateNodesWithPredicate:(id)a3 skipDeleted:(BOOL)a4 limit:(unint64_t)a5 database:(id)a6 error:(id *)a7 enumerationHandler:(id)a8;
+ (BOOL)insertNodeWithID:(int64_t)a3 version:(int64_t)a4 slots:(unint64_t)a5 deleted:(BOOL)a6 database:(id)a7 error:(id *)a8;
+ (BOOL)updateNodeWithID:(int64_t)a3 version:(int64_t)a4 slots:(unint64_t)a5 deleted:(BOOL)a6 database:(id)a7 error:(id *)a8;
+ (HDSimpleGraphNode)_nodeFromRow:database:error:;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)joinClausesForProperty:(id)a3;
+ (id)nodeEntityForeignKey;
+ (id)nodeForID:(int64_t)a3 database:(id)a4 error:(id *)a5;
+ (uint64_t)_callEnumerationHandlerForRow:(void *)a3 database:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
+ (uint64_t)_enumerateNodesForSQL:(void *)a3 database:(uint64_t)a4 error:(void *)a5 bindingHandler:(void *)a6 enumerationHandler:;
- (HDSimpleGraphDatabaseNodeEntity)init;
@end

@implementation HDSimpleGraphDatabaseNodeEntity

- (HDSimpleGraphDatabaseNodeEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)insertNodeWithID:(int64_t)a3 version:(int64_t)a4 slots:(unint64_t)a5 deleted:(BOOL)a6 database:(id)a7 error:(id *)a8
{
  v13 = a7;
  if (([v13 isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseNodeEntity insertNodeWithID:version:slots:deleted:database:error:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__HDSimpleGraphDatabaseNodeEntity_insertNodeWithID_version_slots_deleted_database_error___block_invoke_2;
  v16[3] = &__block_descriptor_57_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v17 = a6;
  v14 = [v13 executeCachedStatementForKey:&insertNodeWithID_version_slots_deleted_database_error__key error:a8 SQLGenerator:&__block_literal_global_7 bindingHandler:v16 enumerationHandler:0];

  return v14;
}

uint64_t __89__HDSimpleGraphDatabaseNodeEntity_insertNodeWithID_version_slots_deleted_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4 == 0xFFFFFFFF80000000)
  {
    sqlite3_bind_null(a2, 1);
  }

  else
  {
    sqlite3_bind_int64(a2, 1, v4);
  }

  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  sqlite3_bind_int64(a2, 3, *(a1 + 48));
  v5 = *(a1 + 56);

  return sqlite3_bind_int(a2, 4, v5);
}

+ (BOOL)updateNodeWithID:(int64_t)a3 version:(int64_t)a4 slots:(unint64_t)a5 deleted:(BOOL)a6 database:(id)a7 error:(id *)a8
{
  v13 = a7;
  if (([v13 isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseNodeEntity updateNodeWithID:version:slots:deleted:database:error:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__HDSimpleGraphDatabaseNodeEntity_updateNodeWithID_version_slots_deleted_database_error___block_invoke_2;
  v16[3] = &__block_descriptor_57_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = a4;
  v16[5] = a5;
  v17 = a6;
  v16[6] = a3;
  v14 = [v13 executeCachedStatementForKey:&updateNodeWithID_version_slots_deleted_database_error__key error:a8 SQLGenerator:&__block_literal_global_317 bindingHandler:v16 enumerationHandler:0];

  return v14;
}

uint64_t __89__HDSimpleGraphDatabaseNodeEntity_updateNodeWithID_version_slots_deleted_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  sqlite3_bind_int(a2, 3, *(a1 + 56));
  v4 = *(a1 + 48);

  return sqlite3_bind_int64(a2, 4, v4);
}

+ (BOOL)deleteNodeWithID:(int64_t)a3 database:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (([v7 isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseNodeEntity deleteNodeWithID:database:error:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSimpleGraphDatabaseNodeEntity_deleteNodeWithID_database_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = a3;
  v8 = [v7 executeCachedStatementForKey:&deleteNodeWithID_database_error__key error:a5 SQLGenerator:&__block_literal_global_322 bindingHandler:v10 enumerationHandler:0];

  return v8;
}

+ (id)nodeForID:(int64_t)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HDSimpleGraphDatabaseNodeEntity_nodeForID_database_error___block_invoke;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HDSimpleGraphDatabaseNodeEntity_nodeForID_database_error___block_invoke_2;
  v12[3] = &unk_2796B92D0;
  v12[4] = &v14;
  if ([(HDSimpleGraphDatabaseNodeEntity *)a1 _enumerateNodesForSQL:version database:slots error:deleted FROM nodes WHERE rowid=?"") bindingHandler:v8 enumerationHandler:a5, v13, v12])
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  return v10;
}

+ (uint64_t)_enumerateNodesForSQL:(void *)a3 database:(uint64_t)a4 error:(void *)a5 bindingHandler:(void *)a6 enumerationHandler:
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_self();
  if (!v11)
  {
    +[HDSimpleGraphDatabaseNodeEntity _enumerateNodesForSQL:database:error:bindingHandler:enumerationHandler:];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__HDSimpleGraphDatabaseNodeEntity__enumerateNodesForSQL_database_error_bindingHandler_enumerationHandler___block_invoke;
  v19[3] = &unk_2796B98C0;
  v21 = v13;
  v22 = v14;
  v20 = v11;
  v15 = v13;
  v16 = v11;
  v17 = [v16 executeSQL:v10 error:a4 bindingHandler:v12 enumerationHandler:v19];

  return v17;
}

+ (BOOL)enumerateNodesWithPredicate:(id)a3 skipDeleted:(BOOL)a4 limit:(unint64_t)a5 database:(id)a6 error:(id *)a7 enumerationHandler:(id)a8
{
  v12 = a4;
  v31[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = a8;
  if (v12)
  {
    v17 = MEMORY[0x277D10B70];
    v18 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:&unk_2863746D0];
    v19 = [v17 compoundPredicateWithPredicate:v14 otherPredicate:v18];

    v14 = v19;
  }

  v20 = [a1 queryWithDatabase:v15 predicate:v14 limit:a5 orderingTerms:0 groupBy:0];
  v31[0] = @"rowid";
  v31[1] = @"version";
  v31[2] = @"slots";
  v31[3] = @"deleted";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __115__HDSimpleGraphDatabaseNodeEntity_enumerateNodesWithPredicate_skipDeleted_limit_database_error_enumerationHandler___block_invoke;
  v27[3] = &unk_2796B9838;
  v29 = v16;
  v30 = a1;
  v28 = v15;
  v22 = v16;
  v23 = v15;
  v24 = [v20 enumerateProperties:v21 error:a7 enumerationHandler:v27];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (uint64_t)_callEnumerationHandlerForRow:(void *)a3 database:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v7 = a5;
  v8 = a3;
  objc_opt_self();
  v9 = +[HDSimpleGraphDatabaseNodeEntity _nodeFromRow:database:error:];

  if (v9)
  {
    v10 = v7[2](v7, v9, a4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)nodeEntityForeignKey
{
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:a1 property:@"rowid" deletionAction:2];

  return v2;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  v5 = +[(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseAttributeEntity];
  v6 = [v4 hasPrefix:v5];

  if (v6)
  {
    v7 = MEMORY[0x277D10B50];
    v8 = [a1 disambiguatedDatabaseTable];
    v9 = [v7 innerJoinClauseFromTable:v8 toTargetEntity:objc_opt_class() as:0 localReference:@"rowid" targetKey:@"node_id"];

    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
LABEL_3:

    goto LABEL_11;
  }

  v11 = +[(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity];
  v12 = [v4 hasPrefix:v11];

  if (v12)
  {
    v13 = [v4 componentsSeparatedByString:@"."];
    v9 = [v13 lastObject];

    v14 = [v9 isEqualToString:@"subject_id"];
    v15 = @"object_id";
    if ((v14 & 1) != 0 || (v16 = [v9 isEqualToString:@"object_id"], v15 = @"subject_id", v16))
    {
      v17 = v15;
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0x277D10B50];
        v20 = [a1 disambiguatedDatabaseTable];
        v21 = [v19 innerJoinClauseFromTable:v20 toTargetEntity:objc_opt_class() as:0 localReference:@"rowid" targetKey:v18];

        v10 = [MEMORY[0x277CBEB98] setWithObject:v21];

        goto LABEL_3;
      }
    }
  }

  v23.receiver = a1;
  v23.super_class = &OBJC_METACLASS___HDSimpleGraphDatabaseNodeEntity;
  v10 = objc_msgSendSuper2(&v23, sel_joinClausesForProperty_, v4);
LABEL_11:

  return v10;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  v5 = +[(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseAttributeEntity];
  if ([v4 hasPrefix:v5])
  {

LABEL_4:
    v8 = v4;
    goto LABEL_6;
  }

  v6 = +[(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity];
  v7 = [v4 hasPrefix:v6];

  if (v7)
  {
    goto LABEL_4;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDSimpleGraphDatabaseNodeEntity;
  v8 = objc_msgSendSuper2(&v11, sel_disambiguatedSQLForProperty_, v4);
LABEL_6:
  v9 = v8;

  return v9;
}

+ (HDSimpleGraphNode)_nodeFromRow:database:error:
{
  objc_opt_self();
  v0 = [HDSimpleGraphNode alloc];
  v1 = HDSQLiteColumnAsInt64();
  v2 = HDSQLiteColumnAsInt64();
  v3 = HDSQLiteColumnAsInt64();
  v4 = [(HDSimpleGraphNode *)v0 initWithRowID:v1 attributes:0 relationships:0 version:v2 slots:v3 deleted:HDSQLiteColumnAsInt64() != 0];

  return v4;
}

+ (void)insertNodeWithID:version:slots:deleted:database:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)updateNodeWithID:version:slots:deleted:database:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)deleteNodeWithID:database:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)_enumerateNodesForSQL:database:error:bindingHandler:enumerationHandler:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database" object:? file:? lineNumber:? description:?];
}

@end