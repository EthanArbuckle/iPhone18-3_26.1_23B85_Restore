@interface HDUserDomainMedicalCodingStringEntity
+ (BOOL)enumerateMedicalCodingStringsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (id)persistentIDForString:(id)string transaction:(id)transaction error:(id *)error;
+ (id)stringForPersistentID:(id)d transaction:(id)transaction error:(id *)error;
@end

@implementation HDUserDomainMedicalCodingStringEntity

+ (id)persistentIDForString:(id)string transaction:(id)transaction error:(id *)error
{
  stringCopy = string;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__52;
  v23 = __Block_byref_object_dispose__52;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_2;
  v17[3] = &unk_278614860;
  v10 = stringCopy;
  v18 = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_3;
  v16[3] = &unk_278614620;
  v16[4] = &v19;
  if ([protectedDatabase executeCachedStatementForKey:&persistentIDForString_transaction_error__lookupKey error:error SQLGenerator:&__block_literal_global_57 bindingHandler:v17 enumerationHandler:v16])
  {
    v11 = v20[5];
    if (v11)
    {
      lastInsertRowID = v11;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_5;
      v14[3] = &unk_278614860;
      v15 = v10;
      if ([protectedDatabase executeCachedStatementForKey:&persistentIDForString_transaction_error__insertKey error:error SQLGenerator:&__block_literal_global_317_2 bindingHandler:v14 enumerationHandler:0])
      {
        lastInsertRowID = [protectedDatabase lastInsertRowID];
      }

      else
      {
        lastInsertRowID = 0;
      }
    }
  }

  else
  {
    lastInsertRowID = 0;
  }

  _Block_object_dispose(&v19, 8);

  return lastInsertRowID;
}

uint64_t __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (id)stringForPersistentID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__52;
  v21 = __Block_byref_object_dispose__52;
  v22 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__HDUserDomainMedicalCodingStringEntity_stringForPersistentID_transaction_error___block_invoke_2;
  v15[3] = &unk_278614860;
  v10 = dCopy;
  v16 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HDUserDomainMedicalCodingStringEntity_stringForPersistentID_transaction_error___block_invoke_3;
  v14[3] = &unk_278614620;
  v14[4] = &v17;
  if ([protectedDatabase executeCachedStatementForKey:&stringForPersistentID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_322 bindingHandler:v15 enumerationHandler:v14])
  {
    v11 = v18[5];
    if (!v11)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:{@"String not found for persistentID %@", v10}];
      v11 = v18[5];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t __81__HDUserDomainMedicalCodingStringEntity_stringForPersistentID_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)enumerateMedicalCodingStringsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [self queryWithDatabase:v12 predicate:predicateCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__HDUserDomainMedicalCodingStringEntity_enumerateMedicalCodingStringsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278616A78;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LOBYTE(error) = [v13 enumeratePersistentIDsAndProperties:&unk_283CAEA10 error:error enumerationHandler:v16];

  return error;
}

uint64_t __121__HDUserDomainMedicalCodingStringEntity_enumerateMedicalCodingStringsWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6C90](a4, 0);
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

@end