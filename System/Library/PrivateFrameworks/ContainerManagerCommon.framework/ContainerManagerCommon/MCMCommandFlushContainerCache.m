@interface MCMCommandFlushContainerCache
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (BOOL)transient;
- (MCMCommandFlushContainerCache)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
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
  v4 = [(MCMCommand *)self context];
  v5 = [v4 containerCache];
  v6 = [(MCMCommand *)self context];
  v7 = [v6 clientIdentity];
  v8 = [v7 userIdentity];
  v9 = [(MCMCommandFlushContainerCache *)self containerConfig];
  [v5 flushCacheForUserIdentity:v8 containerClass:objc_msgSend(v9 transient:{"containerClass"), -[MCMCommandFlushContainerCache transient](self, "transient")}];

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "Cache flushed", v14, 2u);
  }

  v11 = objc_opt_new();
  v12 = [(MCMCommand *)self resultPromise];
  [v12 completeWithResult:v11];

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x1E69E9840];
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

- (MCMCommandFlushContainerCache)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v15.receiver = self;
  v15.super_class = MCMCommandFlushContainerCache;
  v10 = [(MCMCommand *)&v15 initWithMessage:v9 context:a4 reply:a5];
  if (v10)
  {
    v11 = [v9 containerConfig];
    containerConfig = v10->_containerConfig;
    v10->_containerConfig = v11;

    v10->_transient = [v9 transient];
    objc_storeStrong(&v10->_message, a3);
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