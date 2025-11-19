@interface HDSimpleGraphDatabaseMetadataEntity
+ (BOOL)enumerateMetadataValuesWithPredicate:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)metadataValueForKey:(id)a3 valueOut:(id *)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)setMetadataValue:(id)a3 forKey:(id)a4 database:(id)a5 error:(id *)a6;
+ (uint64_t)_deleteMetadataForKey:(void *)a3 database:(uint64_t)a4 error:;
+ (uint64_t)_setMetadataValue:(void *)a3 key:(void *)a4 database:(uint64_t)a5 error:;
- (HDSimpleGraphDatabaseMetadataEntity)init;
@end

@implementation HDSimpleGraphDatabaseMetadataEntity

- (HDSimpleGraphDatabaseMetadataEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)setMetadataValue:(id)a3 forKey:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HDSimpleGraphDatabaseMetadataEntity setMetadataValue:forKey:database:error:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  +[HDSimpleGraphDatabaseMetadataEntity setMetadataValue:forKey:database:error:];
LABEL_3:
  if (([v12 isWriter] & 1) == 0)
  {
    +[HDSimpleGraphDatabaseMetadataEntity setMetadataValue:forKey:database:error:];
  }

  if (v10)
  {
    v13 = [(HDSimpleGraphDatabaseMetadataEntity *)a1 _setMetadataValue:v10 key:v11 database:v12 error:a6];
  }

  else
  {
    v13 = [(HDSimpleGraphDatabaseMetadataEntity *)a1 _deleteMetadataForKey:v11 database:v12 error:a6];
  }

  v14 = v13;

  return v14;
}

+ (uint64_t)_deleteMetadataForKey:(void *)a3 database:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HDSimpleGraphDatabaseMetadataEntity__deleteMetadataForKey_database_error___block_invoke;
  v11[3] = &unk_2796B9930;
  v12 = v6;
  v8 = v6;
  v9 = [v7 executeSQL:@"DELETE FROM metadata WHERE key = ?" error:a4 bindingHandler:v11 enumerationHandler:0];

  return v9;
}

+ (uint64_t)_setMetadataValue:(void *)a3 key:(void *)a4 database:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HDSimpleGraphDatabaseMetadataEntity__setMetadataValue_key_database_error___block_invoke_2;
  v15[3] = &unk_2796B99C8;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = [v10 executeCachedStatementForKey:&_setMetadataValue_key_database_error__statementKey error:a5 SQLGenerator:&__block_literal_global_344 bindingHandler:v15 enumerationHandler:0];

  return v13;
}

+ (BOOL)metadataValueForKey:(id)a3 valueOut:(id *)a4 database:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    +[HDSimpleGraphDatabaseMetadataEntity metadataValueForKey:valueOut:database:error:];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__HDSimpleGraphDatabaseMetadataEntity_metadataValueForKey_valueOut_database_error___block_invoke_2;
  v17[3] = &unk_2796B9930;
  v11 = v9;
  v18 = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__HDSimpleGraphDatabaseMetadataEntity_metadataValueForKey_valueOut_database_error___block_invoke_3;
  v16[3] = &unk_2796B90A8;
  v16[4] = &v19;
  v12 = [v10 executeCachedStatementForKey:&metadataValueForKey_valueOut_database_error__statementKey error:a6 SQLGenerator:&__block_literal_global_9 bindingHandler:v17 enumerationHandler:v16];
  v13 = v12;
  if (a4)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    *a4 = v20[5];
  }

  _Block_object_dispose(&v19, 8);
  return v13;
}

uint64_t __83__HDSimpleGraphDatabaseMetadataEntity_metadataValueForKey_valueOut_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x253077B20](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)enumerateMetadataValuesWithPredicate:(id)a3 database:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v21[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v21[0] = @"key";
  v21[1] = @"value";
  v11 = MEMORY[0x277CBEA60];
  v12 = a4;
  v13 = a3;
  v14 = [v11 arrayWithObjects:v21 count:2];
  v15 = *MEMORY[0x277D10C08];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__HDSimpleGraphDatabaseMetadataEntity_enumerateMetadataValuesWithPredicate_database_error_enumerationHandler___block_invoke;
  v19[3] = &unk_2796B9958;
  v20 = v10;
  v16 = v10;
  LOBYTE(a1) = [a1 enumerateQueryResultsFromColumns:v14 properties:v14 predicate:v13 groupBy:0 orderingTerms:0 limit:v15 database:v12 error:a5 enumerationHandler:v19];

  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t __110__HDSimpleGraphDatabaseMetadataEntity_enumerateMetadataValuesWithPredicate_database_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x253077B20](a3, 0);
  v6 = MEMORY[0x253077B20](a3, 1);
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

uint64_t __76__HDSimpleGraphDatabaseMetadataEntity__setMetadataValue_key_database_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  v3 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v4 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (void)setMetadataValue:forKey:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database" object:? file:? lineNumber:? description:?];
}

+ (void)setMetadataValue:forKey:database:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

+ (void)setMetadataValue:forKey:database:error:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database.isWriter" object:? file:? lineNumber:? description:?];
}

+ (void)metadataValueForKey:valueOut:database:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"database" object:? file:? lineNumber:? description:?];
}

@end