@interface IDSKeyTransparencyTrustedDeviceEnrollmentMetric
- (IDSKeyTransparencyTrustedDeviceEnrollmentMetric)initWithKeyTransparencyVersion:(unint64_t)version cloudKitSuccess:(BOOL)success cloudKitErrorDomain:(id)domain cloudKitErrorCode:(int64_t)code cloudKitUnderlyingErrorDomain:(id)errorDomain cloudKitUnderlyingErrorCode:(int64_t)errorCode cloudKitOperationTimeInterval:(double)interval accountKeySuccess:(BOOL)self0 accountKeyErrorDomain:(id)self1 accountKeyErrorCode:(int64_t)self2 accountKeyUnderlyingErrorDomain:(id)self3 accountKeyUnderlyingErrorCode:(int64_t)self4 accountKeyOperationTimeInterval:(double)self5;
- (IDSKeyTransparencyTrustedDeviceEnrollmentMetric)initWithKeyTransparencyVersion:(unint64_t)version kvsSuccess:(BOOL)success kvsErrorDomain:(id)domain kvsErrorCode:(int64_t)code kvsSyncTimeInterval:(double)interval kvsUnderlyingErrorDomain:(id)errorDomain kvsUnderlyingErrorCode:(int64_t)errorCode;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSKeyTransparencyTrustedDeviceEnrollmentMetric

- (IDSKeyTransparencyTrustedDeviceEnrollmentMetric)initWithKeyTransparencyVersion:(unint64_t)version cloudKitSuccess:(BOOL)success cloudKitErrorDomain:(id)domain cloudKitErrorCode:(int64_t)code cloudKitUnderlyingErrorDomain:(id)errorDomain cloudKitUnderlyingErrorCode:(int64_t)errorCode cloudKitOperationTimeInterval:(double)interval accountKeySuccess:(BOOL)self0 accountKeyErrorDomain:(id)self1 accountKeyErrorCode:(int64_t)self2 accountKeyUnderlyingErrorDomain:(id)self3 accountKeyUnderlyingErrorCode:(int64_t)self4 accountKeyOperationTimeInterval:(double)self5
{
  domainCopy = domain;
  errorDomainCopy = errorDomain;
  keyErrorDomainCopy = keyErrorDomain;
  underlyingErrorDomainCopy = underlyingErrorDomain;
  v38.receiver = self;
  v38.super_class = IDSKeyTransparencyTrustedDeviceEnrollmentMetric;
  v27 = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)&v38 init];
  v28 = v27;
  if (v27)
  {
    v27->_isKVSMetric = 0;
    v27->_keyTransparencyVersion = version;
    v27->_cloudKitSuccess = success;
    v29 = [domainCopy copy];
    cloudKitErrorDomain = v28->_cloudKitErrorDomain;
    v28->_cloudKitErrorDomain = v29;

    v28->_cloudKitErrorCode = code;
    v31 = [errorDomainCopy copy];
    cloudKitUnderlyingErrorDomain = v28->_cloudKitUnderlyingErrorDomain;
    v28->_cloudKitUnderlyingErrorDomain = v31;

    v28->_cloudKitUnderlyingErrorCode = errorCode;
    v28->_cloudKitOperationTimeInterval = ceil(interval);
    v28->_accountKeySuccess = keySuccess;
    v33 = [keyErrorDomainCopy copy];
    accountKeyErrorDomain = v28->_accountKeyErrorDomain;
    v28->_accountKeyErrorDomain = v33;

    v28->_accountKeyErrorCode = keyErrorCode;
    v35 = [underlyingErrorDomainCopy copy];
    accountKeyUnderlyingErrorDomain = v28->_accountKeyUnderlyingErrorDomain;
    v28->_accountKeyUnderlyingErrorDomain = v35;

    v28->_accountKeyUnderlyingErrorCode = underlyingErrorCode;
    v28->_accountKeyOperationTimeInterval = ceil(timeInterval);
  }

  return v28;
}

