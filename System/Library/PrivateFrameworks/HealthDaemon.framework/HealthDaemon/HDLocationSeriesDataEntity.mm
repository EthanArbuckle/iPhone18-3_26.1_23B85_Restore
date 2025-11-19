@interface HDLocationSeriesDataEntity
+ (BOOL)_enumerateSeriesForValidation:(int64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)copySeriesDataWithIdentifier:(int64_t)a3 toSeriesIdentifier:(int64_t)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)deleteAllSeriesWithDatabase:(id)a3 error:(id *)a4;
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 timestamps:(id)a4 database:(id)a5 error:(id *)a6;
+ (BOOL)enumerateSeries:(int64_t)a3 database:(id)a4 startDate:(id)a5 endDate:(id)a6 error:(id *)a7 handler:(id)a8;
+ (BOOL)enumerateSeries:(int64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateWithTransaction:(id)a3 predicate:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)getRangeAndCountForSeriesIdentifier:(int64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)insertOrReplaceEntity:(BOOL)a3 database:(id)a4 identifier:(int64_t)a5 timestamp:(double)a6 location:(id)a7 error:(id *)a8;
+ (BOOL)unitTesting_deleteSeriesDataWithIdentifier:(int64_t)a3 timestamp:(id)a4 database:(id)a5 error:(id *)a6;
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (id)createTableSQLWithBehavior:(id)a3;
+ (id)foreignKeys;
+ (id)indicesWithBehavior:(id)a3;
+ (id)primaryKeyColumns;
+ (id)triggersWithBehavior:(id)a3;
+ (uint64_t)_enumerateWithDatabase:(void *)a3 predicate:(char)a4 forValidation:(uint64_t)a5 error:(void *)a6 handler:;
@end

@implementation HDLocationSeriesDataEntity

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  {
    v5 = a3;
    a3 = v5;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_3, 0, &dword_228986000);
      a3 = v5;
    }
  }

  *a3 = 12;
  return +[HDLocationSeriesDataEntity columnDefinitionsWithCount:]::columnDefinitions;
}

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

+ (id)createTableSQLWithBehavior:(id)a3
{
  v3 = [a1 createTableSQL];

  return v3;
}

+ (id)indicesWithBehavior:(id)a3
{
  v3 = [a1 indices];

  return v3;
}

+ (id)triggersWithBehavior:(id)a3
{
  v3 = [a1 triggers];

  return v3;
}

+ (BOOL)insertOrReplaceEntity:(BOOL)a3 database:(id)a4 identifier:(int64_t)a5 timestamp:(double)a6 location:(id)a7 error:(id *)a8
{
  v12 = a3;
  v14 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__HDLocationSeriesDataEntity_insertOrReplaceEntity_database_identifier_timestamp_location_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v15 = a4;
  v16 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __97__HDLocationSeriesDataEntity_insertOrReplaceEntity_database_identifier_timestamp_location_error___block_invoke_2;
  v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v28[4] = a1;
  v17 = _Block_copy(v28);
  v18 = v17;
  if (v12)
  {
    v19 = &+[HDLocationSeriesDataEntity insertOrReplaceEntity:database:identifier:timestamp:location:error:]::HDLocationSeriesDataEntityCacheKeyReplace;
  }

  else
  {
    v19 = &+[HDLocationSeriesDataEntity insertOrReplaceEntity:database:identifier:timestamp:location:error:]::HDLocationSeriesDataEntityCacheKeyInsert;
  }

  if (!v12)
  {
    v17 = v16;
  }

  v20 = _Block_copy(v17);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__HDLocationSeriesDataEntity_insertOrReplaceEntity_database_identifier_timestamp_location_error___block_invoke_3;
  v24[3] = &unk_27862A6F8;
  v27 = a6;
  v25 = v14;
  v26 = a5;
  v21 = v14;
  v22 = [v15 executeCachedStatementForKey:v19 error:a8 SQLGenerator:v20 bindingHandler:v24 enumerationHandler:0];

  return v22;
}

