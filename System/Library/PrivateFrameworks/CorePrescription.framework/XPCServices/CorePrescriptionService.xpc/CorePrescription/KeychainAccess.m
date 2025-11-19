@interface KeychainAccess
- (BOOL)deleteASAKeyWithName:(id)a3 error:(id *)a4;
- (BOOL)deleteAllASAKeysWithError:(id *)a3;
- (KeychainAccess)initWithDeviceModel:(id)a3;
- (id)createASAKeyWithError:(id *)a3;
- (id)createErrorForStatus:(int)a3 fromFunction:(id)a4;
- (id)derivePublicKeyFromPrivateKey:(id)a3 error:(id *)a4;
- (id)insertASAKey:(id)a3 withName:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)fetchASAKeysWithCompletion:(id)a3;
@end

@implementation KeychainAccess

- (KeychainAccess)initWithDeviceModel:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = KeychainAccess;
  v5 = [(KeychainAccess *)&v17 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.CorePrescription.Service", "CorePrescription");
    log = v5->_log;
    v5->_log = v6;

    v8 = [v4 copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v8;

    v5->_keyType = kSecAttrKeyTypeECSECPrimeRandom;
    valuePtr = 384;
    v5->_keySizeInBits = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    CFDictionarySetValue(Mutable, kSecAttrKeyType, v5->_keyType);
    CFDictionarySetValue(Mutable, kSecAttrKeySizeInBits, v5->_keySizeInBits);
    v5->_createQuery = CFDictionaryCreateCopy(0, Mutable);
    CFRelease(Mutable);
    v11 = CFDictionaryCreateMutable(0, 0, 0, 0);
    CFDictionarySetValue(v11, kSecClass, kSecClassKey);
    CFDictionarySetValue(v11, kSecAttrKeyClass, kSecAttrKeyClassPrivate);
    CFDictionarySetValue(v11, kSecAttrKeyType, v5->_keyType);
    CFDictionarySetValue(v11, kSecAttrKeySizeInBits, v5->_keySizeInBits);
    CFDictionarySetValue(v11, kSecAttrIsPermanent, kCFBooleanTrue);
    CFDictionarySetValue(v11, kSecAttrSynchronizable, kCFBooleanTrue);
    CFDictionarySetValue(v11, kSecAttrAccessGroup, @"com.apple.RealityDevice");
    CFDictionarySetValue(v11, kSecReturnRef, kCFBooleanTrue);
    v5->_addQuery = CFDictionaryCreateCopy(0, v11);
    CFRelease(v11);
    v12 = CFDictionaryCreateMutable(0, 0, 0, 0);
    CFDictionarySetValue(v12, kSecClass, kSecClassKey);
    CFDictionarySetValue(v12, kSecAttrKeyClass, kSecAttrKeyClassPrivate);
    CFDictionarySetValue(v12, kSecAttrKeyType, v5->_keyType);
    CFDictionarySetValue(v12, kSecAttrKeySizeInBits, v5->_keySizeInBits);
    CFDictionarySetValue(v12, kSecAttrIsPermanent, kCFBooleanTrue);
    CFDictionarySetValue(v12, kSecAttrSynchronizable, kCFBooleanTrue);
    CFDictionarySetValue(v12, kSecAttrAccessGroup, @"com.apple.RealityDevice");
    v5->_deleteOrUpdateQuery = CFDictionaryCreateCopy(0, v12);
    CFDictionarySetValue(v12, kSecReturnAttributes, kCFBooleanTrue);
    CFDictionarySetValue(v12, kSecReturnData, kCFBooleanTrue);
    CFDictionarySetValue(v12, kSecReturnRef, kCFBooleanTrue);
    CFDictionarySetValue(v12, kSecMatchLimit, kSecMatchLimitAll);
    v5->_findAllQuery = CFDictionaryCreateCopy(0, v12);
    CFRelease(v12);
    v13 = [CRXUDispatchQueue serialQueueWithName:@"CRXFKeychainAccessQueue"];
    queue = v5->_queue;
    v5->_queue = v13;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_keySizeInBits);
  CFRelease(self->_createQuery);
  CFRelease(self->_addQuery);
  CFRelease(self->_findAllQuery);
  CFRelease(self->_deleteOrUpdateQuery);
  v3.receiver = self;
  v3.super_class = KeychainAccess;
  [(KeychainAccess *)&v3 dealloc];
}

- (void)fetchASAKeysWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002E98;
  v7[3] = &unk_1000A9970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CRXUDispatchQueue *)queue dispatchAsync:v7];
}

