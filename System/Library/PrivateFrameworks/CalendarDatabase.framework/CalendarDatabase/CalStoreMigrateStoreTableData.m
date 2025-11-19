@interface CalStoreMigrateStoreTableData
@end

@implementation CalStoreMigrateStoreTableData

uint64_t ___CalStoreMigrateStoreTableData_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_value(*(a2 + 8), 0);
  v5 = sqlite3_column_value(*(a2 + 8), 1);
  v6 = sqlite3_value_dup(v4);
  v7 = sqlite3_value_dup(v5);
  if (sqlite3_value_type(v6) != 5)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:sqlite3_value_int64(v6)];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (sqlite3_value_type(v7) != 5)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:sqlite3_value_int64(v7)];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  sqlite3_value_free(v6);
  sqlite3_value_free(v7);
  return 0;
}

@end