@interface HDOntologyComponentNameProvider
+ (BOOL)_conceptIdentifiersFollowingFormOfRelationshipForNodeWithIdentifier:(id)identifier ontologyTransaction:(id)transaction conceptIdentifierOut:(id *)out deletedFormOfRelationshipVersionOut:(int64_t *)versionOut error:(id *)error;
+ (id)_componentNamesFromClinicalProductConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction error:(id *)error;
+ (id)_componentNamesFromClinicalProductIdentifiers:(id)identifiers deletedRelationshipVersion:(int64_t)version ontologyTransaction:(id)transaction error:(id *)error;
+ (id)_conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier:(id)identifier ontologyTransaction:(id)transaction maximumComponentDeletedRelationshipVersionOut:(int64_t *)out error:(id *)error;
+ (id)componentNamesForConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction error:(id *)error;
@end

@implementation HDOntologyComponentNameProvider

+ (id)componentNamesForConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  transactionCopy = transaction;
  v10 = *MEMORY[0x277D10398];
  v23 = 0;
  v24 = v10;
  v11 = [self _conceptIdentifiersFollowingFormOfRelationshipForNodeWithIdentifier:identifierCopy ontologyTransaction:transactionCopy conceptIdentifierOut:&v23 deletedFormOfRelationshipVersionOut:&v24 error:error];
  v12 = v23;
  v13 = 0;
  if (v11)
  {
    v22 = v10;
    v14 = [self _conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier:identifierCopy ontologyTransaction:transactionCopy maximumComponentDeletedRelationshipVersionOut:&v22 error:error];
    v15 = v14;
    if (!v14)
    {
      v13 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v16 = v24;
    if (v12)
    {
      v25[0] = v12;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    }

    else
    {
      if (![v14 count])
      {
        v18 = 0;
        goto LABEL_9;
      }

      v17 = v15;
    }

    v18 = v17;
LABEL_9:
    if (v16 == v10)
    {
      v19 = v22;
    }

    else
    {
      v19 = v16;
    }

    v13 = [self _componentNamesFromClinicalProductIdentifiers:v18 deletedRelationshipVersion:v19 ontologyTransaction:transactionCopy error:error];

    goto LABEL_13;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_conceptIdentifiersFollowingFormOfRelationshipForNodeWithIdentifier:(id)identifier ontologyTransaction:(id)transaction conceptIdentifierOut:(id *)out deletedFormOfRelationshipVersionOut:(int64_t *)versionOut error:(id *)error
{
  v12 = 0;
  v8 = [MEMORY[0x277D103B8] followRelationshipsWithTypes:&unk_2863C2CC0 startingIdentifier:identifier options:12 ontologyTransaction:transaction conceptOut:&v12 deletedRelationshipVersionOut:versionOut error:error];
  v9 = v12;
  v10 = v9;
  if (out && v8)
  {
    *out = [v9 identifier];
  }

  return v8;
}

+ (id)_conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier:(id)identifier ontologyTransaction:(id)transaction maximumComponentDeletedRelationshipVersionOut:(int64_t *)out error:(id *)error
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v11 = [MEMORY[0x277D103B8] predicateMatchingRelationshipsWithSubjectId:identifierCopy relationshipType:809];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = *MEMORY[0x277D10398];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v13 = MEMORY[0x277D103B8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __187__HDOntologyComponentNameProvider__conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier_ontologyTransaction_maximumComponentDeletedRelationshipVersionOut_error___block_invoke;
  v18[3] = &unk_2796CE208;
  v20 = &v26;
  v21 = &v22;
  v14 = v12;
  v19 = v14;
  v15 = [v13 enumerateRelationshipsMatchingPredicate:v11 options:8 transaction:transactionCopy error:error enumerationHandler:v18];
  if (out && (v23[3] & 1) != 0)
  {
    *out = v27[3];
  }

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v16;
}

uint64_t __187__HDOntologyComponentNameProvider__conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier_ontologyTransaction_maximumComponentDeletedRelationshipVersionOut_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 isDeleted])
  {
    v4 = [v3 version];

    v5 = *(a1[5] + 8);
    v6 = *(v5 + 24);
    if (v4 > v6)
    {
      v6 = v4;
    }

    *(v5 + 24) = v6;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
    v7 = a1[4];
    v8 = [v3 destination];

    v9 = [v8 identifier];
    [v7 addObject:v9];
  }

  return 1;
}

+ (id)_componentNamesFromClinicalProductIdentifiers:(id)identifiers deletedRelationshipVersion:(int64_t)version ontologyTransaction:(id)transaction error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  transactionCopy = transaction;
  if (identifiersCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = identifiersCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [self _componentNamesFromClinicalProductConceptWithIdentifier:*(*(&v23 + 1) + 8 * i) ontologyTransaction:transactionCopy error:{error, v23}];
          if (!v18)
          {

            v20 = 0;
            goto LABEL_12;
          }

          v19 = v18;
          [v12 addObjectsFromArray:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = v12;
LABEL_12:
  }

  else if (*MEMORY[0x277D10398] == version)
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v20 = [MEMORY[0x277D107D0] nullLocalizedOntologyPreferredNamesWithVersion:version withUserDomainConceptPropertyType:160022];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_componentNamesFromClinicalProductConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction error:(id *)error
{
  v7 = MEMORY[0x277D103B8];
  transactionCopy = transaction;
  v9 = [v7 predicateMatchingRelationshipsWithSubjectId:identifier relationshipType:809];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D103B8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__HDOntologyComponentNameProvider__componentNamesFromClinicalProductConceptWithIdentifier_ontologyTransaction_error___block_invoke;
  v16[3] = &unk_2796CDA58;
  v17 = v10;
  v12 = v10;
  LODWORD(error) = [v11 enumerateRelationshipsMatchingPredicate:v9 options:5 transaction:transactionCopy error:error enumerationHandler:v16];

  if (error)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

uint64_t __117__HDOntologyComponentNameProvider__componentNamesFromClinicalProductConceptWithIdentifier_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D107D0];
  v4 = a2;
  v5 = [v4 destination];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 version];

  v8 = [v6 numberWithLongLong:v7];
  v9 = [v3 localizedOntologyPreferredNamesForConcept:v5 version:v8 withUserDomainConceptPropertyType:160022];

  [*(a1 + 32) addObjectsFromArray:v9];
  return 1;
}

@end