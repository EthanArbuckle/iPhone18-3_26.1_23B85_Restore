@interface MCMCommandDeleteWithUIDClassAndIdentifier
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteWithUIDClassAndIdentifier)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
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
  v4 = [(MCMCommandDeleteWithUIDClassAndIdentifier *)self deleteCommand];
  [v4 execute];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MCMCommand *)self resultPromise];
    v7 = [v6 result];
    v8 = [v7 error];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEFAULT, "Delete with uid_t, container_class_t, and identifier result; error = %@", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommandDeleteWithUIDClassAndIdentifier *)self deleteCommand];
  v3 = [v2 preflightClientAllowed];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMCommandDeleteWithUIDClassAndIdentifier)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v19.receiver = self;
  v19.super_class = MCMCommandDeleteWithUIDClassAndIdentifier;
  v9 = [(MCMCommand *)&v19 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = v10;

    v20[0] = v9->_containerIdentity;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v13 = [(MCMCommand *)v9 context];
    v14 = [(MCMCommand *)v9 resultPromise];
    v15 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v12 removeAllCodeSignInfo:0 context:v13 resultPromise:v14];
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