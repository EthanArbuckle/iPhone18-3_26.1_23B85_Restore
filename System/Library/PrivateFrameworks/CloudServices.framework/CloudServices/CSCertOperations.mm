@interface CSCertOperations
+ (BOOL)verifyCertData:(id)data withCert:(__SecCertificate *)cert withPubKey:(__SecKey *)key stingray:(BOOL)stingray enroll:(BOOL)enroll altDSID:(id)d env:(id)env duplicate:(BOOL)self0 sigVerification:(BOOL)self1 error:(id *)self2;
+ (id)certVersion:(__SecCertificate *)version;
+ (id)knownICDPFederations;
+ (id)moveToFederationAllowed:(id)allowed altDSID:(id)d;
+ (id)rootBaseVersionsForRootType:(unsigned int)type altDSID:(id)d inEnvironment:(id)environment duplicate:(BOOL)duplicate;
+ (id)rootTrustedVersionsForRootType:(unsigned int)type altDSID:(id)d inEnvironment:(id)environment duplicate:(BOOL)duplicate;
+ (void)fetchTermsWithAltDSID:(id)d reply:(id)reply;
+ (void)storeTerms:(id)terms withAltDSID:(id)d reply:(id)reply;
@end

@implementation CSCertOperations

+ (id)certVersion:(__SecCertificate *)version
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = SecCertificateCopyProperties();
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v42, v47, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v43;
    v9 = &unk_284357248;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v43 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      v12 = objc_msgSend_objectForKeyedSubscript_(v11, v6, @"label");
      isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"Issuer Name");

      if (isEqualToString)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v42, v47, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    v15 = v11;

    if (!v15)
    {
      v9 = &unk_284357248;
      goto LABEL_27;
    }

    objc_msgSend_objectForKeyedSubscript_(v15, v16, @"value");
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = v41 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v38, v46, 16);
    if (v19)
    {
      v21 = v19;
      v36 = v15;
      v22 = *v39;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = objc_msgSend_objectForKeyedSubscript_(v24, v20, @"label", v36);
          v27 = objc_msgSend_isEqualToString_(v25, v26, @"2.5.4.5");

          if (v27)
          {
            v28 = objc_msgSend_objectForKeyedSubscript_(v24, v20, @"value");
            v29 = objc_alloc(MEMORY[0x277CCAC80]);
            v31 = objc_msgSend_initWithString_(v29, v30, v28);
            v37 = 0;
            objc_msgSend_scanUnsignedLongLong_(v31, v32, &v37);
            v9 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v33, v37);

            v15 = v36;
            goto LABEL_24;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v38, v46, 16);
        if (v21)
        {
          continue;
        }

        break;
      }

      v15 = v36;
    }

    v9 = &unk_284357248;
LABEL_24:
  }

  else
  {
    v9 = &unk_284357248;
LABEL_22:
    v15 = v3;
  }

LABEL_27:
  v34 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)rootBaseVersionsForRootType:(unsigned int)type altDSID:(id)d inEnvironment:(id)environment duplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  environmentCopy = environment;
  v14 = objc_msgSend_set(MEMORY[0x277CBEB58], v12, v13);
  v15 = sub_22E9ED680(type, dCopy, environmentCopy, duplicateCopy);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = objc_msgSend_certVersion_(self, v18, *(*(&v28 + 1) + 8 * i));
        objc_msgSend_addObject_(v14, v24, v23);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v28, v32, 16);
    }

    while (v20);
  }

  v25 = objc_msgSend_allObjects(v14, v18, v19);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)rootTrustedVersionsForRootType:(unsigned int)type altDSID:(id)d inEnvironment:(id)environment duplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  environmentCopy = environment;
  v14 = objc_msgSend_set(MEMORY[0x277CBEB58], v12, v13);
  v15 = sub_22E9ED680(type, dCopy, environmentCopy, duplicateCopy);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = objc_msgSend_certVersion_(self, v18, *(*(&v28 + 1) + 8 * i));
        objc_msgSend_addObject_(v14, v24, v23);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v28, v32, 16);
    }

    while (v20);
  }

  v25 = objc_msgSend_allObjects(v14, v18, v19);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (BOOL)verifyCertData:(id)data withCert:(__SecCertificate *)cert withPubKey:(__SecKey *)key stingray:(BOOL)stingray enroll:(BOOL)enroll altDSID:(id)d env:(id)env duplicate:(BOOL)self0 sigVerification:(BOOL)self1 error:(id *)self2
{
  enrollCopy = enroll;
  stingrayCopy = stingray;
  v65 = *MEMORY[0x277D85DE8];
  dCopy = d;
  envCopy = env;
  error = 0;
  trust = 0;
  if (enrollCopy)
  {
    v19 = 7;
  }

  else
  {
    v19 = 5;
  }

  if (verification)
  {
    v20 = 5;
  }

  else
  {
    v20 = v19;
  }

  if (stingrayCopy)
  {
    v21 = 3;
  }

  else
  {
    v21 = v20;
  }

  v22 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], data);
  v24 = v22;
  if (!v22)
  {
    errorCopy = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v23, @"EscrowServiceErrorDomain", 112, @"Error creating SecCertificateRef");
    v41 = CloudServicesLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      errorCopy2 = errorCopy;
      _os_log_impl(&dword_22E9CA000, v41, OS_LOG_TYPE_DEFAULT, "Unable to create SecCertificateRef from response data: %@", buf, 0xCu);
    }

    v40 = 0;
    v31 = 0;
    v42 = 0;
    v28 = 0;
    if (error)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v25 = *MEMORY[0x277CDC4B8];
  if (stingrayCopy)
  {
    v26 = *MEMORY[0x277CDC4B0];
  }

  else
  {
    v25 = *MEMORY[0x277CDC4A8];
    v26 = *MEMORY[0x277CDC4A0];
  }

  if (verification)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v62 = v22;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, &v62, 1);
  v29 = SecPolicyCreateWithProperties(v27, 0);
  if (v29)
  {
    v31 = v29;
    v32 = SecTrustCreateWithCertificates(v28, v29, &trust);
    if (v32)
    {
      v34 = v32;
      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v33, *MEMORY[0x277CCA590], v32, 0);
      v36 = CloudServicesLog();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        v40 = 0;
        goto LABEL_30;
      }

      *buf = 134217984;
      errorCopy2 = v34;
      v37 = "SecTrustCreateWithCertificates failed: %ld";
      v38 = v36;
      v39 = 12;
