@interface HDHealthRecordsExtractionRuleTransformer
+ (id)_transformDSTU2Value:(id)a3 rootResource:(id)a4 extractionRule:(id)a5 error:(id *)a6;
+ (id)_transformR4Value:(id)a3 rootResource:(id)a4 extractionRule:(id)a5 error:(id *)a6;
+ (id)transformValue:(id)a3 rootResource:(id)a4 extractionRule:(id)a5 error:(id *)a6;
@end

@implementation HDHealthRecordsExtractionRuleTransformer

+ (id)transformValue:(id)a3 rootResource:(id)a4 extractionRule:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 FHIRVersion];
  v14 = [v13 FHIRRelease];

  if (v14 == *MEMORY[0x277CCBDC8])
  {
    v18 = [a1 _transformDSTU2Value:v10 rootResource:v11 extractionRule:v12 error:a6];
  }

  else
  {
    if (v14 != *MEMORY[0x277CCBDD0])
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v11 FHIRVersion];
      [v15 hk_assignError:a6 code:3 format:{@"Unsupported FHIR version for extraction transforms: %@", v16}];

      v17 = 0;
      goto LABEL_7;
    }

    v18 = [a1 _transformR4Value:v10 rootResource:v11 extractionRule:v12 error:a6];
  }

  v17 = v18;
LABEL_7:

  return v17;
}

