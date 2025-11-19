@interface HDClinicalAttachmentSchemaProvider
- (BOOL)readAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6;
- (BOOL)validateAttachment:(id)a3 forObjectWithIdentifier:(id)a4 metadata:(id)a5 profile:(id)a6 error:(id *)a7;
- (BOOL)writeAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6;
- (id)_objectWithIdentifier:(void *)a3 profile:(void *)a4 errorOut:;
- (int64_t)schemaVersionForObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
@end

@implementation HDClinicalAttachmentSchemaProvider

- (int64_t)schemaVersionForObjectIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v12 = 0;
  v7 = [(HDClinicalAttachmentSchemaProvider *)self _objectWithIdentifier:a3 profile:a4 errorOut:&v12];
  v8 = v12;
  v9 = [v7 hd_sampleType];

  if (!v9)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Failed to fetch object" underlyingError:v8];
    goto LABEL_7;
  }

  if (!self)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (([v9 code] - 267) < 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_8:

  return v10;
}

- (id)_objectWithIdentifier:(void *)a3 profile:(void *)a4 errorOut:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if ([v7 hasPrefix:*MEMORY[0x277CCBB38]])
    {
      v9 = [HDClinicalRecordEntity clinicalRecordWithAttachmentObjectIdentifier:v7 profile:v8 error:a4];
LABEL_6:
      v10 = v9;
      goto LABEL_13;
    }

    if ([v7 hasPrefix:*MEMORY[0x277CCBB30]])
    {
      v9 = [HDMedicalRecordEntity medicalRecordWithAttachmentObjectIdentifier:v7 profile:v8 error:a4];
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"identifier is not a clinical or medical record  %@", v7}];
    if (v11)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)validateAttachment:(id)a3 forObjectWithIdentifier:(id)a4 metadata:(id)a5 profile:(id)a6 error:(id *)a7
{
  v8 = [a3 size];
  if (v8 >= 26214401)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:3 format:@"File size is too large"];
  }

  return v8 < 26214401;
}

- (BOOL)readAuthorizationForObjectIdentifier:(id)a3 client:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(HDClinicalAttachmentSchemaProvider *)self _objectWithIdentifier:a3 profile:a5 errorOut:a6];
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
  v7 = [MEMORY[0x277CCA9B8] hk_error:110 format:{@"Adding attachments is not supported", a5}];
  if (v7)
  {
    if (a6)
    {
      v8 = v7;
      *a6 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

@end