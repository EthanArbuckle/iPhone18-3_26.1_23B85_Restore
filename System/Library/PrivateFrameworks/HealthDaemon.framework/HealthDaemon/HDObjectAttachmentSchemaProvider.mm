@interface HDObjectAttachmentSchemaProvider
- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error;
- (BOOL)validateAttachment:(id)attachment forObjectWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error;
- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error;
- (id)_objectWithIdentifier:(void *)identifier profile:(void *)profile errorOut:;
- (int64_t)schemaVersionForObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error;
@end

@implementation HDObjectAttachmentSchemaProvider

- (int64_t)schemaVersionForObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v12 = 0;
  v7 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:identifier profile:profile errorOut:&v12];
  v8 = v12;
  hd_sampleType = [v7 hd_sampleType];

  if (!hd_sampleType)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Failed to fetch object" underlyingError:v8];
    goto LABEL_5;
  }

  if (!self)
  {
LABEL_5:
    attachmentSchemaVersion = 0;
    goto LABEL_6;
  }

  attachmentSchemaVersion = [hd_sampleType attachmentSchemaVersion];
LABEL_6:

  return attachmentSchemaVersion;
}

- (id)_objectWithIdentifier:(void *)identifier profile:(void *)profile errorOut:
{
  v7 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    if (v9)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__151;
      v27 = __Block_byref_object_dispose__151;
      v28 = 0;
      database = [identifierCopy database];
      v22 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__HDObjectAttachmentSchemaProvider__objectWithIdentifier_profile_errorOut___block_invoke;
      v18[3] = &unk_278627B70;
      v18[4] = self;
      v19 = v9;
      v21 = &v23;
      v20 = identifierCopy;
      [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:database error:&v22 block:v18];
      v11 = v22;

      v12 = v24[5];
      if (!v12)
      {
        v13 = v11;
        v14 = v13;
        if (v13)
        {
          if (profile)
          {
            v15 = v13;
            *profile = v14;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v12 = v24[5];
      }

      v16 = v12;

      _Block_object_dispose(&v23, 8);
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:profile code:118 format:{@"No object found with identifier '%@'", v7}];
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)validateAttachment:(id)attachment forObjectWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error
{
  attachmentCopy = attachment;
  v12 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:identifier profile:profile errorOut:error];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sampleType = [v12 sampleType];
      contentType = [attachmentCopy contentType];
      v15 = [sampleType canAttachFileOfType:contentType size:objc_msgSend(attachmentCopy error:{"size"), error}];
    }

    else
    {
      contentType = [MEMORY[0x277CCA9B8] hk_error:3 format:@"The object type is not supported"];
      if (contentType)
      {
        if (error)
        {
          v16 = contentType;
          v15 = 0;
          *error = contentType;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }

        sampleType = contentType;
      }

      else
      {
        sampleType = 0;
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error
{
  clientCopy = client;
  v11 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:identifier profile:profile errorOut:error];
  if (v11)
  {
    authorizationOracle = [clientCopy authorizationOracle];
    v13 = [authorizationOracle isAuthorizedToReadObject:v11 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error
{
  clientCopy = client;
  v11 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:identifier profile:profile errorOut:error];
  if (!v11)
  {
    goto LABEL_5;
  }

  sourceBundleIdentifier = [clientCopy sourceBundleIdentifier];
  sourceRevision = [v11 sourceRevision];
  source = [sourceRevision source];
  bundleIdentifier = [source bundleIdentifier];
  v16 = [sourceBundleIdentifier isEqualToString:bundleIdentifier];

  if ((v16 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:@"Cannot write to an object from a different source"];
LABEL_5:
    canWrite = 0;
    goto LABEL_6;
  }

  authorizationOracle = [clientCopy authorizationOracle];
  hd_sampleType = [v11 hd_sampleType];
  v19 = [authorizationOracle authorizationStatusRecordForType:hd_sampleType error:error];

  canWrite = [v19 canWrite];
LABEL_6:

  return canWrite;
}

BOOL __75__HDObjectAttachmentSchemaProvider__objectWithIdentifier_profile_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = v8;
  if (v6)
  {
    v10 = [v8 protectedDatabase];
    v11 = HDDataEntityPredicateForDataUUID();
    v33[0] = 0;
    v12 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v10 predicate:v11 error:v33];
    v13 = v33[0];

    if (v12)
    {
      v14 = [v9 protectedDatabase];
      v15 = [v12 numberForProperty:@"data_type" database:v14];

      if (v15)
      {
        v16 = [v15 integerValue];
        if (v16 < 0x156)
        {
          v17 = [MEMORY[0x277CCD720] dataTypeWithCode:v16];
          if (v17)
          {
LABEL_23:

LABEL_24:
            goto LABEL_25;
          }

          [MEMORY[0x277CCA9B8] hk_error:3 format:{@"HKObjectType for data type code '%li' is unexpectedly nil", v16}];
        }

        else
        {
          [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unknown data type code '%li'", v16}];
        }
        v18 = ;
        if (v18)
        {
          if (a3)
          {
            v19 = v18;
            *a3 = v18;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:2000 format:{@"Unable to fetch dataTypeCodeNumber for objectUUID: %@", v7}];
      }

LABEL_22:
      v17 = 0;
      goto LABEL_23;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No entity found for objectUUID: %@", v7}];
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    if (a3)
    {
      v20 = v15;
      *a3 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }

    v17 = 0;
    if (v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v17 = 0;
LABEL_25:

  if (v17)
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    v24 = v17;
    v25 = v22;
    if (v21)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__151;
      v41 = __Block_byref_object_dispose__151;
      v42 = 0;
      v26 = [HDSampleEntity entityEnumeratorWithType:v24 profile:v25];
      v27 = HDDataEntityPredicateForDataUUID();
      [v26 setPredicate:v27];

      [v26 setLimitCount:1];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __71__HDObjectAttachmentSchemaProvider__objectWithUUID_type_profile_error___block_invoke;
      v33[3] = &unk_278627B98;
      v34 = v23;
      v35 = v25;
      v36 = &v37;
      [v26 enumerateWithError:a3 handler:v33];
      v28 = v38[5];

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = *(*(*(a1 + 56) + 8) + 40) != 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

BOOL __71__HDObjectAttachmentSchemaProvider__objectWithUUID_type_profile_error___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:118 format:{@"No object found for objectUUID: %@, profile: %@", a1[4], a1[5]}];
  }

  return v7 != 0;
}

@end