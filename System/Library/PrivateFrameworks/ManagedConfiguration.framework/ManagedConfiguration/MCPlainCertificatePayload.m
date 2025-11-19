@interface MCPlainCertificatePayload
+ (id)typeStrings;
- (BOOL)isIdentity;
- (BOOL)isSigned;
- (MCPlainCertificatePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (__SecCertificate)copyCertificate;
- (id)installationWarnings;
- (id)persistentResourceID;
- (id)verboseDescription;
@end

@implementation MCPlainCertificatePayload

+ (id)typeStrings
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.security.root";
  v5[1] = @"com.apple.security.pkcs12";
  v5[2] = @"com.apple.security.pkcs1";
  v5[3] = @"com.apple.security.pem";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCPlainCertificatePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v36.receiver = self;
  v36.super_class = MCPlainCertificatePayload;
  v10 = [(MCCertificatePayload *)&v36 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_19;
  }

  if (![v9 isStub])
  {
    v35 = 0;
    v11 = [MCProfile removeRequiredObjectInDictionary:v8 key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v35];
    v12 = v35;
    certificateData = v10->_certificateData;
    v10->_certificateData = v11;

    v14 = [(MCPayload *)v10 type];
    v15 = [v14 isEqualToString:@"com.apple.security.pkcs12"];

    if (v15)
    {
      v10->_dataEncoding = 1;
      if (v12)
      {
        goto LABEL_9;
      }

      v34 = 0;
      v16 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"Password" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v34];
      v12 = v34;
      password = v10->_password;
      v10->_password = v16;

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10->_dataEncoding = 0;
      if (v12)
      {
        goto LABEL_9;
      }
    }
  }

  v33 = 0;
  v18 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"PayloadCertificateFileName" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v33];
  v12 = v33;
  certificateFileName = v10->_certificateFileName;
  v10->_certificateFileName = v18;

LABEL_9:
  if ([v8 count])
  {
    v20 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v38 = v22;
      v39 = 2114;
      v40 = v8;
      _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
    }
  }

  if (v12)
  {
    v23 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v24 = v23;
    if (a5)
    {
      v25 = v23;
      *a5 = v24;
    }

    v26 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = v28;
      v30 = [v24 MCVerboseDescription];
      *buf = 138543618;
      v38 = v28;
      v39 = 2114;
      v40 = v30;
      _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

LABEL_19:
  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isSigned
{
  v3 = [(MCPayload *)self profile];
  if ([v3 isStub])
  {
  }

  else
  {
    dataEncoding = self->_dataEncoding;

    if (dataEncoding == 1)
    {
      return 0;
    }
  }

  return 1;
}

- (id)installationWarnings
{
  if ([(MCCertificatePayload *)self isRoot]&& (v3 = [(MCPlainCertificatePayload *)self copyCertificate]) != 0)
  {
    v4 = v3;
    SecTrustStoreForDomain();
    if (SecTrustStoreContains())
    {
      v5 = 0;
    }

    else
    {
      v6 = SecCertificateCopySubjectSummary(v4);
      if (!v6)
      {
        v6 = [(MCPayload *)self friendlyName];
      }

      v7 = [(MCPayload *)self profile];
      v8 = [v7 containsPayloadOfClass:objc_opt_class()];
      v9 = MEMORY[0x1E695DEC8];
      v10 = v8 == 0;
      if (v8)
      {
        v11 = @"INSTALL_WARNING_ROOT_CERT_TITLE";
      }

      else
      {
        v11 = @"INSTALL_WARNING_UNMANAGED_ROOT_CERT_TITLE";
      }

      if (v10)
      {
        v12 = @"INSTALL_WARNING_UNMANAGED_ROOT_CERT_P_CERT";
      }

      else
      {
        v12 = @"INSTALL_WARNING_ROOT_CERT_P_CERT";
      }

      v13 = MCLocalizedString(v11);
      v21 = MCLocalizedFormatByDevice(v12, v14, v15, v16, v17, v18, v19, v20, v6);
      v22 = [MCProfileWarning warningWithLocalizedTitle:v13 localizedBody:v21 isLongForm:0];
      v5 = [v9 arrayWithObject:v22];
    }

    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__SecCertificate)copyCertificate
{
  v14[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MCPlainCertificatePayload;
  result = [(MCCertificatePayload *)&v11 copyCertificate];
  certificateRef = result;
  if (result)
  {
    goto LABEL_8;
  }

  if (!self->_certificateData)
  {
    goto LABEL_7;
  }

  dataEncoding = self->_dataEncoding;
  if (dataEncoding != 1)
  {
    if (!dataEncoding)
    {
      result = [MCCrypto copyCertificateRefFromPKCS1Data:?];
      if (!result)
      {
        result = [MCCrypto copyCertificateRefFromPEMData:self->_certificateData];
      }

      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  result = [(NSString *)self->_password length];
  if (result)
  {
    items = 0;
    password = self->_password;
    v13 = *MEMORY[0x1E697B0B0];
    v14[0] = password;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    if (!SecPKCS12Import(self->_certificateData, v7, &items) && CFArrayGetCount(items) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
      SecIdentityCopyCertificate(Value, &certificateRef);
    }

    if (items)
    {
      CFRelease(items);
    }

    result = certificateRef;
  }

LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = MCPlainCertificatePayload;
  v4 = [(MCCertificatePayload *)&v8 verboseDescription];
  v5 = [v3 stringWithString:v4];

  if (self->_certificateFileName)
  {
    [v5 appendFormat:@"File name   : %@\n", self->_certificateFileName];
  }

  if (self->_certificateData)
  {
    [v5 appendFormat:@"Cert data   : Present\n"];
  }

  v6 = MCStringForBool([(MCCertificatePayload *)self isRoot]);
  [v5 appendFormat:@"Is root cert: %@\n", v6];

  return v5;
}

- (id)persistentResourceID
{
  v2 = [(MCCertificatePayload *)self certificatePersistentID];
  v3 = [v2 MCHexString];

  return v3;
}

- (BOOL)isIdentity
{
  v3 = [(MCPayload *)self profile];
  v4 = [v3 isStub];

  if ((v4 & 1) == 0)
  {
    return self->_dataEncoding == 1;
  }

  v6.receiver = self;
  v6.super_class = MCPlainCertificatePayload;
  return [(MCCertificatePayload *)&v6 isIdentity];
}

@end