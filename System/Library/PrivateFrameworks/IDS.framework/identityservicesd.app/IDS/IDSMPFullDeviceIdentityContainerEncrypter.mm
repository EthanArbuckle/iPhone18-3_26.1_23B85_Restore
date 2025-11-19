@interface IDSMPFullDeviceIdentityContainerEncrypter
- (BOOL)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 withPublicDeviceIdentity:(id)a6 error:(id *)a7;
- (BOOL)verifySignedData:(id)a3 matchesData:(id)a4 withSecPublicDeviceIdentity:(__SecKey *)a5 diversifier:(id)a6 error:(id *)a7;
- (IDSMPFullDeviceIdentityContainerEncrypter)initWithRegistrationKeyManager:(id)a3;
- (id)_validateParametersWithFullIdentityToUse:(id)a3 fullIdentity:(id)a4 publicIdentity:(id)a5 inputData:(id)a6 identifier:(id)a7 forDecryption:(BOOL)a8;
- (id)batchSignDatas:(id)a3 withType:(int64_t)a4 error:(id *)a5;
- (id)decryptData:(id)a3 decryptionContext:(id)a4 withPublicDeviceIdentityContainer:(id)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7;
- (id)decryptData:(id)a3 withPublicDeviceIdentityContainer:(id)a4 error:(id *)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7;
- (id)encryptData:(id)a3 encryptionContext:(id)a4 forceSizeOptimizations:(BOOL)a5 resetState:(BOOL)a6 withEncryptedAttributes:(id)a7 withPublicDeviceIdentityContainer:(id)a8 usedIdentifier:(id *)a9 metadata:(id *)a10 error:(id *)a11;
- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 withPublicDeviceIdentityContainer:(id)a5 error:(id *)a6;
- (id)offGridKeyDistributionEncryptData:(id)a3 encryptionContext:(id)a4 withPublicDeviceIdentityContainer:(id)a5 error:(id *)a6;
- (id)signData:(id)a3 usingApplicationKeyIndex:(unsigned __int16)a4 diversifier:(id)a5 error:(id *)a6;
- (id)signData:(id)a3 withSignatureType:(int64_t)a4 error:(id *)a5;
@end

@implementation IDSMPFullDeviceIdentityContainerEncrypter

- (IDSMPFullDeviceIdentityContainerEncrypter)initWithRegistrationKeyManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSMPFullDeviceIdentityContainerEncrypter;
  v6 = [(IDSMPFullDeviceIdentityContainerEncrypter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registrationKeyManager, a3);
  }

  return v7;
}

- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 withPublicDeviceIdentityContainer:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainerUsableForKeyType:1];
  v14 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v15 = IDSMPLegacyIdentityIdentifier;
  v16 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v13 fullIdentity:v14 publicIdentity:v12 inputData:v10 identifier:IDSMPLegacyIdentityIdentifier forDecryption:0];
  if (v16)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2048;
      v34 = [v10 length];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid encryption parameters (using) -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v26 = [v10 length];
      _IDSWarnV();
      v27 = [v10 length];
      _IDSLogV();
      [v10 length];
      _IDSLogTransport();
    }

    if (a6)
    {
      v18 = v16;
      v19 = 0;
      *a6 = v16;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v25 = v13;
      _IDSLogV();
    }

    v28 = 0;
    v19 = [v12 legacySealMessage:v10 withEncryptedAttributes:v11 signedByFullIdentity:v13 usingIdentitiesWithIdentifier:v15 error:{&v28, v25}];
    v21 = v28;
    if (!v19)
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "   Public/Private encryption failed with error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (a6)
      {
        v23 = v21;
        *a6 = v21;
      }
    }
  }

  return v19;
}

