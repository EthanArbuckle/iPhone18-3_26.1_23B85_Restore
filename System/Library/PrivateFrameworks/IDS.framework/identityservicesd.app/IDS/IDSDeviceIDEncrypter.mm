@interface IDSDeviceIDEncrypter
- (IDSDeviceIDEncrypter)initWithPublicKeyStorage:(id)storage accountController:(id)controller fullDeviceIdentityContainerEncrypter:(id)encrypter rateLimiter:(id)limiter forceLegacy:(BOOL)legacy;
- (id)_decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry;
- (id)_decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry error:(id *)error;
- (id)_legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes error:(id *)error;
- (id)_validateDecryptionParametersWithError:(id *)error;
- (id)decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry onQueue:(id)queue error:(id *)error;
- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue error:(id *)error;
- (void)decryptData:(id)data usingIdentifier:(id)identifier onQueue:(id)queue isRetry:(BOOL)retry replayKey:(id)key withCompletion:(id)completion;
- (void)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue withCompletion:(id)completion;
@end

@implementation IDSDeviceIDEncrypter

- (IDSDeviceIDEncrypter)initWithPublicKeyStorage:(id)storage accountController:(id)controller fullDeviceIdentityContainerEncrypter:(id)encrypter rateLimiter:(id)limiter forceLegacy:(BOOL)legacy
{
  storageCopy = storage;
  controllerCopy = controller;
  encrypterCopy = encrypter;
  limiterCopy = limiter;
  v20.receiver = self;
  v20.super_class = IDSDeviceIDEncrypter;
  v17 = [(IDSDeviceIDEncrypter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_publicKeyStorage, storage);
    objc_storeStrong(&v18->_accountController, controller);
    objc_storeStrong(&v18->_fullDeviceIdentityContainerEncrypter, encrypter);
    objc_storeStrong(&v18->_rateLimiter, limiter);
    v18->_forceLegacy = legacy;
  }

  return v18;
}

- (id)_legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes error:(id *)error
{
  dataCopy = data;
  attributesCopy = attributes;
  deviceID = [(IDSDeviceIDEncrypter *)self deviceID];
  v11 = [deviceID isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];

  if (v11)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Tried to PK to default paired device!! -- failing", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    if (error)
    {
      v13 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:2 userInfo:0];
LABEL_17:
      v16 = 0;
      *error = v13;
      goto LABEL_27;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_27;
  }

  deviceID2 = [(IDSDeviceIDEncrypter *)self deviceID];

  if (!deviceID2)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Tried to encrypt to nil device ID -- failing", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    if (error)
    {
      v13 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:3 userInfo:0];
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v15 = [(IDSPublicKeyStorage *)self->_publicKeyStorage publicDeviceIdentityContainerForDeviceID:self->_deviceID];
  if (v15)
  {
    v16 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy withPublicDeviceIdentityContainer:v15 error:error];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      deviceID3 = [(IDSDeviceIDEncrypter *)self deviceID];
      *buf = 138412290;
      v25 = deviceID3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing identity to encrypt with {deviceID: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      deviceID4 = [(IDSDeviceIDEncrypter *)self deviceID];
      _IDSWarnV();

      deviceID5 = [(IDSDeviceIDEncrypter *)self deviceID];
      _IDSLogV();

      deviceID6 = [(IDSDeviceIDEncrypter *)self deviceID];
      _IDSLogTransport();
    }

    if (error)
    {
      [NSError errorWithDomain:IDSEncryptionErrorDomain code:4 userInfo:0];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_27:

  return v16;
}

