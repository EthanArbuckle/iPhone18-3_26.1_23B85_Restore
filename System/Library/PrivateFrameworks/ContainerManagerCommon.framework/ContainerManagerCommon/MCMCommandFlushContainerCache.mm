@interface MCMCommandFlushContainerCache
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (BOOL)transient;
- (MCMCommandFlushContainerCache)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMContainerConfiguration)containerConfig;
- (MCMXPCMessage)message;
- (void)execute;
@end

@implementation MCMCommandFlushContainerCache

- (MCMXPCMessage)message
{
  result = self->_message;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerConfiguration)containerConfig
{
  result = self->_containerConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  context2 = [(MCMCommand *)self context];
  clientIdentity = [context2 clientIdentity];
  userIdentity = [clientIdentity userIdentity];
  containerConfig = [(MCMCommandFlushContainerCache *)self containerConfig];
  [containerCache flushCacheForUserIdentity:userIdentity containerClass:objc_msgSend(containerConfig transient:{"containerClass"), -[MCMCommandFlushContainerCache transient](self, "transient")}];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "Cache flushed", v14, 2u);
  }

  v11 = objc_opt_new();
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v11];

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToControlCaches = [clientIdentity isAllowedToControlCaches];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToControlCaches;
}

- (MCMCommandFlushContainerCache)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MCMCommandFlushContainerCache;
  v10 = [(MCMCommand *)&v15 initWithMessage:messageCopy context:context reply:reply];
  if (v10)
  {
    containerConfig = [messageCopy containerConfig];
    containerConfig = v10->_containerConfig;
    v10->_containerConfig = containerConfig;

    v10->_transient = [messageCopy transient];
    objc_storeStrong(&v10->_message, message);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
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
  return 33;
}

@end