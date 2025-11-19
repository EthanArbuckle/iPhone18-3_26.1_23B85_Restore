@interface IDSDeviceIDEncrypter
- (IDSDeviceIDEncrypter)initWithPublicKeyStorage:(id)a3 accountController:(id)a4 fullDeviceIdentityContainerEncrypter:(id)a5 rateLimiter:(id)a6 forceLegacy:(BOOL)a7;
- (id)_decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5;
- (id)_decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5 error:(id *)a6;
- (id)_legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 error:(id *)a5;
- (id)_validateDecryptionParametersWithError:(id *)a3;
- (id)decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5 onQueue:(id)a6 error:(id *)a7;
- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 error:(id *)a6;
- (void)decryptData:(id)a3 usingIdentifier:(id)a4 onQueue:(id)a5 isRetry:(BOOL)a6 replayKey:(id)a7 withCompletion:(id)a8;
- (void)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 withCompletion:(id)a6;
@end

@implementation IDSDeviceIDEncrypter

- (IDSDeviceIDEncrypter)initWithPublicKeyStorage:(id)a3 accountController:(id)a4 fullDeviceIdentityContainerEncrypter:(id)a5 rateLimiter:(id)a6 forceLegacy:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = IDSDeviceIDEncrypter;
  v17 = [(IDSDeviceIDEncrypter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_publicKeyStorage, a3);
    objc_storeStrong(&v18->_accountController, a4);
    objc_storeStrong(&v18->_fullDeviceIdentityContainerEncrypter, a5);
    objc_storeStrong(&v18->_rateLimiter, a6);
    v18->_forceLegacy = a7;
  }

  return v18;
}

- (id)_legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(IDSDeviceIDEncrypter *)self deviceID];
  v11 = [v10 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];

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

    if (a5)
    {
      v13 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:2 userInfo:0];
LABEL_17:
      v16 = 0;
      *a5 = v13;
      goto LABEL_27;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_27;
  }

  v14 = [(IDSDeviceIDEncrypter *)self deviceID];

  if (!v14)
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

    if (a5)
    {
      v13 = [NSError errorWithDomain:IDSEncryptionErrorDomain code:3 userInfo:0];
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v15 = [(IDSPublicKeyStorage *)self->_publicKeyStorage publicDeviceIdentityContainerForDeviceID:self->_deviceID];
  if (v15)
  {
    v16 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter legacyEncryptData:v8 withEncryptedAttributes:v9 withPublicDeviceIdentityContainer:v15 error:a5];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(IDSDeviceIDEncrypter *)self deviceID];
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing identity to encrypt with {deviceID: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v21 = [(IDSDeviceIDEncrypter *)self deviceID];
      _IDSWarnV();

      v22 = [(IDSDeviceIDEncrypter *)self deviceID];
      _IDSLogV();

      v23 = [(IDSDeviceIDEncrypter *)self deviceID];
      _IDSLogTransport();
    }

    if (a5)
    {
      [NSError errorWithDomain:IDSEncryptionErrorDomain code:4 userInfo:0];
      *a5 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_27:

  return v16;
}

- (id)_validateDecryptionParametersWithError:(id *)a3
{
  v5 = [(IDSDeviceIDEncrypter *)self deviceID];

  if (v5)
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
        v11 = [(IDSDeviceIDEncrypter *)self deviceID];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing identity to decrypt with {deviceID: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v13 = [(IDSDeviceIDEncrypter *)self deviceID];
        _IDSWarnV();

        v14 = [(IDSDeviceIDEncrypter *)self deviceID];
        _IDSLogV();

        v15 = [(IDSDeviceIDEncrypter *)self deviceID];
        _IDSLogTransport();
      }

      if (a3)
      {
        *a3 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:4 userInfo:0];
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

    if (a3)
    {
      [NSError errorWithDomain:IDSDecryptionErrorDomain code:3 userInfo:0];
      *a3 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [(IDSDeviceIDEncrypter *)self _validateDecryptionParametersWithError:a6];
  if (v11)
  {
    v12 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:v9 withPublicDeviceIdentityContainer:v11 error:a6 usingIdentifier:v10 isRetry:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v14 = 0;
  v9 = [(IDSDeviceIDEncrypter *)self _validateDecryptionParametersWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:v7 decryptionContext:0 withPublicDeviceIdentityContainer:v9 usingIdentifier:v8 isRetry:0];
  }

  else
  {
    v12 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v12 failWithError:v10];
    v11 = [v12 promise];
  }

  return v11;
}

- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  v13 = v10;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v22 = &v23;
  [v12 performSyncBlock:v18];
  if (a6)
  {
    v15 = v24[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v16;
}

- (void)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IDSDeviceIDEncrypter *)self deviceID];
  v15 = [v14 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];

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
    (*(v13 + 2))(v13, 0, v17, 0);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10037F920;
  v22[3] = &unk_100BD9620;
  v22[4] = self;
  v23 = v10;
  v25 = v12;
  v26 = v13;
  v24 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v11;
  v21 = v10;
  [v18 performAsyncBlock:v22];
}

- (id)decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5 onQueue:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
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
  v15 = v12;
  v20 = v15;
  v16 = v13;
  v24 = a5;
  v21 = v16;
  v23 = &v25;
  [v14 performSyncBlock:v19];
  if (a7)
  {
    *a7 = v26[5];
  }

  v17 = v32[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (void)decryptData:(id)a3 usingIdentifier:(id)a4 onQueue:(id)a5 isRetry:(BOOL)a6 replayKey:(id)a7 withCompletion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100380328;
  v19[3] = &unk_100BD9990;
  v19[4] = self;
  v20 = v13;
  v24 = a6;
  v22 = a5;
  v23 = a8;
  v21 = v14;
  v15 = v22;
  v16 = v23;
  v17 = v14;
  v18 = v13;
  [v15 performAsyncBlock:v19];
}

@end