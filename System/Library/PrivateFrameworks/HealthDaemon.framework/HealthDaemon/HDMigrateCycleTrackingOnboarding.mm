@interface HDMigrateCycleTrackingOnboarding
@end

@implementation HDMigrateCycleTrackingOnboarding

uint64_t ___HDMigrateCycleTrackingOnboarding_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t ___HDMigrateCycleTrackingOnboarding_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C40](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t ___HDMigrateCycleTrackingOnboarding_block_invoke_966(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x22AAC6C40](a2, 0);
  [v2 addObject:v3];

  return 1;
}

uint64_t ___HDMigrateCycleTrackingOnboarding_block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [MEMORY[0x277CCAD78] UUID];
  HDSQLiteBindFoundationValueToStatement();

  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, 1);
  v5 = *(*(*(a1 + 32) + 8) + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int(a2, 6, 0);
  sqlite3_bind_int64(a2, 7, 0);
  v7 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 8, v7);
}

@end