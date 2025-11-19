@interface MDKeyRing
+ (id)defaultKeyRing;
- (BOOL)createKeychainItemForKey:(id)a3;
- (MDKeyRing)init;
- (__CFUUID)_createKeyUUIDWithAccount:(id)a3 password:(id)a4;
- (__SecKey)getKey:(id)a3;
- (id)allKeyUUIDs;
- (id)copyDecryptedData:(id)a3 withKeyUUID:(id)a4 iv1:(unsigned int)a5 iv2:(unsigned int)a6;
- (id)copyEncryptedData:(id)a3 withKeyUUID:(id)a4 iv1:(unsigned int)a5 iv2:(unsigned int)a6;
- (id)copyPrivateKeyQuery:(id)a3;
- (id)createRandomAESKey;
- (id)createRandomUUID;
- (id)dictionaryToSecItemFormat:(id)a3;
- (id)fetchKeyFromKeychain:(id)a3;
- (id)secItemFormatToDictionary:(id)a3;
- (int)restoreFromExistingKey:(id)a3;
- (void)dealloc;
- (void)scheduleAccessToKey:(__CFUUID *)a3 onQueue:(id)global_queue usingBlock:(id)a5;
- (void)writeToKeychain:(id)a3;
@end

@implementation MDKeyRing

- (id)createRandomUUID
{
  v2 = 0;
  v4[0] = 0;
  v4[1] = 0;
  do
  {
    *(v4 + v2) = arc4random();
    v2 += 4;
  }

  while (v2 != 16);
  return [[NSUUID alloc] initWithUUIDBytes:v4];
}

- (__CFUUID)_createKeyUUIDWithAccount:(id)a3 password:(id)a4
{
  *&md.byte0 = 0;
  *&md.byte8 = 0;
  memset(&v11, 0, sizeof(v11));
  CC_MD5_Init(&v11);
  CC_MD5_Update(&v11, "obvious", 8u);
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  CC_MD5_Update(&v11, v6, v7 + 1);
  v8 = [a4 UTF8String];
  v9 = strlen(v8);
  CC_MD5_Update(&v11, v8, v9);
  CC_MD5_Final(&md.byte0, &v11);
  md.byte6 = md.byte6 & 0xF | 0x30;
  md.byte8 = md.byte8 & 0x3F | 0x80;
  return CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, md);
}

- (MDKeyRing)init
{
  v11.receiver = self;
  v11.super_class = MDKeyRing;
  result = 0;
  v2 = [(MDKeyRing *)&v11 init];
  if (v2)
  {
    v2->_keysByUUID = objc_opt_new();
    v3 = objc_alloc_init(NSMutableDictionary);
    [v3 setObject:kSecClassKey forKey:kSecClass];
    [v3 setObject:kSecMatchLimitAll forKey:kSecMatchLimit];
    [v3 setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
    sub_100002CF4(v3);
    v4 = SecItemCopyMatching(v3, &result);

    v5 = result;
    if (result)
    {
      if (v4)
      {
        NSLog(@"SecItemCopyMatching osErr:%d", v4);
        v5 = result;
      }

      v6 = [v5 indexesOfObjectsPassingTest:&stru_1000149C0];
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x3052000000;
      v10[3] = sub_100002DE8;
      v10[4] = sub_100002DF8;
      v10[5] = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100002E04;
      v9[3] = &unk_1000149E8;
      v9[4] = v2;
      v9[5] = v10;
      [result enumerateObjectsAtIndexes:v6 options:0 usingBlock:v9];
      CFRelease(result);
      result = 0;
      _Block_object_dispose(v10, 8);
    }

    if (!v2->_designatedKeyUUID)
    {
      v7 = [(MDKeyRing *)v2 createRandomUUID];
      v2->_designatedKeyUUID = v7;
      [(MDKeyRing *)v2 fetchKeyFromKeychain:v7];
    }

    v2->_queue = dispatch_queue_create("com.apple.metadata.MDRemoteKeyRing", 0);
  }

  if (result)
  {
    CFRelease(result);
  }

  return v2;
}

+ (id)defaultKeyRing
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000030E0;
  block[3] = &unk_100014A10;
  block[4] = a1;
  if (qword_10001A118 != -1)
  {
    dispatch_once(&qword_10001A118, block);
  }

  result = qword_10001A120;
  if (!qword_10001A120)
  {
    return objc_alloc_init(a1);
  }

  return result;
}

