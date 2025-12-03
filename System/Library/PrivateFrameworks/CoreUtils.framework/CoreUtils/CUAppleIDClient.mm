@interface CUAppleIDClient
- (BOOL)_validatePeerHashes:(id)hashes;
- (BOOL)validatePeerWithFlags:(unsigned int)flags error:(id *)error;
- (BOOL)verifyBytes:(const void *)bytes verifyLength:(unint64_t)length signatureBytes:(const void *)signatureBytes signatureLength:(unint64_t)signatureLength error:(id *)error;
- (BOOL)verifyData:(id)data signature:(id)signature error:(id *)error;
- (__SecCertificate)_getMyCertificateAndReturnError:(id *)error;
- (__SecCertificate)_getPeerCertificateAndReturnError:(id *)error;
- (__SecIdentity)_getMyIdentityAndReturnError:(id *)error;
- (__SecKey)_getMySecretKeyAndReturnError:(id *)error;
- (__SecKey)_getPeerPublicKeyAndReturnError:(id *)error;
- (id)copyMyAppleIDAndReturnError:(id *)error;
- (id)copyMyCertificateDataAndReturnError:(id *)error;
- (id)copyMyValidationDataAndReturnError:(id *)error;
- (id)signBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
- (id)signData:(id)data error:(id *)error;
- (int)securityLevel;
- (void)dealloc;
- (void)setPeerAppleID:(id)d;
@end

@implementation CUAppleIDClient

- (int)securityLevel
{
  securityLevel = self->_securityLevel;
  if (!securityLevel)
  {
    if (AppleAccountLibrary_sOnce != -1)
    {
      dispatch_once(&AppleAccountLibrary_sOnce, &__block_literal_global_155);
    }

    v4 = objc_alloc_init(getACAccountStoreClass[0]());
    aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];
    v6 = [aa_primaryAppleAccount accountPropertyForKey:@"altDSID"];
    if (v6)
    {
      sharedInstance = [getAKAccountManagerClass[0]() sharedInstance];
      v8 = [sharedInstance authKitAccountWithAltDSID:v6 error:0];
      if (v8)
      {
        securityLevel = [sharedInstance securityLevelForAccount:v8];
        self->_securityLevel = securityLevel;
      }

      else
      {
        securityLevel = 0;
      }
    }

    else
    {
      securityLevel = 0;
    }
  }

  return securityLevel;
}

- (void)dealloc
{
  myCertificate = self->_myCertificate;
  if (myCertificate)
  {
    CFRelease(myCertificate);
    self->_myCertificate = 0;
  }

  myIdentity = self->_myIdentity;
  if (myIdentity)
  {
    CFRelease(myIdentity);
    self->_myIdentity = 0;
  }

  mySecretKey = self->_mySecretKey;
  if (mySecretKey)
  {
    CFRelease(mySecretKey);
    self->_mySecretKey = 0;
  }

  peerCertificate = self->_peerCertificate;
  if (peerCertificate)
  {
    CFRelease(peerCertificate);
    self->_peerCertificate = 0;
  }

  peerPublicKey = self->_peerPublicKey;
  if (peerPublicKey)
  {
    CFRelease(peerPublicKey);
    self->_peerPublicKey = 0;
  }

  v8.receiver = self;
  v8.super_class = CUAppleIDClient;
  [(CUAppleIDClient *)&v8 dealloc];
}

- (__SecKey)_getPeerPublicKeyAndReturnError:(id *)error
{
  result = self->_peerPublicKey;
  if (!result)
  {
    result = [(CUAppleIDClient *)self _getPeerCertificateAndReturnError:?];
    if (result)
    {
      result = SecCertificateCopyKey(result);
      self->_peerPublicKey = result;
      if (error)
      {
        if (!result)
        {
          *error = NSErrorWithOSStatusF(4294960596, "Get peer public key from certificate failed", v6, v7, v8, v9, v10, v11, v12);
          return self->_peerPublicKey;
        }
      }
    }
  }

  return result;
}

