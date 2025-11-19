@interface HDConcreteInternalContentDatabaseManager
+ (BOOL)followRelationshipsWithTypes:(id)a3 startingIdentifier:(id)a4 options:(unint64_t)a5 ontologyTransaction:(id)a6 conceptOut:(id *)a7 deletedRelationshipVersionOut:(int64_t *)a8 error:(id *)a9;
+ (BOOL)grouperConceptForOntologyConcept:(id)a3 ontologyTransaction:(id)a4 grouperConceptOut:(id *)a5 error:(id *)a6;
+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 localizedEducationContentOut:(id *)a5 error:(id *)a6;
+ (id)relationshipsForConceptWithIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (int64_t)doesConceptGroupOtherConcepts:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
- (BOOL)contentDatabaseIsAvailable;
- (BOOL)grouperConceptForOntologyConcept:(id)a3 grouperConceptOut:(id *)a4 error:(id *)a5;
- (BOOL)performTransactionWithDatabaseTransaction:(id)a3 error:(id *)a4 transactionHandler:(id)a5;
- (BOOL)performTransactionWithError:(id *)a3 transactionHandler:(id)a4;
- (HDConcreteInternalContentDatabaseManager)init;
- (HDConcreteInternalContentDatabaseManager)initWithProfile:(id)a3;
- (id)_backingStore;
- (id)conceptForCodingCollection:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)conceptForIdentifier:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)conceptForIdentifier:(id)a3 options:(unint64_t)a4 transaction:(id)a5 error:(id *)a6;
- (id)conceptsForIdentifiers:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)conceptsForIdentifiers:(id)a3 options:(unint64_t)a4 transaction:(id)a5 error:(id *)a6;
- (id)ontologyContentVersionWithError:(id *)a3;
- (id)relationshipsForConceptWithIdentifier:(id)a3 error:(id *)a4;
- (void)addContentDatabaseAvailabilityObserver:(id)a3;
- (void)ontologyBackingStore:(id)a3 didBecomeAvailable:(BOOL)a4;
- (void)ontologyShardImporter:(id)a3 didImportEntry:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDConcreteInternalContentDatabaseManager

- (HDConcreteInternalContentDatabaseManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDConcreteInternalContentDatabaseManager)initWithProfile:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HDConcreteInternalContentDatabaseManager;
  v5 = [(HDConcreteInternalContentDatabaseManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogHealthOntology();
    v9 = [v7 initWithName:@"HDContentDatabaseAvailabilityObserver" loggingCategory:v8];
    contentDatabaseAvailabilityObservers = v6->_contentDatabaseAvailabilityObservers;
    v6->_contentDatabaseAvailabilityObservers = v9;

    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = HKLogHealthOntology();
    v13 = [v11 initWithName:@"HDOntologyContentShardImportObserver" loggingCategory:v12];
    ontologyContentShardImportObservers = v6->_ontologyContentShardImportObservers;
    v6->_ontologyContentShardImportObservers = v13;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 ontologyUpdateCoordinator];
  v6 = [v5 importer];
  [v6 addOntologyShardImporterObserver:self queue:0];
}

- (BOOL)contentDatabaseIsAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained ontologyDatabase];
  v4 = [v3 isAvailable];

  return v4;
}

- (void)addContentDatabaseAvailabilityObserver:(id)a3
{
  v5 = a3;
  v4 = [(HDConcreteInternalContentDatabaseManager *)self _backingStore];
  [v4 registerConcreteInternalContentDatabaseManager:self];

  [(HKObserverSet *)self->_contentDatabaseAvailabilityObservers registerObserver:v5];
}

- (BOOL)performTransactionWithError:(id *)a3 transactionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained ontologyDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HDConcreteInternalContentDatabaseManager_performTransactionWithError_transactionHandler___block_invoke;
  v11[3] = &unk_2796B8940;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 performTransactionWithError:a3 transactionHandler:v11];

  return a3;
}

- (BOOL)performTransactionWithDatabaseTransaction:(id)a3 error:(id *)a4 transactionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [WeakRetained ontologyDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__HDConcreteInternalContentDatabaseManager_performTransactionWithDatabaseTransaction_error_transactionHandler___block_invoke;
  v14[3] = &unk_2796B8940;
  v15 = v8;
  v12 = v8;
  LOBYTE(a4) = [v11 performTransactionWithDatabaseTransaction:v9 error:a4 transactionHandler:v14];

  return a4;
}

- (id)ontologyContentVersionWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained ontologyDatabase];
  v6 = [v5 ontologyContentVersionWithError:a3];

  return v6;
}

- (id)conceptForIdentifier:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained ontologyConceptManager];
  v11 = [v10 conceptForIdentifier:v8 options:a4 error:a5];

  return v11;
}

- (id)conceptForIdentifier:(id)a3 options:(unint64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = [WeakRetained ontologyConceptManager];
    v14 = [v13 conceptForIdentifier:v10 options:a4 transaction:v11 error:a6];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 format:{@"[%@] Argument provided is an instance of class %@ and not a genuine ontology transaction.", self, objc_opt_class()}];
    v14 = 0;
  }

  return v14;
}

- (id)conceptsForIdentifiers:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [WeakRetained ontologyConceptManager];
  v11 = [v10 conceptsForIdentifiers:v8 options:a4 error:a5];

  return v11;
}

