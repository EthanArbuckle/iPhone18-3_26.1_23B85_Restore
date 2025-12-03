@interface HDUserDomainConceptEducationContentEntity
+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (uint64_t)_enumerateLocalizedEducationContentRowsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
@end

@implementation HDUserDomainConceptEducationContentEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"udc_id";
  v2 = +[HDUserDomainConceptEntity defaultForeignKey];
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

+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  propertyCollection = [concept propertyCollection];
  properties = [propertyCollection properties];

  obj = properties;
  v10 = [properties countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          v16 = transactionCopy;
          objc_opt_self();
          protectedDatabase = [v16 protectedDatabase];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __127__HDUserDomainConceptEducationContentEntity__insertLocalizedEducationContentSectionsFor_userDomainConceptID_transaction_error___block_invoke_2;
          v32[3] = &unk_278613B58;
          dCopy = d;
          v18 = v15;
          v33 = v18;
          LODWORD(v15) = [protectedDatabase executeCachedStatementForKey:&_insertLocalizedEducationContentSectionsFor_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_79 bindingHandler:v32 enumerationHandler:0];

          if (!v15 || ([v16 protectedDatabase], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "lastInsertRowID"), v20 = objc_claimAutoreleasedReturnValue(), v19, !v20))
          {

LABEL_14:
            v22 = 0;
            goto LABEL_15;
          }

          v21 = +[HDUserDomainConceptEducationContentSectionEntity insertLocalizedEducationContentSectionsFor:educationContentID:transaction:error:](HDUserDomainConceptEducationContentSectionEntity, "insertLocalizedEducationContentSectionsFor:educationContentID:transaction:error:", v18, [v20 longLongValue], v16, error);

          if (!v21)
          {
            goto LABEL_14;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error
{
  propertiesCopy = properties;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __151__HDUserDomainConceptEducationContentEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v18[3] = &unk_27861E3A0;
  v19 = propertiesCopy;
  v11 = propertiesCopy;
  transactionCopy = transaction;
  v13 = v18;
  v14 = objc_opt_self();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __141__HDUserDomainConceptEducationContentEntity__enumerateLocalizedEducationContentWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
  v20[3] = &unk_278615BA0;
  v21 = transactionCopy;
  v22 = v13;
  v15 = v13;
  v16 = transactionCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentEntity *)v14 _enumerateLocalizedEducationContentRowsWithUserDomainConceptID:d transaction:v16 error:error enumerationHandler:v20];

  return error;
}

+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  transactionCopy = transaction;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HDUserDomainConceptEducationContentEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v15[3] = &unk_2786140C0;
  v16 = transactionCopy;
  v17 = codableCopy;
  v12 = codableCopy;
  v13 = transactionCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentEntity *)self _enumerateLocalizedEducationContentRowsWithUserDomainConceptID:d transaction:v13 error:error enumerationHandler:v15];

  return error;
}

BOOL __108__HDUserDomainConceptEducationContentEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(HDCodableOntologyLocalizedEducationContent);
  v6 = *MEMORY[0x277D10A40];
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsBoolean();
  [(HDCodableOntologyLocalizedEducationContent *)v5 setVersion:v8];
  [(HDCodableOntologyLocalizedEducationContent *)v5 setTimestamp:v10];
  [(HDCodableOntologyLocalizedEducationContent *)v5 setDeleted:v11];
  v12 = [HDUserDomainConceptEducationContentSectionEntity addSectionsToCodable:v5 educationContentID:v7 transaction:*(a1 + 32) error:a3];
  if (v12)
  {
    [*(a1 + 40) setOntologyLocalizedEducationContent:v5];
  }

  return v12;
}

+ (uint64_t)_enumerateLocalizedEducationContentRowsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __145__HDUserDomainConceptEducationContentEntity__enumerateLocalizedEducationContentRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [protectedDatabase executeCachedStatementForKey:&_enumerateLocalizedEducationContentRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_332 bindingHandler:v13 enumerationHandler:errorCopy];

  return v11;
}

uint64_t __127__HDUserDomainConceptEducationContentEntity__insertLocalizedEducationContentSectionsFor_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 3, v4);
  v5 = [*(a1 + 32) isDeleted];

  return sqlite3_bind_int(a2, 4, v5);
}

uint64_t __141__HDUserDomainConceptEducationContentEntity__enumerateLocalizedEducationContentWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D10A40];
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsBoolean();
  v12 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __141__HDUserDomainConceptEducationContentEntity__enumerateLocalizedEducationContentWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v18[3] = &unk_27861E3C8;
  v13 = v7;
  v19 = v13;
  if ([HDUserDomainConceptEducationContentSectionEntity enumerateLocalizedEducationContentSectionsWithEducationContentID:v6 transaction:v12 error:a3 enumerationHandler:v18])
  {
    v14 = *(a1 + 40);
    v15 = [objc_alloc(MEMORY[0x277CCD750]) initWithSections:v13 version:v8 timestamp:v11 deleted:v10];
    v16 = (*(v14 + 16))(v14, v15, a3);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end