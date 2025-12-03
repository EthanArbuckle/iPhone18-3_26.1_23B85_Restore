@interface HDHealthRecordsExtractionUtilities
+ (BOOL)_determineEnteredInError:(id)error;
+ (id)BOOLeanNotDoneFromStatusCode:(id)code error:(id *)error;
+ (id)BOOLeanNotTakenFromStatusCode:(id)code error:(id *)error;
+ (id)_FHIRMedicalCodingWithCode:(id)code medicalCodingSystem:(id)system codingVersion:(id)version error:(id *)error;
+ (id)_earliestDosageDateWithMedicationDosageArray:(id)array error:(id *)error;
+ (id)_firstCodingForSystem:(id)system inCodeableConcept:(id)concept error:(id *)error;
+ (id)_medicalDateIntervalWithDosage:(id)dosage error:(id *)error;
+ (id)_medicalDateWithDateTimeString:(id)string range:(_NSRange)range error:(id *)error;
+ (id)_medicalDateWithOnlyDateString:(id)string range:(_NSRange)range error:(id *)error;
+ (id)_medicationDosagesWithDosageArray:(id)array FHIRRelease:(id)release error:(id *)error;
+ (id)_transformArray:(id)array error:(id *)error transformBlock:(id)block;
+ (id)allergyIntoleranceClinicalStatusCodingWithCodeableConcept:(id)concept error:(id *)error;
+ (id)allergyIntoleranceVerificationStatusCodingWithCodeableConcept:(id)concept error:(id *)error;
+ (id)allergyReactionsWithAllergyIntoleranceReaction:(id)reaction error:(id *)error;
+ (id)codedQuantityWithQuantity:(id)quantity error:(id *)error;
+ (id)codedValueWithObservationComponent:(id)component FHIRVersion:(id)version error:(id *)error;
+ (id)conditionClinicalStatusCodingWithCodeableConcept:(id)concept error:(id *)error;
+ (id)conditionVerificationStatusCodingWithCodeableConcept:(id)concept error:(id *)error;
+ (id)coverageClassificationWithClassElements:(id)elements error:(id *)error;
+ (id)enteredInErrorWithAllergyIntoleranceVerificationStatusCodeableConcept:(id)concept error:(id *)error;
+ (id)enteredInErrorWithConditionVerificationStatusCodeableConcept:(id)concept error:(id *)error;
+ (id)enteredInErrorWithStatusString:(id)string error:(id *)error;
+ (id)identifierFromReference:(id)reference error:(id *)error;
+ (id)identifierWithReference:(id)reference parentResource:(id)resource error:(id *)error;
+ (id)identifiersWithReferences:(id)references parentResource:(id)resource error:(id *)error;
+ (id)inspectableValueCollectionWithCodeableConcept:(id)concept error:(id *)error;
+ (id)inspectableValueCollectionWithDateTime:(id)time error:(id *)error;
+ (id)inspectableValueCollectionWithObservationComponents:(id)components FHIRVersion:(id)version error:(id *)error;
+ (id)inspectableValueCollectionWithObservationValues:(id)values FHIRVersion:(id)version error:(id *)error;
+ (id)inspectableValueCollectionWithPeriod:(id)period error:(id *)error;
+ (id)inspectableValueCollectionWithQuantity:(id)quantity error:(id *)error;
+ (id)inspectableValueCollectionWithRatio:(id)ratio error:(id *)error;
+ (id)inspectableValueCollectionWithString:(id)string error:(id *)error;
+ (id)inspectableValueCollectionWithTime:(id)time error:(id *)error;
+ (id)inspectableValueWithAbatementValue:(id)value error:(id *)error;
+ (id)inspectableValueWithObservationValues:(id)values FHIRVersion:(id)version error:(id *)error;
+ (id)inspectableValueWithOnsetValue:(id)value error:(id *)error;
+ (id)localeFromLanguage:(id)language error:(id *)error;
+ (id)medicalCodingCollectionArrayWithCodeableConcepts:(id)concepts error:(id *)error;
+ (id)medicalCodingCollectionWithCodeableConcept:(id)concept error:(id *)error;
+ (id)medicalCodingWithAllergyIntoleranceCategoryCode:(id)code error:(id *)error;
+ (id)medicalCodingWithAllergyIntoleranceCriticalityCode:(id)code error:(id *)error;
+ (id)medicalCodingWithAllergyIntoleranceSeverityCode:(id)code error:(id *)error;
+ (id)medicalCodingWithAllergyIntoleranceStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithAllergyIntoleranceTypeCode:(id)code error:(id *)error;
+ (id)medicalCodingWithCarePlanStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithCode:(id)code error:(id *)error;
+ (id)medicalCodingWithCoding:(id)coding error:(id *)error;
+ (id)medicalCodingWithConditionClinicalStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithConditionVerificationStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithCoverageStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithDeviceStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithDiagnosticReportStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithEventStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithGoalStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithImmunizationStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithMedicationAdminStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithMedicationDispenseStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithMedicationOrderStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithMedicationStatementStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithObservationStatus:(id)status error:(id *)error;
+ (id)medicalCodingWithProcedureStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithR4AllergyIntoleranceCriticalityCode:(id)code error:(id *)error;
+ (id)medicalCodingWithR4MedicationDispenseStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingWithR4MedicationRequestStatusCode:(id)code error:(id *)error;
+ (id)medicalCodingsArrayWithCodeableConcept:(id)concept error:(id *)error;
+ (id)medicalCodingsWithCodeableConcept:(id)concept error:(id *)error;
+ (id)medicalCodingsWithCodeableConcepts:(id)concepts error:(id *)error;
+ (id)medicalCodingsWithReference:(id)reference error:(id *)error;
+ (id)medicalDateIntervalWithPeriod:(id)period error:(id *)error;
+ (id)medicalDateWithDateString:(id)string error:(id *)error;
+ (id)medicalDateWithDateTimeString:(id)string error:(id *)error;
+ (id)medicalDateWithInstantString:(id)string error:(id *)error;
+ (id)observationCategoryWithObservationCategories:(id)categories error:(id *)error;
+ (id)observationCategoryWithObservationCategory:(id)category error:(id *)error;
+ (id)preferredNameWithHumanNames:(id)names FHIRVersion:(id)version error:(id *)error;
+ (id)preferredSupporedCategory:(id)category unsupportedCategories:(id)categories error:(id *)error;
+ (id)ratioValueWithRatio:(id)ratio error:(id *)error;
+ (id)referenceRangeWithObservationReferenceRange:(id)range error:(id *)error;
+ (id)referenceRangesWithObservationReferenceRanges:(id)ranges error:(id *)error;
+ (id)referencedMedicationStatementActorTypeWithString:(id)string error:(id *)error;
+ (id)resourceReferencedBy:(id)by containedIn:(id)in error:(id *)error;
+ (id)stringArrayWithStrings:(id)strings error:(id *)error;
+ (id)stringWithAttachment:(id)attachment error:(id *)error;
+ (id)stringWithRTF:(id)f error:(id *)error;
+ (id)timeSinceMidnightWithTimeString:(id)string error:(id *)error;
+ (id)wasEnteredInError:(id)error error:(id *)a4;
+ (id)wrapInArray:(id)array error:(id *)error;
+ (int64_t)_integerFromTextCheckingResult:(id)result string:(id)string index:(int64_t)index;
@end

