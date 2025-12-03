@interface HDOntologyConceptManager
+ (BOOL)_conceptRelationshipFromGraphRelationship:(void *)relationship relationshipOut:(uint64_t)out options:(void *)options transaction:(uint64_t)transaction error:;
+ (BOOL)_inflateRelationshipsIfPossibleForConcept:(unint64_t)concept maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:;
+ (BOOL)enumerateConceptsMatchingPredicate:(id)predicate options:(unint64_t)options limit:(unint64_t)limit transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateConceptsMatchingPredicate:(id)predicate profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateRelationshipsMatchingPredicate:(id)predicate options:(unint64_t)options transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)followRelationshipsWithTypes:(id)types startingIdentifier:(id)identifier options:(unint64_t)options ontologyTransaction:(id)transaction conceptOut:(id *)out deletedRelationshipVersionOut:(int64_t *)versionOut error:(id *)error;
+ (id)_adHocConceptForCodingCollection:(uint64_t)collection options:(void *)options transaction:(void *)transaction error:;
+ (id)_attributesPredicateForAttributeTypes:(uint64_t)types;
+ (id)_conceptForNode:(void *)node attributesPredicate:(void *)predicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:;
+ (id)_conceptFromGraphNode:(unint64_t)node options:(void *)options transaction:(uint64_t)transaction error:;
+ (id)_findConceptForCoding:(unint64_t)coding options:(void *)options transaction:(uint64_t)transaction error:;
+ (id)_relationshipPredicateForRelationshipTypes:(uint64_t)types;
+ (id)_relationshipsForConceptWithIdentifier:(unint64_t)identifier options:(void *)options transaction:(uint64_t)transaction error:;
+ (id)_resolveMercuryConceptForCodings:(void *)codings configuration:(void *)configuration transaction:(void *)transaction error:;
+ (id)_subgraphPopulatedRelationshipForRelationship:(uint64_t)relationship maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:;
+ (id)conceptForCodingCollection:(id)collection configuration:(id)configuration profile:(id)profile error:(id *)error;
+ (id)inflateGraphWithRootConceptsPredicate:(id)predicate limit:(int64_t)limit maximumDepth:(int64_t)depth attributeTypes:(id)types relationshipTypes:(id)relationshipTypes ontologyTransaction:(id)transaction error:(id *)error;
+ (id)predicateForConceptsFollowingRelationshipOfTypes:(id)types fromSubjectId:(id)id;
+ (id)predicateForRelationshipsWithTypes:(id)types onConceptId:(id)id;
+ (id)predicateMatchingConceptWithID:(id)d;
+ (id)predicateMatchingConceptsWithAttributeType:(int64_t)type beingsWithAttributeValue:(id)value;
+ (id)predicateMatchingConceptsWithAttributeType:(int64_t)type likeAttributeValue:(id)value;
+ (id)predicateMatchingConceptsWithRelationshipType:(int64_t)type withObjectId:(id)id;
+ (id)predicateMatchingConceptsWithRelationshipType:(int64_t)type withSubjectId:(id)id;
+ (id)predicateMatchingRelationshipsWithSubjectId:(id)id relationshipType:(int64_t)type;
+ (id)predicateToExcludeSentinel;
+ (id)relationshipsForConceptWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (uint64_t)_conceptWithIdentifier:(unint64_t)identifier options:(void *)options transaction:(void *)transaction conceptOut:(uint64_t)out error:;
+ (uint64_t)_consistentGrouperForConcept:(uint64_t *)concept grouperIDInOut:(void *)out transaction:(uint64_t)transaction error:;
+ (uint64_t)_enumerateAttributesForNode:(void *)node attributesPredicate:(void *)predicate ontologyTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_enumerateConceptsWithIdentifiers:(unint64_t)identifiers options:(void *)options transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_enumerateDatabaseRelationshipsForConcept:(void *)concept relationshipsPredicate:(void *)predicate ontologyTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_enumerateRelationshipsForConcept:(uint64_t)concept maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_grouperConceptIDForConcept:(void *)concept transaction:(uint64_t)transaction error:;
+ (uint64_t)_inflateConcept:(void *)concept rootNode:(unint64_t)node maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:;
+ (uint64_t)_prioritizedSystemIdentifiersForConfiguration:(uint64_t)configuration;
+ (uint64_t)_priorityComparisionForConfiguration:(void *)configuration resolvedConcept:(void *)concept resolvedConceptCode:(void *)code newConcept:(void *)newConcept newConceptCode:;
+ (void)_inflateGraphWithRootConceptsPredicate:(uint64_t)predicate limit:(uint64_t)limit maximumDepth:(void *)depth attributeTypes:(void *)types relationshipTypes:(void *)relationshipTypes ontologyTransaction:(uint64_t)transaction error:;
+ (void)_subgraphPopulatedRelationshipsForConcept:(uint64_t)concept maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:;
- (BOOL)unitTesting_attributeIdentifierByCodingSystemURNMapIsReady;
- (HDOntologyConceptManager)init;
- (HDOntologyConceptManager)initWithProfile:(id)profile;
- (id)attributeIdentifierForCodingSystem:(id)system;
- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options error:(id *)error;
- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options transaction:(id)transaction error:(id *)error;
- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options error:(id *)error;
- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options transaction:(id)transaction error:(id *)error;
- (void)_populateAttributeIdentifierMap;
- (void)_resetAttributeIdentifierMap;
- (void)daemonReady:(id)ready;
- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry;
@end

@implementation HDOntologyConceptManager

- (HDOntologyConceptManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyConceptManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = HDOntologyConceptManager;
  v5 = [(HDOntologyConceptManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277D106C0]);
    v8 = [(HDOntologyConceptManager *)v6 hk_classNameWithTag:@"concepts"];
    v9 = [v7 initWithName:v8 cacheScope:1];
    conceptsByIdentifier = v6->_conceptsByIdentifier;
    v6->_conceptsByIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attributeIdentifierByCodingSystemURN = v6->_attributeIdentifierByCodingSystemURN;
    v6->_attributeIdentifierByCodingSystemURN = v11;

    v6->_attributeIdentifierByCodingSystemURNLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerForDaemonReady:v6];
  }

  return v6;
}

- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = MEMORY[0x277CBEA60];
  identifierCopy2 = identifier;
  v10 = [v8 arrayWithObjects:&identifierCopy count:1];

  v11 = [(HDOntologyConceptManager *)self conceptsForIdentifiers:v10 options:options error:error, identifierCopy, v16];
  firstObject = [v11 firstObject];

  v13 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)conceptForIdentifier:(id)identifier options:(unint64_t)options transaction:(id)transaction error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  identifierCopy2 = identifier;
  v13 = [v10 arrayWithObjects:&identifierCopy count:1];

  v14 = [(HDOntologyConceptManager *)self conceptsForIdentifiers:v13 options:options transaction:transactionCopy error:error, identifierCopy, v19];

  firstObject = [v14 firstObject];

  v16 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options error:(id *)error
{
  identifiersCopy = identifiers;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  ontologyDatabase = [WeakRetained ontologyDatabase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HDOntologyConceptManager_conceptsForIdentifiers_options_error___block_invoke;
  v15[3] = &unk_2796B9140;
  v17 = &v19;
  v15[4] = self;
  v11 = identifiersCopy;
  v16 = v11;
  optionsCopy = options;
  LODWORD(error) = [ontologyDatabase performTransactionWithError:error transactionHandler:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __65__HDOntologyConceptManager_conceptsForIdentifiers_options_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) conceptsForIdentifiers:*(a1 + 40) options:*(a1 + 56) transaction:a2 error:a3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)conceptsForIdentifiers:(id)identifiers options:(unint64_t)options transaction:(id)transaction error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  transactionCopy = transaction;
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v66;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v66 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v65 + 1) + 8 * i);
        conceptsByIdentifier = self->_conceptsByIdentifier;
        databaseTransaction = [transactionCopy databaseTransaction];
        optionsCopy = options;
        v64 = 0;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __77__HDOntologyConceptManager_conceptsForIdentifiers_options_transaction_error___block_invoke;
        v61[3] = &unk_2796B9168;
        v61[4] = v15;
        v62 = transactionCopy;
        v18 = [(HDDatabaseValueCache *)conceptsByIdentifier fetchObjectForKey:v15 transaction:databaseTransaction error:&v64 faultHandler:v61];
        v19 = v64;

        if (v18)
        {
          [obj addObject:v18];
        }

        else if (v19)
        {
          if (error)
          {
            v42 = v19;
            *error = v19;
          }

          else
          {
            _HKLogDroppedError();
          }

          v43 = obj;

          v44 = 0;
          goto LABEL_38;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (options)
  {
    v47 = v10;
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v22 = obj;
    v23 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v58;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v57 + 1) + 8 * j);
          if ((options & ~[v27 options]) != 0)
          {
            v28 = v21;
          }

          else
          {
            v28 = v20;
          }

          [v28 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v24);
    }

    v29 = v20;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = v21;
    v30 = [obja countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v54;
      while (2)
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v54 != v32)
          {
            objc_enumerationMutation(obja);
          }

          v34 = *(*(&v53 + 1) + 8 * k);
          identifier = [v34 identifier];
          v52 = 0;
          v36 = [HDOntologyConceptManager _conceptWithIdentifier:identifier options:options transaction:transactionCopy conceptOut:&v52 error:error];
          v37 = v52;

          if (!v36)
          {

            v43 = v29;
            v44 = 0;
            v10 = v47;
            goto LABEL_38;
          }

          [v29 hk_addNonNilObject:v37];
          v38 = self->_conceptsByIdentifier;
          identifier2 = [v34 identifier];
          databaseTransaction2 = [transactionCopy databaseTransaction];
          [(HDDatabaseValueCache *)v38 setObject:v37 forKey:identifier2 transaction:databaseTransaction2];
        }

        v31 = [obja countByEnumeratingWithState:&v53 objects:v69 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    v41 = v29;
    v10 = v47;
  }

  else
  {
    v41 = obj;
  }

  v43 = v41;
  v44 = v43;
LABEL_38:

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

void *__77__HDOntologyConceptManager_conceptsForIdentifiers_options_transaction_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v13 = 0;
  v7 = [HDOntologyConceptManager _conceptWithIdentifier:v6 options:v4 transaction:v5 conceptOut:&v13 error:a3];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

+ (uint64_t)_conceptWithIdentifier:(unint64_t)identifier options:(void *)options transaction:(void *)transaction conceptOut:(uint64_t)out error:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  optionsCopy = options;
  v12 = objc_opt_self();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v24[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HDOntologyConceptManager__conceptWithIdentifier_options_transaction_conceptOut_error___block_invoke;
  v17[3] = &unk_2796B8990;
  v17[4] = &v18;
  v14 = [(HDOntologyConceptManager *)v12 _enumerateConceptsWithIdentifiers:v13 options:identifier transaction:optionsCopy error:out enumerationHandler:v17];

  if (transaction)
  {
    *transaction = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)conceptForCodingCollection:(id)collection configuration:(id)configuration profile:(id)profile error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  configurationCopy = configuration;
  profileCopy = profile;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3;
  v39 = __Block_byref_object_dispose__3;
  v40 = 0;
  daemon = [profileCopy daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];
  countryCode = [configurationCopy countryCode];
  v16 = [ontologyConfigurationProvider ontologyConfigurationForCountryCode:countryCode];

  database = [profileCopy database];
  contextForWritingProtectedData = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__HDOntologyConceptManager_conceptForCodingCollection_configuration_profile_error___block_invoke;
  v28[3] = &unk_2796B91E0;
  v19 = profileCopy;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  v21 = collectionCopy;
  v31 = v21;
  v33 = &v35;
  v22 = configurationCopy;
  v32 = v22;
  selfCopy = self;
  LOBYTE(error) = [database performTransactionWithContext:contextForWritingProtectedData error:error block:v28 inaccessibilityHandler:0];

  if (error)
  {
    v23 = v36[5];
  }

  else
  {
    _HKInitializeLogging();
    v24 = HKLogHealthOntology();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HKSensitiveLogItem();
      HKSensitiveLogItem();
      objc_claimAutoreleasedReturnValue();
      +[HDOntologyConceptManager conceptForCodingCollection:configuration:profile:error:];
    }

    v23 = 0;
  }

  _Block_object_dispose(&v35, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __83__HDOntologyConceptManager_conceptForCodingCollection_configuration_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 ontologyDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HDOntologyConceptManager_conceptForCodingCollection_configuration_profile_error___block_invoke_2;
  v12[3] = &unk_2796B91B8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v11 = *(a1 + 56);
  v8 = v11;
  v15 = v11;
  v16 = *(a1 + 72);
  v9 = [v7 performTransactionWithDatabaseTransaction:v6 error:a3 transactionHandler:v12];

  return v9;
}

BOOL __83__HDOntologyConceptManager_conceptForCodingCollection_configuration_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) supportedCodingSystems];
  v7 = [*(a1 + 40) codings];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__HDOntologyConceptManager_conceptForCodingCollection_configuration_profile_error___block_invoke_3;
  v23[3] = &unk_2796B9190;
  v8 = v6;
  v24 = v8;
  v9 = [v7 hk_filter:v23];

  v10 = *(a1 + 48);
  v22 = 0;
  v11 = [HDOntologyConceptManager _resolveMercuryConceptForCodings:v9 configuration:v10 transaction:v5 error:&v22];
  v12 = v22;
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v15 = 1;
  }

  else if ([v12 hk_isHealthKitErrorWithCode:118] & 1) != 0 || (objc_msgSend(v12, "hk_isHealthKitErrorWithCode:", 1002))
  {
    v16 = +[HDOntologyConceptManager _adHocConceptForCodingCollection:options:transaction:error:](*(a1 + 64), *(a1 + 40), [*(a1 + 48) options], v5, a3);
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v15 = *(*(*(a1 + 56) + 8) + 40) != 0;
  }

  else
  {
    v19 = v12;
    if (v19)
    {
      if (a3)
      {
        v20 = v19;
        *a3 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  return v15;
}

uint64_t __83__HDOntologyConceptManager_conceptForCodingCollection_configuration_profile_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 codingSystem];
  v4 = [v2 containsObject:v3];

  return v4;
}