- (id)offGridKeyDistributionEncryptData:(id)a3 encryptionContext:(id)a4 withPublicDeviceIdentityContainer:(id)a5 error:(id *)a6
{
  v34 = a3;
  v33 = a4;
  v35 = a5;
  v9 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainerUsableForKeyType:2];
  v31 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v32 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v9 fullIdentity:v31 publicIdentity:v35 inputData:v34 identifier:IDSPaddyIdentityIdentifier forDecryption:0];
  if (v32)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = v35;
      v39 = 2112;
      v40 = v9;
      v41 = 2048;
      v42 = [v34 length];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid encryption parameters -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v27 = [v34 length];
      _IDSWarnV();
      v28 = [v34 length];
      _IDSLogV();
      [v34 length];
      _IDSLogTransport();
    }

    if (a6)
    {
      v11 = v32;
      v12 = 0;
      v13 = v32;
      *a6 = v32;
      goto LABEL_24;
    }

    v12 = 0;
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = v9;
      _IDSLogV();
    }

    v29 = [v33 sendingURI];
    v15 = [v29 prefixedURI];
    v16 = [v33 sendingPushToken];
    v17 = [v16 rawToken];
    v18 = [v33 receivingURI];
    v19 = [v18 prefixedURI];
    v20 = [v33 receivingPushToken];
    v21 = [v20 rawToken];
    v36 = 0;
    v12 = [v35 sealPaddyMessage:v34 sendingURI:v15 sendingPushToken:v17 receivingURI:v19 receivingPushToken:v21 signedByFullIdentity:v9 error:&v36];
    v22 = v36;

    if (!v12)
    {
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "   Paddy sender key encryption failed with error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (a6)
      {
        v24 = v22;
        *a6 = v22;
      }
    }
  }

  v13 = v32;
LABEL_24:

  return v12;
}

- (id)encryptData:(id)a3 encryptionContext:(id)a4 forceSizeOptimizations:(BOOL)a5 resetState:(BOOL)a6 withEncryptedAttributes:(id)a7 withPublicDeviceIdentityContainer:(id)a8 usedIdentifier:(id *)a9 metadata:(id *)a10 error:(id *)a11
{
  v66 = a3;
  v65 = a4;
  v62 = a7;
  v16 = a8;
  v17 = [v16 ngmPublicDeviceIdentity];
  v18 = v17;
  if (v17)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainerUsableForKeyType:v19];
  v63 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v21 = IDSMPLegacyIdentityIdentifier;
  if (a9)
  {
    v22 = IDSMPLegacyIdentityIdentifier;
  }

  else
  {
    v22 = 0;
  }

  v64 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v20 fullIdentity:v63 publicIdentity:v16 inputData:v66 identifier:v22 forDecryption:0];
  if (v64)
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v70 = v16;
      v71 = 2112;
      v72 = v20;
      v73 = 2048;
      v74 = [v66 length];
      v75 = 2048;
      v76 = a9;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid encryption parameters (used) -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu, identifier: %p}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v48 = [v66 length];
      _IDSWarnV();
      v49 = [v66 length];
      _IDSLogV();
      [v66 length];
      _IDSLogTransport();
    }

    if (a11)
    {
      v24 = v64;
      *a11 = v64;
    }

    v25 = 0;
    if (a9 && !v20)
    {
      if (v18)
      {
        v26 = IDSNGMDeviceIdentityIdentifier;
      }

      else
      {
        v26 = v21;
      }

      v25 = 0;
      *a9 = v26;
    }
  }

  else
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v43 = v20;
      _IDSLogV();
    }

    v57 = [v65 guid];
    v61 = [v65 sendingURI];
    v60 = [v65 sendingPushToken];
    v59 = [v65 receivingURI];
    v58 = [v65 receivingPushToken];
    v56 = [v65 authenticatedData];
    v28 = [v65 messageType];
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v70 = v57;
      v71 = 2112;
      v72 = v61;
      v73 = 2112;
      v74 = v60;
      v75 = 2112;
      v76 = v59;
      v77 = 2112;
      v78 = v58;
      v79 = 2112;
      v80 = v56;
      v81 = 2048;
      v82 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Calling into sealMessage with {guid:%@, sendingURI:%@, sendingPushToken:%@, receivingURI:%@, receivingPushToken:%@, authenticatedData:%@, messageType:%ld}", buf, 0x48u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v53 = v56;
      v54 = v28;
      v51 = v59;
      v52 = v58;
      v46 = v61;
      v47 = v60;
      v44 = v57;
      _IDSLogV();
    }

    v30 = [v61 prefixedURI];
    v31 = [v60 rawToken];
    v32 = [v59 prefixedURI];
    v33 = [v58 rawToken];
    v67 = 0;
    v68 = 0;
    BYTE1(v50) = a6;
    LOBYTE(v50) = a5;
    v25 = [v16 sealMessage:v66 authenticatedData:v56 messageType:v28 guid:v57 sendingURI:v30 sendingPushToken:v31 receivingURI:v32 receivingPushToken:v33 forceSizeOptimizations:v50 resetState:v62 withEncryptedAttributes:v20 signedByFullIdentity:a9 usedIdentityWithIdentifier:&v68 error:&v67 additionalResult:?];
    v34 = v68;
    v35 = v67;

    v36 = [[IDSEncryptionMetadata alloc] initWithAdditionalEncryptionResult:v35];
    v37 = v36;
    if (a10)
    {
      v38 = v36;
      *a10 = v37;
    }

    if (!v25)
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = v34;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "   Public/Private encryption failed with error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v45 = v34;
        _IDSLogV();
      }

      if (a11)
      {
        v40 = v34;
        *a11 = v34;
      }

      if ([*a9 isEqualToString:{IDSNGMDeviceIdentityIdentifier, v45}])
      {
        v41 = +[IMIDSLog encryption];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_100916D7C(v34, v41);
        }
      }
    }
  }

  return v25;
}

