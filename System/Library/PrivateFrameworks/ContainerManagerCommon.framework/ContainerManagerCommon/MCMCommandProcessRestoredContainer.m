@interface MCMCommandProcessRestoredContainer
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandProcessRestoredContainer)initWithConcreteContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5;
- (MCMCommandProcessRestoredContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
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
  v5 = [(MCMCommandProcessRestoredContainer *)self concreteContainerIdentity];
  v6 = [(MCMCommand *)self context];
  v7 = [(MCMCommand *)self resultPromise];
  v8 = [(MCMCommandRecreateContainerStructure *)v4 initWithConcreteContainerIdentity:v5 context:v6 resultPromise:v7];

  [(MCMCommandRecreateContainerStructure *)v8 execute];
  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(MCMCommand *)self resultPromise];
    v12 = [v11 result];
    v13 = [v12 error];
    v14 = 138412290;
    v15 = v13;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Process restored container result; error = %@", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToRestoreContainer];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandProcessRestoredContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandProcessRestoredContainer;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandProcessRestoredContainer)initWithConcreteContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandProcessRestoredContainer;
  v10 = [(MCMCommand *)&v14 initWithContext:a4 resultPromise:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_concreteContainerIdentity, a3);
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