+ (id)_resolveMercuryConceptForCodings:(void *)codings configuration:(void *)configuration transaction:(void *)transaction error:
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a2;
  codingsCopy = codings;
  configurationCopy = configuration;
  v10 = objc_opt_self();
  v50 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v12)
  {

    v41 = 0;
    v15 = configurationCopy;
    goto LABEL_24;
  }

  v13 = v12;
  transactionCopy = transaction;
  v40 = 0;
  v14 = *v47;
  v15 = configurationCopy;
  v41 = 0;
  v42 = *v47;
  while (2)
  {
    v16 = 0;
    v43 = v13;
    do
    {
      if (*v47 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v46 + 1) + 8 * v16);
      options = [codingsCopy options];
      v45 = 0;
      v19 = [(HDOntologyConceptManager *)v10 _findConceptForCoding:v17 options:options transaction:v15 error:&v45];
      v20 = v45;
      v21 = v20;
      if (v19)
      {
        if ([v19 isNebulous])
        {
          goto LABEL_19;
        }

        v22 = v11;
        validInRegions = [v19 validInRegions];
        v24 = codingsCopy;
        countryCode = [codingsCopy countryCode];
        v26 = [validInRegions containsObject:countryCode];

        if (v26)
        {
          v15 = configurationCopy;
          if (([(HDOntologyConceptManager *)v10 _consistentGrouperForConcept:v19 grouperIDInOut:&v50 transaction:configurationCopy error:transactionCopy]& 1) == 0)
          {
            codingsCopy = v24;
            v38 = v24;
            v11 = v22;
            [MEMORY[0x277CCA9B8] hk_assignError:transactionCopy code:1002 format:{@"Inconsistent grouper concepts encountered. Unable to resolve concept for codings: %@, configuration: %@", v22, v38}];
            goto LABEL_32;
          }

          codingsCopy = v24;
          v27 = [(HDOntologyConceptManager *)v10 _priorityComparisionForConfiguration:v24 resolvedConcept:v40 resolvedConceptCode:v41 newConcept:v19 newConceptCode:v17];
          if (v27 != -1)
          {
            v11 = v22;
            if (!v27)
            {
              [MEMORY[0x277CCA9B8] hk_assignError:transactionCopy code:1002 format:{@"Multiple concepts of equal priority encountered. Unable to resolve concept for codings: %@, configuration: %@", v22, codingsCopy}];
LABEL_32:
              v31 = v40;
LABEL_33:

              v32 = 0;
              goto LABEL_34;
            }

            goto LABEL_18;
          }

          v28 = v19;

          v29 = v17;
          v40 = v28;
          v41 = v29;
        }

        else
        {
          codingsCopy = v24;
        }

        v15 = configurationCopy;
        v11 = v22;
LABEL_18:
        v14 = v42;
        v13 = v43;
        goto LABEL_19;
      }

      if (([v20 hk_isObjectNotFoundError] & 1) == 0)
      {
        v33 = v21;
        v34 = v33;
        v31 = v40;
        if (v33)
        {
          if (transactionCopy)
          {
            v35 = v33;
            *transactionCopy = v34;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_33;
      }

LABEL_19:

      ++v16;
    }

    while (v13 != v16);
    v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  transaction = transactionCopy;
  v30 = v40;
  if (!v40)
  {
LABEL_24:
    [MEMORY[0x277CCA9B8] hk_assignError:transaction code:118 format:{@"Unable to find valid concept for codings: %@, configuration: %@", v11, codingsCopy}];
    v30 = 0;
  }

  v31 = v30;
  v32 = v31;
LABEL_34:

  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)_adHocConceptForCodingCollection:(uint64_t)collection options:(void *)options transaction:(void *)transaction error:
{
  v8 = a2;
  optionsCopy = options;
  objc_opt_self();
  profile = [optionsCopy profile];

  v19 = 0;
  v11 = [MEMORY[0x277D10590] adHocConceptForCodingCollection:v8 options:collection profile:profile error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  if ([v12 hk_isHealthKitErrorWithCode:118])
  {
    v14 = [MEMORY[0x277D10590] generateAdHocConceptForCodingCollection:v8 options:collection profile:profile error:transaction];
    goto LABEL_5;
  }

  v17 = v13;
  if (v17)
  {
    if (transaction)
    {
      v18 = v17;
      *transaction = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v15 = 0;
LABEL_6:

  return v15;
}

+ (id)relationshipsForConceptWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  ontologyDatabase = [profileCopy ontologyDatabase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDOntologyConceptManager_relationshipsForConceptWithIdentifier_profile_error___block_invoke;
  v15[3] = &unk_2796B9208;
  v17 = &v19;
  selfCopy = self;
  v11 = identifierCopy;
  v16 = v11;
  LODWORD(error) = [ontologyDatabase performTransactionWithError:error transactionHandler:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

BOOL __80__HDOntologyConceptManager_relationshipsForConceptWithIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDOntologyConceptManager *)*(a1 + 48) _relationshipsForConceptWithIdentifier:0 options:a2 transaction:a3 error:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)_relationshipsForConceptWithIdentifier:(unint64_t)identifier options:(void *)options transaction:(uint64_t)transaction error:
{
  optionsCopy = options;
  v9 = a2;
  v10 = objc_opt_self();
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = (identifier >> 3) & 1;
  graphDatabase = [optionsCopy graphDatabase];
  rawIdentifier = [v9 rawIdentifier];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __93__HDOntologyConceptManager__relationshipsForConceptWithIdentifier_options_transaction_error___block_invoke;
  v22 = &unk_2796B9398;
  v25 = v10;
  identifierCopy = identifier;
  v23 = optionsCopy;
  v15 = v11;
  v24 = v15;
  v16 = optionsCopy;
  LODWORD(transaction) = [graphDatabase enumerateRelationshipsWithSubjectID:rawIdentifier includeDeleted:v12 error:transaction enumerationHandler:&v19];

  if (transaction)
  {
    v17 = [v15 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)enumerateRelationshipsMatchingPredicate:(id)predicate options:(unint64_t)options transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  v14 = (options >> 3) & 1;
  predicateCopy = predicate;
  graphDatabase = [transactionCopy graphDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __113__HDOntologyConceptManager_enumerateRelationshipsMatchingPredicate_options_transaction_error_enumerationHandler___block_invoke;
  v20[3] = &unk_2796B9230;
  selfCopy = self;
  optionsCopy = options;
  v21 = transactionCopy;
  v22 = handlerCopy;
  v17 = handlerCopy;
  v18 = transactionCopy;
  LOBYTE(error) = [graphDatabase enumerateRelationshipsForPredicate:predicateCopy includeDeleted:v14 error:error enumerationHandler:v20];

  return error;
}

uint64_t __113__HDOntologyConceptManager_enumerateRelationshipsMatchingPredicate_options_transaction_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v4 = [(HDOntologyConceptManager *)*(a1 + 48) _conceptRelationshipFromGraphRelationship:a2 relationshipOut:&v9 options:*(a1 + 56) transaction:*(a1 + 32) error:a3];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_conceptRelationshipFromGraphRelationship:(void *)relationship relationshipOut:(uint64_t)out options:(void *)options transaction:(uint64_t)transaction error:
{
  v10 = a2;
  optionsCopy = options;
  v12 = objc_opt_self();
  graphDatabase = [optionsCopy graphDatabase];
  v14 = [graphDatabase nodeForID:objc_msgSend(v10 error:{"objectID"), transaction}];

  if (v14)
  {
    if ((out & 2) != 0 || ([v14 isDeleted] & 1) == 0)
    {
      v16 = [(HDOntologyConceptManager *)v12 _conceptFromGraphNode:v14 options:out & 0xFFFFFFFFFFFFFFFELL transaction:optionsCopy error:transaction];
      v15 = v16 != 0;
      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x277CCD1D8]) initWithType:objc_msgSend(v10 destination:"type") version:v16 deleted:{objc_msgSend(v10, "version"), objc_msgSend(v10, "isDeleted")}];
        if (relationship)
        {
          v17 = v17;
          *relationship = v17;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)enumerateConceptsMatchingPredicate:(id)predicate profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  ontologyDatabase = [profile ontologyDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__HDOntologyConceptManager_enumerateConceptsMatchingPredicate_profile_error_enumerationHandler___block_invoke;
  v16[3] = &unk_2796B9258;
  v18 = handlerCopy;
  selfCopy = self;
  v17 = predicateCopy;
  v13 = handlerCopy;
  v14 = predicateCopy;
  LOBYTE(error) = [ontologyDatabase performTransactionWithError:error transactionHandler:v16];

  return error;
}

+ (BOOL)enumerateConceptsMatchingPredicate:(id)predicate options:(unint64_t)options limit:(unint64_t)limit transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  v15 = (options >> 1) & 1;
  predicateCopy = predicate;
  graphDatabase = [transactionCopy graphDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__HDOntologyConceptManager_enumerateConceptsMatchingPredicate_options_limit_transaction_error_enumerationHandler___block_invoke;
  v21[3] = &unk_2796B9280;
  v23 = handlerCopy;
  optionsCopy = options;
  v22 = transactionCopy;
  v18 = handlerCopy;
  v19 = transactionCopy;
  LOBYTE(error) = [graphDatabase enumerateNodesForPredicate:predicateCopy includeDeleted:v15 limit:limit error:error enumerationHandler:v21];

  return error;
}

uint64_t __114__HDOntologyConceptManager_enumerateConceptsMatchingPredicate_options_limit_transaction_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [HDOntologyConceptManager _conceptFromGraphNode:a2 options:*(a1 + 48) transaction:*(a1 + 32) error:a3];
  v5 = (*(*(a1 + 40) + 16))();

  return v5;
}

+ (id)_conceptFromGraphNode:(unint64_t)node options:(void *)options transaction:(uint64_t)transaction error:
{
  v8 = a2;
  optionsCopy = options;
  v10 = objc_opt_self();
  if (!v8)
  {
    +[HDOntologyConceptManager _conceptFromGraphNode:options:transaction:error:];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  graphDatabase = [optionsCopy graphDatabase];
  rowID = [v8 rowID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HDOntologyConceptManager__conceptFromGraphNode_options_transaction_error___block_invoke;
  v20[3] = &unk_2796B9320;
  v14 = v11;
  v21 = v14;
  v15 = [graphDatabase enumerateAttributesForNodeWithID:rowID includeDeleted:(node >> 2) & 1 error:transaction enumerationHandler:v20];

  if (!v15)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v16 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:{objc_msgSend(v8, "rowID")}];
  if (node)
  {
    v17 = [(HDOntologyConceptManager *)v10 _relationshipsForConceptWithIdentifier:v16 options:node transaction:optionsCopy error:transaction];
    if (!v17)
    {
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_alloc(MEMORY[0x277CCD1B0]) initWithIdentifier:v16 attributes:v14 relationships:v17 version:objc_msgSend(v8 deleted:"version") options:{objc_msgSend(v8, "isDeleted"), node}];

LABEL_9:
LABEL_10:

  return v18;
}

+ (BOOL)followRelationshipsWithTypes:(id)types startingIdentifier:(id)identifier options:(unint64_t)options ontologyTransaction:(id)transaction conceptOut:(id *)out deletedRelationshipVersionOut:(int64_t *)versionOut error:(id *)error
{
  outCopy = out;
  v45 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  identifierCopy = identifier;
  transactionCopy = transaction;
  if (![typesCopy count])
  {
    +[HDOntologyConceptManager followRelationshipsWithTypes:startingIdentifier:options:ontologyTransaction:conceptOut:deletedRelationshipVersionOut:error:];
  }

  v27 = identifierCopy;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = typesCopy;
  v13 = 0;
  v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = *v41;
    v16 = v27;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = +[HDOntologyConceptManager predicateMatchingRelationshipsWithSubjectId:relationshipType:](HDOntologyConceptManager, "predicateMatchingRelationshipsWithSubjectId:relationshipType:", v16, [*(*(&v40 + 1) + 8 * v17) integerValue]);
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__3;
      v38 = __Block_byref_object_dispose__3;
      v39 = 0;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __151__HDOntologyConceptManager_followRelationshipsWithTypes_startingIdentifier_options_ontologyTransaction_conceptOut_deletedRelationshipVersionOut_error___block_invoke;
      v33[3] = &unk_2796B92A8;
      v33[4] = &v34;
      if ([HDOntologyConceptManager enumerateRelationshipsMatchingPredicate:v18 options:options & 0xFFFFFFFFFFFFFFFELL transaction:transactionCopy error:error enumerationHandler:v33])
      {
        v19 = v35[5];
        if (!v19)
        {
          goto LABEL_14;
        }

        if (![v19 isDeleted])
        {
          destination = [v35[5] destination];

          identifier = [destination identifier];

          v20 = 1;
          v16 = identifier;
          v13 = destination;
          goto LABEL_17;
        }

        if (versionOut)
        {
          v20 = 0;
          *versionOut = [v35[5] version];
        }

        else
        {
LABEL_14:
          v20 = 0;
        }

        v30 = 1;
      }

      else
      {
        v30 = 0;
        v20 = 0;
      }

LABEL_17:
      _Block_object_dispose(&v34, 8);

      if (!v20)
      {

        goto LABEL_26;
      }

      if (v14 == ++v17)
      {
        v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }
  }

  v16 = v27;
LABEL_23:

  if (outCopy)
  {
    v23 = v13;
    *outCopy = v13;
  }

  v30 = 1;
LABEL_26:

  v24 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

+ (id)inflateGraphWithRootConceptsPredicate:(id)predicate limit:(int64_t)limit maximumDepth:(int64_t)depth attributeTypes:(id)types relationshipTypes:(id)relationshipTypes ontologyTransaction:(id)transaction error:(id *)error
{
  predicateCopy = predicate;
  typesCopy = types;
  relationshipTypesCopy = relationshipTypes;
  transactionCopy = transaction;
  if (limit < 0)
  {
    +[HDOntologyConceptManager inflateGraphWithRootConceptsPredicate:limit:maximumDepth:attributeTypes:relationshipTypes:ontologyTransaction:error:];
    if ((depth & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((depth & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  +[HDOntologyConceptManager inflateGraphWithRootConceptsPredicate:limit:maximumDepth:attributeTypes:relationshipTypes:ontologyTransaction:error:];
LABEL_3:
  v19 = [(HDOntologyConceptManager *)self _inflateGraphWithRootConceptsPredicate:predicateCopy limit:limit maximumDepth:depth attributeTypes:typesCopy relationshipTypes:relationshipTypesCopy ontologyTransaction:transactionCopy error:error];

  return v19;
}

+ (void)_inflateGraphWithRootConceptsPredicate:(uint64_t)predicate limit:(uint64_t)limit maximumDepth:(void *)depth attributeTypes:(void *)types relationshipTypes:(void *)relationshipTypes ontologyTransaction:(uint64_t)transaction error:
{
  relationshipTypesCopy = relationshipTypes;
  typesCopy = types;
  depthCopy = depth;
  v16 = a2;
  v17 = objc_opt_self();
  v18 = [(HDOntologyConceptManager *)v17 _attributesPredicateForAttributeTypes:depthCopy];

  v19 = [(HDOntologyConceptManager *)v17 _relationshipPredicateForRelationshipTypes:typesCopy];

  v20 = objc_alloc_init(_HDOntologyGraphInflationCache);
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  graphDatabase = [relationshipTypesCopy graphDatabase];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __145__HDOntologyConceptManager__inflateGraphWithRootConceptsPredicate_limit_maximumDepth_attributeTypes_relationshipTypes_ontologyTransaction_error___block_invoke;
  v32[3] = &unk_2796B93C0;
  v38 = v17;
  limitCopy = limit;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = relationshipTypesCopy;
  v37 = v21;
  v23 = v21;
  v24 = relationshipTypesCopy;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  LODWORD(v21) = [graphDatabase enumerateNodesForPredicate:v16 includeDeleted:0 limit:predicate error:transaction enumerationHandler:v32];

  if (v21)
  {
    v28 = v23;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

+ (id)predicateMatchingConceptWithID:(id)d
{
  rawIdentifier = [d rawIdentifier];

  return HDSimpleGraphDatabaseNodeEntityPredicateForIdentifier(rawIdentifier, 1);
}

+ (id)predicateMatchingConceptsWithRelationshipType:(int64_t)type withSubjectId:(id)id
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B20];
  v6 = HDSimpleGraphDatabaseNodeEntityPredicateForNodesRelatedToSubjectID([id rawIdentifier]);
  v12[0] = v6;
  v7 = HDSimpleGraphDatabaseNodeEntityPredicateForNodesWithRelationshipType(type);
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v5 predicateMatchingAllPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)predicateMatchingConceptsWithRelationshipType:(int64_t)type withObjectId:(id)id
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B20];
  v6 = HDSimpleGraphDatabaseNodeEntityPredicateForNodesRelatedToObjectID([id rawIdentifier]);
  v12[0] = v6;
  v7 = HDSimpleGraphDatabaseNodeEntityPredicateForNodesWithRelationshipType(type);
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v5 predicateMatchingAllPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)predicateMatchingRelationshipsWithSubjectId:(id)id relationshipType:(int64_t)type
{
  rawIdentifier = [id rawIdentifier];

  return HDSimpleGraphRelationshipEntityPredicateForSubject(rawIdentifier, type);
}

+ (id)predicateMatchingConceptsWithAttributeType:(int64_t)type likeAttributeValue:(id)value
{
  value = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%@%%", value];
  v5 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeType(960, 1);
  v6 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeValue(value, 8);
  v7 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v6];

  return v7;
}

+ (id)predicateMatchingConceptsWithAttributeType:(int64_t)type beingsWithAttributeValue:(id)value
{
  value = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%%", value];
  v5 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeType(960, 1);
  v6 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeValue(value, 8);
  v7 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:v6];

  return v7;
}

+ (id)predicateForConceptsFollowingRelationshipOfTypes:(id)types fromSubjectId:(id)id
{
  idCopy = id;
  typesCopy = types;
  v7 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity disambiguatedSQLForProperty:@"relationship_type"];
  v8 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity disambiguatedSQLForProperty:@"subject_id"];
  v9 = [MEMORY[0x277D10B28] containsPredicateWithProperty:v7 values:typesCopy];

  v10 = MEMORY[0x277D10B18];
  numberRepresentation = [idCopy numberRepresentation];

  v12 = [v10 predicateWithProperty:v8 equalToValue:numberRepresentation];

  v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v9 otherPredicate:v12];

  return v13;
}

+ (id)predicateForRelationshipsWithTypes:(id)types onConceptId:(id)id
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B20];
  typesCopy = types;
  v7 = HDSimpleGraphRelationshipEntityPredicateForSubjectID([id rawIdentifier]);
  v13[0] = v7;
  v8 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"relationship_type" values:typesCopy];

  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v5 predicateMatchingAllPredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)predicateToExcludeSentinel
{
  v2 = MEMORY[0x277D10B18];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:204];
  v4 = [v2 predicateWithProperty:@"rowid" notEqualToValue:v3];

  return v4;
}

+ (id)_findConceptForCoding:(unint64_t)coding options:(void *)options transaction:(uint64_t)transaction error:
{
  v8 = a2;
  optionsCopy = options;
  v10 = objc_opt_self();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  profile = [optionsCopy profile];
  ontologyConceptManager = [profile ontologyConceptManager];
  codingSystem = [v8 codingSystem];
  v14 = [ontologyConceptManager attributeIdentifierForCodingSystem:codingSystem];

  if (v14)
  {
    longLongValue = [v14 longLongValue];
    code = [v8 code];
    v17 = HDSimpleGraphDatabaseNodeEntityPredicateForAttribute(longLongValue, code);

    graphDatabase = [optionsCopy graphDatabase];
    v19 = *MEMORY[0x277D10C08];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__HDOntologyConceptManager__findConceptForCoding_options_transaction_error___block_invoke;
    v27[3] = &unk_2796B92D0;
    v27[4] = &v28;
    v20 = [graphDatabase enumerateNodesForPredicate:v17 includeDeleted:(coding >> 1) & 1 limit:v19 error:transaction enumerationHandler:v27];

    if (v20)
    {
      v21 = v29[5];
      if (v21)
      {
        v22 = [(HDOntologyConceptManager *)v10 _conceptFromGraphNode:v21 options:coding transaction:optionsCopy error:transaction];
        goto LABEL_8;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = HKSensitiveLogItem();
      [v24 hk_assignError:transaction code:118 format:{@"Failed to find concept for coding %@.", v25}];
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v17 = HKSensitiveLogItem();
    [v23 hk_assignError:transaction code:118 format:{@"Failed to find concept for coding %@ (attribute identifier not found).", v17}];
  }

  v22 = 0;
LABEL_8:

  _Block_object_dispose(&v28, 8);

  return v22;
}

+ (uint64_t)_consistentGrouperForConcept:(uint64_t *)concept grouperIDInOut:(void *)out transaction:(uint64_t)transaction error:
{
  outCopy = out;
  v9 = a2;
  v10 = objc_opt_self();
  v11 = [(HDOntologyConceptManager *)v10 _grouperConceptIDForConcept:v9 transaction:outCopy error:transaction];

  if (!v11)
  {
    return 0;
  }

  if (*concept)
  {
    if (v11 != *concept)
    {
      return 0;
    }
  }

  else
  {
    *concept = v11;
  }

  return 1;
}

+ (uint64_t)_priorityComparisionForConfiguration:(void *)configuration resolvedConcept:(void *)concept resolvedConceptCode:(void *)code newConcept:(void *)newConcept newConceptCode:
{
  v10 = a2;
  configurationCopy = configuration;
  conceptCopy = concept;
  codeCopy = code;
  newConceptCopy = newConcept;
  v15 = objc_opt_self();
  v16 = -1;
  if (configurationCopy && conceptCopy)
  {
    v17 = v15;
    if ([codeCopy isEqual:configurationCopy])
    {
      v16 = 1;
    }

    else
    {
      v18 = [(HDOntologyConceptManager *)v17 _prioritizedSystemIdentifiersForConfiguration:v10];
      codingSystem = [conceptCopy codingSystem];
      identifier = [codingSystem identifier];
      [v18 indexOfObject:identifier];

      codingSystem2 = [newConceptCopy codingSystem];
      identifier2 = [codingSystem2 identifier];
      [v18 indexOfObject:identifier2];

      v23 = HKCompareIntegers();
      if (v23)
      {
        v16 = v23;
      }

      else
      {
        preferredName = [configurationCopy preferredName];
        [preferredName length];
        preferredName2 = [codeCopy preferredName];
        [preferredName2 length];
        v16 = HKCompareIntegers();

        if (!v16)
        {
          identifier3 = [codeCopy identifier];
          [identifier3 rawIdentifier];
          identifier4 = [configurationCopy identifier];
          [identifier4 rawIdentifier];
          v16 = HKCompareIntegers();
        }
      }
    }
  }

  return v16;
}

+ (uint64_t)_grouperConceptIDForConcept:(void *)concept transaction:(uint64_t)transaction error:
{
  v6 = a2;
  conceptCopy = concept;
  objc_opt_self();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = MEMORY[0x277D10B70];
  v9 = MEMORY[0x277D10B18];
  identifier = [v6 identifier];
  numberRepresentation = [identifier numberRepresentation];
  v12 = [v9 predicateWithProperty:@"subject_id" equalToValue:numberRepresentation];
  v13 = HDSimpleGraphRelationshipEntityPredicateForRelationshipType(1013);
  v14 = [v8 compoundPredicateWithPredicate:v12 otherPredicate:v13];

  graphDatabase = [conceptCopy graphDatabase];
  underlyingDatabase = [graphDatabase underlyingDatabase];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HDOntologyConceptManager__grouperConceptIDForConcept_transaction_error___block_invoke;
  v19[3] = &unk_2796B92F8;
  v19[4] = &v20;
  LOBYTE(transaction) = [HDSimpleGraphDatabaseRelationshipEntity enumerateRelationshipsWithPredicate:v14 skipDeleted:1 database:underlyingDatabase error:transaction enumerationHandler:v19];

  if (transaction)
  {
    v17 = v21[3];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v20, 8);
  return v17;
}

+ (uint64_t)_prioritizedSystemIdentifiersForConfiguration:(uint64_t)configuration
{
  v2 = a2;
  objc_opt_self();
  recordCategoryType = [v2 recordCategoryType];

  if ((recordCategoryType - 1) > 9)
  {
    return MEMORY[0x277CBEBF8];
  }

  else
  {
    return qword_2796B9480[recordCategoryType - 1];
  }
}

uint64_t __76__HDOntologyConceptManager__conceptFromGraphNode_options_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD1B8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 type];
  v7 = [v4 value];
  v8 = [v4 version];
  v9 = [v4 isDeleted];

  v10 = [v5 initWithType:v6 value:v7 version:v8 deleted:v9];
  [*(a1 + 32) addObject:v10];

  return 1;
}

+ (uint64_t)_enumerateConceptsWithIdentifiers:(unint64_t)identifiers options:(void *)options transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a2;
  optionsCopy = options;
  errorCopy = error;
  v30 = objc_opt_self();
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        isAdHoc = [v18 isAdHoc];
        numberRepresentation = [v18 numberRepresentation];
        if (isAdHoc)
        {
          v21 = v12;
        }

        else
        {
          v21 = v11;
        }

        [v21 addObject:numberRepresentation];
      }

      v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v15);
  }

  if (![v12 count])
  {
    goto LABEL_20;
  }

  v22 = MEMORY[0x277D10590];
  profile = [optionsCopy profile];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __107__HDOntologyConceptManager__enumerateConceptsWithIdentifiers_options_transaction_error_enumerationHandler___block_invoke;
  v39[3] = &unk_2796B9348;
  v40 = errorCopy;
  LODWORD(v22) = [v22 enumerateAdHocConceptWithRawIdentifiers:v12 options:identifiers profile:profile error:transaction enumerationHandler:v39];

  if (!v22)
  {
    v27 = 0;
  }

  else
  {
LABEL_20:
    if ([v11 count])
    {
      graphDatabase = [optionsCopy graphDatabase];
      v25 = HDSimpleGraphDatabaseNodeEntityPredicateForIdentifiers(v11);
      v26 = *MEMORY[0x277D10C08];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __107__HDOntologyConceptManager__enumerateConceptsWithIdentifiers_options_transaction_error_enumerationHandler___block_invoke_2;
      v34[3] = &unk_2796B9370;
      v37 = v31;
      identifiersCopy = identifiers;
      v35 = optionsCopy;
      v36 = errorCopy;
      v27 = [graphDatabase enumerateNodesForPredicate:v25 includeDeleted:(identifiers >> 1) & 1 limit:v26 error:transaction enumerationHandler:v34];
    }

    else
    {
      v27 = 1;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t __107__HDOntologyConceptManager__enumerateConceptsWithIdentifiers_options_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDOntologyConceptManager *)*(a1 + 48) _conceptFromGraphNode:a2 options:*(a1 + 56) transaction:*(a1 + 32) error:a3];
  if (v4)
  {
    v5 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __93__HDOntologyConceptManager__relationshipsForConceptWithIdentifier_options_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = 0;
  v4 = [(HDOntologyConceptManager *)*(a1 + 48) _conceptRelationshipFromGraphRelationship:a2 relationshipOut:&v7 options:*(a1 + 56) transaction:*(a1 + 32) error:a3];
  v5 = v7;
  if (v4)
  {
    [*(a1 + 40) hk_addNonNilObject:v5];
  }

  return v4;
}