- (id)decryptData:(id)a3 withPublicDeviceIdentityContainer:(id)a4 error:(id *)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v15 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v14 fullIdentity:0 publicIdentity:v12 inputData:v11 identifier:v13 forDecryption:1];
  if (v15)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v36 = v12;
      v37 = 2112;
      v38 = v14;
      v39 = 2048;
      v40 = [v11 length];
      v41 = 2048;
      v42 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid decryption parameters -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu, identifier: %p}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v31 = [v11 length];
      _IDSWarnV();
      v32 = [v11 length];
      _IDSLogV();
      [v11 length];
      _IDSLogTransport();
    }

    if (a5)
    {
      v17 = v15;
      v18 = 0;
      *a5 = v15;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v28 = v14;
      _IDSLogV();
    }

    v34 = 0;
    v18 = [v14 unsealMessage:v11 signedByPublicIdentity:v12 usingIdentityWithIdentifier:v13 error:{&v34, v28}];
    v20 = v34;
    if (v18)
    {
      v21 = v14;
    }

    else
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "   Public/Private decryption failed with error: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v29 = v20;
        _IDSLogV();
      }

      v21 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager previousFullDeviceIdentityContainer];

      if (v21)
      {
        v23 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using previous full identity: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v30 = v21;
          _IDSLogV();
        }

        v33 = 0;
        v18 = [v21 unsealMessage:v11 signedByPublicIdentity:v12 usingIdentityWithIdentifier:v13 error:{&v33, v30}];
        v24 = v33;
        if (a5 && !v18)
        {
          v25 = v20;
          *a5 = v20;
        }
      }

      else if (a5)
      {
        v26 = v20;
        v21 = 0;
        v18 = 0;
        *a5 = v20;
      }

      else
      {
        v21 = 0;
        v18 = 0;
      }
    }

    v14 = v21;
  }

  return v18;
}

- (id)decryptData:(id)a3 decryptionContext:(id)a4 withPublicDeviceIdentityContainer:(id)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7
{
  v38 = a3;
  v37 = a4;
  v39 = a5;
  v11 = a6;
  v35 = self->_registrationKeyManager;
  v12 = [(IDSRegistrationKeyManager *)v35 fullDeviceIdentityContainer];
  v36 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v12 fullIdentity:0 publicIdentity:v39 inputData:v38 identifier:v11 forDecryption:1];
  if (v36)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v48 = v39;
      v49 = 2112;
      v50 = v12;
      v51 = 2048;
      v52 = [v38 length];
      v53 = 2048;
      v54 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid decryption parameters -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu, identifier: %p}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v28 = [v38 length];
      _IDSWarnV();
      v29 = [v38 length];
      _IDSLogV();
      [v38 length];
      _IDSLogTransport();
    }

    v14 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v14 failWithError:v36];
    v15 = [v14 promise];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v27 = v12;
      _IDSLogV();
    }

    v14 = [v37 guid];
    v34 = [v37 sendingURI];
    v33 = [v37 sendingPushToken];
    v32 = [v37 receivingURI];
    v31 = [v37 receivingPushToken];
    v30 = [v37 authenticatedData];
    v17 = [v37 messageType];
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v48 = v14;
      v49 = 2112;
      v50 = v34;
      v51 = 2112;
      v52 = v33;
      v53 = 2112;
      v54 = v32;
      v55 = 2112;
      v56 = v31;
      v57 = 2112;
      v58 = v30;
      v59 = 2048;
      v60 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling into unsealMessage with {guid:%@, sendingURI:%@, sendingPushToken:%@, receivingURI:%@, receivingPushToken:%@, authenticatedData:%@, messageType:%ld}", buf, 0x48u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v19 = objc_alloc_init(CUTUnsafePromiseSeal);
    v20 = [v34 prefixedURI];
    v21 = [v33 rawToken];
    v22 = [v32 prefixedURI];
    v23 = [v31 rawToken];
    v24 = [v12 unsealMessage:v38 authenticatedData:v30 messageType:v17 guid:v14 sendingURI:v20 sendingPushToken:v21 receivingURI:v22 receivingPushToken:v23 signedByPublicIdentity:v39 usingIdentityWithIdentifier:v11];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1003439A4;
    v40[3] = &unk_100BD8800;
    v41 = v35;
    v42 = v19;
    v43 = v38;
    v44 = v37;
    v45 = v39;
    v46 = v11;
    v25 = v19;
    [v24 registerResultBlock:v40];

    v15 = [v25 promise];
  }

  return v15;
}