- (IDSKeyTransparencyTrustedDeviceEnrollmentMetric)initWithKeyTransparencyVersion:(unint64_t)version kvsSuccess:(BOOL)success kvsErrorDomain:(id)domain kvsErrorCode:(int64_t)code kvsSyncTimeInterval:(double)interval kvsUnderlyingErrorDomain:(id)errorDomain kvsUnderlyingErrorCode:(int64_t)errorCode
{
  domainCopy = domain;
  errorDomainCopy = errorDomain;
  v23.receiver = self;
  v23.super_class = IDSKeyTransparencyTrustedDeviceEnrollmentMetric;
  v18 = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_isKVSMetric = 1;
    v18->_keyTransparencyVersion = version;
    v18->_kvsSuccess = success;
    v20 = [domainCopy copy];
    kvsErrorDomain = v19->_kvsErrorDomain;
    v19->_kvsErrorDomain = v20;

    v19->_kvsErrorCode = code;
    v19->_kvsSyncTimeInterval = ceil(interval);
    objc_storeStrong(&v19->_kvsUnderlyingErrorDomain, errorDomain);
    v19->_kvsUnderlyingErrorCode = errorCode;
  }

  return v19;
}

- (NSString)description
{
  isKVSMetric = self->_isKVSMetric;
  v4 = MEMORY[0x1E696AEC0];
  name = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self name];
  keyTransparencyVersion = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self keyTransparencyVersion];
  if (isKVSMetric)
  {
    kvsSuccess = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsSuccess];
    kvsErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsErrorDomain];
    kvsErrorCode = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsErrorCode];
    [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsSyncTimeInterval];
    v11 = v10;
    kvsUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsUnderlyingErrorDomain];
    v13 = [v4 stringWithFormat:@"%@, <vers: %ld, kvs-success: %ld, kvs-error-d: %@, kvs-error-c: %ld, kvs-time: %d, kvs-uerror-d: %@, kvs-uerror-c: %ld>", name, keyTransparencyVersion, kvsSuccess, kvsErrorDomain, kvsErrorCode, v11, kvsUnderlyingErrorDomain, -[IDSKeyTransparencyTrustedDeviceEnrollmentMetric kvsUnderlyingErrorCode](self, "kvsUnderlyingErrorCode")];
  }

  else
  {
    cloudKitSuccess = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitSuccess];
    kvsErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitErrorDomain];
    cloudKitErrorCode = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitErrorCode];
    kvsUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitUnderlyingErrorDomain];
    cloudKitUnderlyingErrorCode = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitUnderlyingErrorCode];
    [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitOperationTimeInterval];
    v25 = v4;
    v15 = v14;
    v23 = keyTransparencyVersion;
    accountKeySuccess = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeySuccess];
    accountKeyErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyErrorDomain];
    accountKeyErrorCode = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyErrorCode];
    accountKeyUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyUnderlyingErrorDomain];
    accountKeyUnderlyingErrorCode = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyUnderlyingErrorCode];
    [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyOperationTimeInterval];
    v13 = [v25 stringWithFormat:@"%@: <vers: %ld, ck-success: %ld, ck-error-d: %@, ck-error-c: %ld, ck-uerror-d: %@, ck-uerror-c: %ld, ck-time: %d, ak-success: %ld, ak-error-d: %@, ak-error-c: %ld, ak-uerror-d: %@, ak-uerror-c: %ld, ak-time: %d>", name, v23, cloudKitSuccess, kvsErrorDomain, cloudKitErrorCode, kvsUnderlyingErrorDomain, cloudKitUnderlyingErrorCode, v15, accountKeySuccess, accountKeyErrorDomain, accountKeyErrorCode, accountKeyUnderlyingErrorDomain, accountKeyUnderlyingErrorCode, v21];
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric keyTransparencyVersion](self, "keyTransparencyVersion")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"KTVersion", v4);
  }

  if (self->_isKVSMetric)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric kvsSuccess](self, "kvsSuccess")}];
    if (v5)
    {
      CFDictionarySetValue(v3, @"KVSSuccess", v5);
    }

    kvsErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsErrorDomain];
    v7 = kvsErrorDomain;
    v8 = &stru_1F1AC8480;
    if (kvsErrorDomain)
    {
      v8 = kvsErrorDomain;
    }

    v9 = v8;

    CFDictionarySetValue(v3, @"KVSErrorDomain", v9);
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric kvsErrorCode](self, "kvsErrorCode")}];
    if (v10)
    {
      CFDictionarySetValue(v3, @"KVSErrorCode", v10);
    }

    v11 = MEMORY[0x1E696AD98];
    [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsSyncTimeInterval];
    v13 = [v11 numberWithInt:v12];
    if (v13)
    {
      CFDictionarySetValue(v3, @"KVSSyncTimeInterval", v13);
    }

    kvsUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self kvsUnderlyingErrorDomain];
    if (kvsUnderlyingErrorDomain)
    {
      CFDictionarySetValue(v3, @"KVSUnderlyingErrDomain", kvsUnderlyingErrorDomain);
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric kvsUnderlyingErrorCode](self, "kvsUnderlyingErrorCode")}];
    if (v15)
    {
      v16 = @"KVSUnderlyingErrCode";
LABEL_44:
      CFDictionarySetValue(v3, v16, v15);
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric cloudKitSuccess](self, "cloudKitSuccess")}];
    if (v17)
    {
      CFDictionarySetValue(v3, @"CKSuccess", v17);
    }

    cloudKitErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitErrorDomain];
    v19 = cloudKitErrorDomain;
    if (cloudKitErrorDomain)
    {
      v20 = cloudKitErrorDomain;
    }

    else
    {
      v20 = &stru_1F1AC8480;
    }

    v21 = v20;

    CFDictionarySetValue(v3, @"CKErrorDomain", v21);
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric cloudKitErrorCode](self, "cloudKitErrorCode")}];
    if (v22)
    {
      CFDictionarySetValue(v3, @"CKErrorCode", v22);
    }

    cloudKitUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitUnderlyingErrorDomain];
    v24 = cloudKitUnderlyingErrorDomain;
    if (cloudKitUnderlyingErrorDomain)
    {
      v25 = cloudKitUnderlyingErrorDomain;
    }

    else
    {
      v25 = &stru_1F1AC8480;
    }

    v26 = v25;

    CFDictionarySetValue(v3, @"CKUnderlyingErrorDomain", v26);
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric cloudKitUnderlyingErrorCode](self, "cloudKitUnderlyingErrorCode")}];
    if (v27)
    {
      CFDictionarySetValue(v3, @"CKUnderlyingErrorCode", v27);
    }

    v28 = MEMORY[0x1E696AD98];
    [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self cloudKitOperationTimeInterval];
    v30 = [v28 numberWithInt:v29];
    if (v30)
    {
      CFDictionarySetValue(v3, @"CKTimeInterval", v30);
    }

    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric accountKeySuccess](self, "accountKeySuccess")}];
    if (v31)
    {
      CFDictionarySetValue(v3, @"AKSuccess", v31);
    }

    accountKeyErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyErrorDomain];
    v33 = accountKeyErrorDomain;
    if (accountKeyErrorDomain)
    {
      v34 = accountKeyErrorDomain;
    }

    else
    {
      v34 = &stru_1F1AC8480;
    }

    v35 = v34;

    CFDictionarySetValue(v3, @"AKErrorDomain", v35);
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric accountKeyErrorCode](self, "accountKeyErrorCode")}];
    if (v36)
    {
      CFDictionarySetValue(v3, @"AKErrorCode", v36);
    }

    accountKeyUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyUnderlyingErrorDomain];
    v38 = accountKeyUnderlyingErrorDomain;
    if (accountKeyUnderlyingErrorDomain)
    {
      v39 = accountKeyUnderlyingErrorDomain;
    }

    else
    {
      v39 = &stru_1F1AC8480;
    }

    v40 = v39;

    CFDictionarySetValue(v3, @"AKUnderlyingErrorDomain", v40);
    v41 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceEnrollmentMetric accountKeyUnderlyingErrorCode](self, "accountKeyUnderlyingErrorCode")}];
    if (v41)
    {
      CFDictionarySetValue(v3, @"AKUnderlyingErrorCode", v41);
    }

    v42 = MEMORY[0x1E696AD98];
    [(IDSKeyTransparencyTrustedDeviceEnrollmentMetric *)self accountKeyOperationTimeInterval];
    v15 = [v42 numberWithInt:v43];
    if (v15)
    {
      v16 = @"AKTimeInterval";
      goto LABEL_44;
    }
  }

  return v3;
}

@end