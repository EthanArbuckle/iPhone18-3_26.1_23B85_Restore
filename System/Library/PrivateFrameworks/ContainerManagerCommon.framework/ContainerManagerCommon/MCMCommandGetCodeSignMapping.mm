@interface MCMCommandGetCodeSignMapping
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandGetCodeSignMapping)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (NSString)identifier;
- (void)execute;
@end

@implementation MCMCommandGetCodeSignMapping

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = gCodeSigningMapping;
  v5 = [(MCMCommandGetCodeSignMapping *)self identifier];
  v6 = [v4 getCodeSigningInfoForIdentifier:v5];

  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v8 = [MCMError alloc];
    v9 = 93;
    v10 = 5;
  }

  else
  {
    v8 = [MCMError alloc];
    v9 = 21;
    v10 = 3;
  }

  v11 = [(MCMError *)v8 initWithErrorType:v9 category:v10];
LABEL_10:
  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEFAULT, "Get codesign info; error = %@", &v18, 0xCu);
  }

  v13 = [MCMResultGetCodeSignMapping alloc];
  if (v6)
  {
    v14 = [(MCMResultGetCodeSignMapping *)v13 initWithInfo:v6];
  }

  else
  {
    v14 = [(MCMResultBase *)v13 initWithError:v11];
  }

  v15 = v14;
  v16 = [(MCMCommand *)self resultPromise];
  [v16 completeWithResult:v15];

  objc_autoreleasePoolPop(v3);
  v17 = *MEMORY[0x1E69E9840];
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

- (MCMCommandGetCodeSignMapping)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandGetCodeSignMapping;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 identifier];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

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
  return 19;
}

@end