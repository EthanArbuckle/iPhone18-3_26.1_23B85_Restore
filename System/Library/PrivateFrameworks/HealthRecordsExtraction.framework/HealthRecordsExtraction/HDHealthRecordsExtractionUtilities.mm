@interface HDHealthRecordsExtractionUtilities
+ (BOOL)_determineEnteredInError:(id)a3;
+ (id)BOOLeanNotDoneFromStatusCode:(id)a3 error:(id *)a4;
+ (id)BOOLeanNotTakenFromStatusCode:(id)a3 error:(id *)a4;
+ (id)_FHIRMedicalCodingWithCode:(id)a3 medicalCodingSystem:(id)a4 codingVersion:(id)a5 error:(id *)a6;
+ (id)_earliestDosageDateWithMedicationDosageArray:(id)a3 error:(id *)a4;
+ (id)_firstCodingForSystem:(id)a3 inCodeableConcept:(id)a4 error:(id *)a5;
+ (id)_medicalDateIntervalWithDosage:(id)a3 error:(id *)a4;
+ (id)_medicalDateWithDateTimeString:(id)a3 range:(_NSRange)a4 error:(id *)a5;
+ (id)_medicalDateWithOnlyDateString:(id)a3 range:(_NSRange)a4 error:(id *)a5;
+ (id)_medicationDosagesWithDosageArray:(id)a3 FHIRRelease:(id)a4 error:(id *)a5;
+ (id)_transformArray:(id)a3 error:(id *)a4 transformBlock:(id)a5;
+ (id)allergyIntoleranceClinicalStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)allergyIntoleranceVerificationStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)allergyReactionsWithAllergyIntoleranceReaction:(id)a3 error:(id *)a4;
+ (id)codedQuantityWithQuantity:(id)a3 error:(id *)a4;
+ (id)codedValueWithObservationComponent:(id)a3 FHIRVersion:(id)a4 error:(id *)a5;
+ (id)conditionClinicalStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)conditionVerificationStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)coverageClassificationWithClassElements:(id)a3 error:(id *)a4;
+ (id)enteredInErrorWithAllergyIntoleranceVerificationStatusCodeableConcept:(id)a3 error:(id *)a4;
+ (id)enteredInErrorWithConditionVerificationStatusCodeableConcept:(id)a3 error:(id *)a4;
+ (id)enteredInErrorWithStatusString:(id)a3 error:(id *)a4;
+ (id)identifierFromReference:(id)a3 error:(id *)a4;
+ (id)identifierWithReference:(id)a3 parentResource:(id)a4 error:(id *)a5;
+ (id)identifiersWithReferences:(id)a3 parentResource:(id)a4 error:(id *)a5;
+ (id)inspectableValueCollectionWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)inspectableValueCollectionWithDateTime:(id)a3 error:(id *)a4;
+ (id)inspectableValueCollectionWithObservationComponents:(id)a3 FHIRVersion:(id)a4 error:(id *)a5;
+ (id)inspectableValueCollectionWithObservationValues:(id)a3 FHIRVersion:(id)a4 error:(id *)a5;
+ (id)inspectableValueCollectionWithPeriod:(id)a3 error:(id *)a4;
+ (id)inspectableValueCollectionWithQuantity:(id)a3 error:(id *)a4;
+ (id)inspectableValueCollectionWithRatio:(id)a3 error:(id *)a4;
+ (id)inspectableValueCollectionWithString:(id)a3 error:(id *)a4;
+ (id)inspectableValueCollectionWithTime:(id)a3 error:(id *)a4;
+ (id)inspectableValueWithAbatementValue:(id)a3 error:(id *)a4;
+ (id)inspectableValueWithObservationValues:(id)a3 FHIRVersion:(id)a4 error:(id *)a5;
+ (id)inspectableValueWithOnsetValue:(id)a3 error:(id *)a4;
+ (id)localeFromLanguage:(id)a3 error:(id *)a4;
+ (id)medicalCodingCollectionArrayWithCodeableConcepts:(id)a3 error:(id *)a4;
+ (id)medicalCodingCollectionWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithAllergyIntoleranceCategoryCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithAllergyIntoleranceCriticalityCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithAllergyIntoleranceSeverityCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithAllergyIntoleranceStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithAllergyIntoleranceTypeCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithCarePlanStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithCoding:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithConditionClinicalStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithConditionVerificationStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithCoverageStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithDeviceStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithDiagnosticReportStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithEventStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithGoalStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithImmunizationStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithMedicationAdminStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithMedicationDispenseStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithMedicationOrderStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithMedicationStatementStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithObservationStatus:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithProcedureStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithR4AllergyIntoleranceCriticalityCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithR4MedicationDispenseStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingWithR4MedicationRequestStatusCode:(id)a3 error:(id *)a4;
+ (id)medicalCodingsArrayWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)medicalCodingsWithCodeableConcept:(id)a3 error:(id *)a4;
+ (id)medicalCodingsWithCodeableConcepts:(id)a3 error:(id *)a4;
+ (id)medicalCodingsWithReference:(id)a3 error:(id *)a4;
+ (id)medicalDateIntervalWithPeriod:(id)a3 error:(id *)a4;
+ (id)medicalDateWithDateString:(id)a3 error:(id *)a4;
+ (id)medicalDateWithDateTimeString:(id)a3 error:(id *)a4;
+ (id)medicalDateWithInstantString:(id)a3 error:(id *)a4;
+ (id)observationCategoryWithObservationCategories:(id)a3 error:(id *)a4;
+ (id)observationCategoryWithObservationCategory:(id)a3 error:(id *)a4;
+ (id)preferredNameWithHumanNames:(id)a3 FHIRVersion:(id)a4 error:(id *)a5;
+ (id)preferredSupporedCategory:(id)a3 unsupportedCategories:(id)a4 error:(id *)a5;
+ (id)ratioValueWithRatio:(id)a3 error:(id *)a4;
+ (id)referenceRangeWithObservationReferenceRange:(id)a3 error:(id *)a4;
+ (id)referenceRangesWithObservationReferenceRanges:(id)a3 error:(id *)a4;
+ (id)referencedMedicationStatementActorTypeWithString:(id)a3 error:(id *)a4;
+ (id)resourceReferencedBy:(id)a3 containedIn:(id)a4 error:(id *)a5;
+ (id)stringArrayWithStrings:(id)a3 error:(id *)a4;
+ (id)stringWithAttachment:(id)a3 error:(id *)a4;
+ (id)stringWithRTF:(id)a3 error:(id *)a4;
+ (id)timeSinceMidnightWithTimeString:(id)a3 error:(id *)a4;
+ (id)wasEnteredInError:(id)a3 error:(id *)a4;
+ (id)wrapInArray:(id)a3 error:(id *)a4;
+ (int64_t)_integerFromTextCheckingResult:(id)a3 string:(id)a4 index:(int64_t)a5;
@end

@implementation HDHealthRecordsExtractionUtilities

+ (id)_FHIRMedicalCodingWithCode:(id)a3 medicalCodingSystem:(id)a4 codingVersion:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = HKSafeObject();

  if (v11)
  {
    v11 = [MEMORY[0x277CCD5C0] medicalCodingWithSystem:v9 codingVersion:v10 code:v8 displayString:0];
  }

  return v11;
}

+ (id)_firstCodingForSystem:(id)a3 inCodeableConcept:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 medicalCodingsWithCodeableConcept:v9 error:a5];
  if (v10)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__HDHealthRecordsExtractionUtilities__firstCodingForSystem_inCodeableConcept_error___block_invoke;
    v16[3] = &unk_2796E2978;
    v11 = v8;
    v17 = v11;
    v12 = [v10 hk_firstObjectPassingTest:v16];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"Expecting codeable concept with system %@ but none was present in %@", v11, v9}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __84__HDHealthRecordsExtractionUtilities__firstCodingForSystem_inCodeableConcept_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 codingSystem];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)wrapInArray:(id)a3 error:(id *)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)stringArrayWithStrings:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          v12 = HKSafeObject();

          if (!v12)
          {

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = v6;
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)medicalCodingWithCoding:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    goto LABEL_5;
  }

  if ([v5 hk_hasValueForKeyPath:@"system"])
  {
    v7 = [v5 hk_safeStringForKeyPath:@"system" error:a4];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:v7];

      goto LABEL_7;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_23;
  }

  v9 = 0;
