@interface HDAddAdHocConceptTable
@end

@implementation HDAddAdHocConceptTable

uint64_t ___HDAddAdHocConceptTable_block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  v3 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  v4 = *(a1 + 40);

  return HDSQLiteBindStringToStatement();
}

uint64_t ___HDAddAdHocConceptTable_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t ___HDAddAdHocConceptTable_block_invoke_3(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindStringToStatement();
  v6 = a1[6];
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 4, 0);
  sqlite3_bind_int64(a2, 5, 0);
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 6, Current);
  v8 = a1[7];

  return sqlite3_bind_int64(a2, 7, v8);
}

@end