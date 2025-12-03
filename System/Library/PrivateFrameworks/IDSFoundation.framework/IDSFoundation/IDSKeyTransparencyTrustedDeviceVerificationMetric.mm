@interface IDSKeyTransparencyTrustedDeviceVerificationMetric
- (IDSKeyTransparencyTrustedDeviceVerificationMetric)initWithKeyTransparencyVersion:(unint64_t)version cloudKitSuccess:(BOOL)success cloudKitErrorDomain:(id)domain cloudKitErrorCode:(int64_t)code cloudKitUnderlyingErrorDomain:(id)errorDomain cloudKitUnderlyingErrorCode:(int64_t)errorCode cloudKitOperationTimeInterval:(double)interval accountKeySuccess:(BOOL)self0 accountKeyErrorDomain:(id)self1 accountKeyErrorCode:(int64_t)self2 accountKeyUnderlyingErrorDomain:(id)self3 accountKeyUnderlyingErrorCode:(int64_t)self4 accountKeyOperationTimeInterval:(double)self5 numberOfTotalDevices:(unint64_t)self6 numberOfCandidateDevices:(unint64_t)self7 numberOfMatchesFromCloudKit:(unint64_t)self8 numberOfMatchesFromAccountKey:(unint64_t)self9;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSKeyTransparencyTrustedDeviceVerificationMetric

