@interface MCMCommandDeleteWithUIDClassAndIdentifier
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteWithUIDClassAndIdentifier)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMCommandOperationDelete)deleteCommand;
- (MCMContainerIdentity)containerIdentity;
- (void)execute;
@end

@implementation MCMCommandDeleteWithUIDClassAndIdentifier

- (MCMCommandOperationDelete)deleteCommand
{
  result = self->_deleteCommand;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerIdentity)containerIdentity
{
  result = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  deleteCommand = [(MCMCommandDeleteWithUIDClassAndIdentifier *)self deleteCommand];
  [deleteCommand execute];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    resultPromise = [(MCMCommand *)self resultPromise];
    result = [resultPromise result];
    error = [result error];
    v10 = 138412290;
    v11 = error;
    _os_log_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEFAULT, "Delete with uid_t, container_class_t, and identifier result; error = %@", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v6 = *MEMORY[0x1E69E9840];
  deleteCommand = [(MCMCommandDeleteWithUIDClassAndIdentifier *)self deleteCommand];
  preflightClientAllowed = [deleteCommand preflightClientAllowed];

  v4 = *MEMORY[0x1E69E9840];
  return preflightClientAllowed;
}

- (MCMCommandDeleteWithUIDClassAndIdentifier)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v20[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = MCMCommandDeleteWithUIDClassAndIdentifier;
  v9 = [(MCMCommand *)&v19 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;

    v20[0] = v9->_containerIdentity;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    context = [(MCMCommand *)v9 context];
    resultPromise = [(MCMCommand *)v9 resultPromise];
    v15 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v12 removeAllCodeSignInfo:0 context:context resultPromise:resultPromise];
    deleteCommand = v9->_deleteCommand;
    v9->_deleteCommand = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
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
  return 10;
}

@end