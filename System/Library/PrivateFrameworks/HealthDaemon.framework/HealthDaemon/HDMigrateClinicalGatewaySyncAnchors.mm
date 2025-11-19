@interface HDMigrateClinicalGatewaySyncAnchors
@end

@implementation HDMigrateClinicalGatewaySyncAnchors

uint64_t ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(*(a1 + 40) + 8) + 24));
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 2, v4);
  v5 = *(a1 + 48);

  return sqlite3_bind_int64(a2, 3, v5);
}

@end