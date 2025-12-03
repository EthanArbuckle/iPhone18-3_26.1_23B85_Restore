@interface HDUserDomainConceptLocalizedStringEntity
+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (uint64_t)_enumerateLocalizedStringRowsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
@end

@implementation HDUserDomainConceptLocalizedStringEntity

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

+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  propertyCollection = [concept propertyCollection];
  properties = [propertyCollection properties];

  v9 = [properties countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(properties);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 type];
          if ((HKIsDeprecatedPropertyType() & 1) == 0)
          {
            v14 = v13;
            v15 = transactionCopy;
            objc_opt_self();
            protectedDatabase = [v15 protectedDatabase];

            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __105__HDUserDomainConceptLocalizedStringEntity__insertLocalizedString_userDomainConceptID_transaction_error___block_invoke_2;
            v28[3] = &unk_278613B58;
            v29 = v14;
            dCopy = d;
            v17 = v14;
            LODWORD(v15) = [protectedDatabase executeCachedStatementForKey:&_insertLocalizedString_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_14 bindingHandler:v28 enumerationHandler:0];

            if (!v15)
            {
              v18 = 0;
              goto LABEL_13;
            }
          }
        }
      }

      v10 = [properties countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error
{
  propertiesCopy = properties;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __150__HDUserDomainConceptLocalizedStringEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v17[3] = &unk_278615408;
  v18 = propertiesCopy;
  v11 = propertiesCopy;
  v12 = v17;
  transactionCopy = transaction;
  v14 = objc_opt_self();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __131__HDUserDomainConceptLocalizedStringEntity__enumerateLocalizedStringsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
  v19[3] = &unk_278613B30;
  v20 = v12;
  v15 = v12;
  LOBYTE(error) = [(HDUserDomainConceptLocalizedStringEntity *)v14 _enumerateLocalizedStringRowsWithUserDomainConceptID:d transaction:transactionCopy error:error enumerationHandler:v19];

  return error;
}

+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__HDUserDomainConceptLocalizedStringEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = codableCopy;
  v11 = codableCopy;
  LOBYTE(error) = [(HDUserDomainConceptLocalizedStringEntity *)self _enumerateLocalizedStringRowsWithUserDomainConceptID:d transaction:transaction error:error enumerationHandler:v13];

  return error;
}

uint64_t __107__HDUserDomainConceptLocalizedStringEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v7 = v6;
  v8 = HDSQLiteColumnWithNameAsBoolean();
  v9 = objc_alloc_init(HDCodableUserDomainConceptLocalizedStringProperty);
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setType:v2];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setVersion:v5];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setTimestamp:v7];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setStringValue:v3];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setLocale:v4];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setDeleted:v8];
  [*(a1 + 32) addLocalizedStringProperties:v9];

  return 1;
}

+ (uint64_t)_enumerateLocalizedStringRowsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __134__HDUserDomainConceptLocalizedStringEntity__enumerateLocalizedStringRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [protectedDatabase executeCachedStatementForKey:&_enumerateLocalizedStringRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_342 bindingHandler:v13 enumerationHandler:errorCopy];

  return v11;
}

uint64_t __105__HDUserDomainConceptLocalizedStringEntity__insertLocalizedString_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) type]);
  v4 = [*(a1 + 32) stringValue];
  HDSQLiteBindStringToStatement();

  v5 = [*(a1 + 32) locale];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 5, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 6, v6);
  v7 = [*(a1 + 32) isDeleted];

  return sqlite3_bind_int(a2, 7, v7);
}

uint64_t __131__HDUserDomainConceptLocalizedStringEntity__enumerateLocalizedStringsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v7 = [objc_alloc(MEMORY[0x277CCDB10]) initWithType:v2 stringValue:v3 locale:v4 version:v5 timestamp:HDSQLiteColumnWithNameAsBoolean() deleted:v6];
  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

@end