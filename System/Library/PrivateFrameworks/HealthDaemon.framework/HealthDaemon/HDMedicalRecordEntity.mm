@interface HDMedicalRecordEntity
+ (id)_latestDateForProperty:(void *)property sampleTypes:(void *)types profile:(uint64_t)profile error:;
+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)checkConstraints;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)joinClausesForProperty:(id)property;
+ (id)latestCreationDateWithProfile:(id)profile error:(id *)error;
+ (id)latestModifiedDateWithProfile:(id)profile error:(id *)error;
+ (id)medicalRecordWithAttachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)orderingTermForSortDescriptor:(id)descriptor;
- (BOOL)willDeleteWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
@end

@implementation HDMedicalRecordEntity

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v57[13] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDMedicalRecordEntity.m" lineNumber:93 description:{@"Subclasses must override %s", "+[HDMedicalRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
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
  fHIRIdentifier = [objectCopy FHIRIdentifier];

  if (fHIRIdentifier)
  {
    fHIRIdentifier2 = [objectCopy FHIRIdentifier];
    stringValue = [fHIRIdentifier2 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  metadata = [objectCopy metadata];
  v19 = *MEMORY[0x277CCE070];
  v20 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE070]];

  if (v20)
  {
    errorCopy2 = error;
    v21 = databaseCopy;
    metadata2 = [objectCopy metadata];
    v23 = [metadata2 objectForKeyedSubscript:v19];
    longLongValue = [v23 longLongValue];
    persistentID = 0;
LABEL_8:

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __87__HDMedicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v48[3] = &unk_278626C10;
    v26 = dCopy;
    v49 = v26;
    v50 = objectCopy;
    v27 = stringValue;
    v51 = stringValue;
    v52 = longLongValue;
    v53 = persistentID;
    v54 = a2;
    selfCopy = self;
    databaseCopy = v21;
    v28 = v21;
    v29 = v47;
    v30 = [self insertOrReplaceEntity:1 database:v28 properties:v47 error:errorCopy2 bindingHandler:v48];
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

  originIdentifier = [objectCopy originIdentifier];
  signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];

  if (signedClinicalDataRecordIdentifier)
  {
    errorCopy2 = error;
    [objectCopy originIdentifier];
    v38 = v37 = databaseCopy;
    signedClinicalDataRecordIdentifier2 = [v38 signedClinicalDataRecordIdentifier];
    v56 = 0;
    v21 = v37;
    v23 = [HDOriginalSignedClinicalDataRecordEntity entityWithSyncIdentifier:signedClinicalDataRecordIdentifier2 database:v37 error:&v56];
    metadata2 = v56;

    if (v23)
    {
      persistentID = [v23 persistentID];
      longLongValue = 0;
      goto LABEL_8;
    }

    if (metadata2)
    {
      databaseCopy = v21;
      v27 = stringValue;
      if (errorCopy2)
      {
        v40 = metadata2;
        *errorCopy2 = metadata2;
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
      originIdentifier2 = [objectCopy originIdentifier];
      signedClinicalDataRecordIdentifier3 = [originIdentifier2 signedClinicalDataRecordIdentifier];
      [v41 hk_assignError:errorCopy2 code:118 format:{@"Original signed clinical data record with sync identifier %@ does not exist", signedClinicalDataRecordIdentifier3}];

      databaseCopy = v21;
      v27 = stringValue;
      v29 = v47;
    }

    v32 = 0;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:@"Attempting to save a medical record without an origin."];
    v32 = 0;
    v27 = stringValue;
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
  if (objc_opt_class() == self)
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

+ (id)_latestDateForProperty:(void *)property sampleTypes:(void *)types profile:(uint64_t)profile error:
{
  v8 = a2;
  propertyCopy = property;
  typesCopy = types;
  v11 = objc_opt_self();
  if (!typesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__latestDateForProperty_sampleTypes_profile_error_ object:v11 file:@"HDMedicalRecordEntity.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__142;
  v29 = __Block_byref_object_dispose__142;
  v30 = 0;
  v12 = HDSampleEntityPredicateForDataTypes(propertyCopy);
  database = [typesCopy database];
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
  v16 = [v11 performReadTransactionWithHealthDatabase:database error:profile block:v20];

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

+ (id)latestCreationDateWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  if ([behavior futureMigrationsEnabled])
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:v9];
  v11 = [(HDMedicalRecordEntity *)self _latestDateForProperty:v10 sampleTypes:profileCopy profile:error error:?];

  return v11;
}

+ (id)latestModifiedDateWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  if ([behavior futureMigrationsEnabled])
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:v9];
  v11 = [(HDMedicalRecordEntity *)self _latestDateForProperty:v10 sampleTypes:profileCopy profile:error error:?];

  return v11;
}

