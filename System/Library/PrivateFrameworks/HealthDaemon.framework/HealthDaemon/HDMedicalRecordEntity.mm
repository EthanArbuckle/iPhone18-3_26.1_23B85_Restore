@interface HDMedicalRecordEntity
+ (id)_latestDateForProperty:(void *)a3 sampleTypes:(void *)a4 profile:(uint64_t)a5 error:;
+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)checkConstraints;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)joinClausesForProperty:(id)a3;
+ (id)latestCreationDateWithProfile:(id)a3 error:(id *)a4;
+ (id)latestModifiedDateWithProfile:(id)a3 error:(id *)a4;
+ (id)medicalRecordWithAttachmentObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)orderingTermForSortDescriptor:(id)a3;
- (BOOL)willDeleteWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
@end

@implementation HDMedicalRecordEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v57[13] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"HDMedicalRecordEntity.m" lineNumber:93 description:{@"Subclasses must override %s", "+[HDMedicalRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v57[0] = @"data_id";
  v57[1] = @"note";
  v57[2] = @"entered_in_error";
  v57[3] = @"modified_date";
  v57[4] = @"fhir_identifier";
  v57[5] = @"original_fhir_resource_rowid";
  v57[6] = @"original_signed_clinical_data_rowid";
  v57[7] = @"locale";
  v57[8] = @"extraction_version";
  v57[9] = @"sort_date";
  v57[10] = @"sort_date_key_path";
  v57[11] = @"country";
  v57[12] = @"state";
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:13];
  v16 = [v12 FHIRIdentifier];

  if (v16)
  {
    v17 = [v12 FHIRIdentifier];
    v46 = [v17 stringValue];
  }

  else
  {
    v46 = 0;
  }

  v18 = [v12 metadata];
  v19 = *MEMORY[0x277CCE070];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCE070]];

  if (v20)
  {
    v45 = a7;
    v21 = v13;
    v22 = [v12 metadata];
    v23 = [v22 objectForKeyedSubscript:v19];
    v24 = [v23 longLongValue];
    v25 = 0;
LABEL_8:

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __87__HDMedicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v48[3] = &unk_278626C10;
    v26 = v14;
    v49 = v26;
    v50 = v12;
    v27 = v46;
    v51 = v46;
    v52 = v24;
    v53 = v25;
    v54 = a2;
    v55 = a1;
    v13 = v21;
    v28 = v21;
    v29 = v47;
    v30 = [a1 insertOrReplaceEntity:1 database:v28 properties:v47 error:v45 bindingHandler:v48];
    if (v30)
    {
      v31 = v26;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    goto LABEL_12;
  }

  v35 = [v12 originIdentifier];
  v36 = [v35 signedClinicalDataRecordIdentifier];

  if (v36)
  {
    v45 = a7;
    [v12 originIdentifier];
    v38 = v37 = v13;
    v39 = [v38 signedClinicalDataRecordIdentifier];
    v56 = 0;
    v21 = v37;
    v23 = [HDOriginalSignedClinicalDataRecordEntity entityWithSyncIdentifier:v39 database:v37 error:&v56];
    v22 = v56;

    if (v23)
    {
      v25 = [v23 persistentID];
      v24 = 0;
      goto LABEL_8;
    }

    if (v22)
    {
      v13 = v21;
      v27 = v46;
      if (v45)
      {
        v40 = v22;
        *v45 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }

      v29 = v47;
    }

    else
    {
      v41 = MEMORY[0x277CCA9B8];
      v42 = [v12 originIdentifier];
      v43 = [v42 signedClinicalDataRecordIdentifier];
      [v41 hk_assignError:v45 code:118 format:{@"Original signed clinical data record with sync identifier %@ does not exist", v43}];

      v13 = v21;
      v27 = v46;
      v29 = v47;
    }

    v32 = 0;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:100 format:@"Attempting to save a medical record without an origin."];
    v32 = 0;
    v27 = v46;
    v29 = v47;
  }