LABEL_21:
      _os_log_impl(&dword_22E9CA000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
      goto LABEL_22;
    }

    v47 = sub_22E9ED680(v21, dCopy, envCopy, duplicate);
    if (!v47)
    {
      errorCopy = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v48, @"EscrowServiceErrorDomain", 114, @"Error copying root cert array");
      v36 = CloudServicesLog();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v37 = "Error copying root cert array";
      v38 = v36;
      v39 = 2;
      goto LABEL_21;
    }

    v42 = v47;
    v49 = SecTrustSetAnchorCertificates(trust, v47);
    if (v49)
    {
      v58 = v49;
      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v50, *MEMORY[0x277CCA590]);
      v51 = CloudServicesLog();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      *buf = 134217984;
      errorCopy2 = v58;
      v52 = "SecTrustSetAnchorCertificates failed: %ld";
    }

    else
    {
      v59 = SecTrustEvaluateWithError(trust, &error);
      v53 = CloudServicesLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = "false";
        if (v59)
        {
          v54 = "true";
        }

        *buf = 136315138;
        errorCopy2 = v54;
        _os_log_impl(&dword_22E9CA000, v53, OS_LOG_TYPE_DEFAULT, "SecTrustEvaluateWithError() trust result = %s", buf, 0xCu);
      }

      if (v59)
      {
        if (key)
        {
          v55 = SecTrustCopyKey(trust);
          if (v55)
          {
            errorCopy = 0;
            *key = v55;
          }

          else
          {
            errorCopy = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v56, @"EscrowServiceErrorDomain", 115, @"Unable to extract public key");
            v57 = CloudServicesLog();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22E9CA000, v57, OS_LOG_TYPE_DEFAULT, "Error extracting public key from certificate", buf, 2u);
            }
          }
        }

        else
        {
          errorCopy = 0;
        }

        v40 = 1;
        if (error)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      errorCopy = error;
      v51 = CloudServicesLog();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
LABEL_59:

        v40 = 0;
        if (!error)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      *buf = 138412290;
      errorCopy2 = error;
      v52 = "SecTrustEvaluate failed: %@";
    }

    _os_log_impl(&dword_22E9CA000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
    goto LABEL_59;
  }

  errorCopy = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v30, @"EscrowServiceErrorDomain", 113, @"Error copying escrow trust policy");
  v43 = CloudServicesLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v43, OS_LOG_TYPE_DEFAULT, "Error copying escrow trust policy", buf, 2u);
  }

  v40 = 0;
  v31 = 0;
LABEL_30:
  v42 = 0;
  if (error)
  {
LABEL_31:
    v44 = errorCopy;
    *error = errorCopy;
  }