id __97__HDLocationSeriesDataEntity_insertOrReplaceEntity_database_identifier_timestamp_location_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDLocationSeriesDataEntityAllProperties();
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:0];

  return v3;
}

id __97__HDLocationSeriesDataEntity_insertOrReplaceEntity_database_identifier_timestamp_location_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDLocationSeriesDataEntityAllProperties();
  v3 = [v1 insertSQLForProperties:v2 shouldReplace:1];

  return v3;
}

uint64_t __97__HDLocationSeriesDataEntity_insertOrReplaceEntity_database_identifier_timestamp_location_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_double(a2, 2, *(a1 + 48));
  [*(a1 + 32) coordinate];
  sqlite3_bind_double(a2, 3, v4);
  [*(a1 + 32) coordinate];
  sqlite3_bind_double(a2, 4, v5);
  [*(a1 + 32) altitude];
  sqlite3_bind_double(a2, 5, v6);
  [*(a1 + 32) speed];
  sqlite3_bind_double(a2, 6, v7);
  [*(a1 + 32) course];
  sqlite3_bind_double(a2, 7, v8);
  [*(a1 + 32) horizontalAccuracy];
  sqlite3_bind_double(a2, 8, v9);
  [*(a1 + 32) verticalAccuracy];
  sqlite3_bind_double(a2, 9, v10);
  [*(a1 + 32) speedAccuracy];
  sqlite3_bind_double(a2, 10, v11);
  [*(a1 + 32) courseAccuracy];
  sqlite3_bind_double(a2, 11, v12);
  v13 = [*(a1 + 32) signalEnvironmentType];

  return sqlite3_bind_int(a2, 12, v13);
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 database:(id)a4 error:(id *)a5
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v7 = a4;
  v8 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = a3;
  LOBYTE(a5) = [v7 executeCachedStatementForKey:&+[HDLocationSeriesDataEntity deleteSeriesDataWithIdentifier:database:error:]::deleteSQLKey error:a5 SQLGenerator:v8 bindingHandler:v10 enumerationHandler:0];

  return a5;
}

id __76__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"series_identifier"];

  return v3;
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)a3 timestamps:(id)a4 database:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v20 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v11 = _Block_copy(aBlock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __87__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke_2;
        v21[3] = &unk_278615A20;
        v21[4] = v15;
        v21[5] = a3;
        if (![v20 executeCachedStatementForKey:&+[HDLocationSeriesDataEntity deleteSeriesDataWithIdentifier:timestamps:database:error:]::deleteSQLDatumKey error:a6 SQLGenerator:v11 bindingHandler:v21 enumerationHandler:0])
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

id __87__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ? AND %@ = ?", v2, @"series_identifier", @"timestamp"];

  return v3;
}

uint64_t __87__HDLocationSeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  [*(a1 + 32) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 2, v4);
}

+ (BOOL)deleteAllSeriesWithDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = [a1 disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"DELETE FROM %@", v8];

  LOBYTE(a4) = [v6 executeUncachedSQL:v9 error:a4];
  return a4;
}

+ (BOOL)enumerateWithTransaction:(id)a3 predicate:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [a3 protectedDatabase];
  LOBYTE(a5) = [(HDLocationSeriesDataEntity *)a1 _enumerateWithDatabase:v12 predicate:v10 forValidation:0 error:a5 handler:v11];

  return a5;
}

+ (uint64_t)_enumerateWithDatabase:(void *)a3 predicate:(char)a4 forValidation:(uint64_t)a5 error:(void *)a6 handler:
{
  v30[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = objc_opt_self();
  v14 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v14 setEntityClass:v13];
  [v14 setLimitCount:0];
  v15 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"series_identifier" entityClass:v13 ascending:1];
  v30[0] = v15;
  v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"timestamp" entityClass:v13 ascending:1];
  v30[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [v14 setOrderingTerms:v17];

  [v14 setPredicate:v11];
  v18 = HDLocationSeriesDataEntityAllProperties();
  v19 = [v14 selectSQLForProperties:v18];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__HDLocationSeriesDataEntity__enumerateWithDatabase_predicate_forValidation_error_handler___block_invoke;
  v28[3] = &unk_278615580;
  v20 = v11;
  v29 = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__HDLocationSeriesDataEntity__enumerateWithDatabase_predicate_forValidation_error_handler___block_invoke_2;
  v25[3] = &unk_27862A720;
  v27 = a4;
  v21 = v12;
  v26 = v21;
  v22 = [v10 executeSQL:v19 error:a5 bindingHandler:v28 enumerationHandler:v25];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void *__91__HDLocationSeriesDataEntity__enumerateWithDatabase_predicate_forValidation_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 1;
    return [result bindToStatement:a2 bindingIndex:&v3];
  }

  return result;
}

