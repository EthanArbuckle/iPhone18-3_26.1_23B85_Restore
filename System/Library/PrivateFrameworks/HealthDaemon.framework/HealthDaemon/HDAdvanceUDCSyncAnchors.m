@interface HDAdvanceUDCSyncAnchors
@end

@implementation HDAdvanceUDCSyncAnchors

uint64_t ___HDAdvanceUDCSyncAnchors_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = [*(a1 + 32) protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDAdvanceUDCSyncAnchors_block_invoke_4;
  v10[3] = &unk_278615C80;
  v11 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDAdvanceUDCSyncAnchors_block_invoke_5;
  v9[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v9[4] = *(a1 + 48);
  v9[5] = v5;
  v7 = [v6 executeCachedStatementForKey:&_HDAdvanceUDCSyncAnchors_statementKey error:a3 SQLGenerator:v10 bindingHandler:v9 enumerationHandler:0];

  return v7;
}

uint64_t ___HDAdvanceUDCSyncAnchors_block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end