LABEL_12:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __87__HDMedicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) note];
  MEMORY[0x22AAC6BD0](a2, @"note", v4);

  MEMORY[0x22AAC6B30](a2, @"entered_in_error", [*(a1 + 40) enteredInError]);
  v5 = [*(a1 + 40) modifiedDate];
  MEMORY[0x22AAC6B50](a2, @"modified_date", v5);

  v6 = [*(a1 + 40) locale];
  v7 = [v6 localeIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"locale", v7);

  MEMORY[0x22AAC6B90](a2, @"extraction_version", [*(a1 + 40) extractionVersion]);
  v8 = [*(a1 + 40) sortDate];
  v9 = [v8 date];
  MEMORY[0x22AAC6B50](a2, @"sort_date", v9);

  v10 = [*(a1 + 40) sortDate];
  v11 = [v10 keyPath];
  MEMORY[0x22AAC6BD0](a2, @"sort_date_key_path", v11);

  v12 = [*(a1 + 40) country];
  MEMORY[0x22AAC6BD0](a2, @"country", v12);

  MEMORY[0x22AAC6B90](a2, @"state", [*(a1 + 40) state]);
  MEMORY[0x22AAC6BD0](a2, @"fhir_identifier", *(a1 + 48));
  if (*(a1 + 56) >= 1)
  {
    MEMORY[0x22AAC6BA0](a2, @"original_signed_clinical_data_rowid");
    v13 = *(a1 + 56);
    goto LABEL_5;
  }

  if (*(a1 + 64) >= 1)
  {
    MEMORY[0x22AAC6BA0](a2, @"original_fhir_resource_rowid");
    v14 = *(a1 + 64);
LABEL_5:

    JUMPOUT(0x22AAC6B90);
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:*(a1 + 72) object:*(a1 + 80) file:@"HDMedicalRecordEntity.m" lineNumber:173 description:@"No OrignalFHIRResource or OriginalSignedClinicalDataRecord ROWID provided for FK on insert"];
}

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"original_fhir_resource_rowid";
  v2 = +[(HDHealthEntity *)HDOriginalFHIRResourceEntity];
  v7[1] = @"original_signed_clinical_data_rowid";
  v8[0] = v2;
  v3 = +[(HDHealthEntity *)HDOriginalSignedClinicalDataRecordEntity];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)checkConstraints
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277D10B88] checkConstraintWithSQL:@"(original_fhir_resource_rowid IS NOT NULL AND original_signed_clinical_data_rowid IS NULL) OR (original_fhir_resource_rowid IS NULL AND original_signed_clinical_data_rowid IS NOT NULL)"];
    v2 = [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_latestDateForProperty:(void *)a3 sampleTypes:(void *)a4 profile:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  if (!v10)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:sel__latestDateForProperty_sampleTypes_profile_error_ object:v11 file:@"HDMedicalRecordEntity.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__142;
  v29 = __Block_byref_object_dispose__142;
  v30 = 0;
  v12 = HDSampleEntityPredicateForDataTypes(v9);
  v13 = [v10 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__HDMedicalRecordEntity__latestDateForProperty_sampleTypes_profile_error___block_invoke;
  v20[3] = &unk_278626C38;
  v24 = v11;
  v14 = v8;
  v21 = v14;
  v15 = v12;
  v22 = v15;
  v23 = &v25;
  v16 = [v11 performReadTransactionWithHealthDatabase:v13 error:a5 block:v20];

  if (v16)
  {
    v17 = v26[5];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v17;
}

uint64_t __74__HDMedicalRecordEntity__latestDateForProperty_sampleTypes_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[7];
  v6 = a1[4];
  v7 = a1[5];
  v8 = [a2 databaseForEntityClass:v5];
  v18 = 0;
  v9 = [v5 maxValueForProperty:v6 predicate:v7 database:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v9 doubleValue];
    v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

LABEL_3:
    v15 = 1;
    goto LABEL_4;
  }

  if (!v10)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    v17 = v10;
    v15 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v15 = 0;
  }

LABEL_4:

  return v15;
}

+ (id)latestCreationDateWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 daemon];
  v8 = [v7 behavior];
  if ([v8 futureMigrationsEnabled])
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:v9];
  v11 = [(HDMedicalRecordEntity *)a1 _latestDateForProperty:v10 sampleTypes:v6 profile:a4 error:?];

  return v11;
}