- (IDSKeyTransparencyTrustedDeviceVerificationMetric)initWithKeyTransparencyVersion:(unint64_t)version cloudKitSuccess:(BOOL)success cloudKitErrorDomain:(id)domain cloudKitErrorCode:(int64_t)code cloudKitUnderlyingErrorDomain:(id)errorDomain cloudKitUnderlyingErrorCode:(int64_t)errorCode cloudKitOperationTimeInterval:(double)interval accountKeySuccess:(BOOL)self0 accountKeyErrorDomain:(id)self1 accountKeyErrorCode:(int64_t)self2 accountKeyUnderlyingErrorDomain:(id)self3 accountKeyUnderlyingErrorCode:(int64_t)self4 accountKeyOperationTimeInterval:(double)self5 numberOfTotalDevices:(unint64_t)self6 numberOfCandidateDevices:(unint64_t)self7 numberOfMatchesFromCloudKit:(unint64_t)self8 numberOfMatchesFromAccountKey:(unint64_t)self9
{
  domainCopy = domain;
  errorDomainCopy = errorDomain;
  keyErrorDomainCopy = keyErrorDomain;
  underlyingErrorDomainCopy = underlyingErrorDomain;
  v42.receiver = self;
  v42.super_class = IDSKeyTransparencyTrustedDeviceVerificationMetric;
  v31 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)&v42 init];
  v32 = v31;
  if (v31)
  {
    v31->_keyTransparencyVersion = version;
    v31->_cloudKitSuccess = success;
    v33 = [domainCopy copy];
    cloudKitErrorDomain = v32->_cloudKitErrorDomain;
    v32->_cloudKitErrorDomain = v33;

    v32->_cloudKitErrorCode = code;
    v35 = [errorDomainCopy copy];
    cloudKitUnderlyingErrorDomain = v32->_cloudKitUnderlyingErrorDomain;
    v32->_cloudKitUnderlyingErrorDomain = v35;

    v32->_cloudKitUnderlyingErrorCode = errorCode;
    v32->_cloudKitOperationTimeInterval = ceil(interval);
    v32->_accountKeySuccess = keySuccess;
    v37 = [keyErrorDomainCopy copy];
    accountKeyErrorDomain = v32->_accountKeyErrorDomain;
    v32->_accountKeyErrorDomain = v37;

    v32->_accountKeyErrorCode = keyErrorCode;
    v39 = [underlyingErrorDomainCopy copy];
    accountKeyUnderlyingErrorDomain = v32->_accountKeyUnderlyingErrorDomain;
    v32->_accountKeyUnderlyingErrorDomain = v39;

    v32->_accountKeyUnderlyingErrorCode = underlyingErrorCode;
    v32->_accountKeyOperationTimeInterval = ceil(timeInterval);
    v32->_numberOfTotalDevices = devices;
    v32->_numberOfCandidateDevices = candidateDevices;
    v32->_numberOfMatchesFromCloudKit = kit;
    v32->_numberOfMatchesFromAccountKey = key;
  }

  return v32;
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AEC0];
  name = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self name];
  keyTransparencyVersion = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self keyTransparencyVersion];
  cloudKitSuccess = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitSuccess];
  cloudKitErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitErrorDomain];
  cloudKitErrorCode = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitErrorCode];
  cloudKitUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitUnderlyingErrorDomain];
  cloudKitUnderlyingErrorCode = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitUnderlyingErrorCode];
  [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitOperationTimeInterval];
  v12 = v3;
  accountKeySuccess = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeySuccess];
  accountKeyErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyErrorDomain];
  accountKeyErrorCode = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyErrorCode];
  accountKeyUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyUnderlyingErrorDomain];
  accountKeyUnderlyingErrorCode = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyUnderlyingErrorCode];
  [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyOperationTimeInterval];
  v10 = [v20 stringWithFormat:@"%@: <vers: %ld, ck-success: %ld, ck-error-d: %@, ck-error-c: %ld, ck-uerror-d: %@, ck-uerror-c: %ld, ck-time: %d, ak-success: %ld, ak-error-d: %@, ak-error-c: %ld, ak-uerror-d: %@, ak-uerror-c: %ld, ak-time: %d, devices: %ld, candidates: %ld, ck-matches: %ld, ak-matches: %ld>", name, keyTransparencyVersion, cloudKitSuccess, cloudKitErrorDomain, cloudKitErrorCode, cloudKitUnderlyingErrorDomain, cloudKitUnderlyingErrorCode, v12, accountKeySuccess, accountKeyErrorDomain, accountKeyErrorCode, accountKeyUnderlyingErrorDomain, accountKeyUnderlyingErrorCode, v9, -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfTotalDevices](self, "numberOfTotalDevices"), -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfCandidateDevices](self, "numberOfCandidateDevices"), -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfMatchesFromCloudKit](self, "numberOfMatchesFromCloudKit"), -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfMatchesFromAccountKey](self, "numberOfMatchesFromAccountKey")];

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric keyTransparencyVersion](self, "keyTransparencyVersion")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"KTVersion", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric cloudKitSuccess](self, "cloudKitSuccess")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"CKSuccess", v5);
  }

  cloudKitErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitErrorDomain];
  v7 = cloudKitErrorDomain;
  if (cloudKitErrorDomain)
  {
    v8 = cloudKitErrorDomain;
  }

  else
  {
    v8 = &stru_1F1AC8480;
  }

  v9 = v8;

  CFDictionarySetValue(v3, @"CKErrorDomain", v9);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric cloudKitErrorCode](self, "cloudKitErrorCode")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"CKErrorCode", v10);
  }

  cloudKitUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitUnderlyingErrorDomain];
  v12 = cloudKitUnderlyingErrorDomain;
  if (cloudKitUnderlyingErrorDomain)
  {
    v13 = cloudKitUnderlyingErrorDomain;
  }

  else
  {
    v13 = &stru_1F1AC8480;
  }

  v14 = v13;

  CFDictionarySetValue(v3, @"CKUnderlyingErrorDomain", v14);
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric cloudKitUnderlyingErrorCode](self, "cloudKitUnderlyingErrorCode")}];
  if (v15)
  {
    CFDictionarySetValue(v3, @"CKUnderlyingErrorCode", v15);
  }

  v16 = MEMORY[0x1E696AD98];
  [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitOperationTimeInterval];
  v18 = [v16 numberWithInt:v17];
  if (v18)
  {
    CFDictionarySetValue(v3, @"CKTimeInterval", v18);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric accountKeySuccess](self, "accountKeySuccess")}];
  if (v19)
  {
    CFDictionarySetValue(v3, @"AKSuccess", v19);
  }

  accountKeyErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyErrorDomain];
  v21 = accountKeyErrorDomain;
  if (accountKeyErrorDomain)
  {
    v22 = accountKeyErrorDomain;
  }

  else
  {
    v22 = &stru_1F1AC8480;
  }

  v23 = v22;

  CFDictionarySetValue(v3, @"AKErrorDomain", v23);
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric accountKeyErrorCode](self, "accountKeyErrorCode")}];
  if (v24)
  {
    CFDictionarySetValue(v3, @"AKErrorCode", v24);
  }

  accountKeyUnderlyingErrorDomain = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyUnderlyingErrorDomain];
  v26 = accountKeyUnderlyingErrorDomain;
  if (accountKeyUnderlyingErrorDomain)
  {
    v27 = accountKeyUnderlyingErrorDomain;
  }

  else
  {
    v27 = &stru_1F1AC8480;
  }

  v28 = v27;

  CFDictionarySetValue(v3, @"AKUnderlyingErrorDomain", v28);
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric accountKeyUnderlyingErrorCode](self, "accountKeyUnderlyingErrorCode")}];
  if (v29)
  {
    CFDictionarySetValue(v3, @"AKUnderlyingErrorCode", v29);
  }

  v30 = MEMORY[0x1E696AD98];
  [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyOperationTimeInterval];
  v32 = [v30 numberWithInt:v31];
  if (v32)
  {
    CFDictionarySetValue(v3, @"AKTimeInterval", v32);
  }

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfTotalDevices](self, "numberOfTotalDevices")}];
  if (v33)
  {
    CFDictionarySetValue(v3, @"Devices", v33);
  }

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfCandidateDevices](self, "numberOfCandidateDevices")}];
  if (v34)
  {
    CFDictionarySetValue(v3, @"Candidates", v34);
  }

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfMatchesFromCloudKit](self, "numberOfMatchesFromCloudKit")}];
  if (v35)
  {
    CFDictionarySetValue(v3, @"CKMatches", v35);
  }

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfMatchesFromAccountKey](self, "numberOfMatchesFromAccountKey")}];
  if (v36)
  {
    CFDictionarySetValue(v3, @"AKMatches", v36);
  }

  return v3;
}

@end