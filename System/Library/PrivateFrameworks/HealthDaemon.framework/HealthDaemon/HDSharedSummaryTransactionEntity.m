@interface HDSharedSummaryTransactionEntity
+ (BOOL)deleteAllEntriesWithDatabaseTransaction:(id)a3 error:(id *)a4;
+ (BOOL)enumerateTransactionsWithDatabaseTransaction:(id)a3 includeNonCommitted:(BOOL)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (id)insertWithUUID:(id)a3 sourceDevice:(id)a4 databaseTransaction:(id)a5 error:(id *)a6;
+ (id)mostRecentTransactionCreationDateWithDatabaseTransaction:(id)a3 error:(id *)a4;
+ (id)pruneWithProfile:(id)a3 nowDate:(id)a4 limit:(unint64_t)a5 error:(id *)a6;
+ (id)transactionEntityWithUUID:(id)a3 databaseTransaction:(id)a4 error:(id *)a5;
- (BOOL)committedInDatabaseTransaction:(id)a3 error:(id *)a4;
- (BOOL)deleteWithDatabaseTransaction:(id)a3 error:(id *)a4;
- (id)uuidInDatabaseTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDSharedSummaryTransactionEntity

+ (id)insertWithUUID:(id)a3 sourceDevice:(id)a4 databaseTransaction:(id)a5 error:(id *)a6
{
  v22[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [a5 databaseForEntityClass:a1];
  v22[0] = @"uuid";
  v22[1] = @"source_device";
  v22[2] = @"committed";
  v22[3] = @"creation_date";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__HDSharedSummaryTransactionEntity_insertWithUUID_sourceDevice_databaseTransaction_error___block_invoke;
  v19[3] = &unk_278613DE8;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = [a1 insertOrReplaceEntity:0 database:v12 properties:v13 error:a6 bindingHandler:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __90__HDSharedSummaryTransactionEntity_insertWithUUID_sourceDevice_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6BD0](a2, @"source_device", *(a1 + 40));
  MEMORY[0x22AAC6B30](a2, @"committed", 0);
  v4 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"creation_date", v4);
}

+ (BOOL)enumerateTransactionsWithDatabaseTransaction:(id)a3 includeNonCommitted:(BOOL)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"committed" equalToValue:MEMORY[0x277CBEC38]];
  }

  v13 = [v10 databaseForEntityClass:objc_opt_class()];
  v14 = [a1 queryWithDatabase:v13 predicate:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __126__HDSharedSummaryTransactionEntity_enumerateTransactionsWithDatabaseTransaction_includeNonCommitted_error_enumerationHandler___block_invoke;
  v18[3] = &unk_278616A78;
  v19 = v11;
  v15 = v11;
  v16 = [v14 enumeratePersistentIDsAndProperties:MEMORY[0x277CBEBF8] error:a5 enumerationHandler:v18];

  return v16;
}

uint64_t __126__HDSharedSummaryTransactionEntity_enumerateTransactionsWithDatabaseTransaction_includeNonCommitted_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v4 = [(HDSQLiteEntity *)HDSharedSummaryTransactionEntity entityWithPersistentID:v3];

  (*(*(a1 + 32) + 16))();
  return 1;
}

+ (id)transactionEntityWithUUID:(id)a3 databaseTransaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:v8];

  v11 = [a1 anyInDatabase:v9 predicate:v10 error:a5];

  return v11;
}

+ (id)mostRecentTransactionCreationDateWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [a1 databaseTable];
  v9 = [v7 initWithFormat:@"SELECT MAX(%@) FROM %@", @"creation_date", v8];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__27;
  v18 = __Block_byref_object_dispose__27;
  v19 = 0;
  v10 = [v6 databaseForEntityClass:a1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HDSharedSummaryTransactionEntity_mostRecentTransactionCreationDateWithDatabaseTransaction_error___block_invoke;
  v13[3] = &unk_278614620;
  v13[4] = &v14;
  LOBYTE(a4) = [v10 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v13];

  if (a4)
  {
    v11 = v15[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __99__HDSharedSummaryTransactionEntity_mostRecentTransactionCreationDateWithDatabaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C40](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)deleteAllEntriesWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 protectedDatabase];

  v8 = [v6 queryWithDatabase:v7 predicate:0];

  LOBYTE(a4) = [v8 deleteAllEntitiesWithError:a4];
  return a4;
}

- (BOOL)deleteWithDatabaseTransaction:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D10B18];
  v7 = *MEMORY[0x277D10A40];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v11 = [v6 predicateWithProperty:v7 equalToValue:v10];

  v12 = [v9 databaseForEntityClass:objc_opt_class()];

  LOBYTE(a4) = [objc_opt_class() deleteEntitiesInDatabase:v12 predicate:v11 error:a4];
  return a4;
}

- (id)uuidInDatabaseTransaction:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)self UUIDForProperty:@"uuid" database:v6];

  return v7;
}

- (BOOL)committedInDatabaseTransaction:(id)a3 error:(id *)a4
{
  v4 = [(HDHealthEntity *)self numberForProperty:@"committed" transaction:a3 error:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)pruneWithProfile:(id)a3 nowDate:(id)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = [v9 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSharedSummaryTransactionEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v15[3] = &unk_278616AA0;
  v18 = a1;
  v12 = v10;
  v16 = v12;
  v17 = &v19;
  LODWORD(a6) = [a1 performWriteTransactionWithHealthDatabase:v11 error:a6 block:v15];

  if (a6)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:*(v20 + 6)];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __73__HDSharedSummaryTransactionEntity_pruneWithProfile_nowDate_limit_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:objc_opt_class()];

  v8 = [*(a1 + 32) dateByAddingTimeInterval:-1209600.0];
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"committed" equalToValue:MEMORY[0x277CBEC28]];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"creation_date" lessThanValue:v8];
  v11 = MEMORY[0x277D10B20];
  v24[0] = v9;
  v24[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v13 = [v11 predicateMatchingAllPredicates:v12];

  v14 = *(a1 + 48);
  v23 = 0;
  v15 = [objc_opt_class() deleteEntitiesInDatabase:v7 predicate:v13 error:&v23];
  v16 = v23;
  v17 = v16;
  if (v15)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 getChangesCount];
    v18 = 1;
  }

  else
  {
    v19 = v16;
    v18 = v19 == 0;
    if (v19)
    {
      if (a3)
      {
        v20 = v19;
        *a3 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

@end