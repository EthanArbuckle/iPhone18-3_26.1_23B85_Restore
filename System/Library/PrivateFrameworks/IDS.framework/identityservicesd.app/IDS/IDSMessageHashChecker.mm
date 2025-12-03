@interface IDSMessageHashChecker
- (BOOL)allowMessageData:(id)data;
- (BOOL)allowMessageData:(id)data withDelayedCommitBlock:(id *)block;
- (IDSMessageHashChecker)initWithRegistrationKeyManager:(id)manager;
- (IDSMessageHashChecker)initWithRegistrationKeyManager:(id)manager messageHashStore:(id)store usePairingKey:(BOOL)key;
- (id)_legacyIdentity;
@end

@implementation IDSMessageHashChecker

- (IDSMessageHashChecker)initWithRegistrationKeyManager:(id)manager
{
  managerCopy = manager;
  v5 = +[IDSMessageHashStore sharedInstance];
  v6 = [(IDSMessageHashChecker *)self initWithRegistrationKeyManager:managerCopy messageHashStore:v5 usePairingKey:1];

  return v6;
}

- (IDSMessageHashChecker)initWithRegistrationKeyManager:(id)manager messageHashStore:(id)store usePairingKey:(BOOL)key
{
  managerCopy = manager;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = IDSMessageHashChecker;
  v11 = [(IDSMessageHashChecker *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_registrationKeyManager, manager);
    objc_storeStrong(&v12->_messageHashStore, store);
    v12->_usePairingKey = key;
  }

  return v12;
}

- (BOOL)allowMessageData:(id)data
{
  dataCopy = data;
  _legacyIdentity = [(IDSMessageHashChecker *)self _legacyIdentity];
  v6 = _legacyIdentity;
  v7 = 0;
  if (dataCopy && _legacyIdentity)
  {
    v13 = 0;
    v8 = [_legacyIdentity protectedHashOfMessageData:dataCopy error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [(IDSMessageHashStore *)self->_messageHashStore containsMessageHash:v8];
      messageHashStore = self->_messageHashStore;
      if (!v10)
      {
        [(IDSMessageHashStore *)messageHashStore addMessageHash:v8];
        v7 = 1;
        goto LABEL_8;
      }

      [(IDSMessageHashStore *)messageHashStore updateCreationDateForHash:v8];
    }

    v7 = 0;
LABEL_8:
  }

  return v7;
}

- (BOOL)allowMessageData:(id)data withDelayedCommitBlock:(id *)block
{
  dataCopy = data;
  _legacyIdentity = [(IDSMessageHashChecker *)self _legacyIdentity];
  v8 = _legacyIdentity;
  v9 = 0;
  if (dataCopy && _legacyIdentity)
  {
    v15 = 0;
    v10 = [_legacyIdentity protectedHashOfMessageData:dataCopy error:&v15];
    v11 = v15;
    if (v10)
    {
      if (![(IDSMessageHashStore *)self->_messageHashStore containsMessageHash:v10])
      {
        if (block)
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_100441448;
          v13[3] = &unk_100BDC4C0;
          v13[4] = self;
          v14 = v10;
          *block = objc_retainBlock(v13);
        }

        else
        {
          [(IDSMessageHashStore *)self->_messageHashStore addMessageHash:v10];
        }

        v9 = 1;
        goto LABEL_11;
      }

      [(IDSMessageHashStore *)self->_messageHashStore updateCreationDateForHash:v10];
    }

    v9 = 0;
LABEL_11:
  }

  return v9;
}

- (id)_legacyIdentity
{
  usePairingKey = self->_usePairingKey;
  registrationKeyManager = self->_registrationKeyManager;
  if (usePairingKey)
  {
    legacyFullIdentity = [(IDSRegistrationKeyManager *)registrationKeyManager latestMessageProtectionFullIdentityForDataProtectionClass:2];
  }

  else
  {
    fullDeviceIdentityContainer = [(IDSRegistrationKeyManager *)registrationKeyManager fullDeviceIdentityContainer];
    legacyFullIdentity = [fullDeviceIdentityContainer legacyFullIdentity];
  }

  return legacyFullIdentity;
}

@end