@implementation HDHealthRecordsExtractionUtilities

+ (id)_FHIRMedicalCodingWithCode:(id)code medicalCodingSystem:(id)system codingVersion:(id)version error:(id *)error
{
  codeCopy = code;
  systemCopy = system;
  versionCopy = version;
  objc_opt_class();
  v11 = HKSafeObject();

  if (v11)
  {
    v11 = [MEMORY[0x277CCD5C0] medicalCodingWithSystem:systemCopy codingVersion:versionCopy code:codeCopy displayString:0];
  }

  return v11;
}

+ (id)_firstCodingForSystem:(id)system inCodeableConcept:(id)concept error:(id *)error
{
  systemCopy = system;
  conceptCopy = concept;
  v10 = [self medicalCodingsWithCodeableConcept:conceptCopy error:error];
  if (v10)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__HDHealthRecordsExtractionUtilities__firstCodingForSystem_inCodeableConcept_error___block_invoke;
    v16[3] = &unk_2796E2978;
    v11 = systemCopy;
    v17 = v11;
    v12 = [v10 hk_firstObjectPassingTest:v16];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Expecting codeable concept with system %@ but none was present in %@", v11, conceptCopy}];
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

+ (id)wrapInArray:(id)array error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = array;
  v4 = MEMORY[0x277CBEA60];
  arrayCopy = array;
  v6 = [v4 arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)stringArrayWithStrings:(id)strings error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = stringsCopy;
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

+ (id)medicalCodingWithCoding:(id)coding error:(id *)error
{
  codingCopy = coding;
  objc_opt_class();
  v6 = HKSafeObject();

  if (!v6)
  {
    goto LABEL_5;
  }

  if ([codingCopy hk_hasValueForKeyPath:@"system"])
  {
    v7 = [codingCopy hk_safeStringForKeyPath:@"system" error:error];
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
  if (![codingCopy hk_hasValueForKeyPath:@"version"])
  {
    v11 = 0;
LABEL_11:
    if ([codingCopy hk_hasValueForKeyPath:@"code"])
    {
      v12 = [codingCopy hk_safeStringForKeyPath:@"code" error:error];
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

    if ([codingCopy hk_hasValueForKeyPath:@"display"])
    {
      v13 = [codingCopy hk_safeStringForKeyPath:@"display" error:error];
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

  v11 = [codingCopy hk_safeStringForKeyPath:@"version" error:error];
  if (v11)
  {
    goto LABEL_11;
  }

  v10 = 0;
LABEL_22:

LABEL_23:

  return v10;
}

+ (id)medicalCodingCollectionWithCodeableConcept:(id)concept error:(id *)error
{
  v4 = [self medicalCodingsWithCodeableConcept:concept error:error];
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

+ (id)medicalCodingsWithCodeableConcept:(id)concept error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    goto LABEL_4;
  }

  if ([conceptCopy hk_hasValueForKeyPath:@"text"])
  {
    v8 = [conceptCopy hk_safeStringForKeyPath:@"text" error:error];
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

  if (![conceptCopy hk_hasValueForKeyPath:@"coding"])
  {
    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_10;
  }

  v10 = [conceptCopy hk_safeArrayForKeyPath:@"coding" error:error];
  if (v10)
  {
LABEL_10:
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v8)
    {
      v12 = MEMORY[0x277CCD5C0];
      textSystem = [MEMORY[0x277CCD5D0] textSystem];
      v14 = [v12 medicalCodingWithSystem:textSystem codingVersion:*MEMORY[0x277CCC360] code:v8 displayString:v8];
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

          v20 = [self medicalCodingWithCoding:*(*(&v24 + 1) + 8 * i) error:{error, v24}];
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
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Medical codings has no valid text or coding"];
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

+ (id)_transformArray:(id)array error:(id *)error transformBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  blockCopy = block;
  objc_opt_class();
  v9 = HKSafeObject();

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = arrayCopy;
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

          v16 = blockCopy[2](blockCopy, *(*(&v21 + 1) + 8 * i), error);
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

+ (id)medicalCodingCollectionArrayWithCodeableConcepts:(id)concepts error:(id *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__HDHealthRecordsExtractionUtilities_medicalCodingCollectionArrayWithCodeableConcepts_error___block_invoke;
  v6[3] = &__block_descriptor_40_e12__24__0_8__16l;
  v6[4] = self;
  v4 = [self _transformArray:concepts error:error transformBlock:v6];

  return v4;
}

+ (id)medicalCodingsWithCodeableConcepts:(id)concepts error:(id *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HDHealthRecordsExtractionUtilities_medicalCodingsWithCodeableConcepts_error___block_invoke;
  v6[3] = &__block_descriptor_40_e12__24__0_8__16l;
  v6[4] = self;
  v4 = [self _transformArray:concepts error:error transformBlock:v6];

  return v4;
}

+ (id)medicalCodingsArrayWithCodeableConcept:(id)concept error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [self medicalCodingsWithCodeableConcept:concept error:error];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)medicalCodingWithCode:(id)code error:(id *)error
{
  codeCopy = code;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = [&unk_28641A1D8 objectForKeyedSubscript:codeCopy];
    v7 = MEMORY[0x277CCD5C0];
    fHIRQuantityComparatorSystem = [MEMORY[0x277CCD5D0] FHIRQuantityComparatorSystem];
    v5 = [v7 medicalCodingWithSystem:fHIRQuantityComparatorSystem codingVersion:0 code:codeCopy displayString:v6];
  }

  return v5;
}

+ (id)codedQuantityWithQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    v12 = 0;
    goto LABEL_32;
  }

  v8 = [quantityCopy hk_safeNumberForKeyPath:@"value" error:error];
  v9 = v8;
  if (v8)
  {
    stringValue = [v8 stringValue];
    if (!stringValue)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Unable to convert number to string"];
LABEL_10:
      v12 = 0;
LABEL_30:

      goto LABEL_31;
    }

    if ([quantityCopy hk_hasValueForKeyPath:@"unit"])
    {
      v11 = [quantityCopy hk_safeStringForKeyPath:@"unit" error:error];
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
    }

    if ([quantityCopy hk_hasValueForKeyPath:@"system"])
    {
      v13 = [quantityCopy hk_safeStringForKeyPath:@"system" error:error];
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

    if ([quantityCopy hk_hasValueForKeyPath:@"code"])
    {
      v16 = [quantityCopy hk_safeStringForKeyPath:@"code" error:error];
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
    if ([quantityCopy hk_hasValueForKeyPath:@"comparator"])
    {
      v19 = [quantityCopy hk_safeStringForKeyPath:@"comparator" error:error];
      if (!v19 || (v20 = v19, [self medicalCodingWithCode:v19 error:error], v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
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

    v12 = [MEMORY[0x277CCD198] codedQuantityWithValue:stringValue comparatorCoding:v21 unitCoding:v18];

    goto LABEL_27;
  }

  v12 = 0;
LABEL_31:

LABEL_32:

  return v12;
}

+ (id)ratioValueWithRatio:(id)ratio error:(id *)error
{
  ratioCopy = ratio;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [ratioCopy objectForKeyedSubscript:@"numerator"];
    v9 = [self codedQuantityWithQuantity:v8 error:error];

    if (v9)
    {
      v10 = [ratioCopy objectForKeyedSubscript:@"denominator"];
      v11 = [self codedQuantityWithQuantity:v10 error:error];

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

+ (id)stringWithAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v8 = [attachmentCopy hk_safeStringForKeyPath:@"contentType" error:error];
  v9 = v8;
  if (v8)
  {
    if (v8 == @"text/plain" || (v10 = [(__CFString *)v8 isEqualToString:@"text/plain"], v9 == @"application/rtf") || (v10 & 1) != 0 || ([(__CFString *)v9 isEqualToString:@"application/rtf"]& 1) != 0)
    {
      v11 = [attachmentCopy hk_safeStringForKeyPath:@"data" error:error];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0];
        v13 = v12;
        if (v12 && [v12 length])
        {
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
          if (v14)
          {
            v15 = [self stringWithRTF:v14 error:error];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Error RTF scrubbing valueAttachment.data"];
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
            [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Decoded valueAttachment.data is not a UTF8 String"];
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
          [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Could not Base64 decode valueAttachment.data"];
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

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Unsupported MIME type for valueAttachment.contentType %@", v9}];
  }

  v16 = 0;
LABEL_29:

LABEL_30:

  return v16;
}

+ (id)observationCategoryWithObservationCategory:(id)category error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [self medicalCodingsWithCodeableConcept:category error:?];
  if (v5)
  {
    errorCopy = error;
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
          codingSystem = [v13 codingSystem];
          if ([codingSystem isEqual:observationCategoryWithObservationCategory_error__observationCategorySystem])
          {
            code = [v13 code];

            if (!code)
            {
              continue;
            }

            code2 = [v13 code];
            codingSystem = HKDiagnosticTestResultCategoryFromNSString();

            if (codingSystem)
            {
              [v6 addObject:codingSystem];
            }

            else
            {
              code3 = [v13 code];
              [v7 addObject:code3];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v18 = [HDHealthRecordsExtractionUtilities preferredSupporedCategory:v6 unsupportedCategories:v7 error:errorCopy];

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

+ (id)observationCategoryWithObservationCategories:(id)categories error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [self medicalCodingCollectionArrayWithCodeableConcepts:categories error:?];
  if (!v5)
  {
    v23 = 0;
    goto LABEL_29;
  }

  errorCopy = error;
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
      codings = [v10 codings];
      v12 = [codings countByEnumeratingWithState:&v36 objects:v44 count:16];
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
            objc_enumerationMutation(codings);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          codingSystem = [v17 codingSystem];
          if ([codingSystem isEqual:observationCategoryWithObservationCategories_error__observationCategorySystem])
          {
            code = [v17 code];

            if (!code)
            {
              continue;
            }

            code2 = [v17 code];
            codingSystem = HKDiagnosticTestResultCategoryFromNSString();

            if (codingSystem)
            {
              [v6 addObject:codingSystem];
              if (v14 > 0)
              {
                v24 = MEMORY[0x277CCA9B8];
                allObjects = [v6 allObjects];
                v26 = [allObjects componentsJoinedByString:{@", "}];
                [v24 hk_assignError:errorCopy code:3 format:{@"More than 1 supported Observation category in same R4 coding: %@", v26}];

                v23 = 0;
                v22 = v35;
                goto LABEL_27;
              }

              v14 = 1;
            }

            else
            {
              code3 = [v17 code];
              [v35 addObject:code3];
            }
          }
        }

        v13 = [codings countByEnumeratingWithState:&v36 objects:v44 count:16];
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
  v23 = [HDHealthRecordsExtractionUtilities preferredSupporedCategory:v6 unsupportedCategories:v35 error:errorCopy];
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

+ (id)preferredSupporedCategory:(id)category unsupportedCategories:(id)categories error:(id *)error
{
  categoryCopy = category;
  categoriesCopy = categories;
  if ([categoriesCopy count] && !objc_msgSend(categoryCopy, "count"))
  {
    v12 = MEMORY[0x277CCA9B8];
    allObjects = [categoriesCopy allObjects];
    v14 = [allObjects componentsJoinedByString:{@", "}];
    [v12 hk_assignError:error code:3 format:{@"unsupported Observation categories: %@", v14}];
  }

  else
  {
    if ([categoryCopy count] < 2)
    {
      anyObject = [categoryCopy anyObject];
      goto LABEL_8;
    }

    v9 = *MEMORY[0x277CCBC98];
    if ([categoryCopy containsObject:*MEMORY[0x277CCBC98]] || (v9 = *MEMORY[0x277CCBC90], objc_msgSend(categoryCopy, "containsObject:", *MEMORY[0x277CCBC90])))
    {
      anyObject = v9;
LABEL_8:
      v11 = anyObject;
      goto LABEL_12;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"No supported Observation categories found"];
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)referenceRangesWithObservationReferenceRanges:(id)ranges error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = rangesCopy;
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

          v14 = [self referenceRangeWithObservationReferenceRange:*(*(&v19 + 1) + 8 * i) error:{error, v19}];
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

+ (id)referenceRangeWithObservationReferenceRange:(id)range error:(id *)error
{
  rangeCopy = range;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    goto LABEL_4;
  }

  if ([rangeCopy hk_hasValueForKeyPath:@"low"])
  {
    v8 = [rangeCopy objectForKeyedSubscript:@"low"];
    v9 = [self codedQuantityWithQuantity:v8 error:error];

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

  if (![rangeCopy hk_hasValueForKeyPath:@"high"])
  {
    v12 = 0;
LABEL_10:
    if ([rangeCopy hk_hasValueForKeyPath:@"meaning"])
    {
      v13 = [rangeCopy objectForKeyedSubscript:@"meaning"];
      v14 = [self medicalCodingsWithCodeableConcept:v13 error:error];

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
        if (([rangeCopy hk_hasValueForKeyPath:@"text"] & 1) == 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Observation.ReferenceRange missing high, low and text"}];
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

  v11 = [rangeCopy objectForKeyedSubscript:@"high"];
  v12 = [self codedQuantityWithQuantity:v11 error:error];

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

+ (id)medicalCodingWithObservationStatus:(id)status error:(id *)error
{
  statusCopy = status;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCD5C0];
    fHIRObservationStatus = [MEMORY[0x277CCD5D0] FHIRObservationStatus];
    v5 = [v6 medicalCodingWithSystem:fHIRObservationStatus codingVersion:*MEMORY[0x277CCC338] code:statusCopy displayString:0];
  }

  return v5;
}

+ (id)medicalCodingWithMedicationStatementStatusCode:(id)code error:(id *)error
{
  codeCopy = code;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCD5C0];
    fHIRMedicationStatementStatus = [MEMORY[0x277CCD5D0] FHIRMedicationStatementStatus];
    v5 = [v6 medicalCodingWithSystem:fHIRMedicationStatementStatus codingVersion:*MEMORY[0x277CCC338] code:codeCopy displayString:0];
  }

  return v5;
}

+ (id)BOOLeanNotDoneFromStatusCode:(id)code error:(id *)error
{
  codeCopy = code;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    lowercaseString = [codeCopy lowercaseString];
    v5 = [v6 numberWithBool:{objc_msgSend(lowercaseString, "isEqualToString:", @"not-done"}];
  }

  return v5;
}

+ (id)BOOLeanNotTakenFromStatusCode:(id)code error:(id *)error
{
  codeCopy = code;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    lowercaseString = [codeCopy lowercaseString];
    v5 = [v6 numberWithBool:{objc_msgSend(lowercaseString, "isEqualToString:", @"not-taken"}];
  }

  return v5;
}

+ (id)medicalCodingsWithReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    if ([referenceCopy hk_hasValueForKeyPath:@"display"])
    {
      v6 = [referenceCopy hk_safeStringForKeyPath:@"display" error:error];
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = MEMORY[0x277CCD5C0];
      textSystem = [MEMORY[0x277CCD5D0] textSystem];
      v10 = [v8 medicalCodingWithSystem:textSystem codingVersion:*MEMORY[0x277CCC360] code:v6 displayString:v6];
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

+ (id)resourceReferencedBy:(id)by containedIn:(id)in error:(id *)error
{
  byCopy = by;
  inCopy = in;
  objc_opt_class();
  v9 = HKSafeObject();

  if (v9)
  {
    v10 = [HDFHIRReferenceProcessor resourceReferenceInReference:byCopy error:error];
    if (v10)
    {
      v11 = [HDFHIRReferenceProcessor resourceContainedInResource:inCopy reference:v10 error:error];
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

+ (id)inspectableValueWithObservationValues:(id)values FHIRVersion:(id)version error:(id *)error
{
  valuesCopy = values;
  versionCopy = version;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([valuesCopy hk_hasValueForKeyPath:@"valueQuantity"])
  {
    v11 = [valuesCopy objectForKeyedSubscript:@"valueQuantity"];
    v12 = [self codedQuantityWithQuantity:v11 error:error];

    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v12];
    [v10 addObject:v13];
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueCodeableConcept"])
  {
    v14 = [valuesCopy objectForKeyedSubscript:@"valueCodeableConcept"];
    v15 = [self medicalCodingsWithCodeableConcept:v14 error:error];

    if (!v15)
    {
      goto LABEL_51;
    }

    v16 = [MEMORY[0x277CCD550] inspectableValueWithMedicalCodings:v15];
    [v10 addObject:v16];
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueString"])
  {
    v17 = [valuesCopy hk_safeStringForKeyPath:@"valueString" error:error];
    if (!v17)
    {
      goto LABEL_51;
    }

    v18 = v17;
    v19 = [MEMORY[0x277CCD550] inspectableValueWithString:v17];
    [v10 addObject:v19];
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueBoolean"] && (objc_msgSend(versionCopy, "FHIRRelease"), v20 = objc_claimAutoreleasedReturnValue(), v21 = *MEMORY[0x277CCBDD0], v20, v20 == v21))
  {
    v22 = [valuesCopy hk_safeNumberForKeyPath:@"valueBoolean" error:error];
    if (!v22)
    {
      goto LABEL_51;
    }

    v23 = v22;
    v24 = [MEMORY[0x277CCD550] inspectableValueWithBoolean:v22];
    [v10 addObject:v24];
  }

  else if (![valuesCopy hk_expectMissingKeyPath:@"valueBoolean" error:error])
  {
    goto LABEL_51;
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueInteger"] && (objc_msgSend(versionCopy, "FHIRRelease"), v25 = objc_claimAutoreleasedReturnValue(), v26 = *MEMORY[0x277CCBDD0], v25, v25 == v26))
  {
    v27 = [valuesCopy hk_safeNumberForKeyPath:@"valueInteger" error:error];
    if (!v27)
    {
      goto LABEL_51;
    }

    v28 = v27;
    v29 = [MEMORY[0x277CCD550] inspectableValueWithInteger:v27];
    [v10 addObject:v29];
  }

  else if (![valuesCopy hk_expectMissingKeyPath:@"valueInteger" error:error])
  {
    goto LABEL_51;
  }

  if (![valuesCopy hk_expectMissingKeyPath:@"valueRange" error:error])
  {
    goto LABEL_51;
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueRatio"])
  {
    v30 = [valuesCopy objectForKeyedSubscript:@"valueRatio"];
    v31 = [self ratioValueWithRatio:v30 error:error];

    if (!v31)
    {
      goto LABEL_51;
    }

    v32 = [MEMORY[0x277CCD550] inspectableValueWithRatio:v31];
    [v10 addObject:v32];
  }

  if (![valuesCopy hk_expectMissingKeyPath:@"valueSampledData" error:error])
  {
    goto LABEL_51;
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueAttachment"] && (objc_msgSend(versionCopy, "FHIRRelease"), v33 = objc_claimAutoreleasedReturnValue(), v34 = *MEMORY[0x277CCBDC8], v33, v33 == v34))
  {
    v35 = [valuesCopy objectForKeyedSubscript:@"valueAttachment"];
    v36 = [self stringWithAttachment:v35 error:error];

    if (!v36)
    {
      goto LABEL_51;
    }

    v37 = [MEMORY[0x277CCD550] inspectableValueWithString:v36];
    [v10 addObject:v37];
  }

  else if (![valuesCopy hk_expectMissingKeyPath:@"valueAttachment" error:error])
  {
    goto LABEL_51;
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueTime"])
  {
    v38 = [valuesCopy hk_safeStringForKeyPath:@"valueTime" error:error];
    if (!v38)
    {
      goto LABEL_51;
    }

    v39 = v38;
    v40 = [self timeSinceMidnightWithTimeString:v38 error:error];
    if (!v40)
    {
      goto LABEL_50;
    }

    v41 = v40;
    v42 = [MEMORY[0x277CCD550] inspectableValueWithDateComponents:v40];
    [v10 addObject:v42];
  }

  if ([valuesCopy hk_hasValueForKeyPath:@"valueDateTime"])
  {
    v43 = [valuesCopy hk_safeStringForKeyPath:@"valueDateTime" error:error];
    if (!v43)
    {
      goto LABEL_51;
    }

    v39 = v43;
    v44 = [self medicalDateWithDateTimeString:v43 error:error];
    if (!v44)
    {
      goto LABEL_50;
    }

    v45 = v44;
    v46 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v44];
    [v10 addObject:v46];
  }

  if (![valuesCopy hk_hasValueForKeyPath:@"valuePeriod"])
  {
    goto LABEL_45;
  }

  v47 = [valuesCopy hk_safeDictionaryForKeyPath:@"valuePeriod" error:error];
  if (!v47)
  {
    goto LABEL_51;
  }

  v39 = v47;
  v48 = [self medicalDateIntervalWithPeriod:v47 error:error];
  if (!v48)
  {
LABEL_50:

    goto LABEL_51;
  }

  v49 = v48;
  v50 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v48];
  [v10 addObject:v50];

LABEL_45:
  if (![valuesCopy hk_hasValueForKeyPath:@"dataAbsentReason"])
  {
    goto LABEL_48;
  }

  v51 = [valuesCopy objectForKeyedSubscript:@"dataAbsentReason"];
  v52 = [self medicalCodingsWithCodeableConcept:v51 error:error];

  if (!v52)
  {
LABEL_51:
    firstObject = 0;
    goto LABEL_52;
  }

  v53 = [MEMORY[0x277CCD550] inspectableValueWithDataAbsentReasonCodings:v52];
  [v10 addObject:v53];

LABEL_48:
  if ([v10 count] >= 2)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Encountered values of more than one type"];
    goto LABEL_51;
  }

  firstObject = [v10 firstObject];
LABEL_52:

  return firstObject;
}

+ (id)inspectableValueWithAbatementValue:(id)value error:(id *)error
{
  valueCopy = value;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([valueCopy hk_hasValueForKeyPath:@"abatementAge"])
    {
      v9 = [valueCopy objectForKeyedSubscript:@"abatementAge"];
      v10 = [self codedQuantityWithQuantity:v9 error:error];

      if (!v10)
      {
        goto LABEL_26;
      }

      v11 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v10];
      [v8 addObject:v11];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"abatementQuantity"])
    {
      v12 = [valueCopy objectForKeyedSubscript:@"abatementQuantity"];
      v13 = [self codedQuantityWithQuantity:v12 error:error];

      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v13];
      [v8 addObject:v14];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"abatementDateTime"])
    {
      v15 = [valueCopy objectForKeyedSubscript:@"abatementDateTime"];
      v16 = [self medicalDateWithDateTimeString:v15 error:error];

      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v16];
      [v8 addObject:v17];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"abatementBoolean"])
    {
      v18 = [valueCopy hk_safeNumberForKeyPath:@"abatementBoolean" error:error];
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

    if ([valueCopy hk_hasValueForKeyPath:@"abatementPeriod"])
    {
      v22 = [valueCopy objectForKeyedSubscript:@"abatementPeriod"];
      v23 = [self medicalDateIntervalWithPeriod:v22 error:error];

      if (!v23)
      {
        goto LABEL_26;
      }

      v24 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v23];
      [v8 addObject:v24];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"abatementString"])
    {
      v25 = [valueCopy hk_safeStringForKeyPath:@"abatementString" error:error];
      if (!v25)
      {
        goto LABEL_26;
      }

      v26 = v25;
      v27 = [MEMORY[0x277CCD550] inspectableValueWithString:v25];
      [v8 addObject:v27];
    }

    if ([valueCopy hk_expectMissingKeyPath:@"abatementRange" error:error])
    {
      if ([v8 count] < 2)
      {
        firstObject = [v8 firstObject];
        goto LABEL_27;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Encountered values of more than one type"];
    }

LABEL_26:
    firstObject = 0;
LABEL_27:

    goto LABEL_29;
  }

  firstObject = 0;
LABEL_29:

  return firstObject;
}

+ (id)medicalCodingWithConditionClinicalStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRConditionClinicalStatus = [v6 FHIRConditionClinicalStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRConditionClinicalStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithConditionVerificationStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRConditionVerificationStatus = [v6 FHIRConditionVerificationStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRConditionVerificationStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)inspectableValueWithOnsetValue:(id)value error:(id *)error
{
  valueCopy = value;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([valueCopy hk_hasValueForKeyPath:@"onsetQuantity"])
    {
      v9 = [valueCopy objectForKeyedSubscript:@"onsetQuantity"];
      v10 = [self codedQuantityWithQuantity:v9 error:error];

      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = [MEMORY[0x277CCD550] inspectableValueWithCodedQuantity:v10];
      [v8 addObject:v11];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"onsetDateTime"])
    {
      v12 = [valueCopy objectForKeyedSubscript:@"onsetDateTime"];
      v13 = [self medicalDateWithDateTimeString:v12 error:error];

      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDate:v13];
      [v8 addObject:v14];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"onsetPeriod"])
    {
      v15 = [valueCopy objectForKeyedSubscript:@"onsetPeriod"];
      v16 = [self medicalDateIntervalWithPeriod:v15 error:error];

      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = [MEMORY[0x277CCD550] inspectableValueWithMedicalDateInterval:v16];
      [v8 addObject:v17];
    }

    if ([valueCopy hk_hasValueForKeyPath:@"onsetString"])
    {
      v18 = [valueCopy hk_safeStringForKeyPath:@"onsetString" error:error];
      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = v18;
      v20 = [MEMORY[0x277CCD550] inspectableValueWithString:v18];
      [v8 addObject:v20];
    }

    if ([valueCopy hk_expectMissingKeyPath:@"onsetRange" error:error])
    {
      if ([v8 count] < 2)
      {
        firstObject = [v8 firstObject];
        goto LABEL_18;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Encountered values of more than one type"];
    }

LABEL_17:
    firstObject = 0;
LABEL_18:

    goto LABEL_20;
  }

  firstObject = 0;
LABEL_20:

  return firstObject;
}

+ (id)conditionClinicalStatusCodingWithCodeableConcept:(id)concept error:(id *)error
{
  v6 = conditionClinicalStatusCodingWithCodeableConcept_error__onceToken;
  conceptCopy = concept;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities conditionClinicalStatusCodingWithCodeableConcept:error:];
  }

  v8 = [self _firstCodingForSystem:conditionClinicalStatusCodingWithCodeableConcept_error__conditionClinicalStatusCoding inCodeableConcept:conceptCopy error:error];

  return v8;
}

uint64_t __93__HDHealthRecordsExtractionUtilities_conditionClinicalStatusCodingWithCodeableConcept_error___block_invoke()
{
  conditionClinicalStatusCodingWithCodeableConcept_error__conditionClinicalStatusCoding = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/condition-clinical"];

  return MEMORY[0x2821F96F8]();
}

+ (id)conditionVerificationStatusCodingWithCodeableConcept:(id)concept error:(id *)error
{
  v6 = conditionVerificationStatusCodingWithCodeableConcept_error__onceToken;
  conceptCopy = concept;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities conditionVerificationStatusCodingWithCodeableConcept:error:];
  }

  v8 = [self _firstCodingForSystem:conditionVerificationStatusCodingWithCodeableConcept_error__conditionVerificationStatusCoding inCodeableConcept:conceptCopy error:error];

  return v8;
}

uint64_t __97__HDHealthRecordsExtractionUtilities_conditionVerificationStatusCodingWithCodeableConcept_error___block_invoke()
{
  conditionVerificationStatusCodingWithCodeableConcept_error__conditionVerificationStatusCoding = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/condition-ver-status"];

  return MEMORY[0x2821F96F8]();
}

+ (id)enteredInErrorWithConditionVerificationStatusCodeableConcept:(id)concept error:(id *)error
{
  v5 = [self conditionVerificationStatusCodingWithCodeableConcept:concept error:error];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCABB0];
    code = [v5 code];
    v9 = [v7 numberWithBool:{objc_msgSend(self, "_determineEnteredInError:", code)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)medicalCodingWithCoverageStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRCoverageStatus = [v6 FHIRCoverageStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRCoverageStatus codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)coverageClassificationWithClassElements:(id)elements error:(id *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__HDHealthRecordsExtractionUtilities_coverageClassificationWithClassElements_error___block_invoke;
  v6[3] = &__block_descriptor_40_e26__24__0__NSDictionary_8__16l;
  v6[4] = self;
  v4 = [self _transformArray:elements error:error transformBlock:v6];

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

+ (id)medicalCodingWithDeviceStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRDeviceStatus = [v6 FHIRDeviceStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRDeviceStatus codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)medicalCodingWithCarePlanStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRCarePlanStatus = [v6 FHIRCarePlanStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRCarePlanStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithGoalStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRGoalStatus = [v6 FHIRGoalStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRGoalStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithDiagnosticReportStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRDiagnosticReportStatus = [v6 FHIRDiagnosticReportStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRDiagnosticReportStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithEventStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIREventStatus = [v6 FHIREventStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIREventStatus codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)medicalCodingWithImmunizationStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRImmunizationStatus = [v6 FHIRImmunizationStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRImmunizationStatus codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)medicalCodingWithMedicationAdminStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRMedicationAdminStatus = [v6 FHIRMedicationAdminStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRMedicationAdminStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithMedicationDispenseStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRMedicationDispenseStatus = [v6 FHIRMedicationDispenseStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRMedicationDispenseStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithR4MedicationDispenseStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRMedicationDispenseStatusR4 = [v6 FHIRMedicationDispenseStatusR4];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRMedicationDispenseStatusR4 codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)medicalCodingWithMedicationOrderStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRMedicationOrderStatus = [v6 FHIRMedicationOrderStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRMedicationOrderStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithR4MedicationRequestStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRMedicationRequestStatus = [v6 FHIRMedicationRequestStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRMedicationRequestStatus codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)medicalCodingWithProcedureStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRProcedureStatus = [v6 FHIRProcedureStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRProcedureStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceStatusCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRAllergyIntoleranceStatus = [v6 FHIRAllergyIntoleranceStatus];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRAllergyIntoleranceStatus codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceCategoryCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRAllergyIntoleranceCategory = [v6 FHIRAllergyIntoleranceCategory];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRAllergyIntoleranceCategory codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceCriticalityCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRAllergyIntoleranceCriticality = [v6 FHIRAllergyIntoleranceCriticality];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRAllergyIntoleranceCriticality codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceSeverityCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRAllergyIntoleranceSeverity = [v6 FHIRAllergyIntoleranceSeverity];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRAllergyIntoleranceSeverity codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithAllergyIntoleranceTypeCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRAllergyIntoleranceType = [v6 FHIRAllergyIntoleranceType];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRAllergyIntoleranceType codingVersion:*MEMORY[0x277CCC338] error:error];

  return v9;
}

+ (id)medicalCodingWithR4AllergyIntoleranceCriticalityCode:(id)code error:(id *)error
{
  v6 = MEMORY[0x277CCD5D0];
  codeCopy = code;
  fHIRAllergyIntoleranceCriticality = [v6 FHIRAllergyIntoleranceCriticality];
  v9 = [self _FHIRMedicalCodingWithCode:codeCopy medicalCodingSystem:fHIRAllergyIntoleranceCriticality codingVersion:*MEMORY[0x277CCC340] error:error];

  return v9;
}

+ (id)allergyIntoleranceClinicalStatusCodingWithCodeableConcept:(id)concept error:(id *)error
{
  v6 = allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error__onceToken;
  conceptCopy = concept;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities allergyIntoleranceClinicalStatusCodingWithCodeableConcept:error:];
  }

  v8 = [self _firstCodingForSystem:allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error__codingSystem inCodeableConcept:conceptCopy error:error];

  return v8;
}

uint64_t __102__HDHealthRecordsExtractionUtilities_allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error___block_invoke()
{
  allergyIntoleranceClinicalStatusCodingWithCodeableConcept_error__codingSystem = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"];

  return MEMORY[0x2821F96F8]();
}

+ (id)allergyIntoleranceVerificationStatusCodingWithCodeableConcept:(id)concept error:(id *)error
{
  v6 = allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error__onceToken;
  conceptCopy = concept;
  if (v6 != -1)
  {
    +[HDHealthRecordsExtractionUtilities allergyIntoleranceVerificationStatusCodingWithCodeableConcept:error:];
  }

  v8 = [self _firstCodingForSystem:allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error__codingSystem inCodeableConcept:conceptCopy error:error];

  return v8;
}

uint64_t __106__HDHealthRecordsExtractionUtilities_allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error___block_invoke()
{
  allergyIntoleranceVerificationStatusCodingWithCodeableConcept_error__codingSystem = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:@"http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"];

  return MEMORY[0x2821F96F8]();
}

+ (id)enteredInErrorWithAllergyIntoleranceVerificationStatusCodeableConcept:(id)concept error:(id *)error
{
  v5 = [self allergyIntoleranceVerificationStatusCodingWithCodeableConcept:concept error:error];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCABB0];
    code = [v5 code];
    v9 = [v7 numberWithBool:{objc_msgSend(self, "_determineEnteredInError:", code)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)allergyReactionsWithAllergyIntoleranceReaction:(id)reaction error:(id *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__HDHealthRecordsExtractionUtilities_allergyReactionsWithAllergyIntoleranceReaction_error___block_invoke;
  v6[3] = &__block_descriptor_40_e26__24__0__NSDictionary_8__16l;
  v6[4] = self;
  v4 = [self _transformArray:reaction error:error transformBlock:v6];

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

+ (id)identifierWithReference:(id)reference parentResource:(id)resource error:(id *)error
{
  resourceCopy = resource;
  v8 = [HDFHIRReferenceProcessor resourceReferenceInReference:reference error:error];
  if (!v8)
  {
    goto LABEL_5;
  }

  if ([HDFHIRReferenceProcessor referenceRequiresContaining:v8])
  {
    v9 = [HDFHIRReferenceProcessor resourceContainedInResource:resourceCopy reference:v8 error:error];
    if (v9)
    {
      v10 = v9;
      v11 = [HDFHIRReferenceProcessor identifierForResource:v9 containedInResource:resourceCopy error:error];
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

  v12 = [MEMORY[0x277CCD3B8] FHIRIdentifierWithString:v8 error:error];
LABEL_10:

  return v12;
}

+ (id)identifiersWithReferences:(id)references parentResource:(id)resource error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  resourceCopy = resource;
  objc_opt_class();
  v10 = HKSafeObject();

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = referencesCopy;
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

          v17 = [self identifierWithReference:*(*(&v22 + 1) + 8 * i) parentResource:resourceCopy error:{error, v22}];
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

+ (id)identifierFromReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [referenceCopy hk_safeDictionaryIfExistsForKeyPath:@"identifier" error:error];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 hk_safeDictionaryIfExistsForKeyPath:@"type" error:error];
      if (v10)
      {
        v11 = [self medicalCodingsWithCodeableConcept:v10 error:error];
        v12 = [v9 hk_safeStringIfExistsForKeyPath:@"value" error:error];
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

+ (id)codedValueWithObservationComponent:(id)component FHIRVersion:(id)version error:(id *)error
{
  componentCopy = component;
  versionCopy = version;
  objc_opt_class();
  v10 = HKSafeObject();

  if (!v10)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v11 = [componentCopy objectForKeyedSubscript:@"code"];
  v12 = [self medicalCodingsWithCodeableConcept:v11 error:error];

  if (!v12)
  {
    goto LABEL_5;
  }

  if (![componentCopy hk_hasValueForKeyPath:@"referenceRange"])
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [componentCopy objectForKeyedSubscript:@"referenceRange"];
  v14 = [self referenceRangesWithObservationReferenceRanges:v13 error:error];

  if (v14)
  {
LABEL_8:
    v16 = [self inspectableValueWithObservationValues:componentCopy FHIRVersion:versionCopy error:error];
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

+ (id)inspectableValueCollectionWithQuantity:(id)quantity error:(id *)error
{
  v4 = [self codedQuantityWithQuantity:quantity error:error];
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

+ (id)inspectableValueCollectionWithRatio:(id)ratio error:(id *)error
{
  v4 = [self ratioValueWithRatio:ratio error:error];
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

+ (id)inspectableValueCollectionWithString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = MEMORY[0x277CCD558];
    v7 = [MEMORY[0x277CCD550] inspectableValueWithString:stringCopy];
    v5 = [v6 inspectableValueCollectionSingleWithValue:v7];
  }

  return v5;
}

+ (id)inspectableValueCollectionWithCodeableConcept:(id)concept error:(id *)error
{
  v4 = [self medicalCodingsWithCodeableConcept:concept error:error];
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

+ (id)inspectableValueCollectionWithObservationComponents:(id)components FHIRVersion:(id)version error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  versionCopy = version;
  objc_opt_class();
  v10 = HKSafeObject();

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = componentsCopy;
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

          v17 = [self codedValueWithObservationComponent:*(*(&v24 + 1) + 8 * i) FHIRVersion:versionCopy error:{error, v24}];
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

+ (id)inspectableValueCollectionWithObservationValues:(id)values FHIRVersion:(id)version error:(id *)error
{
  valuesCopy = values;
  versionCopy = version;
  v24 = 0;
  v10 = [self inspectableValueWithObservationValues:valuesCopy FHIRVersion:versionCopy error:&v24];
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
    if (![valuesCopy hk_hasValueForKeyPath:@"component"])
    {
      v17 = v13;
      if (!v17)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"No Observation value provided"];
        goto LABEL_24;
      }

      v18 = 0;
LABEL_10:

LABEL_24:
      goto LABEL_25;
    }

    v23 = v12;
    v14 = [valuesCopy hk_safeArrayForKeyPath:@"component" error:&v23];
    v15 = v23;

    if (v14)
    {
      v22 = v15;
      v16 = [self inspectableValueCollectionWithObservationComponents:v14 FHIRVersion:versionCopy error:&v22];
      v12 = v22;

      if (v16)
      {

        if (v13)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Encountered values of more than one type"];

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
        if (!error)
        {
          goto LABEL_21;
        }

LABEL_16:
        v20 = v12;
        *error = v12;
      }
    }

    else
    {
      v12 = v15;
      if (v12)
      {
        if (!error)
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

  if (error)
  {
    v19 = v11;
    v17 = 0;
    *error = v12;
  }

  else
  {
    _HKLogDroppedError();
    v17 = 0;
  }

LABEL_25:

  return v17;
}

+ (id)inspectableValueCollectionWithDateTime:(id)time error:(id *)error
{
  v4 = [self medicalDateWithDateTimeString:time error:error];
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

+ (id)inspectableValueCollectionWithTime:(id)time error:(id *)error
{
  v4 = [self timeSinceMidnightWithTimeString:time error:error];
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

+ (id)inspectableValueCollectionWithPeriod:(id)period error:(id *)error
{
  v4 = [self medicalDateIntervalWithPeriod:period error:error];
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

+ (int64_t)_integerFromTextCheckingResult:(id)result string:(id)string index:(int64_t)index
{
  stringCopy = string;
  v8 = [result rangeAtIndex:index];
  v10 = [stringCopy substringWithRange:{v8, v9}];

  integerValue = [v10 integerValue];
  return integerValue;
}

+ (id)_medicalDateWithDateTimeString:(id)string range:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v10 = _DateTimeFormatRegularExpressionYearMonthDayTime();
  v11 = [v10 matchesInString:stringCopy options:0 range:{location, length}];
  v12 = 0;
  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
    v23 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:1];
    v22 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:2];
    v14 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:3];
    v15 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:4];
    v16 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:5];
    v17 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:6];
    v18 = [firstObject rangeAtIndex:7];
    v20 = [stringCopy substringWithRange:{v18, v19}];
    v12 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v23 month:v22 day:v14 hour:v15 minute:v16 second:v17 originalTimeZoneString:v20 error:error];
  }

  return v12;
}

+ (id)_medicalDateWithOnlyDateString:(id)string range:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (_DateTimeFormatRegularExpressionYear_onceToken != -1)
  {
    +[HDHealthRecordsExtractionUtilities _medicalDateWithOnlyDateString:range:error:];
  }

  v10 = _DateTimeFormatRegularExpressionYear_regex;
  v11 = [v10 matchesInString:stringCopy options:0 range:{location, length}];
  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
    v13 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:1];
    v14 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v13 error:error];
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

  v17 = [v16 matchesInString:stringCopy options:0 range:{location, length}];

  if ([v17 count] == 1)
  {
    firstObject = [v17 firstObject];
    v18 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:1];
    v19 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:2];
    v15 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v18 month:v19 error:error];
    v11 = v17;
    v10 = v16;
    goto LABEL_10;
  }

  if (_DateTimeFormatRegularExpressionYearMonthDay_onceToken != -1)
  {
    +[HDHealthRecordsExtractionUtilities _medicalDateWithOnlyDateString:range:error:];
  }

  v10 = _DateTimeFormatRegularExpressionYearMonthDay_regex;

  v11 = [v10 matchesInString:stringCopy options:0 range:{location, length}];

  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
    v21 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:1];
    v22 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:2];
    v23 = [self _integerFromTextCheckingResult:firstObject string:stringCopy index:3];
    v14 = [MEMORY[0x277CCD5D8] medicalDateWithYear:v21 month:v22 day:v23 error:error];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)medicalDateWithDateTimeString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [stringCopy length];
    v9 = [self _medicalDateWithDateTimeString:stringCopy range:0 error:{v8, error}];
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = [self _medicalDateWithOnlyDateString:stringCopy range:0 error:{v8, error}];
      if (!v7)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"FHIR date string not parseable"];
      }
    }
  }

  return v7;
}

