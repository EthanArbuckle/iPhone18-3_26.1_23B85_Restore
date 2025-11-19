@interface IDSKeyTransparencyTrustedDeviceVerificationMetric
- (IDSKeyTransparencyTrustedDeviceVerificationMetric)initWithKeyTransparencyVersion:(unint64_t)a3 cloudKitSuccess:(BOOL)a4 cloudKitErrorDomain:(id)a5 cloudKitErrorCode:(int64_t)a6 cloudKitUnderlyingErrorDomain:(id)a7 cloudKitUnderlyingErrorCode:(int64_t)a8 cloudKitOperationTimeInterval:(double)a9 accountKeySuccess:(BOOL)a10 accountKeyErrorDomain:(id)a11 accountKeyErrorCode:(int64_t)a12 accountKeyUnderlyingErrorDomain:(id)a13 accountKeyUnderlyingErrorCode:(int64_t)a14 accountKeyOperationTimeInterval:(double)a15 numberOfTotalDevices:(unint64_t)a16 numberOfCandidateDevices:(unint64_t)a17 numberOfMatchesFromCloudKit:(unint64_t)a18 numberOfMatchesFromAccountKey:(unint64_t)a19;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSKeyTransparencyTrustedDeviceVerificationMetric

- (IDSKeyTransparencyTrustedDeviceVerificationMetric)initWithKeyTransparencyVersion:(unint64_t)a3 cloudKitSuccess:(BOOL)a4 cloudKitErrorDomain:(id)a5 cloudKitErrorCode:(int64_t)a6 cloudKitUnderlyingErrorDomain:(id)a7 cloudKitUnderlyingErrorCode:(int64_t)a8 cloudKitOperationTimeInterval:(double)a9 accountKeySuccess:(BOOL)a10 accountKeyErrorDomain:(id)a11 accountKeyErrorCode:(int64_t)a12 accountKeyUnderlyingErrorDomain:(id)a13 accountKeyUnderlyingErrorCode:(int64_t)a14 accountKeyOperationTimeInterval:(double)a15 numberOfTotalDevices:(unint64_t)a16 numberOfCandidateDevices:(unint64_t)a17 numberOfMatchesFromCloudKit:(unint64_t)a18 numberOfMatchesFromAccountKey:(unint64_t)a19
{
  v27 = a5;
  v28 = a7;
  v29 = a11;
  v30 = a13;
  v42.receiver = self;
  v42.super_class = IDSKeyTransparencyTrustedDeviceVerificationMetric;
  v31 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)&v42 init];
  v32 = v31;
  if (v31)
  {
    v31->_keyTransparencyVersion = a3;
    v31->_cloudKitSuccess = a4;
    v33 = [v27 copy];
    cloudKitErrorDomain = v32->_cloudKitErrorDomain;
    v32->_cloudKitErrorDomain = v33;

    v32->_cloudKitErrorCode = a6;
    v35 = [v28 copy];
    cloudKitUnderlyingErrorDomain = v32->_cloudKitUnderlyingErrorDomain;
    v32->_cloudKitUnderlyingErrorDomain = v35;

    v32->_cloudKitUnderlyingErrorCode = a8;
    v32->_cloudKitOperationTimeInterval = ceil(a9);
    v32->_accountKeySuccess = a10;
    v37 = [v29 copy];
    accountKeyErrorDomain = v32->_accountKeyErrorDomain;
    v32->_accountKeyErrorDomain = v37;

    v32->_accountKeyErrorCode = a12;
    v39 = [v30 copy];
    accountKeyUnderlyingErrorDomain = v32->_accountKeyUnderlyingErrorDomain;
    v32->_accountKeyUnderlyingErrorDomain = v39;

    v32->_accountKeyUnderlyingErrorCode = a14;
    v32->_accountKeyOperationTimeInterval = ceil(a15);
    v32->_numberOfTotalDevices = a16;
    v32->_numberOfCandidateDevices = a17;
    v32->_numberOfMatchesFromCloudKit = a18;
    v32->_numberOfMatchesFromAccountKey = a19;
  }

  return v32;
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AEC0];
  v19 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self name];
  v18 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self keyTransparencyVersion];
  v17 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitSuccess];
  v16 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitErrorDomain];
  v15 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitErrorCode];
  v14 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitUnderlyingErrorDomain];
  v13 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitUnderlyingErrorCode];
  [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitOperationTimeInterval];
  v12 = v3;
  v4 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeySuccess];
  v5 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyErrorDomain];
  v6 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyErrorCode];
  v7 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyUnderlyingErrorDomain];
  v8 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyUnderlyingErrorCode];
  [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyOperationTimeInterval];
  v10 = [v20 stringWithFormat:@"%@: <vers: %ld, ck-success: %ld, ck-error-d: %@, ck-error-c: %ld, ck-uerror-d: %@, ck-uerror-c: %ld, ck-time: %d, ak-success: %ld, ak-error-d: %@, ak-error-c: %ld, ak-uerror-d: %@, ak-uerror-c: %ld, ak-time: %d, devices: %ld, candidates: %ld, ck-matches: %ld, ak-matches: %ld>", v19, v18, v17, v16, v15, v14, v13, v12, v4, v5, v6, v7, v8, v9, -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfTotalDevices](self, "numberOfTotalDevices"), -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfCandidateDevices](self, "numberOfCandidateDevices"), -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfMatchesFromCloudKit](self, "numberOfMatchesFromCloudKit"), -[IDSKeyTransparencyTrustedDeviceVerificationMetric numberOfMatchesFromAccountKey](self, "numberOfMatchesFromAccountKey")];

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

  v6 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitErrorDomain];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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

  v11 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self cloudKitUnderlyingErrorDomain];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
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

  v20 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyErrorDomain];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
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

  v25 = [(IDSKeyTransparencyTrustedDeviceVerificationMetric *)self accountKeyUnderlyingErrorDomain];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
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