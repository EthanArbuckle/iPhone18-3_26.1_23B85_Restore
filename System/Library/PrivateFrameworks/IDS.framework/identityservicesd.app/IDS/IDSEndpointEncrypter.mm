@interface IDSEndpointEncrypter
- (BOOL)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type onQueue:(id)queue error:(id *)error;
- (IDSEndpointEncrypter)initWithEndpoint:(id)endpoint fullDeviceIdentityContainerEncrypter:(id)encrypter replayCommitter:(id)committer forceEncryptionType:(int64_t)type;
- (IDSEndpointEncrypter)initWithEndpoint:(id)endpoint fullDeviceIdentitySigner:(id)signer keyType:(unsigned int)type keyDiversifier:(id)diversifier;
- (id)decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry onQueue:(id)queue error:(id *)error;
- (id)encryptData:(id)data encryptionContext:(id)context forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state withEncryptedAttributes:(id)attributes usedIdentifier:(id *)identifier onQueue:(id)queue metadata:(id *)self0 error:(id *)self1;
- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue error:(id *)error;
- (void)decryptData:(id)data usingIdentifier:(id)identifier onQueue:(id)queue isRetry:(BOOL)retry replayKey:(id)key withCompletion:(id)completion;
- (void)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion;
@end

@implementation IDSEndpointEncrypter

- (IDSEndpointEncrypter)initWithEndpoint:(id)endpoint fullDeviceIdentityContainerEncrypter:(id)encrypter replayCommitter:(id)committer forceEncryptionType:(int64_t)type
{
  endpointCopy = endpoint;
  encrypterCopy = encrypter;
  committerCopy = committer;
  v17.receiver = self;
  v17.super_class = IDSEndpointEncrypter;
  v14 = [(IDSEndpointEncrypter *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_endpoint, endpoint);
    objc_storeStrong(&v15->_fullDeviceIdentityContainerEncrypter, encrypter);
    objc_storeStrong(&v15->_replayCommitter, committer);
    v15->_forceEncryptionType = type;
  }

  return v15;
}

- (IDSEndpointEncrypter)initWithEndpoint:(id)endpoint fullDeviceIdentitySigner:(id)signer keyType:(unsigned int)type keyDiversifier:(id)diversifier
{
  endpointCopy = endpoint;
  signerCopy = signer;
  diversifierCopy = diversifier;
  v17.receiver = self;
  v17.super_class = IDSEndpointEncrypter;
  v14 = [(IDSEndpointEncrypter *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_endpoint, endpoint);
    objc_storeStrong(&v15->_fullDeviceIdentitySigner, signer);
    v15->_keyType = type;
    objc_storeStrong(&v15->_keyDiversifier, diversifier);
  }

  return v15;
}

