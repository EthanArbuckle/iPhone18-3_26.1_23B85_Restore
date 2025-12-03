@interface MDKeyRing
+ (id)defaultKeyRing;
- (BOOL)createKeychainItemForKey:(id)key;
- (MDKeyRing)init;
- (__CFUUID)_createKeyUUIDWithAccount:(id)account password:(id)password;
- (__SecKey)getKey:(id)key;
- (id)allKeyUUIDs;
- (id)copyDecryptedData:(id)data withKeyUUID:(id)d iv1:(unsigned int)iv1 iv2:(unsigned int)iv2;
- (id)copyEncryptedData:(id)data withKeyUUID:(id)d iv1:(unsigned int)iv1 iv2:(unsigned int)iv2;
- (id)copyPrivateKeyQuery:(id)query;
- (id)createRandomAESKey;
- (id)createRandomUUID;
- (id)dictionaryToSecItemFormat:(id)format;
- (id)fetchKeyFromKeychain:(id)keychain;
- (id)secItemFormatToDictionary:(id)dictionary;
- (int)restoreFromExistingKey:(id)key;
- (void)dealloc;
- (void)scheduleAccessToKey:(__CFUUID *)key onQueue:(id)global_queue usingBlock:(id)block;
- (void)writeToKeychain:(id)keychain;
@end

@implementation MDKeyRing

- (id)createRandomUUID
{
  v2 = 0;
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  do
  {
    *(v5 + v2) = arc4random();
    v2 += 4;
  }

  while (v2 != 16);
  result = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v5];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (__CFUUID)_createKeyUUIDWithAccount:(id)account password:(id)password
{
  *&md.byte0 = 0;
  *&md.byte8 = 0;
  memset(&v11, 0, sizeof(v11));
  CC_MD5_Init(&v11);
  CC_MD5_Update(&v11, "obvious", 8u);
  uTF8String = [account UTF8String];
  v7 = strlen(uTF8String);
  CC_MD5_Update(&v11, uTF8String, v7 + 1);
  uTF8String2 = [password UTF8String];
  v9 = strlen(uTF8String2);
  CC_MD5_Update(&v11, uTF8String2, v9);
  CC_MD5_Final(&md.byte0, &v11);
  md.byte6 = md.byte6 & 0xF | 0x30;
  md.byte8 = md.byte8 & 0x3F | 0x80;
  return CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], md);
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
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*MEMORY[0x277CDC250] forKey:*MEMORY[0x277CDC228]];
    [v3 setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
    [v3 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDC550]];
    addStandardKeychainAttributesToDictionary(v3);
    v4 = SecItemCopyMatching(v3, &result);

    v5 = result;
    if (result)
    {
      if (v4)
      {
        NSLog(&cfstr_Secitemcopymat.isa, v4);
        v5 = result;
      }

      v6 = [v5 indexesOfObjectsPassingTest:&__block_literal_global_1];
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x3052000000;
      v10[3] = __Block_byref_object_copy_;
      v10[4] = __Block_byref_object_dispose_;
      v10[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __17__MDKeyRing_init__block_invoke_9;
      v9[3] = &unk_278D633E0;
      v9[4] = v2;
      v9[5] = v10;
      [result enumerateObjectsAtIndexes:v6 options:0 usingBlock:v9];
      CFRelease(result);
      result = 0;
      _Block_object_dispose(v10, 8);
    }

    if (!v2->_designatedKeyUUID)
    {
      createRandomUUID = [(MDKeyRing *)v2 createRandomUUID];
      v2->_designatedKeyUUID = createRandomUUID;
      [(MDKeyRing *)v2 fetchKeyFromKeychain:createRandomUUID];
    }

    v2->_queue = dispatch_queue_create("com.apple.metadata.MDRemoteKeyRing", 0);
  }

  if (result)
  {
    CFRelease(result);
  }

  return v2;
}

uint64_t __17__MDKeyRing_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277CDC080]];
  if (v2 == *MEMORY[0x277CBEEE8])
  {
    v2 = 0;
  }

  return [v2 hasPrefix:@"Spotlight Metadata Privacy"];
}

void __17__MDKeyRing_init__block_invoke_9(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:*MEMORY[0x277CDBF28]];
  v5 = *MEMORY[0x277CBEEE8];
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return;
  }

  v7 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    if ([v7 length] != 16)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
      v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];

      goto LABEL_10;
    }

    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
  }

  v10 = v9;
  [*(*(a1 + 32) + 24) setObject:v5 forKey:v9];
LABEL_10:
  v11 = *(a1 + 32);
  v12 = (*(*(a1 + 40) + 8) + 40);

  updateDesignatedUUIDIfNewer(v11, a2, v10, v12);
}

+ (id)defaultKeyRing
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__MDKeyRing_defaultKeyRing__block_invoke;
  block[3] = &unk_278D63408;
  block[4] = self;
  if (defaultKeyRing_once != -1)
  {
    dispatch_once(&defaultKeyRing_once, block);
  }

  result = defaultKeyRing_sKeyRing;
  if (!defaultKeyRing_sKeyRing)
  {
    return objc_alloc_init(self);
  }

  return result;
}

