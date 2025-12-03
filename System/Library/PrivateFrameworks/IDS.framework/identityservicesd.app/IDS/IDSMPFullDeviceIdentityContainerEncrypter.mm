@interface IDSMPFullDeviceIdentityContainerEncrypter
- (BOOL)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type withPublicDeviceIdentity:(id)identity error:(id *)error;
- (BOOL)verifySignedData:(id)data matchesData:(id)matchesData withSecPublicDeviceIdentity:(__SecKey *)identity diversifier:(id)diversifier error:(id *)error;
- (IDSMPFullDeviceIdentityContainerEncrypter)initWithRegistrationKeyManager:(id)manager;
- (id)_validateParametersWithFullIdentityToUse:(id)use fullIdentity:(id)identity publicIdentity:(id)publicIdentity inputData:(id)data identifier:(id)identifier forDecryption:(BOOL)decryption;
- (id)batchSignDatas:(id)datas withType:(int64_t)type error:(id *)error;
- (id)decryptData:(id)data decryptionContext:(id)context withPublicDeviceIdentityContainer:(id)container usingIdentifier:(id)identifier isRetry:(BOOL)retry;
- (id)decryptData:(id)data withPublicDeviceIdentityContainer:(id)container error:(id *)error usingIdentifier:(id)identifier isRetry:(BOOL)retry;
- (id)encryptData:(id)data encryptionContext:(id)context forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state withEncryptedAttributes:(id)attributes withPublicDeviceIdentityContainer:(id)container usedIdentifier:(id *)identifier metadata:(id *)self0 error:(id *)self1;
- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes withPublicDeviceIdentityContainer:(id)container error:(id *)error;
- (id)offGridKeyDistributionEncryptData:(id)data encryptionContext:(id)context withPublicDeviceIdentityContainer:(id)container error:(id *)error;
- (id)signData:(id)data usingApplicationKeyIndex:(unsigned __int16)index diversifier:(id)diversifier error:(id *)error;
- (id)signData:(id)data withSignatureType:(int64_t)type error:(id *)error;
@end

@implementation IDSMPFullDeviceIdentityContainerEncrypter

- (IDSMPFullDeviceIdentityContainerEncrypter)initWithRegistrationKeyManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = IDSMPFullDeviceIdentityContainerEncrypter;
  v6 = [(IDSMPFullDeviceIdentityContainerEncrypter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registrationKeyManager, manager);
  }

  return v7;
}

- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes withPublicDeviceIdentityContainer:(id)container error:(id *)error
{
  dataCopy = data;
  attributesCopy = attributes;
  containerCopy = container;
  v13 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainerUsableForKeyType:1];
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v15 = IDSMPLegacyIdentityIdentifier;
  v16 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v13 fullIdentity:fullDeviceIdentityContainer publicIdentity:containerCopy inputData:dataCopy identifier:IDSMPLegacyIdentityIdentifier forDecryption:0];
  if (v16)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v30 = containerCopy;
      v31 = 2112;
      v32 = v13;
      v33 = 2048;
      v34 = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid encryption parameters (using) -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v26 = [dataCopy length];
      _IDSWarnV();
      v27 = [dataCopy length];
      _IDSLogV();
      [dataCopy length];
      _IDSLogTransport();
    }

    if (error)
    {
      v18 = v16;
      v19 = 0;
      *error = v16;
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
    v19 = [containerCopy legacySealMessage:dataCopy withEncryptedAttributes:attributesCopy signedByFullIdentity:v13 usingIdentitiesWithIdentifier:v15 error:{&v28, v25}];
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

      if (error)
      {
        v23 = v21;
        *error = v21;
      }
    }
  }

  return v19;
}

