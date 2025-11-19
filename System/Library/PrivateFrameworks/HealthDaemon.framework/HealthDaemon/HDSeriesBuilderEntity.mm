@interface HDSeriesBuilderEntity
+ (BOOL)discardBuilderWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (Class)seriesEntityClass;
+ (id)createPersistentEntityForBuilderIdentifier:(id)a3 seriesType:(id)a4 state:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (id)freezeSeriesWithIdentifier:(id)a3 metadata:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)persistentEntityForBuilderIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)insertMetadata:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setBuilderState:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
- (id)metadataWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)stateWithTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDSeriesBuilderEntity

+ (Class)seriesEntityClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)persistentEntityForBuilderIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = [v8 predicateWithProperty:@"uuid" equalToValue:a3];
  v11 = [v9 database];

  v12 = [a1 anyWithPredicate:v10 healthDatabase:v11 error:a5];

  return v12;
}

+ (id)createPersistentEntityForBuilderIdentifier:(id)a3 seriesType:(id)a4 state:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v27[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v27[0] = @"uuid";
  v27[1] = @"state";
  v27[2] = @"series_type";
  v14 = MEMORY[0x277CBEA60];
  v15 = a6;
  v16 = [v14 arrayWithObjects:v27 count:3];
  v17 = [v15 database];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__HDSeriesBuilderEntity_createPersistentEntityForBuilderIdentifier_seriesType_state_profile_error___block_invoke;
  v23[3] = &unk_278613AE8;
  v25 = v13;
  v26 = a5;
  v24 = v12;
  v18 = v13;
  v19 = v12;
  v20 = [a1 insertOrReplaceEntity:0 healthDatabase:v17 properties:v16 error:a7 bindingHandler:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __99__HDSeriesBuilderEntity_createPersistentEntityForBuilderIdentifier_seriesType_state_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6B90](a2, @"state", *(a1 + 48));
  [*(a1 + 40) code];

  JUMPOUT(0x22AAC6B90);
}

+ (id)freezeSeriesWithIdentifier:(id)a3 metadata:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__96;
  v31 = __Block_byref_object_dispose__96;
  v32 = 0;
  v13 = [v12 database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__HDSeriesBuilderEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke;
  v21[3] = &unk_27861DAA8;
  v14 = v10;
  v22 = v14;
  v15 = v12;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v25 = &v27;
  v26 = a1;
  v17 = [a1 performReadTransactionWithHealthDatabase:v13 error:a6 block:v21];

  if ((v17 & 1) != 0 && ([v28[5] performOrJournalWithProfile:v15 error:a6] & 1) != 0 && objc_msgSend(a1, "discardBuilderWithIdentifier:profile:error:", v14, v15, a6))
  {
    v18 = v28[5];
    if (v18)
    {
      v18 = v18[5];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v19;
}

BOOL __75__HDSeriesBuilderEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [HDSeriesBuilderEntity persistentEntityForBuilderIdentifier:*(a1 + 32) profile:*(a1 + 40) error:a3];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v6 metadataWithTransaction:v5 error:a3];
    v9 = v8;
    v10 = *a3;
    v11 = *a3 == 0;
    if (!v10)
    {
      if (v8)
      {
        [v7 addEntriesFromDictionary:v8];
      }

      if (*(a1 + 48))
      {
        [v7 addEntriesFromDictionary:?];
      }

      v12 = [HDFreezeSeriesOperation alloc];
      v13 = *(a1 + 32);
      v14 = [*(a1 + 64) seriesEntityClass];
      v15 = v13;
      v16 = v7;
      if (v12)
      {
        v24.receiver = v12;
        v24.super_class = HDFreezeSeriesOperation;
        v12 = objc_msgSendSuper2(&v24, sel_init);
        if (v12)
        {
          v17 = [v15 copy];
          identifier = v12->_identifier;
          v12->_identifier = v17;

          v19 = [v16 copy];
          metadata = v12->_metadata;
          v12->_metadata = v19;

          objc_storeStrong(&v12->_entityClass, v14);
        }
      }

      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)discardBuilderWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = [v8 predicateWithProperty:@"uuid" equalToValue:a3];
  v11 = [v9 database];

  LOBYTE(a5) = [a1 deleteEntitiesWithPredicate:v10 healthDatabase:v11 error:a5];
  return a5;
}

- (int64_t)stateWithTransaction:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = @"state";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [v6 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HDSeriesBuilderEntity_stateWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v12];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __52__HDSeriesBuilderEntity_stateWithTransaction_error___block_invoke(uint64_t a1)
{
  result = HDSQLiteColumnWithNameAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)setBuilderState:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = @"state";
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = [v8 arrayWithObjects:v15 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HDSeriesBuilderEntity_setBuilderState_transaction_error___block_invoke;
  v14[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v14[4] = a3;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v14];

  v12 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)metadataWithTransaction:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__96;
  v17 = __Block_byref_object_dispose__96;
  v18 = 0;
  v19[0] = @"metadata";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v8 = [v6 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HDSeriesBuilderEntity_metadataWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __55__HDSeriesBuilderEntity_metadataWithTransaction_error___block_invoke(uint64_t a1)
{
  v5 = HDSQLiteColumnWithNameAsData();
  v2 = [HDCodableMetadataDictionary decodeMetadataFromData:v5];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)insertMetadata:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HDSeriesBuilderEntity *)self metadataWithTransaction:v9 error:a5];
  v11 = v10;
  if (*a5)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v10 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v16 = v15;

    [v16 addEntriesFromDictionary:v8];
    v17 = [v16 copy];
    if (self)
    {
      v26[0] = @"metadata";
      v18 = MEMORY[0x277CBEA60];
      v19 = v9;
      v20 = [v18 arrayWithObjects:v26 count:1];
      v21 = [v19 databaseForEntity:self];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__HDSeriesBuilderEntity__setMetadata_transaction_error___block_invoke;
      v24[3] = &unk_278614508;
      v25 = v17;
      v12 = [(HDSQLiteEntity *)self updateProperties:v20 database:v21 error:a5 bindingHandler:v24];
    }

    else
    {
      v12 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

void __56__HDSeriesBuilderEntity__setMetadata_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 32) count])
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v5 = [*(a1 + 32) hk_codableMetadata];
  v4 = [v5 data];
  MEMORY[0x22AAC6B40](a2, @"metadata", v4);
}

@end