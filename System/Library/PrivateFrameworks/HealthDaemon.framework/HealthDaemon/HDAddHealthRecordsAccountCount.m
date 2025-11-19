@interface HDAddHealthRecordsAccountCount
@end

@implementation HDAddHealthRecordsAccountCount

uint64_t ___HDAddHealthRecordsAccountCount_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 32) + 8) + 24)];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  v6 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 7, v6);
}

@end