+ (id)_attributesPredicateForAttributeTypes:(uint64_t)types
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    if ([v2 count])
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__HDOntologyConceptManager__attributesPredicateForAttributeTypes___block_invoke;
      v7[3] = &unk_2796B93E8;
      v8 = v3;
      v4 = v3;
      [v2 enumerateIntegersUsingBlock:v7];
      falsePredicate = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"attribute_type" values:v4];
    }

    else
    {
      falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

  else
  {
    falsePredicate = 0;
  }

  return falsePredicate;
}

+ (id)_relationshipPredicateForRelationshipTypes:(uint64_t)types
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    if ([v2 count])
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __71__HDOntologyConceptManager__relationshipPredicateForRelationshipTypes___block_invoke;
      v7[3] = &unk_2796B93E8;
      v8 = v3;
      v4 = v3;
      [v2 enumerateIntegersUsingBlock:v7];
      falsePredicate = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"relationship_type" values:v4];
    }

    else
    {
      falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

  else
  {
    falsePredicate = 0;
  }

  return falsePredicate;
}

uint64_t __145__HDOntologyConceptManager__inflateGraphWithRootConceptsPredicate_limit_maximumDepth_attributeTypes_relationshipTypes_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13 = 0;
  v10 = [(HDOntologyConceptManager *)v4 _inflateConcept:a2 rootNode:v5 maximumDepth:v6 attributesPredicate:v7 relationshipsPredicate:v8 cache:v9 ontologyTransaction:a3 error:?];
  v11 = v13;
  if (v10)
  {
    [*(a1 + 64) hk_addNonNilObject:v11];
  }

  return v10;
}

