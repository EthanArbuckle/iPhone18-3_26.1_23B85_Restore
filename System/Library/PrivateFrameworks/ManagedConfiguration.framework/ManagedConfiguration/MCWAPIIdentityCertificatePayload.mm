@interface MCWAPIIdentityCertificatePayload
- (MCWAPIIdentityCertificatePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (__SecCertificate)copyCertificate;
- (id)verboseDescription;
@end

@implementation MCWAPIIdentityCertificatePayload

- (MCWAPIIdentityCertificatePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = MCWAPIIdentityCertificatePayload;
  v10 = [(MCCertificatePayload *)&v28 initWithDictionary:v8 profile:v9 outError:a5];
  if (v10)
  {
    if ([v9 isStub])
    {
      v11 = 0;
    }

    else
    {
      v27 = 0;
      v12 = [MCProfile removeRequiredObjectInDictionary:v8 key:@"PEMData" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v27];
      v11 = v27;
      pemData = v10->_pemData;
      v10->_pemData = v12;
    }

    if ([v8 count])
    {
      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        v16 = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v30 = v16;
        v31 = 2114;
        v32 = v8;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
      }
    }

    if (v11)
    {
      v17 = [(MCPayload *)v10 malformedPayloadErrorWithError:v11];
      v18 = v17;
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = v22;
        v24 = [v18 MCVerboseDescription];
        *buf = 138543618;
        v30 = v22;
        v31 = 2114;
        v32 = v24;
        _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (__SecCertificate)copyCertificate
{
  v4.receiver = self;
  v4.super_class = MCWAPIIdentityCertificatePayload;
  result = [(MCCertificatePayload *)&v4 copyCertificate];
  if (!result)
  {
    if (self->_pemData)
    {
      return [MCCrypto copyCertificateRefFromPEMData:?];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = MCWAPIIdentityCertificatePayload;
  v4 = [(MCCertificatePayload *)&v8 verboseDescription];
  v5 = [v3 stringWithString:v4];

  v6 = [(MCWAPIIdentityCertificatePayload *)self pemData];

  if (v6)
  {
    [v5 appendFormat:@"PEM Data    : Present\n"];
  }

  return v5;
}

@end