- (id)offGridKeyDistributionEncryptData:(id)data encryptionContext:(id)context withPublicDeviceIdentityContainer:(id)container error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  containerCopy = container;
  v9 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainerUsableForKeyType:2];
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v32 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v9 fullIdentity:fullDeviceIdentityContainer publicIdentity:containerCopy inputData:dataCopy identifier:IDSPaddyIdentityIdentifier forDecryption:0];
  if (v32)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = containerCopy;
      v39 = 2112;
      v40 = v9;
      v41 = 2048;
      v42 = [dataCopy length];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid encryption parameters -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v27 = [dataCopy length];
      _IDSWarnV();
      v28 = [dataCopy length];
      _IDSLogV();
      [dataCopy length];
      _IDSLogTransport();
    }

    if (error)
    {
      v11 = v32;
      v12 = 0;
      v13 = v32;
      *error = v32;
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

    sendingURI = [contextCopy sendingURI];
    prefixedURI = [sendingURI prefixedURI];
    sendingPushToken = [contextCopy sendingPushToken];
    rawToken = [sendingPushToken rawToken];
    receivingURI = [contextCopy receivingURI];
    prefixedURI2 = [receivingURI prefixedURI];
    receivingPushToken = [contextCopy receivingPushToken];
    rawToken2 = [receivingPushToken rawToken];
    v36 = 0;
    v12 = [containerCopy sealPaddyMessage:dataCopy sendingURI:prefixedURI sendingPushToken:rawToken receivingURI:prefixedURI2 receivingPushToken:rawToken2 signedByFullIdentity:v9 error:&v36];
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

      if (error)
      {
        v24 = v22;
        *error = v22;
      }
    }
  }

  v13 = v32;
LABEL_24:

  return v12;
}

- (id)encryptData:(id)data encryptionContext:(id)context forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state withEncryptedAttributes:(id)attributes withPublicDeviceIdentityContainer:(id)container usedIdentifier:(id *)identifier metadata:(id *)self0 error:(id *)self1
{
  dataCopy = data;
  contextCopy = context;
  attributesCopy = attributes;
  containerCopy = container;
  ngmPublicDeviceIdentity = [containerCopy ngmPublicDeviceIdentity];
  v18 = ngmPublicDeviceIdentity;
  if (ngmPublicDeviceIdentity)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainerUsableForKeyType:v19];
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v21 = IDSMPLegacyIdentityIdentifier;
  if (identifier)
  {
    v22 = IDSMPLegacyIdentityIdentifier;
  }

  else
  {
    v22 = 0;
  }

  v64 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:v20 fullIdentity:fullDeviceIdentityContainer publicIdentity:containerCopy inputData:dataCopy identifier:v22 forDecryption:0];
  if (v64)
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v70 = containerCopy;
      v71 = 2112;
      v72 = v20;
      v73 = 2048;
      v74 = [dataCopy length];
      v75 = 2048;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid encryption parameters (used) -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu, identifier: %p}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v48 = [dataCopy length];
      _IDSWarnV();
      v49 = [dataCopy length];
      _IDSLogV();
      [dataCopy length];
      _IDSLogTransport();
    }

    if (error)
    {
      v24 = v64;
      *error = v64;
    }

    v25 = 0;
    if (identifier && !v20)
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
      *identifier = v26;
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

    guid = [contextCopy guid];
    sendingURI = [contextCopy sendingURI];
    sendingPushToken = [contextCopy sendingPushToken];
    receivingURI = [contextCopy receivingURI];
    receivingPushToken = [contextCopy receivingPushToken];
    authenticatedData = [contextCopy authenticatedData];
    messageType = [contextCopy messageType];
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v70 = guid;
      v71 = 2112;
      v72 = sendingURI;
      v73 = 2112;
      v74 = sendingPushToken;
      v75 = 2112;
      identifierCopy = receivingURI;
      v77 = 2112;
      v78 = receivingPushToken;
      v79 = 2112;
      v80 = authenticatedData;
      v81 = 2048;
      v82 = messageType;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Calling into sealMessage with {guid:%@, sendingURI:%@, sendingPushToken:%@, receivingURI:%@, receivingPushToken:%@, authenticatedData:%@, messageType:%ld}", buf, 0x48u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v53 = authenticatedData;
      v54 = messageType;
      v51 = receivingURI;
      v52 = receivingPushToken;
      v46 = sendingURI;
      v47 = sendingPushToken;
      v44 = guid;
      _IDSLogV();
    }

    prefixedURI = [sendingURI prefixedURI];
    rawToken = [sendingPushToken rawToken];
    prefixedURI2 = [receivingURI prefixedURI];
    rawToken2 = [receivingPushToken rawToken];
    v67 = 0;
    v68 = 0;
    BYTE1(v50) = state;
    LOBYTE(v50) = optimizations;
    v25 = [containerCopy sealMessage:dataCopy authenticatedData:authenticatedData messageType:messageType guid:guid sendingURI:prefixedURI sendingPushToken:rawToken receivingURI:prefixedURI2 receivingPushToken:rawToken2 forceSizeOptimizations:v50 resetState:attributesCopy withEncryptedAttributes:v20 signedByFullIdentity:identifier usedIdentityWithIdentifier:&v68 error:&v67 additionalResult:?];
    v34 = v68;
    v35 = v67;

    v36 = [[IDSEncryptionMetadata alloc] initWithAdditionalEncryptionResult:v35];
    v37 = v36;
    if (metadata)
    {
      v38 = v36;
      *metadata = v37;
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

      if (error)
      {
        v40 = v34;
        *error = v34;
      }

      if ([*identifier isEqualToString:{IDSNGMDeviceIdentityIdentifier, v45}])
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

- (id)decryptData:(id)data withPublicDeviceIdentityContainer:(id)container error:(id *)error usingIdentifier:(id)identifier isRetry:(BOOL)retry
{
  dataCopy = data;
  containerCopy = container;
  identifierCopy = identifier;
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v15 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:fullDeviceIdentityContainer fullIdentity:0 publicIdentity:containerCopy inputData:dataCopy identifier:identifierCopy forDecryption:1];
  if (v15)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v36 = containerCopy;
      v37 = 2112;
      v38 = fullDeviceIdentityContainer;
      v39 = 2048;
      v40 = [dataCopy length];
      v41 = 2048;
      v42 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid decryption parameters -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu, identifier: %p}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v31 = [dataCopy length];
      _IDSWarnV();
      v32 = [dataCopy length];
      _IDSLogV();
      [dataCopy length];
      _IDSLogTransport();
    }

    if (error)
    {
      v17 = v15;
      v18 = 0;
      *error = v15;
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
      v36 = fullDeviceIdentityContainer;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v28 = fullDeviceIdentityContainer;
      _IDSLogV();
    }

    v34 = 0;
    v18 = [fullDeviceIdentityContainer unsealMessage:dataCopy signedByPublicIdentity:containerCopy usingIdentityWithIdentifier:identifierCopy error:{&v34, v28}];
    v20 = v34;
    if (v18)
    {
      previousFullDeviceIdentityContainer = fullDeviceIdentityContainer;
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

      previousFullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager previousFullDeviceIdentityContainer];

      if (previousFullDeviceIdentityContainer)
      {
        v23 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = previousFullDeviceIdentityContainer;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using previous full identity: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v30 = previousFullDeviceIdentityContainer;
          _IDSLogV();
        }

        v33 = 0;
        v18 = [previousFullDeviceIdentityContainer unsealMessage:dataCopy signedByPublicIdentity:containerCopy usingIdentityWithIdentifier:identifierCopy error:{&v33, v30}];
        v24 = v33;
        if (error && !v18)
        {
          v25 = v20;
          *error = v20;
        }
      }

      else if (error)
      {
        v26 = v20;
        previousFullDeviceIdentityContainer = 0;
        v18 = 0;
        *error = v20;
      }

      else
      {
        previousFullDeviceIdentityContainer = 0;
        v18 = 0;
      }
    }

    fullDeviceIdentityContainer = previousFullDeviceIdentityContainer;
  }

  return v18;
}