+ (id)medicalRecordWithAttachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v9 = [MEMORY[0x277CCD008] componentsFromAttachmentObjectIdentifier:identifier sampleTypeIdentifier:&v36 bundleIdentifier:&v35 FHIRIdentifier:&v34];
  v10 = v36;
  v11 = v35;
  v12 = v34;
  if ((v9 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Failed parse attachment objectIdentifier into components"];
    if (v15)
    {
      if (error)
      {
        v24 = v15;
        firstObject = 0;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
        firstObject = 0;
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
      if (error)
      {
        v25 = v15;
        *error = v15;
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
  v15 = [self predicateForObjectsFromLocalSourceWithBundleIdentifier:v11 profile:profileCopy error:error];
  if (!v15)
  {
LABEL_23:
    firstObject = 0;
    goto LABEL_24;
  }

  v16 = v12;
  v14 = v14;
  v17 = profileCopy;
  v15 = v15;
  v30 = objc_opt_self();
  v33 = v16;
  v31 = HDMedicalRecordEntityPredicateForFHIRIdentifier(v16);
  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:?];

  v41 = @"SkipApplyingConceptIndex";
  v42[0] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v32 = v17;
  v20 = [(HDSampleEntity *)HDMedicalRecordEntity samplesWithType:v14 profile:v17 encodingOptions:v19 predicate:v18 limit:0 anchor:0 error:error];
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

    firstObject = [v21 firstObject];
  }

  else
  {
    firstObject = 0;
  }

LABEL_24:
  v26 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dCopy = d;
  v10 = objc_opt_class();
  v16 = @"SkipApplyingConceptIndex";
  v17[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v10 objectWithUUID:dCopy encodingOptions:v11 profile:profileCopy error:error];

  attachmentObjectIdentifier = [v12 attachmentObjectIdentifier];

  v14 = *MEMORY[0x277D85DE8];

  return attachmentObjectIdentifier;
}

- (BOOL)willDeleteWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v6.receiver = self;
  v6.super_class = HDMedicalRecordEntity;
  return [(HDHealthEntity *)&v6 willDeleteWithProfile:profile transaction:transaction error:error];
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [[_HDMedicalRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)orderingTermForSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy key];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCC3C8]];

  if (v6)
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    ascending = [descriptorCopy ascending];
    v10 = @"modified_date";
LABEL_5:
    v13 = [v7 orderingTermWithProperty:v10 entityClass:v8 ascending:ascending];
    goto LABEL_7;
  }

  v11 = [descriptorCopy key];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC3D0]];

  if (v12)
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    ascending = [descriptorCopy ascending];
    v10 = @"sort_date";
    goto LABEL_5;
  }

  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___HDMedicalRecordEntity;
  v13 = objc_msgSendSuper2(&v16, sel_orderingTermForSortDescriptor_, descriptorCopy);
LABEL_7:
  v14 = v13;

  return v14;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"user_domain_concepts.uuid"])
  {
    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    v6 = [HDMedicalUserDomainConceptMappingEntity joinClausesForProperty:propertyCopy];
    v7 = [v5 initWithSet:v6];

    v8 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v10 = [v8 innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"data_id"];
    [v7 addObject:v10];

    v11 = [v7 copy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___HDMedicalRecordEntity;
    v11 = objc_msgSendSuper2(&v13, sel_joinClausesForProperty_, propertyCopy);
  }

  return v11;
}

@end