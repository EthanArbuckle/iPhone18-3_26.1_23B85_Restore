@interface HDAddDerivedFlagsToDataProvenances
@end

@implementation HDAddDerivedFlagsToDataProvenances

uint64_t ___HDAddDerivedFlagsToDataProvenances_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = HDSQLiteColumnAsInt64();
  v7 = [*(a1 + 32) unprotectedDatabase];
  v8 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___HDAddDerivedFlagsToDataProvenances_block_invoke_2;
  v15[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___HDAddDerivedFlagsToDataProvenances_block_invoke_3;
  v11[3] = &unk_278619E70;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = v5;
  v9 = [v7 executeSQL:v8 error:a3 bindingHandler:v15 enumerationHandler:v11];

  return v9;
}

uint64_t ___HDAddDerivedFlagsToDataProvenances_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C10](a2, 0);
  v6 = [*(a1 + 32) protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___HDAddDerivedFlagsToDataProvenances_block_invoke_4;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[4] = v5;
  v11[5] = v8;
  v9 = [v6 executeSQL:v7 error:a3 bindingHandler:v11 enumerationHandler:0];

  return v9;
}

uint64_t ___HDAddDerivedFlagsToDataProvenances_block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end