- (id)encryptData:(id)data encryptionContext:(id)context forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state withEncryptedAttributes:(id)attributes usedIdentifier:(id *)identifier onQueue:(id)queue metadata:(id *)self0 error:(id *)self1
{
  dataCopy = data;
  contextCopy = context;
  attributesCopy = attributes;
  queueCopy = queue;
  publicDeviceIdentityContainer = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  v21 = publicDeviceIdentityContainer;
  if (self->_endpoint && publicDeviceIdentityContainer)
  {
    if (error)
    {
      *error = 0;
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
    v27 = dataCopy;
    v28 = contextCopy;
    v29 = v21;
    v32 = &v43;
    optimizationsCopy = optimizations;
    stateCopy = state;
    v30 = attributesCopy;
    v33 = &v49;
    v34 = &v37;
    [queueCopy performSyncBlock:v26];
    if (error)
    {
      v22 = v44[5];
      if (v22)
      {
        *error = v22;
      }
    }

    if (identifier)
    {
      *identifier = v50[5];
    }

    if (metadata)
    {
      *metadata = v38[5];
    }

    v23 = v56[5];

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v55, 8);
  }

  else if (error)
  {
    [NSError errorWithDomain:IDSEncryptionErrorDomain code:7 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes onQueue:(id)queue error:(id *)error
{
  dataCopy = data;
  attributesCopy = attributes;
  queueCopy = queue;
  publicDeviceIdentityContainer = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  v14 = publicDeviceIdentityContainer;
  if (self->_endpoint)
  {
    v15 = publicDeviceIdentityContainer == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (error)
    {
      [NSError errorWithDomain:IDSEncryptionErrorDomain code:7 userInfo:0];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = 0;
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
    v20 = dataCopy;
    v21 = attributesCopy;
    v22 = v14;
    v24 = &v31;
    [queueCopy performSyncBlock:v19];
    if (error)
    {
      v17 = v32[5];
      if (v17)
      {
        *error = v17;
      }
    }

    v16 = v26[5];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  return v16;
}

- (id)decryptData:(id)data usingIdentifier:(id)identifier isRetry:(BOOL)retry onQueue:(id)queue error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  queueCopy = queue;
  publicDeviceIdentityContainer = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  if (!publicDeviceIdentityContainer)
  {
    if (error)
    {
      [NSError errorWithDomain:IDSDecryptionErrorDomain code:4 userInfo:0];
      *error = v27 = 0;
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
  v30 = dataCopy;
  v31 = publicDeviceIdentityContainer;
  v34 = &v36;
  v32 = identifierCopy;
  retryCopy = retry;
  [queueCopy performSyncBlock:v29];
  v16 = v37[5];
  if (v16)
  {
    domain = [v16 domain];
    if (![domain isEqualToString:IDSDecryptionErrorDomain] || objc_msgSend(v37[5], "code") != 12 && objc_msgSend(v37[5], "code") != 9)
    {
      goto LABEL_8;
    }

    endpoint = [(IDSEndpointEncrypter *)self endpoint];
    identityContainerDeserializationError = [endpoint identityContainerDeserializationError];
    v20 = identityContainerDeserializationError == 0;

    if (!v20)
    {
      domain = [v37[5] domain];
      code = [v37[5] code];
      v48 = NSUnderlyingErrorKey;
      endpoint2 = [(IDSEndpointEncrypter *)self endpoint];
      identityContainerDeserializationError2 = [endpoint2 identityContainerDeserializationError];
      v49 = identityContainerDeserializationError2;
      v24 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v25 = [NSError errorWithDomain:domain code:code userInfo:v24];
      v26 = v37[5];
      v37[5] = v25;

LABEL_8:
    }
  }

  if (error)
  {
    *error = v37[5];
  }

  v27 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

LABEL_15:

  return v27;
}

- (void)decryptData:(id)data usingIdentifier:(id)identifier onQueue:(id)queue isRetry:(BOOL)retry replayKey:(id)key withCompletion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  queueCopy = queue;
  keyCopy = key;
  completionCopy = completion;
  publicDeviceIdentityContainer = [(IDSEndpoint *)self->_endpoint publicDeviceIdentityContainer];
  if (publicDeviceIdentityContainer)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1005F0324;
    v22[3] = &unk_100BE1AB8;
    v22[4] = self;
    v23 = keyCopy;
    v27 = completionCopy;
    v24 = dataCopy;
    v25 = publicDeviceIdentityContainer;
    v26 = identifierCopy;
    retryCopy = retry;
    [queueCopy performAsyncBlock:v22];
  }

  else
  {
    v20 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:4 userInfo:0];
    v21 = objc_alloc_init(IDSDecryptionMetadata);
    (*(completionCopy + 2))(completionCopy, 0, 0, v20, v21);
  }
}

- (void)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion
{
  dataCopy = data;
  matchesDataCopy = matchesData;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005F08C8;
  v17[3] = &unk_100BE1AE0;
  v17[4] = self;
  v18 = dataCopy;
  completionCopy = completion;
  typeCopy = type;
  v19 = matchesDataCopy;
  v14 = completionCopy;
  v15 = matchesDataCopy;
  v16 = dataCopy;
  [queue performAsyncBlock:v17];
}

- (BOOL)verifySignedData:(id)data matchesData:(id)matchesData forType:(int64_t)type onQueue:(id)queue error:(id *)error
{
  dataCopy = data;
  matchesDataCopy = matchesData;
  queueCopy = queue;
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
  v15 = dataCopy;
  v20 = v15;
  v16 = matchesDataCopy;
  v23 = &v25;
  typeCopy = type;
  v21 = v16;
  [queueCopy performSyncBlock:v19];
  if (error)
  {
    *error = v26[5];
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

@end