id __27__MDKeyRing_defaultKeyRing__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  defaultKeyRing_sKeyRing = result;
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
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__MDKeyRing_allKeyUUIDs__block_invoke;
  v5[3] = &unk_278D63430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __24__MDKeyRing_allKeyUUIDs__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) allKeys];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (__SecKey)getKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (key)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__MDKeyRing_getKey___block_invoke;
    block[3] = &unk_278D63458;
    block[5] = key;
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

void __20__MDKeyRing_getKey___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) == *MEMORY[0x277CBEEE8])
  {
    v6[0] = 0;
    v6[1] = 0;
    [*(a1 + 40) getUUIDBytes:v6];
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:16];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CDC438], *MEMORY[0x277CDC428], *MEMORY[0x277CDC250], *MEMORY[0x277CDC228], *MEMORY[0x277CDC008], *MEMORY[0x277CDBFE0], v2, *MEMORY[0x277CDBF28], *MEMORY[0x277CBED28], *MEMORY[0x277CDC568], 0, 0}];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    SecItemCopyMatching(v3, (*(*(a1 + 48) + 8) + 24));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (v4)
    {
      [*(*(a1 + 32) + 24) setObject:v4 forKey:*(a1 + 40)];
      CFRelease(*(*(*(a1 + 48) + 8) + 24));
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleAccessToKey:(__CFUUID *)key onQueue:(id)global_queue usingBlock:(id)block
{
  if (!global_queue)
  {
    v8 = qos_class_self();
    global_queue = dispatch_get_global_queue(v8, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MDKeyRing_scheduleAccessToKey_onQueue_usingBlock___block_invoke;
  block[3] = &unk_278D63480;
  block[5] = block;
  block[6] = key;
  block[4] = self;
  dispatch_async(global_queue, block);
}

uint64_t __52__MDKeyRing_scheduleAccessToKey_onQueue_usingBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) getKey:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (int)restoreFromExistingKey:(id)key
{
  result = 0;
  v5 = [(MDKeyRing *)self copyPrivateKeyQuery:?];
  v6 = SecItemCopyMatching(v5, &result);

  keysByUUID = [(MDKeyRing *)self keysByUUID];
  if (!keysByUUID)
  {
    keysByUUID = objc_opt_new();
    [(MDKeyRing *)self setKeysByUUID:keysByUUID];
  }

  v8 = [(NSMutableDictionary *)keysByUUID objectForKey:key];
  if (!v8 || (v9 = v8, v8 == *MEMORY[0x277CBEEE8]))
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)keysByUUID setObject:v9 forKey:key];
  }

  v10 = result;
  if (!v6 && result)
  {
    [v9 setObject:result forKey:*MEMORY[0x277CDC5E8]];
    v10 = result;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

- (id)copyPrivateKeyQuery:(id)query
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:*MEMORY[0x277CDC250] forKey:*MEMORY[0x277CDC228]];
  mDUUIDData = [query MDUUIDData];
  [v4 setObject:mDUUIDData forKey:*MEMORY[0x277CDBF28]];
  addStandardKeychainAttributesToDictionary(v4);
  return v4;
}

- (id)fetchKeyFromKeychain:(id)keychain
{
  v5 = [(MDKeyRing *)self restoreFromExistingKey:?];
  if (v5)
  {
    if (v5 == -25300)
    {
      if ([(MDKeyRing *)self createKeychainItemForKey:keychain])
      {
        [(MDKeyRing *)self writeToKeychain:keychain];
        [(MDKeyRing *)self restoreFromExistingKey:keychain];
        goto LABEL_5;
      }
    }

    else
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        [(MDKeyRing *)v9 fetchKeyFromKeychain:v10, v11, v12, v13, v14, v15, v16];
      }
    }

    return 0;
  }

LABEL_5:
  v6 = [(NSMutableDictionary *)[(MDKeyRing *)self keysByUUID] objectForKey:keychain];
  v7 = *MEMORY[0x277CDC5E8];

  return [v6 objectForKey:v7];
}