+ (uint64_t)_inflateConcept:(void *)concept rootNode:(unint64_t)node maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:
{
  depthCopy = depth;
  predicateCopy = predicate;
  relationshipsPredicateCopy = relationshipsPredicate;
  cacheCopy = cache;
  conceptCopy = concept;
  v20 = objc_opt_self();
  v21 = [(HDOntologyConceptManager *)v20 _conceptForNode:conceptCopy attributesPredicate:depthCopy cache:relationshipsPredicateCopy ontologyTransaction:cacheCopy error:transaction];

  if (v21)
  {
    v24 = [(HDOntologyConceptManager *)v20 _inflateRelationshipsIfPossibleForConcept:v21 maximumDepth:node attributesPredicate:depthCopy relationshipsPredicate:predicateCopy cache:relationshipsPredicateCopy ontologyTransaction:cacheCopy error:transaction];
    v22 = v24;
    if (a2 && v24)
    {
      v25 = v21;
      *a2 = v21;
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __66__HDOntologyConceptManager__attributesPredicateForAttributeTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 addObject:v3];
}

void __71__HDOntologyConceptManager__relationshipPredicateForRelationshipTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 addObject:v3];
}

+ (void)_subgraphPopulatedRelationshipsForConcept:(uint64_t)concept maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:
{
  cacheCopy = cache;
  relationshipsPredicateCopy = relationshipsPredicate;
  predicateCopy = predicate;
  depthCopy = depth;
  v18 = a2;
  v19 = objc_opt_self();
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __158__HDOntologyConceptManager__subgraphPopulatedRelationshipsForConcept_maximumDepth_attributesPredicate_relationshipsPredicate_cache_ontologyTransaction_error___block_invoke;
  v25[3] = &unk_2796B9410;
  v26 = v20;
  v21 = v20;
  LODWORD(transaction) = [(HDOntologyConceptManager *)v19 _enumerateRelationshipsForConcept:v18 maximumDepth:concept attributesPredicate:depthCopy relationshipsPredicate:predicateCopy cache:relationshipsPredicateCopy ontologyTransaction:cacheCopy error:transaction enumerationHandler:v25];

  if (transaction)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v22;
}

