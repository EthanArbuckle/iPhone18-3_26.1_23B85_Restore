@interface IDSSigningEncrypter
- (IDSSigningEncrypter)initWithKeyType:(unsigned int)type keyDiversifier:(id)diversifier service:(id)service serviceController:(id)controller fullDeviceIdentitySigner:(id)signer;
- (id)_signData:(id)data withType:(int64_t)type error:(id *)error;
- (id)batchSignDatas:(id)datas withType:(int64_t)type onQueue:(id)queue error:(id *)error;
- (id)signData:(id)data withType:(int64_t)type onQueue:(id)queue error:(id *)error;
- (unsigned)_retrieveKeyIndex;
- (void)batchSignDatas:(id)datas withType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion;
- (void)signData:(id)data withType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion;
@end

@implementation IDSSigningEncrypter

- (IDSSigningEncrypter)initWithKeyType:(unsigned int)type keyDiversifier:(id)diversifier service:(id)service serviceController:(id)controller fullDeviceIdentitySigner:(id)signer
{
  diversifierCopy = diversifier;
  serviceCopy = service;
  controllerCopy = controller;
  signerCopy = signer;
  v20.receiver = self;
  v20.super_class = IDSSigningEncrypter;
  v17 = [(IDSSigningEncrypter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_keyType = type;
    objc_storeStrong(&v17->_keyDiversifier, diversifier);
    objc_storeStrong(&v18->_service, service);
    objc_storeStrong(&v18->_serviceController, controller);
    v18->_keyIndex = [(IDSSigningEncrypter *)v18 _retrieveKeyIndex];
    objc_storeStrong(&v18->_fullDeviceIdentitySigner, signer);
  }

  return v18;
}

- (void)batchSignDatas:(id)datas withType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D4E88;
  v11[3] = &unk_100BDA5D0;
  v11[4] = self;
  datasCopy = datas;
  completionCopy = completion;
  typeCopy = type;
  v9 = completionCopy;
  v10 = datasCopy;
  [queue performAsyncBlock:v11];
}

- (void)signData:(id)data withType:(int64_t)type onQueue:(id)queue withCompletion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D507C;
  v11[3] = &unk_100BDA5D0;
  v11[4] = self;
  dataCopy = data;
  completionCopy = completion;
  typeCopy = type;
  v9 = completionCopy;
  v10 = dataCopy;
  [queue performAsyncBlock:v11];
}

- (id)batchSignDatas:(id)datas withType:(int64_t)type onQueue:(id)queue error:(id *)error
{
  datasCopy = datas;
  queueCopy = queue;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10000A8F8;
  v24 = sub_10000BBFC;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003D52E8;
  v15[3] = &unk_100BDA5F8;
  v17 = &v20;
  v15[4] = self;
  v12 = datasCopy;
  v16 = v12;
  typeCopy = type;
  errorCopy = error;
  [queueCopy performSyncBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)signData:(id)data withType:(int64_t)type onQueue:(id)queue error:(id *)error
{
  dataCopy = data;
  queueCopy = queue;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000A8F8;
  v31 = sub_10000BBFC;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000A8F8;
  v25 = sub_10000BBFC;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003D551C;
  v16[3] = &unk_100BDA620;
  v18 = &v27;
  v16[4] = self;
  v12 = dataCopy;
  v19 = &v21;
  typeCopy = type;
  v17 = v12;
  [queueCopy performSyncBlock:v16];
  if (error)
  {
    v13 = v22[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (unsigned)_retrieveKeyIndex
{
  if ([(IDSSigningEncrypter *)self keyType]!= 1)
  {
    return 0;
  }

  serviceController = [(IDSSigningEncrypter *)self serviceController];
  service = [(IDSSigningEncrypter *)self service];
  v5 = [serviceController serviceWithIdentifier:service];
  applicationKeyIndex = [v5 applicationKeyIndex];

  return applicationKeyIndex;
}

- (id)_signData:(id)data withType:(int64_t)type error:(id *)error
{
  dataCopy = data;
  keyType = [(IDSSigningEncrypter *)self keyType];
  if (keyType == 1)
  {
    if ([(IDSSigningEncrypter *)self keyIndex])
    {
      fullDeviceIdentitySigner = [(IDSSigningEncrypter *)self fullDeviceIdentitySigner];
      keyIndex = [(IDSSigningEncrypter *)self keyIndex];
      keyDiversifier = [(IDSSigningEncrypter *)self keyDiversifier];
      v11 = [fullDeviceIdentitySigner signData:dataCopy usingApplicationKeyIndex:keyIndex diversifier:keyDiversifier error:error];

      goto LABEL_9;
    }

    if (error)
    {
      [NSError errorWithDomain:IDSSigningErrorDomain code:5 userInfo:0];
      *error = v11 = 0;
      goto LABEL_9;
    }
  }

  else if (!keyType)
  {
    fullDeviceIdentitySigner2 = [(IDSSigningEncrypter *)self fullDeviceIdentitySigner];
    v11 = [fullDeviceIdentitySigner2 signData:dataCopy withSignatureType:type error:error];

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end