- (id)createRandomAESKey
{
  v2 = 0;
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  do
  {
    *(v5 + v2) = arc4random();
    v2 += 4;
  }

  while (v2 != 16);
  result = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v5 length:16];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)createKeychainItemForKey:(id)key
{
  v28[2] = *MEMORY[0x277D85DE8];
  keysByUUID = [(MDKeyRing *)self keysByUUID];
  if (!keysByUUID)
  {
    keysByUUID = objc_opt_new();
    [(MDKeyRing *)self setKeysByUUID:keysByUUID];
  }

  v6 = [(NSMutableDictionary *)keysByUUID objectForKey:key];
  if (!v6)
  {
    v6 = objc_opt_new();
    [(NSMutableDictionary *)keysByUUID setObject:v6 forKey:key];
  }

  if ([v6 count])
  {
    if (SecItemDelete([(MDKeyRing *)self dictionaryToSecItemFormat:v6]))
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        [(MDKeyRing *)v7 createKeychainItemForKey:v8, v9, v10, v11, v12, v13, v14];
      }
    }
  }

  createRandomAESKey = [(MDKeyRing *)self createRandomAESKey];
  if (createRandomAESKey)
  {
    [v6 setObject:createRandomAESKey forKey:*MEMORY[0x277CDC5E8]];
    addStandardKeychainAttributesToDictionary(v6);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", @"Spotlight Metadata Privacy", objc_msgSend(key, "UUIDString")];
    [v6 setObject:v16 forKey:*MEMORY[0x277CDC080]];
    v28[0] = 0;
    v28[1] = 0;
    [key getUUIDBytes:v28];
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:16];
    [v6 setObject:v17 forKey:*MEMORY[0x277CDBF28]];
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(MDKeyRing *)v18 createKeychainItemForKey:v19, v20, v21, v22, v23, v24, v25];
    }
  }

  result = createRandomAESKey != 0;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)writeToKeychain:(id)keychain
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
        v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:result];
        v8 = *MEMORY[0x277CDC228];
        [v7 setObject:objc_msgSend(v5 forKey:{"objectForKey:", *MEMORY[0x277CDC228]), *MEMORY[0x277CDC228]}];
        v9 = [(MDKeyRing *)self dictionaryToSecItemFormat:[(NSMutableDictionary *)[(MDKeyRing *)self keysByUUID] objectForKey:keychain]];
        [v9 removeObjectForKey:v8];
        if (SecItemUpdate(v7, v9))
        {
          v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v10)
          {
            [(MDKeyRing *)v10 writeToKeychain:v11, v12, v13, v14, v15, v16, v17];
          }
        }

        goto LABEL_15;
      }
    }
  }

  v18 = [(NSMutableDictionary *)[(MDKeyRing *)self keysByUUID] objectForKey:keychain];
  v19 = SecItemAdd([(MDKeyRing *)self dictionaryToSecItemFormat:v18], 0);
  if (v19 == -25299)
  {
    if (SecItemDelete([(MDKeyRing *)self dictionaryToSecItemFormat:v18]))
    {
      goto LABEL_11;
    }

    v19 = SecItemAdd([(MDKeyRing *)self dictionaryToSecItemFormat:v18], 0);
  }

  if (v19)
  {
LABEL_11:
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      [(MDKeyRing *)v20 writeToKeychain:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  if (result)
  {
    CFRelease(result);
  }

LABEL_15:
}

- (id)dictionaryToSecItemFormat:(id)format
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  [v4 setObject:*MEMORY[0x277CDC250] forKey:*MEMORY[0x277CDC228]];
  v5 = *MEMORY[0x277CDC5E8];
  v6 = [format objectForKey:*MEMORY[0x277CDC5E8]];
  if (v6)
  {
    [v4 setObject:v6 forKey:v5];
  }

  return v4;
}

- (id)secItemFormatToDictionary:(id)dictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  [v3 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDC558]];
  [v3 setObject:*MEMORY[0x277CDC250] forKey:*MEMORY[0x277CDC228]];
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  if (v4 == -25300)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [(MDKeyRing *)v5 secItemFormatToDictionary:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  else if (v4)
  {
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v13)
    {
      [(MDKeyRing *)v13 secItemFormatToDictionary:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  else
  {
    [v3 setObject:result forKey:*MEMORY[0x277CDC5E8]];
  }

  return v3;
}

- (id)copyEncryptedData:(id)data withKeyUUID:(id)d iv1:(unsigned int)iv1 iv2:(unsigned int)iv2
{
  v11 = [(MDKeyRing *)self fetchKeyFromKeychain:d];
  if (v11 || ([(MDKeyRing *)self createKeychainItemForKey:d], (v11 = [(MDKeyRing *)self fetchKeyFromKeychain:d]) != 0))
  {
    v12 = v11;
    bytes = [data bytes];
    v14 = [data length];

    return _copyCryptedDataWithKey(0, bytes, v14, v12, iv1, iv2);
  }

  else
  {
    NSLog(&cfstr_NoKeyDataFor.isa, d);
    return 0;
  }
}

- (id)copyDecryptedData:(id)data withKeyUUID:(id)d iv1:(unsigned int)iv1 iv2:(unsigned int)iv2
{
  result = [(MDKeyRing *)self fetchKeyFromKeychain:d];
  if (result || ([(MDKeyRing *)self createKeychainItemForKey:d], (result = [(MDKeyRing *)self fetchKeyFromKeychain:d]) != 0))
  {
    v12 = result;
    bytes = [data bytes];
    v14 = [data length];

    return _copyCryptedDataWithKey(1u, bytes, v14, v12, iv1, iv2);
  }

  return result;
}

@end