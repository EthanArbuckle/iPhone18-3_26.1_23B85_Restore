@interface MCMCommandProcessRestoredContainer
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandProcessRestoredContainer)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandProcessRestoredContainer)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (void)execute;
@end

@implementation MCMCommandProcessRestoredContainer

- (BOOL)includedCreator
{
  result = self->_includedCreator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedUserManagedAssetsPath
{
  result = self->_includedUserManagedAssetsPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedInfo
{
  result = self->_includedInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedPath
{
  result = self->_includedPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)concreteContainerIdentity
{
  result = self->_concreteContainerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MCMCommandRecreateContainerStructure alloc];
  concreteContainerIdentity = [(MCMCommandProcessRestoredContainer *)self concreteContainerIdentity];
  context = [(MCMCommand *)self context];
  resultPromise = [(MCMCommand *)self resultPromise];
  v8 = [(MCMCommandRecreateContainerStructure *)v4 initWithConcreteContainerIdentity:concreteContainerIdentity context:context resultPromise:resultPromise];

  [(MCMCommandRecreateContainerStructure *)v8 execute];
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    resultPromise2 = [(MCMCommand *)self resultPromise];
    result = [resultPromise2 result];
    error = [result error];
    v14 = 138412290;
    v15 = error;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Process restored container result; error = %@", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToRestoreContainer = [clientIdentity isAllowedToRestoreContainer];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToRestoreContainer;
}

- (MCMCommandProcessRestoredContainer)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandProcessRestoredContainer;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    concreteContainerIdentity = [messageCopy concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = concreteContainerIdentity;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandProcessRestoredContainer)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = MCMCommandProcessRestoredContainer;
  v10 = [(MCMCommand *)&v14 initWithContext:context resultPromise:promise];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_concreteContainerIdentity, identity);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
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
  return 22;
}

@end