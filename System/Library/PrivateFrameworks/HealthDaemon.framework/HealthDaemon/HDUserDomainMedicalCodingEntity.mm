@interface HDUserDomainMedicalCodingEntity
+ (BOOL)_getPersistentIDForString:(void *)string transaction:(void *)transaction result:(uint64_t)result error:;
+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateMedicalCodingsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)property;
+ (id)privateSubEntities;
+ (id)triggers;
+ (uint64_t)_enumerateMedicalCodingsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
@end

@implementation HDUserDomainMedicalCodingEntity

+ (id)foreignKeys
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"udc_id";
  v2 = +[HDUserDomainConceptEntity defaultForeignKey];
  v11[0] = v2;
  v10[1] = @"system";
  v3 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[1] = v3;
  v10[2] = @"code";
  v4 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[2] = v4;
  v10[3] = @"version";
  v5 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[3] = v5;
  v10[4] = @"display_string";
  v6 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)triggers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HDUserDomainMedicalCodingStringEntity databaseTable];
  v5 = *MEMORY[0x277D10A40];
  databaseTable = [self databaseTable];
  v7 = +[HDUserDomainMedicalCodingStringEntity databaseTable];
  v8 = [v3 stringWithFormat:@"DELETE FROM %@ WHERE (%@ IN (OLD.%@, OLD.%@, OLD.%@, OLD.%@) AND NOT EXISTS (SELECT 1 FROM %@ WHERE %@.%@ IN (%@, %@, %@, %@)))", v4, v5, @"system", @"code", @"version", @"display_string", databaseTable, v7, v5, @"system", @"code", @"version", @"display_string"];

  v9 = [objc_alloc(MEMORY[0x277D10BA0]) initWithEntity:objc_opt_class() name:@"string_garbage_collection" triggerEvent:0 predicateString:0 triggerString:v8];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  v6 = [&unk_283CB46D0 objectForKeyedSubscript:propertyCopy];
  if (v6)
  {
    v7 = [propertyCopy componentsSeparatedByString:@"."];

    if ([v7 count] != 2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDUserDomainMedicalCodingEntity.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"[components count] == 2"}];
    }

    v8 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v10 = objc_opt_class();
    firstObject = [v7 firstObject];
    v12 = [v8 leftJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v10 as:firstObject localReference:v6 targetKey:*MEMORY[0x277D10A40]];

    v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = &OBJC_METACLASS___HDUserDomainMedicalCodingEntity;
    v13 = objc_msgSendSuper2(&v16, sel_joinClausesForProperty_, propertyCopy);
  }

  return v13;
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
  v66 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  codingCollection = [conceptCopy codingCollection];
  codings = [codingCollection codings];

  obj = codings;
  v44 = [codings countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v44)
  {
    v46 = *v62;
    v13 = transactionCopy;
    errorCopy = error;
    v43 = transactionCopy;
    selfCopy = self;
    v39 = conceptCopy;
    while (2)
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (*v62 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v61 + 1) + 8 * v14);
        codingSystem = [v16 codingSystem];
        identifier = [codingSystem identifier];
        v60 = 0;
        v19 = [(HDUserDomainMedicalCodingEntity *)self _getPersistentIDForString:identifier transaction:v15 result:&v60 error:error];
        v20 = v60;
        if (!v19)
        {
          v13 = v15;
          v23 = codingSystem;
          conceptCopy = v39;
          goto LABEL_21;
        }

        v48 = v14;
        code = [v16 code];
        v59 = 0;
        v22 = [(HDUserDomainMedicalCodingEntity *)self _getPersistentIDForString:code transaction:v15 result:&v59 error:error];
        v23 = v59;
        if (!v22)
        {

          conceptCopy = v39;
          goto LABEL_20;
        }

        v50 = v20;
        codingVersion = [v16 codingVersion];
        v58 = 0;
        errorCopy2 = error;
        v26 = [(HDUserDomainMedicalCodingEntity *)self _getPersistentIDForString:codingVersion transaction:v15 result:&v58 error:error];
        v49 = v58;
        if (v26)
        {
          displayString = [v16 displayString];
          v57 = 0;
          v28 = [(HDUserDomainMedicalCodingEntity *)self _getPersistentIDForString:displayString transaction:v15 result:&v57 error:errorCopy2];
          v29 = v57;
          v30 = !v28;
        }

        else
        {
          v29 = 0;
          v30 = 1;
        }

        v20 = v50;

        if (v30)
        {
          identifier = v29;
          codingSystem = v49;
          conceptCopy = v39;
          v15 = v43;
LABEL_20:
          v13 = v15;

          identifier = codingSystem;
LABEL_21:

          v36 = 0;
          goto LABEL_23;
        }

        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __104__HDUserDomainMedicalCodingEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
        v51[3] = &unk_2786238D0;
        v55 = v29;
        dCopy = d;
        v52 = v50;
        v53 = v23;
        v54 = v49;
        v31 = v29;
        v32 = v49;
        v33 = v23;
        v34 = v50;
        error = errorCopy;
        v35 = [protectedDatabase executeCachedStatementForKey:&insertDataForUserDomainConcept_userDomainConceptID_transaction_error__statementKey_1 error:errorCopy SQLGenerator:&__block_literal_global_129 bindingHandler:v51 enumerationHandler:0];

        if (!v35)
        {
          v36 = 0;
          conceptCopy = v39;
          v13 = v43;
          goto LABEL_23;
        }

        v14 = v48 + 1;
        v15 = v43;
        self = selfCopy;
      }

      while (v44 != v48 + 1);
      v13 = v43;
      v36 = 1;
      conceptCopy = v39;
      v44 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = transactionCopy;
    v36 = 1;
  }

LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (BOOL)_getPersistentIDForString:(void *)string transaction:(void *)transaction result:(uint64_t)result error:
{
  v8 = a2;
  stringCopy = string;
  objc_opt_self();
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(null)";
  }

  v11 = [HDUserDomainMedicalCodingStringEntity persistentIDForString:v10 transaction:stringCopy error:result];

  v12 = v11;
  *transaction = v11;

  return v11 != 0;
}

uint64_t __104__HDUserDomainMedicalCodingEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[8]);
  v3 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v4 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[7];

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  v12 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  v14 = objc_alloc_init(v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __141__HDUserDomainMedicalCodingEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v21[3] = &unk_2786238F8;
  v15 = v14;
  v22 = v15;
  v16 = [(HDUserDomainMedicalCodingEntity *)self _enumerateMedicalCodingsWithUserDomainConceptID:d transaction:transactionCopy error:error enumerationHandler:v21];

  if (v16)
  {
    if ([v15 count])
    {
      v17 = MEMORY[0x277CCD5C8];
      v18 = [v15 copy];
      v19 = [v17 collectionWithCodings:v18];
    }

    else
    {
      v19 = 0;
    }

    [conceptCopy _setCodingCollection:v19];
  }

  return v16;
}

+ (uint64_t)_enumerateMedicalCodingsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v13 = [v11 predicateWithProperty:@"udc_id" equalToValue:v12];

  v14 = [v10 enumerateMedicalCodingsWithPredicate:v13 transaction:dCopy error:transaction enumerationHandler:errorCopy];
  return v14;
}

+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__HDUserDomainMedicalCodingEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_2786238F8;
  v14 = codableCopy;
  v11 = codableCopy;
  LOBYTE(error) = [(HDUserDomainMedicalCodingEntity *)self _enumerateMedicalCodingsWithUserDomainConceptID:d transaction:transaction error:error enumerationHandler:v13];

  return error;
}

uint64_t __98__HDUserDomainMedicalCodingEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 codableRepresentationForSync];
  [v2 addCodings:v3];

  return 1;
}

+ (BOOL)enumerateMedicalCodingsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [self queryWithDatabase:v12 predicate:predicateCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__HDUserDomainMedicalCodingEntity_enumerateMedicalCodingsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278616A78;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LOBYTE(error) = [v13 enumeratePersistentIDsAndProperties:&unk_283CAF760 error:error enumerationHandler:v16];

  return error;
}

uint64_t __109__HDUserDomainMedicalCodingEntity_enumerateMedicalCodingsWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6C90](a4, 0);
  v6 = MEMORY[0x22AAC6C90](a4, 1);
  v7 = MEMORY[0x22AAC6C90](a4, 2);
  v8 = MEMORY[0x22AAC6C90](a4, 3);
  v22 = v5;
  if ([v5 isEqualToString:@"(null)"])
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if ([v6 isEqualToString:@"(null)"])
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;
  if ([v7 isEqualToString:@"(null)"])
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;
  if ([v8 isEqualToString:@"(null)"])
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;
  if (v10)
  {
    v17 = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:v10];
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CCD5C0] medicalCodingWithSystem:v17 codingVersion:v14 code:v12 displayString:v16];
  v19 = (*(*(a1 + 32) + 16))();

  return v19;
}

@end