uint64_t __91__HDLocationSeriesDataEntity__enumerateWithDatabase_predicate_forValidation_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C50](a2, 1);
  v27 = MEMORY[0x22AAC6C50](a2, 2);
  v26 = MEMORY[0x22AAC6C50](a2, 3);
  v5 = MEMORY[0x22AAC6C50](a2, 7);
  v6 = MEMORY[0x22AAC6C50](a2, 4);
  v7 = MEMORY[0x22AAC6C50](a2, 8);
  v8 = MEMORY[0x22AAC6C50](a2, 5);
  v9 = MEMORY[0x22AAC6C50](a2, 9);
  v10 = MEMORY[0x22AAC6C50](a2, 6);
  v11 = MEMORY[0x22AAC6C50](a2, 10);
  v12 = HDSQLiteColumnAsInt64();
  v13 = *MEMORY[0x277CE4290];
  if (*(a1 + 40) == 1)
  {
    v14 = v6;
    v6 = v14;
    v15 = v8;
    v8 = v15;
    v16 = v10;
    v10 = v16;
    v17 = v5;
    v5 = v17;
    v18 = v7;
    v7 = v18;
    v19 = v9;
    v9 = v19;
    v20 = v11;
    v11 = v20;
  }

  v28 = 0;
  v29 = v27;
  v30 = v26;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v38 = v4;
  v39 = 0;
  v40 = 0xBFF0000000000000;
  v41 = 0;
  v43 = 0;
  v42 = 0;
  v44 = 0x7FFFFFFF00000000;
  v45 = v13;
  v46 = 0;
  v47 = v12;
  v49 = 0;
  v48 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE41F8]) initWithClientLocation:&v28];
  v22 = *(a1 + 32);
  v23 = HDSQLiteColumnAsInt64();
  v24 = (*(v22 + 16))(v22, v23, v21, v4);

  return v24;
}

+ (BOOL)_enumerateSeriesForValidation:(int64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277D10B18];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v14 = [v12 predicateWithProperty:@"series_identifier" equalToValue:v13];

  LOBYTE(a5) = [(HDLocationSeriesDataEntity *)a1 _enumerateWithDatabase:v10 predicate:v14 forValidation:1 error:a5 handler:v11];
  return a5;
}

+ (BOOL)enumerateSeries:(int64_t)a3 transaction:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277D10B18];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v14 = [v12 predicateWithProperty:@"series_identifier" equalToValue:v13];

  LOBYTE(a5) = [a1 enumerateWithTransaction:v10 predicate:v14 error:a5 handler:v11];
  return a5;
}

+ (BOOL)enumerateSeries:(int64_t)a3 database:(id)a4 startDate:(id)a5 endDate:(id)a6 error:(id *)a7 handler:(id)a8
{
  v34 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = MEMORY[0x277D10B18];
  v33 = v16;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v19 = [v17 predicateWithProperty:@"series_identifier" equalToValue:v18];
  v20 = a1;

  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v19, 0}];
  if (v14)
  {
    v22 = MEMORY[0x277D10B18];
    v23 = MEMORY[0x277CCABB0];
    [v14 timeIntervalSinceReferenceDate];
    v24 = [v23 numberWithDouble:?];
    v25 = [v22 predicateWithProperty:@"timestamp" greaterThanOrEqualToValue:v24];

    [v21 addObject:v25];
  }

  if (v15)
  {
    v26 = MEMORY[0x277D10B18];
    v27 = MEMORY[0x277CCABB0];
    [v15 timeIntervalSinceReferenceDate];
    v28 = [v27 numberWithDouble:?];
    v29 = [v26 predicateWithProperty:@"timestamp" lessThanOrEqualToValue:v28];

    [v21 addObject:v29];
  }

  v30 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v21];
  v31 = [(HDLocationSeriesDataEntity *)v20 _enumerateWithDatabase:v34 predicate:v30 forValidation:0 error:a7 handler:v33];

  return v31;
}

