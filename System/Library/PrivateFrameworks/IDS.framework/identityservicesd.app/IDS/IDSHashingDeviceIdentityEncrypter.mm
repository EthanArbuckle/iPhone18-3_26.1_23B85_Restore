@interface IDSHashingDeviceIdentityEncrypter
- (IDSHashingDeviceIdentityEncrypter)initWithDeviceIdentityContainerEncrypter:(id)encrypter messageHashChecker:(id)checker;
- (id)_checkMessageHashForData:(id)data identifier:(id)identifier isRetry:(BOOL)retry delayedCommitBlock:(id *)block;
- (id)decryptData:(id)data decryptionContext:(id)context withPublicDeviceIdentityContainer:(id)container usingIdentifier:(id)identifier isRetry:(BOOL)retry;
- (id)decryptData:(id)data withPublicDeviceIdentityContainer:(id)container error:(id *)error usingIdentifier:(id)identifier isRetry:(BOOL)retry;
- (id)decryptData:(id)data withPublicDeviceIdentityContainer:(id)container usingIdentifier:(id)identifier isRetry:(BOOL)retry;
@end

@implementation IDSHashingDeviceIdentityEncrypter

- (IDSHashingDeviceIdentityEncrypter)initWithDeviceIdentityContainerEncrypter:(id)encrypter messageHashChecker:(id)checker
{
  encrypterCopy = encrypter;
  checkerCopy = checker;
  v12.receiver = self;
  v12.super_class = IDSHashingDeviceIdentityEncrypter;
  v9 = [(IDSHashingDeviceIdentityEncrypter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fullDeviceIdentityContainerEncrypter, encrypter);
    objc_storeStrong(&v10->_messageHashChecker, checker);
  }

  return v10;
}

- (id)_checkMessageHashForData:(id)data identifier:(id)identifier isRetry:(BOOL)retry delayedCommitBlock:(id *)block
{
  dataCopy = data;
  if ([identifier isEqualToString:IDSMPLegacyIdentityIdentifier])
  {
    v11 = [(IDSMessageHashChecker *)self->_messageHashChecker allowMessageData:dataCopy withDelayedCommitBlock:block];
    v12 = 0;
    if ((v11 & 1) == 0 && !retry)
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

- (id)decryptData:(id)data withPublicDeviceIdentityContainer:(id)container error:(id *)error usingIdentifier:(id)identifier isRetry:(BOOL)retry
{
  retryCopy = retry;
  dataCopy = data;
  containerCopy = container;
  identifierCopy = identifier;
  v15 = [(IDSHashingDeviceIdentityEncrypter *)self _checkMessageHashForData:dataCopy identifier:identifierCopy isRetry:retryCopy delayedCommitBlock:0];
  v16 = v15;
  if (error && v15)
  {
    v17 = v15;
    v18 = 0;
    *error = v16;
  }

  else
  {
    v18 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:dataCopy withPublicDeviceIdentityContainer:containerCopy error:error usingIdentifier:identifierCopy isRetry:retryCopy];
  }

  return v18;
}

- (id)decryptData:(id)data withPublicDeviceIdentityContainer:(id)container usingIdentifier:(id)identifier isRetry:(BOOL)retry
{
  retryCopy = retry;
  dataCopy = data;
  containerCopy = container;
  identifierCopy = identifier;
  v20 = 0;
  v13 = [(IDSHashingDeviceIdentityEncrypter *)self _checkMessageHashForData:dataCopy identifier:identifierCopy isRetry:retryCopy delayedCommitBlock:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v15 failWithError:v13];
    promise = [v15 promise];
  }

  else
  {
    v15 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:dataCopy decryptionContext:0 withPublicDeviceIdentityContainer:containerCopy usingIdentifier:identifierCopy isRetry:retryCopy];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003D203C;
    v18[3] = &unk_100BDA4D8;
    v19 = v14;
    promise = [v15 then:v18];
  }

  return promise;
}

- (id)decryptData:(id)data decryptionContext:(id)context withPublicDeviceIdentityContainer:(id)container usingIdentifier:(id)identifier isRetry:(BOOL)retry
{
  retryCopy = retry;
  dataCopy = data;
  contextCopy = context;
  containerCopy = container;
  identifierCopy = identifier;
  v23 = 0;
  v16 = [(IDSHashingDeviceIdentityEncrypter *)self _checkMessageHashForData:dataCopy identifier:identifierCopy isRetry:retryCopy delayedCommitBlock:&v23];
  v17 = v23;
  if (v16)
  {
    v18 = objc_alloc_init(CUTUnsafePromiseSeal);
    [v18 failWithError:v16];
    promise = [v18 promise];
  }

  else
  {
    v18 = [(IDSMPFullDeviceIdentityContainerEncrypter *)self->_fullDeviceIdentityContainerEncrypter decryptData:dataCopy decryptionContext:contextCopy withPublicDeviceIdentityContainer:containerCopy usingIdentifier:identifierCopy isRetry:retryCopy];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003D22E4;
    v21[3] = &unk_100BDA4D8;
    v22 = v17;
    promise = [v18 then:v21];
  }

  return promise;
}

@end