uint64_t __96__HDOntologyConceptManager__conceptForNode_attributesPredicate_cache_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD1B8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 type];
  v7 = [v4 value];
  v8 = [v4 version];
  v9 = [v4 isDeleted];

  v10 = [v5 initWithType:v6 value:v7 version:v8 deleted:v9];
  [*(a1 + 32) addObject:v10];

  return 1;
}

+ (uint64_t)_enumerateAttributesForNode:(void *)node attributesPredicate:(void *)predicate ontologyTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  v24[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  nodeCopy = node;
  predicateCopy = predicate;
  errorCopy = error;
  objc_opt_self();
  if (nodeCopy)
  {
    v14 = MEMORY[0x277D10B20];
    v15 = HDSimpleGraphAttributeEntityPredicateForNodeID([v10 rowID], 1);
    v24[0] = v15;
    v24[1] = nodeCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    graphDatabase2 = [v14 predicateMatchingAllPredicates:v16];

    graphDatabase = [predicateCopy graphDatabase];
    underlyingDatabase = [graphDatabase underlyingDatabase];
    v20 = [HDSimpleGraphDatabaseAttributeEntity enumerateAttributesWithPredicate:graphDatabase2 skipDeleted:1 database:underlyingDatabase error:transaction enumerationHandler:errorCopy];
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];

    if (!falsePredicate)
    {
      v20 = 1;
      goto LABEL_6;
    }

    graphDatabase2 = [predicateCopy graphDatabase];
    v20 = [graphDatabase2 enumerateAttributesForNodeWithID:objc_msgSend(v10 error:"rowID") enumerationHandler:{transaction, errorCopy}];
  }