LABEL_7:
  if (![v5 hk_hasValueForKeyPath:@"version"])
  {
    v11 = 0;
LABEL_11:
    if ([v5 hk_hasValueForKeyPath:@"code"])
    {
      v12 = [v5 hk_safeStringForKeyPath:@"code" error:a4];
      if (!v12)
      {
        v10 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
    }

    if ([v5 hk_hasValueForKeyPath:@"display"])
    {
      v13 = [v5 hk_safeStringForKeyPath:@"display" error:a4];
      if (!v13)
      {
        v10 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    v10 = [MEMORY[0x277CCD5C0] medicalCodingWithSystem:v9 codingVersion:v11 code:v12 displayString:v13];

    goto LABEL_20;
  }

  v11 = [v5 hk_safeStringForKeyPath:@"version" error:a4];
  if (v11)
  {
    goto LABEL_11;
  }

  v10 = 0;
LABEL_22:

LABEL_23:

  return v10;
}

+ (id)medicalCodingCollectionWithCodeableConcept:(id)a3 error:(id *)a4
{
  v4 = [a1 medicalCodingsWithCodeableConcept:a3 error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCD5C8] collectionWithCodings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)medicalCodingsWithCodeableConcept:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    goto LABEL_4;
  }

  if ([v6 hk_hasValueForKeyPath:@"text"])
  {
    v8 = [v6 hk_safeStringForKeyPath:@"text" error:a4];
    if (!v8)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 0;
  }

  if (![v6 hk_hasValueForKeyPath:@"coding"])
  {
    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_10;
  }

  v10 = [v6 hk_safeArrayForKeyPath:@"coding" error:a4];
  if (v10)
  {
LABEL_10:
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v8)
    {
      v12 = MEMORY[0x277CCD5C0];
      v13 = [MEMORY[0x277CCD5D0] textSystem];
      v14 = [v12 medicalCodingWithSystem:v13 codingVersion:*MEMORY[0x277CCC360] code:v8 displayString:v8];
      [v11 addObject:v14];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [a1 medicalCodingWithCoding:*(*(&v24 + 1) + 8 * i) error:{a4, v24}];
          if (!v20)
          {

            goto LABEL_23;
          }

          v21 = v20;
          [v11 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if ([v11 count])
    {
      v9 = [v11 copy];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Medical codings has no valid text or coding"];
LABEL_23:
      v9 = 0;
    }

    goto LABEL_25;
  }

  v9 = 0;
LABEL_25:

LABEL_26:
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_transformArray:(id)a3 error:(id *)a4 transformBlock:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  v9 = HKSafeObject();

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = v8[2](v8, *(*(&v21 + 1) + 8 * i), a4);
          if (!v16)
          {

            v18 = 0;
            goto LABEL_12;
          }

          v17 = v16;
          [v10 addObject:{v16, v21}];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = v10;
LABEL_12:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)medicalCodingCollectionArrayWithCodeableConcepts:(id)a3 error:(id *)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__HDHealthRecordsExtractionUtilities_medicalCodingCollectionArrayWithCodeableConcepts_error___block_invoke;
  v6[3] = &__block_descriptor_40_e12__24__0_8__16l;
  v6[4] = a1;
  v4 = [a1 _transformArray:a3 error:a4 transformBlock:v6];

  return v4;
}

+ (id)medicalCodingsWithCodeableConcepts:(id)a3 error:(id *)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HDHealthRecordsExtractionUtilities_medicalCodingsWithCodeableConcepts_error___block_invoke;
  v6[3] = &__block_descriptor_40_e12__24__0_8__16l;
  v6[4] = a1;
  v4 = [a1 _transformArray:a3 error:a4 transformBlock:v6];

  return v4;
}

+ (id)medicalCodingsArrayWithCodeableConcept:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 medicalCodingsWithCodeableConcept:a3 error:a4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)medicalCodingWithCode:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = [&unk_28641A1D8 objectForKeyedSubscript:v4];
    v7 = MEMORY[0x277CCD5C0];
    v8 = [MEMORY[0x277CCD5D0] FHIRQuantityComparatorSystem];
    v5 = [v7 medicalCodingWithSystem:v8 codingVersion:0 code:v4 displayString:v6];
  }

  return v5;
}

+ (id)codedQuantityWithQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    v12 = 0;
    goto LABEL_32;
  }

  v8 = [v6 hk_safeNumberForKeyPath:@"value" error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 stringValue];
    if (!v10)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Unable to convert number to string"];
LABEL_10:
      v12 = 0;
LABEL_30:

      goto LABEL_31;
    }

    if ([v6 hk_hasValueForKeyPath:@"unit"])
    {
      v11 = [v6 hk_safeStringForKeyPath:@"unit" error:a4];
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
    }

    if ([v6 hk_hasValueForKeyPath:@"system"])
    {
      v13 = [v6 hk_safeStringForKeyPath:@"system" error:a4];
      if (!v13)
      {
        v12 = 0;
        goto LABEL_29;
      }

      v14 = v13;
      v15 = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:v13];
    }

    else
    {
      v15 = 0;
    }

    if ([v6 hk_hasValueForKeyPath:@"code"])
    {
      v16 = [v6 hk_safeStringForKeyPath:@"code" error:a4];
      if (!v16)
      {
        v12 = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (!(v11 | v15))
      {
        goto LABEL_21;
      }
    }

    v18 = [MEMORY[0x277CCD5C0] medicalCodingWithSystem:v15 codingVersion:0 code:v16 displayString:v11];
    v17 = v16;
LABEL_21:
    if ([v6 hk_hasValueForKeyPath:@"comparator"])
    {
      v19 = [v6 hk_safeStringForKeyPath:@"comparator" error:a4];
      if (!v19 || (v20 = v19, [a1 medicalCodingWithCode:v19 error:a4], v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
      {
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v21 = 0;
    }

    v12 = [MEMORY[0x277CCD198] codedQuantityWithValue:v10 comparatorCoding:v21 unitCoding:v18];

    goto LABEL_27;
  }

  v12 = 0;
LABEL_31:

LABEL_32:

  return v12;
}

+ (id)ratioValueWithRatio:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"numerator"];
    v9 = [a1 codedQuantityWithQuantity:v8 error:a4];

    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"denominator"];
      v11 = [a1 codedQuantityWithQuantity:v10 error:a4];

      if (v11)
      {
        v12 = [MEMORY[0x277CCD880] ratioValueWithNumerator:v9 andDenominator:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)stringWithAttachment:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v8 = [v6 hk_safeStringForKeyPath:@"contentType" error:a4];
  v9 = v8;
  if (v8)
  {
    if (v8 == @"text/plain" || (v10 = [(__CFString *)v8 isEqualToString:@"text/plain"], v9 == @"application/rtf") || (v10 & 1) != 0 || ([(__CFString *)v9 isEqualToString:@"application/rtf"]& 1) != 0)
    {
      v11 = [v6 hk_safeStringForKeyPath:@"data" error:a4];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0];
        v13 = v12;
        if (v12 && [v12 length])
        {
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
          if (v14)
          {
            v15 = [a1 stringWithRTF:v14 error:a4];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Error RTF scrubbing valueAttachment.data"];
              _HKInitializeLogging();
              v34 = *MEMORY[0x277CCC2C0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
              {
                [(HDHealthRecordsExtractionUtilities *)v34 stringWithAttachment:v35 error:v36, v37, v38, v39, v40, v41];
              }
            }
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Decoded valueAttachment.data is not a UTF8 String"];
            _HKInitializeLogging();
            v26 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              [(HDHealthRecordsExtractionUtilities *)v26 stringWithAttachment:v27 error:v28, v29, v30, v31, v32, v33];
            }

            v16 = 0;
          }
        }

        else
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Could not Base64 decode valueAttachment.data"];
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            [(HDHealthRecordsExtractionUtilities *)v18 stringWithAttachment:v19 error:v20, v21, v22, v23, v24, v25];
          }

          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_29;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Unsupported MIME type for valueAttachment.contentType %@", v9}];
  }

  v16 = 0;
LABEL_29:

LABEL_30:

  return v16;
}

