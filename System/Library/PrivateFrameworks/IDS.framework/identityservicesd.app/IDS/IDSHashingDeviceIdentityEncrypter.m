@interface IDSHashingDeviceIdentityEncrypter
- (IDSHashingDeviceIdentityEncrypter)initWithDeviceIdentityContainerEncrypter:(id)a3 messageHashChecker:(id)a4;
- (id)_checkMessageHashForData:(id)a3 identifier:(id)a4 isRetry:(BOOL)a5 delayedCommitBlock:(id *)a6;
- (id)decryptData:(id)a3 decryptionContext:(id)a4 withPublicDeviceIdentityContainer:(id)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7;
- (id)decryptData:(id)a3 withPublicDeviceIdentityContainer:(id)a4 error:(id *)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7;
- (id)decryptData:(id)a3 withPublicDeviceIdentityContainer:(id)a4 usingIdentifier:(id)a5 isRetry:(BOOL)a6;
@end

@implementation IDSHashingDeviceIdentityEncrypter

- (IDSHashingDeviceIdentityEncrypter)initWithDeviceIdentityContainerEncrypter:(id)a3 messageHashChecker:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSHashingDeviceIdentityEncrypter;
  v9 = [(IDSHashingDeviceIdentityEncrypter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fullDeviceIdentityContainerEncrypter, a3);
    objc_storeStrong(&v10->_messageHashChecker, a4);
  }

  return v10;
}

- (id)_checkMessageHashForData:(id)a3 identifier:(id)a4 isRetry:(BOOL)a5 delayedCommitBlock:(id *)a6
{
  v10 = a3;
  if ([a4 isEqualToString:IDSMPLegacyIdentityIdentifier])
  {
    v11 = [(IDSMessageHashChecker *)self->_messageHashChecker allowMessageData:v10 withDelayedCommitBlock:a6];
    v12 = 0;
    if ((v11 & 1) == 0 && !a5)
    {
      v12 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:5 userInfo:0];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)decryptData:(id)a3 withPublicDeviceIdentityContainer:(id)a4 error:(id *)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(IDSHashingDeviceIdentityEncrypter *)self _checkMessageHashForData:v12 identifier:v14 isRetry:v7 delayedCommitBlock:0];
  v16 = v15;
  if (a5 && v15)
  {
    v17 = v15;
    v18 = 0;
    *a5 = v16;
  }

  else
  {
    v18 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:v12 withPublicDeviceIdentityContainer:v13 error:a5 usingIdentifier:v14 isRetry:v7];
  }

  return v18;
}

- (id)decryptData:(id)a3 withPublicDeviceIdentityContainer:(id)a4 usingIdentifier:(id)a5 isRetry:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20 = 0;
  v13 = [(IDSHashingDeviceIdentityEncrypter *)self _checkMessageHashForData:v10 identifier:v12 isRetry:v6 delayedCommitBlock:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v15 failWithError:v13];
    v16 = [v15 promise];
  }

  else
  {
    v15 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:v10 decryptionContext:0 withPublicDeviceIdentityContainer:v11 usingIdentifier:v12 isRetry:v6];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003D203C;
    v18[3] = &unk_100BDA4D8;
    v19 = v14;
    v16 = [v15 then:v18];
  }

  return v16;
}

- (id)decryptData:(id)a3 decryptionContext:(id)a4 withPublicDeviceIdentityContainer:(id)a5 usingIdentifier:(id)a6 isRetry:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v23 = 0;
  v16 = [(IDSHashingDeviceIdentityEncrypter *)self _checkMessageHashForData:v12 identifier:v15 isRetry:v7 delayedCommitBlock:&v23];
  v17 = v23;
  if (v16)
  {
    v18 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v18 failWithError:v16];
    v19 = [v18 promise];
  }

  else
  {
    v18 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:v12 decryptionContext:v13 withPublicDeviceIdentityContainer:v14 usingIdentifier:v15 isRetry:v7];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003D22E4;
    v21[3] = &unk_100BDA4D8;
    v22 = v17;
    v19 = [v18 then:v21];
  }

  return v19;
}

@end