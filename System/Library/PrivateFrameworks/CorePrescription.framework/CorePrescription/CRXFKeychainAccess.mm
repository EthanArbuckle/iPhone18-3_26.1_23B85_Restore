@interface CRXFKeychainAccess
- (BOOL)deleteASAKeyWithName:(id)a3 error:(id *)a4;
- (BOOL)deleteAllASAKeysWithError:(id *)a3;
- (CRXFKeychainAccess)initWithDeviceModel:(id)a3;
- (id)createASAKeyWithError:(id *)a3;
- (id)createErrorForStatus:(int)a3 fromFunction:(id)a4;
- (id)derivePublicKeyFromPrivateKey:(id)a3 error:(id *)a4;
- (id)insertASAKey:(id)a3 withName:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)fetchASAKeysWithCompletion:(id)a3;
@end

@implementation CRXFKeychainAccess

- (CRXFKeychainAccess)initWithDeviceModel:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CRXFKeychainAccess;
  v5 = [(CRXFKeychainAccess *)&v32 init];
  if (v5)
  {
    v6 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v5->_log;
    v5->_log = v6;

    v8 = [v4 copy];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v8;

    v5->_keyType = *MEMORY[0x277CDC040];
    valuePtr = 384;
    v5->_keySizeInBits = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    v11 = *MEMORY[0x277CDC028];
    key = *MEMORY[0x277CDC028];
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], v5->_keyType);
    v12 = *MEMORY[0x277CDC018];
    v27 = *MEMORY[0x277CDC018];
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC018], v5->_keySizeInBits);
    v5->_createQuery = CFDictionaryCreateCopy(0, Mutable);
    CFRelease(Mutable);
    v13 = CFDictionaryCreateMutable(0, 0, 0, 0);
    v14 = *MEMORY[0x277CDC228];
    v15 = *MEMORY[0x277CDC250];
    CFDictionarySetValue(v13, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
    v16 = *MEMORY[0x277CDBFE0];
    v17 = *MEMORY[0x277CDBFF0];
    CFDictionarySetValue(v13, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDBFF0]);
    CFDictionarySetValue(v13, v11, v5->_keyType);
    CFDictionarySetValue(v13, v12, v5->_keySizeInBits);
    v30 = v4;
    v18 = *MEMORY[0x277CDBFD0];
    v19 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v13, *MEMORY[0x277CDBFD0], *MEMORY[0x277CBED28]);
    v20 = *MEMORY[0x277CDC140];
    CFDictionarySetValue(v13, *MEMORY[0x277CDC140], v19);
    v21 = *MEMORY[0x277CDBEC8];
    CFDictionarySetValue(v13, *MEMORY[0x277CDBEC8], @"com.apple.RealityDevice");
    v29 = *MEMORY[0x277CDC568];
    CFDictionarySetValue(v13, *MEMORY[0x277CDC568], v19);
    v5->_addQuery = CFDictionaryCreateCopy(0, v13);
    CFRelease(v13);
    v22 = CFDictionaryCreateMutable(0, 0, 0, 0);
    CFDictionarySetValue(v22, v14, v15);
    CFDictionarySetValue(v22, v16, v17);
    CFDictionarySetValue(v22, key, v5->_keyType);
    CFDictionarySetValue(v22, v27, v5->_keySizeInBits);
    v23 = v18;
    v4 = v30;
    CFDictionarySetValue(v22, v23, v19);
    CFDictionarySetValue(v22, v20, v19);
    CFDictionarySetValue(v22, v21, @"com.apple.RealityDevice");
    v5->_deleteOrUpdateQuery = CFDictionaryCreateCopy(0, v22);
    CFDictionarySetValue(v22, *MEMORY[0x277CDC550], v19);
    CFDictionarySetValue(v22, *MEMORY[0x277CDC558], v19);
    CFDictionarySetValue(v22, v29, v19);
    CFDictionarySetValue(v22, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
    v5->_findAllQuery = CFDictionaryCreateCopy(0, v22);
    CFRelease(v22);
    v24 = [CRXUDispatchQueue serialQueueWithName:@"CRXFKeychainAccessQueue"];
    queue = v5->_queue;
    v5->_queue = v24;
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
  v3.super_class = CRXFKeychainAccess;
  [(CRXFKeychainAccess *)&v3 dealloc];
}