+ (id)observationCategoryWithObservationCategory:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [a1 medicalCodingsWithCodeableConcept:a3 error:?];
  if (v5)
  {
    v21 = a4;
    if (observationCategoryWithObservationCategory_error__onceToken != -1)
    {
      +[HDHealthRecordsExtractionUtilities observationCategoryWithObservationCategory:error:];
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 codingSystem];
          if ([v14 isEqual:observationCategoryWithObservationCategory_error__observationCategorySystem])
          {
            v15 = [v13 code];

            if (!v15)
            {
              continue;
            }

            v16 = [v13 code];
            v14 = HKDiagnosticTestResultCategoryFromNSString();

            if (v14)
            {
              [v6 addObject:v14];
            }

            else
            {
              v17 = [v13 code];
              [v7 addObject:v17];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v18 = [HDHealthRecordsExtractionUtilities preferredSupporedCategory:v6 unsupportedCategories:v7 error:v21];

    v5 = v22;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __87__HDHealthRecordsExtractionUtilities_observationCategoryWithObservationCategory_error___block_invoke()
{
  observationCategoryWithObservationCategory_error__observationCategorySystem = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://hl7.org/fhir/observation-category"];

  return MEMORY[0x2821F96F8]();
}

+ (id)observationCategoryWithObservationCategories:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [a1 medicalCodingCollectionArrayWithCodeableConcepts:a3 error:?];
  if (!v5)
  {
    v23 = 0;
    goto LABEL_29;
  }

  v33 = a4;
  if (observationCategoryWithObservationCategories_error__onceToken != -1)
  {
    +[HDHealthRecordsExtractionUtilities observationCategoryWithObservationCategories:error:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = v5;
  v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v5;
  v30 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v30)
  {
    goto LABEL_25;
  }

  v8 = *v41;
  v32 = v7;
  v29 = *v41;
  do
  {
    v9 = 0;
    do
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(v7);
      }

      v31 = v9;
      v10 = *(*(&v40 + 1) + 8 * v9);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [v10 codings];
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = v12;
      v14 = 0;
      v15 = *v37;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          v18 = [v17 codingSystem];
          if ([v18 isEqual:observationCategoryWithObservationCategories_error__observationCategorySystem])
          {
            v19 = [v17 code];

            if (!v19)
            {
              continue;
            }

            v20 = [v17 code];
            v18 = HKDiagnosticTestResultCategoryFromNSString();

            if (v18)
            {
              [v6 addObject:v18];
              if (v14 > 0)
              {
                v24 = MEMORY[0x277CCA9B8];
                v25 = [v6 allObjects];
                v26 = [v25 componentsJoinedByString:{@", "}];
                [v24 hk_assignError:v33 code:3 format:{@"More than 1 supported Observation category in same R4 coding: %@", v26}];

                v23 = 0;
                v22 = v35;
                goto LABEL_27;
              }

              v14 = 1;
            }

            else
            {
              v21 = [v17 code];
              [v35 addObject:v21];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_23:

      v9 = v31 + 1;
      v7 = v32;
      v8 = v29;
    }

    while (v31 + 1 != v30);
    v30 = [v32 countByEnumeratingWithState:&v40 objects:v45 count:16];
  }

  while (v30);
LABEL_25:

  v22 = v35;
  v23 = [HDHealthRecordsExtractionUtilities preferredSupporedCategory:v6 unsupportedCategories:v35 error:v33];
LABEL_27:

  v5 = v34;
LABEL_29:

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __89__HDHealthRecordsExtractionUtilities_observationCategoryWithObservationCategories_error___block_invoke()
{
  observationCategoryWithObservationCategories_error__observationCategorySystem = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/observation-category"];

  return MEMORY[0x2821F96F8]();
}

+ (id)preferredSupporedCategory:(id)a3 unsupportedCategories:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 count] && !objc_msgSend(v7, "count"))
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [v8 allObjects];
    v14 = [v13 componentsJoinedByString:{@", "}];
    [v12 hk_assignError:a5 code:3 format:{@"unsupported Observation categories: %@", v14}];
  }

  else
  {
    if ([v7 count] < 2)
    {
      v10 = [v7 anyObject];
      goto LABEL_8;
    }

    v9 = *MEMORY[0x277CCBC98];
    if ([v7 containsObject:*MEMORY[0x277CCBC98]] || (v9 = *MEMORY[0x277CCBC90], objc_msgSend(v7, "containsObject:", *MEMORY[0x277CCBC90])))
    {
      v10 = v9;
LABEL_8:
      v11 = v10;
      goto LABEL_12;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"No supported Observation categories found"];
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)referenceRangesWithObservationReferenceRanges:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [a1 referenceRangeWithObservationReferenceRange:*(*(&v19 + 1) + 8 * i) error:{a4, v19}];
          if (!v14)
          {

            v16 = 0;
            goto LABEL_12;
          }

          v15 = v14;
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = v8;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)referenceRangeWithObservationReferenceRange:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    goto LABEL_4;
  }

  if ([v6 hk_hasValueForKeyPath:@"low"])
  {
    v8 = [v6 objectForKeyedSubscript:@"low"];
    v9 = [a1 codedQuantityWithQuantity:v8 error:a4];

    if (!v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v9 = 0;
  }

  if (![v6 hk_hasValueForKeyPath:@"high"])
  {
    v12 = 0;
LABEL_10:
    if ([v6 hk_hasValueForKeyPath:@"meaning"])
    {
      v13 = [v6 objectForKeyedSubscript:@"meaning"];
      v14 = [a1 medicalCodingsWithCodeableConcept:v13 error:a4];

      if (!v14)
      {
        v10 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v14 = 0;
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__HDHealthRecordsExtractionUtilities_referenceRangeWithObservationReferenceRange_error___block_invoke;
    v17[3] = &unk_2796E29E0;
    v17[4] = &v18;
    [v14 enumerateObjectsUsingBlock:v17];
    if (v9 && v12)
    {
      v15 = [MEMORY[0x277CCD890] referenceRangeWithIdentifier:v19[5] minValue:v9 maxValue:v12];
    }

    else if (v9)
    {
      v15 = [MEMORY[0x277CCD890] referenceRangeWithIdentifier:v19[5] minValue:v9];
    }

    else
    {
      if (!v12)
      {
        if (([v6 hk_hasValueForKeyPath:@"text"] & 1) == 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Observation.ReferenceRange missing high, low and text"}];
        }

        v10 = 0;
        goto LABEL_22;
      }

      v15 = [MEMORY[0x277CCD890] referenceRangeWithIdentifier:v19[5] maxValue:v12];
    }

    v10 = v15;
LABEL_22:
    _Block_object_dispose(&v18, 8);

    goto LABEL_23;
  }

  v11 = [v6 objectForKeyedSubscript:@"high"];
  v12 = [a1 codedQuantityWithQuantity:v11 error:a4];

  if (v12)
  {
    goto LABEL_10;
  }

  v10 = 0;
LABEL_24:

LABEL_25:

  return v10;
}

void __88__HDHealthRecordsExtractionUtilities_referenceRangeWithObservationReferenceRange_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 codingSystem];
  v7 = [MEMORY[0x277CCD5D0] textSystem];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v12 displayString];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

+ (id)medicalCodingWithObservationStatus:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCD5C0];
    v7 = [MEMORY[0x277CCD5D0] FHIRObservationStatus];
    v5 = [v6 medicalCodingWithSystem:v7 codingVersion:*MEMORY[0x277CCC338] code:v4 displayString:0];
  }

  return v5;
}

+ (id)medicalCodingWithMedicationStatementStatusCode:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCD5C0];
    v7 = [MEMORY[0x277CCD5D0] FHIRMedicationStatementStatus];
    v5 = [v6 medicalCodingWithSystem:v7 codingVersion:*MEMORY[0x277CCC338] code:v4 displayString:0];
  }

  return v5;
}

+ (id)BOOLeanNotDoneFromStatusCode:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v4 lowercaseString];
    v5 = [v6 numberWithBool:{objc_msgSend(v7, "isEqualToString:", @"not-done"}];
  }

  return v5;
}

+ (id)BOOLeanNotTakenFromStatusCode:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v4 lowercaseString];
    v5 = [v6 numberWithBool:{objc_msgSend(v7, "isEqualToString:", @"not-taken"}];
  }

  return v5;
}

