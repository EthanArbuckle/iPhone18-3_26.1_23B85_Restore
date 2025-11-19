@interface IDSSigningEncrypter
- (IDSSigningEncrypter)initWithKeyType:(unsigned int)a3 keyDiversifier:(id)a4 service:(id)a5 serviceController:(id)a6 fullDeviceIdentitySigner:(id)a7;
- (id)_signData:(id)a3 withType:(int64_t)a4 error:(id *)a5;
- (id)batchSignDatas:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 error:(id *)a6;
- (id)signData:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 error:(id *)a6;
- (unsigned)_retrieveKeyIndex;
- (void)batchSignDatas:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 withCompletion:(id)a6;
- (void)signData:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 withCompletion:(id)a6;
@end

@implementation IDSSigningEncrypter

- (IDSSigningEncrypter)initWithKeyType:(unsigned int)a3 keyDiversifier:(id)a4 service:(id)a5 serviceController:(id)a6 fullDeviceIdentitySigner:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IDSSigningEncrypter;
  v17 = [(IDSSigningEncrypter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_keyType = a3;
    objc_storeStrong(&v17->_keyDiversifier, a4);
    objc_storeStrong(&v18->_service, a5);
    objc_storeStrong(&v18->_serviceController, a6);
    v18->_keyIndex = [(IDSSigningEncrypter *)v18 _retrieveKeyIndex];
    objc_storeStrong(&v18->_fullDeviceIdentitySigner, a7);
  }

  return v18;
}

- (void)batchSignDatas:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 withCompletion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D4E88;
  v11[3] = &unk_100BDA5D0;
  v11[4] = self;
  v12 = a3;
  v13 = a6;
  v14 = a4;
  v9 = v13;
  v10 = v12;
  [a5 performAsyncBlock:v11];
}

- (void)signData:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 withCompletion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003D507C;
  v11[3] = &unk_100BDA5D0;
  v11[4] = self;
  v12 = a3;
  v13 = a6;
  v14 = a4;
  v9 = v13;
  v10 = v12;
  [a5 performAsyncBlock:v11];
}

- (id)batchSignDatas:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
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
  v12 = v10;
  v16 = v12;
  v18 = a4;
  v19 = a6;
  [v11 performSyncBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)signData:(id)a3 withType:(int64_t)a4 onQueue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
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
  v12 = v10;
  v19 = &v21;
  v20 = a4;
  v17 = v12;
  [v11 performSyncBlock:v16];
  if (a6)
  {
    v13 = v22[5];
    if (v13)
    {
      *a6 = v13;
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

  v3 = [(IDSSigningEncrypter *)self serviceController];
  v4 = [(IDSSigningEncrypter *)self service];
  v5 = [v3 serviceWithIdentifier:v4];
  v6 = [v5 applicationKeyIndex];

  return v6;
}

- (id)_signData:(id)a3 withType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IDSSigningEncrypter *)self keyType];
  if (v9 == 1)
  {
    if ([(IDSSigningEncrypter *)self keyIndex])
    {
      v12 = [(IDSSigningEncrypter *)self fullDeviceIdentitySigner];
      v13 = [(IDSSigningEncrypter *)self keyIndex];
      v14 = [(IDSSigningEncrypter *)self keyDiversifier];
      v11 = [v12 signData:v8 usingApplicationKeyIndex:v13 diversifier:v14 error:a5];

      goto LABEL_9;
    }

    if (a5)
    {
      [NSError errorWithDomain:IDSSigningErrorDomain code:5 userInfo:0];
      *a5 = v11 = 0;
      goto LABEL_9;
    }
  }

  else if (!v9)
  {
    v10 = [(IDSSigningEncrypter *)self fullDeviceIdentitySigner];
    v11 = [v10 signData:v8 withSignatureType:a4 error:a5];

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end