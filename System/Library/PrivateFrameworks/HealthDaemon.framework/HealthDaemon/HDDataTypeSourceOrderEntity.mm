@interface HDDataTypeSourceOrderEntity
+ (BOOL)enumerateOrderedSourceIDsForType:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6;
+ (BOOL)enumerateOrderedSourceIDsForType:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 block:(id)a7;
+ (BOOL)saveOrderedSourceIDs:(id)a3 type:(id)a4 userOrdered:(BOOL)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)updateOrderedSourcesForType:(id)a3 profile:(id)a4 error:(id *)a5 updateHandler:(id)a6;
+ (id)foreignKeys;
+ (id)indices;
+ (id)joinClausesForProperty:(id)a3;
+ (id)orderedSourceIDsForType:(id)a3 userOrdered:(BOOL *)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDDataTypeSourceOrderEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"source";
  v2 = +[(HDHealthEntity *)HDSourceEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v4 = *MEMORY[0x277D10A40];
  v11[0] = @"data_type";
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v6 = [v2 initWithEntity:v3 name:@"data_type" columns:v5];

  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"so_source.uuid"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"so_source.provenance"))
  {
    v5 = MEMORY[0x277D10B50];
    v6 = [a1 disambiguatedDatabaseTable];
    v7 = [v5 innerJoinClauseFromTable:v6 toTargetEntity:objc_opt_class() as:@"so_source" localReference:@"source" targetKey:*MEMORY[0x277D10A40]];

    v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___HDDataTypeSourceOrderEntity;
    v8 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, v4);
  }

  return v8;
}

+ (BOOL)updateOrderedSourcesForType:(id)a3 profile:(id)a4 error:(id *)a5 updateHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDDataTypeSourceOrderEntity_updateOrderedSourcesForType_profile_error_updateHandler___block_invoke;
  v18[3] = &unk_27861F2A0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a1;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v13 error:a5 block:v18];

  return a5;
}

uint64_t __87__HDDataTypeSourceOrderEntity_updateOrderedSourcesForType_profile_error_updateHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = a2;
  v11 = v6;
  v12 = objc_opt_self();
  v13 = [v8 code];
  v14 = [v10 databaseForEntityClass:v12];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke;
  v37[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v37[4] = v12;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_2;
  v36[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v36[4] = v13;
  if ([v14 executeCachedStatementForKey:&_updateOrderedSourcesForType_profile_transaction_error_updateHandler__deleteKey error:a3 SQLGenerator:v37 bindingHandler:v36 enumerationHandler:0])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__125;
    v30 = __Block_byref_object_dispose__125;
    v31 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_348;
    v20[3] = &unk_278624D28;
    v22 = &v32;
    v21 = v14;
    v23 = &v26;
    v24 = v12;
    v25 = v13;
    v11[2](v11, v20);
    v15 = *(v33 + 24);
    if ((v15 & 1) == 0)
    {
      v16 = v27[5];
      v17 = v16;
      if (v16)
      {
        if (a3)
        {
          v18 = v16;
          *a3 = v17;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v3, @"data_type", 0];

  return v4;
}

void __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_348(void *a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v6 = *(a1[6] + 8);
    v7 = a1[4];
    v14 = *(v6 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_2_349;
    v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v13[4] = a1[7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_3;
    v11[3] = &__block_descriptor_65_e23_v16__0__sqlite3_stmt__8l;
    v11[4] = a1[8];
    v11[5] = a2;
    v12 = a3;
    v11[6] = a4;
    *&v11[7] = a5;
    v8 = [v7 executeCachedStatementForKey:&_DataTypeSourceOrderPropertySourceProvenance_block_invoke_insertKey error:&v14 SQLGenerator:v13 bindingHandler:v11 enumerationHandler:0];
    objc_storeStrong((v6 + 40), v14);
    *(*(a1[5] + 8) + 24) = v8;
    if ((*(*(a1[5] + 8) + 24) & 1) == 0)
    {
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }
  }
}

id __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_2_349(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?)", v3, @"data_type", @"source", @"user_preferred", @"provenance", @"modification_date", 0];

  return v4;
}

uint64_t __100__HDDataTypeSourceOrderEntity__updateOrderedSourcesForType_profile_transaction_error_updateHandler___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  sqlite3_bind_int64(a2, 4, *(a1 + 48));
  v4 = *(a1 + 56);

  return sqlite3_bind_double(a2, 5, v4);
}

+ (BOOL)saveOrderedSourceIDs:(id)a3 type:(id)a4 userOrdered:(BOOL)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__HDDataTypeSourceOrderEntity_saveOrderedSourceIDs_type_userOrdered_profile_error___block_invoke;
  v18[3] = &unk_278624D50;
  v19 = v12;
  v21 = a5;
  v20 = Current;
  v16 = v12;
  LOBYTE(a7) = [a1 updateOrderedSourcesForType:v14 profile:v13 error:a7 updateHandler:v18];

  return a7;
}

void __83__HDDataTypeSourceOrderEntity_saveOrderedSourceIDs_type_userOrdered_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(v3 + 2))(v3, [*(*(&v10 + 1) + 8 * v8++) longLongValue], *(a1 + 48), 0, *(a1 + 40));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)enumerateOrderedSourceIDsForType:(id)a3 profile:(id)a4 error:(id *)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__HDDataTypeSourceOrderEntity_enumerateOrderedSourceIDsForType_profile_error_block___block_invoke;
  v18[3] = &unk_27861F2A0;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a1;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  LOBYTE(a5) = [a1 performReadTransactionWithHealthDatabase:v13 error:a5 block:v18];

  return a5;
}

