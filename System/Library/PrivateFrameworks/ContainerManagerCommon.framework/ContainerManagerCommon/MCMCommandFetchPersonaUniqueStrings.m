@interface MCMCommandFetchPersonaUniqueStrings
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandFetchPersonaUniqueStrings

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 32;
}

- (void)execute
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
  v5 = [(MCMCommand *)self context];
  v6 = [v5 clientIdentity];
  v7 = [v6 userIdentity];

  if ([v7 isNoSpecificPersona])
  {
    v8 = [(MCMCommand *)self context];
    v9 = [v8 userIdentityCache];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__MCMCommandFetchPersonaUniqueStrings_execute__block_invoke;
    v15[3] = &unk_1E86AF940;
    v16 = v4;
    [v9 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v15];
  }

  else
  {
    v10 = [v7 personaUniqueString];
    if (v10)
    {
      [v4 addObject:v10];
    }
  }

  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = 0;
    _os_log_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEFAULT, "Fetch persona unique strings result: %@; error = %@", buf, 0x16u);
  }

  v12 = [[MCMResultFetchPersonaUniqueStrings alloc] initWithPersonaUniqueStrings:v4];
  v13 = [(MCMCommand *)self resultPromise];
  [v13 completeWithResult:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MCMCommandFetchPersonaUniqueStrings_execute__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a2 personaUniqueString];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)preflightClientAllowed
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

@end