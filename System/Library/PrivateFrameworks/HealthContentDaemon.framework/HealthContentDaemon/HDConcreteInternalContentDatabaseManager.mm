@interface HDConcreteInternalContentDatabaseManager
+ (BOOL)followRelationshipsWithTypes:(id)types startingIdentifier:(id)identifier options:(unint64_t)options ontologyTransaction:(id)transaction conceptOut:(id *)out deletedRelationshipVersionOut:(int64_t *)versionOut error:(id *)error;
+ (BOOL)grouperConceptForOntologyConcept:(id)concept ontologyTransaction:(id)transaction grouperConceptOut:(id *)out error:(id *)error;
+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction localizedEducationContentOut:(id *)out error:(id *)error;
+ (id)relationshipsForConceptWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error;
+ (int64_t)doesConceptGroupOtherConcepts:(id)concepts ontologyTransaction:(id)transaction error:(id *)error;
- (BOOL)contentDatabaseIsAvailable;
- (BOOL)grouperConceptForOntologyConcept:(id)concept grouperConceptOut:(id *)out error:(id *)error;
- (BOOL)performTransactionWithDatabaseTransaction:(id)transaction error:(id *)error transactionHandler:(id)handler;
- (BOOL)performTransactionWithError:(id *)error transactionHandler:(id)handler;
- (HDConcreteInternalContentDatabaseManager)init;
- (HDConcreteInternalContentDatabaseManager)initWithProfile:(id)profile;
- (id)_backingStore;
- (id)conceptForCodingCollection:(id)collection configuration:(id)configuration error:(id *)error;
- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options error:(id *)error;
- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options transaction:(id)transaction error:(id *)error;
- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options error:(id *)error;
- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options transaction:(id)transaction error:(id *)error;
- (id)ontologyContentVersionWithError:(id *)error;
- (id)relationshipsForConceptWithIdentifier:(id)identifier error:(id *)error;
- (void)addContentDatabaseAvailabilityObserver:(id)observer;
- (void)ontologyBackingStore:(id)store didBecomeAvailable:(BOOL)available;
- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry;
- (void)profileDidBecomeReady:(id)ready;
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

- (HDConcreteInternalContentDatabaseManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v17.receiver = self;
  v17.super_class = HDConcreteInternalContentDatabaseManager;
  v5 = [(HDConcreteInternalContentDatabaseManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
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

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
  importer = [ontologyUpdateCoordinator importer];
  [importer addOntologyShardImporterObserver:self queue:0];
}

- (BOOL)contentDatabaseIsAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyDatabase = [WeakRetained ontologyDatabase];
  isAvailable = [ontologyDatabase isAvailable];

  return isAvailable;
}

- (void)addContentDatabaseAvailabilityObserver:(id)observer
{
  observerCopy = observer;
  _backingStore = [(HDConcreteInternalContentDatabaseManager *)self _backingStore];
  [_backingStore registerConcreteInternalContentDatabaseManager:self];

  [(HKObserverSet *)self->_contentDatabaseAvailabilityObservers registerObserver:observerCopy];
}

- (BOOL)performTransactionWithError:(id *)error transactionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyDatabase = [WeakRetained ontologyDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HDConcreteInternalContentDatabaseManager_performTransactionWithError_transactionHandler___block_invoke;
  v11[3] = &unk_2796B8940;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LOBYTE(error) = [ontologyDatabase performTransactionWithError:error transactionHandler:v11];

  return error;
}

- (BOOL)performTransactionWithDatabaseTransaction:(id)transaction error:(id *)error transactionHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyDatabase = [WeakRetained ontologyDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__HDConcreteInternalContentDatabaseManager_performTransactionWithDatabaseTransaction_error_transactionHandler___block_invoke;
  v14[3] = &unk_2796B8940;
  v15 = handlerCopy;
  v12 = handlerCopy;
  LOBYTE(error) = [ontologyDatabase performTransactionWithDatabaseTransaction:transactionCopy error:error transactionHandler:v14];

  return error;
}

- (id)ontologyContentVersionWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyDatabase = [WeakRetained ontologyDatabase];
  v6 = [ontologyDatabase ontologyContentVersionWithError:error];

  return v6;
}

- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options error:(id *)error
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyConceptManager = [WeakRetained ontologyConceptManager];
  v11 = [ontologyConceptManager conceptForIdentifier:identifierCopy options:options error:error];

  return v11;
}

- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    ontologyConceptManager = [WeakRetained ontologyConceptManager];
    v14 = [ontologyConceptManager conceptForIdentifier:identifierCopy options:options transaction:transactionCopy error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"[%@] Argument provided is an instance of class %@ and not a genuine ontology transaction.", self, objc_opt_class()}];
    v14 = 0;
  }

  return v14;
}

- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options error:(id *)error
{
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyConceptManager = [WeakRetained ontologyConceptManager];
  v11 = [ontologyConceptManager conceptsForIdentifiers:identifiersCopy options:options error:error];

  return v11;
}

- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options transaction:(id)transaction error:(id *)error
{
  identifiersCopy = identifiers;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    ontologyConceptManager = [WeakRetained ontologyConceptManager];
    v14 = [ontologyConceptManager conceptsForIdentifiers:identifiersCopy options:options transaction:transactionCopy error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", self, objc_opt_class()}];
    v14 = 0;
  }

  return v14;
}