+ (id)medicalCodingsWithReference:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    if ([v5 hk_hasValueForKeyPath:@"display"])
    {
      v6 = [v5 hk_safeStringForKeyPath:@"display" error:a4];
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = MEMORY[0x277CCD5C0];
      v9 = [MEMORY[0x277CCD5D0] textSystem];
      v10 = [v8 medicalCodingWithSystem:v9 codingVersion:*MEMORY[0x277CCC360] code:v6 displayString:v6];
      [v7 addObject:v10];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v6 = [v7 copy];
  }

LABEL_7:

  return v6;
}

+ (id)resourceReferencedBy:(id)a3 containedIn:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = HKSafeObject();

  if (v9)
  {
    v10 = [HDFHIRReferenceProcessor resourceReferenceInReference:v7 error:a5];
    if (v10)
    {
      v11 = [HDFHIRReferenceProcessor resourceContainedInResource:v8 reference:v10 error:a5];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)inspectableValueWithObservationValues:(id)a3 FHIRVersion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v8 hk_hasValueForKeyPath:@"valueQuantity"])
  {
    v11 = [v8 objectForKeyedSubscript:@"valueQuantity"];
    v12 = [a1 codedQuantityWithQuantity:v11 error:a5];

    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v12];
    [v10 addObject:v13];
  }

  if ([v8 hk_hasValueForKeyPath:@"valueCodeableConcept"])
  {
    v14 = [v8 objectForKeyedSubscript:@"valueCodeableConcept"];
    v15 = [a1 medicalCodingsWithCodeableConcept:v14 error:a5];

    if (!v15)
    {
      goto LABEL_51;
    }

    v16 = [MEMORY[0x277CCD550] inspectableValueWithMedicalCodings:v15];
    [v10 addObject:v16];
  }

  if ([v8 hk_hasValueForKeyPath:@"valueString"])
  {
    v17 = [v8 hk_safeStringForKeyPath:@"valueString" error:a5];
    if (!v17)
    {
      goto LABEL_51;
    }

    v18 = v17;
    v19 = [MEMORY[0x277CCD550] inspectableValueWithString:v17];
    [v10 addObject:v19];
  }

  if ([v8 hk_hasValueForKeyPath:@"valueBoolean"] && (objc_msgSend(v9, "FHIRRelease"), v20 = objc_claimAutoreleasedReturnValue(), v21 = *MEMORY[0x277CCBDD0], v20, v20 == v21))
  {
    v22 = [v8 hk_safeNumberForKeyPath:@"valueBoolean" error:a5];
    if (!v22)
    {
      goto LABEL_51;
    }

    v23 = v22;
    v24 = [MEMORY[0x277CCD550] inspectableValueWithBoolean:v22];
    [v10 addObject:v24];
  }

  else if (![v8 hk_expectMissingKeyPath:@"valueBoolean" error:a5])
  {
    goto LABEL_51;
  }

  if ([v8 hk_hasValueForKeyPath:@"valueInteger"] && (objc_msgSend(v9, "FHIRRelease"), v25 = objc_claimAutoreleasedReturnValue(), v26 = *MEMORY[0x277CCBDD0], v25, v25 == v26))
  {
    v27 = [v8 hk_safeNumberForKeyPath:@"valueInteger" error:a5];
    if (!v27)
    {
      goto LABEL_51;
    }

    v28 = v27;
    v29 = [MEMORY[0x277CCD550] inspectableValueWithInteger:v27];
    [v10 addObject:v29];
  }

  else if (![v8 hk_expectMissingKeyPath:@"valueInteger" error:a5])
  {
    goto LABEL_51;
  }

  if (![v8 hk_expectMissingKeyPath:@"valueRange" error:a5])
  {
    goto LABEL_51;
  }

  if ([v8 hk_hasValueForKeyPath:@"valueRatio"])
  {
    v30 = [v8 objectForKeyedSubscript:@"valueRatio"];
    v31 = [a1 ratioValueWithRatio:v30 error:a5];

    if (!v31)
    {
      goto LABEL_51;
    }

    v32 = [MEMORY[0x277CCD550] inspectableValueWithRatio:v31];
    [v10 addObject:v32];
  }

  if (![v8 hk_expectMissingKeyPath:@"valueSampledData" error:a5])
  {
    goto LABEL_51;
  }

  if ([v8 hk_hasValueForKeyPath:@"valueAttachment"] && (objc_msgSend(v9, "FHIRRelease"), v33 = objc_claimAutoreleasedReturnValue(), v34 = *MEMORY[0x277CCBDC8], v33, v33 == v34))
  {
    v35 = [v8 objectForKeyedSubscript:@"valueAttachment"];
    v36 = [a1 stringWithAttachment:v35 error:a5];

    if (!v36)
    {
      goto LABEL_51;
    }

    v37 = [MEMORY[0x277CCD550] inspectableValueWithString:v36];
    [v10 addObject:v37];
  }

  else if (![v8 hk_expectMissingKeyPath:@"valueAttachment" error:a5])
  {
    goto LABEL_51;
  }

  if ([v8 hk_hasValueForKeyPath:@"valueTime"])
  {
    v38 = [v8 hk_safeStringForKeyPath:@"valueTime" error:a5];
    if (!v38)
    {
      goto LABEL_51;
    }

    v39 = v38;
    v40 = [a1 timeSinceMidnightWithTimeString:v38 error:a5];
    if (!v40)
    {
      goto LABEL_50;
    }

    v41 = v40;
    v42 = [MEMORY[0x277CCD550] inspectableValueWithDateComponents:v40];
    [v10 addObject:v42];
  }

  if ([v8 hk_hasValueForKeyPath:@"valueDateTime"])
  {
    v43 = [v8 hk_safeStringForKeyPath:@"valueDateTime" error:a5];
    if (!v43)
    {
      goto LABEL_51;
    }

    v39 = v43;
    v44 = [a1 medicalDateWithDateTimeString:v43 error:a5];
    if (!v44)
    {
      goto LABEL_50;
    }

    v45 = v44;
    v46 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v44];
    [v10 addObject:v46];
  }

  if (![v8 hk_hasValueForKeyPath:@"valuePeriod"])
  {
    goto LABEL_45;
  }

  v47 = [v8 hk_safeDictionaryForKeyPath:@"valuePeriod" error:a5];
  if (!v47)
  {
    goto LABEL_51;
  }

  v39 = v47;
  v48 = [a1 medicalDateIntervalWithPeriod:v47 error:a5];
  if (!v48)
  {
LABEL_50:

    goto LABEL_51;
  }

  v49 = v48;
  v50 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v48];
  [v10 addObject:v50];

LABEL_45:
  if (![v8 hk_hasValueForKeyPath:@"dataAbsentReason"])
  {
    goto LABEL_48;
  }

  v51 = [v8 objectForKeyedSubscript:@"dataAbsentReason"];
  v52 = [a1 medicalCodingsWithCodeableConcept:v51 error:a5];

  if (!v52)
  {
LABEL_51:
    v54 = 0;
    goto LABEL_52;
  }

  v53 = [MEMORY[0x277CCD550] inspectableValueWithDataAbsentReasonCodings:v52];
  [v10 addObject:v53];

LABEL_48:
  if ([v10 count] >= 2)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Encountered values of more than one type"];
    goto LABEL_51;
  }

  v54 = [v10 firstObject];
LABEL_52:

  return v54;
}

+ (id)inspectableValueWithAbatementValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v6 hk_hasValueForKeyPath:@"abatementAge"])
    {
      v9 = [v6 objectForKeyedSubscript:@"abatementAge"];
      v10 = [a1 codedQuantityWithQuantity:v9 error:a4];

      if (!v10)
      {
        goto LABEL_26;
      }

      v11 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v10];
      [v8 addObject:v11];
    }

    if ([v6 hk_hasValueForKeyPath:@"abatementQuantity"])
    {
      v12 = [v6 objectForKeyedSubscript:@"abatementQuantity"];
      v13 = [a1 codedQuantityWithQuantity:v12 error:a4];

      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v13];
      [v8 addObject:v14];
    }

    if ([v6 hk_hasValueForKeyPath:@"abatementDateTime"])
    {
      v15 = [v6 objectForKeyedSubscript:@"abatementDateTime"];
      v16 = [a1 medicalDateWithDateTimeString:v15 error:a4];

      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v16];
      [v8 addObject:v17];
    }

    if ([v6 hk_hasValueForKeyPath:@"abatementBoolean"])
    {
      v18 = [v6 hk_safeNumberForKeyPath:@"abatementBoolean" error:a4];
      if (!v18)
      {
        goto LABEL_26;
      }

      v19 = v18;
      if ([v18 BOOLValue])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = [MEMORY[0x277CCD550] inspectableValueWithString:v20];
      [v8 addObject:v21];
    }

    if ([v6 hk_hasValueForKeyPath:@"abatementPeriod"])
    {
      v22 = [v6 objectForKeyedSubscript:@"abatementPeriod"];
      v23 = [a1 medicalDateIntervalWithPeriod:v22 error:a4];

      if (!v23)
      {
        goto LABEL_26;
      }

      v24 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v23];
      [v8 addObject:v24];
    }

    if ([v6 hk_hasValueForKeyPath:@"abatementString"])
    {
      v25 = [v6 hk_safeStringForKeyPath:@"abatementString" error:a4];
      if (!v25)
      {
        goto LABEL_26;
      }

      v26 = v25;
      v27 = [MEMORY[0x277CCD550] inspectableValueWithString:v25];
      [v8 addObject:v27];
    }

    if ([v6 hk_expectMissingKeyPath:@"abatementRange" error:a4])
    {
      if ([v8 count] < 2)
      {
        v28 = [v8 firstObject];
        goto LABEL_27;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Encountered values of more than one type"];
    }

LABEL_26:
    v28 = 0;
LABEL_27:

    goto LABEL_29;
  }

  v28 = 0;
LABEL_29:

  return v28;
}

+ (id)medicalCodingWithConditionClinicalStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRConditionClinicalStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithConditionVerificationStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRConditionVerificationStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)inspectableValueWithOnsetValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v6 hk_hasValueForKeyPath:@"onsetQuantity"])
    {
      v9 = [v6 objectForKeyedSubscript:@"onsetQuantity"];
      v10 = [a1 codedQuantityWithQuantity:v9 error:a4];

      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v10];
      [v8 addObject:v11];
    }

    if ([v6 hk_hasValueForKeyPath:@"onsetDateTime"])
    {
      v12 = [v6 objectForKeyedSubscript:@"onsetDateTime"];
      v13 = [a1 medicalDateWithDateTimeString:v12 error:a4];

      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v13];
      [v8 addObject:v14];
    }

    if ([v6 hk_hasValueForKeyPath:@"onsetPeriod"])
    {
      v15 = [v6 objectForKeyedSubscript:@"onsetPeriod"];
      v16 = [a1 medicalDateIntervalWithPeriod:v15 error:a4];

      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v16];
      [v8 addObject:v17];
    }

    if ([v6 hk_hasValueForKeyPath:@"onsetString"])
    {
      v18 = [v6 hk_safeStringForKeyPath:@"onsetString" error:a4];
      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = v18;
      v20 = [MEMORY[0x277CCD550] inspectableValueWithString:v18];
      [v8 addObject:v20];
    }

    if ([v6 hk_expectMissingKeyPath:@"onsetRange" error:a4])
    {
      if ([v8 count] < 2)
      {
        v21 = [v8 firstObject];
        goto LABEL_18;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Encountered values of more than one type"];
    }

LABEL_17:
    v21 = 0;
LABEL_18:

    goto LABEL_20;
  }

  v21 = 0;
LABEL_20:

  return v21;
}

+ (id)conditionClinicalStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4
{
  v6 = conditionClinicalStatusCodingWithCodeableConcept_error__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities conditionClinicalStatusCodingWithCodeableConcept:error:];
  }

  v8 = [a1 _firstCodingForSystem:conditionClinicalStatusCodingWithCodeableConcept_error__conditionClinicalStatusCoding inCodeableConcept:v7 error:a4];

  return v8;
}

uint64_t __93__HDHealthRecordsExtractionUtilities_conditionClinicalStatusCodingWithCodeableConcept_error___block_invoke()
{
  conditionClinicalStatusCodingWithCodeableConcept_error__conditionClinicalStatusCoding = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/condition-clinical"];

  return MEMORY[0x2821F96F8]();
}

+ (id)conditionVerificationStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4
{
  v6 = conditionVerificationStatusCodingWithCodeableConcept_error__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities conditionVerificationStatusCodingWithCodeableConcept:error:];
  }

  v8 = [a1 _firstCodingForSystem:conditionVerificationStatusCodingWithCodeableConcept_error__conditionVerificationStatusCoding inCodeableConcept:v7 error:a4];

  return v8;
}

uint64_t __97__HDHealthRecordsExtractionUtilities_conditionVerificationStatusCodingWithCodeableConcept_error___block_invoke()
{
  conditionVerificationStatusCodingWithCodeableConcept_error__conditionVerificationStatusCoding = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/condition-ver-status"];

  return MEMORY[0x2821F96F8]();
}

+ (id)enteredInErrorWithConditionVerificationStatusCodeableConcept:(id)a3 error:(id *)a4
{
  v5 = [a1 conditionVerificationStatusCodingWithCodeableConcept:a3 error:a4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v5 code];
    v9 = [v7 numberWithBool:{objc_msgSend(a1, "_determineEnteredInError:", v8)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)medicalCodingWithCoverageStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRCoverageStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)coverageClassificationWithClassElements:(id)a3 error:(id *)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__HDHealthRecordsExtractionUtilities_coverageClassificationWithClassElements_error___block_invoke;
  v6[3] = &__block_descriptor_40_e26__24__0__NSDictionary_8__16l;
  v6[4] = a1;
  v4 = [a1 _transformArray:a3 error:a4 transformBlock:v6];

  return v4;
}

id __84__HDHealthRecordsExtractionUtilities_coverageClassificationWithClassElements_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 objectForKeyedSubscript:@"type"];
    v9 = [v7 medicalCodingsWithCodeableConcept:v8 error:a3];

    if (v9)
    {
      if ([v5 hk_hasValueForKeyPath:@"value"])
      {
        v10 = [v5 hk_safeStringForKeyPath:@"value" error:a3];
      }

      else
      {
        v10 = 0;
      }

      if ([v5 hk_hasValueForKeyPath:@"name"])
      {
        v12 = [v5 hk_safeStringForKeyPath:@"name" error:a3];
      }

      else
      {
        v12 = 0;
      }

      v11 = [MEMORY[0x277CCD268] coverageClassificationWithTypeCodings:v9 value:v10 name:v12];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)medicalCodingWithDeviceStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRDeviceStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)medicalCodingWithCarePlanStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRCarePlanStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithGoalStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRGoalStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithDiagnosticReportStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRDiagnosticReportStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithEventStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIREventStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)medicalCodingWithImmunizationStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRImmunizationStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)medicalCodingWithMedicationAdminStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRMedicationAdminStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithMedicationDispenseStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRMedicationDispenseStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithR4MedicationDispenseStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRMedicationDispenseStatusR4];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)medicalCodingWithMedicationOrderStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRMedicationOrderStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithR4MedicationRequestStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRMedicationRequestStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)medicalCodingWithProcedureStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRProcedureStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceStatusCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRAllergyIntoleranceStatus];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceCategoryCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRAllergyIntoleranceCategory];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceCriticalityCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRAllergyIntoleranceCriticality];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceSeverityCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRAllergyIntoleranceSeverity];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceTypeCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRAllergyIntoleranceType];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC338] error:a4];

  return v9;
}

+ (id)medicalCodingWithR4AllergyIntoleranceCriticalityCode:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCD5D0];
  v7 = a3;
  v8 = [v6 FHIRAllergyIntoleranceCriticality];
  v9 = [a1 _FHIRMedicalCodingWithCode:v7 medicalCodingSystem:v8 codingVersion:*MEMORY[0x277CCC340] error:a4];

  return v9;
}

+ (id)allergyIntoleranceClinicalStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4
{
  v6 = allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities allergyIntoleranceClinicalStatusCodingWithCodeableConcept:error:];
  }

  v8 = [a1 _firstCodingForSystem:allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error__codingSystem inCodeableConcept:v7 error:a4];

  return v8;
}

