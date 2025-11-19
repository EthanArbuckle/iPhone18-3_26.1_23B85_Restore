@interface SGPersistentSaltProvider
+ (id)hexStringForData:(id)a3;
+ (id)saltProviderFromKeyChainWithServiceIdentifier:(id)a3 accessGroup:(id)a4;
+ (id)saltProviderWithString:(id)a3 serviceIdentifier:(id)a4 accessGroup:(id)a5;
- (SGPersistentSaltProvider)initWithServiceIdentifier:(id)a3 accessGroup:(id)a4;
- (id)_createSalt;
- (id)_findExistingSaltError:(id *)a3;
- (id)_findOrCreateSalt;
- (id)_queryKeychainError:(id *)a3;
- (id)salt;
- (void)_deleteSalt;
@end

@implementation SGPersistentSaltProvider

- (void)_deleteSalt
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_1BA729000, v3, OS_LOG_TYPE_INFO, "Will delete salt", v14, 2u);
  }

  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697ABD0];
  v15[0] = *MEMORY[0x1E697AFF8];
  v15[1] = v5;
  serviceIdentifier = self->_serviceIdentifier;
  accessGroup = self->_accessGroup;
  v16[0] = v4;
  v16[1] = accessGroup;
  v8 = *MEMORY[0x1E697AEB0];
  v15[2] = *MEMORY[0x1E697AE88];
  v15[3] = v8;
  v16[2] = serviceIdentifier;
  v16[3] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v10 = SecItemDelete(v9);
  if (v10)
  {
    v11 = v10;
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = v11;
      _os_log_error_impl(&dword_1BA729000, v12, OS_LOG_TYPE_ERROR, "Error deleting salt: %d", v14, 8u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_createSalt
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v3, OS_LOG_TYPE_INFO, "Will create new salt", buf, 2u);
  }

  *buf = 0u;
  v26 = 0u;
  arc4random_buf(buf, 0x20uLL);
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:32];
  v5 = [SGPersistentSaltProvider hexStringForData:v4];
  v6 = [v5 dataUsingEncoding:4];

  v7 = *MEMORY[0x1E697AFF8];
  v23[0] = *MEMORY[0x1E697B3C0];
  v23[1] = v7;
  v8 = *MEMORY[0x1E697B008];
  v24[0] = v6;
  v24[1] = v8;
  v9 = *MEMORY[0x1E697AE88];
  v23[2] = *MEMORY[0x1E697ABD0];
  v23[3] = v9;
  serviceIdentifier = self->_serviceIdentifier;
  v24[2] = self->_accessGroup;
  v24[3] = serviceIdentifier;
  v23[4] = *MEMORY[0x1E697AD00];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:os_variant_has_internal_diagnostics() ^ 1];
  v12 = *MEMORY[0x1E697ABD8];
  v13 = *MEMORY[0x1E697ABE0];
  v24[4] = v11;
  v24[5] = v13;
  v14 = *MEMORY[0x1E697AEB0];
  v23[5] = v12;
  v23[6] = v14;
  v24[6] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:7];

  v16 = SecItemAdd(v15, 0);
  if (v16)
  {
    v17 = v16;
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 67109120;
      v22[1] = v17;
      _os_log_error_impl(&dword_1BA729000, v18, OS_LOG_TYPE_ERROR, "Error creating new salt: %d", v22, 8u);
    }

    v19 = 0;
  }

  else
  {
    v19 = v4;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_findExistingSaltError:(id *)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = [(SGPersistentSaltProvider *)self _queryKeychainError:?];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_5937];

    v7 = [v6 firstObject];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];

    v9 = objc_opt_new();
    if (v8)
    {
      if ([v8 length])
      {
        v10 = 0;
        do
        {
          v19 = 0;
          [v8 getBytes:&v19 range:{v10, 2}];
          if ((v19 & 0x10) != 0)
          {
            v11 = 0;
          }

          else
          {
            v11 = 9;
          }

          v12 = v11 + v19;
          if ((v19 & 0x1000) != 0)
          {
            v13 = -16;
          }

          else
          {
            v13 = 9;
          }

          v18 = v13 + (HIBYTE(v19) & 0x1F) + 16 * v12;
          [v9 appendBytes:&v18 length:1];
          v10 += 2;
        }

        while (v10 < [v8 length]);
      }

      v20[0] = v9;
      v14 = [v6 firstObject];
      v20[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    }

    else
    {
      v15 = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t __51__SGPersistentSaltProvider__findExistingSaltError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x1E697ACD0];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = [v6 compare:v7];
  }

  return v9;
}