- (__SecCertificate)_getPeerCertificateAndReturnError:(id *)error
{
  peerCertificate = self->_peerCertificate;
  if (!peerCertificate)
  {
    v12 = self->_peerCertificateData;
    if (v12)
    {
      v13 = SecCertificateCreateWithData(0, v12);
      peerCertificate = v13;
      self->_peerCertificate = v13;
      if (error && !v13)
      {
        *error = NSErrorWithOSStatusF(4294960596, "Import peer certificate failed", v14, v15, v16, v17, v18, v19, v21);
        peerCertificate = self->_peerCertificate;
      }
    }

    else if (error)
    {
      NSErrorWithOSStatusF(4294960569, "No peer certificate data", v6, v7, v8, v9, v10, v11, v21);
      *error = peerCertificate = 0;
    }

    else
    {
      peerCertificate = 0;
    }
  }

  return peerCertificate;
}

- (id)copyMyValidationDataAndReturnError:(id *)error
{
  myInfoClient = self->_myInfoClient;
  if (myInfoClient)
  {

    return [(CUAppleIDClient *)myInfoClient copyMyValidationDataAndReturnError:?];
  }

  myValidationData = self->_myValidationData;
  if (!myValidationData)
  {
    v8 = [(CUAppleIDClient *)self copyMyAppleIDAndReturnError:error];
    if (!v8)
    {
      v28 = 0;
LABEL_22:

      return v28;
    }

    v32 = 0;
    v9 = getkAppleIDValidatedItemsRecordDataCertificateType[0]();
    v16 = (softLink_AppleIDAuthenticationCopyCertificateInfo[0])(v8, v9, 0, &v32);
    v17 = v32;
    if (v16)
    {
      TypeID = CFDataGetTypeID();
      v19 = CFDictionaryGetTypedValue(v16, @"AppleIDAccountValidationRecordData", TypeID, 0);
      v20 = self->_myValidationData;
      self->_myValidationData = v19;

      v27 = self->_myValidationData;
      if (error && !v27)
      {
        *error = NSErrorWithOSStatusF(4294960569, "Get AppleID validation record data failed", v21, v22, v23, v24, v25, v26, v31);
        v27 = self->_myValidationData;
      }

      v28 = [(NSData *)v27 copy];
      goto LABEL_21;
    }

    if (error)
    {
      if (v32)
      {
        v29 = v32;
        v28 = 0;
        *error = v17;
LABEL_21:

        goto LABEL_22;
      }

      v30 = NSErrorWithOSStatusF(4294960569, "Get AppleID certificate info failed", v10, v11, v12, v13, v14, v15, v31);
      *error = v30;
    }

    v28 = 0;
    goto LABEL_21;
  }

  return myValidationData;
}

- (__SecKey)_getMySecretKeyAndReturnError:(id *)error
{
  v40[2] = *MEMORY[0x1E69E9840];
  myInfoClient = self->_myInfoClient;
  if (!myInfoClient)
  {
    p_mySecretKey = &self->_mySecretKey;
    mySecretKey = self->_mySecretKey;
    if (!mySecretKey)
    {
      if (self->_mySecretKeyData)
      {
        v9 = self->_mySecretKeyType;
        v16 = v9;
        if (v9)
        {
          v17 = *MEMORY[0x1E697AD38];
          v18 = *MEMORY[0x1E697AD68];
          v39[0] = *MEMORY[0x1E697AD30];
          v39[1] = v18;
          v40[0] = v17;
          v40[1] = v9;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v38 = 0;
          v20 = SecKeyCreateWithData(self->_mySecretKeyData, v19, &v38);
          self->_mySecretKey = v20;
          v27 = v38;
          if (error && !v20)
          {
            if (v38)
            {
              v28 = v38;
              *error = v27;
            }

            else
            {
              v37 = NSErrorWithOSStatusF(4294960596, "Import secret key failed", v21, v22, v23, v24, v25, v26, 0);
              *error = v37;
            }
          }

          mySecretKey = *p_mySecretKey;
        }

        else if (error)
        {
          NSErrorWithOSStatusF(4294960591, "Secret key data without type", v10, v11, v12, v13, v14, v15, v38);
          *error = mySecretKey = 0;
        }

        else
        {
          mySecretKey = 0;
        }

        return mySecretKey;
      }

      v29 = [(CUAppleIDClient *)self _getMyIdentityAndReturnError:error];
      if (v29)
      {
        v30 = SecIdentityCopyPrivateKey(v29, &self->_mySecretKey);
        if (v30)
        {
          if (!error)
          {
            return *p_mySecretKey;
          }
        }

        else
        {
          if (!error || *p_mySecretKey)
          {
            return *p_mySecretKey;
          }

          v30 = 4294960596;
        }

        *error = NSErrorWithOSStatusF(v30, "Get AppleID key failed", v31, v32, v33, v34, v35, v36, v38);
        return *p_mySecretKey;
      }

      return 0;
    }

    return mySecretKey;
  }

  return [(CUAppleIDClient *)myInfoClient _getMySecretKeyAndReturnError:?];
}