uint64_t __102__HDHealthRecordsExtractionUtilities_allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error___block_invoke()
{
  allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error__codingSystem = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"];

  return MEMORY[0x2821F96F8]();
}

+ (id)allergyIntoleranceVerificationStatusCodingWithCodeableConcept:(id)a3 error:(id *)a4
{
  v6 = allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities allergyIntoleranceVerificationStatusCodingWithCodeableConcept:error:];
  }

  v8 = [a1 _firstCodingForSystem:allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error__codingSystem inCodeableConcept:v7 error:a4];

  return v8;
}

uint64_t __106__HDHealthRecordsExtractionUtilities_allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error___block_invoke()
{
  allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error__codingSystem = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"];

  return MEMORY[0x2821F96F8]();
}

+ (id)enteredInErrorWithAllergyIntoleranceVerificationStatusCodeableConcept:(id)a3 error:(id *)a4
{
  v5 = [a1 allergyIntoleranceVerificationStatusCodingWithCodeableConcept:a3 error:a4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [v5 code];
    v9 = [v7 numberWithBool:{objc_msgSend(a1, "_determineEnteredInError:", v8)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)allergyReactionsWithAllergyIntoleranceReaction:(id)a3 error:(id *)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__HDHealthRecordsExtractionUtilities_allergyReactionsWithAllergyIntoleranceReaction_error___block_invoke;
  v6[3] = &__block_descriptor_40_e26__24__0__NSDictionary_8__16l;
  v6[4] = a1;
  v4 = [a1 _transformArray:a3 error:a4 transformBlock:v6];

  return v4;
}

id __91__HDHealthRecordsExtractionUtilities_allergyReactionsWithAllergyIntoleranceReaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v7 = *(a1 + 32);
  v8 = [v5 objectForKeyedSubscript:@"manifestation"];
  v9 = [v7 medicalCodingsWithCodeableConcepts:v8 error:a3];

  if (!v9)
  {
    goto LABEL_5;
  }

  if (![v5 hk_hasValueForKeyPath:@"onset"])
  {
    v12 = 0;
LABEL_8:
    if ([v5 hk_hasValueForKeyPath:@"severity"])
    {
      v14 = *(a1 + 32);
      v15 = [v5 objectForKeyedSubscript:@"severity"];
      v16 = [v14 medicalCodingWithAllergyIntoleranceSeverityCode:v15 error:a3];

      if (!v16)
      {
        v13 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    v13 = [MEMORY[0x277CCCFC8] allergyReactionWithManifestationCodings:v9 onsetDate:v12 severityCoding:v16];

    goto LABEL_13;
  }

  v10 = *(a1 + 32);
  v11 = [v5 objectForKeyedSubscript:@"onset"];
  v12 = [v10 medicalDateWithDateTimeString:v11 error:a3];

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

+ (id)identifierWithReference:(id)a3 parentResource:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [HDFHIRReferenceProcessor resourceReferenceInReference:a3 error:a5];
  if (!v8)
  {
    goto LABEL_5;
  }

  if ([HDFHIRReferenceProcessor referenceRequiresContaining:v8])
  {
    v9 = [HDFHIRReferenceProcessor resourceContainedInResource:v7 reference:v8 error:a5];
    if (v9)
    {
      v10 = v9;
      v11 = [HDFHIRReferenceProcessor identifierForResource:v9 containedInResource:v7 error:a5];
LABEL_8:
      v12 = v11;

      goto LABEL_10;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_10;
  }

  if ([HDFHIRReferenceProcessor referenceIsAbsolute:v8])
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    v11 = [HDFHIRReferenceProcessor identifierFromAbsoluteReferenceURL:v10];
    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCD3B8] FHIRIdentifierWithString:v8 error:a5];
LABEL_10:

  return v12;
}

+ (id)identifiersWithReferences:(id)a3 parentResource:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = HKSafeObject();

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [a1 identifierWithReference:*(*(&v22 + 1) + 8 * i) parentResource:v9 error:{a5, v22}];
          if (!v17)
          {

            v19 = 0;
            goto LABEL_12;
          }

          v18 = v17;
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = [v11 copy];
LABEL_12:
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)identifierFromReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [v6 hk_safeDictionaryIfExistsForKeyPath:@"identifier" error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 hk_safeDictionaryIfExistsForKeyPath:@"type" error:a4];
      if (v10)
      {
        v11 = [a1 medicalCodingsWithCodeableConcept:v10 error:a4];
        v12 = [v9 hk_safeStringIfExistsForKeyPath:@"value" error:a4];
        v13 = [MEMORY[0x277CCD3C0] identifierWithTypeCodings:v11 value:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)codedValueWithObservationComponent:(id)a3 FHIRVersion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = HKSafeObject();

  if (!v10)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v11 = [v8 objectForKeyedSubscript:@"code"];
  v12 = [a1 medicalCodingsWithCodeableConcept:v11 error:a5];

  if (!v12)
  {
    goto LABEL_5;
  }

  if (![v8 hk_hasValueForKeyPath:@"referenceRange"])
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [v8 objectForKeyedSubscript:@"referenceRange"];
  v14 = [a1 referenceRangesWithObservationReferenceRanges:v13 error:a5];

  if (v14)
  {
LABEL_8:
    v16 = [a1 inspectableValueWithObservationValues:v8 FHIRVersion:v9 error:a5];
    if (v16)
    {
      v15 = [MEMORY[0x277CCD1A0] codedValueWithCodings:v12 value:v16 referenceRanges:v14];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_12;
  }

LABEL_5:
  v15 = 0;
LABEL_12:

LABEL_13:

  return v15;
}

+ (id)inspectableValueCollectionWithQuantity:(id)a3 error:(id *)a4
{
  v4 = [a1 codedQuantityWithQuantity:a3 error:a4];
  if (v4)
  {
    v5 = MEMORY[0x277CCD558];
    v6 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v4];
    v7 = [v5 inspectableValueCollectionSingleWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)inspectableValueCollectionWithRatio:(id)a3 error:(id *)a4
{
  v4 = [a1 ratioValueWithRatio:a3 error:a4];
  if (v4)
  {
    v5 = MEMORY[0x277CCD558];
    v6 = [MEMORY[0x277CCD550] inspectableValueWithRatio:v4];
    v7 = [v5 inspectableValueCollectionSingleWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)inspectableValueCollectionWithString:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCD558];
    v7 = [MEMORY[0x277CCD550] inspectableValueWithString:v4];
    v5 = [v6 inspectableValueCollectionSingleWithValue:v7];
  }

  return v5;
}

+ (id)inspectableValueCollectionWithCodeableConcept:(id)a3 error:(id *)a4
{
  v4 = [a1 medicalCodingsWithCodeableConcept:a3 error:a4];
  if (v4)
  {
    v5 = MEMORY[0x277CCD558];
    v6 = [MEMORY[0x277CCD550] inspectableValueWithMedicalCodings:v4];
    v7 = [v5 inspectableValueCollectionSingleWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)inspectableValueCollectionWithObservationComponents:(id)a3 FHIRVersion:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = HKSafeObject();

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [a1 codedValueWithObservationComponent:*(*(&v24 + 1) + 8 * i) FHIRVersion:v9 error:{a5, v24}];
          if (!v17)
          {
            v21 = 0;
            goto LABEL_12;
          }

          v18 = v17;
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v12 = [MEMORY[0x277CCD1A8] codedValueCollectionWithCodedValues:v11];
    v19 = MEMORY[0x277CCD558];
    v20 = [MEMORY[0x277CCD550] inspectableValueWithCodedValueCollection:v12];
    v21 = [v19 inspectableValueCollectionSingleWithValue:v20];

LABEL_12:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)inspectableValueCollectionWithObservationValues:(id)a3 FHIRVersion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v10 = [a1 inspectableValueWithObservationValues:v8 FHIRVersion:v9 error:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = [MEMORY[0x277CCD558] inspectableValueCollectionSingleWithValue:v10];
    goto LABEL_3;
  }

  if (!v11)
  {
    v13 = 0;
LABEL_3:
    if (![v8 hk_hasValueForKeyPath:@"component"])
    {
      v17 = v13;
      if (!v17)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"No Observation value provided"];
        goto LABEL_24;
      }

      v18 = 0;
LABEL_10:

LABEL_24:
      goto LABEL_25;
    }

    v23 = v12;
    v14 = [v8 hk_safeArrayForKeyPath:@"component" error:&v23];
    v15 = v23;

    if (v14)
    {
      v22 = v15;
      v16 = [a1 inspectableValueCollectionWithObservationComponents:v14 FHIRVersion:v9 error:&v22];
      v12 = v22;

      if (v16)
      {

        if (v13)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Encountered values of more than one type"];

LABEL_23:
          v17 = 0;
          goto LABEL_24;
        }

        v17 = v16;
        v18 = v17;
        goto LABEL_10;
      }

      v12 = v12;
      if (v12)
      {
        if (!a5)
        {
          goto LABEL_21;
        }

LABEL_16:
        v20 = v12;
        *a5 = v12;
      }
    }

    else
    {
      v12 = v15;
      if (v12)
      {
        if (!a5)
        {
LABEL_21:
          _HKLogDroppedError();
          goto LABEL_22;
        }

        goto LABEL_16;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (a5)
  {
    v19 = v11;
    v17 = 0;
    *a5 = v12;
  }

  else
  {
    _HKLogDroppedError();
    v17 = 0;
  }

LABEL_25:

  return v17;
}

+ (id)inspectableValueCollectionWithDateTime:(id)a3 error:(id *)a4
{
  v4 = [a1 medicalDateWithDateTimeString:a3 error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v4];
    v6 = [MEMORY[0x277CCD558] inspectableValueCollectionSingleWithValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)inspectableValueCollectionWithTime:(id)a3 error:(id *)a4
{
  v4 = [a1 timeSinceMidnightWithTimeString:a3 error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCD550] inspectableValueWithDateComponents:v4];
    v6 = [MEMORY[0x277CCD558] inspectableValueCollectionSingleWithValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)inspectableValueCollectionWithPeriod:(id)a3 error:(id *)a4
{
  v4 = [a1 medicalDateIntervalWithPeriod:a3 error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v4];
    v6 = [MEMORY[0x277CCD558] inspectableValueCollectionSingleWithValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)_integerFromTextCheckingResult:(id)a3 string:(id)a4 index:(int64_t)a5
{
  v7 = a4;
  v8 = [a3 rangeAtIndex:a5];
  v10 = [v7 substringWithRange:{v8, v9}];

  v11 = [v10 integerValue];
  return v11;
}

+ (id)_medicalDateWithDateTimeString:(id)a3 range:(_NSRange)a4 error:(id *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = _DateTimeFormatRegularExpressionYearMonthDayTime();
  v11 = [v10 matchesInString:v9 options:0 range:{location, length}];
  v12 = 0;
  if ([v11 count] == 1)
  {
    v13 = [v11 firstObject];
    v23 = [a1 _integerFromTextCheckingResult:v13 string:v9 index:1];
    v22 = [a1 _integerFromTextCheckingResult:v13 string:v9 index:2];
    v14 = [a1 _integerFromTextCheckingResult:v13 string:v9 index:3];
    v15 = [a1 _integerFromTextCheckingResult:v13 string:v9 index:4];
    v16 = [a1 _integerFromTextCheckingResult:v13 string:v9 index:5];
    v17 = [a1 _integerFromTextCheckingResult:v13 string:v9 index:6];
    v18 = [v13 rangeAtIndex:7];
    v20 = [v9 substringWithRange:{v18, v19}];
    v12 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v23 month:v22 day:v14 hour:v15 minute:v16 second:v17 originalTimeZoneString:v20 error:a5];
  }

  return v12;
}

+ (id)_medicalDateWithOnlyDateString:(id)a3 range:(_NSRange)a4 error:(id *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  if (_DateTimeFormatRegularExpressionYear_onceToken != -1)
  {
    +[HDHealthRecordsExtractionUtilities _medicalDateWithOnlyDateString:range:error:];
  }

  v10 = _DateTimeFormatRegularExpressionYear_regex;
  v11 = [v10 matchesInString:v9 options:0 range:{location, length}];
  if ([v11 count] == 1)
  {
    v12 = [v11 firstObject];
    v13 = [a1 _integerFromTextCheckingResult:v12 string:v9 index:1];
    v14 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v13 error:a5];
LABEL_5:
    v15 = v14;
LABEL_10:

    goto LABEL_11;
  }

  if (_DateTimeFormatRegularExpressionYearMonth_onceToken != -1)
  {
    +[HDHealthRecordsExtractionUtilities _medicalDateWithOnlyDateString:range:error:];
  }

  v16 = _DateTimeFormatRegularExpressionYearMonth_regex;

  v17 = [v16 matchesInString:v9 options:0 range:{location, length}];

  if ([v17 count] == 1)
  {
    v12 = [v17 firstObject];
    v18 = [a1 _integerFromTextCheckingResult:v12 string:v9 index:1];
    v19 = [a1 _integerFromTextCheckingResult:v12 string:v9 index:2];
    v15 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v18 month:v19 error:a5];
    v11 = v17;
    v10 = v16;
    goto LABEL_10;
  }

  if (_DateTimeFormatRegularExpressionYearMonthDay_onceToken != -1)
  {
    +[HDHealthRecordsExtractionUtilities _medicalDateWithOnlyDateString:range:error:];
  }

  v10 = _DateTimeFormatRegularExpressionYearMonthDay_regex;

  v11 = [v10 matchesInString:v9 options:0 range:{location, length}];

  if ([v11 count] == 1)
  {
    v12 = [v11 firstObject];
    v21 = [a1 _integerFromTextCheckingResult:v12 string:v9 index:1];
    v22 = [a1 _integerFromTextCheckingResult:v12 string:v9 index:2];
    v23 = [a1 _integerFromTextCheckingResult:v12 string:v9 index:3];
    v14 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v21 month:v22 day:v23 error:a5];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)medicalDateWithDateTimeString:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [v6 length];
    v9 = [a1 _medicalDateWithDateTimeString:v6 range:0 error:{v8, a4}];
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = [a1 _medicalDateWithOnlyDateString:v6 range:0 error:{v8, a4}];
      if (!v7)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"FHIR date string not parseable"];
      }
    }
  }

  return v7;
}

