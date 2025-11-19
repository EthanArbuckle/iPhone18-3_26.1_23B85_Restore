@interface HDOntologyGenericMedicationContentProvider
+ (id)genericMedicationContentForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
@end

@implementation HDOntologyGenericMedicationContentProvider

+ (id)genericMedicationContentForConceptWithIdentifier:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v5 = *MEMORY[0x277D10398];
  v12 = 0;
  v13 = v5;
  v6 = [MEMORY[0x277D103B8] followRelationshipsWithTypes:&unk_2863C2DF8 startingIdentifier:a3 options:12 ontologyTransaction:a4 conceptOut:&v12 deletedRelationshipVersionOut:&v13 error:a5];
  v7 = v12;
  v8 = 0;
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v7)
    {
      v9 = [MEMORY[0x277D107D0] localizedOntologyPreferredNamesForConcept:v7 withUserDomainConceptPropertyType:160009];
    }

    else
    {
      if (v13 == v5)
      {
        goto LABEL_7;
      }

      v9 = [MEMORY[0x277D107D0] nullLocalizedOntologyPreferredNamesWithVersion:v13 withUserDomainConceptPropertyType:160009];
    }

    v10 = v9;
    [v8 addObjectsFromArray:v9];
  }

LABEL_7:

  return v8;
}

@end