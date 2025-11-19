@interface HDMigrateAndDeleteProtectedOnboardingCompletionTable
@end

@implementation HDMigrateAndDeleteProtectedOnboardingCompletionTable

uint64_t ___HDMigrateAndDeleteProtectedOnboardingCompletionTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) unprotectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___HDMigrateAndDeleteProtectedOnboardingCompletionTable_block_invoke_2;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[4] = a2;
  v11[5] = v8;
  v9 = [v6 executeSQL:v7 error:a3 bindingHandler:v11 enumerationHandler:0];

  return v9;
}

uint64_t ___HDMigrateAndDeleteProtectedOnboardingCompletionTable_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = HDSQLiteColumnWithNameAsUUID();
  HDSQLiteBindFoundationValueToStatement();

  v6 = *(a1 + 32);
  v7 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindFoundationValueToStatement();

  v8 = *(a1 + 32);
  v9 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 3, v9);
  v10 = *(a1 + 32);
  v11 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteBindFoundationValueToStatement();

  v12 = *(a1 + 32);
  v13 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindFoundationValueToStatement();

  v14 = *(a1 + 32);
  v15 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteBindFoundationValueToStatement();

  v16 = *(a1 + 32);
  v17 = HDSQLiteColumnWithNameAsBoolean();
  sqlite3_bind_int(a2, 7, v17);
  v18 = *(a1 + 32);
  v19 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 8, v19);
  v20 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 9, v20);
}

@end