+ (id)medicalDateWithDateString:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [v6 length];
    v9 = _DateTimeFormatRegularExpressionYearMonthDayTime();
    v10 = [v9 matchesInString:v6 options:0 range:{0, v8}];
    if ([v10 count] == 1)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_251CC8000, v11, OS_LOG_TYPE_DEFAULT, "HDHealthRecordsExtractionUtilities: received 'date' string with time, dropping time", v17, 2u);
      }

      v12 = [v6 substringWithRange:{0, objc_msgSend(v6, "rangeOfString:", @"T"}];

      v8 = [v12 length];
      v6 = v12;
    }

    v14 = [a1 _medicalDateWithOnlyDateString:v6 range:0 error:{v8, a4}];
    v13 = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"FHIR instant string not parseable"];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)medicalDateWithInstantString:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [a1 _medicalDateWithDateTimeString:v6 range:0 error:{objc_msgSend(v6, "length"), a4}];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"FHIR instant string not parseable"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)timeSinceMidnightWithTimeString:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [v6 length];
    if (_TimeFormatRegularExpressionTimeSinceMidnight_onceToken != -1)
    {
      +[HDHealthRecordsExtractionUtilities timeSinceMidnightWithTimeString:error:];
    }

    v9 = [_TimeFormatRegularExpressionTimeSinceMidnight_regex matchesInString:v6 options:0 range:{0, v8}];
    if ([v9 count] == 1)
    {
      v10 = [v9 firstObject];
      v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v11 setHour:{objc_msgSend(a1, "_integerFromTextCheckingResult:string:index:", v10, v6, 1)}];
      [v11 setMinute:{objc_msgSend(a1, "_integerFromTextCheckingResult:string:index:", v10, v6, 2)}];
      [v11 setSecond:{objc_msgSend(a1, "_integerFromTextCheckingResult:string:index:", v10, v6, 3)}];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"FHIR time string not parseable"];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)medicalDateIntervalWithPeriod:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    goto LABEL_5;
  }

  if ([v6 hk_hasValueForKeyPath:@"start"])
  {
    v8 = [v6 hk_safeStringForKeyPath:@"start" error:a4];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 medicalDateWithDateTimeString:v8 error:a4];

      goto LABEL_7;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_7:
  if ([v6 hk_hasValueForKeyPath:@"end"])
  {
    v12 = [v6 hk_safeStringForKeyPath:@"end" error:a4];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [a1 medicalDateWithDateTimeString:v12 error:a4];
  }

  else
  {
    v14 = 0;
  }

  if (v10 | v14)
  {
    if (v14)
    {
      if (v10)
      {
        [MEMORY[0x277CCD5E0] medicalDateIntervalWithStartDate:v10 endDate:v14 error:a4];
      }

      else
      {
        [MEMORY[0x277CCD5E0] medicalDateIntervalWithEndDate:v14];
      }
      v11 = ;
    }

    else
    {
      v11 = [MEMORY[0x277CCD5E0] medicalDateIntervalWithStartDate:v10];
    }

    goto LABEL_20;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"FHIR Period must have either start or end"];