+ (BOOL)enumerateOrderedSourceIDsForType:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6 block:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = MEMORY[0x277CCACA8];
  v14 = a5;
  v15 = [a1 disambiguatedDatabaseTable];
  v16 = [v13 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ? ORDER BY %@ ASC", @"source", @"user_preferred", @"modification_date", v15, @"data_type", *MEMORY[0x277D10A40]];

  v17 = [v14 databaseForEntityClass:a1];

  v22 = v12;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__HDDataTypeSourceOrderEntity_enumerateOrderedSourceIDsForType_profile_transaction_error_block___block_invoke;
  v23[3] = &unk_278614860;
  v24 = v11;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__HDDataTypeSourceOrderEntity_enumerateOrderedSourceIDsForType_profile_transaction_error_block___block_invoke_2;
  v21[3] = &unk_278613B30;
  v18 = v12;
  v19 = v11;
  LOBYTE(a6) = [v17 executeSQL:v16 error:a6 bindingHandler:v23 enumerationHandler:v21];

  return a6;
}

uint64_t __96__HDDataTypeSourceOrderEntity_enumerateOrderedSourceIDsForType_profile_transaction_error_block___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) code];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __96__HDDataTypeSourceOrderEntity_enumerateOrderedSourceIDsForType_profile_transaction_error_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  MEMORY[0x22AAC6C10](a2, 1);
  MEMORY[0x22AAC6C50](a2, 2);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)orderedSourceIDsForType:(id)a3 userOrdered:(BOOL *)a4 profile:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEB18];
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__HDDataTypeSourceOrderEntity_orderedSourceIDsForType_userOrdered_profile_error___block_invoke;
  v18[3] = &unk_278624D78;
  v19 = v13;
  v20 = a4;
  v14 = v13;
  LODWORD(a6) = [a1 enumerateOrderedSourceIDsForType:v12 profile:v11 error:a6 block:v18];

  if (a6)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __81__HDDataTypeSourceOrderEntity_orderedSourceIDsForType_userOrdered_profile_error___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    *v3 = a3;
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v4 addObject:v5];

  return 1;
}

@end