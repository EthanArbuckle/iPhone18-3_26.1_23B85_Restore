@interface _CDErrorUtilities
+ (BOOL)isCoreDataFatalError:(id)a3;
+ (BOOL)isCoreDataTemporaryError:(id)a3;
+ (id)transformErrorForNSSecureCoding:(id)a3;
+ (void)simulateCrashWithDescription:(id)a3;
@end

@implementation _CDErrorUtilities

+ (id)transformErrorForNSSecureCoding:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userInfo];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = [v4 domain];
      v9 = [v4 code];
      v16 = *MEMORY[0x1E696A578];
      v10 = [v4 userInfo];
      v11 = [v10 description];
      v17[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v7 errorWithDomain:v8 code:v9 userInfo:v12];
    }

    else
    {
      v13 = v4;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)isCoreDataFatalError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D488]];

  LOBYTE(v3) = [&unk_1F05EF680 containsObject:v4];
  return v3;
}

+ (BOOL)isCoreDataTemporaryError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D488]];

  LOBYTE(v3) = [&unk_1F05EF698 containsObject:v4];
  return v3;
}

+ (void)simulateCrashWithDescription:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_CDErrorUtilities simulateCrashWithDescription:a3];
  }
}

+ (void)simulateCrashWithDescription:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Simulating crash. Reason: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end