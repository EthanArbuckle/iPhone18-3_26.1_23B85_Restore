@interface HDConceptIndexEntity
+ (BOOL)enumerateConceptIndexEntriesWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertConceptIndexEntries:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)removeAllConceptIndexEntriesWithProfile:(id)a3 error:(id *)a4;
+ (id)conceptIndexEntriesForSampleUUID:(id)a3 type:(unint64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)indices;
+ (id)joinClausesForProperty:(id)a3;
+ (id)numberOfIndexedConceptsWithProfile:(id)a3 error:(id *)a4;
+ (id)unitTesting_allConceptIndexEntriesWithProfile:(id)a3 error:(id *)a4;
@end

@implementation HDConceptIndexEntity

+ (id)indices
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v14 = @"object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v5 = [v2 initWithEntity:v3 name:@"objects" columns:v4];
  v15[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D10B40]);
  v7 = objc_opt_class();
  v13[0] = @"concept_identifier";
  v13[1] = @"key_path";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v9 = [v6 initWithEntity:v7 name:@"concept_identifier_key_paths" columns:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"object_id";
  v2 = +[HDDataEntity defaultForeignKey];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"uuid"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = MEMORY[0x277D10B50];
    v7 = [a1 disambiguatedDatabaseTable];
    v8 = [v6 innerJoinClauseFromTable:v7 toTargetEntity:objc_opt_class() as:0 localReference:@"object_id" targetKey:@"data_id"];
    v9 = [v5 setWithObject:v8];
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___HDConceptIndexEntity;
    v9 = objc_msgSendSuper2(&v11, sel_joinClausesForProperty_, v4);
  }

  return v9;
}

+ (BOOL)insertConceptIndexEntries:(id)a3 profile:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"HDConceptIndexEntity.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"conceptIndexEntries"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"HDConceptIndexEntity.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"profile"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [v11 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__HDConceptIndexEntity_insertConceptIndexEntries_profile_error___block_invoke;
  v18[3] = &unk_278619348;
  v19 = v9;
  v20 = a1;
  v13 = v9;
  v14 = [a1 performWriteTransactionWithHealthDatabase:v12 error:a5 block:v18];

  return v14;
}

uint64_t __64__HDConceptIndexEntity_insertConceptIndexEntries_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[7] = *MEMORY[0x277D85DE8];
  v28 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v26 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v26)
  {
    v25 = *v30;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * i);
        v6 = *(a1 + 40);
        v7 = [v28 protectedDatabase];
        v8 = v5;
        v9 = v7;
        v10 = objc_opt_self();
        v38[0] = @"object_id";
        v38[1] = @"concept_identifier";
        v38[2] = @"version";
        v38[3] = @"key_path";
        v38[4] = @"compound_index";
        v38[5] = @"type";
        v38[6] = @"ontology_version";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:7];
        v12 = [v8 sampleUUID];
        v13 = HDDataEntityPredicateForDataUUID();
        v36 = 0;
        v14 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v9 predicate:v13 error:&v36];
        v15 = v36;

        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15 == 0;
        }

        if (!v16)
        {
          if (a3)
          {
            v21 = v15;
            *a3 = v15;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_20:
          v20 = 0;
          goto LABEL_21;
        }

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __64__HDConceptIndexEntity__insertConceptIndexEntry_database_error___block_invoke;
        v33[3] = &unk_278613DE8;
        v17 = v14;
        v34 = v17;
        v18 = v8;
        v35 = v18;
        v19 = [v10 insertOrReplaceEntity:1 database:v9 properties:v11 error:a3 bindingHandler:v33];

        if (!v19)
        {
          goto LABEL_20;
        }
      }

      v20 = 1;
      v26 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 1;
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)removeAllConceptIndexEntriesWithProfile:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"HDConceptIndexEntity.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  v8 = [v7 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDConceptIndexEntity_removeAllConceptIndexEntriesWithProfile_error___block_invoke;
  v12[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v12[4] = a1;
  v9 = [a1 performWriteTransactionWithHealthDatabase:v8 error:a4 block:v12];

  return v9;
}

uint64_t __70__HDConceptIndexEntity_removeAllConceptIndexEntriesWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [v5 protectedDatabase];

  v8 = [v6 queryWithDatabase:v7 predicate:0];

  v9 = [v8 deleteAllEntitiesWithError:a3];
  return v9;
}

+ (id)conceptIndexEntriesForSampleUUID:(id)a3 type:(unint64_t)a4 profile:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDConceptIndexEntity.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"sampleUUID"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"HDConceptIndexEntity.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"profile"}];