- (id)decryptData:(id)data decryptionContext:(id)context withPublicDeviceIdentityContainer:(id)container usingIdentifier:(id)identifier isRetry:(BOOL)retry
{
  dataCopy = data;
  contextCopy = context;
  containerCopy = container;
  identifierCopy = identifier;
  v35 = self->_registrationKeyManager;
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)v35 fullDeviceIdentityContainer];
  v36 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self _validateParametersWithFullIdentityToUse:fullDeviceIdentityContainer fullIdentity:0 publicIdentity:containerCopy inputData:dataCopy identifier:identifierCopy forDecryption:1];
  if (v36)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v48 = containerCopy;
      v49 = 2112;
      v50 = fullDeviceIdentityContainer;
      v51 = 2048;
      v52 = [dataCopy length];
      v53 = 2048;
      v54 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid decryption parameters -- failing {publicDeviceIdentityContainer: %@, fullIdentity: %@, inputDataLength: %llu, identifier: %p}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v28 = [dataCopy length];
      _IDSWarnV();
      v29 = [dataCopy length];
      _IDSLogV();
      [dataCopy length];
      _IDSLogTransport();
    }

    guid = objc_alloc_init(CUTUnsafePromiseSeal);
    [guid failWithError:v36];
    promise = [guid promise];
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = fullDeviceIdentityContainer;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using full identity: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v27 = fullDeviceIdentityContainer;
      _IDSLogV();
    }

    guid = [contextCopy guid];
    sendingURI = [contextCopy sendingURI];
    sendingPushToken = [contextCopy sendingPushToken];
    receivingURI = [contextCopy receivingURI];
    receivingPushToken = [contextCopy receivingPushToken];
    authenticatedData = [contextCopy authenticatedData];
    messageType = [contextCopy messageType];
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v48 = guid;
      v49 = 2112;
      v50 = sendingURI;
      v51 = 2112;
      v52 = sendingPushToken;
      v53 = 2112;
      v54 = receivingURI;
      v55 = 2112;
      v56 = receivingPushToken;
      v57 = 2112;
      v58 = authenticatedData;
      v59 = 2048;
      v60 = messageType;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling into unsealMessage with {guid:%@, sendingURI:%@, sendingPushToken:%@, receivingURI:%@, receivingPushToken:%@, authenticatedData:%@, messageType:%ld}", buf, 0x48u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v19 = objc_alloc_init(CUTUnsafePromiseSeal);
    prefixedURI = [sendingURI prefixedURI];
    rawToken = [sendingPushToken rawToken];
    prefixedURI2 = [receivingURI prefixedURI];
    rawToken2 = [receivingPushToken rawToken];
    v24 = [fullDeviceIdentityContainer unsealMessage:dataCopy authenticatedData:authenticatedData messageType:messageType guid:guid sendingURI:prefixedURI sendingPushToken:rawToken receivingURI:prefixedURI2 receivingPushToken:rawToken2 signedByPublicIdentity:containerCopy usingIdentityWithIdentifier:identifierCopy];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1003439A4;
    v40[3] = &unk_100BD8800;
    v41 = v35;
    v42 = v19;
    v43 = dataCopy;
    v44 = contextCopy;
    v45 = containerCopy;
    v46 = identifierCopy;
    v25 = v19;
    [v24 registerResultBlock:v40];

    promise = [v25 promise];
  }

  return promise;
}

