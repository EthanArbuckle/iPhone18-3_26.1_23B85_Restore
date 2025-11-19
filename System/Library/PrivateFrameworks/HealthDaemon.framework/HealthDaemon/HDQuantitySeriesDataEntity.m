@interface HDQuantitySeriesDataEntity
+ (BOOL)deleteAllSeriesWithDatabase:(id)a3 error:(id *)a4;
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 timestamps:(id)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)enumerateSeries:(int64_t)a3 after:(double)a4 inclusive:(BOOL)a5 transaction:(id)a6 error:(id *)a7 handler:(id)a8;
+ (BOOL)enumerateSeries:(int64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateWithDatabase:(id)a3 predicate:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateWithTransaction:(id)a3 predicate:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)getRangeAndCountForSeriesIdentifier:(int64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)insertOrReplaceEntity:(BOOL)a3 database:(id)a4 value:(double)a5 duration:(double)a6 timestamp:(double)a7 identifier:(int64_t)a8 error:(id *)a9;
+ (id)foreignKeys;
+ (id)predicateForSeriesIdentifier:(int64_t)a3;
+ (id)primaryKeyColumns;
@end

@implementation HDQuantitySeriesDataEntity

+ (id)primaryKeyColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"series_identifier";
  v5[1] = @"timestamp";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"hfd_key" deletionAction:0 isDeferred:1];
  v6 = @"series_identifier";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)insertOrReplaceEntity:(BOOL)a3 database:(id)a4 value:(double)a5 duration:(double)a6 timestamp:(double)a7 identifier:(int64_t)a8 error:(id *)a9
{
  v14 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v16 = a4;
  v17 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke_2;
  v26[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v26[4] = a1;
  v18 = _Block_copy(v26);
  v19 = v18;
  v20 = !v14;
  if (v14)
  {
    v21 = &insertOrReplaceEntity_database_value_duration_timestamp_identifier_error__replaceSQLKey;
  }

  else
  {
    v21 = &insertOrReplaceEntity_database_value_duration_timestamp_identifier_error__insertSQLKey;
  }

  if (v20)
  {
    v18 = v17;
  }

  v22 = _Block_copy(v18);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke_3;
  v25[3] = &__block_descriptor_64_e23_v16__0__sqlite3_stmt__8l;
  v25[4] = a8;
  *&v25[5] = a7;
  *&v25[6] = a5;
  *&v25[7] = a6;
  v23 = [v16 executeCachedStatementForKey:v21 error:a9 SQLGenerator:v22 bindingHandler:v25 enumerationHandler:0];

  return v23;
}

id __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDQuantitySeriesDataEntityAllProperties();
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:0];

  return v3;
}

id __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDQuantitySeriesDataEntityAllProperties();
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:1];

  return v3;
}

uint64_t __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_double(a2, 2, *(a1 + 40));
  sqlite3_bind_double(a2, 3, *(a1 + 48));
  v4 = *(a1 + 56);

  return sqlite3_bind_double(a2, 4, v4);
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 database:(id)a4 error:(id *)a5
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v7 = a4;
  v8 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = a3;
  LOBYTE(a5) = [v7 executeCachedStatementForKey:&deleteSeriesDataWithIdentifier_database_error__deleteSQLKey error:a5 SQLGenerator:v8 bindingHandler:v10 enumerationHandler:0];

  return a5;
}

id __76__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"series_identifier"];

  return v3;
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 timestamps:(id)a4 database:(id)a5 error:(id *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v12 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __87__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke_2;
        v22[3] = &unk_278613B58;
        v22[4] = v17;
        v22[5] = a3;
        if (![v11 executeCachedStatementForKey:&deleteSeriesDataWithIdentifier_timestamps_database_error__deleteSeriesSQLKey error:a6 SQLGenerator:v12 bindingHandler:v22 enumerationHandler:0])
        {
          v18 = 0;
          goto LABEL_11;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

id __87__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ? AND %@ = ?", v2, @"series_identifier", @"timestamp"];

  return v3;
}

uint64_t __87__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  [*(a1 + 32) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 2, v4);
}

+ (BOOL)deleteAllSeriesWithDatabase:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [a1 disambiguatedDatabaseTable];
  v9 = [v6 stringWithFormat:@"DELETE FROM %@", v8];

  LOBYTE(a4) = [v7 executeUncachedSQL:v9 error:a4];
  return a4;
}

+ (BOOL)enumerateWithTransaction:(id)a3 predicate:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [a3 protectedDatabase];
  LOBYTE(a5) = [a1 enumerateWithDatabase:v12 predicate:v11 error:a5 handler:v10];

  return a5;
}

