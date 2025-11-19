@interface HDDeleteQuantitySamplesOfType
@end

@implementation HDDeleteQuantitySamplesOfType

uint64_t ___HDDeleteQuantitySamplesOfType_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  if (MEMORY[0x22AAC6CD0](a2, 1))
  {
    v7 = -1;
  }

  else
  {
    v7 = HDSQLiteColumnAsInt64();
  }

  v8 = [*(a1 + 32) protectedDatabase];
  v9 = v8;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = ___HDExecuteSQLWithInt64_block_invoke;
    v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v16 = v7;
    if (![v8 executeSQL:@"DELETE FROM quantity_series_data WHERE series_identifier = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
    {
      goto LABEL_13;
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___HDExecuteSQLWithInt64_block_invoke;
  v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16 = v6;
  if (![v9 executeSQL:@"DELETE FROM quantity_sample_series WHERE data_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
  {
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___HDExecuteSQLWithInt64_block_invoke;
  v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16 = v6;
  if (![v9 executeSQL:@"DELETE FROM quantity_sample_statistics WHERE owner_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
  {
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___HDExecuteSQLWithInt64_block_invoke;
  v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16 = v6;
  if (![v9 executeSQL:@"DELETE FROM quantity_samples WHERE data_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
  {
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___HDExecuteSQLWithInt64_block_invoke;
  v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16 = v6;
  if (![v9 executeSQL:@"DELETE FROM samples WHERE data_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
  {
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___HDExecuteSQLWithInt64_block_invoke;
  v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16 = v6;
  if (![v9 executeSQL:@"DELETE FROM metadata_values WHERE object_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
  {
    goto LABEL_13;
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___HDExecuteSQLWithInt64_block_invoke;
  v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16 = v6;
  if ([v9 executeSQL:@"DELETE FROM external_sync_ids WHERE object_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0])
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = ___HDExecuteSQLWithInt64_block_invoke;
    v15 = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v16 = v6;
    v10 = [v9 executeSQL:@"DELETE FROM objects WHERE data_id = ?" error:a3 bindingHandler:&v12 enumerationHandler:0];
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  return v10;
}

@end