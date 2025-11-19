@interface CalDatabaseCopyScheduledTasksInDateRange
@end

@implementation CalDatabaseCopyScheduledTasksInDateRange

uint64_t ___CalDatabaseCopyScheduledTasksInDateRange_block_invoke(double *a1, uint64_t a2)
{
  sqlite3_bind_double(*(a2 + 8), 1, a1[4]);
  sqlite3_bind_double(*(a2 + 8), 2, a1[5]);
  sqlite3_bind_double(*(a2 + 8), 3, a1[6]);
  sqlite3_bind_double(*(a2 + 8), 4, a1[7]);
  sqlite3_bind_double(*(a2 + 8), 5, a1[4]);
  v4 = *(a2 + 8);
  v5 = a1[5];

  return sqlite3_bind_double(v4, 6, v5);
}

@end