@interface HDLogicalSourceOrderEntity
+ (BOOL)enumerateOrderedLogicalSourceIDsForType:(id)type transaction:(id)transaction error:(id *)error block:(id)block;
+ (BOOL)enumerateOrderedSourceIDsForType:(id)type transaction:(id)transaction error:(id *)error block:(id)block;
+ (BOOL)saveOrderedLogicalSourceIDs:(id)ds type:(id)type userOrdered:(BOOL)ordered syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error;
+ (BOOL)updateOrderedLogicalSourcesForType:(id)type transaction:(id)transaction error:(id *)error updateHandler:(id)handler;
+ (id)foreignKeys;
+ (id)indices;
+ (id)joinClausesForProperty:(id)property;
+ (id)orderedLogicalSourceIDsForType:(id)type userOrdered:(BOOL *)ordered profile:(id)profile error:(id *)error;
+ (id)sourceIDsWithDataType:(id)type transaction:(id)transaction error:(id *)error;
+ (id)sourceIDsWithDataType:(id)type unorderedIDs:(id)ds transaction:(id)transaction error:(id *)error;
+ (id)syncIdentityForType:(id)type profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDLogicalSourceOrderEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"logical_source";
  v2 = +[(HDHealthEntity *)HDLogicalSourceEntity];
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

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"data_type";
  v5[1] = @"logical_source";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:@"sources.ROWID"] & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"sources.uuid") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToString:", @"sources.provenance") & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"sources.deleted"))
  {
    v5 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v7 = objc_opt_class();
    v8 = *MEMORY[0x277D10A40];
    v9 = [v5 innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v7 as:0 localReference:@"logical_source" targetKey:*MEMORY[0x277D10A40]];

    v10 = MEMORY[0x277D10B50];
    v11 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
    v12 = [v10 innerJoinClauseFromTable:v11 toTargetEntity:objc_opt_class() as:0 localReference:v8 targetKey:@"logical_source_id"];

    v13 = [MEMORY[0x277CBEB98] setWithObjects:{v9, v12, 0}];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___HDLogicalSourceOrderEntity;
    v13 = objc_msgSendSuper2(&v15, sel_joinClausesForProperty_, propertyCopy);
  }

  return v13;
}

