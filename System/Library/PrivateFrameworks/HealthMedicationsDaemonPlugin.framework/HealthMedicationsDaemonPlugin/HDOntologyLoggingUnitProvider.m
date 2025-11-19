@interface HDOntologyLoggingUnitProvider
+ (id)_localizedLoggingFormsForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
+ (id)loggingUnitsForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
@end

@implementation HDOntologyLoggingUnitProvider

+ (id)loggingUnitsForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = *MEMORY[0x277D10398];
  v17 = 0;
  v18 = v9;
  v10 = [MEMORY[0x277D103B8] followRelationshipsWithTypes:&unk_2863C2C30 startingIdentifier:a3 options:12 ontologyTransaction:v8 conceptOut:&v17 deletedRelationshipVersionOut:&v18 error:a5];
  v11 = v17;
  v12 = v11;
  v13 = 0;
  if (v10)
  {
    if (v11)
    {
      v14 = [v11 identifier];
      v13 = [a1 _localizedLoggingFormsForConceptWithIdentifier:v14 ontologyTransaction:v8 error:a5];
    }

    else
    {
      if (v18 == v9)
      {
        v13 = MEMORY[0x277CBEBF8];
        goto LABEL_8;
      }

      v14 = [MEMORY[0x277D107D0] nullLocalizedOntologyLoggingUnitsWithVersion:v18 withUserDomainConceptPropertyType:160018];
      v15 = [MEMORY[0x277D107D0] nullLocalizedOntologyLoggingUnitsWithVersion:v18 withUserDomainConceptPropertyType:160017];
      v13 = [v14 arrayByAddingObjectsFromArray:v15];
    }
  }

LABEL_8:

  return v13;
}

+ (id)_localizedLoggingFormsForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D103B8];
  v8 = a4;
  v9 = [v7 predicateMatchingRelationshipsWithSubjectId:a3 relationshipType:797];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D103B8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__HDOntologyLoggingUnitProvider__localizedLoggingFormsForConceptWithIdentifier_ontologyTransaction_error___block_invoke;
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

uint64_t __106__HDOntologyLoggingUnitProvider__localizedLoggingFormsForConceptWithIdentifier_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D107D0];
  v4 = [a2 destination];
  v5 = [v3 localizedLoggingUnitsForConcept:v4];
  [v2 addObjectsFromArray:v5];

  return 1;
}

@end