+ (BOOL)getRangeAndCountForSeriesIdentifier:(int64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__HDLocationSeriesDataEntity_getRangeAndCountForSeriesIdentifier_database_error_handler___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = a1;
  v11 = a4;
  v12 = _Block_copy(aBlock);
  v17 = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HDLocationSeriesDataEntity_getRangeAndCountForSeriesIdentifier_database_error_handler___block_invoke_2;
  v18[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v18[4] = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HDLocationSeriesDataEntity_getRangeAndCountForSeriesIdentifier_database_error_handler___block_invoke_3;
  v15[3] = &unk_27862A748;
  v16 = v10;
  v13 = v10;
  LOBYTE(a5) = [v11 executeCachedStatementForKey:&+[HDLocationSeriesDataEntity getRangeAndCountForSeriesIdentifier:database:error:handler:]::getSeriesRangeSQLKey error:a5 SQLGenerator:v12 bindingHandler:v18 enumerationHandler:v15];

  return a5;
}

id __89__HDLocationSeriesDataEntity_getRangeAndCountForSeriesIdentifier_database_error_handler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) disambiguatedSQLForProperty:@"timestamp"];
  v4 = [*(a1 + 32) disambiguatedSQLForProperty:@"timestamp"];
  v5 = [*(a1 + 32) disambiguatedDatabaseTable];
  v6 = [*(a1 + 32) disambiguatedSQLForProperty:@"series_identifier"];
  v7 = [v2 stringWithFormat:@"SELECT MIN(%@), MAX(%@), COUNT(*) FROM %@ WHERE %@=?", v3, v4, v5, v6];

  return v7;
}

BOOL __89__HDLocationSeriesDataEntity_getRangeAndCountForSeriesIdentifier_database_error_handler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnAsInt64();
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x22AAC6C50](a2, 0);
    v9 = MEMORY[0x22AAC6C50](a2, 1);
    (*(v7 + 16))(v7, v6, v8, v9);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hk_error:1100 format:{@"Unrecognized location series identifier %lld", *(a1 + 40)}];
    v11 = v10;
    if (v10)
    {
      if (a3)
      {
        v12 = v10;
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

+ (BOOL)copySeriesDataWithIdentifier:(int64_t)a3 toSeriesIdentifier:(int64_t)a4 database:(id)a5 error:(id *)a6
{
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__HDLocationSeriesDataEntity_copySeriesDataWithIdentifier_toSeriesIdentifier_database_error___block_invoke;
  v13[3] = &unk_27862A770;
  v14 = v10;
  v15 = a1;
  v16 = a4;
  v11 = v10;
  LOBYTE(a6) = [a1 enumerateSeries:a3 database:v11 startDate:0 endDate:0 error:a6 handler:v13];

  return a6;
}

uint64_t __93__HDLocationSeriesDataEntity_copySeriesDataWithIdentifier_toSeriesIdentifier_database_error___block_invoke(void *a1, double a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v15 = 0;
  v10 = [v7 insertOrReplaceEntity:1 database:v8 identifier:v9 timestamp:v6 location:&v15 error:a2];
  v11 = v15;
  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to insert location data with error: %{public}@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)unitTesting_deleteSeriesDataWithIdentifier:(int64_t)a3 timestamp:(id)a4 database:(id)a5 error:(id *)a6
{
  v15[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(a6) = [a1 deleteSeriesDataWithIdentifier:a3 timestamps:v12 database:v11 error:a6];

  v13 = *MEMORY[0x277D85DE8];
  return a6;
}

@end