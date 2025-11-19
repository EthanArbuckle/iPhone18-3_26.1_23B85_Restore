@interface HDClinicalRecordEntity
+ (id)_clinicalRecordForSampleType:(id)a3 predicate:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_predicateForRecordWithFHIRResourceIdentifier:(id)a3;
+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)clinicalRecordWithAttachmentObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)existingClinicalRecordCreatedFromResourceWithIdentifier:(id)a3 basePredicate:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)joinClausesForProperty:(id)a3;
@end

@implementation HDClinicalRecordEntity

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

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"originalFHIRResource.id"])
  {
    v5 = MEMORY[0x277D10B50];
    v6 = +[(HDSQLiteSchemaEntity *)HDClinicalRecordEntity];
    v7 = [v5 leftJoinClauseFromTable:v6 toTargetEntity:objc_opt_class() as:@"originalFHIRResource" localReference:@"original_fhir_resource_rowid" targetKey:*MEMORY[0x277D10A40]];

    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v7, 0}];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___HDClinicalRecordEntity;
    v8 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, v4);
  }

  return v8;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v47[12] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:a2 object:a1 file:@"HDClinicalRecordEntity.m" lineNumber:95 description:{@"Subclasses must override %s", "+[HDClinicalRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v47[0] = @"data_id";
  v47[1] = @"display_name";
  v47[2] = @"fhir_resource_fhir_version_major";
  v47[3] = @"fhir_resource_fhir_version_minor";
  v47[4] = @"fhir_resource_fhir_version_patch";
  v47[5] = @"fhir_resource_resource_type";
  v47[6] = @"fhir_resource_identifier";
  v47[7] = @"fhir_resource_data";
  v47[8] = @"fhir_resource_source_url";
  v47[9] = @"fhir_resource_last_updated_date";
  v47[10] = @"original_fhir_resource_rowid";
  v47[11] = @"original_signed_clinical_data_rowid";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:12];
  v17 = [v12 metadata];
  v18 = *MEMORY[0x277CCE070];
  v19 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCE070]];

  if (v19)
  {
    v20 = [v12 metadata];
    v21 = [v20 objectForKeyedSubscript:v18];
    v22 = [v21 longLongValue];

    if (v22)
    {
      v23 = 0;
LABEL_10:
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __88__HDClinicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
      v40[3] = &unk_278629B48;
      v33 = v14;
      v41 = v33;
      v42 = v12;
      v43 = v22;
      v44 = v23;
      v45 = a2;
      v46 = a1;
      v34 = [a1 insertOrReplaceEntity:1 database:v13 properties:v16 error:a7 bindingHandler:v40];
      if (v34)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;

      goto LABEL_17;
    }
  }

  v24 = [v12 metadata];
  v25 = *MEMORY[0x277CCE078];
  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x277CCE078]];

  if (v26)
  {
    v27 = objc_alloc(MEMORY[0x277CCAD78]);
    v28 = [v12 metadata];
    v29 = [v28 objectForKeyedSubscript:v25];
    v30 = [v27 initWithUUIDString:v29];

    v31 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:v30 database:v13 error:a7];
    if (!v31)
    {

      goto LABEL_16;
    }

    v32 = v31;
    v23 = [v31 persistentID];

    if (v23)
    {
      v22 = 0;
      goto LABEL_10;
    }
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a7 code:118 format:@"No OrignalFHIRResource or OriginalSignedClinicalDataRecord ROWID provided for FK on insert"];
LABEL_16:
  v36 = 0;
LABEL_17:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __88__HDClinicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) displayName];
  MEMORY[0x22AAC6BD0](a2, @"display_name", v4);

  v5 = [*(a1 + 40) FHIRResource];
  v6 = [v5 FHIRVersion];
  MEMORY[0x22AAC6B90](a2, @"fhir_resource_fhir_version_major", [v6 majorVersion]);

  v7 = [*(a1 + 40) FHIRResource];
  v8 = [v7 FHIRVersion];
  MEMORY[0x22AAC6B90](a2, @"fhir_resource_fhir_version_minor", [v8 minorVersion]);

  v9 = [*(a1 + 40) FHIRResource];
  v10 = [v9 FHIRVersion];
  MEMORY[0x22AAC6B90](a2, @"fhir_resource_fhir_version_patch", [v10 patchVersion]);

  v11 = [*(a1 + 40) FHIRResource];
  v12 = [v11 resourceType];
  MEMORY[0x22AAC6BD0](a2, @"fhir_resource_resource_type", v12);

  v13 = [*(a1 + 40) FHIRResource];
  v14 = [v13 identifier];
  MEMORY[0x22AAC6BD0](a2, @"fhir_resource_identifier", v14);

  v15 = [*(a1 + 40) FHIRResource];
  v16 = [v15 data];
  MEMORY[0x22AAC6B40](a2, @"fhir_resource_data", v16);

  v17 = [*(a1 + 40) FHIRResource];
  v18 = [v17 sourceURL];
  v19 = [v18 absoluteString];
  MEMORY[0x22AAC6BD0](a2, @"fhir_resource_source_url", v19);

  v20 = [*(a1 + 40) FHIRResource];
  v21 = [v20 lastUpdatedDate];
  MEMORY[0x22AAC6B50](a2, @"fhir_resource_last_updated_date", v21);

  if (*(a1 + 48) >= 1)
  {
    MEMORY[0x22AAC6BA0](a2, @"original_signed_clinical_data_rowid");
    v22 = *(a1 + 48);

    JUMPOUT(0x22AAC6B90);
  }

  if (*(a1 + 56) >= 1)
  {
    MEMORY[0x22AAC6B90](a2, @"original_signed_clinical_data_rowid");

    JUMPOUT(0x22AAC6BA0);
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"HDClinicalRecordEntity.m" lineNumber:164 description:@"No OrignalFHIRResource or OriginalSignedClinicalDataRecord ROWID provided for FK on insert"];
}

+ (id)clinicalRecordWithAttachmentObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v9 = [MEMORY[0x277CCD008] componentsFromAttachmentObjectIdentifier:a3 sampleTypeIdentifier:&v23 bundleIdentifier:&v22 FHIRIdentifier:&v21];
  v10 = v23;
  v11 = v22;
  v12 = v21;
  if ((v9 & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Failed parse attachment objectIdentifier into components"];
    if (v14)
    {
      if (a5)
      {
        v18 = v14;
        v17 = 0;
        *a5 = v14;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      v13 = v14;
      goto LABEL_19;
    }

    v13 = 0;
    goto LABEL_12;
  }

  v13 = [MEMORY[0x277CCD8D8] clinicalTypeForIdentifier:v10];
  if (!v13)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Invalid clinicalType identifier: %@", v10}];
    if (v15)
    {
      if (a5)
      {
        v19 = v15;
        v17 = 0;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      v14 = v15;
    }

    else
    {
      v14 = 0;
      v17 = 0;
    }

    goto LABEL_18;
  }

  v14 = [a1 predicateForObjectsFromLocalSourceWithBundleIdentifier:v11 profile:v8 error:a5];
  if (!v14)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_19;
  }

  v15 = [a1 _predicateForRecordWithFHIRResourceIdentifier:v12];
  v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v14 otherPredicate:v15];
  v17 = [a1 _clinicalRecordForSampleType:v13 predicate:v16 profile:v8 error:a5];

LABEL_18:
LABEL_19:

  return v17;
}

+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() objectWithUUID:v9 encodingOptions:0 profile:v8 error:a6];

  v11 = [v10 attachmentObjectIdentifier];

  return v11;
}

+ (id)existingClinicalRecordCreatedFromResourceWithIdentifier:(id)a3 basePredicate:(id)a4 profile:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 _predicateForRecordWithFHIRResourceIdentifier:v10];
  v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v13];
  v15 = MEMORY[0x277CCD118];
  v16 = [v10 resourceType];
  v17 = [v15 sampleTypesForResourceType:v16 error:a6];

  if (v17)
  {
    v29 = v13;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v27 = v11;
      v28 = v10;
      v21 = *v31;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [a1 _clinicalRecordForSampleType:*(*(&v30 + 1) + 8 * i) predicate:v14 profile:v12 error:a6];
          if (v23)
          {
            v24 = v23;
            goto LABEL_12;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_12:
      v11 = v27;
      v10 = v28;
    }

    else
    {
      v24 = 0;
    }

    v13 = v29;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)_clinicalRecordForSampleType:(id)a3 predicate:(id)a4 profile:(id)a5 error:(id *)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [HDSampleEntity samplesWithType:v10 profile:a5 encodingOptions:0 predicate:a4 limit:0 anchor:0 error:a6];
  v12 = v11;
  if (v11 && [v11 count])
  {
    if ([v12 count] >= 2)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v18 = a1;
        v19 = 2114;
        v20 = v10;
        _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "%{public}@ Unexpectedly found more than 1 clinical record for clinical sampleType %{public}@!", buf, 0x16u);
      }
    }

    v14 = [v12 firstObject];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_predicateForRecordWithFHIRResourceIdentifier:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = a3;
  v5 = [v4 resourceType];
  v6 = [v3 predicateWithProperty:@"fhir_resource_resource_type" equalToValue:v5];

  v7 = MEMORY[0x277D10B18];
  v8 = [v4 identifier];

  v9 = [v7 predicateWithProperty:@"fhir_resource_identifier" equalToValue:v8];

  v10 = MEMORY[0x277D10B20];
  v15[0] = v9;
  v15[1] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDClinicalRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end