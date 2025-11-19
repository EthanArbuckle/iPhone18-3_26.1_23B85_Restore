@interface HDUserDomainConceptEducationContentSectionEntity
+ (BOOL)addSectionsToCodable:(id)a3 educationContentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)enumerateLocalizedEducationContentSectionsWithEducationContentID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertLocalizedEducationContentSectionsFor:(id)a3 educationContentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (uint64_t)_enumerateLocalizedEducationContentSectionRowsWithEducationContentID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDUserDomainConceptEducationContentSectionEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"education_content_id";
  v2 = +[(HDHealthEntity *)HDUserDomainConceptEducationContentEntity];
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

uint64_t __149__HDUserDomainConceptEducationContentSectionEntity_insertEducationContentSectionForContentWithID_error_localizedEducationContentSection_transaction___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) sectionType];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)insertLocalizedEducationContentSectionsFor:(id)a3 educationContentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [a3 sections];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v12)
  {
    v13 = *v36;
    v33 = v11;
    v34 = v10;
    v29 = a1;
    v30 = a4;
    v28 = *v36;
    while (2)
    {
      v14 = 0;
      v31 = v12;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v32 = v14;
        v18 = *(*(&v35 + 1) + 8 * v14);
        v15 = v10;
        objc_opt_self();
        v16 = [v15 protectedDatabase];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __149__HDUserDomainConceptEducationContentSectionEntity_insertEducationContentSectionForContentWithID_error_localizedEducationContentSection_transaction___block_invoke_2;
        v43[3] = &unk_278613B58;
        v45 = a4;
        v17 = v18;
        v44 = v17;
        LODWORD(v18) = [v16 executeCachedStatementForKey:&insertEducationContentSectionForContentWithID_error_localizedEducationContentSection_transaction__statementKey error:a6 SQLGenerator:&__block_literal_global_173 bindingHandler:v43 enumerationHandler:0];

        if (!v18)
        {

          goto LABEL_21;
        }

        v19 = [v15 protectedDatabase];
        v20 = [v19 lastInsertRowID];

        if (!v20)
        {

          LOBYTE(v18) = 0;
          goto LABEL_21;
        }

        v21 = [v20 longLongValue];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v18 = [v17 sectionData];
        v22 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v40;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v40 != v24)
              {
                objc_enumerationMutation(v18);
              }

              if (![HDUserDomainConceptEducationContentSectionDataEntity insertEducationContentSectionData:*(*(&v39 + 1) + 8 * i) sectionPersistentID:v21 transaction:v15 error:a6, v28, v29, v30])
              {

                LOBYTE(v18) = 0;
                v11 = v33;
                v10 = v34;
                goto LABEL_21;
              }
            }

            v23 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v14 = v32 + 1;
        v11 = v33;
        v10 = v34;
        a4 = v30;
        v13 = v28;
      }

      while (v32 + 1 != v31);
      v12 = [v33 countByEnumeratingWithState:&v35 objects:v46 count:16];
      LOBYTE(v18) = 1;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v18) = 1;
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)enumerateLocalizedEducationContentSectionsWithEducationContentID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __154__HDUserDomainConceptEducationContentSectionEntity_enumerateLocalizedEducationContentSectionsWithEducationContentID_transaction_error_enumerationHandler___block_invoke;
  v15[3] = &unk_278615BA0;
  v16 = v10;
  v17 = v11;
  v12 = v11;
  v13 = v10;
  LOBYTE(a5) = [(HDUserDomainConceptEducationContentSectionEntity *)a1 _enumerateLocalizedEducationContentSectionRowsWithEducationContentID:a3 transaction:v13 error:a5 enumerationHandler:v15];

  return a5;
}

uint64_t __154__HDUserDomainConceptEducationContentSectionEntity_enumerateLocalizedEducationContentSectionsWithEducationContentID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D10A40];
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __154__HDUserDomainConceptEducationContentSectionEntity_enumerateLocalizedEducationContentSectionsWithEducationContentID_transaction_error_enumerationHandler___block_invoke_2;
  v16[3] = &unk_2786266B8;
  v10 = v8;
  v17 = v10;
  if ([HDUserDomainConceptEducationContentSectionDataEntity enumerateSectionDataForEducationContentSectionID:v6 transaction:v9 error:a3 enumerationHandler:v16])
  {
    v11 = [v10 hk_mapToDictionary:&__block_literal_global_322_2];
    v12 = *(a1 + 40);
    v13 = [objc_alloc(MEMORY[0x277CCD758]) initWithSectionDataTypeMapping:v11 sectionType:v7];
    v14 = (*(v12 + 16))(v12, v13, a3);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __154__HDUserDomainConceptEducationContentSectionEntity_enumerateLocalizedEducationContentSectionsWithEducationContentID_transaction_error_enumerationHandler___block_invoke_3(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithLongLong:{objc_msgSend(v7, "sectionDataType")}];
  (a3)[2](v6, v8, v7);
}

+ (uint64_t)_enumerateLocalizedEducationContentSectionRowsWithEducationContentID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [v9 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __158__HDUserDomainConceptEducationContentSectionEntity__enumerateLocalizedEducationContentSectionRowsWithEducationContentID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [v10 executeCachedStatementForKey:&_enumerateLocalizedEducationContentSectionRowsWithEducationContentID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_331_1 bindingHandler:v13 enumerationHandler:v8];

  return v11;
}

+ (BOOL)addSectionsToCodable:(id)a3 educationContentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HDUserDomainConceptEducationContentSectionEntity_addSectionsToCodable_educationContentID_transaction_error___block_invoke;
  v15[3] = &unk_2786140C0;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  v13 = v11;
  LOBYTE(a6) = [(HDUserDomainConceptEducationContentSectionEntity *)a1 _enumerateLocalizedEducationContentSectionRowsWithEducationContentID:a4 transaction:v13 error:a6 enumerationHandler:v15];

  return a6;
}

BOOL __110__HDUserDomainConceptEducationContentSectionEntity_addSectionsToCodable_educationContentID_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D10A40];
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = objc_alloc_init(HDCodableOntologyLocalizedEducationContentSection);
  [(HDCodableOntologyLocalizedEducationContentSection *)v8 setSectionType:v7];
  v9 = [HDUserDomainConceptEducationContentSectionDataEntity addSectionDataToCodable:v8 educationContentSectionID:v6 transaction:*(a1 + 32) error:a3];
  if (v9)
  {
    [*(a1 + 40) addSections:v8];
  }

  return v9;
}

@end