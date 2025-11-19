@interface HDDataEntityEnumerator
- (BOOL)enumerateInTransaction:(id)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)enumerateIncludingDeletedObjects:(BOOL)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)enumerateSampleTimesIncludingDeletedObjects:(BOOL)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4;
- (id)_initWithEntityClass:(Class)a3 profile:(id)a4;
- (id)_initWithObjectType:(id)a3 entityClass:(Class)a4 profile:(id)a5;
- (id)_initWithObjectTypes:(id)a3 entityClass:(Class)a4 profile:(id)a5;
- (id)_joinClauseForProperties:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)_enumerateObjectsWithDatabaseTransaction:(__CFString *)a3 error:(void *)a4 handler:;
- (uint64_t)_prepareDeletedObjectsAndSamplesDescriptor:(__CFString *)a3 error:;
- (uint64_t)_prepareDescriptor:(__CFString *)a3 error:;
- (uint64_t)_setOrderingTermsOnDescriptor:(uint64_t)a3 error:;
- (void)addEncodingOptionsFromDictionary:(id)a3;
- (void)setEncodingOption:(id)a3 forKey:(id)a4;
@end

@implementation HDDataEntityEnumerator

- (id)_initWithEntityClass:(Class)a3 profile:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HDDataEntityEnumerator;
  v7 = [(HDDataEntityEnumerator *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_profile, v6);
    v10.receiver = v8;
    v10.super_class = HDDataEntityEnumerator;
    [(HDSQLiteQueryDescriptor *)&v10 setEntityClass:a3];
  }

  return v8;
}

- (id)_initWithObjectType:(id)a3 entityClass:(Class)a4 profile:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = [v8 setWithObject:a3];
  v11 = [(HDDataEntityEnumerator *)self _initWithObjectTypes:v10 entityClass:a4 profile:v9];

  return v11;
}

- (id)_initWithObjectTypes:(id)a3 entityClass:(Class)a4 profile:(id)a5
{
  v9 = a3;
  v10 = [(HDDataEntityEnumerator *)self _initWithEntityClass:a4 profile:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 11, a3);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HDDataEntityEnumerator;
  v4 = [(HDSQLiteQueryDescriptor *)&v7 copyWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  objc_storeWeak(v4 + 8, WeakRetained);

  *(v4 + 80) = self->_useLeftJoin;
  return v4;
}

- (void)addEncodingOptionsFromDictionary:(id)a3
{
  encodingOptions = self->_encodingOptions;
  if (encodingOptions)
  {

    [(NSMutableDictionary *)encodingOptions addEntriesFromDictionary:a3];
  }

  else
  {
    v5 = [a3 mutableCopy];
    v6 = self->_encodingOptions;
    self->_encodingOptions = v5;

    MEMORY[0x2821F96F8](v5, v6);
  }
}

- (void)setEncodingOption:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  encodingOptions = self->_encodingOptions;
  if (!encodingOptions)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_encodingOptions;
    self->_encodingOptions = v8;

    encodingOptions = self->_encodingOptions;
  }

  [(NSMutableDictionary *)encodingOptions setObject:v10 forKeyedSubscript:v6];
}

- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"outError != NULL"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];

    v13 = 0;
    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [(HDSQLiteQueryDescriptor *)self entityClass];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained database];
  databaseTransactionContext = self->_databaseTransactionContext;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HDDataEntityEnumerator_enumerateWithError_handler___block_invoke;
  v17[3] = &unk_278618368;
  v17[4] = self;
  v18 = v8;
  v13 = [(objc_class *)v9 performReadTransactionWithHealthDatabase:v11 context:databaseTransactionContext error:a3 block:v17];

LABEL_4:
  return v13;
}