+ (id)medicalDateWithDateString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [stringCopy length];
    v9 = _DateTimeFormatRegularExpressionYearMonthDayTime();
    v10 = [v9 matchesInString:stringCopy options:0 range:{0, v8}];
    if ([v10 count] == 1)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_251CC8000, v11, OS_LOG_TYPE_DEFAULT, "HDHealthRecordsExtractionUtilities: received 'date' string with time, dropping time", v17, 2u);
      }

      v12 = [stringCopy substringWithRange:{0, objc_msgSend(stringCopy, "rangeOfString:", @"T"}];

      v8 = [v12 length];
      stringCopy = v12;
    }

    v14 = [self _medicalDateWithOnlyDateString:stringCopy range:0 error:{v8, error}];
    v13 = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"FHIR instant string not parseable"];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)medicalDateWithInstantString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [self _medicalDateWithDateTimeString:stringCopy range:0 error:{objc_msgSend(stringCopy, "length"), error}];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"FHIR instant string not parseable"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)timeSinceMidnightWithTimeString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v8 = [stringCopy length];
    if (_TimeFormatRegularExpressionTimeSinceMidnight_onceToken != -1)
    {
      +[HDHealthRecordsExtractionUtilities timeSinceMidnightWithTimeString:error:];
    }

    v9 = [_TimeFormatRegularExpressionTimeSinceMidnight_regex matchesInString:stringCopy options:0 range:{0, v8}];
    if ([v9 count] == 1)
    {
      firstObject = [v9 firstObject];
      v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v11 setHour:{objc_msgSend(self, "_integerFromTextCheckingResult:string:index:", firstObject, stringCopy, 1)}];
      [v11 setMinute:{objc_msgSend(self, "_integerFromTextCheckingResult:string:index:", firstObject, stringCopy, 2)}];
      [v11 setSecond:{objc_msgSend(self, "_integerFromTextCheckingResult:string:index:", firstObject, stringCopy, 3)}];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"FHIR time string not parseable"];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)medicalDateIntervalWithPeriod:(id)period error:(id *)error
{
  periodCopy = period;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7)
  {
    goto LABEL_5;
  }

  if ([periodCopy hk_hasValueForKeyPath:@"start"])
  {
    v8 = [periodCopy hk_safeStringForKeyPath:@"start" error:error];
    if (v8)
    {
      v9 = v8;
      v10 = [self medicalDateWithDateTimeString:v8 error:error];

      goto LABEL_7;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_7:
  if ([periodCopy hk_hasValueForKeyPath:@"end"])
  {
    v12 = [periodCopy hk_safeStringForKeyPath:@"end" error:error];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [self medicalDateWithDateTimeString:v12 error:error];
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
        [MEMORY[0x277CCD5E0] medicalDateIntervalWithStartDate:v10 endDate:v14 error:error];
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

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"FHIR Period must have either start or end"];
LABEL_13:
  v11 = 0;
LABEL_20:

LABEL_21:

  return v11;
}

+ (id)_earliestDosageDateWithMedicationDosageArray:(id)array error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  objc_opt_class();
  v7 = HKSafeObject();

  if (v7)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = arrayCopy;
    obj = arrayCopy;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v31;
      selfCopy = self;
      v28 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [self _medicalDateIntervalWithDosage:*(*(&v30 + 1) + 8 * i) error:{error, v26}];
          startDate = [v13 startDate];

          if (startDate)
          {
            dateForUTC = [v10 dateForUTC];
            if (!dateForUTC)
            {
              goto LABEL_10;
            }

            v16 = dateForUTC;
            [v13 startDate];
            v18 = v17 = error;
            [v18 dateForUTC];
            v20 = v19 = v9;
            dateForUTC2 = [v10 dateForUTC];
            v22 = [v20 hk_isBeforeDate:dateForUTC2];

            v9 = v19;
            error = v17;
            self = selfCopy;
            v11 = v28;

            if (v22)
            {
LABEL_10:
              startDate2 = [v13 startDate];

              v10 = startDate2;
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

    arrayCopy = v26;
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_medicationDosagesWithDosageArray:(id)array FHIRRelease:(id)release error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  releaseCopy = release;
  objc_opt_class();
  v10 = HKSafeObject();

  if (v10)
  {
    [MEMORY[0x277CBEB18] array];
    v32 = v31 = arrayCopy;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = arrayCopy;
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
        if (v12 != releaseCopy)
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
        v20 = [self _medicalDateIntervalWithDosage:v15 error:error];
        if (v19 | v20)
        {
          [MEMORY[0x277CCD648] dosageWithInstruction:v19 timingPeriod:v20];
          errorCopy = error;
          v22 = v13;
          v23 = v12;
          selfCopy = self;
          v25 = releaseCopy;
          v27 = v26 = v11;
          [v32 addObject:v27];

          v11 = v26;
          releaseCopy = v25;
          self = selfCopy;
          v12 = v23;
          v13 = v22;
          error = errorCopy;
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
      v18 = [v16 hk_safeStringForKeyPath:v17 error:error];
      if (!v18)
      {

        v10 = 0;
        arrayCopy = v31;
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
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Dosage array must be nonempty if present"];
      }

      v10 = 0;
    }

    arrayCopy = v31;
LABEL_26:
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_medicalDateIntervalWithDosage:(id)dosage error:(id *)error
{
  dosageCopy = dosage;
  objc_opt_class();
  v7 = HKSafeObject();

  if (!v7 || ![dosageCopy hk_hasValueForKeyPath:@"timing"] || (objc_msgSend(dosageCopy, "hk_safeDictionaryForKeyPath:error:", @"timing", error), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
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

  v10 = [v9 hk_safeDictionaryForKeyPath:@"repeat" error:error];
  v11 = v10;
  if (!v10 || ![v10 hk_hasValueForKeyPath:@"boundsPeriod"])
  {
    goto LABEL_13;
  }

  v12 = [v11 objectForKeyedSubscript:@"boundsPeriod"];
  v13 = [self medicalDateIntervalWithPeriod:v12 error:error];

LABEL_14:
LABEL_9:

  return v13;
}

+ (id)referencedMedicationStatementActorTypeWithString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
    v7 = [HDFHIRReferenceProcessor identifierFromAbsoluteReferenceURL:v6];
    resourceType = [v7 resourceType];
    if ([resourceType length])
    {
      if ([resourceType isEqualToString:@"Organization"])
      {
        v9 = &unk_28641A218;
      }

      else if ([resourceType isEqualToString:@"Patient"])
      {
        v9 = &unk_28641A230;
      }

      else if ([resourceType isEqualToString:@"Practitioner"] & 1) != 0 || (objc_msgSend(resourceType, "isEqualToString:", @"PractitionerRole"))
      {
        v9 = &unk_28641A248;
      }

      else if ([resourceType isEqualToString:@"RelatedPerson"])
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

+ (id)preferredNameWithHumanNames:(id)names FHIRVersion:(id)version error:(id *)error
{
  versionCopy = version;
  v8 = [HDHealthRecordParsedHumanName parsedNamesWithHumanNames:names FHIRVersion:versionCopy error:error];
  if (v8)
  {
    v9 = [HDHealthRecordParsedHumanName preferredNameInNames:v8 FHIRVersion:versionCopy];
    v10 = v9;
    if (v9)
    {
      fullName = [v9 fullName];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"no preferred name available"];
      fullName = 0;
    }
  }

  else
  {
    fullName = 0;
  }

  return fullName;
}

+ (id)stringWithRTF:(id)f error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  fCopy = f;
  objc_opt_class();
  v5 = HKSafeObject();

  if (v5)
  {
    v6 = [fCopy dataUsingEncoding:4];
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
      string = [v16 string];
    }

    else
    {
      string = fCopy;
    }

    v18 = string;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)_determineEnteredInError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = errorCopy;
    lowercaseString = [errorCopy lowercaseString];
    v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" -"];
    v7 = [lowercaseString componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 componentsJoinedByString:@"-"];

    LOBYTE(v4) = [v8 isEqualToString:@"entered-in-error"];
    LOBYTE(errorCopy) = v4;
  }

  return errorCopy;
}

+ (id)enteredInErrorWithStatusString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_determineEnteredInError:", stringCopy)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)wasEnteredInError:(id)error error:(id *)a4
{
  errorCopy = error;
  v7 = [errorCopy objectForKeyedSubscript:@"status"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [errorCopy objectForKeyedSubscript:@"verificationStatus"];
  }

  v10 = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_determineEnteredInError:", v10)}];
LABEL_8:
    v12 = v11;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [self enteredInErrorWithConditionVerificationStatusCodeableConcept:v10 error:a4];
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

+ (id)localeFromLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  objc_opt_class();
  v5 = HKSafeObject();
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end