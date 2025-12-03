@interface HDSharedSummaryObjectTypeEntity
+ (id)foreignKeys;
+ (id)insertWithSummaryID:(int64_t)d objectTypes:(id)types databaseTransaction:(id)transaction error:(id *)error;
+ (id)objectTypesForSummaryID:(int64_t)d databaseTransaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDSharedSummaryObjectTypeEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"summary_id";
  v2 = +[(HDHealthEntity *)HDSharedSummaryEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"summary_id";
  v5[1] = @"object_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertWithSummaryID:(int64_t)d objectTypes:(id)types databaseTransaction:(id)transaction error:(id *)error
{
  v33[2] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  transactionCopy = transaction;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = transactionCopy;
  v11 = [transactionCopy databaseForEntityClass:self];
  v33[0] = @"summary_id";
  v33[1] = @"object_type";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = typesCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __93__HDSharedSummaryObjectTypeEntity_insertWithSummaryID_objectTypes_databaseTransaction_error___block_invoke;
        v27[3] = &unk_278616B10;
        v27[4] = v18;
        v27[5] = d;
        v19 = [self insertOrReplaceEntity:0 database:v11 properties:v12 error:error bindingHandler:v27];
        if (!v19)
        {

          v21 = 0;
          goto LABEL_11;
        }

        v20 = v19;
        [v10 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v21 = v10;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __93__HDSharedSummaryObjectTypeEntity_insertWithSummaryID_objectTypes_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"summary_id", *(a1 + 40));
  [*(a1 + 32) code];

  JUMPOUT(0x22AAC6B90);
}

+ (id)objectTypesForSummaryID:(int64_t)d databaseTransaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277CBEB58];
  transactionCopy = transaction;
  v10 = objc_alloc_init(v8);
  v11 = [transactionCopy databaseForEntityClass:self];

  v18[4] = d;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__HDSharedSummaryObjectTypeEntity_objectTypesForSummaryID_databaseTransaction_error___block_invoke;
  v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v19[4] = self;
  v17 = v10;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__HDSharedSummaryObjectTypeEntity_objectTypesForSummaryID_databaseTransaction_error___block_invoke_2;
  v18[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HDSharedSummaryObjectTypeEntity_objectTypesForSummaryID_databaseTransaction_error___block_invoke_3;
  v16[3] = &unk_278614098;
  v12 = v10;
  LODWORD(error) = [v11 executeCachedStatementForKey:&objectTypesForSummaryID_databaseTransaction_error__key error:error SQLGenerator:v19 bindingHandler:v18 enumerationHandler:v16];

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

id __85__HDSharedSummaryObjectTypeEntity_objectTypesForSummaryID_databaseTransaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"object_type", v2, @"summary_id"];

  return v3;
}

uint64_t __85__HDSharedSummaryObjectTypeEntity_objectTypesForSummaryID_databaseTransaction_error___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCD720] dataTypeWithCode:HDSQLiteColumnWithNameAsInt64()];
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return 1;
}

@end