- (id)_validateParametersWithFullIdentityToUse:(id)a3 fullIdentity:(id)a4 publicIdentity:(id)a5 inputData:(id)a6 identifier:(id)a7 forDecryption:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = &IDSDecryptionErrorDomain;
  if (!v8)
  {
    v18 = &IDSEncryptionErrorDomain;
  }

  v19 = *v18;
  if (!v13)
  {
    v21 = !v8;
    if (v14)
    {
      v22 = 20;
    }

    else
    {
      v22 = 16;
    }

    v23 = 6;
    goto LABEL_14;
  }

  if (!v15)
  {
    v21 = !v8;
    v22 = 17;
    v23 = 4;
LABEL_14:
    if (v21)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v20 = [NSError errorWithDomain:v19 code:v24 userInfo:0];
    goto LABEL_18;
  }

  if (![v16 length])
  {
    v21 = !v8;
    v22 = 18;
    v23 = 7;
    goto LABEL_14;
  }

  if (!v17)
  {
    v21 = !v8;
    v22 = 19;
    v23 = 8;
    goto LABEL_14;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (id)signData:(id)a3 withSignatureType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v10 = v9;
  if (v9)
  {
    v18 = 0;
    v11 = [v9 signDataWithNGMIdentity:v8 forType:a4 error:&v18];
    v12 = v18;
    v13 = v12;
    if (a5 && !v11)
    {
      if (v12)
      {
        v21 = NSUnderlyingErrorKey;
        v22 = v12;
        v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MessageProtection Error signing data: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v17 = v13;
          _IDSLogV();
        }
      }

      else
      {
        v14 = 0;
      }

      *a5 = [NSError errorWithDomain:IDSSigningErrorDomain code:12 userInfo:v14, v17];
    }
  }

  else if (a5)
  {
    [NSError errorWithDomain:IDSSigningErrorDomain code:11 userInfo:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)signData:(id)a3 usingApplicationKeyIndex:(unsigned __int16)a4 diversifier:(id)a5 error:(id *)a6
{
  v8 = a4;
  dataToSign = a3;
  v10 = a5;
  if (![(IDSRegistrationKeyManager *)self->_registrationKeyManager fullIdentityForKeyIndex:v8]|| (v11 = CFRetain([(IDSRegistrationKeyManager *)self->_registrationKeyManager fullIdentityForKeyIndex:v8])) == 0)
  {
    if (a6)
    {
      [NSError errorWithDomain:IDSSigningErrorDomain code:11 userInfo:0];
      *a6 = v25 = 0;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v12 = v11;
  if (!v10)
  {
    if (a6)
    {
      *a6 = [NSError errorWithDomain:IDSSigningErrorDomain code:15 userInfo:0];
    }

    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No diversifier supplied for an application key. Failing...", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    CFRelease(v12);
    goto LABEL_39;
  }

  if (qword_100CBCF30 != -1)
  {
    sub_100916DF4();
  }

  v13 = qword_100CBCF28;
  v14 = [v10 diversifier];
  v15 = [v10 trackingPreventionSecret];
  v37 = 0;
  v16 = [v13 diversifyPrivateKey:v12 withDocumentIdentifier:v14 trackingPreventionSalt:v15 error:&v37];
  v17 = v37;
  if (!v16)
  {

    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v18 = qword_100CBCF28;
  v19 = [v10 diversifier];
  v20 = [v10 trackingPreventionSecret];
  v36 = v17;
  v21 = [v18 diversifyPrivateKey:v12 withDocumentIdentifier:v19 trackingPreventionSalt:v20 error:&v36];
  v22 = v36;

  v23 = CFRetain(v21);
  if (!v23)
  {
    v17 = v22;
    if (!v22)
    {
LABEL_31:
      v30 = 0;
      if (!a6)
      {
LABEL_33:
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v41 = v12;
          v42 = 2112;
          v43 = v10;
          v44 = 2112;
          v45 = v17;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to diversify key for signing { tempIdentity: %@, diversifier: %@, mpError: %@ }", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        CFRelease(v12);

LABEL_39:
        v25 = 0;
        goto LABEL_40;
      }

LABEL_32:
      *a6 = [NSError errorWithDomain:IDSSigningErrorDomain code:15 userInfo:v30];
      goto LABEL_33;
    }

LABEL_28:
    v46 = NSUnderlyingErrorKey;
    v47 = v17;
    v30 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    if (!a6)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  CFRelease(v12);

  error = 0;
  v24 = SecKeyCreateSignature(v23, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, dataToSign, &error);
  v25 = v24;
  v26 = error;
  if (!a6 || v24)
  {
    if (error)
    {
      CFRelease(error);
      error = 0;
    }
  }

  else
  {
    if (error)
    {
      v38 = NSUnderlyingErrorKey;
      v39 = error;
      v27 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Security Error signing data: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v33 = v26;
        _IDSLogV();
      }
    }

    else
    {
      v27 = 0;
    }

    *a6 = [NSError errorWithDomain:IDSSigningErrorDomain code:13 userInfo:v27, v33];
  }

  CFRelease(v23);
LABEL_40:

  return v25;
}

- (id)batchSignDatas:(id)a3 withType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v10 = v9;
  if (v9)
  {
    v18 = 0;
    v11 = [v9 batchSignWithNGMIdentity:v8 forType:a4 error:&v18];
    v12 = v18;
    v13 = [v11 count];
    if (a5 && !v13)
    {
      if (v12)
      {
        v21 = NSUnderlyingErrorKey;
        v22 = v12;
        v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MessageProtection Error signing data: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v17 = v12;
          _IDSLogV();
        }
      }

      else
      {
        v14 = 0;
      }

      *a5 = [NSError errorWithDomain:IDSSigningErrorDomain code:12 userInfo:v14, v17];
    }
  }

  else if (a5)
  {
    [NSError errorWithDomain:IDSSigningErrorDomain code:11 userInfo:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 withPublicDeviceIdentity:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v23 = 0;
    v15 = [v13 isValidSignature:v11 forMessage:v12 forType:a5 error:&v23];
    v16 = v23;
    v17 = v16;
    if (a7)
    {
      v18 = v15;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      if (v16)
      {
        v26 = NSUnderlyingErrorKey;
        v27 = v16;
        v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MessageProtection Error verifying signing data: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v22 = v17;
          _IDSLogV();
        }
      }

      else
      {
        v19 = 0;
      }

      *a7 = [NSError errorWithDomain:IDSSigningErrorDomain code:12 userInfo:v19, v22];
    }
  }

  else if (a7)
  {
    [NSError errorWithDomain:IDSSigningErrorDomain code:10 userInfo:0];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)verifySignedData:(id)a3 matchesData:(id)a4 withSecPublicDeviceIdentity:(__SecKey *)a5 diversifier:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (!a5)
  {
    if (a7)
    {
      v15 = [NSError errorWithDomain:IDSSigningErrorDomain code:10 userInfo:0];
      goto LABEL_7;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_23;
  }

  if (v13)
  {
    if (a7)
    {
      v15 = [NSError errorWithDomain:IDSSigningErrorDomain code:15 userInfo:0];
LABEL_7:
      v16 = 0;
      *a7 = v15;
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  error = 0;
  v17 = SecKeyVerifySignature(a5, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v11, v12, &error);
  v18 = error;
  if (!a7 || v17)
  {
    if (error)
    {
      CFRelease(error);
    }
  }

  else
  {
    if (error)
    {
      v26 = NSUnderlyingErrorKey;
      v27 = error;
      v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Security Error verifying signing data: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v22 = v18;
        _IDSLogV();
      }
    }

    else
    {
      v19 = 0;
    }

    *a7 = [NSError errorWithDomain:IDSSigningErrorDomain code:13 userInfo:v19, v22];
  }

  v16 = 1;
LABEL_23:

  return v16;
}

@end