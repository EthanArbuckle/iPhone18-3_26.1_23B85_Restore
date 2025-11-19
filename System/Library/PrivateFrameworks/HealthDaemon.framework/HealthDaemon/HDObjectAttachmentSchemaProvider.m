@interface HDObjectAttachmentSchemaProvider
- (BOOL)readAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6;
- (BOOL)validateAttachment:(id)a3 forObjectWithIdentifier:(id)a4 metadata:(id)a5 profile:(id)a6 error:(id *)a7;
- (BOOL)writeAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)_objectWithIdentifier:(void *)a3 profile:(void *)a4 errorOut:;
- (int64_t)schemaVersionForObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
@end

@implementation HDObjectAttachmentSchemaProvider

- (int64_t)schemaVersionForObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v12 = 0;
  v7 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:a3 profile:a4 errorOut:&v12];
  v8 = v12;
  v9 = [v7 hd_sampleType];

  if (!v9)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Failed to fetch object" underlyingError:v8];
    goto LABEL_5;
  }

  if (!self)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = [v9 attachmentSchemaVersion];
LABEL_6:

  return v10;
}

- (id)_objectWithIdentifier:(void *)a3 profile:(void *)a4 errorOut:
{
  v7 = a2;
  v8 = a3;
  if (a1)
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
      v10 = [v8 database];
      v22 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__HDObjectAttachmentSchemaProvider__objectWithIdentifier_profile_errorOut___block_invoke;
      v18[3] = &unk_278627B70;
      v18[4] = a1;
      v19 = v9;
      v21 = &v23;
      v20 = v8;
      [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v10 error:&v22 block:v18];
      v11 = v22;

      v12 = v24[5];
      if (!v12)
      {
        v13 = v11;
        v14 = v13;
        if (v13)
        {
          if (a4)
          {
            v15 = v13;
            *a4 = v14;
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
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:118 format:{@"No object found with identifier '%@'", v7}];
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)validateAttachment:(id)a3 forObjectWithIdentifier:(id)a4 metadata:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:a4 profile:a6 errorOut:a7];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 sampleType];
      v14 = [v11 contentType];
      v15 = [v13 canAttachFileOfType:v14 size:objc_msgSend(v11 error:{"size"), a7}];
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"The object type is not supported"];
      if (v14)
      {
        if (a7)
        {
          v16 = v14;
          v15 = 0;
          *a7 = v14;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }

        v13 = v14;
      }

      else
      {
        v13 = 0;
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

- (BOOL)readAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:a3 profile:a5 errorOut:a6];
  if (v11)
  {
    v12 = [v10 authorizationOracle];
    v13 = [v12 isAuthorizedToReadObject:v11 error:a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)writeAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(HDObjectAttachmentSchemaProvider *)self _objectWithIdentifier:a3 profile:a5 errorOut:a6];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v10 sourceBundleIdentifier];
  v13 = [v11 sourceRevision];
  v14 = [v13 source];
  v15 = [v14 bundleIdentifier];
  v16 = [v12 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:4 format:@"Cannot write to an object from a different source"];
LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v17 = [v10 authorizationOracle];
  v18 = [v11 hd_sampleType];
  v19 = [v17 authorizationStatusRecordForType:v18 error:a6];

  v20 = [v19 canWrite];
LABEL_6:

  return v20;
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