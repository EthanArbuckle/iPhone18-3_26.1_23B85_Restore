@interface MCMCommandSetCodeSignMapping
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandSetCodeSignMapping)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (NSString)identifier;
- (id)info;
- (id)options;
- (void)execute;
@end

@implementation MCMCommandSetCodeSignMapping

- (id)options
{
  result = self->_options;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)info
{
  result = self->_info;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = gCodeSigningMapping;
  v5 = [(MCMCommandSetCodeSignMapping *)self info];
  v6 = [(MCMCommandSetCodeSignMapping *)self identifier];
  v7 = [(MCMCommandSetCodeSignMapping *)self options];
  v22 = 0;
  v8 = [v4 processCodeSigningInfo:v5 identifier:v6 options:v7 error:&v22];
  v9 = v22;

  if (v8 && [v8 count])
  {
    v10 = objc_alloc_init(MCMResultPromise);
    v11 = [v8 allObjects];
    v12 = [(MCMCommand *)self context];
    v13 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v11 removeAllCodeSignInfo:0 context:v12 resultPromise:v10];

    [v13 execute];
    v14 = [(MCMResultPromise *)v10 result];
    v15 = [v14 error];

    if (v15)
    {
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) during setCodeSigningMapping; error = %@", buf, 0xCu);
      }
    }
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "Set code sign mapping; error = %@", buf, 0xCu);
  }

  if (v8)
  {
    v18 = objc_opt_new();
  }

  else
  {
    v18 = [[MCMResultBase alloc] initWithError:v9];
  }

  v19 = v18;
  v20 = [(MCMCommand *)self resultPromise];
  [v20 completeWithResult:v19];

  objc_autoreleasePoolPop(v3);
  v21 = *MEMORY[0x1E69E9840];
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

- (MCMCommandSetCodeSignMapping)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18.receiver = self;
  v18.super_class = MCMCommandSetCodeSignMapping;
  v9 = [(MCMCommand *)&v18 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 identifier];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 options];
    options = v9->_options;
    v9->_options = v12;

    v14 = [v8 info];
    info = v9->_info;
    v9->_info = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
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
  return 18;
}

@end