- (id)_validateDecryptionParametersWithError:(id *)error
{
  deviceID = [(IDSDeviceIDEncrypter *)self deviceID];

  if (deviceID)
  {
    v6 = [(IDSPublicKeyStorage *)self->_publicKeyStorage publicDeviceIdentityContainerForDeviceID:self->_deviceID];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        deviceID2 = [(IDSDeviceIDEncrypter *)self deviceID];
        *buf = 138412290;
        v17 = deviceID2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing identity to decrypt with {deviceID: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        deviceID3 = [(IDSDeviceIDEncrypter *)self deviceID];
        _IDSWarnV();

        deviceID4 = [(IDSDeviceIDEncrypter *)self deviceID];
        _IDSLogV();

        deviceID5 = [(IDSDeviceIDEncrypter *)self deviceID];
        _IDSLogTransport();
      }

      if (error)
      {
        *error = [NSError errorWithDomain:IDSDecryptionErrorDomain code:4 userInfo:0];
      }
    }
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Tried to encrypt to nil device ID -- failing", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    if (error)
    {
      [NSError errorWithDomain:IDSDecryptionErrorDomain code:3 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  v11 = [(IDSDeviceIDEncrypter *)self _validateDecryptionParametersWithError:error];
  if (v11)
  {
    v12 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:dataCopy withPublicDeviceIdentityContainer:v11 error:error usingIdentifier:identifierCopy isRetry:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry
{
  dataCopy = data;
  identifierCopy = identifier;
  v14 = 0;
  v9 = [(IDSDeviceIDEncrypter *)self _validateDecryptionParametersWithError:&v14];
  v10 = v14;
  if (v9)
  {
    promise = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:dataCopy decryptionContext:0 withPublicDeviceIdentityContainer:v9 usingIdentifier:identifierCopy isRetry:0];
  }

  else
  {
    v12 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v12 failWithError:v10];
    promise = [v12 promise];
  }

  return promise;
}

- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue error:(id *)error
{
  dataCopy = data;
  attributesCopy = attributes;
  queueCopy = queue;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10000A8D8;
  v33 = sub_10000BBEC;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000A8D8;
  v27 = sub_10000BBEC;
  v28 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10037F664;
  v18[3] = &unk_100BD98F0;
  v21 = &v29;
  v18[4] = self;
  v13 = dataCopy;
  v19 = v13;
  v14 = attributesCopy;
  v20 = v14;
  v22 = &v23;
  [queueCopy performSyncBlock:v18];
  if (error)
  {
    v15 = v24[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v16;
}

- (void)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue withCompletion:(id)completion
{
  dataCopy = data;
  attributesCopy = attributes;
  queueCopy = queue;
  completionCopy = completion;
  deviceID = [(IDSDeviceIDEncrypter *)self deviceID];
  v15 = [deviceID isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];

  if (v15)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Tried to PK to default paired device!! -- failing", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v17 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v17, 0);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10037F920;
  v22[3] = &unk_100BD9620;
  v22[4] = self;
  v23 = dataCopy;
  v25 = queueCopy;
  v26 = completionCopy;
  v24 = attributesCopy;
  v18 = queueCopy;
  v19 = completionCopy;
  v20 = attributesCopy;
  v21 = dataCopy;
  [v18 performAsyncBlock:v22];
}

- (id)decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry onQueue:(id)queue error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  queueCopy = queue;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10000A8D8;
  v35 = sub_10000BBEC;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000A8D8;
  v29 = sub_10000BBEC;
  v30 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100380194;
  v19[3] = &unk_100BD9918;
  v22 = &v31;
  v19[4] = self;
  v15 = dataCopy;
  v20 = v15;
  v16 = identifierCopy;
  retryCopy = retry;
  v21 = v16;
  v23 = &v25;
  [queueCopy performSyncBlock:v19];
  if (error)
  {
    *error = v26[5];
  }

  v17 = v32[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (void)decryptData:(id)data usingIdentifier:(id)identifier onQueue:(id)queue isRetry:(BOOL)retry replayKey:(id)key withCompletion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100380328;
  v19[3] = &unk_100BD9990;
  v19[4] = self;
  v20 = dataCopy;
  retryCopy = retry;
  queueCopy = queue;
  completionCopy = completion;
  v21 = identifierCopy;
  v15 = queueCopy;
  v16 = completionCopy;
  v17 = identifierCopy;
  v18 = dataCopy;
  [v15 performAsyncBlock:v19];
}

@end