- (uint64_t)_enumerateObjectsWithDatabaseTransaction:(__CFString *)a3 error:(void *)a4 handler:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [a1 copy];
    if ([(HDDataEntityEnumerator *)a1 _prepareDescriptor:v9 error:a3])
    {
      v10 = [a1 entityClass];
      v11 = objc_alloc(MEMORY[0x277D10B78]);
      v12 = [v7 databaseForEntityClass:v10];
      v13 = [v11 initWithDatabase:v12 descriptor:v9];

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v15 = *(a1 + 72);
      v16 = [a1 authorizationFilter];
      v17 = [v10 entityEncoderForProfile:WeakRetained transaction:v7 purpose:1 encodingOptions:v15 authorizationFilter:v16];

      v18 = [v17 orderedProperties];
      v30 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __81__HDDataEntityEnumerator__enumerateObjectsWithDatabaseTransaction_error_handler___block_invoke;
      v27[3] = &unk_278618880;
      v19 = v17;
      v28 = v19;
      v29 = v8;
      v20 = [v13 enumeratePersistentIDsAndProperties:v18 error:&v30 enumerationHandler:v27];
      v21 = v30;

      v22 = [v13 lastSQLStatement];
      v23 = [v22 copy];
      v24 = *(a1 + 152);
      *(a1 + 152) = v23;

      [v19 finish];
      if (v21)
      {
        if (a3)
        {
          v25 = v21;
          v20 = 0;
          *a3 = v21;
        }

        else
        {
          _HKLogDroppedError();
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)enumerateInTransaction:(id)a3 error:(id *)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!a4)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"outError != NULL"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];

    v12 = 0;
    goto LABEL_4;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [(HDDataEntityEnumerator *)self _enumerateObjectsWithDatabaseTransaction:v9 error:a4 handler:v11];
LABEL_4:

  return v12;
}

- (BOOL)enumerateIncludingDeletedObjects:(BOOL)a3 error:(id *)a4 handler:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (!a4)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"outError != NULL"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];

    v15 = 0;
    goto LABEL_9;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a3)
  {
    v11 = [(HDSQLiteQueryDescriptor *)self entityClass];
    if (!v11)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:137 description:{@"Querying with a nil entity class %@. You're about to be sad. Did you forget to implement -hd_dataEntityClass or an extension in HKObject+HDExtensions?", self}];
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = [WeakRetained database];
    databaseTransactionContext = self->_databaseTransactionContext;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HDDataEntityEnumerator_enumerateIncludingDeletedObjects_error_handler___block_invoke_2;
    v21[3] = &unk_278629C58;
    v21[4] = self;
    v23 = v11;
    v22 = v10;
    v15 = [(objc_class *)v11 performReadTransactionWithHealthDatabase:v13 context:databaseTransactionContext error:a4 block:v21];

    v16 = v22;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __73__HDDataEntityEnumerator_enumerateIncludingDeletedObjects_error_handler___block_invoke;
    v24[3] = &unk_278621698;
    v25 = v10;
    v15 = [(HDDataEntityEnumerator *)self enumerateWithError:a4 handler:v24];
    v16 = v25;
  }

LABEL_9:
  return v15;
}