+ (BOOL)updateOrderedLogicalSourcesForType:(id)type transaction:(id)transaction error:(id *)error updateHandler:(id)handler
{
  typeCopy = type;
  transactionCopy = transaction;
  handlerCopy = handler;
  code = [typeCopy code];
  v14 = [transactionCopy databaseForEntityClass:self];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke;
  v37[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v37[4] = self;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_2;
  v36[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v36[4] = code;
  if ([v14 executeCachedStatementForKey:&updateOrderedLogicalSourcesForType_transaction_error_updateHandler__deleteKey error:error SQLGenerator:v37 bindingHandler:v36 enumerationHandler:0])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__189;
    v30 = __Block_byref_object_dispose__189;
    v31 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_351;
    v20[3] = &unk_27862D7E8;
    v22 = &v32;
    v21 = v14;
    v23 = &v26;
    selfCopy = self;
    v25 = code;
    handlerCopy[2](handlerCopy, v20);
    if (v33[3])
    {
      v15 = 1;
    }

    else
    {
      v16 = v27[5];
      v17 = v16;
      v15 = v16 == 0;
      if (v16)
      {
        if (error)
        {
          v18 = v16;
          *error = v17;
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

id __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v3, @"data_type", 0];

  return v4;
}

void __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_351(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v7 = a1[4];
    v8 = *(a1[6] + 8);
    v15 = *(v8 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_2_352;
    v14[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v14[4] = a1[7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_3;
    v12[3] = &__block_descriptor_73_e23_v16__0__sqlite3_stmt__8l;
    v12[4] = a1[8];
    v12[5] = a2;
    v13 = a3;
    v12[6] = a4;
    *&v12[7] = a6;
    v12[8] = a5;
    v9 = [v7 executeCachedStatementForKey:&_DataTypeSourceOrderPropertyDeleted_block_invoke_insertKey error:&v15 SQLGenerator:v14 bindingHandler:v12 enumerationHandler:0];
    objc_storeStrong((v8 + 40), v15);
    *(*(a1[5] + 8) + 24) = v9;
    if ((*(*(a1[5] + 8) + 24) & 1) == 0)
    {
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }
}

id __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_2_352(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?)", v3, @"data_type", @"logical_source", @"user_preferred", @"provenance", @"modification_date", @"sync_identity", 0];

  return v4;
}

uint64_t __97__HDLogicalSourceOrderEntity_updateOrderedLogicalSourcesForType_transaction_error_updateHandler___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  sqlite3_bind_int64(a2, 3, *(a1 + 72));
  sqlite3_bind_int64(a2, 4, *(a1 + 48));
  sqlite3_bind_double(a2, 5, *(a1 + 56));
  v4 = *(a1 + 64);

  return sqlite3_bind_int64(a2, 6, v4);
}

+ (BOOL)saveOrderedLogicalSourceIDs:(id)ds type:(id)type userOrdered:(BOOL)ordered syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error
{
  dsCopy = ds;
  typeCopy = type;
  database = [profile database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__HDLogicalSourceOrderEntity_saveOrderedLogicalSourceIDs_type_userOrdered_syncIdentity_profile_error___block_invoke;
  v20[3] = &unk_27862D838;
  v21 = typeCopy;
  v22 = dsCopy;
  orderedCopy = ordered;
  selfCopy = self;
  identityCopy = identity;
  v17 = dsCopy;
  v18 = typeCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20];

  return error;
}

uint64_t __102__HDLogicalSourceOrderEntity_saveOrderedLogicalSourceIDs_type_userOrdered_syncIdentity_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102__HDLogicalSourceOrderEntity_saveOrderedLogicalSourceIDs_type_userOrdered_syncIdentity_profile_error___block_invoke_2;
  v11[3] = &unk_27862D810;
  v8 = *(a1 + 48);
  v12 = *(a1 + 40);
  v15 = *(a1 + 64);
  v13 = Current;
  v14 = *(a1 + 56);
  v9 = [v8 updateOrderedLogicalSourcesForType:v7 transaction:v5 error:a3 updateHandler:v11];

  return v9;
}

void __102__HDLogicalSourceOrderEntity_saveOrderedLogicalSourceIDs_type_userOrdered_syncIdentity_profile_error___block_invoke_2(uint64_t a1, void *a2)
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

        (*(v3 + 2))(v3, [*(*(&v10 + 1) + 8 * v8++) longLongValue], *(a1 + 56), 0, *(a1 + 48), *(a1 + 40));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)enumerateOrderedLogicalSourceIDsForType:(id)type transaction:(id)transaction error:(id *)error block:(id)block
{
  blockCopy = block;
  transactionCopy = transaction;
  code = [type code];
  v13 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v18[4] = code;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__HDLogicalSourceOrderEntity_enumerateOrderedLogicalSourceIDsForType_transaction_error_block___block_invoke;
  v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v19[4] = self;
  v17 = blockCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__HDLogicalSourceOrderEntity_enumerateOrderedLogicalSourceIDsForType_transaction_error_block___block_invoke_2;
  v18[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HDLogicalSourceOrderEntity_enumerateOrderedLogicalSourceIDsForType_transaction_error_block___block_invoke_3;
  v16[3] = &unk_278613B30;
  v14 = blockCopy;
  LOBYTE(error) = [v13 executeCachedStatementForKey:&enumerateOrderedLogicalSourceIDsForType_transaction_error_block__lookupKey error:error SQLGenerator:v19 bindingHandler:v18 enumerationHandler:v16];

  return error;
}

id __94__HDLogicalSourceOrderEntity_enumerateOrderedLogicalSourceIDsForType_transaction_error_block___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ? ORDER BY %@ ASC", @"logical_source", @"user_preferred", @"modification_date", v3, @"data_type", *MEMORY[0x277D10A40], 0];

  return v4;
}

uint64_t __94__HDLogicalSourceOrderEntity_enumerateOrderedLogicalSourceIDsForType_transaction_error_block___block_invoke_3(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  MEMORY[0x22AAC6C10](a2, 1);
  MEMORY[0x22AAC6C50](a2, 2);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)sourceIDsWithDataType:(id)type transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  typeCopy = type;
  v11 = objc_alloc_init(v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HDLogicalSourceOrderEntity_sourceIDsWithDataType_transaction_error___block_invoke;
  v16[3] = &unk_27862D860;
  v17 = v11;
  v12 = v11;
  LODWORD(error) = [self enumerateOrderedSourceIDsForType:typeCopy transaction:transactionCopy error:error block:v16];

  if (error)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

uint64_t __70__HDLogicalSourceOrderEntity_sourceIDsWithDataType_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];

  return 1;
}

+ (id)sourceIDsWithDataType:(id)type unorderedIDs:(id)ds transaction:(id)transaction error:(id *)error
{
  dsCopy = ds;
  v8 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  typeCopy = type;
  v10 = [v8 hk_arrayWithCount:objc_msgSend(dsCopy generator:{"count"), &__block_literal_global_228}];
  v37 = [v10 componentsJoinedByString:{@", "}];

  code = [typeCopy code];
  v30 = MEMORY[0x277CCACA8];
  v29 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v11 = *MEMORY[0x277D10A40];
  disambiguatedDatabaseTable = [objc_opt_class() disambiguatedDatabaseTable];
  v27 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  disambiguatedDatabaseTable2 = [objc_opt_class() disambiguatedDatabaseTable];
  v26 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v13 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v14 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  disambiguatedDatabaseTable3 = [objc_opt_class() disambiguatedDatabaseTable];
  v16 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  disambiguatedDatabaseTable4 = [objc_opt_class() disambiguatedDatabaseTable];
  v18 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v31 = [v30 stringWithFormat:@"SELECT %@.%@ FROM %@ JOIN %@ ON %@.%@ = %@.%@ JOIN %@ ON %@.%@ = %@.%@ WHERE %@.%@ = ? AND %@.%@ IN (%@) ORDER BY %@.%@ ASC, %@.%@ ASC", v29, v11, disambiguatedDatabaseTable, v27, disambiguatedDatabaseTable2, @"logical_source", v26, v11, v12, v13, v11, v14, @"logical_source_id", disambiguatedDatabaseTable3, @"data_type", v16, v11, v37, disambiguatedDatabaseTable4, v11, v18, @"uuid", 0];

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __83__HDLogicalSourceOrderEntity_sourceIDsWithDataType_unorderedIDs_transaction_error___block_invoke_2;
  v40[3] = &unk_278613B58;
  v41 = dsCopy;
  v42 = code;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __83__HDLogicalSourceOrderEntity_sourceIDsWithDataType_unorderedIDs_transaction_error___block_invoke_3;
  v38[3] = &unk_278614098;
  v39 = v19;
  v21 = v19;
  v22 = dsCopy;
  if ([v20 executeSQL:v31 error:error bindingHandler:v40 enumerationHandler:v38])
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  return v23;
}

void __83__HDLogicalSourceOrderEntity_sourceIDsWithDataType_unorderedIDs_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        sqlite3_bind_int64(a2, v10++, [*(*(&v12 + 1) + 8 * v9++) longLongValue]);
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HDLogicalSourceOrderEntity_sourceIDsWithDataType_unorderedIDs_transaction_error___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  [v3 addObject:v4];

  return 1;
}

+ (id)orderedLogicalSourceIDsForType:(id)type userOrdered:(BOOL *)ordered profile:(id)profile error:(id *)error
{
  typeCopy = type;
  v11 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v13 = objc_alloc_init(v11);
  database = [profileCopy database];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDLogicalSourceOrderEntity_orderedLogicalSourceIDsForType_userOrdered_profile_error___block_invoke;
  v20[3] = &unk_2786154B8;
  selfCopy = self;
  orderedCopy = ordered;
  v21 = typeCopy;
  v22 = v13;
  v15 = v13;
  v16 = typeCopy;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v20];

  if (error)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

uint64_t __87__HDLogicalSourceOrderEntity_orderedLogicalSourceIDsForType_userOrdered_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HDLogicalSourceOrderEntity_orderedLogicalSourceIDsForType_userOrdered_profile_error___block_invoke_2;
  v9[3] = &unk_278624D78;
  v5 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = [v5 enumerateOrderedLogicalSourceIDsForType:v6 transaction:a2 error:a3 block:v9];

  return v7;
}