+ (id)_transformDSTU2Value:(id)a3 rootResource:(id)a4 extractionRule:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDHealthRecordsExtractionRuleTransformer _transformDSTU2Value:a2 rootResource:a1 extractionRule:? error:?];
  }

  v27 = [MEMORY[0x277CCD3D0] primaryDSTU2Version];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v13;
  v14 = [v13 transforms];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if (([v19 isEqualToString:@"inspectableValueCollectionWithRange"] & 1) == 0)
        {
          if ([v19 isEqualToString:@"inspectableValueCollectionWithRatio"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithRatio:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithQuantity"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithQuantity:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithDateTime"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithDateTime:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithPeriod"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithPeriod:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithTime"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithTime:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithString"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithString:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"localeFromLanguage"])
          {
            v20 = [HDHealthRecordsExtractionUtilities localeFromLanguage:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingsArrayWithCodeableConcept"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingsArrayWithCodeableConcept:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingCollectionWithCodeableConcept"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingCollectionWithCodeableConcept:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingCollectionArrayWithCodeableConcepts"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingCollectionArrayWithCodeableConcepts:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingsWithCodeableConcept"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingsWithCodeableConcept:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingsWithCodeableConcepts"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingsWithCodeableConcepts:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"referenceRangesWithObservationReferenceRanges"])
          {
            v20 = [HDHealthRecordsExtractionUtilities referenceRangesWithObservationReferenceRanges:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingsWithReference"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingsWithReference:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithCodeableConcept"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithCodeableConcept:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithObservationComponents"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithObservationComponents:v11 FHIRVersion:v27 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueCollectionWithObservationValues"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithObservationValues:v11 FHIRVersion:v27 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueWithAbatementValue"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueWithAbatementValue:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"inspectableValueWithOnsetValue"])
          {
            v20 = [HDHealthRecordsExtractionUtilities inspectableValueWithOnsetValue:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithCoding"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithCoding:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithDiagnosticReportStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithDiagnosticReportStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithMedicationDispenseStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithMedicationDispenseStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithMedicationOrderStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithMedicationOrderStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithProcedureStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithProcedureStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalDateWithDateTimeString"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalDateWithDateTimeString:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalDateWithDateString"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalDateWithDateString:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalDateWithInstantString"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalDateWithInstantString:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"identifiersWithReferences"])
          {
            v20 = [HDHealthRecordsExtractionUtilities identifiersWithReferences:v11 parentResource:v12 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithAllergyIntoleranceStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithAllergyIntoleranceStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithAllergyIntoleranceCategoryCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithAllergyIntoleranceCategoryCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithAllergyIntoleranceCriticalityCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithAllergyIntoleranceCriticalityCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithAllergyIntoleranceTypeCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithAllergyIntoleranceTypeCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithConditionClinicalStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithConditionClinicalStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithConditionVerificationStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithConditionVerificationStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithMedicationAdminStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithMedicationAdminStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"preferredNameWithHumanNames"])
          {
            v20 = [HDHealthRecordsExtractionUtilities preferredNameWithHumanNames:v11 FHIRVersion:v27 error:a6];
          }

          else if ([v19 isEqualToString:@"enteredInErrorWithStatusString"])
          {
            v20 = [HDHealthRecordsExtractionUtilities enteredInErrorWithStatusString:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"allergyReactionsWithAllergyIntoleranceReaction"])
          {
            v20 = [HDHealthRecordsExtractionUtilities allergyReactionsWithAllergyIntoleranceReaction:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"codedQuantityWithQuantity"])
          {
            v20 = [HDHealthRecordsExtractionUtilities codedQuantityWithQuantity:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithObservationStatus"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithObservationStatus:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithMedicationStatementStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithMedicationStatementStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"earliestDosageDateWithMedicationStatementDosageArray"])
          {
            v20 = [HDHealthRecordsExtractionUtilities earliestDosageDateWithMedicationStatementDosageArray:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"earliestDosageDateWithMedicationOrderDosageArray"])
          {
            v20 = [HDHealthRecordsExtractionUtilities earliestDosageDateWithMedicationOrderDosageArray:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"earliestDosageDateWithMedicationDispenseDosageArray"])
          {
            v20 = [HDHealthRecordsExtractionUtilities earliestDosageDateWithMedicationDispenseDosageArray:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicationDosagesWithStatementDosageArray"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicationDosagesWithStatementDosageInstructionArray:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicationDosagesWithDispenseDosageInstructionArray"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicationDosagesWithDispenseDosageInstructionArray:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicationDosagesWithOrderDosageInstructionArray"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicationDosagesWithOrderDosageInstructionArray:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"observationCategoryWithObservationCategory"])
          {
            v20 = [HDHealthRecordsExtractionUtilities observationCategoryWithObservationCategory:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"referencedMedicationStatementActorTypeWithString"])
          {
            v20 = [HDHealthRecordsExtractionUtilities referencedMedicationStatementActorTypeWithString:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"stringWithRTF"])
          {
            v20 = [HDHealthRecordsExtractionUtilities stringWithRTF:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithDeviceStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithDeviceStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithCarePlanStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithCarePlanStatusCode:v11 error:a6];
          }

          else if ([v19 isEqualToString:@"medicalCodingWithGoalStatusCode"])
          {
            v20 = [HDHealthRecordsExtractionUtilities medicalCodingWithGoalStatusCode:v11 error:a6];
          }

          else
          {
            if (![v19 isEqualToString:@"wrapInArray"])
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported DSTU2 extraction transform '%@'", v19];
              v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
              objc_exception_throw(v25);
            }

            v20 = [HDHealthRecordsExtractionUtilities wrapInArray:v11 error:a6];
          }

          v21 = v20;

          v11 = v21;
        }

        if (!v11)
        {

          v22 = 0;
          goto LABEL_123;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v22 = v11;
LABEL_123:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_transformR4Value:(id)a3 rootResource:(id)a4 extractionRule:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  v27 = v12;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDHealthRecordsExtractionRuleTransformer _transformR4Value:a2 rootResource:a1 extractionRule:? error:?];
  }

  v25 = [MEMORY[0x277CCD3D0] primaryR4Version];
  v26 = v13;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [v13 transforms];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
LABEL_5:
    v18 = 0;
    v19 = v11;
    while (1)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v28 + 1) + 8 * v18);
      if ([v20 isEqualToString:@"codedQuantityWithQuantity"])
      {
        v21 = [HDHealthRecordsExtractionUtilities codedQuantityWithQuantity:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"enteredInErrorWithStatusString"])
      {
        v21 = [HDHealthRecordsExtractionUtilities enteredInErrorWithStatusString:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"identifierFromReference"])
      {
        v21 = [HDHealthRecordsExtractionUtilities identifierFromReference:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"localeFromLanguage"])
      {
        v21 = [HDHealthRecordsExtractionUtilities localeFromLanguage:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingCollectionWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingCollectionWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingCollectionArrayWithCodeableConcepts"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingCollectionArrayWithCodeableConcepts:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingsWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingsWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingsWithCodeableConcepts"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingsWithCodeableConcepts:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingsArrayWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingsArrayWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithEventStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithEventStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalDateWithDateString"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalDateWithDateString:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalDateWithDateTimeString"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalDateWithDateTimeString:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalDateWithInstantString"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalDateWithInstantString:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"wrapInArray"])
      {
        v21 = [HDHealthRecordsExtractionUtilities wrapInArray:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"allergyReactionsWithAllergyIntoleranceReaction"])
      {
        v21 = [HDHealthRecordsExtractionUtilities allergyReactionsWithAllergyIntoleranceReaction:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"allergyIntoleranceClinicalStatusCodingWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities allergyIntoleranceClinicalStatusCodingWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"allergyIntoleranceVerificationStatusCodingWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities allergyIntoleranceVerificationStatusCodingWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"enteredInErrorWithAllergyIntoleranceVerificationStatusCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities enteredInErrorWithAllergyIntoleranceVerificationStatusCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithAllergyIntoleranceCategoryCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithAllergyIntoleranceCategoryCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithAllergyIntoleranceCriticalityCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithR4AllergyIntoleranceCriticalityCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithAllergyIntoleranceTypeCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithAllergyIntoleranceTypeCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"clinicalStatusCodingWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities conditionClinicalStatusCodingWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"enteredInErrorWithConditionVerificationStatusCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities enteredInErrorWithConditionVerificationStatusCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"inspectableValueWithAbatementValue"])
      {
        v21 = [HDHealthRecordsExtractionUtilities inspectableValueWithAbatementValue:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"inspectableValueWithOnsetValue"])
      {
        v21 = [HDHealthRecordsExtractionUtilities inspectableValueWithOnsetValue:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"conditionVerificationStatusCodingWithCodeableConcept"])
      {
        v21 = [HDHealthRecordsExtractionUtilities conditionVerificationStatusCodingWithCodeableConcept:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithDeviceStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithDeviceStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithDiagnosticReportStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithDiagnosticReportStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"identifiersWithReferences"])
      {
        v21 = [HDHealthRecordsExtractionUtilities identifiersWithReferences:v19 parentResource:v27 error:a6];
      }

      else if ([v20 isEqualToString:@"BOOLeanNotDoneFromStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities BOOLeanNotDoneFromStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithImmunizationStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithImmunizationStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"BOOLeanNotTakenFromStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities BOOLeanNotTakenFromStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"earliestDosageDateWithDosageArray"])
      {
        v21 = [HDHealthRecordsExtractionUtilities earliestDosageDateWithMedicationOrderDosageArray:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicationDosagesWithDosageArray"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicationDosagesWithDosageArray:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithMedicationDispenseStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithR4MedicationDispenseStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithMedicationRequestStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithR4MedicationRequestStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithMedicationStatementStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithMedicationStatementStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"referencedMedicationStatementActorTypeWithString"])
      {
        v21 = [HDHealthRecordsExtractionUtilities referencedMedicationStatementActorTypeWithString:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"inspectableValueCollectionWithObservationComponents"])
      {
        v21 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithObservationComponents:v19 FHIRVersion:v25 error:a6];
      }

      else if ([v20 isEqualToString:@"inspectableValueCollectionWithObservationValues"])
      {
        v21 = [HDHealthRecordsExtractionUtilities inspectableValueCollectionWithObservationValues:v19 FHIRVersion:v25 error:a6];
      }

      else if ([v20 isEqualToString:@"referenceRangesWithObservationReferenceRanges"])
      {
        v21 = [HDHealthRecordsExtractionUtilities referenceRangesWithObservationReferenceRanges:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"observationCategoryWithObservationCategories"])
      {
        v21 = [HDHealthRecordsExtractionUtilities observationCategoryWithObservationCategories:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithObservationStatus"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithObservationStatus:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"medicalCodingWithCoverageStatusCode"])
      {
        v21 = [HDHealthRecordsExtractionUtilities medicalCodingWithCoverageStatusCode:v19 error:a6];
      }

      else if ([v20 isEqualToString:@"coverageClassificationWithClassElements"])
      {
        v21 = [HDHealthRecordsExtractionUtilities coverageClassificationWithClassElements:v19 error:a6];
      }

      else
      {
        if (![v20 isEqualToString:@"preferredNameWithHumanNames"])
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported R4 extraction transform '%@'", v20];
          v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
          objc_exception_throw(v24);
        }

        v21 = [HDHealthRecordsExtractionUtilities preferredNameWithHumanNames:v19 FHIRVersion:v25 error:a6];
      }

      v11 = v21;

      if (!v11)
      {
        break;
      }

      ++v18;
      v19 = v11;
      if (v16 == v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

@end