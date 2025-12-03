@interface FBKSDeviceToken
+ (id)_basicParameterWithoutLabel;
+ (id)_basicParametersForWriting;
+ (id)_queryForParticipantID:(id)d isForWriting:(BOOL)writing;
+ (id)fetchDeviceTokenForParticipantID:(id)d;
+ (void)clearAllDeviceTokens;
+ (void)clearDeviceTokenForParticipantID:(id)d;
+ (void)setDeviceToken:(id)token forParticipantID:(id)d;
@end

@implementation FBKSDeviceToken

+ (void)clearAllDeviceTokens
{
  _basicParameterWithoutLabel = [self _basicParameterWithoutLabel];

  SecItemDelete(_basicParameterWithoutLabel);
}

+ (id)fetchDeviceTokenForParticipantID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [self _queryForParticipantID:dCopy isForWriting:0];
  v6 = [v5 mutableCopy];

  [v6 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B318]];
  result = 0;
  v7 = SecItemCopyMatching(v6, &result);
  if (v7 == -25300)
  {
    v9 = Log_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongValue = [dCopy unsignedLongValue];
      *buf = 134217984;
      v16 = unsignedLongValue;
      _os_log_impl(&dword_1B00C4000, v9, OS_LOG_TYPE_DEFAULT, "Could not find device token for participant [%lu]", buf, 0xCu);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = result;
      v10 = [v8 initWithData:result encoding:4];
      goto LABEL_9;
    }

    v9 = Log_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[FBKSDeviceToken fetchDeviceTokenForParticipantID:];
    }
  }

  v10 = 0;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)setDeviceToken:(id)token forParticipantID:(id)d
{
  v21[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  v8 = [self _queryForParticipantID:dCopy isForWriting:0];
  v9 = [v8 mutableCopy];

  v10 = [self _queryForParticipantID:dCopy isForWriting:1];

  v11 = [v10 mutableCopy];
  v20 = *MEMORY[0x1E697B3C0];
  v12 = [tokenCopy dataUsingEncoding:4];

  v21[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  [v11 addEntriesFromDictionary:v13];
  v14 = SecItemCopyMatching(v9, 0);
  v15 = Log_1();
  v16 = v15;
  if (v14 == -25300)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B00C4000, v16, OS_LOG_TYPE_DEFAULT, "Creating new token", v19, 2u);
    }

    if (SecItemAdd(v11, 0))
    {
      v16 = Log_1();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1B00C4000, v16, OS_LOG_TYPE_DEFAULT, "Updating existing token", v19, 2u);
    }

    if (SecItemDelete(v9))
    {
      v17 = Log_1();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }
    }

    if (SecItemAdd(v11, 0))
    {
      v16 = Log_1();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[FBKSDeviceToken setDeviceToken:forParticipantID:];
      }

LABEL_19:
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)clearDeviceTokenForParticipantID:(id)d
{
  v3 = [self _queryForParticipantID:d isForWriting:0];

  SecItemDelete(v3);
}

+ (id)_basicParametersForWriting
{
  v15[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AFF8];
  v15[0] = *MEMORY[0x1E697B008];
  v3 = *MEMORY[0x1E697AE88];
  v14[0] = v2;
  v14[1] = v3;
  v4 = +[FBKSSharedConstants appleSeedURL];
  host = [v4 host];
  lowercaseString = [host lowercaseString];
  v7 = *MEMORY[0x1E697ADC8];
  v15[1] = lowercaseString;
  v15[2] = @"Feedback Assistant";
  v8 = *MEMORY[0x1E697ABD8];
  v14[2] = v7;
  v14[3] = v8;
  v9 = *MEMORY[0x1E697ABD0];
  v15[3] = *MEMORY[0x1E697ABE8];
  v15[4] = @"group.com.apple.feedback";
  v10 = *MEMORY[0x1E697B390];
  v14[4] = v9;
  v14[5] = v10;
  v15[5] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_basicParameterWithoutLabel
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AFF8];
  v13[0] = *MEMORY[0x1E697B008];
  v3 = *MEMORY[0x1E697AE88];
  v12[0] = v2;
  v12[1] = v3;
  v4 = +[FBKSSharedConstants appleSeedURL];
  host = [v4 host];
  lowercaseString = [host lowercaseString];
  v7 = *MEMORY[0x1E697ABD0];
  v13[1] = lowercaseString;
  v13[2] = @"group.com.apple.feedback";
  v8 = *MEMORY[0x1E697B390];
  v12[2] = v7;
  v12[3] = v8;
  v13[3] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_queryForParticipantID:(id)d isForWriting:(BOOL)writing
{
  writingCopy = writing;
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  dCopy = d;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", dCopy, *MEMORY[0x1E697AC30]];

  v17[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v8 initWithDictionary:v10];

  if (writingCopy)
  {
    [self _basicParametersForWriting];
  }

  else
  {
    [self _basicParameterWithoutLabel];
  }
  v12 = ;
  [v11 addEntriesFromDictionary:v12];

  v13 = [v11 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (void)fetchDeviceTokenForParticipantID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B00C4000, v0, v1, "Failed to fetch device token with error [%i]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setDeviceToken:forParticipantID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B00C4000, v0, v1, "Device token add failed: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setDeviceToken:forParticipantID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B00C4000, v0, v1, "Failed to delete existing token for update with error [%i]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setDeviceToken:forParticipantID:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B00C4000, v0, v1, "Device token update failed: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setDeviceToken:forParticipantID:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B00C4000, v0, v1, "SecItemCopyMatching failed: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end