- (id)insertASAKey:(id)a3 withName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(KeychainAccess *)self prefixedNameForName:v9];
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, self->_addQuery);
  CFDictionarySetValue(MutableCopy, kSecValueData, v8);
  CFDictionarySetValue(MutableCopy, kSecAttrLabel, v10);
  v12 = [v10 dataUsingEncoding:4];
  CFDictionarySetValue(MutableCopy, kSecAttrApplicationLabel, v12);
  result = 0;
  v13 = SecItemAdd(MutableCopy, &result);
  CFRelease(MutableCopy);
  if (v13)
  {
    *a5 = [(KeychainAccess *)self createErrorForStatus:v13 fromFunction:@"SecItemAdd"];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008062C(a5);
    }

LABEL_4:
    v14 = 0;
    goto LABEL_12;
  }

  v15 = result;
  if (result)
  {
    v20 = 0;
    v16 = SecKeyCopyPublicKey(result);
    if (!v16)
    {
      *a5 = 0;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10008072C(a5);
      }

      goto LABEL_4;
    }

    v17 = v16;
    v18 = SecKeyCopyExternalRepresentation(v16, &v20);
    CFRelease(v17);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_1000806A8();
    }

    CFRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  v14 = [[ASAKey alloc] initWithName:v9 privateKey:v8 publicKey:v18 creationDate:0];

LABEL_12:

  return v14;
}

- (BOOL)deleteASAKeyWithName:(id)a3 error:(id *)a4
{
  deleteOrUpdateQuery = self->_deleteOrUpdateQuery;
  v7 = a3;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, deleteOrUpdateQuery);
  v9 = [(KeychainAccess *)self prefixedNameForName:v7];

  v10 = [v9 dataUsingEncoding:4];
  CFDictionarySetValue(MutableCopy, kSecAttrApplicationLabel, v10);
  v11 = SecItemDelete(MutableCopy);
  CFRelease(MutableCopy);
  if (v11)
  {
    *a4 = [(KeychainAccess *)self createErrorForStatus:v11 fromFunction:@"SecItemDelete"];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000807A8(a4);
    }
  }

  return v11 == 0;
}

- (BOOL)deleteAllASAKeysWithError:(id *)a3
{
  v5 = SecItemDelete(self->_deleteOrUpdateQuery);
  if (!v5)
  {
LABEL_5:
    LOBYTE(v6) = 1;
    return v6;
  }

  if (v5 == -25300)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100080824();
    }

    goto LABEL_5;
  }

  *a3 = [(KeychainAccess *)self createErrorForStatus:v5 fromFunction:@"SecItemDelete"];
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_1000808AC(a3);
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)createASAKeyWithError:(id *)a3
{
  error = 0;
  v5 = SecKeyCreateRandomKey(self->_createQuery, &error);
  if (v5)
  {
    v6 = v5;
    v7 = SecKeyCopyExternalRepresentation(v5, &error);
    if (!v7)
    {
      *a3 = error;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100080928(a3);
      }
    }

    CFRelease(v6);
  }

  else
  {
    *a3 = error;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000809A4(a3);
    }

    v7 = 0;
  }

  return v7;
}

- (id)derivePublicKeyFromPrivateKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  CFDictionarySetValue(Mutable, kSecAttrKeyType, self->_keyType);
  CFDictionarySetValue(Mutable, kSecAttrKeyClass, kSecAttrKeyClassPrivate);
  error = 0;
  v8 = SecKeyCreateWithData(v6, Mutable, &error);

  CFRelease(Mutable);
  if (error)
  {
    v9 = 0;
    *a4 = error;
    goto LABEL_11;
  }

  v10 = SecKeyCopyPublicKey(v8);
  if (!v10)
  {
    v12 = 0;
LABEL_9:
    v12 = v12;
    v9 = v12;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = SecKeyCopyExternalRepresentation(v10, &error);
  if (!error)
  {
    CFRelease(v11);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100080A20();
    }

    goto LABEL_9;
  }

  v9 = 0;
  *a4 = error;
LABEL_10:

LABEL_11:

  return v9;
}

- (id)createErrorForStatus:(int)a3 fromFunction:(id)a4
{
  v5 = a4;
  v6 = SecCopyErrorMessageString(a3, 0);
  v10[0] = NSLocalizedDescriptionKey;
  v10[1] = @"keychain_function";
  v11[0] = v6;
  v11[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a3 userInfo:v7];

  return v8;
}

@end