LABEL_3:
  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:v11];
  v15 = MEMORY[0x277D10B18];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v17 = [v15 predicateWithProperty:@"type" equalToValue:v16];

  v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v14 otherPredicate:v17];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HDConceptIndexEntity_conceptIndexEntriesForSampleUUID_type_profile_error___block_invoke;
  v26[3] = &unk_27861C490;
  v27 = v19;
  v20 = v19;
  if ([a1 enumerateConceptIndexEntriesWithPredicate:v18 profile:v13 error:a6 enumerationHandler:v26])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (BOOL)enumerateConceptIndexEntriesWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a4 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HDConceptIndexEntity_enumerateConceptIndexEntriesWithPredicate_profile_error_enumerationHandler___block_invoke;
  v16[3] = &unk_27861B6E8;
  v18 = v11;
  v19 = a1;
  v17 = v10;
  v13 = v11;
  v14 = v10;
  LOBYTE(a5) = [a1 performReadTransactionWithHealthDatabase:v12 error:a5 block:v16];

  return a5;
}

uint64_t __99__HDConceptIndexEntity_enumerateConceptIndexEntriesWithPredicate_profile_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = v6;
  v10 = objc_opt_self();
  if (!v8)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:sel__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler_ object:v10 file:@"HDConceptIndexEntity.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:sel__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler_ object:v10 file:@"HDConceptIndexEntity.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = objc_opt_class();
  v12 = [v8 protectedDatabase];

  v13 = [v11 queryWithDatabase:v12 predicate:v9];

  objc_opt_self();
  v21 = @"uuid";
  v22 = @"concept_identifier";
  v23 = @"version";
  v24 = @"key_path";
  v25 = @"compound_index";
  v26 = @"type";
  v27 = @"ontology_version";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:7];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __93__HDConceptIndexEntity__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler___block_invoke;
  v24 = &unk_278616A78;
  v25 = v7;
  v15 = v7;
  v16 = [v13 enumeratePersistentIDsAndProperties:v14 error:a3 enumerationHandler:&v21];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)numberOfIndexedConceptsWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__63;
  v16 = __Block_byref_object_dispose__63;
  v17 = 0;
  v7 = [v6 database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke;
  v11[3] = &unk_27861C1A0;
  v11[4] = &v12;
  v11[5] = a1;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v7 error:a4 block:v11];

  if (a4)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v9[4] = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_3;
  v8[3] = &unk_278614620;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDConceptIndexEntityPropertyOntologyVersion_block_invoke_statementKey error:a3 SQLGenerator:v9 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

id __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"SELECT COUNT(DISTINCT %@) FROM %@", @"concept_identifier", v3];

  return v4;
}

uint64_t __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (id)unitTesting_allConceptIndexEntriesWithProfile:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"HDConceptIndexEntity.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HDConceptIndexEntity_unitTesting_allConceptIndexEntriesWithProfile_error___block_invoke;
  v14[3] = &unk_27861C490;
  v15 = v8;
  v9 = v8;
  if ([a1 enumerateConceptIndexEntriesWithPredicate:0 profile:v7 error:a4 enumerationHandler:v14])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

void __64__HDConceptIndexEntity__insertConceptIndexEntry_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"object_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"concept_identifier", [*(a1 + 40) conceptIdentifier]);
  MEMORY[0x22AAC6B90](a2, @"version", [*(a1 + 40) conceptVersion]);
  v4 = [*(a1 + 40) keyPath];
  MEMORY[0x22AAC6BD0](a2, @"key_path", v4);

  MEMORY[0x22AAC6B90](a2, @"compound_index", [*(a1 + 40) compoundIndex]);
  MEMORY[0x22AAC6B90](a2, @"type", [*(a1 + 40) type]);
  v6 = [*(a1 + 40) ontologyVersion];
  v5 = [v6 string];
  MEMORY[0x22AAC6BD0](a2, @"ontology_version", v5);
}

uint64_t __93__HDConceptIndexEntity__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsString();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = objc_alloc(MEMORY[0x277CCD768]);
  v13 = HDSQLiteColumnWithNameAsString();
  v14 = [v12 initWithString:v13];

  v15 = [[HDConceptIndexEntry alloc] initWithSampleUUID:v6 conceptIdentifier:v7 conceptVersion:v8 keyPath:v9 compoundIndex:v10 type:v11 ontologyVersion:v14];
  v16 = (*(*(a1 + 32) + 16))();
  v17 = 0;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    v19 = v17;
    v20 = v19;
    if (v19)
    {
      if (a5)
      {
        v21 = v19;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v16;
}

@end