LABEL_32:
  if (cert && v24)
  {
    *cert = v24;
  }

  else if (v24)
  {
    CFRelease(v24);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (trust)
  {
    CFRelease(trust);
    trust = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v40;
}

+ (void)storeTerms:(id)terms withAltDSID:(id)d reply:(id)reply
{
  v49[6] = *MEMORY[0x277D85DE8];
  termsCopy = terms;
  dCopy = d;
  replyCopy = reply;
  v12 = objc_msgSend_altDSID(termsCopy, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v13, v12);

  if ((isEqualToString & 1) == 0)
  {
    sub_22E9F511C();
  }

  v15 = objc_alloc_init(StoredTermsInfo);
  objc_msgSend_setStorageVersion_(v15, v16, 1);
  objc_msgSend_setTermsInfo_(v15, v17, termsCopy);
  v18 = *MEMORY[0x277CDC238];
  v19 = *MEMORY[0x277CDC140];
  v48[0] = *MEMORY[0x277CDC228];
  v48[1] = v19;
  v20 = *MEMORY[0x277CBED28];
  v49[0] = v18;
  v49[1] = v20;
  v21 = *MEMORY[0x277CDBEE0];
  v22 = *MEMORY[0x277CDBEC8];
  v48[2] = *MEMORY[0x277CDBED8];
  v48[3] = v22;
  v49[2] = v21;
  v49[3] = @"com.apple.sbd";
  v23 = *MEMORY[0x277CDBF20];
  v48[4] = *MEMORY[0x277CDC120];
  v48[5] = v23;
  v49[4] = @"SecureBackupTerms";
  v49[5] = dCopy;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v49, v48, 6);
  v46 = *MEMORY[0x277CDC5E8];
  v28 = objc_msgSend_data(v15, v26, v27);
  v47 = v28;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, &v47, &v46, 1);

  v41 = 0;
  v31 = sub_22E9EC71C(v25, v30, &v41);
  v32 = v41;
  v33 = CloudServicesLog();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v31)
  {
    if (v34)
    {
      *buf = 0;
      _os_log_impl(&dword_22E9CA000, v33, OS_LOG_TYPE_DEFAULT, "Successfully stored terms", buf, 2u);
    }

    v35 = 0;
    goto LABEL_10;
  }

  if (v34)
  {
    *buf = 138412290;
    v45 = v32;
    _os_log_impl(&dword_22E9CA000, v33, OS_LOG_TYPE_DEFAULT, "Failed to store terms: %@", buf, 0xCu);
  }

  v37 = v32;
  if (!v32)
  {
    v38 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"unknown error";
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, &v43, &v42, 1);
    v35 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v39, @"EscrowServiceErrorDomain", 1, v33);
    v32 = v35;
LABEL_10:
    v37 = v32;

    v32 = v35;
  }

  replyCopy[2](replyCopy, v32);

  v40 = *MEMORY[0x277D85DE8];
}

+ (void)fetchTermsWithAltDSID:(id)d reply:(id)reply
{
  v44[7] = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v7 = *MEMORY[0x277CDC238];
  v8 = *MEMORY[0x277CDC140];
  v43[0] = *MEMORY[0x277CDC228];
  v43[1] = v8;
  v44[0] = v7;
  v44[1] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277CDBEE0];
  v10 = *MEMORY[0x277CDBEC8];
  v43[2] = *MEMORY[0x277CDBED8];
  v43[3] = v10;
  v44[2] = v9;
  v44[3] = @"com.apple.sbd";
  v11 = *MEMORY[0x277CDC558];
  v43[4] = *MEMORY[0x277CDC120];
  v43[5] = v11;
  v44[4] = @"SecureBackupTerms";
  v44[5] = MEMORY[0x277CBEC38];
  v43[6] = *MEMORY[0x277CDC428];
  v44[6] = *MEMORY[0x277CDC430];
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v44, v43, 7);
  v16 = objc_msgSend_mutableCopy(v13, v14, v15);

  if (dCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, dCopy, *MEMORY[0x277CDBF20]);
  }

  theArray = 0;
  v18 = SecItemCopyMatching(v16, &theArray);
  if (v18)
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA590];
    v22 = v18;
    v41 = *MEMORY[0x277CCA450];
    v42 = @"Unable to find terms in keychain";
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v42, &v41, 1);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v24, v21, v22, v23);

    v26 = 0;
  }

  else
  {
    Count = CFArrayGetCount(theArray);
    v28 = objc_alloc(MEMORY[0x277CBEB18]);
    v26 = objc_msgSend_initWithCapacity_(v28, v29, Count);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v31 = CFArrayGetValueAtIndex(theArray, i);
        v32 = [StoredTermsInfo alloc];
        v34 = objc_msgSend_initWithData_(v32, v33, v31);
        v37 = objc_msgSend_termsInfo(v34, v35, v36);
        objc_msgSend_addObject_(v26, v38, v37);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
      v25 = 0;
      theArray = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  replyCopy[2](replyCopy, v26, v25);

  v39 = *MEMORY[0x277D85DE8];
}

+ (id)moveToFederationAllowed:(id)allowed altDSID:(id)d
{
  allowedCopy = allowed;
  dCopy = d;
  v9 = &qword_27885A060;
  v10 = 5;
  while (1)
  {
    v11 = *(v9 - 2);
    if (v11 == objc_msgSend_intValue(allowedCopy, v6, v7))
    {
      break;
    }

    v9 += 2;
    if (!--v10)
    {
      objc_msgSend_errorWithCode_format_(CloudServicesError, v6, 600, @"Unknown federation %@", allowedCopy);
      goto LABEL_9;
    }
  }

  if (!*v9 || (sub_22E9EEAE4(dCopy) & 1) != 0)
  {
    v13 = 0;
    goto LABEL_10;
  }

  objc_msgSend_errorWithCode_format_(CloudServicesError, v12, 601, @"secure terms needed for %@", allowedCopy);
  v13 = LABEL_9:;
LABEL_10:

  return v13;
}

+ (id)knownICDPFederations
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 20; i += 4)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithFormat_(v4, v5, @"%d", dword_27885A058[i]);
    objc_msgSend_addObject_(v2, v7, v6);
  }

  return v2;
}

@end