@interface HDMedicationUserDomainConceptGenerator
+ (id)propertyCollectionWithOntologyConcept:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5;
@end

@implementation HDMedicationUserDomainConceptGenerator

+ (id)propertyCollectionWithOntologyConcept:(id)a3 ontologyTransaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [MEMORY[0x277D107D0] localizedOntologyPreferredNamesForConcept:v7 withUserDomainConceptPropertyType:160012];
  if (v10)
  {
    [v9 addObjectsFromArray:v10];
    v11 = [MEMORY[0x277D107C8] basicAttributesForConcept:v7 ofTypes:&unk_2863C2CD8];
    if (v11)
    {
      [v9 addObjectsFromArray:v11];
      v12 = [v7 identifier];
      v13 = [HDOntologyBrandNameProvider brandNamesForConceptWithIdentifier:v12 ontologyTransaction:v8 error:a5];

      if (v13)
      {
        [v9 addObjectsFromArray:v13];
        v14 = [v7 identifier];
        v15 = [HDOntologyGenericMedicationContentProvider genericMedicationContentForConceptWithIdentifier:v14 ontologyTransaction:v8 error:a5];

        if (v15)
        {
          [v9 addObjectsFromArray:v15];
          v16 = [v7 identifier];
          v17 = [HDOntologyManufacturedDoseFormProvider manufacturedDoseFormsForConceptWithIdentifier:v16 ontologyTransaction:v8 error:a5];

          if (v17)
          {
            v33 = v17;
            [v9 addObjectsFromArray:v17];
            v18 = [v7 identifier];
            v19 = [HDOntologyBasicDoseFormProvider basicDoseFormsForConceptWithIdentifier:v18 ontologyTransaction:v8 error:a5];

            v32 = v19;
            if (v19)
            {
              [v9 addObjectsFromArray:v19];
              v20 = [v7 identifier];
              v21 = [HDOntologyLoggingUnitProvider loggingUnitsForConceptWithIdentifier:v20 ontologyTransaction:v8 error:a5];

              if (v21)
              {
                v31 = v21;
                [v9 addObjectsFromArray:v21];
                v22 = MEMORY[0x277D103C8];
                v23 = [v7 identifier];
                v34 = 0;
                v29 = [v22 localizedEducationContentForConceptWithIdentifier:v23 ontologyTransaction:v8 localizedEducationContentOut:&v34 error:a5];
                v24 = v34;

                v19 = 0;
                if (v29)
                {
                  v30 = v24;
                  [v9 hk_addNonNilObject:v24];
                  v25 = [v7 identifier];
                  v26 = [HDOntologyComponentNameProvider componentNamesForConceptWithIdentifier:v25 ontologyTransaction:v8 error:a5];

                  if (v26)
                  {
                    [v9 addObjectsFromArray:v26];
                    v27 = [HDOntologyPregnancyTrimesterLactationRatingsProvider pregnancyTrimesterLactationRatingsForConcept:v7];
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