- (id)conceptForCodingCollection:(id)collection configuration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  collectionCopy = collection;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [HDOntologyConceptManager conceptForCodingCollection:collectionCopy configuration:configurationCopy profile:WeakRetained error:error];

  return v11;
}

+ (id)relationshipsForConceptWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  profile = [transaction profile];
  v9 = [HDOntologyConceptManager relationshipsForConceptWithIdentifier:identifierCopy profile:profile error:error];

  return v9;
}

- (id)relationshipsForConceptWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDOntologyConceptManager relationshipsForConceptWithIdentifier:identifierCopy profile:WeakRetained error:error];

  return v8;
}

+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction localizedEducationContentOut:(id *)out error:(id *)error
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [HDOntologyEducationContentProvider localizedEducationContentForConceptWithIdentifier:identifierCopy ontologyTransaction:transactionCopy localizedEducationContentOut:out error:error];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();

    [v13 hk_assignError:error code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", self, v14}];
    v12 = 0;
  }

  return v12;
}

- (BOOL)grouperConceptForOntologyConcept:(id)concept grouperConceptOut:(id *)out error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  conceptCopy = concept;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HDConcreteInternalContentDatabaseManager_grouperConceptForOntologyConcept_grouperConceptOut_error___block_invoke;
  v12[3] = &unk_2796B8968;
  v12[4] = self;
  v8 = conceptCopy;
  v13 = v8;
  v14 = &v15;
  v9 = [(HDConcreteInternalContentDatabaseManager *)self performTransactionWithError:error transactionHandler:v12];
  v10 = !v9;
  if (!out)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    *out = v16[5];
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

+ (BOOL)grouperConceptForOntologyConcept:(id)concept ontologyTransaction:(id)transaction grouperConceptOut:(id *)out error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = conceptCopy;
    identifier = [v26 identifier];
    v13 = [HDOntologyConceptManager predicateMatchingConceptsWithRelationshipType:1013 withSubjectId:identifier];

    v14 = +[HDOntologyConceptManager predicateToExcludeSentinel];
    v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v13 otherPredicate:v14];
    v16 = *MEMORY[0x277D10C08];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __121__HDConcreteInternalContentDatabaseManager_grouperConceptForOntologyConcept_ontologyTransaction_grouperConceptOut_error___block_invoke;
    v20[3] = &unk_2796B8990;
    v20[4] = &v21;
    v17 = [HDOntologyConceptManager enumerateConceptsMatchingPredicate:v15 options:4 limit:v16 transaction:transactionCopy error:error enumerationHandler:v20];
    v18 = !v17;
    if (!out)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      *out = v22[5];
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", self, objc_opt_class()}];
    v17 = 0;
  }

  return v17;
}

+ (int64_t)doesConceptGroupOtherConcepts:(id)concepts ontologyTransaction:(id)transaction error:(id *)error
{
  conceptsCopy = concepts;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [conceptsCopy identifier];
    v11 = [HDOntologyConceptManager predicateMatchingConceptsWithRelationshipType:1013 withObjectId:identifier];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __100__HDConcreteInternalContentDatabaseManager_doesConceptGroupOtherConcepts_ontologyTransaction_error___block_invoke;
    v14[3] = &unk_2796B8990;
    v14[4] = &v15;
    if ([HDOntologyConceptManager enumerateConceptsMatchingPredicate:v11 options:4 limit:1 transaction:transactionCopy error:error enumerationHandler:v14])
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
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", self, objc_opt_class()}];
    v12 = 0;
  }

  return v12;
}

+ (BOOL)followRelationshipsWithTypes:(id)types startingIdentifier:(id)identifier options:(unint64_t)options ontologyTransaction:(id)transaction conceptOut:(id *)out deletedRelationshipVersionOut:(int64_t *)versionOut error:(id *)error
{
  typesCopy = types;
  identifierCopy = identifier;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [HDOntologyConceptManager followRelationshipsWithTypes:typesCopy startingIdentifier:identifierCopy options:options ontologyTransaction:transactionCopy conceptOut:out deletedRelationshipVersionOut:versionOut error:error];
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = objc_opt_class();

    [v19 hk_assignError:error code:3 format:{@"[%@] Argument provided of class %@ is not a genuine ontology transaction.", self, v20}];
    v18 = 0;
  }

  return v18;
}

- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry
{
  v17 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  schemaType = [entryCopy schemaType];
  v7 = [schemaType isEqualToString:*MEMORY[0x277CCC630]];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [entryCopy identifier];
      v11 = 138543874;
      selfCopy = self;
      v13 = 2114;
      v14 = identifier;
      v15 = 2048;
      availableVersion = [entryCopy availableVersion];
      _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: imported ontology shard with identifier %{public}@ and available version %ld", &v11, 0x20u);
    }

    [(HKObserverSet *)self->_ontologyContentShardImportObservers notifyObservers:&__block_literal_global];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ontologyBackingStore:(id)store didBecomeAvailable:(BOOL)available
{
  contentDatabaseAvailabilityObservers = self->_contentDatabaseAvailabilityObservers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__HDConcreteInternalContentDatabaseManager_ontologyBackingStore_didBecomeAvailable___block_invoke;
  v5[3] = &__block_descriptor_33_e49_v16__0___HDContentDatabaseAvailabilityObserver__8l;
  availableCopy = available;
  [(HKObserverSet *)contentDatabaseAvailabilityObservers notifyObservers:v5];
}

- (id)_backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  ontologyBackingStore = [daemon ontologyBackingStore];

  return ontologyBackingStore;
}

@end