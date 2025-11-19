@interface NSError(MNExtras)
+ (id)_navigation_errorWithCode:()MNExtras debugDescription:underlyingError:;
+ (id)_navigation_errorWithCode:()MNExtras userInfo:;
- (__CFString)_navigation_errorCodeAsString;
@end

@implementation NSError(MNExtras)

- (__CFString)_navigation_errorCodeAsString
{
  v1 = [a1 code];
  if (v1 > 0x12)
  {
    return @"MNErrorCode_MissingEntitlement";
  }

  else
  {
    return off_1E842AB88[v1];
  }
}

+ (id)_navigation_errorWithCode:()MNExtras userInfo:
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNErrorDomain" code:a3 userInfo:a4];
  v6 = MNGetErrorsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v5 _navigation_errorCodeAsString];
    v10 = 138412546;
    v11 = v7;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Navigation service error: %@ (%d)", &v10, 0x12u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_navigation_errorWithCode:()MNExtras debugDescription:underlyingError:
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNErrorDomain" code:a3 userInfo:v10];

  return v11;
}

@end