- (id)conceptsForIdentifiers:(id)a3 options:(unint64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = [WeakRetained ontologyConceptManager];
    v14 = [v13 conceptsForIdentifiers:v10 options:a4 transaction:v11 error:a6];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", self, objc_opt_class()}];
    v14 = 0;
  }

  return v14;
}

- (id)conceptForCodingCollection:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [HDOntologyConceptManager conceptForCodingCollection:v9 configuration:v8 profile:WeakRetained error:a5];

  return v11;
}

+ (id)relationshipsForConceptWithIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 profile];
  v9 = [HDOntologyConceptManager relationshipsForConceptWithIdentifier:v7 profile:v8 error:a5];

  return v9;
}

- (id)relationshipsForConceptWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDOntologyConceptManager relationshipsForConceptWithIdentifier:v6 profile:WeakRetained error:a4];

  return v8;
}

+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 localizedEducationContentOut:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [HDOntologyEducationContentProvider localizedEducationContentForConceptWithIdentifier:v10 ontologyTransaction:v11 localizedEducationContentOut:a5 error:a6];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();

    [v13 hk_assignError:a6 code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", a1, v14}];
    v12 = 0;
  }

  return v12;
}

- (BOOL)grouperConceptForOntologyConcept:(id)a3 grouperConceptOut:(id *)a4 error:(id *)a5
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HDConcreteInternalContentDatabaseManager_grouperConceptForOntologyConcept_grouperConceptOut_error___block_invoke;
  v12[3] = &unk_2796B8968;
  v12[4] = self;
  v8 = v20;
  v13 = v8;
  v14 = &v15;
  v9 = [(HDConcreteInternalContentDatabaseManager *)self performTransactionWithError:a5 transactionHandler:v12];
  v10 = !v9;
  if (!a4)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    *a4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __101__HDConcreteInternalContentDatabaseManager_grouperConceptForOntologyConcept_grouperConceptOut_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = objc_opt_class();
  v8 = a1[5];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 grouperConceptForOntologyConcept:v8 ontologyTransaction:v6 grouperConceptOut:&obj error:a3];

  objc_storeStrong((v9 + 40), obj);
  return v10;
}

+ (BOOL)grouperConceptForOntologyConcept:(id)a3 ontologyTransaction:(id)a4 grouperConceptOut:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = v10;
    v12 = [v26 identifier];
    v13 = [HDOntologyConceptManager predicateMatchingConceptsWithRelationshipType:1013 withSubjectId:v12];

    v14 = +[HDOntologyConceptManager predicateToExcludeSentinel];
    v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v13 otherPredicate:v14];
    v16 = *MEMORY[0x277D10C08];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __121__HDConcreteInternalContentDatabaseManager_grouperConceptForOntologyConcept_ontologyTransaction_grouperConceptOut_error___block_invoke;
    v20[3] = &unk_2796B8990;
    v20[4] = &v21;
    v17 = [HDOntologyConceptManager enumerateConceptsMatchingPredicate:v15 options:4 limit:v16 transaction:v11 error:a6 enumerationHandler:v20];
    v18 = !v17;
    if (!a5)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      *a5 = v22[5];
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", a1, objc_opt_class()}];
    v17 = 0;
  }

  return v17;
}

+ (int64_t)doesConceptGroupOtherConcepts:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 identifier];
    v11 = [HDOntologyConceptManager predicateMatchingConceptsWithRelationshipType:1013 withObjectId:v10];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __100__HDConcreteInternalContentDatabaseManager_doesConceptGroupOtherConcepts_ontologyTransaction_error___block_invoke;
    v14[3] = &unk_2796B8990;
    v14[4] = &v15;
    if ([HDOntologyConceptManager enumerateConceptsMatchingPredicate:v11 options:4 limit:1 transaction:v9 error:a5 enumerationHandler:v14])
    {
      if (*(v16 + 24))
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", a1, objc_opt_class()}];
    v12 = 0;
  }

  return v12;
}

+ (BOOL)followRelationshipsWithTypes:(id)a3 startingIdentifier:(id)a4 options:(unint64_t)a5 ontologyTransaction:(id)a6 conceptOut:(id *)a7 deletedRelationshipVersionOut:(int64_t *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [HDOntologyConceptManager followRelationshipsWithTypes:v15 startingIdentifier:v16 options:a5 ontologyTransaction:v17 conceptOut:a7 deletedRelationshipVersionOut:a8 error:a9];
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = objc_opt_class();

    [v19 hk_assignError:a9 code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", a1, v20}];
    v18 = 0;
  }

  return v18;
}

- (void)ontologyShardImporter:(id)a3 didImportEntry:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 schemaType];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCC630]];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      v11 = 138543874;
      v12 = self;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      v16 = [v5 availableVersion];
      _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: imported ontology shard with identifier %{public}@ and available version %ld", &v11, 0x20u);
    }

    [(HKObserverSet *)self->_ontologyContentShardImportObservers notifyObservers:&__block_literal_global];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ontologyBackingStore:(id)a3 didBecomeAvailable:(BOOL)a4
{
  contentDatabaseAvailabilityObservers = self->_contentDatabaseAvailabilityObservers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__HDConcreteInternalContentDatabaseManager_ontologyBackingStore_didBecomeAvailable___block_invoke;
  v5[3] = &__block_descriptor_33_e49_v16__0___HDContentDatabaseAvailabilityObserver__8l;
  v6 = a4;
  [(HKObserverSet *)contentDatabaseAvailabilityObservers notifyObservers:v5];
}

- (id)_backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained daemon];
  v4 = [v3 ontologyBackingStore];

  return v4;
}

@end