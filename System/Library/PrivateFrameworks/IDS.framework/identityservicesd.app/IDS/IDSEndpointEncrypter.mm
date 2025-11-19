@interface IDSEndpointEncrypter
- (BOOL)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 onQueue:(id)a6 error:(id *)a7;
- (IDSEndpointEncrypter)initWithEndpoint:(id)a3 fullDeviceIdentityContainerEncrypter:(id)a4 replayCommitter:(id)a5 forceEncryptionType:(int64_t)a6;
- (IDSEndpointEncrypter)initWithEndpoint:(id)a3 fullDeviceIdentitySigner:(id)a4 keyType:(unsigned int)a5 keyDiversifier:(id)a6;
- (id)decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5 onQueue:(id)a6 error:(id *)a7;
- (id)encryptData:(id)a3 encryptionContext:(id)a4 forceSizeOptimizations:(BOOL)a5 resetState:(BOOL)a6 withEncryptedAttributes:(id)a7 usedIdentifier:(id *)a8 onQueue:(id)a9 metadata:(id *)a10 error:(id *)a11;
- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 error:(id *)a6;
- (void)decryptData:(id)a3 usingIdentifier:(id)a4 onQueue:(id)a5 isRetry:(BOOL)a6 replayKey:(id)a7 withCompletion:(id)a8;
- (void)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 onQueue:(id)a6 withCompletion:(id)a7;
@end

@implementation IDSEndpointEncrypter

- (IDSEndpointEncrypter)initWithEndpoint:(id)a3 fullDeviceIdentityContainerEncrypter:(id)a4 replayCommitter:(id)a5 forceEncryptionType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IDSEndpointEncrypter;
  v14 = [(IDSEndpointEncrypter *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_endpoint, a3);
    objc_storeStrong(&v15->_fullDeviceIdentityContainerEncrypter, a4);
    objc_storeStrong(&v15->_replayCommitter, a5);
    v15->_forceEncryptionType = a6;
  }

  return v15;
}

- (IDSEndpointEncrypter)initWithEndpoint:(id)a3 fullDeviceIdentitySigner:(id)a4 keyType:(unsigned int)a5 keyDiversifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IDSEndpointEncrypter;
  v14 = [(IDSEndpointEncrypter *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_endpoint, a3);
    objc_storeStrong(&v15->_fullDeviceIdentitySigner, a4);
    v15->_keyType = a5;
    objc_storeStrong(&v15->_keyDiversifier, a6);
  }

  return v15;
}

