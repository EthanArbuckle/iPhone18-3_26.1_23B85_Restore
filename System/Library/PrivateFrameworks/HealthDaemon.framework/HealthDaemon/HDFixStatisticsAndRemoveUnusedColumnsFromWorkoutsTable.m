@interface HDFixStatisticsAndRemoveUnusedColumnsFromWorkoutsTable
@end

@implementation HDFixStatisticsAndRemoveUnusedColumnsFromWorkoutsTable

uint64_t ___HDFixStatisticsAndRemoveUnusedColumnsFromWorkoutsTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = HDSQLiteColumnAsInt64();
  if (!_HDReplaceStatisticsForColumnAndDataType(a2, 2, 10, v6, *(a1 + 32), a3, 1.0))
  {
    return 0;
  }

  if (!_HDReplaceStatisticsForColumnAndDataType(a2, 3, 9, v6, *(a1 + 32), a3, 1.0))
  {
    return 0;
  }

  v8 = _HDDistanceTypeCodeForActivityType(v7);
  if (!_HDReplaceStatisticsForColumnAndDataType(a2, 4, v8, v6, *(a1 + 32), a3, 1000.0) || !_HDReplaceStatisticsForColumnAndDataType(a2, 5, 111, v6, *(a1 + 32), a3, 1.0))
  {
    return 0;
  }

  v9 = *(a1 + 32);

  return _HDReplaceStatisticsForColumnAndDataType(a2, 6, 12, v6, v9, a3, 1.0);
}

@end