- (__SecIdentity)_getMyIdentityAndReturnError:(id *)error
{
  myInfoClient = self->_myInfoClient;
  if (myInfoClient)
  {

    return [(CUAppleIDClient *)myInfoClient _getMyIdentityAndReturnError:?];
  }

  else
  {
    myIdentity = self->_myIdentity;
    if (!myIdentity)
    {
      if (self->_mySecretKey || self->_mySecretKeyData)
      {
        if ([(CUAppleIDClient *)self _getMyCertificateAndReturnError:error]&& [(CUAppleIDClient *)self _getMySecretKeyAndReturnError:error])
        {
          v8 = SecIdentityCreate();
          myIdentity = v8;
          self->_myIdentity = v8;
          if (error && !v8)
          {
            *error = NSErrorWithOSStatusF(4294960596, "Import my identity failed", v9, v10, v11, v12, v13, v14, v27);
            return self->_myIdentity;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v15 = [(CUAppleIDClient *)self copyMyAppleIDAndReturnError:error];
        v16 = v15;
        if (v15)
        {
          v28 = 0;
          v17 = (softLink_AppleIDCopySecIdentityForAppleIDAccount[0])(v15, 0, &v28);
          self->_myIdentity = v17;
          v24 = v28;
          if (error && !v17)
          {
            if (v28)
            {
              v25 = v28;
              *error = v24;
            }

            else
            {
              v26 = NSErrorWithOSStatusF(4294960569, "Get AppleID identity failed", v18, v19, v20, v21, v22, v23, v27);
              *error = v26;
            }
          }

          myIdentity = self->_myIdentity;
        }

        else
        {
          myIdentity = 0;
        }
      }
    }

    return myIdentity;
  }
}

- (id)copyMyCertificateDataAndReturnError:(id *)error
{
  myInfoClient = self->_myInfoClient;
  if (myInfoClient)
  {

    return [(CUAppleIDClient *)myInfoClient copyMyCertificateDataAndReturnError:?];
  }

  else
  {
    myCertificateData = self->_myCertificateData;
    if (myCertificateData)
    {

      return myCertificateData;
    }

    else
    {
      result = [(CUAppleIDClient *)self _getMyCertificateAndReturnError:error];
      if (result)
      {
        v8 = SecCertificateCopyData(result);
        v9 = self->_myCertificateData;
        self->_myCertificateData = v8;

        v16 = self->_myCertificateData;
        if (error && !v16)
        {
          *error = NSErrorWithOSStatusF(4294960596, "Copy my certificate data failed", v10, v11, v12, v13, v14, v15, v17);
          v16 = self->_myCertificateData;
        }

        return [(NSData *)v16 copy];
      }
    }
  }

  return result;
}

- (__SecCertificate)_getMyCertificateAndReturnError:(id *)error
{
  myInfoClient = self->_myInfoClient;
  if (!myInfoClient)
  {
    p_myCertificate = &self->_myCertificate;
    result = self->_myCertificate;
    if (result)
    {
      return result;
    }

    myCertificateData = self->_myCertificateData;
    if (myCertificateData)
    {
      result = SecCertificateCreateWithData(0, myCertificateData);
      *p_myCertificate = result;
      if (!error || result)
      {
        return result;
      }

      v15 = "Import my certificate failed";
      v16 = 4294960596;
    }

    else
    {
      result = [(CUAppleIDClient *)self _getMyIdentityAndReturnError:error];
      if (!result)
      {
        return result;
      }

      v16 = SecIdentityCopyCertificate(result, p_myCertificate);
      if (v16)
      {
        if (!error)
        {
          return *p_myCertificate;
        }
      }

      else
      {
        if (!error || *p_myCertificate)
        {
          return *p_myCertificate;
        }

        v16 = 4294960596;
      }

      v15 = "Get AppleID identity certificate failed";
    }

    *error = NSErrorWithOSStatusF(v16, v15, v9, v10, v11, v12, v13, v14, v17);
    return *p_myCertificate;
  }

  return [(CUAppleIDClient *)myInfoClient _getMyCertificateAndReturnError:?];
}

- (id)copyMyAppleIDAndReturnError:(id *)error
{
  myInfoClient = self->_myInfoClient;
  if (myInfoClient)
  {

    return [(CUAppleIDClient *)myInfoClient copyMyAppleIDAndReturnError:?];
  }

  else
  {
    myAppleID = self->_myAppleID;
    if (myAppleID)
    {

      return myAppleID;
    }

    else
    {
      if (AppleAccountLibrary_sOnce != -1)
      {
        dispatch_once(&AppleAccountLibrary_sOnce, &__block_literal_global_155);
      }

      v8 = objc_alloc_init(getACAccountStoreClass[0]());
      aa_primaryAppleAccount = [v8 aa_primaryAppleAccount];
      username = [aa_primaryAppleAccount username];
      v11 = self->_myAppleID;
      self->_myAppleID = username;

      v18 = self->_myAppleID;
      if (error && !v18)
      {
        *error = NSErrorWithOSStatusF(4294960569, "Get AppleID failed", v12, v13, v14, v15, v16, v17, v20);
        v18 = self->_myAppleID;
      }

      v19 = [(NSString *)v18 copy];

      return v19;
    }
  }
}

- (BOOL)verifyBytes:(const void *)bytes verifyLength:(unint64_t)length signatureBytes:(const void *)signatureBytes signatureLength:(unint64_t)signatureLength error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient verifyBytes:verifyLength:signatureBytes:signatureLength:error:]", 0x1Eu, "Verify signature (%zu bytes data, %zu bytes signature)\n", signatureBytes, signatureLength, error, v7, length);
  }

  v14 = [(CUAppleIDClient *)self _getPeerPublicKeyAndReturnError:error];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = _kCryptoHashDescriptor_SHA512;
  _SHA512Init(&v26);
  _SHA512Update(&v26, bytes, length);
  _SHA512Final(&v26, signedData);
  v16 = SecKeyRawVerify(v15, 1u, signedData, 0x40uLL, signatureBytes, signatureLength);
  v23 = v16 == 0;
  if (v16)
  {
    if (error)
    {
      *error = NSErrorWithOSStatusF(v16, "Verify data signature failed", v17, v18, v19, v20, v21, v22, v25);
    }
  }

  else
  {
    self->_peerSignatureVerified = 1;
  }

  return v23;
}