+ (id)latestModifiedDateWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 daemon];
  v8 = [v7 behavior];
  if ([v8 futureMigrationsEnabled])
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:v9];
  v11 = [(HDMedicalRecordEntity *)a1 _latestDateForProperty:v10 sampleTypes:v6 profile:a4 error:?];

  return v11;
}

+ (id)medicalRecordWithAttachmentObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v42[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v9 = [MEMORY[0x277CCD008] componentsFromAttachmentObjectIdentifier:a3 sampleTypeIdentifier:&v36 bundleIdentifier:&v35 FHIRIdentifier:&v34];
  v10 = v36;
  v11 = v35;
  v12 = v34;
  if ((v9 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Failed parse attachment objectIdentifier into components"];
    if (v15)
    {
      if (a5)
      {
        v24 = v15;
        v23 = 0;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError();
        v23 = 0;
      }

      v14 = v15;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = [MEMORY[0x277CCD608] medicalTypeForIdentifier:v10];
  if (!v13)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Invalid medicalType identifier: %@", v10}];
    if (v15)
    {
      if (a5)
      {
        v25 = v15;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [a1 predicateForObjectsFromLocalSourceWithBundleIdentifier:v11 profile:v8 error:a5];
  if (!v15)
  {
LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  v16 = v12;
  v14 = v14;
  v17 = v8;
  v15 = v15;
  v30 = objc_opt_self();
  v33 = v16;
  v31 = HDMedicalRecordEntityPredicateForFHIRIdentifier(v16);
  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:?];

  v41 = @"SkipApplyingConceptIndex";
  v42[0] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v32 = v17;
  v20 = [(HDSampleEntity *)HDMedicalRecordEntity samplesWithType:v14 profile:v17 encodingOptions:v19 predicate:v18 limit:0 anchor:0 error:a5];
  v21 = v20;
  if (v20 && [v20 count])
  {
    if ([v21 count] >= 2)
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_FAULT))
      {
        v28 = v22;
        v29 = HKSensitiveLogItem();
        *buf = 138543618;
        v38 = v30;
        v39 = 2114;
        v40 = v29;
        _os_log_fault_impl(&dword_228986000, v28, OS_LOG_TYPE_FAULT, "%{public}@ Unexpectedly found more than 1 medical record for FHIR resource %{public}@!", buf, 0x16u);
      }
    }

    v23 = [v21 firstObject];
  }

  else
  {
    v23 = 0;
  }

LABEL_24:
  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v16 = @"SkipApplyingConceptIndex";
  v17[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v10 objectWithUUID:v9 encodingOptions:v11 profile:v8 error:a6];

  v13 = [v12 attachmentObjectIdentifier];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)willDeleteWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v6.receiver = self;
  v6.super_class = HDMedicalRecordEntity;
  return [(HDHealthEntity *)&v6 willDeleteWithProfile:a3 transaction:a4 error:a5];
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_HDMedicalRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCC3C8]];

  if (v6)
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = [v4 ascending];
    v10 = @"modified_date";
LABEL_5:
    v13 = [v7 orderingTermWithProperty:v10 entityClass:v8 ascending:v9];
    goto LABEL_7;
  }

  v11 = [v4 key];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC3D0]];

  if (v12)
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = [v4 ascending];
    v10 = @"sort_date";
    goto LABEL_5;
  }

  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___HDMedicalRecordEntity;
  v13 = objc_msgSendSuper2(&v16, sel_orderingTermForSortDescriptor_, v4);
LABEL_7:
  v14 = v13;

  return v14;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"user_domain_concepts.uuid"])
  {
    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    v6 = [HDMedicalUserDomainConceptMappingEntity joinClausesForProperty:v4];
    v7 = [v5 initWithSet:v6];

    v8 = MEMORY[0x277D10B50];
    v9 = [a1 disambiguatedDatabaseTable];
    v10 = [v8 innerJoinClauseFromTable:v9 toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"data_id"];
    [v7 addObject:v10];

    v11 = [v7 copy];
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___HDMedicalRecordEntity;
    v11 = objc_msgSendSuper2(&v13, sel_joinClausesForProperty_, v4);
  }

  return v11;
}

@end