- (void)dealloc
{
  designatedKeyUUID = self->_designatedKeyUUID;
  if (designatedKeyUUID)
  {
  }

  keysByUUID = self->_keysByUUID;
  if (keysByUUID)
  {
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v6.receiver = self;
  v6.super_class = MDKeyRing;
  [(MDKeyRing *)&v6 dealloc];
}

- (id)allKeyUUIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100002DE8;
  v10 = sub_100002DF8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000325C;
  v5[3] = &unk_100014A38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (__SecKey)getKey:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a3)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003360;
    block[3] = &unk_100014A60;
    block[5] = a3;
    block[6] = &v7;
    block[4] = self;
    dispatch_sync(queue, block);
    v4 = v8[3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)scheduleAccessToKey:(__CFUUID *)a3 onQueue:(id)global_queue usingBlock:(id)a5
{
  if (!global_queue)
  {
    v8 = qos_class_self();
    global_queue = dispatch_get_global_queue(v8, 0);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000035A8;
  block[3] = &unk_100014A88;
  block[5] = a5;
  block[6] = a3;
  block[4] = self;
  dispatch_async(global_queue, block);
}

- (int)restoreFromExistingKey:(id)a3
{
  result = 0;
  v5 = [(MDKeyRing *)self copyPrivateKeyQuery:?];
  v6 = SecItemCopyMatching(v5, &result);

  v7 = [(MDKeyRing *)self keysByUUID];
  if (!v7)
  {
    v7 = objc_opt_new();
    [(MDKeyRing *)self setKeysByUUID:v7];
  }

  v8 = [(NSMutableDictionary *)v7 objectForKey:a3];
  if (!v8 || (v9 = v8, v8 == kCFNull))
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)v7 setObject:v9 forKey:a3];
  }

  v10 = result;
  if (!v6 && result)
  {
    [v9 setObject:result forKey:kSecValueData];
    v10 = result;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

- (id)copyPrivateKeyQuery:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:kSecClassKey forKey:kSecClass];
  [v4 setObject:objc_msgSend(a3 forKey:{"MDUUIDData"), kSecAttrApplicationLabel}];
  sub_100002CF4(v4);
  return v4;
}