- (void)fetchASAKeysWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CRXFKeychainAccess_fetchASAKeysWithCompletion___block_invoke;
  v7[3] = &unk_278EA0300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CRXUDispatchQueue *)queue dispatchAsync:v7];
}

void __49__CRXFKeychainAccess_fetchASAKeysWithCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v53 = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = SecItemCopyMatching(*(*(a1 + 32) + 32), &result);
  switch(v2)
  {
    case 0:
      v41 = [MEMORY[0x277CBEB18] array];
      if (CFArrayGetCount(result) < 1)
      {
LABEL_37:
        v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:{1, v39}];
        v46 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        [v41 sortUsingDescriptors:v34];

        v35 = *(v1 + 40);
        v36 = [MEMORY[0x277CBEA60] arrayWithArray:v41];
        (*(v35 + 16))(v35, v36, 0);

        goto LABEL_41;
      }

      v5 = 0;
      v6 = *MEMORY[0x277CDC5E8];
      v7 = *MEMORY[0x277CDC5F8];
      key = *MEMORY[0x277CDC080];
      v42 = *MEMORY[0x277CDBF90];
      *&v4 = 136315651;
      v39 = v4;
      v40 = v1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(result, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, v6);
        if (Value)
        {
          v10 = Value;
          v11 = CFGetTypeID(Value);
          if (v11 == CFDataGetTypeID())
          {
            v12 = v10;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = CFDictionaryGetValue(ValueAtIndex, v7);
        v14 = SecKeyCopyPublicKey(v13);
        error = 0;
        v15 = SecKeyCopyExternalRepresentation(v14, &error);
        if (v15)
        {
          v16 = *(*(v1 + 32) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = v16;
            v18 = [v15 crxu_asHexString];
            *buf = v39;
            v48 = "[CRXFKeychainAccess fetchASAKeysWithCompletion:]_block_invoke";
            v49 = 1024;
            v50 = 252;
            v51 = 2113;
            v52 = v18;
            _os_log_debug_impl(&dword_24732C000, v17, OS_LOG_TYPE_DEBUG, "%s @%d: Public Key: %{private}@", buf, 0x1Cu);
          }
        }

        else
        {
          CFRelease(v14);
        }

        CFRelease(v13);
        v19 = CFDictionaryGetValue(ValueAtIndex, key);
        if (v19 && (v20 = v19, v21 = CFGetTypeID(v19), v21 == CFStringGetTypeID()))
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v23 = CFDictionaryGetValue(ValueAtIndex, v42);
        v24 = v23;
        if (!v23)
        {
          goto LABEL_27;
        }

        v25 = CFGetTypeID(v23);
        if (v25 == CFDateGetTypeID())
        {
          break;
        }

        v24 = 0;
        if (v15)
        {
LABEL_30:
          if (v12)
          {
            if (v22)
            {
              v26 = [v22 rangeOfString:@":"];
              if (v26 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v27 = v26;
                v28 = [v22 substringToIndex:v26];
                if ([v28 isEqualToString:*(*(v1 + 32) + 72)])
                {
                  v29 = [v22 substringFromIndex:v27 + 1];
                  v30 = v7;
                  v31 = v6;
                  v32 = [[CRXFASAKey alloc] initWithName:v29 privateKey:v12 publicKey:v15 creationDate:v24];
                  [v41 addObject:v32];

                  v6 = v31;
                  v7 = v30;
                  v1 = v40;
                }
              }
            }
          }
        }

LABEL_36:

        if (CFArrayGetCount(result) <= ++v5)
        {
          goto LABEL_37;
        }
      }

      v24 = v24;
LABEL_27:
      if (v15)
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    case 0xFFFF9D35:
      v3 = *(*(v1 + 32) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v48 = "[CRXFKeychainAccess fetchASAKeysWithCompletion:]_block_invoke";
        v49 = 1024;
        v50 = 222;
        _os_log_impl(&dword_24732C000, v3, OS_LOG_TYPE_INFO, "%s @%d: Keychain is not available (syncing of user items may be disabled)", buf, 0x12u);
      }

      goto LABEL_8;
    case 0xFFFF9D2C:
      if (os_log_type_enabled(*(*(v1 + 32) + 8), OS_LOG_TYPE_DEBUG))
      {
        __49__CRXFKeychainAccess_fetchASAKeysWithCompletion___block_invoke_cold_1();
      }

LABEL_8:
      (*(*(v1 + 40) + 16))();
      goto LABEL_41;
  }

  v37 = [*(v1 + 32) createErrorForStatus:v2 fromFunction:@"SecItemCopyMatching"];
  if (os_log_type_enabled(*(*(v1 + 32) + 8), OS_LOG_TYPE_ERROR))
  {
    __49__CRXFKeychainAccess_fetchASAKeysWithCompletion___block_invoke_cold_2();
  }

  (*(*(v1 + 40) + 16))();