uint64_t __87__HDLogicalSourceOrderEntity_orderedLogicalSourceIDsForType_userOrdered_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
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

+ (BOOL)enumerateOrderedSourceIDsForType:(id)type transaction:(id)transaction error:(id *)error block:(id)block
{
  blockCopy = block;
  transactionCopy = transaction;
  code = [type code];
  v13 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v18[4] = code;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__HDLogicalSourceOrderEntity_enumerateOrderedSourceIDsForType_transaction_error_block___block_invoke;
  v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v19[4] = self;
  v17 = blockCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDLogicalSourceOrderEntity_enumerateOrderedSourceIDsForType_transaction_error_block___block_invoke_2;
  v18[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HDLogicalSourceOrderEntity_enumerateOrderedSourceIDsForType_transaction_error_block___block_invoke_3;
  v16[3] = &unk_278613B30;
  v14 = blockCopy;
  LOBYTE(error) = [v13 executeCachedStatementForKey:&enumerateOrderedSourceIDsForType_transaction_error_block__lookupKey error:error SQLGenerator:v19 bindingHandler:v18 enumerationHandler:v16];

  return error;
}

id __87__HDLogicalSourceOrderEntity_enumerateOrderedSourceIDsForType_transaction_error_block___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *MEMORY[0x277D10A40];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() disambiguatedDatabaseTable];
  v5 = +[(HDSQLiteSchemaEntity *)HDLogicalSourceEntity];
  v6 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v7 = [v1 stringWithFormat:@"SELECT s.%@, o.%@, o.%@ FROM %@ o JOIN %@ l ON o.%@ = l.%@ JOIN %@ s ON l.%@ = s.%@ WHERE o.%@ = ? ORDER BY o.%@ ASC, s.%@ ASC", v2, @"user_preferred", @"modification_date", v4, v5, @"logical_source", v2, v6, v2, @"logical_source_id", @"data_type", v2, @"uuid", 0];

  return v7;
}

uint64_t __87__HDLogicalSourceOrderEntity_enumerateOrderedSourceIDsForType_transaction_error_block___block_invoke_3(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  MEMORY[0x22AAC6C10](a2, 1);
  MEMORY[0x22AAC6C50](a2, 2);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (id)syncIdentityForType:(id)type profile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  v13 = MEMORY[0x277D10B18];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(type, "code")}];
  v15 = [v13 predicateWithProperty:@"data_type" equalToValue:v14];

  v16 = [transactionCopy databaseForEntityClass:self];
  v17 = [self propertyValueForAnyInDatabase:v16 property:@"sync_identity" predicate:v15 error:error];

  if (v17)
  {
    syncIdentityManager = [profileCopy syncIdentityManager];
    v19 = [syncIdentityManager identityForEntityID:objc_msgSend(v17 transaction:"intValue") error:{transactionCopy, error}];
  }

  else
  {
    syncIdentityManager = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"self" class:objc_opt_class() selector:a2 format:@"No source order present for this data type"];
    if (syncIdentityManager)
    {
      if (error)
      {
        v20 = syncIdentityManager;
        *error = syncIdentityManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  return v19;
}

@end