- (BOOL)verifyData:(id)data signature:(id)signature error:(id *)error
{
  dataCopy = data;
  signatureCopy = signature;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v13 = [dataCopy2 length];

  bytes2 = [signatureCopy bytes];
  v15 = [signatureCopy length];

  return [(CUAppleIDClient *)self verifyBytes:bytes verifyLength:v13 signatureBytes:bytes2 signatureLength:v15 error:error];
}

- (BOOL)_validatePeerHashes:(id)hashes
{
  v105 = *MEMORY[0x1E69E9840];
  hashesCopy = hashes;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v5 = self->_peerAppleIDs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v96 objects:v104 count:16];
  if (v6)
  {
    v7 = 0x1E695D000uLL;
    v8 = *v97;
    v81 = v5;
    v82 = hashesCopy;
    v76 = *v97;
    do
    {
      v9 = 0;
      v77 = v6;
      do
      {
        if (*v97 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v78 = v9;
        v79 = *(*(&v96 + 1) + 8 * v9);
        lowercaseString = [v79 lowercaseString];
        uTF8String = [lowercaseString UTF8String];
        v11 = strlen(uTF8String);
        CC_SHA256(uTF8String, v11, md);
        v16 = [objc_alloc(*(v7 + 3824)) initWithBytes:md length:32];
        if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient _validatePeerHashes:]", 0x1Eu, "Validating peer hash: %@\n", v12, v13, v14, v15, v16);
        }

        TypeID = CFArrayGetTypeID();
        v18 = CFDictionaryGetTypedValue(hashesCopy, @"ValidatedEmailHashes", TypeID, 0);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v92 objects:v102 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v93;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v93 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v92 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = NSDataWithHex([v24 UTF8String], -1, 22, 0, 0);
                if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
                {
                  LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient _validatePeerHashes:]", 0x1Eu, "Attempting match against: %@\n", v25, v26, v27, v28, v29);
                }

                v30 = [v29 isEqual:v16];

                if (v30)
                {
                  v40 = v19;
                  v35 = v16;
LABEL_69:

LABEL_70:
                  v5 = v81;
                  hashesCopy = v82;

                  v73 = 1;
                  goto LABEL_72;
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v92 objects:v102 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        if (strchr(uTF8String, 64))
        {
          v31 = v79;
          v32 = CUNormalizeEmailAddress(v79, 1);
          v7 = 0x1E695D000uLL;
          if (([v32 isEqual:lowercaseString] & 1) == 0)
          {
            v75 = v32;
            uTF8String2 = [v32 UTF8String];
            v34 = strlen(uTF8String2);
            CC_SHA256(uTF8String2, v34, md);
            v35 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];

            if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
            {
              LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient _validatePeerHashes:]", 0x1Eu, "Validating normalized peer hash: %@\n", v36, v37, v38, v39, v35);
            }

            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v40 = v19;
            v41 = [v40 countByEnumeratingWithState:&v88 objects:v101 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v89;
              while (2)
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v89 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v88 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v50 = NSDataWithHex([v45 UTF8String], -1, 22, 0, 0);
                    if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
                    {
                      LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient _validatePeerHashes:]", 0x1Eu, "Attempting match against: %@\n", v46, v47, v48, v49, v50);
                    }

                    v51 = [v50 isEqual:v35];

                    if (v51)
                    {

                      v19 = v75;
                      goto LABEL_69;
                    }
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v88 objects:v101 count:16];
                if (v42)
                {
                  continue;
                }

                break;
              }
            }

            v16 = v35;
            v7 = 0x1E695D000uLL;
            v31 = v79;
            v32 = v75;
          }

          hashesCopy = v82;
        }

        else
        {
          hashesCopy = v82;
          v7 = 0x1E695D000;
          v31 = v79;
        }

        v52 = CUNormalizePhoneNumber(v31);
        if (v52)
        {
          v80 = v52;
          uTF8String3 = [v80 UTF8String];
          v54 = strlen(uTF8String3);
          CC_SHA256(uTF8String3, v54, md);
          v55 = [objc_alloc(*(v7 + 3824)) initWithBytes:md length:32];

          if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
          {
            LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient _validatePeerHashes:]", 0x1Eu, "Validating peer phone hash: %@\n", v56, v57, v58, v59, v55);
          }

          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v60 = CFArrayGetTypeID();
          v61 = CFDictionaryGetTypedValue(hashesCopy, @"ValidatedPhoneHashes", v60, 0);
          v62 = [v61 countByEnumeratingWithState:&v84 objects:v100 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v85;
            while (2)
            {
              for (k = 0; k != v63; ++k)
              {
                if (*v85 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v84 + 1) + 8 * k);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v71 = NSDataWithHex([v66 UTF8String], -1, 22, 0, 0);
                  if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
                  {
                    LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient _validatePeerHashes:]", 0x1Eu, "Attempting match against: %@\n", v67, v68, v69, v70, v71);
                  }

                  v72 = [v71 isEqual:v55];

                  if (v72)
                  {

                    goto LABEL_70;
                  }
                }
              }

              v63 = [v61 countByEnumeratingWithState:&v84 objects:v100 count:16];
              if (v63)
              {
                continue;
              }

              break;
            }
          }

          hashesCopy = v82;
          v7 = 0x1E695D000;
          v52 = v80;
        }

        else
        {
          v55 = v16;
        }

        v9 = v78 + 1;
        v5 = v81;
        v8 = v76;
      }

      while (v78 + 1 != v77);
      v6 = [(NSArray *)v81 countByEnumeratingWithState:&v96 objects:v104 count:16];
      v73 = 0;
    }

    while (v6);
  }

  else
  {
    v73 = 0;
  }