LABEL_6:
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (uint64_t)_enumerateRelationshipsForConcept:(uint64_t)concept maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  v60 = *MEMORY[0x277D85DE8];
  v13 = a2;
  depthCopy = depth;
  predicateCopy = predicate;
  relationshipsPredicateCopy = relationshipsPredicate;
  cacheCopy = cache;
  errorCopy = error;
  v19 = objc_opt_self();
  relationships = [v13 relationships];
  v21 = [relationships count];

  if (v21)
  {
    v22 = errorCopy;
    v23 = v19;
    v24 = v13;
    v25 = v22;
    v26 = relationshipsPredicateCopy;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    relationships2 = [v24 relationships];
    v28 = [relationships2 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v28)
    {
      v29 = v28;
      v43 = cacheCopy;
      v44 = v26;
      v41 = v25;
      v42 = predicateCopy;
      v30 = *v56;
      v40 = v24;
      conceptCopy2 = concept;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(relationships2);
          }

          v33 = *(*(&v55 + 1) + 8 * i);
          destination = [v33 destination];
          v35 = depthCopy;
          v36 = [(HDOntologyConceptManager *)v23 _inflateRelationshipsIfPossibleForConcept:destination maximumDepth:conceptCopy2 attributesPredicate:depthCopy relationshipsPredicate:v42 cache:v44 ontologyTransaction:v43 error:transaction];

          if (!v36 || !v41[2](v41, v33, transaction))
          {
            v37 = 0;
            v24 = v40;
            depthCopy = v35;
            goto LABEL_14;
          }

          depthCopy = v35;
          conceptCopy2 = concept;
        }

        v29 = [relationships2 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }

      v37 = 1;
      v24 = v40;
LABEL_14:
      predicateCopy = v42;
      cacheCopy = v43;
      v26 = v44;
      errorCopy = v41;
    }

    else
    {
      v37 = 1;
      errorCopy = v25;
    }
  }

  else
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __169__HDOntologyConceptManager__enumerateRelationshipsForConcept_maximumDepth_attributesPredicate_relationshipsPredicate_cache_ontologyTransaction_error_enumerationHandler___block_invoke;
    v47[3] = &unk_2796B9438;
    v53 = v19;
    conceptCopy3 = concept;
    v48 = depthCopy;
    v49 = predicateCopy;
    v26 = relationshipsPredicateCopy;
    v50 = relationshipsPredicateCopy;
    v51 = cacheCopy;
    v52 = errorCopy;
    v37 = [(HDOntologyConceptManager *)v19 _enumerateDatabaseRelationshipsForConcept:v13 relationshipsPredicate:v49 ontologyTransaction:v51 error:transaction enumerationHandler:v47];

    relationships2 = v48;
    v24 = v13;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t __169__HDOntologyConceptManager__enumerateRelationshipsForConcept_maximumDepth_attributesPredicate_relationshipsPredicate_cache_ontologyTransaction_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDOntologyConceptManager *)*(a1 + 72) _subgraphPopulatedRelationshipForRelationship:a2 maximumDepth:*(a1 + 80) attributesPredicate:*(a1 + 32) relationshipsPredicate:*(a1 + 40) cache:*(a1 + 48) ontologyTransaction:*(a1 + 56) error:a3];
  if (v4)
  {
    v5 = (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_subgraphPopulatedRelationshipForRelationship:(uint64_t)relationship maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:
{
  v14 = a2;
  depthCopy = depth;
  predicateCopy = predicate;
  relationshipsPredicateCopy = relationshipsPredicate;
  cacheCopy = cache;
  v19 = objc_opt_self();
  graphDatabase = [cacheCopy graphDatabase];
  v21 = [graphDatabase nodeForID:objc_msgSend(v14 error:{"objectID"), transaction}];

  if (v21)
  {
    v36 = 0;
    v22 = [(HDOntologyConceptManager *)v19 _inflateConcept:v21 rootNode:relationship maximumDepth:depthCopy attributesPredicate:predicateCopy relationshipsPredicate:relationshipsPredicateCopy cache:cacheCopy ontologyTransaction:transaction error:?];
    v23 = v36;
    v24 = v23;
    v25 = 0;
    if (v22)
    {
      if (v23)
      {
        if (relationshipsPredicateCopy)
        {
          v26 = relationshipsPredicateCopy[2];
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        identifier = [v24 identifier];
        v35 = [v27 containsObject:identifier];

        v29 = objc_alloc(MEMORY[0x277CCD1D8]);
        type = [v14 type];
        version = [v14 version];
        isDeleted = [v14 isDeleted];
        if (v35)
        {
          v33 = [v29 initWithType:type weakDestination:v24 version:version deleted:isDeleted];
        }

        else
        {
          v33 = [v29 initWithType:type destination:v24 version:version deleted:isDeleted];
        }

        v25 = v33;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:transaction code:118 format:{@"No destination found for node %@", v21}];
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (uint64_t)_enumerateDatabaseRelationshipsForConcept:(void *)concept relationshipsPredicate:(void *)predicate ontologyTransaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  v25[2] = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  predicateCopy = predicate;
  errorCopy = error;
  v13 = a2;
  objc_opt_self();
  identifier = [v13 identifier];

  rawIdentifier = [identifier rawIdentifier];
  if (conceptCopy)
  {
    v16 = MEMORY[0x277D10B20];
    v17 = HDSimpleGraphRelationshipEntityPredicateForSubjectID(rawIdentifier);
    v25[0] = v17;
    v25[1] = conceptCopy;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    graphDatabase2 = [v16 predicateMatchingAllPredicates:v18];

    graphDatabase = [predicateCopy graphDatabase];
    v21 = [graphDatabase enumerateRelationshipsForPredicate:graphDatabase2 error:transaction enumerationHandler:errorCopy];
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];

    if (!falsePredicate)
    {
      v21 = 1;
      goto LABEL_6;
    }

    graphDatabase2 = [predicateCopy graphDatabase];
    v21 = [graphDatabase2 enumerateRelationshipsWithSubjectID:rawIdentifier includeDeleted:0 error:transaction enumerationHandler:errorCopy];
  }

LABEL_6:
  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)attributeIdentifierForCodingSystem:(id)system
{
  v22 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  if (!systemCopy)
  {
    [HDOntologyConceptManager attributeIdentifierForCodingSystem:];
  }

  os_unfair_lock_lock(&self->_attributeIdentifierByCodingSystemURNLock);
  attributeIdentifierByCodingSystemURNIsReady = self->_attributeIdentifierByCodingSystemURNIsReady;
  os_unfair_lock_unlock(&self->_attributeIdentifierByCodingSystemURNLock);
  if (!attributeIdentifierByCodingSystemURNIsReady)
  {
    [(HDOntologyConceptManager *)self _populateAttributeIdentifierMap];
  }

  os_unfair_lock_lock(&self->_attributeIdentifierByCodingSystemURNLock);
  attributeIdentifierByCodingSystemURN = self->_attributeIdentifierByCodingSystemURN;
  identifier = [systemCopy identifier];
  v8 = identifier;
  if (identifier)
  {
    v9 = identifier;
  }

  else
  {
    v9 = &stru_28636E7C8;
  }

  ontology_hasCodingSystemAttributeIdentifier = [(NSMutableDictionary *)attributeIdentifierByCodingSystemURN objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_attributeIdentifierByCodingSystemURNLock);
  if (!ontology_hasCodingSystemAttributeIdentifier)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HKSensitiveLogItem();
      v18 = 138543618;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_2514A1000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: no attribute identifier found for %{public}@", &v18, 0x16u);
    }

    ontology_hasCodingSystemAttributeIdentifier = [systemCopy ontology_hasCodingSystemAttributeIdentifier];
    if (ontology_hasCodingSystemAttributeIdentifier)
    {
      _HKInitializeLogging();
      v13 = HKLogHealthOntology();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HKSensitiveLogItem();
        v18 = 138543618;
        selfCopy2 = self;
        v20 = 2114;
        v21 = v14;
        _os_log_impl(&dword_2514A1000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: attribute identifier found in fallback mapping for coding system %{public}@", &v18, 0x16u);
      }

      v15 = ontology_hasCodingSystemAttributeIdentifier;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return ontology_hasCodingSystemAttributeIdentifier;
}

BOOL __59__HDOntologyConceptManager__populateAttributeIdentifierMap__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDSimpleGraphDatabaseAttributeEntity predicateForAttributesWithType:500];
  v7 = [v5 graphDatabase];

  v8 = [v7 underlyingDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDOntologyConceptManager__populateAttributeIdentifierMap__block_invoke_2;
  v11[3] = &unk_2796B9320;
  v12 = *(a1 + 32);
  v9 = [HDSimpleGraphDatabaseAttributeEntity enumerateAttributesWithPredicate:v6 skipDeleted:1 database:v8 error:a3 enumerationHandler:v11];

  return v9;
}

uint64_t __59__HDOntologyConceptManager__populateAttributeIdentifierMap__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "nodeID")}];
  v6 = *(a1 + 32);
  v7 = [v4 value];

  [v6 setObject:v5 forKeyedSubscript:v7];
  return 1;
}