LABEL_41:
  v38 = *MEMORY[0x277D85DE8];
}

- (id)insertASAKey:(id)a3 withName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CRXFKeychainAccess *)self prefixedNameForName:v9];
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, self->_addQuery);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CDC5E8], v8);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CDC080], v10);
  v12 = [v10 dataUsingEncoding:4];
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CDBF28], v12);
  result = 0;
  v13 = SecItemAdd(MutableCopy, &result);
  CFRelease(MutableCopy);
  if (v13)
  {
    *a5 = [(CRXFKeychainAccess *)self createErrorForStatus:v13 fromFunction:@"SecItemAdd"];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFKeychainAccess insertASAKey:a5 withName:? error:?];
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
        [CRXFKeychainAccess insertASAKey:a5 withName:? error:?];
      }

      goto LABEL_4;
    }

    v17 = v16;
    v18 = SecKeyCopyExternalRepresentation(v16, &v20);
    CFRelease(v17);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFKeychainAccess insertASAKey:withName:error:];
    }

    CFRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  v14 = [[CRXFASAKey alloc] initWithName:v9 privateKey:v8 publicKey:v18 creationDate:0];

LABEL_12:

  return v14;
}

- (BOOL)deleteASAKeyWithName:(id)a3 error:(id *)a4
{
  deleteOrUpdateQuery = self->_deleteOrUpdateQuery;
  v7 = a3;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, deleteOrUpdateQuery);
  v9 = [(CRXFKeychainAccess *)self prefixedNameForName:v7];

  v10 = [v9 dataUsingEncoding:4];
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CDBF28], v10);
  v11 = SecItemDelete(MutableCopy);
  CFRelease(MutableCopy);
  if (v11)
  {
    *a4 = [(CRXFKeychainAccess *)self createErrorForStatus:v11 fromFunction:@"SecItemDelete"];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFKeychainAccess deleteASAKeyWithName:a4 error:?];
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
      [CRXFKeychainAccess deleteAllASAKeysWithError:];
    }

    goto LABEL_5;
  }

  *a3 = [(CRXFKeychainAccess *)self createErrorForStatus:v5 fromFunction:@"SecItemDelete"];
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    [CRXFKeychainAccess deleteAllASAKeysWithError:a3];
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
        [CRXFKeychainAccess createASAKeyWithError:a3];
      }
    }

    CFRelease(v6);
  }

  else
  {
    *a3 = error;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFKeychainAccess createASAKeyWithError:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (id)derivePublicKeyFromPrivateKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], self->_keyType);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDBFF0]);
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
      [CRXFKeychainAccess derivePublicKeyFromPrivateKey:error:];
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
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SecCopyErrorMessageString(a3, 0);
  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA590];
  v13[0] = *MEMORY[0x277CCA450];
  v13[1] = @"keychainFunction";
  v14[0] = v6;
  v14[1] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v7 errorWithDomain:v8 code:a3 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__CRXFKeychainAccess_fetchASAKeysWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__CRXFKeychainAccess_fetchASAKeysWithCompletion___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_24732C000, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)insertASAKey:(uint64_t *)a1 withName:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_24732C000, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)insertASAKey:withName:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)insertASAKey:(uint64_t *)a1 withName:error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_24732C000, v1, v2, "%s @%d: Error deriving public key: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteASAKeyWithName:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_24732C000, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllASAKeysWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllASAKeysWithError:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_24732C000, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createASAKeyWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_24732C000, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createASAKeyWithError:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_24732C000, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)derivePublicKeyFromPrivateKey:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end