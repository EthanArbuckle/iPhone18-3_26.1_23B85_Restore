@interface HDQuantitySeriesHFDMigrationEntity
+ (BOOL)migrateDataFromDataStore:(const void *)a3 to:(void *)a4 database:(id)a5 recoveryAnalytics:(id)a6 error:(id *)a7;
+ (BOOL)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
+ (BOOL)migrateDataToSQLFromStore:(const void *)a3 database:(id)a4 error:(id *)a5;
+ (__n128)enumerateRawDataFromHFDWithStore:(NSError * *){__autoreleasing} HFDKey:(id)const& error:(id)const& handler:;
+ (__n128)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
+ (uint64_t)_enumerateAllSeriesWithDatabase:(uint64_t)a3 error:(void *)a4 handler:;
+ (uint64_t)enumerateRawDataFromHFDWithStore:(NSError * *){__autoreleasing} HFDKey:(id)const& error:(id)const& handler:;
+ (uint64_t)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
@end

@implementation HDQuantitySeriesHFDMigrationEntity

+ (uint64_t)_enumerateAllSeriesWithDatabase:(uint64_t)a3 error:(void *)a4 handler:
{
  v6 = a2;
  v7 = a4;
  objc_opt_self();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDQuantitySeriesHFDMigrationEntity__enumerateAllSeriesWithDatabase_error_handler___block_invoke;
  v11[3] = &unk_2786159F8;
  v8 = v7;
  v12 = v8;
  v9 = [v6 executeUncachedSQL:@"SELECT quantity_sample_series.hfd_key error:samples.start_date bindingHandler:samples.end_date enumerationHandler:{quantity_sample_series.count FROM quantity_sample_series LEFT JOIN samples ON quantity_sample_series.data_id = samples.data_id WHERE (quantity_sample_series.hfd_key IS NOT NULL)", a3, 0, v11}];

  return v9;
}

uint64_t __84__HDQuantitySeriesHFDMigrationEntity__enumerateAllSeriesWithDatabase_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C50](a2, 1);
  v5 = MEMORY[0x22AAC6C50](a2, 2);
  HDSQLiteColumnAsInt64();
  v6 = *(*(a1 + 32) + 16);
  v7.n128_f64[0] = v4;
  v8.n128_f64[0] = v5;

  return v6(v7, v8);
}

uint64_t __90__HDQuantitySeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke(void *a1, double a2, double a3, double a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HDQuantitySeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke_2;
  v15[3] = &__block_descriptor_64_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = a1[7];
  *&v15[5] = a2;
  *&v15[6] = a3;
  *&v15[7] = a4;
  v9 = [v7 executeSQL:@"INSERT OR REPLACE INTO quantity_series_data (series_identifier error:timestamp bindingHandler:value enumerationHandler:{duration) VALUES (?, ?, ?, ?)", &obj, v15, 0}];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
LABEL_6:
    result = 1;
    goto LABEL_7;
  }

  result = [*(*(a1[5] + 8) + 40) hd_isConstraintViolation];
  if (result)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v18 = a3;
      v19 = 2048;
      v20 = a4;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[HFDToSQLite] Failed to insert quantity series datum (%f, %f); skipping", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    goto LABEL_6;
  }

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __90__HDQuantitySeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_double(a2, 2, *(a1 + 40));
  sqlite3_bind_double(a2, 3, *(a1 + 48));
  v4 = *(a1 + 56);

  return sqlite3_bind_double(a2, 4, v4);
}