- (id)encryptData:(id)a3 encryptionContext:(id)a4 forceSizeOptimizations:(BOOL)a5 resetState:(BOOL)a6 withEncryptedAttributes:(id)a7 usedIdentifier:(id *)a8 onQueue:(id)a9 metadata:(id *)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a9;
  v20 = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  v21 = v20;
  if (self->_endpoint && v20)
  {
    if (a11)
    {
      *a11 = 0;
    }

    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_10000AA84;
    v59 = sub_10000BCB4;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_10000AA84;
    v53 = sub_10000BCB4;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_10000AA84;
    v47 = sub_10000BCB4;
    v48 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_10000AA84;
    v41 = sub_10000BCB4;
    v42 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1005EF8E8;
    v26[3] = &unk_100BE1A18;
    v26[4] = self;
    v31 = &v55;
    v27 = v16;
    v28 = v17;
    v29 = v21;
    v32 = &v43;
    v35 = a5;
    v36 = a6;
    v30 = v18;
    v33 = &v49;
    v34 = &v37;
    [v19 performSyncBlock:v26];
    if (a11)
    {
      v22 = v44[5];
      if (v22)
      {
        *a11 = v22;
      }
    }

    if (a8)
    {
      *a8 = v50[5];
    }

    if (a10)
    {
      *a10 = v38[5];
    }

    v23 = v56[5];

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v55, 8);
  }

  else if (a11)
  {
    [NSError errorWithDomain:IDSEncryptionErrorDomain code:7 userInfo:0];
    *a11 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 onQueue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  v14 = v13;
  if (self->_endpoint)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (a6)
    {
      [NSError errorWithDomain:IDSEncryptionErrorDomain code:7 userInfo:0];
      *a6 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (a6)
    {
      *a6 = 0;
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_10000AA84;
    v35 = sub_10000BCB4;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_10000AA84;
    v29 = sub_10000BCB4;
    v30 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1005EFC8C;
    v19[3] = &unk_100BE1A40;
    v23 = &v25;
    v19[4] = self;
    v20 = v10;
    v21 = v11;
    v22 = v14;
    v24 = &v31;
    [v12 performSyncBlock:v19];
    if (a6)
    {
      v17 = v32[5];
      if (v17)
      {
        *a6 = v17;
      }
    }

    v16 = v26[5];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  return v16;
}

- (id)decryptData:(id)a3 usingIdentifier:(id)a4 isRetry:(BOOL)a5 onQueue:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  if (!v15)
  {
    if (a7)
    {
      [NSError errorWithDomain:IDSDecryptionErrorDomain code:4 userInfo:0];
      *a7 = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_15;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10000AA84;
  v46 = sub_10000BCB4;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10000AA84;
  v40 = sub_10000BCB4;
  v41 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1005F00E0;
  v29[3] = &unk_100BE1A68;
  v33 = &v42;
  v29[4] = self;
  v30 = v12;
  v31 = v15;
  v34 = &v36;
  v32 = v13;
  v35 = a5;
  [v14 performSyncBlock:v29];
  v16 = v37[5];
  if (v16)
  {
    v17 = [v16 domain];
    if (![v17 isEqualToString:IDSDecryptionErrorDomain] || objc_msgSend(v37[5], "code") != 12 && objc_msgSend(v37[5], "code") != 9)
    {
      goto LABEL_8;
    }

    v18 = [(IDSEndpointEncrypter *)self endpoint];
    v19 = [v18 identityContainerDeserializationError];
    v20 = v19 == 0;

    if (!v20)
    {
      v17 = [v37[5] domain];
      v21 = [v37[5] code];
      v48 = NSUnderlyingErrorKey;
      v22 = [(IDSEndpointEncrypter *)self endpoint];
      v23 = [v22 identityContainerDeserializationError];
      v49 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v25 = [NSError errorWithDomain:v17 code:v21 userInfo:v24];
      v26 = v37[5];
      v37[5] = v25;

LABEL_8:
    }
  }

  if (a7)
  {
    *a7 = v37[5];
  }

  v27 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

LABEL_15:

  return v27;
}

- (void)decryptData:(id)a3 usingIdentifier:(id)a4 onQueue:(id)a5 isRetry:(BOOL)a6 replayKey:(id)a7 withCompletion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  if (v19)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1005F0324;
    v22[3] = &unk_100BE1AB8;
    v22[4] = self;
    v23 = v17;
    v27 = v18;
    v24 = v14;
    v25 = v19;
    v26 = v15;
    v28 = a6;
    [v16 performAsyncBlock:v22];
  }

  else
  {
    v20 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:4 userInfo:0];
    v21 = objc_alloc_init(IDSDecryptionMetadata);
    (*(v18 + 2))(v18, 0, 0, v20, v21);
  }
}

- (void)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 onQueue:(id)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005F08C8;
  v17[3] = &unk_100BE1AE0;
  v17[4] = self;
  v18 = v12;
  v20 = a7;
  v21 = a5;
  v19 = v13;
  v14 = v20;
  v15 = v13;
  v16 = v12;
  [a6 performAsyncBlock:v17];
}

- (BOOL)verifySignedData:(id)a3 matchesData:(id)a4 forType:(int64_t)a5 onQueue:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000AA84;
  v29 = sub_10000BCB4;
  v30 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1005F0C7C;
  v19[3] = &unk_100BE1B08;
  v19[4] = self;
  v22 = &v31;
  v15 = v12;
  v20 = v15;
  v16 = v13;
  v23 = &v25;
  v24 = a5;
  v21 = v16;
  [v14 performSyncBlock:v19];
  if (a7)
  {
    *a7 = v26[5];
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

@end