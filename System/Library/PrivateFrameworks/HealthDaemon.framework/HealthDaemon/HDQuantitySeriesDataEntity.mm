@interface HDQuantitySeriesDataEntity
+ (BOOL)deleteAllSeriesWithDatabase:(id)database error:(id *)error;
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)identifier database:(id)database error:(id *)error;
+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)identifier timestamps:(id)timestamps database:(id)database error:(id *)error;
+ (BOOL)enumerateSeries:(int64_t)series after:(double)after inclusive:(BOOL)inclusive transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)enumerateSeries:(int64_t)series transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)enumerateWithDatabase:(id)database predicate:(id)predicate error:(id *)error handler:(id)handler;
+ (BOOL)enumerateWithTransaction:(id)transaction predicate:(id)predicate error:(id *)error handler:(id)handler;
+ (BOOL)getRangeAndCountForSeriesIdentifier:(int64_t)identifier transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)insertOrReplaceEntity:(BOOL)entity database:(id)database value:(double)value duration:(double)duration timestamp:(double)timestamp identifier:(int64_t)identifier error:(id *)error;
+ (id)foreignKeys;
+ (id)predicateForSeriesIdentifier:(int64_t)identifier;
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

+ (BOOL)insertOrReplaceEntity:(BOOL)entity database:(id)database value:(double)value duration:(double)duration timestamp:(double)timestamp identifier:(int64_t)identifier error:(id *)error
{
  entityCopy = entity;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = self;
  databaseCopy = database;
  v17 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__HDQuantitySeriesDataEntity_insertOrReplaceEntity_database_value_duration_timestamp_identifier_error___block_invoke_2;
  v26[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v26[4] = self;
  v18 = _Block_copy(v26);
  v19 = v18;
  v20 = !entityCopy;
  if (entityCopy)
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
  v25[4] = identifier;
  *&v25[5] = timestamp;
  *&v25[6] = value;
  *&v25[7] = duration;
  v23 = [databaseCopy executeCachedStatementForKey:v21 error:error SQLGenerator:v22 bindingHandler:v25 enumerationHandler:0];

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

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)identifier database:(id)database error:(id *)error
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = self;
  databaseCopy = database;
  v8 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = identifier;
  LOBYTE(error) = [databaseCopy executeCachedStatementForKey:&deleteSeriesDataWithIdentifier_database_error__deleteSQLKey error:error SQLGenerator:v8 bindingHandler:v10 enumerationHandler:0];

  return error;
}

id __76__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"series_identifier"];

  return v3;
}

+ (BOOL)deleteSeriesDataWithIdentifier:(int64_t)identifier timestamps:(id)timestamps database:(id)database error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  timestampsCopy = timestamps;
  databaseCopy = database;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__HDQuantitySeriesDataEntity_deleteSeriesDataWithIdentifier_timestamps_database_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = timestampsCopy;
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
        v22[5] = identifier;
        if (![databaseCopy executeCachedStatementForKey:&deleteSeriesDataWithIdentifier_timestamps_database_error__deleteSeriesSQLKey error:error SQLGenerator:v12 bindingHandler:v22 enumerationHandler:0])
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

+ (BOOL)deleteAllSeriesWithDatabase:(id)database error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  databaseCopy = database;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v9 = [v6 stringWithFormat:@"DELETE FROM %@", disambiguatedDatabaseTable];

  LOBYTE(error) = [databaseCopy executeUncachedSQL:v9 error:error];
  return error;
}

+ (BOOL)enumerateWithTransaction:(id)transaction predicate:(id)predicate error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  protectedDatabase = [transaction protectedDatabase];
  LOBYTE(error) = [self enumerateWithDatabase:protectedDatabase predicate:predicateCopy error:error handler:handlerCopy];

  return error;
}

+ (BOOL)enumerateWithDatabase:(id)database predicate:(id)predicate error:(id *)error handler:(id)handler
{
  v28[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  handlerCopy = handler;
  v12 = MEMORY[0x277D10B80];
  databaseCopy = database;
  v14 = objc_alloc_init(v12);
  [v14 setEntityClass:self];
  [v14 setLimitCount:0];
  v15 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"series_identifier" entityClass:self ascending:1];
  v28[0] = v15;
  v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"timestamp" entityClass:self ascending:1];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [v14 setOrderingTerms:v17];

  [v14 setPredicate:predicateCopy];
  v18 = HDQuantitySeriesDataEntityAllProperties();
  v19 = [v14 selectSQLForProperties:v18];

  v25 = handlerCopy;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HDQuantitySeriesDataEntity_enumerateWithDatabase_predicate_error_handler___block_invoke;
  v26[3] = &unk_278614860;
  v27 = predicateCopy;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__HDQuantitySeriesDataEntity_enumerateWithDatabase_predicate_error_handler___block_invoke_2;
  v24[3] = &unk_278613B30;
  v20 = handlerCopy;
  v21 = predicateCopy;
  LOBYTE(error) = [databaseCopy executeSQL:v19 error:error bindingHandler:v26 enumerationHandler:v24];

  v22 = *MEMORY[0x277D85DE8];
  return error;
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

+ (BOOL)enumerateSeries:(int64_t)series transaction:(id)transaction error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  v12 = [self predicateForSeriesIdentifier:series];
  protectedDatabase = [transactionCopy protectedDatabase];

  LOBYTE(error) = [self enumerateWithDatabase:protectedDatabase predicate:v12 error:error handler:handlerCopy];
  return error;
}

+ (BOOL)enumerateSeries:(int64_t)series after:(double)after inclusive:(BOOL)inclusive transaction:(id)transaction error:(id *)error handler:(id)handler
{
  inclusiveCopy = inclusive;
  v28[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  transactionCopy = transaction;
  v16 = [self predicateForSeriesIdentifier:series];
  v17 = MEMORY[0x277D10B18];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:after];
  if (inclusiveCopy)
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

  protectedDatabase = [transactionCopy protectedDatabase];

  v25 = [self enumerateWithDatabase:protectedDatabase predicate:v23 error:error handler:handlerCopy];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)getRangeAndCountForSeriesIdentifier:(int64_t)identifier transaction:(id)transaction error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke;
  aBlock[3] = &__block_descriptor_40_e15___NSString_8__0l;
  aBlock[4] = self;
  transactionCopy = transaction;
  v12 = _Block_copy(aBlock);
  protectedDatabase = [transactionCopy protectedDatabase];

  identifierCopy = identifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke_2;
  v19[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v19[4] = identifier;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__HDQuantitySeriesDataEntity_getRangeAndCountForSeriesIdentifier_transaction_error_handler___block_invoke_3;
  v16[3] = &unk_278618B70;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&getRangeAndCountForSeriesIdentifier_transaction_error_handler__getSeriesRangeSQLKey error:error SQLGenerator:v12 bindingHandler:v19 enumerationHandler:v16];

  return error;
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

+ (id)predicateForSeriesIdentifier:(int64_t)identifier
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:identifier];
  v5 = [v3 predicateWithProperty:@"series_identifier" equalToValue:v4];

  return v5;
}

@end