+ (BOOL)migrateDataToSQLFromStore:(const void *)a3 database:(id)a4 error:(id *)a5
{
  v14 = a1;
  v8 = a4;
  v13 = v8;
  if (([v8 executeUncachedSQL:@"DELETE FROM quantity_series_data" error:a5] & 1) == 0)
  {
    goto LABEL_4;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = __79__HDQuantitySeriesHFDMigrationEntity_migrateDataToSQLFromStore_database_error___block_invoke;
  v12[3] = &__block_descriptor_56_ea8_32c92_ZTSKZ79__HDQuantitySeriesHFDMigrationEntity_migrateDataToSQLFromStore_database_error__E3__1_e21_B48__0q8d16d24q32__40l;
  v12[4] = a3;
  v12[5] = &v14;
  v12[6] = &v13;
  v9 = [(HDQuantitySeriesHFDMigrationEntity *)a1 _enumerateAllSeriesWithDatabase:v8 error:a5 handler:v12];
  v8 = v13;
  if (v9)
  {
    v10 = [v13 executeUncachedSQL:@"UPDATE quantity_sample_series SET series_location = 2" error:a5];
    v8 = v13;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

void __79__HDQuantitySeriesHFDMigrationEntity_migrateDataToSQLFromStore_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);
  v5 = **(a1 + 48);
  objc_opt_self();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  *v23 = 0;
  v24 = v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__44;
  v27 = __Block_byref_object_dispose__44;
  v28 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__HDQuantitySeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke;
  aBlock[3] = &unk_27861A090;
  aBlock[4] = v5;
  aBlock[5] = v23;
  aBlock[6] = v9;
  aBlock[7] = a2;
  v6 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__HDQuantitySeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke_301;
  v7[3] = &unk_27861A0B8;
  v7[4] = v6;
  v22 = v7;
  objc_opt_self();
  v20 = 2;
  v21 = a2;
  v18 = 1;
  v19 = a2;
  v17 = 0;
  v16 = 1;
  v12 = &v17;
  v13 = &v16;
  v14 = &v22;
  v15 = 0;
  LOBYTE(v11) = 0;
  v29 = 0;
  operator new();
}

+ (BOOL)migrateDataFromDataStore:(const void *)a3 to:(void *)a4 database:(id)a5 recoveryAnalytics:(id)a6 error:(id *)a7
{
  v12 = a6;
  v35 = 0;
  v36 = 0;
  v33[8] = a4;
  v34 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3321888768;
  v33[2] = __99__HDQuantitySeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error___block_invoke;
  v33[3] = &__block_descriptor_72_ea8_32c112_ZTSKZ99__HDQuantitySeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error__E3__0_e21_B48__0q8d16d24q32__40l;
  v33[4] = &v34;
  v33[5] = &v36;
  v33[6] = &v35;
  v33[7] = a3;
  v13 = [(HDQuantitySeriesHFDMigrationEntity *)a1 _enumerateAllSeriesWithDatabase:a5 error:a7 handler:v33];
  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [v12 objectForKeyedSubscript:@"quantitySeriesRecoveredCount"];
    v16 = [v15 longLongValue];
    v17 = [v14 numberWithLongLong:v36 + v16];
    [v12 setObject:v17 forKeyedSubscript:@"quantitySeriesRecoveredCount"];

    v18 = MEMORY[0x277CCABB0];
    v19 = [v12 objectForKeyedSubscript:@"quantitySeriesDiscardedCount"];
    v20 = [v19 longLongValue];
    v21 = [v18 numberWithLongLong:v35 + v20];
    [v12 setObject:v21 forKeyedSubscript:@"quantitySeriesDiscardedCount"];

    v22 = MEMORY[0x277CCABB0];
    v23 = v34;
    if (v34)
    {
      v19 = [v12 objectForKeyedSubscript:@"quantitySeriesRecoveredCount"];
      v24 = [v19 longLongValue];
      v25 = v24 / v34;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = [v22 numberWithDouble:v25];
    [v12 setObject:v26 forKeyedSubscript:@"quantitySeriesMigrationFraction"];

    if (v23)
    {
    }

    v27 = MEMORY[0x277CCABB0];
    v28 = v34;
    if (v34)
    {
      v19 = [v12 objectForKeyedSubscript:@"quantitySeriesDiscardedCount"];
      [v19 doubleValue];
      v30 = v29 / v34;
    }

    else
    {
      v30 = 1.0;
    }

    v31 = [v27 numberWithDouble:v30];
    [v12 setObject:v31 forKeyedSubscript:@"quantitySeriesDiscardFraction"];

    if (v28)
    {
    }
  }

  return v13;
}

void __99__HDQuantitySeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a2;
  ++**(a1 + 32);
  v13 = 0;
  v12 = 0;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = a5 + 86400.0;
  v11 = a4 + -86400.0;
  v9 = 0;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  operator new();
}

+ (__n128)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  *a2 = &unk_283BE7E70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

+ (uint64_t)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1 + 8;
  if (**(a1 + 8) == **(a1 + 16) && **(a1 + 24) != 1)
  {
    result = 1;
    v10 = 24;
  }

  else
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2A0];
    result = os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v5 = "v0";
      if (**(a1 + 40))
      {
        v5 = "v1";
      }

      v6 = **(a1 + 48);
      v7 = **(a1 + 8);
      v8 = **(a1 + 16);
      if (**(a1 + 24))
      {
        v9 = "YES";
      }

      else
      {
        v9 = "no";
      }

      v12 = 136316162;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      v20 = 2080;
      v21 = v9;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "Discarding %s quantity series with hfd key %ld (count = %ld/%ld, isOutOfRange=%s", &v12, 0x34u);
      result = 0;
    }

    v10 = 48;
  }

  ++**(v2 + v10);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (__n128)enumerateRawDataFromHFDWithStore:(NSError * *){__autoreleasing} HFDKey:(id)const& error:(id)const& handler:
{
  *a2 = &unk_283BE8070;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

+ (uint64_t)enumerateRawDataFromHFDWithStore:(NSError * *){__autoreleasing} HFDKey:(id)const& error:(id)const& handler:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end