@interface EDInteractionEventLogSaltProvider
+ (OS_os_log)log;
+ (id)saltProviderFromKeyChain;
+ (id)saltProviderWithString:(id)string;
- (BOOL)migrateAccessClass;
- (EDInteractionEventLogSaltProvider)init;
- (NSData)salt;
- (id)_createSalt;
- (id)_findExistingSaltError:(id *)error;
- (id)_findOrCreateSalt;
- (id)_queryKeychainError:(id *)error;
- (void)_createSalt;
- (void)_deleteSalt;
- (void)salt;
@end

@implementation EDInteractionEventLogSaltProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDInteractionEventLogSaltProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_47 != -1)
  {
    dispatch_once(&log_onceToken_47, block);
  }

  v2 = log_log_47;

  return v2;
}

void __40__EDInteractionEventLogSaltProvider_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_47;
  log_log_47 = v1;
}

+ (id)saltProviderWithString:(id)string
{
  stringCopy = string;
  v5 = objc_alloc_init(self);
  v6 = [stringCopy dataUsingEncoding:4];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

+ (id)saltProviderFromKeyChain
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (EDInteractionEventLogSaltProvider)init
{
  v3.receiver = self;
  v3.super_class = EDInteractionEventLogSaltProvider;
  result = [(EDInteractionEventLogSaltProvider *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSData)salt
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  salt = self->_salt;
  if (!salt)
  {
    _findOrCreateSalt = [(EDInteractionEventLogSaltProvider *)self _findOrCreateSalt];
    v5 = self->_salt;
    self->_salt = _findOrCreateSalt;

    salt = self->_salt;
  }

  v6 = salt;
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = EFDeviceUnlockedSinceBoot();
      [(EDInteractionEventLogSaltProvider *)v8 salt];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_findOrCreateSalt
{
  v14 = 0;
  v3 = [(EDInteractionEventLogSaltProvider *)self _findExistingSaltError:&v14];
  v4 = v14;
  if (!v3)
  {
LABEL_9:
    _createSalt = [(EDInteractionEventLogSaltProvider *)self _createSalt];
    goto LABEL_10;
  }

  second = [v3 second];
  v6 = [second objectForKeyedSubscript:*MEMORY[0x1E697ABD8]];
  v7 = [v6 isEqual:*MEMORY[0x1E697ABE0]];

  if (!v7)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [EDInteractionEventLogSaltProvider _findOrCreateSalt];
    }

    [(EDInteractionEventLogSaltProvider *)self _deleteSalt];
    goto LABEL_9;
  }

  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Found existing salt", v13, 2u);
  }

  _createSalt = [v3 first];
LABEL_10:
  v11 = _createSalt;

  return v11;
}

- (id)_queryKeychainError:(id *)error
{
  v19[6] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v18[0] = *MEMORY[0x1E697AFF8];
  v18[1] = v5;
  v19[0] = v4;
  v19[1] = @"com.apple.mail.interaction-log.salt";
  v6 = *MEMORY[0x1E697B318];
  v18[2] = *MEMORY[0x1E697AEB0];
  v18[3] = v6;
  v19[2] = MEMORY[0x1E695E118];
  v19[3] = MEMORY[0x1E695E118];
  v7 = *MEMORY[0x1E697B260];
  v18[4] = *MEMORY[0x1E697B310];
  v18[5] = v7;
  v19[4] = MEMORY[0x1E695E118];
  v19[5] = &unk_1F45E66B8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  v10 = v9;
  if (v9)
  {
    if (v9 == -25300)
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "No salt found", v16, 2u);
      }
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [EDInteractionEventLogSaltProvider _queryKeychainError:];
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
        *error = v12 = 0;
        goto LABEL_13;
      }
    }
  }

  else if (result)
  {
    CFAutorelease(result);
    v12 = result;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_findExistingSaltError:(id *)error
{
  v4 = [(EDInteractionEventLogSaltProvider *)self _queryKeychainError:?];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_35];

    firstObject = [v6 firstObject];
    v8 = [firstObject objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];

    v9 = objc_alloc_init(MEMORY[0x1E695DF88]);
    if (v8)
    {
      for (i = 0; i < [v8 length]; i += 2)
      {
        v19 = -21846;
        [v8 getBytes:&v19 range:{i, 2}];
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
      }

      v14 = MEMORY[0x1E699B848];
      firstObject2 = [v6 firstObject];
      v16 = [v14 pairWithFirst:v9 second:firstObject2];
    }

    else
    {
      v16 = 0;
      if (error)
      {
        *error = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __60__EDInteractionEventLogSaltProvider__findExistingSaltError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = *MEMORY[0x1E697ACD0];
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
  v7 = [v4 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = [v6 compare:v7];
  }

  return v10;
}

- (id)_createSalt
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Will create new salt", buf, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v3;
  v27 = v3;
  arc4random_buf(buf, 0x20uLL);
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:32];
  ef_hexString = [v4 ef_hexString];
  v6 = [ef_hexString dataUsingEncoding:4];

  v7 = *MEMORY[0x1E697AFF8];
  v21[0] = *MEMORY[0x1E697B3C0];
  v21[1] = v7;
  v8 = *MEMORY[0x1E697B008];
  v25[0] = v6;
  v25[1] = v8;
  v9 = *MEMORY[0x1E697AE88];
  v22 = *MEMORY[0x1E697ABD0];
  v25[2] = @"com.apple.mail";
  v25[3] = @"com.apple.mail.interaction-log.salt";
  v10 = MEMORY[0x1E696AD98];
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  v12 = [v10 numberWithInt:{objc_msgSend(currentDevice, "isInternal") ^ 1}];
  v13 = *MEMORY[0x1E697ABD8];
  v14 = *MEMORY[0x1E697ABE0];
  v25[4] = v12;
  v25[5] = v14;
  v15 = *MEMORY[0x1E697AEB0];
  v23 = v13;
  v24 = v15;
  v25[6] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v21 count:7];

  if (SecItemAdd(v16, 0))
  {
    v17 = [objc_opt_class() log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EDInteractionEventLogSaltProvider _createSalt];
    }

    v18 = 0;
  }

  else
  {
    v18 = v4;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)_deleteSalt
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)migrateAccessClass
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Will migrate salt", buf, 2u);
  }

  v10 = 0;
  v4 = [(EDInteractionEventLogSaltProvider *)self _findExistingSaltError:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    [(EDInteractionEventLogSaltProvider *)self _deleteSalt];
    _createSalt = [(EDInteractionEventLogSaltProvider *)self _createSalt];
    v8 = _createSalt != 0;
  }

  else
  {
    if (!v5 || [v5 code] != -25308)
    {
      v8 = 1;
      goto LABEL_12;
    }

    _createSalt = [objc_opt_class() log];
    if (os_log_type_enabled(_createSalt, OS_LOG_TYPE_ERROR))
    {
      [EDInteractionEventLogSaltProvider migrateAccessClass];
    }

    v8 = 0;
  }

LABEL_12:
  return v8;
}

- (void)salt
{
  v3 = @"NO";
  if (self)
  {
    v3 = @"YES";
  }

  *buf = 138412290;
  *(buf + 4) = v3;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Could not generate salt. Device unlocked since boot: %@", buf, 0xCu);
}

- (void)_queryKeychainError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createSalt
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end