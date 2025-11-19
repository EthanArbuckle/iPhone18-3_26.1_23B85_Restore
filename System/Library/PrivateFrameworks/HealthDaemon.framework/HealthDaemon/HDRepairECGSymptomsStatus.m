@interface HDRepairECGSymptomsStatus
@end

@implementation HDRepairECGSymptomsStatus

uint64_t ___HDRepairECGSymptomsStatus_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  IsNonNull = HDSQLiteColumnIsNonNull();
  v7 = HDSQLiteColumnAsInt64();
  if (v7 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (IsNonNull)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2;
  }

  v10 = [*(a1 + 32) protectedDatabase];
  v11 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___HDRepairECGSymptomsStatus_block_invoke_2;
  v14[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = v9;
  v14[5] = v5;
  v12 = [v10 executeSQL:v11 error:a3 bindingHandler:v14 enumerationHandler:0];

  return v12;
}

uint64_t ___HDRepairECGSymptomsStatus_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end