LABEL_13:
  v11 = 0;
LABEL_20:

LABEL_21:

  return v11;
}

+ (id)_earliestDosageDateWithMedicationDosageArray:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v31;
      v27 = a1;
      v28 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [a1 _medicalDateIntervalWithDosage:*(*(&v30 + 1) + 8 * i) error:{a4, v26}];
          v14 = [v13 startDate];

          if (v14)
          {
            v15 = [v10 dateForUTC];
            if (!v15)
            {
              goto LABEL_10;
            }

            v16 = v15;
            [v13 startDate];
            v18 = v17 = a4;
            [v18 dateForUTC];
            v20 = v19 = v9;
            v21 = [v10 dateForUTC];
            v22 = [v20 hk_isBeforeDate:v21];

            v9 = v19;
            a4 = v17;
            a1 = v27;
            v11 = v28;

            if (v22)
            {
LABEL_10:
              v23 = [v13 startDate];

              v10 = v23;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v6 = v26;
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_medicationDosagesWithDosageArray:(id)a3 FHIRRelease:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = HKSafeObject();

  if (v10)
  {
    [MEMORY[0x277CBEB18] array];
    v32 = v31 = v8;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v8;
    v33 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v33)
    {
      v12 = *MEMORY[0x277CCBDC8];
      v13 = *v35;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        if (v12 != v9)
        {
          if ([*(*(&v34 + 1) + 8 * v14) hk_hasValueForKeyPath:@"patientInstruction"])
          {
            break;
          }
        }

        if ([v15 hk_hasValueForKeyPath:@"text"])
        {
          v16 = v15;
          v17 = @"text";
          goto LABEL_12;
        }

        v19 = 0;
LABEL_15:
        v20 = [a1 _medicalDateIntervalWithDosage:v15 error:a5];
        if (v19 | v20)
        {
          [MEMORY[0x277CCD648] dosageWithInstruction:v19 timingPeriod:v20];
          v21 = a5;
          v22 = v13;
          v23 = v12;
          v24 = a1;
          v25 = v9;
          v27 = v26 = v11;
          [v32 addObject:v27];

          v11 = v26;
          v9 = v25;
          a1 = v24;
          v12 = v23;
          v13 = v22;
          a5 = v21;
        }

        if (v33 == ++v14)
        {
          v33 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v33)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }
      }

      v16 = v15;
      v17 = @"patientInstruction";
LABEL_12:
      v18 = [v16 hk_safeStringForKeyPath:v17 error:a5];
      if (!v18)
      {

        v10 = 0;
        v8 = v31;
        v28 = v32;
        goto LABEL_26;
      }

      v19 = v18;
      goto LABEL_15;
    }

LABEL_19:

    v28 = v32;
    if ([v32 count])
    {
      v10 = v32;
    }

    else
    {
      if (![v11 count])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Dosage array must be nonempty if present"];
      }

      v10 = 0;
    }

    v8 = v31;
LABEL_26:
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_medicalDateIntervalWithDosage:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7 || ![v6 hk_hasValueForKeyPath:@"timing"] || (objc_msgSend(v6, "hk_safeDictionaryForKeyPath:error:", @"timing", a4), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = 0;
    goto LABEL_9;
  }

  v9 = v8;
  if (![v8 hk_hasValueForKeyPath:@"repeat"])
  {
    v11 = 0;
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v10 = [v9 hk_safeDictionaryForKeyPath:@"repeat" error:a4];
  v11 = v10;
  if (!v10 || ![v10 hk_hasValueForKeyPath:@"boundsPeriod"])
  {
    goto LABEL_13;
  }

  v12 = [v11 objectForKeyedSubscript:@"boundsPeriod"];
  v13 = [a1 medicalDateIntervalWithPeriod:v12 error:a4];

LABEL_14:
LABEL_9:

  return v13;
}

+ (id)referencedMedicationStatementActorTypeWithString:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    v7 = [HDFHIRReferenceProcessor identifierFromAbsoluteReferenceURL:v6];
    v8 = [v7 resourceType];
    if ([v8 length])
    {
      if ([v8 isEqualToString:@"Organization"])
      {
        v9 = &unk_28641A218;
      }

      else if ([v8 isEqualToString:@"Patient"])
      {
        v9 = &unk_28641A230;
      }

      else if ([v8 isEqualToString:@"Practitioner"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"PractitionerRole"))
      {
        v9 = &unk_28641A248;
      }

      else if ([v8 isEqualToString:@"RelatedPerson"])
      {
        v9 = &unk_28641A260;
      }

      else
      {
        v9 = &unk_28641A278;
      }
    }

    else
    {
      v9 = &unk_28641A200;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)preferredNameWithHumanNames:(id)a3 FHIRVersion:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [HDHealthRecordParsedHumanName parsedNamesWithHumanNames:a3 FHIRVersion:v7 error:a5];
  if (v8)
  {
    v9 = [HDHealthRecordParsedHumanName preferredNameInNames:v8 FHIRVersion:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 fullName];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"no preferred name available"];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)stringWithRTF:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = [v4 dataUsingEncoding:4];
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v8 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
    v24 = getNSDocumentTypeDocumentAttributeSymbolLoc_ptr;
    if (!getNSDocumentTypeDocumentAttributeSymbolLoc_ptr)
    {
      v9 = UIFoundationLibrary();
      v22[3] = dlsym(v9, "NSDocumentTypeDocumentAttribute");
      getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = v22[3];
      v8 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v8)
    {
      +[HDHealthRecordsExtractionUtilities stringWithRTF:error:];
    }

    v10 = *v8;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v11 = getNSRTFTextDocumentTypeSymbolLoc_ptr;
    v24 = getNSRTFTextDocumentTypeSymbolLoc_ptr;
    v25 = v10;
    if (!getNSRTFTextDocumentTypeSymbolLoc_ptr)
    {
      v12 = UIFoundationLibrary();
      v22[3] = dlsym(v12, "NSRTFTextDocumentType");
      getNSRTFTextDocumentTypeSymbolLoc_ptr = v22[3];
      v11 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v11)
    {
      +[HDHealthRecordsExtractionUtilities stringWithRTF:error:];
    }

    v26[0] = *v11;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v26[0];
    v15 = [v13 dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v16 = [v7 initWithData:v6 options:v15 documentAttributes:0 error:0];
    if (v16)
    {
      v17 = [v16 string];
    }

    else
    {
      v17 = v4;
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)_determineEnteredInError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 lowercaseString];
    v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" -"];
    v7 = [v5 componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 componentsJoinedByString:@"-"];

    LOBYTE(v4) = [v8 isEqualToString:@"entered-in-error"];
    LOBYTE(v3) = v4;
  }

  return v3;
}

+ (id)enteredInErrorWithStatusString:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_determineEnteredInError:", v5)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)wasEnteredInError:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"status"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:@"verificationStatus"];
  }

  v10 = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_determineEnteredInError:", v10)}];
LABEL_8:
    v12 = v11;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [a1 enteredInErrorWithConditionVerificationStatusCodeableConcept:v10 error:a4];
    goto LABEL_8;
  }

  v13 = MEMORY[0x277CCA9B8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  [v13 hk_assignError:a4 code:3 format:{@"Unexpected class for status (expected %@ or %@, found %@)", v14, v15, objc_opt_class()}];
  v12 = 0;
LABEL_10:

  return v12;
}

+ (id)localeFromLanguage:(id)a3 error:(id *)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = HKSafeObject();
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end