LABEL_72:

  return v73;
}

- (BOOL)validatePeerWithFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient validatePeerWithFlags:error:]", 0x1Eu, "Validate peer\n", v4, v5, v6, v7, v64);
  }

  if (self->_peerValidated)
  {
    return 1;
  }

  if (self->_peerSignatureVerified)
  {
    v18 = self->_peerValidationData;
    if (!v18)
    {
      if (error)
      {
        NSErrorWithOSStatusF(4294960591, "No peer validation data", v12, v13, v14, v15, v16, v17, v64);
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_52;
    }

    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = __Block_byref_object_copy_;
    v77 = __Block_byref_object_dispose_;
    v78 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 1;
    v19 = dispatch_queue_create("SFAppleIDQueue", 0);
    v20 = dispatch_semaphore_create(0);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __47__CUAppleIDClient_validatePeerWithFlags_error___block_invoke;
    v65[3] = &unk_1E73A2AD8;
    v67 = &v73;
    v68 = &v69;
    v21 = v20;
    v66 = v21;
    (softLinkSFAppleIDParseValidationRecordData[0])(v18, v19, v65);
    v22 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v21, v22))
    {
      if (error)
      {
        v29 = 4294960574;
LABEL_22:
        NSErrorWithOSStatusF(v29, "Validate peer data failed", v23, v24, v25, v26, v27, v28, v64);
        *error = v11 = 0;
LABEL_51:

        _Block_object_dispose(&v69, 8);
        _Block_object_dispose(&v73, 8);

LABEL_52:
        return v11;
      }

      goto LABEL_23;
    }

    v30 = *(v70 + 6);
    if (v30 || (v31 = v74[5]) == 0)
    {
      if (error)
      {
        if (v30)
        {
          v29 = v30;
        }

        else
        {
          v29 = 4294960596;
        }

        goto LABEL_22;
      }

LABEL_23:
      v11 = 0;
      goto LABEL_51;
    }

    objc_storeStrong(&self->_peerValidationDict, v31);
    v32 = v74[5];
    TypeID = CFStringGetTypeID();
    v40 = CFDictionaryGetTypedValue(v32, @"encDsID", TypeID, 0);
    if (v40)
    {
      v41 = [(CUAppleIDClient *)self _getPeerCertificateAndReturnError:error];
      if (v41)
      {
        v64 = 0;
        LODWORD(v42) = SecCertificateCopyCommonName(v41, &v64);
        v49 = v64;
        if (v42 || !v64)
        {
          if (error)
          {
            if (v42)
            {
              v42 = v42;
            }

            else
            {
              v42 = 4294960596;
            }

            v62 = NSErrorWithOSStatusF(v42, "Get peer certificate common name failed", v43, v44, v45, v46, v47, v48, v64);
            goto LABEL_44;
          }
        }

        else if (([(__CFString *)v64 hasSuffix:v40]& 1) != 0)
        {
          if (flagsCopy)
          {
            v11 = 1;
            goto LABEL_49;
          }

          if ([(CUAppleIDClient *)self _validatePeerHashes:v74[5]])
          {
            v11 = 1;
            self->_peerValidated = 1;
LABEL_49:

            goto LABEL_50;
          }

          if (error)
          {
            v62 = NSErrorWithOSStatusF(4294960588, "Peer AppleID not found in hashes", v56, v57, v58, v59, v60, v61, v64);
            goto LABEL_44;
          }
        }

        else if (error)
        {
          v62 = NSErrorWithOSStatusF(4294960552, "Certificate DSID doesn't match validation info DSID", v50, v51, v52, v53, v54, v55, v64);
LABEL_44:
          v11 = 0;
          *error = v62;
          goto LABEL_49;
        }

        v11 = 0;
        goto LABEL_49;
      }
    }

    else if (error)
    {
      NSErrorWithOSStatusF(4294960591, "No peer validation info DSID", v34, v35, v36, v37, v38, v39, v64);
      *error = v11 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v11 = 0;
    goto LABEL_50;
  }

  if (!error)
  {
    return 0;
  }

  NSErrorWithOSStatusF(4294960551, "Signature not verified. Use verifyData irst", *&flags, error, v4, v5, v6, v7, v64);
  *error = v11 = 0;
  return v11;
}

