@interface MCMCommandDeletePluginDataContainerContent
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeletePluginDataContainerContent)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMContainerIdentity)containerIdentity;
- (void)execute;
@end

@implementation MCMCommandDeletePluginDataContainerContent

- (MCMContainerIdentity)containerIdentity
{
  result = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MCMCommandDeleteContainerContent alloc];
  v5 = [(MCMCommandDeletePluginDataContainerContent *)self containerIdentity];
  v6 = [(MCMCommand *)self context];
  v7 = [(MCMCommand *)self resultPromise];
  v8 = [(MCMCommandDeleteContainerContent *)v4 initWithContainerIdentity:v5 context:v6 resultPromise:v7];

  [(MCMCommandDeleteContainerContent *)v8 execute];
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MCMCommand *)self resultPromise];
    v12 = [v11 result];
    v13 = [v12 error];
    v14 = 138412290;
    v15 = v13;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Wipe plugin data container; error = %@", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];
  v5 = [(MCMCommandDeletePluginDataContainerContent *)self containerIdentity];
  v6 = [v4 isAllowedToPerformOperationType:3 containerIdentity:v5 part:0 partDomain:0 access:0];

  result = v6 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMCommandDeletePluginDataContainerContent)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandDeletePluginDataContainerContent;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = v10;
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
  return 11;
}

@end