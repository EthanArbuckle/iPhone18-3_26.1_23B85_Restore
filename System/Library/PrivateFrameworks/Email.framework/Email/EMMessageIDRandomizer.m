@interface EMMessageIDRandomizer
+ (OS_os_log)log;
+ (id)_createRandomizedStringForMessageID:(int64_t)a3;
+ (id)_findExistingStringError:(id *)a3 messageID:(int64_t)a4;
+ (id)_findOrCreateRandomizedStringForMessageID:(int64_t)a3;
+ (id)_queryKeychainError:(id *)a3 messageID:(int64_t)a4;
+ (id)randomizedStringForGlobalMessageID:(int64_t)a3;
+ (void)_deleteExpiredStringForMessageID:(int64_t)a3;
- (EMMessageIDRandomizer)init;
@end

@implementation EMMessageIDRandomizer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EMMessageIDRandomizer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_22 != -1)
  {
    dispatch_once(&log_onceToken_22, block);
  }

  v2 = log_log_22;

  return v2;
}

void __28__EMMessageIDRandomizer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_22;
  log_log_22 = v1;
}

- (EMMessageIDRandomizer)init
{
  v3.receiver = self;
  v3.super_class = EMMessageIDRandomizer;
  return [(EMMessageIDRandomizer *)&v3 init];
}

+ (id)randomizedStringForGlobalMessageID:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  lock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&lock);
  v5 = [a1 _findOrCreateRandomizedStringForMessageID:a3];
  os_unfair_lock_unlock(&lock);
  if (!v5)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = EFDeviceUnlockedSinceBoot();
      [(EMMessageIDRandomizer *)v7 randomizedStringForGlobalMessageID:buf, v6];
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_findOrCreateRandomizedStringForMessageID:(int64_t)a3
{
  v10 = 0;
  v5 = [a1 _findExistingStringError:&v10 messageID:a3];
  v6 = v10;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 _createRandomizedStringForMessageID:a3];
  }

  v8 = v7;

  return v8;
}

+ (id)_queryKeychainError:(id *)a3 messageID:(int64_t)a4
{
  v25[5] = *MEMORY[0x1E69E9840];
  v25[0] = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v24[0] = *MEMORY[0x1E697AFF8];
  v24[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v25[1] = v6;
  v7 = *MEMORY[0x1E697B310];
  v24[2] = *MEMORY[0x1E697B318];
  v24[3] = v7;
  v25[2] = MEMORY[0x1E695E118];
  v25[3] = MEMORY[0x1E695E118];
  v24[4] = *MEMORY[0x1E697B260];
  v25[4] = &unk_1F461CCA8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];

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
        *v22 = 0;
        _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "No randomized string found", v22, 2u);
      }
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(EMMessageIDRandomizer *)v10 _queryKeychainError:v13 messageID:v14, v15, v16, v17, v18, v19];
      }

      if (a3)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
        *a3 = v12 = 0;
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

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_findExistingStringError:(id *)a3 messageID:(int64_t)a4
{
  v6 = [a1 _queryKeychainError:a3 messageID:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 firstObject];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];

    if ([v9 ef_isMoreThanTimeIntervalAgo:86400.0])
    {
      [a1 _deleteExpiredStringForMessageID:a4];
      v10 = 0;
    }

    else
    {
      v11 = [v7 firstObject];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];

      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_createRandomizedStringForMessageID:(int64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a3;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Will create new randomized string for messageID %lld", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E696AEC0] ef_UUID];
  v6 = [v5 dataUsingEncoding:4];
  v7 = *MEMORY[0x1E697AFF8];
  v26[0] = *MEMORY[0x1E697B3C0];
  v26[1] = v7;
  v8 = *MEMORY[0x1E697B008];
  v27[0] = v6;
  v27[1] = v8;
  v27[2] = @"com.apple.mail.categories";
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{a3, v26[0], v7, *MEMORY[0x1E697ABD0], *MEMORY[0x1E697AE88]}];
  v27[3] = v9;
  v26[4] = *MEMORY[0x1E697AD00];
  v10 = MEMORY[0x1E696AD98];
  v11 = [MEMORY[0x1E699B7B0] currentDevice];
  v12 = [v10 numberWithInt:{objc_msgSend(v11, "isInternal") ^ 1}];
  v26[5] = *MEMORY[0x1E697ABD8];
  v13 = *MEMORY[0x1E697ABE0];
  v27[4] = v12;
  v27[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];

  v15 = SecItemAdd(v14, 0);
  if (v15)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(EMMessageIDRandomizer *)v15 _createRandomizedStringForMessageID:v16, v17, v18, v19, v20, v21, v22];
    }

    v23 = 0;
  }

  else
  {
    v23 = v5;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (void)_deleteExpiredStringForMessageID:(int64_t)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Will delete expired randomized string", v18, 2u);
  }

  v5 = *MEMORY[0x1E697B008];
  v6 = *MEMORY[0x1E697ABD0];
  v19[0] = *MEMORY[0x1E697AFF8];
  v19[1] = v6;
  v20[0] = v5;
  v20[1] = @"com.apple.mail.categories";
  v19[2] = *MEMORY[0x1E697AE88];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v20[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v9 = SecItemDelete(v8);
  if (v9)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(EMMessageIDRandomizer *)v9 _deleteExpiredStringForMessageID:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)randomizedStringForGlobalMessageID:(os_log_t)log .cold.1(char a1, uint8_t *buf, os_log_t log)
{
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  *buf = 138412290;
  *(buf + 4) = v3;
  _os_log_fault_impl(&dword_1C6655000, log, OS_LOG_TYPE_FAULT, "Could not generate randomized string. Device unlocked since boot: %@", buf, 0xCu);
}

+ (void)_queryKeychainError:(uint64_t)a3 messageID:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1C6655000, a2, a3, "Error finding existing randomized string: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_createRandomizedStringForMessageID:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1C6655000, a2, a3, "Error creating new randomized string: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_deleteExpiredStringForMessageID:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1C6655000, a2, a3, "Error deleting expired randomized string: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end