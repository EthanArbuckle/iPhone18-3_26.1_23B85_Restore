@interface MCMCommandFlushPersonaCache
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandFlushPersonaCache

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
  return 34;
}

- (void)execute
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MCMCommand *)self context];
  v5 = [v4 userIdentityCache];
  [v5 flush];

  v6 = container_log_handle_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEFAULT, "Flush persona cache; error = nil", v10, 2u);
  }

  v7 = objc_opt_new();
  v8 = [(MCMCommand *)self resultPromise];
  [v8 completeWithResult:v7];

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToControlCaches];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end