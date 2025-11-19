@interface HDUserDomainMedicalCodingStringEntity
+ (BOOL)enumerateMedicalCodingStringsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (id)persistentIDForString:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)stringForPersistentID:(id)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDUserDomainMedicalCodingStringEntity

+ (id)persistentIDForString:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 protectedDatabase];
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
  v10 = v7;
  v18 = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_3;
  v16[3] = &unk_278614620;
  v16[4] = &v19;
  if ([v9 executeCachedStatementForKey:&persistentIDForString_transaction_error__lookupKey error:a5 SQLGenerator:&__block_literal_global_57 bindingHandler:v17 enumerationHandler:v16])
  {
    v11 = v20[5];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_5;
      v14[3] = &unk_278614860;
      v15 = v10;
      if ([v9 executeCachedStatementForKey:&persistentIDForString_transaction_error__insertKey error:a5 SQLGenerator:&__block_literal_global_317_2 bindingHandler:v14 enumerationHandler:0])
      {
        v12 = [v9 lastInsertRowID];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v12;
}

uint64_t __81__HDUserDomainMedicalCodingStringEntity_persistentIDForString_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (id)stringForPersistentID:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 protectedDatabase];
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
  v10 = v7;
  v16 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HDUserDomainMedicalCodingStringEntity_stringForPersistentID_transaction_error___block_invoke_3;
  v14[3] = &unk_278614620;
  v14[4] = &v17;
  if ([v9 executeCachedStatementForKey:&stringForPersistentID_transaction_error__statementKey error:a5 SQLGenerator:&__block_literal_global_322 bindingHandler:v15 enumerationHandler:v14])
  {
    v11 = v18[5];
    if (!v11)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:118 format:{@"String not found for persistentID %@", v10}];
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

+ (BOOL)enumerateMedicalCodingStringsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a4 databaseForEntityClass:a1];
  v13 = [a1 queryWithDatabase:v12 predicate:v11];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__HDUserDomainMedicalCodingStringEntity_enumerateMedicalCodingStringsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278616A78;
  v17 = v10;
  v14 = v10;
  LOBYTE(a5) = [v13 enumeratePersistentIDsAndProperties:&unk_283CAEA10 error:a5 enumerationHandler:v16];

  return a5;
}

uint64_t __121__HDUserDomainMedicalCodingStringEntity_enumerateMedicalCodingStringsWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6C90](a4, 0);
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

@end