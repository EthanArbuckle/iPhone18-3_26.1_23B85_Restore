@interface MCMCommandDeletePluginDataContainerContent
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeletePluginDataContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply;
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
  containerIdentity = [(MCMCommandDeletePluginDataContainerContent *)self containerIdentity];
  context = [(MCMCommand *)self context];
  resultPromise = [(MCMCommand *)self resultPromise];
  v8 = [(MCMCommandDeleteContainerContent *)v4 initWithContainerIdentity:containerIdentity context:context resultPromise:resultPromise];

  [(MCMCommandDeleteContainerContent *)v8 execute];
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    resultPromise2 = [(MCMCommand *)self resultPromise];
    result = [resultPromise2 result];
    error = [result error];
    v14 = 138412290;
    v15 = error;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Wipe plugin data container; error = %@", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  containerIdentity = [(MCMCommandDeletePluginDataContainerContent *)self containerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:3 containerIdentity:containerIdentity part:0 partDomain:0 access:0];

  result = v6 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMCommandDeletePluginDataContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandDeletePluginDataContainerContent;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;
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