+ (BOOL)enumerateWithDatabase:(id)a3 predicate:(id)a4 error:(id *)a5 handler:(id)a6
{
  v28[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277D10B80];
  v13 = a3;
  v14 = objc_alloc_init(v12);
  [v14 setEntityClass:a1];
  [v14 setLimitCount:0];
  v15 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"series_identifier" entityClass:a1 ascending:1];
  v28[0] = v15;
  v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"timestamp" entityClass:a1 ascending:1];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [v14 setOrderingTerms:v17];

  [v14 setPredicate:v10];
  v18 = HDQuantitySeriesDataEntityAllProperties();
  v19 = [v14 selectSQLForProperties:v18];

  v25 = v11;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HDQuantitySeriesDataEntity_enumerateWithDatabase_predicate_error_handler___block_invoke;
  v26[3] = &unk_278614860;
  v27 = v10;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__HDQuantitySeriesDataEntity_enumerateWithDatabase_predicate_error_handler___block_invoke_2;
  v24[3] = &unk_278613B30;
  v20 = v11;
  v21 = v10;
  LOBYTE(a5) = [v13 executeSQL:v19 error:a5 bindingHandler:v26 enumerationHandler:v24];

  v22 = *MEMORY[0x277D85DE8];
  return a5;
}

void *__76__HDQuantitySeriesDataEntity_enumerateWithDatabase_predicate_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 1;
    return [result bindToStatement:a2 bindingIndex:&v3];
  }

  return result;
}

uint64_t __76__HDQuantitySeriesDataEntity_enumerateWithDatabase_predicate_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C50](a2, 1);
  v6 = MEMORY[0x22AAC6C50](a2, 2);
  v9.n128_f64[0] = MEMORY[0x22AAC6C50](a2, 3);
  v7 = *(v3 + 16);
  v8.n128_u64[0] = v9.n128_u64[0];
  v9.n128_f64[0] = v5;
  v10.n128_f64[0] = v6;

  return v7(v3, v4, v9, v10, v8);
}

+ (BOOL)enumerateSeries:(int64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [a1 predicateForSeriesIdentifier:a3];
  v13 = [v11 protectedDatabase];

  LOBYTE(a5) = [a1 enumerateWithDatabase:v13 predicate:v12 error:a5 handler:v10];
  return a5;
}

+ (BOOL)enumerateSeries:(int64_t)a3 after:(double)a4 inclusive:(BOOL)a5 transaction:(id)a6 error:(id *)a7 handler:(id)a8
{
  v10 = a5;
  v28[2] = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = a6;
  v16 = [a1 predicateForSeriesIdentifier:a3];
  v17 = MEMORY[0x277D10B18];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  if (v10)
  {
    v19 = 6;
  }

  else
  {
    v19 = 5;
  }

  v20 = [v17 predicateWithProperty:@"timestamp" value:v18 comparisonType:v19];

  v21 = MEMORY[0x277D10B20];
  v28[0] = v16;
  v28[1] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v23 = [v21 predicateMatchingAllPredicates:v22];

  v24 = [v15 protectedDatabase];

  v25 = [a1 enumerateWithDatabase:v24 predicate:v23 error:a7 handler:v14];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)getRangeAndCountForSeriesIdentifier:(int64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v11 = a4;
  v12 = _Block_copy(aBlock);
  v13 = [v11 protectedDatabase];

  v18 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke_2;
  v19[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v19[4] = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke_3;
  v16[3] = &unk_278618B70;
  v17 = v10;
  v14 = v10;
  LOBYTE(a5) = [v13 executeCachedStatementForKey:&getRangeAndCountForSeriesIdentifier_transaction_error_handler__getSeriesRangeSQLKey error:a5 SQLGenerator:v12 bindingHandler:v19 enumerationHandler:v16];

  return a5;
}

id __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) disambiguatedSQLForProperty:@"timestamp"];
  v4 = [*(a1 + 32) disambiguatedSQLForProperty:@"timestamp"];
  v5 = [*(a1 + 32) disambiguatedSQLForProperty:@"duration"];
  v6 = [*(a1 + 32) disambiguatedDatabaseTable];
  v7 = [*(a1 + 32) disambiguatedSQLForProperty:@"series_identifier"];
  v8 = [v2 stringWithFormat:@"SELECT MIN(%@), MAX(%@ + MAX(%@, 0.0)), COUNT(*) FROM %@ WHERE %@=?", v3, v4, v5, v6, v7];

  return v8;
}

BOOL __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnAsInt64();
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x22AAC6C50](a2, 0);
    v9 = MEMORY[0x22AAC6C50](a2, 1);
    v10 = HDSQLiteColumnAsInt64();
    (*(v7 + 16))(v7, v10, v8, v9);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_error:1100 format:{@"Unrecognized quantity series identifier %lld", *(a1 + 40)}];
    if (v11)
    {
      if (a3)
      {
        v12 = v11;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v6 != 0;
}

+ (id)predicateForSeriesIdentifier:(int64_t)a3
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v5 = [v3 predicateWithProperty:@"series_identifier" equalToValue:v4];

  return v5;
}

@end