- (id)fetchKeyFromKeychain:(id)a3
{
  v5 = [(MDKeyRing *)self restoreFromExistingKey:?];
  if (v5)
  {
    if (v5 == -25300)
    {
      if ([(MDKeyRing *)self createKeychainItemForKey:a3])
      {
        [(MDKeyRing *)self writeToKeychain:a3];
        [(MDKeyRing *)self restoreFromExistingKey:a3];
        goto LABEL_5;
      }
    }

    else
    {
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        sub_10000C87C(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    return 0;
  }

LABEL_5:
  v6 = [(NSMutableDictionary *)[(MDKeyRing *)self keysByUUID] objectForKey:a3];

  return [v6 objectForKey:kSecValueData];
}

- (id)createRandomAESKey
{
  v2 = 0;
  v4[0] = 0;
  v4[1] = 0;
  do
  {
    *(v4 + v2) = arc4random();
    v2 += 4;
  }

  while (v2 != 16);
  return [[NSData alloc] initWithBytes:v4 length:16];
}

- (BOOL)createKeychainItemForKey:(id)a3
{
  v5 = [(MDKeyRing *)self keysByUUID];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(MDKeyRing *)self setKeysByUUID:v5];
  }

  v6 = [(NSMutableDictionary *)v5 objectForKey:a3];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(NSMutableDictionary *)v5 setObject:v6 forKey:a3];
  }

  if ([v6 count])
  {
    if (SecItemDelete([(MDKeyRing *)self dictionaryToSecItemFormat:v6]))
    {
      v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        sub_10000C8B8(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  v15 = [(MDKeyRing *)self createRandomAESKey];
  if (v15)
  {
    [v6 setObject:v15 forKey:kSecValueData];
    sub_100002CF4(v6);
    [v6 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@ (%@)", @"Spotlight Metadata Privacy", objc_msgSend(a3, "UUIDString")), kSecAttrLabel}];
    v25[0] = 0;
    v25[1] = 0;
    [a3 getUUIDBytes:v25];
    [v6 setObject:+[NSData dataWithBytes:length:](NSData forKey:{"dataWithBytes:length:", v25, 16), kSecAttrApplicationLabel}];
  }

  else
  {
    v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      sub_10000C8F4(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return v15 != 0;
}

- (void)writeToKeychain:(id)a3
{
  result = 0;
  v5 = [(MDKeyRing *)self copyPrivateKeyQuery:?];
  if (!SecItemCopyMatching(v5, &result))
  {
    if (result)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(result))
      {
        v7 = [NSMutableDictionary dictionaryWithDictionary:result];
        -[NSMutableDictionary setObject:forKey:](v7, "setObject:forKey:", [v5 objectForKey:kSecClass], kSecClass);
        v8 = [(MDKeyRing *)self dictionaryToSecItemFormat:[(NSMutableDictionary *)[(MDKeyRing *)self keysByUUID] objectForKey:a3]];
        [v8 removeObjectForKey:kSecClass];
        if (SecItemUpdate(v7, v8))
        {
          v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v9)
          {
            sub_10000C96C(v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }

        goto LABEL_15;
      }
    }
  }

  v17 = [(NSMutableDictionary *)[(MDKeyRing *)self keysByUUID] objectForKey:a3];
  v18 = SecItemAdd([(MDKeyRing *)self dictionaryToSecItemFormat:v17], 0);
  if (v18 == -25299)
  {
    if (SecItemDelete([(MDKeyRing *)self dictionaryToSecItemFormat:v17]))
    {
      goto LABEL_11;
    }

    v18 = SecItemAdd([(MDKeyRing *)self dictionaryToSecItemFormat:v17], 0);
  }

  if (v18)
  {
LABEL_11:
    v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      sub_10000C930(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  if (result)
  {
    CFRelease(result);
  }

LABEL_15:
}

- (id)dictionaryToSecItemFormat:(id)a3
{
  v4 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v4 setObject:kSecClassKey forKey:kSecClass];
  v5 = [a3 objectForKey:kSecValueData];
  if (v5)
  {
    [(NSMutableDictionary *)v4 setObject:v5 forKey:kSecValueData];
  }

  return v4;
}

- (id)secItemFormatToDictionary:(id)a3
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:a3];
  [(NSMutableDictionary *)v3 setObject:kCFBooleanTrue forKey:kSecReturnData];
  [(NSMutableDictionary *)v3 setObject:kSecClassKey forKey:kSecClass];
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  if (v4 == -25300)
  {
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_10000C9A8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else if (v4)
  {
    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      sub_10000C9E4(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    [(NSMutableDictionary *)v3 setObject:result forKey:kSecValueData];
  }

  return v3;
}

- (id)copyEncryptedData:(id)a3 withKeyUUID:(id)a4 iv1:(unsigned int)a5 iv2:(unsigned int)a6
{
  v11 = [(MDKeyRing *)self fetchKeyFromKeychain:a4];
  if (v11 || ([(MDKeyRing *)self createKeychainItemForKey:a4], (v11 = [(MDKeyRing *)self fetchKeyFromKeychain:a4]) != 0))
  {
    v12 = v11;
    v13 = [a3 bytes];
    v14 = [a3 length];

    return sub_100003F24(0, v13, v14, v12, a5, a6);
  }

  else
  {
    NSLog(@"No key data for %@", a4);
    return 0;
  }
}

- (id)copyDecryptedData:(id)a3 withKeyUUID:(id)a4 iv1:(unsigned int)a5 iv2:(unsigned int)a6
{
  result = [(MDKeyRing *)self fetchKeyFromKeychain:a4];
  if (result || ([(MDKeyRing *)self createKeychainItemForKey:a4], (result = [(MDKeyRing *)self fetchKeyFromKeychain:a4]) != 0))
  {
    v12 = result;
    v13 = [a3 bytes];
    v14 = [a3 length];

    return sub_100003F24(1u, v13, v14, v12, a5, a6);
  }

  return result;
}

@end