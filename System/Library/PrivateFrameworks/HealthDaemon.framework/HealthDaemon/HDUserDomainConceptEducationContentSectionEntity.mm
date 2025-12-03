@interface HDUserDomainConceptEducationContentSectionEntity
+ (BOOL)addSectionsToCodable:(id)codable educationContentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateLocalizedEducationContentSectionsWithEducationContentID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertLocalizedEducationContentSectionsFor:(id)for educationContentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (uint64_t)_enumerateLocalizedEducationContentSectionRowsWithEducationContentID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
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

+ (BOOL)insertLocalizedEducationContentSectionsFor:(id)for educationContentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  sections = [for sections];
  v12 = [sections countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v12)
  {
    v13 = *v36;
    v33 = sections;
    v34 = transactionCopy;
    selfCopy = self;
    dCopy = d;
    v28 = *v36;
    while (2)
    {
      v14 = 0;
      v31 = v12;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(sections);
        }

        v32 = v14;
        sectionData = *(*(&v35 + 1) + 8 * v14);
        v15 = transactionCopy;
        objc_opt_self();
        protectedDatabase = [v15 protectedDatabase];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __149__HDUserDomainConceptEducationContentSectionEntity_insertEducationContentSectionForContentWithID_error_localizedEducationContentSection_transaction___block_invoke_2;
        v43[3] = &unk_278613B58;
        dCopy2 = d;
        v17 = sectionData;
        v44 = v17;
        LODWORD(sectionData) = [protectedDatabase executeCachedStatementForKey:&insertEducationContentSectionForContentWithID_error_localizedEducationContentSection_transaction__statementKey error:error SQLGenerator:&__block_literal_global_173 bindingHandler:v43 enumerationHandler:0];

        if (!sectionData)
        {

          goto LABEL_21;
        }

        protectedDatabase2 = [v15 protectedDatabase];
        lastInsertRowID = [protectedDatabase2 lastInsertRowID];

        if (!lastInsertRowID)
        {

          LOBYTE(sectionData) = 0;
          goto LABEL_21;
        }

        longLongValue = [lastInsertRowID longLongValue];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        sectionData = [v17 sectionData];
        v22 = [sectionData countByEnumeratingWithState:&v39 objects:v47 count:16];
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
                objc_enumerationMutation(sectionData);
              }

              if (![HDUserDomainConceptEducationContentSectionDataEntity insertEducationContentSectionData:*(*(&v39 + 1) + 8 * i) sectionPersistentID:longLongValue transaction:v15 error:error, v28, selfCopy, dCopy])
              {

                LOBYTE(sectionData) = 0;
                sections = v33;
                transactionCopy = v34;
                goto LABEL_21;
              }
            }

            v23 = [sectionData countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v14 = v32 + 1;
        sections = v33;
        transactionCopy = v34;
        d = dCopy;
        v13 = v28;
      }

      while (v32 + 1 != v31);
      v12 = [v33 countByEnumeratingWithState:&v35 objects:v46 count:16];
      LOBYTE(sectionData) = 1;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(sectionData) = 1;
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
  return sectionData;
}

+ (BOOL)enumerateLocalizedEducationContentSectionsWithEducationContentID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __154__HDUserDomainConceptEducationContentSectionEntity_enumerateLocalizedEducationContentSectionsWithEducationContentID_transaction_error_enumerationHandler___block_invoke;
  v15[3] = &unk_278615BA0;
  v16 = transactionCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = transactionCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentSectionEntity *)self _enumerateLocalizedEducationContentSectionRowsWithEducationContentID:d transaction:v13 error:error enumerationHandler:v15];

  return error;
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

+ (uint64_t)_enumerateLocalizedEducationContentSectionRowsWithEducationContentID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __158__HDUserDomainConceptEducationContentSectionEntity__enumerateLocalizedEducationContentSectionRowsWithEducationContentID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [protectedDatabase executeCachedStatementForKey:&_enumerateLocalizedEducationContentSectionRowsWithEducationContentID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_331_1 bindingHandler:v13 enumerationHandler:errorCopy];

  return v11;
}

+ (BOOL)addSectionsToCodable:(id)codable educationContentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  transactionCopy = transaction;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HDUserDomainConceptEducationContentSectionEntity_addSectionsToCodable_educationContentID_transaction_error___block_invoke;
  v15[3] = &unk_2786140C0;
  v16 = transactionCopy;
  v17 = codableCopy;
  v12 = codableCopy;
  v13 = transactionCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentSectionEntity *)self _enumerateLocalizedEducationContentSectionRowsWithEducationContentID:d transaction:v13 error:error enumerationHandler:v15];

  return error;
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