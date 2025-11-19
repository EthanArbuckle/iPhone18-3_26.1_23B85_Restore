@interface HDInsertStatisticsForColumnAndDataType
@end

@implementation HDInsertStatisticsForColumnAndDataType

uint64_t ___HDInsertStatisticsForColumnAndDataType_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  v4 = *(a1 + 48);

  return sqlite3_bind_int64(a2, 3, v4);
}

@end