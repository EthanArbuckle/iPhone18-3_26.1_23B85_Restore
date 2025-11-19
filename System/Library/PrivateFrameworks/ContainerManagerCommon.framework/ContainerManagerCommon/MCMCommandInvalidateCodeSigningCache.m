@interface MCMCommandInvalidateCodeSigningCache
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandInvalidateCodeSigningCache

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
  return 20;
}

- (void)execute
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [gCodeSigningMapping invalidateCodeSigningInfoForAppsWithoutDataContainer];
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[MCMError alloc] initWithErrorType:v4];
  }

  v6 = container_log_handle_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, "Invalidate codesign cache; error = %@", &v11, 0xCu);
  }

  if (v5)
  {
    v7 = [[MCMResultBase alloc] initWithError:v5];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v9 = [(MCMCommand *)self resultPromise];
  [v9 completeWithResult:v8];

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToAccessCodesignMapping];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end