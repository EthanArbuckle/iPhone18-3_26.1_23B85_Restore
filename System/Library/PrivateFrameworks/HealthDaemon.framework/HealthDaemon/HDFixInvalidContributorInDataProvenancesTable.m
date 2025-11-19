@interface HDFixInvalidContributorInDataProvenancesTable
@end

@implementation HDFixInvalidContributorInDataProvenancesTable

uint64_t ___HDFixInvalidContributorInDataProvenancesTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM contributors WHERE uuid = %@('00000000-0000-0000-0000-000000000000')", *MEMORY[0x277D10A68]];
  v7 = [*(a1 + 32) protectedDatabase];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_2;
  v29[3] = &unk_278614620;
  v29[4] = *(a1 + 56);
  v8 = [v7 executeUncachedSQL:v6 error:a3 bindingHandler:0 enumerationHandler:v29];

  if (v8)
  {
LABEL_3:
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = -1;
    v9 = [*(a1 + 32) protectedDatabase];
    v23[4] = &v25;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_3;
    v24[3] = &unk_27861B7A8;
    v24[4] = *(a1 + 56);
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_4;
    v23[3] = &unk_278614620;
    v10 = [v9 executeUncachedSQL:@"SELECT ROWID from data_provenances WHERE sync_provenance = ? AND origin_product_type = ? AND origin_build = ? AND local_product_type = ? AND local_build = ? AND source_id = ? AND device_id = ? AND contributor_id = ? AND source_version = ? AND tz_name = ? AND origin_major_version = ? AND origin_minor_version = ? AND origin_patch_version = ?" error:a3 bindingHandler:v24 enumerationHandler:v23];

    if ((v10 & 1) == 0)
    {
      v19 = 0;
LABEL_13:
      _Block_object_dispose(&v25, 8);
      goto LABEL_14;
    }

    v11 = *MEMORY[0x277D10A40];
    v12 = HDSQLiteColumnWithNameAsInt64();
    if (v26[3] < 1)
    {
      v20 = *(a1 + 48);
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      [v20 addObject:v13];
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE objects SET provenance = %lld WHERE provenance = %lld", v26[3], v12];
      v14 = [*(a1 + 32) protectedDatabase];
      v30[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      v16 = [v14 executeSQLStatements:v15 error:a3];

      if ((v16 & 1) == 0)
      {
        v19 = 0;
        goto LABEL_12;
      }

      v17 = *(a1 + 40);
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      [v17 addObject:v18];
    }

    v19 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v19 = 0;
LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D10A40];
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  return 0;
}

uint64_t ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 40);
  v5 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 1, v5);
  v6 = *(a1 + 40);
  v7 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v8 = *(a1 + 40);
  v9 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v10 = *(a1 + 40);
  v11 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v12 = *(a1 + 40);
  v13 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v14 = *(a1 + 40);
  v15 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 6, v15);
  v16 = *(a1 + 40);
  v17 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 7, v17);
  sqlite3_bind_int64(a2, 8, *(*(*(a1 + 32) + 8) + 24));
  v18 = *(a1 + 40);
  v19 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v20 = *(a1 + 40);
  v21 = HDSQLiteColumnWithNameAsString();
  HDSQLiteBindStringToStatement();

  v22 = *(a1 + 40);
  v23 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 11, v23);
  v24 = *(a1 + 40);
  v25 = HDSQLiteColumnWithNameAsInt64();
  sqlite3_bind_int64(a2, 12, v25);
  v26 = *(a1 + 40);
  v27 = HDSQLiteColumnWithNameAsInt64();

  return sqlite3_bind_int64(a2, 13, v27);
}

uint64_t ___HDFixInvalidContributorInDataProvenancesTable_block_invoke_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D10A40];
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnWithNameAsInt64();
  return 0;
}

@end