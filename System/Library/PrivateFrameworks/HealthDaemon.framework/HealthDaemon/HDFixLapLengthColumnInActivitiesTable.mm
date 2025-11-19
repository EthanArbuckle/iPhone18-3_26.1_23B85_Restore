@interface HDFixLapLengthColumnInActivitiesTable
@end

@implementation HDFixLapLengthColumnInActivitiesTable

uint64_t ___HDFixLapLengthColumnInActivitiesTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  v6 = MEMORY[0x22AAC6C30](a2, 1);
  if (v6)
  {
    v14 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v14];
    v8 = v14;
    if (v7)
    {

      v5 = 1;
    }

    else
    {
      v9 = HDSQLiteColumnAsInt64();
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___HDFixLapLengthColumnInActivitiesTable_block_invoke_2;
      v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
      v13[4] = v9;
      v5 = [v11 executeSQL:v10 error:a3 bindingHandler:v13 enumerationHandler:0];
    }
  }

  return v5;
}

@end