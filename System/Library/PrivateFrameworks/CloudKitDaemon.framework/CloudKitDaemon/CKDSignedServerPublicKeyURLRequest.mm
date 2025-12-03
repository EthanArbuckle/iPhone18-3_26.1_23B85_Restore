@interface CKDSignedServerPublicKeyURLRequest
+ (BOOL)serverResponseIsComplete:(id)complete requireProtectionSource:(BOOL)source;
+ (BOOL)verifyInteger:(int64_t)integer withSignature:(id)signature usingKey:(__SecKey *)key verifyFullInteger:(BOOL)fullInteger;
+ (__SecTrust)createTrustEvalFromCertificateList:(id)list verifiedWithPolicy:(__SecPolicy *)policy;
+ (id)certificateListServerPlist:(id)plist;
+ (id)nearestExpirationInCertificateList:(id)list;
- (BOOL)canVerifySignedPlistValues:(id)values withKey:(__SecKey *)key;
- (CKDSignedServerPublicKeyURLRequest)initWithOperation:(id)operation plistURL:(id)l verifyWithPolicy:(__SecPolicy *)policy;
- (void)dealloc;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParsePlistObject:(id)object;
@end

@implementation CKDSignedServerPublicKeyURLRequest

- (CKDSignedServerPublicKeyURLRequest)initWithOperation:(id)operation plistURL:(id)l verifyWithPolicy:(__SecPolicy *)policy
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = CKDSignedServerPublicKeyURLRequest;
  v10 = [(CKDURLRequest *)&v13 initWithOperation:operation];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_plistURL, l);
    v11->_certificateTrustPolicy = policy;
    if (policy)
    {
      CFRetain(policy);
    }
  }

  return v11;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v9.receiver = self;
  v9.super_class = CKDSignedServerPublicKeyURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v9 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_plistURL(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"plistURL");
}

- (void)dealloc
{
  certificateTrustPolicy = self->_certificateTrustPolicy;
  if (certificateTrustPolicy)
  {
    CFRelease(certificateTrustPolicy);
    self->_certificateTrustPolicy = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDSignedServerPublicKeyURLRequest;
  [(CKDURLRequest *)&v4 dealloc];
}

- (void)requestDidParsePlistObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_class();
  v7 = objc_msgSend_requiresProtectionSource(self, v5, v6);
  if ((objc_msgSend_serverResponseIsComplete_requireProtectionSource_(v4, v8, objectCopy, v7) & 1) == 0)
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1005, @"Invalid server public key payload");
    objc_msgSend_finishWithError_(self, v49, v12);
    goto LABEL_25;
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend_certificateListServerPlist_(v10, v11, objectCopy);
  v13 = objc_opt_class();
  v16 = objc_msgSend_certificateTrustPolicy(self, v14, v15);
  TrustEvalFromCertificateList_verifiedWithPolicy = objc_msgSend_createTrustEvalFromCertificateList_verifiedWithPolicy_(v13, v17, v12, v16);
  v20 = TrustEvalFromCertificateList_verifiedWithPolicy;
  if (TrustEvalFromCertificateList_verifiedWithPolicy)
  {
    v21 = SecTrustCopyKey(TrustEvalFromCertificateList_verifiedWithPolicy);
    if (objc_msgSend_canVerifySignedPlistValues_withKey_(self, v22, objectCopy, v21))
    {
      v24 = MEMORY[0x277CBEAA8];
      v25 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v23, @"expiration");
      objc_msgSend_doubleValue(v25, v26, v27);
      v30 = objc_msgSend_dateWithTimeIntervalSince1970_(v24, v28, v29);

      v31 = objc_opt_class();
      v33 = objc_msgSend_nearestExpirationInCertificateList_(v31, v32, v12);
      v66 = v30;
      v35 = objc_msgSend_earlierDate_(v30, v34, v33);
      v38 = objc_msgSend_expirationDateOverride(self, v36, v37);

      if (v38)
      {
        v41 = objc_msgSend_expirationDateOverride(self, v39, v40);
        v43 = objc_msgSend_earlierDate_(v35, v42, v41);

        v35 = v43;
      }

      v44 = SecTrustCopyCertificateChain(v20);
      if (v44)
      {
        v46 = v44;
        if (CFArrayGetCount(v44) < 1)
        {
          v48 = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v46, 0);
          v48 = SecCertificateCopyData(ValueAtIndex);
        }

        CFRelease(v46);
      }

      else
      {
        v48 = 0;
      }

      v51 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v45, @"public key");
      v53 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v52, @"version");
      v56 = objc_msgSend_integerValue(v53, v54, v55);

      if (objc_msgSend_requiresProtectionSource(self, v57, v58))
      {
        v60 = objc_msgSend_objectForKeyedSubscript_(objectCopy, v59, @"protection source");
      }

      else
      {
        v60 = 0;
      }

      v61 = objc_alloc(MEMORY[0x277CBC568]);
      v50 = objc_msgSend_initWithPublicKey_version_expiration_certificateData_protectionSource_(v61, v62, v51, v56, v35, v48, v60);

      if (v50 && (objc_msgSend_hasExpired(v50, v23, v63) & 1) == 0)
      {
        objc_msgSend_setVerifiedPublicKey_(self, v23, v50);
        goto LABEL_21;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    objc_msgSend_canVerifySignedPlistValues_withKey_(self, v19, objectCopy, 0);
    v50 = 0;
    v21 = 0;
  }

  v64 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 4001, @"Failed to verify public key data.");
  objc_msgSend_finishWithError_(self, v65, v64);

  if (v20)
  {
LABEL_21:
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_25:
}

