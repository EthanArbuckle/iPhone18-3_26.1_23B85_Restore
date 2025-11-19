@interface HDOntologyComponentNameProvider
+ (BOOL)_conceptIdentifiersFollowingFormOfRelationshipForNodeWithIdentifier:(id)a3 ontologyTransaction:(id)a4 conceptIdentifierOut:(id *)a5 deletedFormOfRelationshipVersionOut:(int64_t *)a6 error:(id *)a7;
+ (id)_componentNamesFromClinicalProductConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
+ (id)_componentNamesFromClinicalProductIdentifiers:(id)a3 deletedRelationshipVersion:(int64_t)a4 ontologyTransaction:(id)a5 error:(id *)a6;
+ (id)_conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier:(id)a3 ontologyTransaction:(id)a4 maximumComponentDeletedRelationshipVersionOut:(int64_t *)a5 error:(id *)a6;
+ (id)componentNamesForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
@end

@implementation HDOntologyComponentNameProvider

+ (id)componentNamesForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277D10398];
  v23 = 0;
  v24 = v10;
  v11 = [a1 _conceptIdentifiersFollowingFormOfRelationshipForNodeWithIdentifier:v8 ontologyTransaction:v9 conceptIdentifierOut:&v23 deletedFormOfRelationshipVersionOut:&v24 error:a5];
  v12 = v23;
  v13 = 0;
  if (v11)
  {
    v22 = v10;
    v14 = [a1 _conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier:v8 ontologyTransaction:v9 maximumComponentDeletedRelationshipVersionOut:&v22 error:a5];
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

    v13 = [a1 _componentNamesFromClinicalProductIdentifiers:v18 deletedRelationshipVersion:v19 ontologyTransaction:v9 error:a5];

    goto LABEL_13;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_conceptIdentifiersFollowingFormOfRelationshipForNodeWithIdentifier:(id)a3 ontologyTransaction:(id)a4 conceptIdentifierOut:(id *)a5 deletedFormOfRelationshipVersionOut:(int64_t *)a6 error:(id *)a7
{
  v12 = 0;
  v8 = [MEMORY[0x277D103B8] followRelationshipsWithTypes:&unk_2863C2CC0 startingIdentifier:a3 options:12 ontologyTransaction:a4 conceptOut:&v12 deletedRelationshipVersionOut:a6 error:a7];
  v9 = v12;
  v10 = v9;
  if (a5 && v8)
  {
    *a5 = [v9 identifier];
  }

  return v8;
}

+ (id)_conceptIdentifiersFollowingMultipleComponentRelationshipsForNodeWithIdentifier:(id)a3 ontologyTransaction:(id)a4 maximumComponentDeletedRelationshipVersionOut:(int64_t *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277D103B8] predicateMatchingRelationshipsWithSubjectId:v9 relationshipType:809];
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
  v15 = [v13 enumerateRelationshipsMatchingPredicate:v11 options:8 transaction:v10 error:a6 enumerationHandler:v18];
  if (a5 && (v23[3] & 1) != 0)
  {
    *a5 = v27[3];
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

+ (id)_componentNamesFromClinicalProductIdentifiers:(id)a3 deletedRelationshipVersion:(int64_t)a4 ontologyTransaction:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v10;
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

          v18 = [a1 _componentNamesFromClinicalProductConceptWithIdentifier:*(*(&v23 + 1) + 8 * i) ontologyTransaction:v11 error:{a6, v23}];
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

  else if (*MEMORY[0x277D10398] == a4)
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v20 = [MEMORY[0x277D107D0] nullLocalizedOntologyPreferredNamesWithVersion:a4 withUserDomainConceptPropertyType:160022];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_componentNamesFromClinicalProductConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D103B8];
  v8 = a4;
  v9 = [v7 predicateMatchingRelationshipsWithSubjectId:a3 relationshipType:809];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D103B8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__HDOntologyComponentNameProvider__componentNamesFromClinicalProductConceptWithIdentifier_ontologyTransaction_error___block_invoke;
  v16[3] = &unk_2796CDA58;
  v17 = v10;
  v12 = v10;
  LODWORD(a5) = [v11 enumerateRelationshipsMatchingPredicate:v9 options:5 transaction:v8 error:a5 enumerationHandler:v16];

  if (a5)
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