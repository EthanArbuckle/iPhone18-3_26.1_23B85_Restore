@interface HDUnitStringEntity
+ (id)storeUnitString:(id)a3 database:(id)a4 error:(id *)a5;
@end

@implementation HDUnitStringEntity

+ (id)storeUnitString:(id)a3 database:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__117;
  v24 = __Block_byref_object_dispose__117;
  v25 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__HDUnitStringEntity_storeUnitString_database_error___block_invoke;
  v18[3] = &unk_278614860;
  v9 = v7;
  v19 = v9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HDUnitStringEntity_storeUnitString_database_error___block_invoke_2;
  v17[3] = &unk_278614620;
  v17[4] = &v20;
  [v8 executeSQL:@"SELECT ROWID FROM unit_strings WHERE unit_string=?" error:a5 bindingHandler:v18 enumerationHandler:v17];
  v10 = v21[5];
  if (!v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__HDUnitStringEntity_storeUnitString_database_error___block_invoke_3;
    v15[3] = &unk_278614860;
    v16 = v9;
    if ([v8 executeSQL:@"INSERT INTO unit_strings (unit_string) VALUES (?)" error:a5 bindingHandler:v15 enumerationHandler:0])
    {
      v11 = [v8 lastInsertRowID];
      v12 = v21[5];
      v21[5] = v11;
    }

    v10 = v21[5];
  }

  v13 = v10;

  _Block_object_dispose(&v20, 8);

  return v13;
}

uint64_t __53__HDUnitStringEntity_storeUnitString_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __53__HDUnitStringEntity_storeUnitString_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end