uint64_t __73__HDDataEntityEnumerator_enumerateIncludingDeletedObjects_error_handler___block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v31[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) copy];
  v6[80] = 1;
  if ([(HDDataEntityEnumerator *)*(a1 + 32) _prepareDeletedObjectsAndSamplesDescriptor:v6 error:a3])
  {
    v27 = [v5 databaseForEntityClass:*(a1 + 48)];
    v7 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v27 descriptor:v6];
    v8 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v10 = *(a1 + 32);
    v11 = v10[9];
    v12 = [v10 authorizationFilter];
    v13 = [v8 entityEncoderForProfile:WeakRetained transaction:v5 purpose:1 encodingOptions:v11 authorizationFilter:v12];

    v14 = [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
    v31[0] = v14;
    v31[1] = @"type";
    v31[2] = @"external_sync_ids.sid";
    v31[3] = @"external_sync_ids.version";
    v31[4] = @"external_sync_ids.object_code";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
    v16 = [v13 orderedProperties];
    v17 = [v15 arrayByAddingObjectsFromArray:v16];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __73__HDDataEntityEnumerator_enumerateIncludingDeletedObjects_error_handler___block_invoke_3;
    v28[3] = &unk_2786265D0;
    v18 = *(a1 + 40);
    v29 = v13;
    v30 = v18;
    v19 = v13;
    v20 = [v7 enumerateProperties:v17 error:a3 enumerationHandler:v28];
    v21 = [v7 lastSQLStatement];
    v22 = [v21 copy];
    v23 = *(a1 + 32);
    v24 = *(v23 + 152);
    *(v23 + 152) = v22;

    [v19 finish];
  }

  else
  {
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (uint64_t)_prepareDeletedObjectsAndSamplesDescriptor:(__CFString *)a3 error:
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a1)
  {
LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 136) && ([(HDDataEntityEnumerator *)a1 _setOrderingTermsOnDescriptor:v5 error:a3]& 1) == 0)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v36 = *a3;
      }

      else
      {
        v36 = @"<no provided outError>";
      }

      *buf = 138412290;
      v40 = v36;
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Invalid sort descriptor: %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v6 = [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = *(a1 + 88);
  if (v8)
  {
    v9 = HDSampleEntityPredicateForDataTypes(v8);
    [v7 hk_addNonNilObject:v9];
  }

  if ([*(a1 + 112) longLongValue] >= 1)
  {
    v10 = [MEMORY[0x277D10B18] predicateWithProperty:v6 greaterThanValue:*(a1 + 112)];
    [v7 hk_addNonNilObject:v10];
  }

  v37 = v5;
  v11 = *(a1 + 96);
  if (v11)
  {
    v12 = HDDataEntityPredicateForSourceEntitySet(7, v11);
    [v7 hk_addNonNilObject:v12];
  }

  v13 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v7];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [a1 entityClass];
  v16 = HDDataEntityPredicateForType(1);
  [v14 hk_addNonNilObject:v16];

  v17 = [a1 predicate];
  [v14 hk_addNonNilObject:v17];

  if ((*(a1 + 81) & 1) == 0)
  {
    v18 = [v15 additionalPredicateForEnumeration];
    [v14 hk_addNonNilObject:v18];
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v21 = [v19 predicateWithProfile:WeakRetained];
    [v14 hk_addNonNilObject:v21];
  }

  v22 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = HDDataEntityPredicateForType(2);
  [v23 hk_addNonNilObject:v24];

  if ([*(a1 + 120) longLongValue] >= 1)
  {
    v25 = [MEMORY[0x277D10B18] predicateWithProperty:v6 greaterThanValue:*(a1 + 120)];
    [v23 hk_addNonNilObject:v25];
  }

  [v23 hk_addNonNilObject:*(a1 + 128)];
  v26 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v23];
  v27 = MEMORY[0x277D10B70];
  v28 = MEMORY[0x277D10B20];
  v38[0] = v22;
  v38[1] = v26;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v30 = [v28 predicateMatchingAnyPredicates:v29];
  v31 = [v27 compoundPredicateWithPredicate:v13 otherPredicate:v30];

  v5 = v37;
  [v37 setPredicate:v31];

  v32 = 1;
LABEL_19:

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __73__HDDataEntityEnumerator_enumerateIncludingDeletedObjects_error_handler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = HDSQLiteColumnAsInt64();
  if (HDSQLiteColumnAsInt64() == 2)
  {
    v8 = HDSQLiteColumnWithNameAsUUID();
    v9 = HDSQLiteColumnWithNameAsString();
    v10 = HDSQLiteColumnWithNameAsNumber();
    v11 = [MEMORY[0x277CCD2E0] _metadataWithSyncIdentifier:v9 syncVersion:v10];
    v12 = [MEMORY[0x277CCD2E0] _deletedObjectWithUUID:v8 metadata:v11];
    if (v12)
    {
      LOBYTE(a4) = (*(*(a1 + 40) + 16))();
    }

    if (v12)
    {
      return a4 & 1;
    }
  }

  else
  {
    v13 = [*(a1 + 32) objectForPersistentID:v7 row:a3 error:a4];
    if (v13)
    {
      v14 = v13;
      v15 = (*(*(a1 + 40) + 16))();

      return v15;
    }
  }

  LOBYTE(a4) = 1;
  return a4 & 1;
}

