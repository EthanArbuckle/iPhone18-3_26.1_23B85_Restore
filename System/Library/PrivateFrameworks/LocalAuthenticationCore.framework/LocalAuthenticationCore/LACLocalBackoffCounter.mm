@interface LACLocalBackoffCounter
- (void)currentBackoffErrorWithReply:(id)a3;
@end

@implementation LACLocalBackoffCounter

- (void)currentBackoffErrorWithReply:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MKBGetDeviceLockStateInfo();
  v5 = [v4 objectForKey:*MEMORY[0x1E69B1A28]];
  v6 = v5;
  if (v5 && ([v5 doubleValue], v7 > 0.0))
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceNow:?];
    v10 = v9;
    if (v9)
    {
      v17[0] = *MEMORY[0x1E696A578];
      v17[1] = @"RetryTime";
      v18[0] = @"Passcode backoff";
      v18[1] = v9;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v12 = [LACError errorWithCode:-1 userInfo:v11];

      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
LABEL_7:
  v13 = LACLogDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "backoff: %{public}@", &v15, 0xCu);
  }

  v3[2](v3, v12);
  v14 = *MEMORY[0x1E69E9840];
}

@end