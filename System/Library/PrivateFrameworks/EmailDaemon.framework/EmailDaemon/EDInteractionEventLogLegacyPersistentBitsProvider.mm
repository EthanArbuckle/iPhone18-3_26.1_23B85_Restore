@interface EDInteractionEventLogLegacyPersistentBitsProvider
+ (OS_os_log)log;
- (id)_findExistingSaltError:(id *)error;
- (id)_oldSalt;
- (id)_persistentBits;
- (id)_queryKeychainError:(id *)error;
@end

@implementation EDInteractionEventLogLegacyPersistentBitsProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EDInteractionEventLogLegacyPersistentBitsProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_45 != -1)
  {
    dispatch_once(&log_onceToken_45, block);
  }

  v2 = log_log_45;

  return v2;
}

void __56__EDInteractionEventLogLegacyPersistentBitsProvider_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_45;
  log_log_45 = v1;
}

- (id)_persistentBits
{
  _oldSalt = [(EDInteractionEventLogLegacyPersistentBitsProvider *)self _oldSalt];
  v3 = _oldSalt;
  if (_oldSalt)
  {
    v4 = [_oldSalt length];
    v8 = -86;
    v7 = -86;
    [v3 getBytes:&v8 range:{0, 1}];
    [v3 getBytes:&v7 range:{v4 - 1, 1}];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8 & 7 ^ (v7 >> 5)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_oldSalt
{
  v12 = 0;
  v2 = [(EDInteractionEventLogLegacyPersistentBitsProvider *)self _findExistingSaltError:&v12];
  v3 = v12;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4 || ([v2 second], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x1E697ABD8]), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", *MEMORY[0x1E697ABE0]), v6, v5, !v7))
  {
    first = 0;
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Found existing old salt", v11, 2u);
    }

    first = [v2 first];
  }

  return first;
}

- (id)_findExistingSaltError:(id *)error
{
  v4 = [(EDInteractionEventLogLegacyPersistentBitsProvider *)self _queryKeychainError:?];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_33];

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

uint64_t __76__EDInteractionEventLogLegacyPersistentBitsProvider__findExistingSaltError___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v19[5] = &unk_1F45E66A0;
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
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "No old salt found", v16, 2u);
      }
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(EDInteractionEventLogLegacyPersistentBitsProvider *)v10 _queryKeychainError:v13];
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

- (void)_findExistingSaltError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to read old salt %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_queryKeychainError:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Error finding existing old salt: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end