- (BOOL)unitTesting_attributeIdentifierByCodingSystemURNMapIsReady
{
  os_unfair_lock_lock(&self->_attributeIdentifierByCodingSystemURNLock);
  attributeIdentifierByCodingSystemURNIsReady = self->_attributeIdentifierByCodingSystemURNIsReady;
  os_unfair_lock_unlock(&self->_attributeIdentifierByCodingSystemURNLock);
  return attributeIdentifierByCodingSystemURNIsReady;
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
  importer = [ontologyUpdateCoordinator importer];
  [importer addOntologyShardImporterObserver:self queue:0];
}

- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry
{
  identifier = [entry identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277CCC608]];

  if (v6)
  {
    [HDOntologyConceptManager ontologyShardImporter:? didImportEntry:?];
  }
}

+ (id)_conceptForNode:(void *)node attributesPredicate:(void *)predicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:
{
  v10 = a2;
  nodeCopy = node;
  predicateCopy = predicate;
  cacheCopy = cache;
  v14 = objc_opt_self();
  if (predicateCopy)
  {
    v15 = predicateCopy[1];
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x277CCABB0];
  v17 = v15;
  v18 = [v16 numberWithLongLong:{objc_msgSend(v10, "rowID")}];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__HDOntologyConceptManager__conceptForNode_attributesPredicate_cache_ontologyTransaction_error___block_invoke;
    v32[3] = &unk_2796B9320;
    v22 = v21;
    v33 = v22;
    if ([(HDOntologyConceptManager *)v14 _enumerateAttributesForNode:v10 attributesPredicate:nodeCopy ontologyTransaction:cacheCopy error:transaction enumerationHandler:v32])
    {
      v23 = objc_alloc(MEMORY[0x277CCD1B0]);
      v24 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:{objc_msgSend(v10, "rowID")}];
      version = [v10 version];
      isDeleted = [v10 isDeleted];
      v20 = [v23 initWithIdentifier:v24 attributes:v22 relationships:MEMORY[0x277CBEBF8] version:version deleted:isDeleted options:0];

      if (predicateCopy)
      {
        v27 = predicateCopy[1];
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      identifier = [v20 identifier];
      numberRepresentation = [identifier numberRepresentation];
      [v28 setObject:v20 forKeyedSubscript:numberRepresentation];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (BOOL)_inflateRelationshipsIfPossibleForConcept:(unint64_t)concept maximumDepth:(void *)depth attributesPredicate:(void *)predicate relationshipsPredicate:(void *)relationshipsPredicate cache:(void *)cache ontologyTransaction:(uint64_t)transaction error:
{
  v14 = a2;
  depthCopy = depth;
  predicateCopy = predicate;
  relationshipsPredicateCopy = relationshipsPredicate;
  cacheCopy = cache;
  v19 = objc_opt_self();
  if (relationshipsPredicateCopy)
  {
    v20 = relationshipsPredicateCopy[2];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  identifier = [v14 identifier];
  if ([v21 containsObject:identifier])
  {

LABEL_5:
    v23 = 1;
    goto LABEL_6;
  }

  transactionCopy = transaction;
  if (relationshipsPredicateCopy)
  {
    v24 = relationshipsPredicateCopy[2];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v24 count];

  if (v25 >= concept)
  {
    v23 = 1;
    goto LABEL_18;
  }

  if (relationshipsPredicateCopy)
  {
    v26 = relationshipsPredicateCopy[2];
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  identifier2 = [v14 identifier];
  [v27 addObject:identifier2];

  v21 = [(HDOntologyConceptManager *)v19 _subgraphPopulatedRelationshipsForConcept:v14 maximumDepth:concept attributesPredicate:depthCopy relationshipsPredicate:predicateCopy cache:relationshipsPredicateCopy ontologyTransaction:cacheCopy error:transactionCopy];
  if (relationshipsPredicateCopy)
  {
    v29 = relationshipsPredicateCopy[2];
  }

  else
  {
    v29 = 0;
  }

  [v29 removeLastObject];
  v23 = v21 != 0;
  if (v21)
  {
    if ([v21 count])
    {
      [v14 mutateBySettingRelationships:v21];
    }

    goto LABEL_5;
  }

LABEL_6:

LABEL_18:
  return v23;
}

- (void)_populateAttributeIdentifierMap
{
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = HKLogHealthOntology();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ will now populate the attribute identifier map", buf, 0xCu);
    }

    os_unfair_lock_assert_not_owner((self + 32));
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    WeakRetained = objc_loadWeakRetained((self + 8));
    ontologyDatabase = [WeakRetained ontologyDatabase];
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__HDOntologyConceptManager__populateAttributeIdentifierMap__block_invoke;
    v14 = &unk_2796B9460;
    v6 = v3;
    v15 = v6;
    v7 = [ontologyDatabase performTransactionWithError:&v16 transactionHandler:&v11];
    v8 = v16;

    if (v7)
    {
      os_unfair_lock_lock((self + 32));
      [*(self + 24) removeAllObjects];
      [*(self + 24) addEntriesFromDictionary:v6];
      *(self + 36) = 1;
      os_unfair_lock_unlock((self + 32));
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ did populate the attribute identifier map", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        selfCopy2 = v8;
        _os_log_fault_impl(&dword_2514A1000, v9, OS_LOG_TYPE_FAULT, "HDOntologyConceptManager failed to populate the attribute identifier map. Error: %{public}@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_resetAttributeIdentifierMap
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v2 = *(self + 36);
    *(self + 36) = 0;
    [*(self + 24) removeAllObjects];
    os_unfair_lock_unlock((self + 32));
    v3 = MEMORY[0x253078050](*(self + 40));
    if (v3)
    {
      v4 = v3;
      v3[2](v3, v2);
      v3 = v4;
    }
  }
}

+ (void)conceptForCodingCollection:configuration:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  *v2 = 138412802;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  *(v2 + 22) = 2112;
  *(v2 + 24) = 0;
  _os_log_error_impl(&dword_2514A1000, v6, OS_LOG_TYPE_ERROR, "Error resolving concept for context: %@, country: %@, error: %@", v5, 0x20u);
}

+ (void)_conceptFromGraphNode:options:transaction:error:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"node" object:? file:? lineNumber:? description:?];
}

+ (void)followRelationshipsWithTypes:startingIdentifier:options:ontologyTransaction:conceptOut:deletedRelationshipVersionOut:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"relationshipTypes.count > 0" object:? file:? lineNumber:? description:?];
}

+ (void)inflateGraphWithRootConceptsPredicate:limit:maximumDepth:attributeTypes:relationshipTypes:ontologyTransaction:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"limit >= 0" object:? file:? lineNumber:? description:?];
}

+ (void)inflateGraphWithRootConceptsPredicate:limit:maximumDepth:attributeTypes:relationshipTypes:ontologyTransaction:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"maximumDepth >= 0" object:? file:? lineNumber:? description:?];
}

- (void)attributeIdentifierForCodingSystem:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"codingSystem" object:? file:? lineNumber:? description:?];
}

- (void)ontologyShardImporter:(uint64_t)a1 didImportEntry:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHealthOntology();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = a1;
    _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ got notified that the Universal shard was imported. Will reset attribute identifier map if necessary.", &v4, 0xCu);
  }

  [(HDOntologyConceptManager *)a1 _resetAttributeIdentifierMap];
  v3 = *MEMORY[0x277D85DE8];
}

@end