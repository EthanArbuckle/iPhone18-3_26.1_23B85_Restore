@interface HDInsertECGSymptomsAndCreateAssociationWithECGSamples
@end

@implementation HDInsertECGSymptomsAndCreateAssociationWithECGSamples

uint64_t ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_3(double *a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 4);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 5));
  v5 = a1[6];

  return sqlite3_bind_double(a2, 3, v5);
}

uint64_t ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) intValue]);
  sqlite3_bind_double(a2, 2, *(a1 + 48));
  sqlite3_bind_double(a2, 3, *(a1 + 56));
  v4 = [*(a1 + 40) intValue];

  return sqlite3_bind_int64(a2, 4, v4);
}

void ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) intValue]);
  v4 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  sqlite3_bind_int64(a2, 2, [v4 intValue]);
}

uint64_t ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_6(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) intValue]);
  v4 = *(a1 + 48);

  return sqlite3_bind_int64(a2, 3, v4);
}

@end