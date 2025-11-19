@interface HDUserDomainConceptEducationContentSectionDataEntity
+ (BOOL)addSectionDataToCodable:(id)a3 educationContentSectionID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)enumerateSectionDataForEducationContentSectionID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertEducationContentSectionData:(id)a3 sectionPersistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionPersistentID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDUserDomainConceptEducationContentSectionDataEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"section_id";
  v2 = +[(HDHealthEntity *)HDUserDomainConceptEducationContentSectionEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)insertEducationContentSectionData:(id)a3 sectionPersistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [v10 protectedDatabase];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __128__HDUserDomainConceptEducationContentSectionDataEntity_insertEducationContentSectionData_sectionPersistentID_transaction_error___block_invoke_2;
  v28[3] = &unk_278613B58;
  v30 = a4;
  v12 = v9;
  v29 = v12;
  LODWORD(v9) = [v11 executeCachedStatementForKey:&insertEducationContentSectionData_sectionPersistentID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_18 bindingHandler:v28 enumerationHandler:0];

  if (v9)
  {
    v13 = [v10 protectedDatabase];
    v14 = [v13 lastInsertRowID];

    if (v14)
    {
      v15 = [v14 longLongValue];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = [v12 stringValues];
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            if (![HDUserDomainConceptEducationContentSectionDataStringsEntity insertEducationContentSectionDataString:*(*(&v24 + 1) + 8 * i) sectionDataPersistentID:v15 transaction:v10 error:a6])
            {
              v21 = 0;
              goto LABEL_14;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v24 objects:v31 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v21 = 1;
LABEL_14:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __128__HDUserDomainConceptEducationContentSectionDataEntity_insertEducationContentSectionData_sectionPersistentID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) sectionDataType]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 4, v4);
  v5 = [*(a1 + 32) deleted];

  return sqlite3_bind_int(a2, 5, v5);
}

+ (BOOL)enumerateSectionDataForEducationContentSectionID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __142__HDUserDomainConceptEducationContentSectionDataEntity_enumerateSectionDataForEducationContentSectionID_transaction_error_enumerationHandler___block_invoke;
  v15[3] = &unk_278615BA0;
  v16 = v10;
  v17 = v11;
  v12 = v11;
  v13 = v10;
  LOBYTE(a5) = [(HDUserDomainConceptEducationContentSectionDataEntity *)a1 _enumerateSectionDataRowsForEducationContentSectionPersistentID:a3 transaction:v13 error:a5 enumerationHandler:v15];

  return a5;
}

uint64_t __142__HDUserDomainConceptEducationContentSectionDataEntity_enumerateSectionDataForEducationContentSectionID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D10A40];
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsBoolean();
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = *(a1 + 32);
  v28 = 0;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __142__HDUserDomainConceptEducationContentSectionDataEntity_enumerateSectionDataForEducationContentSectionID_transaction_error_enumerationHandler___block_invoke_2;
  v26 = &unk_278615B78;
  v14 = v12;
  v27 = v14;
  v15 = [HDUserDomainConceptEducationContentSectionDataStringsEntity enumerateSectionDataStringsForEducationContentSectionDataID:v6 transaction:v13 error:&v28 enumerationHandler:&v23];
  v16 = v28;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277CCD748]);
    v19 = [v18 initWithStringValues:v14 sectionDataType:v7 version:v8 timestamp:v11 deleted:{v10, v23, v24, v25, v26}];
    v20 = (*(*(a1 + 40) + 16))();
  }

  else if (a3)
  {
    v21 = v16;
    v20 = 0;
    *a3 = v17;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionPersistentID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [v9 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __157__HDUserDomainConceptEducationContentSectionDataEntity__enumerateSectionDataRowsForEducationContentSectionPersistentID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [v10 executeCachedStatementForKey:&_enumerateSectionDataRowsForEducationContentSectionPersistentID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_336_0 bindingHandler:v13 enumerationHandler:v8];

  return v11;
}

+ (BOOL)addSectionDataToCodable:(id)a3 educationContentSectionID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__HDUserDomainConceptEducationContentSectionDataEntity_addSectionDataToCodable_educationContentSectionID_transaction_error___block_invoke;
  v15[3] = &unk_2786140C0;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  v13 = v11;
  LOBYTE(a6) = [(HDUserDomainConceptEducationContentSectionDataEntity *)a1 _enumerateSectionDataRowsForEducationContentSectionPersistentID:a4 transaction:v13 error:a6 enumerationHandler:v15];

  return a6;
}

BOOL __124__HDUserDomainConceptEducationContentSectionDataEntity_addSectionDataToCodable_educationContentSectionID_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D10A40];
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsBoolean();
  v12 = objc_alloc_init(HDCodableSectionData);
  [(HDCodableSectionData *)v12 setSectionDataType:v7];
  [(HDCodableSectionData *)v12 setVersion:v8];
  [(HDCodableSectionData *)v12 setTimestamp:v10];
  [(HDCodableSectionData *)v12 setDeleted:v11];
  v13 = [HDUserDomainConceptEducationContentSectionDataStringsEntity addSectionDataStringsToCodable:v12 sectionDataID:v6 transaction:*(a1 + 32) error:a3];
  if (v13)
  {
    [*(a1 + 40) addSectionData:v12];
  }

  return v13;
}

@end