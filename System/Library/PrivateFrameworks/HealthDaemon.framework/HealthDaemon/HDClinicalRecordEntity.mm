@interface HDClinicalRecordEntity
+ (id)_clinicalRecordForSampleType:(id)type predicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)_predicateForRecordWithFHIRResourceIdentifier:(id)identifier;
+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)clinicalRecordWithAttachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)existingClinicalRecordCreatedFromResourceWithIdentifier:(id)identifier basePredicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)joinClausesForProperty:(id)property;
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

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"originalFHIRResource.id"])
  {
    v5 = MEMORY[0x277D10B50];
    v6 = +[(HDSQLiteSchemaEntity *)HDClinicalRecordEntity];
    v7 = [v5 leftJoinClauseFromTable:v6 toTargetEntity:objc_opt_class() as:@"originalFHIRResource" localReference:@"original_fhir_resource_rowid" targetKey:*MEMORY[0x277D10A40]];

    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v7, 0}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___HDClinicalRecordEntity;
    v8 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, propertyCopy);
  }

  return v8;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v47[12] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClinicalRecordEntity.m" lineNumber:95 description:{@"Subclasses must override %s", "+[HDClinicalRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
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
  metadata = [objectCopy metadata];
  v18 = *MEMORY[0x277CCE070];
  v19 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE070]];

  if (v19)
  {
    metadata2 = [objectCopy metadata];
    v21 = [metadata2 objectForKeyedSubscript:v18];
    longLongValue = [v21 longLongValue];

    if (longLongValue)
    {
      persistentID = 0;
LABEL_10:
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __88__HDClinicalRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
      v40[3] = &unk_278629B48;
      v33 = dCopy;
      v41 = v33;
      v42 = objectCopy;
      v43 = longLongValue;
      v44 = persistentID;
      v45 = a2;
      selfCopy = self;
      v34 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v40];
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

  metadata3 = [objectCopy metadata];
  v25 = *MEMORY[0x277CCE078];
  v26 = [metadata3 objectForKeyedSubscript:*MEMORY[0x277CCE078]];

  if (v26)
  {
    v27 = objc_alloc(MEMORY[0x277CCAD78]);
    metadata4 = [objectCopy metadata];
    v29 = [metadata4 objectForKeyedSubscript:v25];
    v30 = [v27 initWithUUIDString:v29];

    v31 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:v30 database:databaseCopy error:error];
    if (!v31)
    {

      goto LABEL_16;
    }

    v32 = v31;
    persistentID = [v31 persistentID];

    if (persistentID)
    {
      longLongValue = 0;
      goto LABEL_10;
    }
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:@"No OrignalFHIRResource or OriginalSignedClinicalDataRecord ROWID provided for FK on insert"];
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

+ (id)clinicalRecordWithAttachmentObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v9 = [MEMORY[0x277CCD008] componentsFromAttachmentObjectIdentifier:identifier sampleTypeIdentifier:&v23 bundleIdentifier:&v22 FHIRIdentifier:&v21];
  v10 = v23;
  v11 = v22;
  v12 = v21;
  if ((v9 & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Failed parse attachment objectIdentifier into components"];
    if (v14)
    {
      if (error)
      {
        v18 = v14;
        v17 = 0;
        *error = v14;
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
      if (error)
      {
        v19 = v15;
        v17 = 0;
        *error = v15;
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

  v14 = [self predicateForObjectsFromLocalSourceWithBundleIdentifier:v11 profile:profileCopy error:error];
  if (!v14)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_19;
  }

  v15 = [self _predicateForRecordWithFHIRResourceIdentifier:v12];
  v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v14 otherPredicate:v15];
  v17 = [self _clinicalRecordForSampleType:v13 predicate:v16 profile:profileCopy error:error];

LABEL_18:
LABEL_19:

  return v17;
}

+ (id)attachmentObjectIdentifierForSampleWithUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  dCopy = d;
  v10 = [objc_opt_class() objectWithUUID:dCopy encodingOptions:0 profile:profileCopy error:error];

  attachmentObjectIdentifier = [v10 attachmentObjectIdentifier];

  return attachmentObjectIdentifier;
}

+ (id)existingClinicalRecordCreatedFromResourceWithIdentifier:(id)identifier basePredicate:(id)predicate profile:(id)profile error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  predicateCopy = predicate;
  profileCopy = profile;
  v13 = [self _predicateForRecordWithFHIRResourceIdentifier:identifierCopy];
  v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:predicateCopy otherPredicate:v13];
  v15 = MEMORY[0x277CCD118];
  resourceType = [identifierCopy resourceType];
  v17 = [v15 sampleTypesForResourceType:resourceType error:error];

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
      v27 = predicateCopy;
      v28 = identifierCopy;
      v21 = *v31;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [self _clinicalRecordForSampleType:*(*(&v30 + 1) + 8 * i) predicate:v14 profile:profileCopy error:error];
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
      predicateCopy = v27;
      identifierCopy = v28;
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

+ (id)_clinicalRecordForSampleType:(id)type predicate:(id)predicate profile:(id)profile error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v11 = [HDSampleEntity samplesWithType:typeCopy profile:profile encodingOptions:0 predicate:predicate limit:0 anchor:0 error:error];
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
        selfCopy = self;
        v19 = 2114;
        v20 = typeCopy;
        _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "%{public}@ Unexpectedly found more than 1 clinical record for clinical sampleType %{public}@!", buf, 0x16u);
      }
    }

    firstObject = [v12 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)_predicateForRecordWithFHIRResourceIdentifier:(id)identifier
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  identifierCopy = identifier;
  resourceType = [identifierCopy resourceType];
  v6 = [v3 predicateWithProperty:@"fhir_resource_resource_type" equalToValue:resourceType];

  v7 = MEMORY[0x277D10B18];
  identifier = [identifierCopy identifier];

  v9 = [v7 predicateWithProperty:@"fhir_resource_identifier" equalToValue:identifier];

  v10 = MEMORY[0x277D10B20];
  v15[0] = v9;
  v15[1] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDClinicalRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end