- (id)_queryKeychainError:(id *)a3
{
  v21[6] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v5;
  serviceIdentifier = self->_serviceIdentifier;
  v21[0] = v4;
  v21[1] = serviceIdentifier;
  v7 = *MEMORY[0x1E697B318];
  v20[2] = *MEMORY[0x1E697AEB0];
  v20[3] = v7;
  v21[2] = MEMORY[0x1E695E118];
  v21[3] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E697B260];
  v20[4] = *MEMORY[0x1E697B310];
  v20[5] = v8;
  v21[4] = MEMORY[0x1E695E118];
  v21[5] = &unk_1F38742B0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
  result = 0;
  v10 = SecItemCopyMatching(v9, &result);
  if (v10)
  {
    v11 = v10;
    if (v10 == -25300)
    {
      v12 = sgLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA729000, v12, OS_LOG_TYPE_INFO, "No salt found", buf, 2u);
      }
    }

    else
    {
      v14 = sgLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v19 = v11;
        _os_log_error_impl(&dword_1BA729000, v14, OS_LOG_TYPE_ERROR, "Error finding existing salt: %d", buf, 8u);
      }

      if (a3)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
        *a3 = v13 = 0;
        goto LABEL_13;
      }
    }
  }

  else if (result)
  {
    CFAutorelease(result);
    v13 = result;
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_findOrCreateSalt
{
  v15 = 0;
  v3 = [(SGPersistentSaltProvider *)self _findExistingSaltError:&v15];
  v4 = v15;
  if (!v3)
  {
LABEL_9:
    v10 = [(SGPersistentSaltProvider *)self _createSalt];
    goto LABEL_10;
  }

  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697ABD8]];
  v7 = [v6 isEqual:*MEMORY[0x1E697ABE0]];

  v8 = sgLogHandle();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1BA729000, v9, OS_LOG_TYPE_ERROR, "Existing salt has wrong access class. Re-creating salt", v13, 2u);
    }

    [(SGPersistentSaltProvider *)self _deleteSalt];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA729000, v9, OS_LOG_TYPE_INFO, "Found existing salt", buf, 2u);
  }

  v10 = [v3 objectAtIndexedSubscript:0];
LABEL_10:
  v11 = v10;

  return v11;
}

- (id)salt
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5950;
  v13 = __Block_byref_object_dispose__5951;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__SGPersistentSaltProvider_salt__block_invoke;
  v8[3] = &unk_1E7EFCA78;
  v8[4] = self;
  v8[5] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v3 = v10[5];
  if (!v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA729000, v4, OS_LOG_TYPE_FAULT, "Could not generate salt.", v7, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v3 = v10[5];
  }

  v5 = v3;
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __32__SGPersistentSaltProvider_salt__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = v6[1];
  if (!v3)
  {
    v4 = [*(a1 + 32) _findOrCreateSalt];
    v5 = v6[1];
    v6[1] = v4;

    v3 = v6[1];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (SGPersistentSaltProvider)initWithServiceIdentifier:(id)a3 accessGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SGPersistentSaltProvider;
  v9 = [(SGPersistentSaltProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceIdentifier, a3);
    objc_storeStrong(&v10->_accessGroup, a4);
    v11 = objc_alloc(MEMORY[0x1E69C5D60]);
    v12 = objc_opt_new();
    v13 = [v11 initWithGuardedData:v12];
    lock = v10->_lock;
    v10->_lock = v13;
  }

  return v10;
}

+ (id)hexStringForData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v4];
  v6 = [v3 bytes];
  if (v4)
  {
    v7 = v6;
    do
    {
      v8 = *v7++;
      [v5 appendFormat:@"%02X", v8];
      --v4;
    }

    while (v4);
  }

  return v5;
}

+ (id)saltProviderFromKeyChainWithServiceIdentifier:(id)a3 accessGroup:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithServiceIdentifier:v7 accessGroup:v6];

  return v8;
}

+ (id)saltProviderWithString:(id)a3 serviceIdentifier:(id)a4 accessGroup:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [[a1 alloc] initWithServiceIdentifier:v10 accessGroup:v9];

  v12 = v11[1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__SGPersistentSaltProvider_saltProviderWithString_serviceIdentifier_accessGroup___block_invoke;
  v15[3] = &unk_1E7EFCA50;
  v16 = v8;
  v13 = v8;
  [v12 runWithLockAcquired:v15];

  return v11;
}

void __81__SGPersistentSaltProvider_saltProviderWithString_serviceIdentifier_accessGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataUsingEncoding:4];
  v5 = v3[1];
  v3[1] = v4;
}

@end