- (BOOL)enumerateSampleTimesIncludingDeletedObjects:(BOOL)a3 error:(id *)a4 handler:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (!a4)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"outError != NULL"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];

    v15 = 0;
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11 = [(HDSQLiteQueryDescriptor *)self entityClass];
  if (!v11)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HDDataEntityEnumerator.m" lineNumber:215 description:{@"Querying with a nil entity class %@. You're about to be sad. Did you forget to implement -hd_dataEntityClass or an extension in HKObject+HDExtensions?", self}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [WeakRetained database];
  databaseTransactionContext = self->_databaseTransactionContext;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HDDataEntityEnumerator_enumerateSampleTimesIncludingDeletedObjects_error_handler___block_invoke;
  v20[3] = &unk_278629C80;
  v23 = a3;
  v20[4] = self;
  v22 = v11;
  v21 = v10;
  v15 = [(objc_class *)v11 performReadTransactionWithHealthDatabase:v13 context:databaseTransactionContext error:a4 block:v20];

LABEL_6:
  return v15;
}

uint64_t __84__HDDataEntityEnumerator_enumerateSampleTimesIncludingDeletedObjects_error_handler___block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) copy];
  v7 = *(a1 + 32);
  if (*(a1 + 56) != 1)
  {
    if ([(HDDataEntityEnumerator *)v7 _prepareDescriptor:v6 error:a3])
    {
      goto LABEL_5;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  if (![(HDDataEntityEnumerator *)v7 _prepareDeletedObjectsAndSamplesDescriptor:v6 error:a3])
  {
    goto LABEL_6;
  }

  v6[80] = 1;
LABEL_5:
  v8 = [v5 databaseForEntityClass:*(a1 + 48)];
  v9 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v8 descriptor:v6];
  v10 = [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
  v21[0] = v10;
  v21[1] = @"start_date";
  v21[2] = @"end_date";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__HDDataEntityEnumerator_enumerateSampleTimesIncludingDeletedObjects_error_handler___block_invoke_2;
  v19[3] = &unk_2786145A8;
  v20 = *(a1 + 40);
  v12 = [v9 enumerateProperties:v11 error:a3 enumerationHandler:v19];
  v13 = [v9 lastSQLStatement];
  v14 = [v13 copy];
  v15 = *(a1 + 32);
  v16 = *(v15 + 152);
  *(v15 + 152) = v14;

LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (uint64_t)_prepareDescriptor:(__CFString *)a3 error:
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [a1 entityClass];
    v7 = [a1 predicate];
    v8 = *(a1 + 88);
    if (v8)
    {
      v9 = MEMORY[0x277D10B20];
      v10 = HDSampleEntityPredicateForDataTypes(v8);
      v11 = [v9 compoundPredicateWithPredicate:v10 otherPredicate:v7];

      v7 = v11;
    }

    if ([*(a1 + 112) longLongValue] >= 1)
    {
      v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_id" greaterThanValue:*(a1 + 112)];
      v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v7 otherPredicate:v12];

      v7 = v13;
    }

    v14 = *(a1 + 160);
    if (v14)
    {
      v15 = MEMORY[0x277D10B20];
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v17 = [v14 predicateWithProfile:WeakRetained];
      v18 = [v15 compoundPredicateWithPredicate:v7 otherPredicate:v17];

      v7 = v18;
    }

    v19 = [v6 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:v7];

    v20 = *(a1 + 96);
    if (v20)
    {
      v21 = HDDataEntityPredicateForSourceEntitySet(7, v20);
      v22 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v21 otherPredicate:v19];

      v19 = v22;
    }

    if ((*(a1 + 81) & 1) == 0)
    {
      v23 = MEMORY[0x277D10B70];
      v24 = [v6 additionalPredicateForEnumeration];
      v25 = [v23 compoundPredicateWithPredicate:v24 otherPredicate:v19];

      v19 = v25;
    }

    if (*(a1 + 136) && ([(HDDataEntityEnumerator *)a1 _setOrderingTermsOnDescriptor:v5 error:a3]& 1) == 0)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        if (a3)
        {
          v33 = *a3;
        }

        else
        {
          v33 = @"<no provided outError>";
        }

        *buf = 138543362;
        v36 = v33;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Invalid sort descriptor: %{public}@", buf, 0xCu);
      }

      v28 = 0;
    }

    else
    {
      [v5 setPredicate:v19];
      if ([a1 improveJoinOrderingForStartDateIndexSelection])
      {
        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v27 = objc_opt_class();
        do
        {
          [v26 addObject:v27];
          v27 = [v27 superclass];
        }

        while (([v27 isSubclassOfClass:objc_opt_class()] & 1) != 0);
        [v5 setPreferredEntityJoinOrder:v26];
      }

      v28 = 1;
    }

    v34 = v28;

    v30 = v34;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t __84__HDDataEntityEnumerator_enumerateSampleTimesIncludingDeletedObjects_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HDSQLiteColumnAsInt64();
  if (MEMORY[0x22AAC6CD0](a3, 1))
  {
    v5 = 2.22507386e-308;
  }

  else
  {
    v5 = MEMORY[0x22AAC6C50](a3, 1);
  }

  if (MEMORY[0x22AAC6CD0](a3, 2))
  {
    v7.n128_u64[0] = 0x10000000000000;
  }

  else
  {
    v7.n128_u64[0] = MEMORY[0x22AAC6C50](a3, 2);
  }

  v8 = *(*(a1 + 32) + 16);
  v6.n128_f64[0] = v5;

  return v8(v6, v7);
}