void __47__CUAppleIDClient_validatePeerWithFlags_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)signBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUAppleIDClient <= 30 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient signBytes:length:error:]", 0x1Eu, "Sign %zu bytes\n", error, v5, v6, v7, length);
  }

  v51 = 0;
  sigLen = 0;
  v12 = [(CUAppleIDClient *)self copyMyAppleIDAndReturnError:&v51];
  v13 = v51;
  v18 = v13;
  if (!v12)
  {
    goto LABEL_24;
  }

  v50 = v13;
  v19 = [(CUAppleIDClient *)self _getMyIdentityAndReturnError:&v50];
  v20 = v50;

  if (!v19)
  {
    v18 = v20;
    goto LABEL_24;
  }

  v49 = v20;
  v21 = [(CUAppleIDClient *)self _getMySecretKeyAndReturnError:&v49];
  v18 = v49;

  if (!v21)
  {
    goto LABEL_24;
  }

  BlockSize = SecKeyGetBlockSize(v21);
  sigLen = BlockSize;
  if (BlockSize)
  {
    v29 = BlockSize;
    v30 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
    if (v30)
    {
      v31 = v30;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = _kCryptoHashDescriptor_SHA512;
      _SHA512Init(&v53);
      _SHA512Update(&v53, bytes, length);
      _SHA512Final(&v53, dataToSign);
      v32 = SecKeyRawSign(v21, 1u, dataToSign, 0x40uLL, v31, &sigLen);
      if (v32)
      {
        v46 = "Sign with AppleID failed";
      }

      else
      {
        v39 = objc_alloc(MEMORY[0x1E695DEF0]);
        v40 = [v39 initWithBytesNoCopy:v31 length:sigLen];
        if (v40)
        {
          v41 = v40;

          v18 = 0;
          goto LABEL_13;
        }

        v48 = sigLen;
        v46 = "Alloc init AppleID signature failed (%zu bytes)";
        v32 = 4294960568;
      }

      v45 = NSErrorWithOSStatusF(v32, v46, v33, v34, v35, v36, v37, v38, v48);

      free(v31);
      goto LABEL_23;
    }

    v48 = v29;
    v43 = "Malloc AppleID signature buffer failed (%zu bytes)";
    v44 = 4294960568;
  }

  else
  {
    v43 = "Get AppleID key size failed";
    v44 = 4294960553;
  }

  v45 = NSErrorWithOSStatusF(v44, v43, v23, v24, v25, v26, v27, v28, v48);

LABEL_23:
  v18 = v45;
LABEL_24:
  if (v18 && gLogCategory_CUAppleIDClient <= 60 && (gLogCategory_CUAppleIDClient != -1 || _LogCategory_Initialize(&gLogCategory_CUAppleIDClient, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUAppleIDClient, "[CUAppleIDClient signBytes:length:error:]", 0x3Cu, "### Sign failed (%zu bytes): %{error}\n", v14, v15, v16, v17, length);
  }

  if (error)
  {
    v47 = v18;
    v41 = 0;
    *error = v18;
  }

  else
  {
    v41 = 0;
  }

LABEL_13:

  return v41;
}

- (id)signData:(id)data error:(id *)error
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  return [(CUAppleIDClient *)self signBytes:bytes length:v10 error:error];
}

- (void)setPeerAppleID:(id)d
{
  v8[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  objc_storeStrong(&self->_peerAppleID, d);
  if (dCopy)
  {
    v8[0] = dCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    peerAppleIDs = self->_peerAppleIDs;
    self->_peerAppleIDs = v6;
  }

  else
  {
    peerAppleIDs = self->_peerAppleIDs;
    self->_peerAppleIDs = 0;
  }
}

@end