- (id)_validateParametersWithFullIdentityToUse:(id)use fullIdentity:(id)identity publicIdentity:(id)publicIdentity inputData:(id)data identifier:(id)identifier forDecryption:(BOOL)decryption
{
  decryptionCopy = decryption;
  useCopy = use;
  identityCopy = identity;
  publicIdentityCopy = publicIdentity;
  dataCopy = data;
  identifierCopy = identifier;
  v18 = &IDSDecryptionErrorDomain;
  if (!decryptionCopy)
  {
    v18 = &IDSEncryptionErrorDomain;
  }

  v19 = *v18;
  if (!useCopy)
  {
    v21 = !decryptionCopy;
    if (identityCopy)
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

  if (!publicIdentityCopy)
  {
    v21 = !decryptionCopy;
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

  if (![dataCopy length])
  {
    v21 = !decryptionCopy;
    v22 = 18;
    v23 = 7;
    goto LABEL_14;
  }

  if (!identifierCopy)
  {
    v21 = !decryptionCopy;
    v22 = 19;
    v23 = 8;
    goto LABEL_14;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (id)signData:(id)data withSignatureType:(int64_t)type error:(id *)error
{
  dataCopy = data;
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v10 = fullDeviceIdentityContainer;
  if (fullDeviceIdentityContainer)
  {
    v18 = 0;
    v11 = [fullDeviceIdentityContainer signDataWithNGMIdentity:dataCopy forType:type error:&v18];
    v12 = v18;
    v13 = v12;
    if (error && !v11)
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

      *error = [NSError errorWithDomain:IDSSigningErrorDomain code:12 userInfo:v14, v17];
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:IDSSigningErrorDomain code:11 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)signData:(id)data usingApplicationKeyIndex:(unsigned __int16)index diversifier:(id)diversifier error:(id *)error
{
  indexCopy = index;
  dataToSign = data;
  diversifierCopy = diversifier;
  if (![(IDSRegistrationKeyManager *)self->_registrationKeyManager fullIdentityForKeyIndex:indexCopy]|| (v11 = CFRetain([(IDSRegistrationKeyManager *)self->_registrationKeyManager fullIdentityForKeyIndex:indexCopy])) == 0)
  {
    if (error)
    {
      [NSError errorWithDomain:IDSSigningErrorDomain code:11 userInfo:0];
      *error = v25 = 0;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v12 = v11;
  if (!diversifierCopy)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:IDSSigningErrorDomain code:15 userInfo:0];
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
  diversifier = [diversifierCopy diversifier];
  trackingPreventionSecret = [diversifierCopy trackingPreventionSecret];
  v37 = 0;
  v16 = [v13 diversifyPrivateKey:v12 withDocumentIdentifier:diversifier trackingPreventionSalt:trackingPreventionSecret error:&v37];
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
  diversifier2 = [diversifierCopy diversifier];
  trackingPreventionSecret2 = [diversifierCopy trackingPreventionSecret];
  v36 = v17;
  v21 = [v18 diversifyPrivateKey:v12 withDocumentIdentifier:diversifier2 trackingPreventionSalt:trackingPreventionSecret2 error:&v36];
  v22 = v36;

  v23 = CFRetain(v21);
  if (!v23)
  {
    v17 = v22;
    if (!v22)
    {
LABEL_31:
      v30 = 0;
      if (!error)
      {
LABEL_33:
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v41 = v12;
          v42 = 2112;
          v43 = diversifierCopy;
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
      *error = [NSError errorWithDomain:IDSSigningErrorDomain code:15 userInfo:v30];
      goto LABEL_33;
    }

LABEL_28:
    v46 = NSUnderlyingErrorKey;
    v47 = v17;
    v30 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    if (!error)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  CFRelease(v12);

  error = 0;
  v24 = SecKeyCreateSignature(v23, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, dataToSign, &error);
  v25 = v24;
  errorCopy = error;
  if (!error || v24)
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
      errorCopy2 = error;
      v27 = [NSDictionary dictionaryWithObjects:&errorCopy2 forKeys:&v38 count:1];
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = errorCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Security Error signing data: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v33 = errorCopy;
        _IDSLogV();
      }
    }

    else
    {
      v27 = 0;
    }

    *error = [NSError errorWithDomain:IDSSigningErrorDomain code:13 userInfo:v27, v33];
  }

  CFRelease(v23);
LABEL_40:

  return v25;
}

- (id)batchSignDatas:(id)datas withType:(int64_t)type error:(id *)error
{
  datasCopy = datas;
  fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)self->_registrationKeyManager fullDeviceIdentityContainer];
  v10 = fullDeviceIdentityContainer;
  if (fullDeviceIdentityContainer)
  {
    v18 = 0;
    v11 = [fullDeviceIdentityContainer batchSignWithNGMIdentity:datasCopy forType:type error:&v18];
    v12 = v18;
    v13 = [v11 count];
    if (error && !v13)
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

      *error = [NSError errorWithDomain:IDSSigningErrorDomain code:12 userInfo:v14, v17];
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:IDSSigningErrorDomain code:11 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type withPublicDeviceIdentity:(id)identity error:(id *)error
{
  dataCopy = data;
  matchesDataCopy = matchesData;
  identityCopy = identity;
  v14 = identityCopy;
  if (identityCopy)
  {
    v23 = 0;
    v15 = [identityCopy isValidSignature:dataCopy forMessage:matchesDataCopy forType:type error:&v23];
    v16 = v23;
    v17 = v16;
    if (error)
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

      *error = [NSError errorWithDomain:IDSSigningErrorDomain code:12 userInfo:v19, v22];
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:IDSSigningErrorDomain code:10 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)verifySignedData:(id)data matchesData:(id)matchesData withSecPublicDeviceIdentity:(__SecKey *)identity diversifier:(id)diversifier error:(id *)error
{
  dataCopy = data;
  matchesDataCopy = matchesData;
  diversifierCopy = diversifier;
  v14 = diversifierCopy;
  if (!identity)
  {
    if (error)
    {
      v15 = [NSError errorWithDomain:IDSSigningErrorDomain code:10 userInfo:0];
      goto LABEL_7;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_23;
  }

  if (diversifierCopy)
  {
    if (error)
    {
      v15 = [NSError errorWithDomain:IDSSigningErrorDomain code:15 userInfo:0];
LABEL_7:
      v16 = 0;
      *error = v15;
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  error = 0;
  v17 = SecKeyVerifySignature(identity, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, dataCopy, matchesDataCopy, &error);
  errorCopy = error;
  if (!error || v17)
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
      errorCopy2 = error;
      v19 = [NSDictionary dictionaryWithObjects:&errorCopy2 forKeys:&v26 count:1];
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = errorCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Security Error verifying signing data: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v22 = errorCopy;
        _IDSLogV();
      }
    }

    else
    {
      v19 = 0;
    }

    *error = [NSError errorWithDomain:IDSSigningErrorDomain code:13 userInfo:v19, v22];
  }

  v16 = 1;
LABEL_23:

  return v16;
}

@end