- (uint64_t)_setOrderingTermsOnDescriptor:(uint64_t)a3 error:
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [a1 entityClass];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a1 + 136);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v6 orderingTermForSortDescriptor:v12];
        if (!v13)
        {
          v16 = MEMORY[0x277CCA9B8];
          v17 = [v12 key];
          [v16 hk_assignError:a3 code:3 format:{@"%@ is not a valid sort key for samples of type %@", v17, *(a1 + 88)}];

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v5 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [v4 setOrderingTerms:v5];
  v15 = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __81__HDDataEntityEnumerator__enumerateObjectsWithDatabaseTransaction_error_handler___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = HKWithAutoreleasePool();

  return v2;
}

uint64_t __81__HDDataEntityEnumerator__enumerateObjectsWithDatabaseTransaction_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForPersistentID:*(a1 + 48) row:*(a1 + 56) error:a2];
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_joinClauseForProperties:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_useLeftJoin)
  {
    v5 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
    v6 = [v5 mutableCopy];

    v7 = objc_alloc(MEMORY[0x277CBEB58]);
    v8 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
    v9 = [v7 initWithObjects:{v8, 0}];

    v10 = [(HDSQLiteQueryDescriptor *)self entityClass];
    if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]&& v10 != objc_opt_class())
    {
      do
      {
        if ([(objc_class *)v10 isBackedByTable])
        {
          v11 = [(objc_class *)v10 disambiguatedDatabaseTable];
          [v9 addObject:v11];

          v12 = [(objc_class *)v10 disambiguatedDatabaseTable];
          [v6 appendFormat:@" LEFT JOIN %@ USING(%@)", v12, @"data_id"];
        }

        v10 = [(objc_class *)v10 superclass];
      }

      while (v10 != objc_opt_class());
    }

    v13 = [(HDSQLiteQueryDescriptor *)self entityClass];
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = [(objc_class *)v13 joinClausesForProperty:@"data_provenances.source_id"];
    [v14 unionSet:v15];

    v16 = [(HDSQLiteQueryDescriptor *)self predicate];
    v17 = [v16 SQLJoinClausesForEntityClass:v13];
    [v14 unionSet:v17];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v4;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(objc_class *)v13 joinClausesForProperty:*(*(&v39 + 1) + 8 * i)];
          if (v23)
          {
            [v14 unionSet:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v20);
    }

    v38.receiver = self;
    v38.super_class = HDDataEntityEnumerator;
    v24 = [(HDSQLiteQueryDescriptor *)&v38 _sortedJoinClauses:v14 preferredOrder:0 baseTables:v9];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v34 + 1) + 8 * j) SQLJoinClause];
          [v6 appendFormat:@" %@", v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v26);
    }

    v4 = v32;
  }

  else
  {
    v33.receiver = self;
    v33.super_class = HDDataEntityEnumerator;
    v6 = [(HDSQLiteQueryDescriptor *)&v33 _joinClauseForProperties:v4];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v6;
}

@end