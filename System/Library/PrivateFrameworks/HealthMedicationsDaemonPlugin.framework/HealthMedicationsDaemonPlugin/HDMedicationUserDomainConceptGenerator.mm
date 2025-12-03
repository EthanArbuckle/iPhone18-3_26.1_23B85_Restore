@interface HDMedicationUserDomainConceptGenerator
+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error;
@end

@implementation HDMedicationUserDomainConceptGenerator

+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [MEMORY[0x277D107D0] localizedOntologyPreferredNamesForConcept:conceptCopy withUserDomainConceptPropertyType:160012];
  if (v10)
  {
    [v9 addObjectsFromArray:v10];
    v11 = [MEMORY[0x277D107C8] basicAttributesForConcept:conceptCopy ofTypes:&unk_2863C2CD8];
    if (v11)
    {
      [v9 addObjectsFromArray:v11];
      identifier = [conceptCopy identifier];
      v13 = [HDOntologyBrandNameProvider brandNamesForConceptWithIdentifier:identifier ontologyTransaction:transactionCopy error:error];

      if (v13)
      {
        [v9 addObjectsFromArray:v13];
        identifier2 = [conceptCopy identifier];
        v15 = [HDOntologyGenericMedicationContentProvider genericMedicationContentForConceptWithIdentifier:identifier2 ontologyTransaction:transactionCopy error:error];

        if (v15)
        {
          [v9 addObjectsFromArray:v15];
          identifier3 = [conceptCopy identifier];
          v17 = [HDOntologyManufacturedDoseFormProvider manufacturedDoseFormsForConceptWithIdentifier:identifier3 ontologyTransaction:transactionCopy error:error];

          if (v17)
          {
            v33 = v17;
            [v9 addObjectsFromArray:v17];
            identifier4 = [conceptCopy identifier];
            v19 = [HDOntologyBasicDoseFormProvider basicDoseFormsForConceptWithIdentifier:identifier4 ontologyTransaction:transactionCopy error:error];

            v32 = v19;
            if (v19)
            {
              [v9 addObjectsFromArray:v19];
              identifier5 = [conceptCopy identifier];
              v21 = [HDOntologyLoggingUnitProvider loggingUnitsForConceptWithIdentifier:identifier5 ontologyTransaction:transactionCopy error:error];

              if (v21)
              {
                v31 = v21;
                [v9 addObjectsFromArray:v21];
                v22 = MEMORY[0x277D103C8];
                identifier6 = [conceptCopy identifier];
                v34 = 0;
                v29 = [v22 localizedEducationContentForConceptWithIdentifier:identifier6 ontologyTransaction:transactionCopy localizedEducationContentOut:&v34 error:error];
                v24 = v34;

                v19 = 0;
                if (v29)
                {
                  v30 = v24;
                  [v9 hk_addNonNilObject:v24];
                  identifier7 = [conceptCopy identifier];
                  v26 = [HDOntologyComponentNameProvider componentNamesForConceptWithIdentifier:identifier7 ontologyTransaction:transactionCopy error:error];

                  if (v26)
                  {
                    [v9 addObjectsFromArray:v26];
                    v27 = [HDOntologyPregnancyTrimesterLactationRatingsProvider pregnancyTrimesterLactationRatingsForConcept:conceptCopy];
                    [v9 hk_addNonNilObject:v27];
                    v19 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v9];
                  }

                  else
                  {
                    v19 = 0;
                  }

                  v24 = v30;
                }

                v21 = v31;
              }

              else
              {
                v19 = 0;
              }
            }

            v17 = v33;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end