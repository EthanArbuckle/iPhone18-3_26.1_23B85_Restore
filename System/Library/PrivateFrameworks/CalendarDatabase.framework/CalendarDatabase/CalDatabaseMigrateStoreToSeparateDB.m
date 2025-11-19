@interface CalDatabaseMigrateStoreToSeparateDB
@end

@implementation CalDatabaseMigrateStoreToSeparateDB

void ___CalDatabaseMigrateStoreToSeparateDB_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = [*(a1 + 32) path];
  v3 = v4;
  sqlite3_bind_text(v2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t ___CalDatabaseMigrateStoreToSeparateDB_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = [*(a1 + 32) path];
  sqlite3_bind_text(v4, 1, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v6 = *(a2 + 8);
  v7 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(v6, 2, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t ___CalDatabaseMigrateStoreToSeparateDB_block_invoke_63(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_text(*(a2 + 8), 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(a2 + 8);
  v5 = *(a1 + 40);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v4, 2, ID);
}

@end