+ (BOOL)serverResponseIsComplete:(id)complete requireProtectionSource:(BOOL)source
{
  sourceCopy = source;
  v46 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v6 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v5, @"public key");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v8, @"public key signature");
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v12 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v11, @"version");
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  v15 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v14, @"version signature");
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  v18 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v17, @"expiration");
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  v21 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v20, @"expiration signature");
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  v28 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v23, @"certs");
  objc_opt_class();
  v24 = v28;
  v25 = objc_opt_isKindOfClass();
  LOBYTE(v28) = 0;
  if ((isKindOfClass & 1) == 0 || (v10 & 1) == 0 || (v13 & 1) == 0 || (v16 & 1) == 0 || (v19 & 1) == 0 || (v22 & 1) == 0)
  {
    if (!sourceCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v25)
  {
    v41 = 0u;
    v42 = 0u;
    LODWORD(v28) = objc_msgSend_count(v24, v26, v27) != 0;
    v43 = 0u;
    v44 = 0u;
    v29 = v24;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v41, v45, 16);
    if (v31)
    {
      v32 = v31;
      v33 = *v42;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          LODWORD(v28) = v28 & objc_opt_isKindOfClass();
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v36, &v41, v45, 16);
      }

      while (v32);
    }
  }

  if (sourceCopy)
  {
LABEL_17:
    v37 = objc_msgSend_objectForKeyedSubscript_(completeCopy, v26, @"protection source");
    objc_opt_class();
    LOBYTE(v28) = v28 & objc_opt_isKindOfClass();
  }

LABEL_18:

  v38 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

+ (id)certificateListServerPlist:(id)plist
{
  v3 = objc_msgSend_objectForKeyedSubscript_(plist, a2, @"certs");
  v5 = objc_msgSend_CKCompactMap_(v3, v4, &unk_28385E400);

  return v5;
}

+ (id)nearestExpirationInCertificateList:(id)list
{
  v27 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v6 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v4, v5);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = listCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * v12);
        SecCertificateNotValidAfter();
        v17 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v15, v16, v22);
        v6 = objc_msgSend_earlierDate_(v13, v18, v17);

        ++v12;
        v13 = v6;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v19, &v22, v26, 16);
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (__SecTrust)createTrustEvalFromCertificateList:(id)list verifiedWithPolicy:(__SecPolicy *)policy
{
  v19 = *MEMORY[0x277D85DE8];
  trust = 0;
  v4 = SecTrustCreateWithCertificates(list, policy, &trust);
  if (trust)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v18) = v4;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to create trust from certificates with status code: %i", buf, 8u);
    }

    result = trust;
    if (!trust)
    {
      goto LABEL_28;
    }

LABEL_22:
    CFRelease(result);
    result = 0;
    goto LABEL_28;
  }

  cf = 0;
  v8 = SecTrustEvaluateWithError(trust, &cf);
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v8 && cf == 0)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v18 = trust;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Successfully evaluated trust policy %{public}@", buf, 0xCu);
    }

    result = trust;
  }

  else
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = cf;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Failed to evaluate trust policy with error: %@", buf, 0xCu);
    }

    if (trust)
    {
      CFRelease(trust);
      trust = 0;
    }

    result = cf;
    if (cf)
    {
      goto LABEL_22;
    }
  }

LABEL_28:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)canVerifySignedPlistValues:(id)values withKey:(__SecKey *)key
{
  LOBYTE(v4) = 0;
  if (values && key)
  {
    valuesCopy = values;
    v9 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v8, @"public key");
    v11 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v10, @"version");
    v14 = objc_msgSend_longLongValue(v11, v12, v13);

    v16 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v15, @"expiration");
    v19 = objc_msgSend_longLongValue(v16, v17, v18);

    v21 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v20, @"public key signature");
    v23 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v22, @"version signature");
    v25 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v24, @"expiration signature");

    v26 = objc_opt_class();
    LODWORD(valuesCopy) = objc_msgSend_verifyData_withSignature_usingKey_(v26, v27, v9, v21, key);
    v28 = objc_opt_class();
    v31 = objc_msgSend_verifyFullIntegers(self, v29, v30);
    LODWORD(valuesCopy) = valuesCopy & objc_msgSend_verifyInteger_withSignature_usingKey_verifyFullInteger_(v28, v32, v14, v23, key, v31 ^ 1u);
    v33 = objc_opt_class();
    v36 = objc_msgSend_verifyFullIntegers(self, v34, v35);
    v4 = valuesCopy & objc_msgSend_verifyInteger_withSignature_usingKey_verifyFullInteger_(v33, v37, v19, v25, key, v36 ^ 1u);
  }

  return v4;
}

+ (BOOL)verifyInteger:(int64_t)integer withSignature:(id)signature usingKey:(__SecKey *)key verifyFullInteger:(BOOL)fullInteger
{
  fullIntegerCopy = fullInteger;
  signatureCopy = signature;
  if (integer == integer || fullIntegerCopy)
  {
    if (fullIntegerCopy)
    {
      v21 = bswap32(integer);
      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v14 = objc_msgSend_initWithBytes_length_(v12, v13, &v21, 4, v20);
    }

    else
    {
      v20 = bswap64(integer);
      v16 = objc_alloc(MEMORY[0x277CBEA90]);
      v14 = objc_msgSend_initWithBytes_length_(v16, v17, &v20, 8, v20);
    }

    v18 = v14;
    v11 = objc_msgSend_verifyData_withSignature_usingKey_(self, v15, v14, signatureCopy, key);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end