@interface CKDFetchServerCertificatesURLRequest
+ (BOOL)serverResponseIsComplete:(id)a3;
+ (__SecTrust)createTrustEvalFromCertificateList:(id)a3 verifiedWithPolicy:(__SecPolicy *)a4;
+ (id)certificateListServerPlist:(id)a3;
+ (id)nearestExpirationInCertificateList:(id)a3;
- (CKDFetchServerCertificatesURLRequest)initWithOperation:(id)a3 verifyWithPolicy:(__SecPolicy *)a4;
- (void)dealloc;
- (void)requestDidParsePlistObject:(id)a3;
@end

@implementation CKDFetchServerCertificatesURLRequest

- (CKDFetchServerCertificatesURLRequest)initWithOperation:(id)a3 verifyWithPolicy:(__SecPolicy *)a4
{
  v8.receiver = self;
  v8.super_class = CKDFetchServerCertificatesURLRequest;
  v5 = [(CKDURLRequest *)&v8 initWithOperation:a3];
  v6 = v5;
  if (v5)
  {
    v5->_certificateTrustPolicy = a4;
    if (a4)
    {
      CFRetain(a4);
    }
  }

  return v6;
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
  v4.super_class = CKDFetchServerCertificatesURLRequest;
  [(CKDURLRequest *)&v4 dealloc];
}

- (void)requestDidParsePlistObject:(id)a3
{
  v67[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_serverResponseIsComplete_(v5, v6, v4))
  {
    v8 = objc_opt_class();
    v10 = objc_msgSend_certificateListServerPlist_(v8, v9, v4);
    v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (objc_msgSend_count(v10, v11, v12))
    {
      v16 = 1;
      *&v15 = 138412546;
      v59 = v15;
      v61 = v4;
      do
      {
        v17 = objc_msgSend_count(v10, v13, v14, v59) - 1;
        v19 = objc_msgSend_objectAtIndexedSubscript_(v10, v18, v16 - 1);
        v21 = v19;
        if (v16 - 1 >= v17)
        {
          v66 = v19;
          v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, &v66, 1);
        }

        else
        {
          v67[0] = v19;
          v22 = objc_msgSend_objectAtIndexedSubscript_(v10, v20, v16);
          v67[1] = v22;
          v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v67, 2);
        }

        v25 = objc_opt_class();
        v28 = objc_msgSend_certificateTrustPolicy(self, v26, v27);
        TrustEvalFromCertificateList_verifiedWithPolicy = objc_msgSend_createTrustEvalFromCertificateList_verifiedWithPolicy_(v25, v29, v24, v28);
        if (TrustEvalFromCertificateList_verifiedWithPolicy)
        {
          v32 = TrustEvalFromCertificateList_verifiedWithPolicy;
          v33 = MEMORY[0x277CBEAA8];
          v34 = objc_msgSend_objectForKeyedSubscript_(v4, v31, @"expiration");
          v37 = objc_msgSend_integerValue(v34, v35, v36);
          v40 = objc_msgSend_dateWithTimeIntervalSince1970_(v33, v38, v39, v37);

          v41 = objc_opt_class();
          v43 = objc_msgSend_nearestExpirationInCertificateList_(v41, v42, v24);
          v45 = objc_msgSend_earlierDate_(v40, v44, v43);
          v48 = objc_msgSend_date(MEMORY[0x277CBEAA8], v46, v47);
          v50 = objc_msgSend_compare_(v45, v49, v48);

          if (v50 == -1)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v52 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = v59;
              v63 = v40;
              v64 = 2112;
              v65 = v43;
              _os_log_error_impl(&dword_22506F000, v52, OS_LOG_TYPE_ERROR, "Server signing certificate has expired. Plist cert expiration: %@ Certificate expiration: %@", buf, 0x16u);
            }
          }

          else
          {
            objc_msgSend_addObject_(v60, v51, v32);
          }

          CFRelease(v32);

          v4 = v61;
        }

        v55 = objc_msgSend_count(v10, v53, v54);
        v56 = v16 + 1;
        v16 += 2;
      }

      while (v56 < v55);
    }

    objc_msgSend_setValidatedTrusts_(self, v13, v60);
  }

  else
  {
    v10 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 1005, @"Invalid server certificates payload");
    objc_msgSend_finishWithError_(self, v57, v10);
  }

  v58 = *MEMORY[0x277D85DE8];
}

+ (BOOL)serverResponseIsComplete:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"certs");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v6 = objc_msgSend_count(v3, v4, v5) != 0;
    v19 = 0u;
    v20 = 0u;
    v7 = v3;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          v6 &= objc_opt_isKindOfClass();
          ++v12;
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v17, v21, 16);
      }

      while (v10);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

+ (id)certificateListServerPlist:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"certs");
  v5 = objc_msgSend_CKCompactMap_(v3, v4, &unk_28385E3E0);

  return v5;
}

+ (id)nearestExpirationInCertificateList:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v4, v5);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
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

+ (__SecTrust)createTrustEvalFromCertificateList:(id)a3 verifiedWithPolicy:(__SecPolicy *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  trust = 0;
  v4 = SecTrustCreateWithCertificates(a3, a4, &trust);
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
      goto LABEL_30;
    }

LABEL_22:
    CFRelease(result);
    result = 0;
    goto LABEL_30;
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

    if (cf)
    {
      CFRelease(cf);
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

LABEL_30:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

@end