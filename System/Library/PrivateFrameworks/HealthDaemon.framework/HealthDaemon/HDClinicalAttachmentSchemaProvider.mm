@interface HDClinicalAttachmentSchemaProvider
- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error;
- (BOOL)validateAttachment:(id)attachment forObjectWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error;
- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error;
- (id)_objectWithIdentifier:(void *)identifier profile:(void *)profile errorOut:;
- (int64_t)schemaVersionForObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error;
@end

@implementation HDClinicalAttachmentSchemaProvider

- (int64_t)schemaVersionForObjectIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v12 = 0;
  v7 = [(HDClinicalAttachmentSchemaProvider *)self _objectWithIdentifier:identifier profile:profile errorOut:&v12];
  v8 = v12;
  hd_sampleType = [v7 hd_sampleType];

  if (!hd_sampleType)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Failed to fetch object" underlyingError:v8];
    goto LABEL_7;
  }

  if (!self)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (([hd_sampleType code] - 267) < 2)
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

- (id)_objectWithIdentifier:(void *)identifier profile:(void *)profile errorOut:
{
  v7 = a2;
  identifierCopy = identifier;
  if (self)
  {
    if ([v7 hasPrefix:*MEMORY[0x277CCBB38]])
    {
      v9 = [HDClinicalRecordEntity clinicalRecordWithAttachmentObjectIdentifier:v7 profile:identifierCopy error:profile];
LABEL_6:
      v10 = v9;
      goto LABEL_13;
    }

    if ([v7 hasPrefix:*MEMORY[0x277CCBB30]])
    {
      v9 = [HDMedicalRecordEntity medicalRecordWithAttachmentObjectIdentifier:v7 profile:identifierCopy error:profile];
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"identifier is not a clinical or medical record  %@", v7}];
    if (v11)
    {
      if (profile)
      {
        v12 = v11;
        *profile = v11;
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

- (BOOL)validateAttachment:(id)attachment forObjectWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error
{
  v8 = [attachment size];
  if (v8 >= 26214401)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"File size is too large"];
  }

  return v8 < 26214401;
}

- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier client:(id)client profile:(id)profile error:(id *)error
{
  clientCopy = client;
  v11 = [(HDClinicalAttachmentSchemaProvider *)self _objectWithIdentifier:identifier profile:profile errorOut:error];
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
  v7 = [MEMORY[0x277CCA9B8] hk_error:110 format:{@"Adding attachments is not supported", profile}];
  if (v7)
  {
    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

@end