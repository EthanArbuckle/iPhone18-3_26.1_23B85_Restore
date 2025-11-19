@interface MCMCommandAcquireSandboxExtensionWithUUID
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandAcquireSandboxExtensionWithUUID)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4 error:(id *)a5;
- (void)execute;
@end

@implementation MCMCommandAcquireSandboxExtensionWithUUID

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

- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [MCMSandboxExtension alloc];
  v11 = [(MCMCommand *)self context];
  v12 = [v11 clientIdentity];
  v13 = [(MCMSandboxExtension *)v10 initWithClientIdentity:v12 containerPath:v9 containerIdentity:v8];

  if (v13)
  {
    [(MCMSandboxExtension *)v13 setUseLegacyExtensionPolicy:0];
    [(MCMSandboxExtension *)v13 setUseProxiedClientForTarget:1];
    v14 = [(MCMSandboxExtension *)v13 tokenForPart:0 partDomain:0 error:a5];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)execute
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MCMCommandAcquireSandboxExtensionWithUUID *)self concreteContainerIdentity];
  v5 = [(MCMCommand *)self context];
  v6 = [v5 containerCache];
  v30 = 0;
  v7 = [v6 entryForContainerIdentity:v4 error:&v30];
  v8 = v30;

  v28 = v7;
  if (!v7)
  {
    v12 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [v7 metadataMinimal];
  v10 = [v9 containerPath];
  v11 = [v9 containerIdentity];
  v29 = v8;
  v12 = [(MCMCommandAcquireSandboxExtensionWithUUID *)self _tokenForContainerPath:v10 containerIdentity:v11 error:&v29];
  v13 = v29;

  if (v12)
  {
    LOBYTE(v7) = 1;
LABEL_7:
    v8 = v13;
    goto LABEL_8;
  }

  if (v13)
  {
    v12 = 0;
    LOBYTE(v7) = 0;
    goto LABEL_7;
  }

  v8 = [[MCMError alloc] initWithErrorType:72 category:3];
  v12 = 0;
  LOBYTE(v7) = 0;
LABEL_8:
  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v32 = v12 != 0;
    v33 = 2112;
    v34 = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "Acquire sandbox extension result: %d, error = %@", buf, 0x12u);
  }

  v15 = [MCMResultAcquireSandboxExtensionWithUUID alloc];
  v16 = v15;
  if (v7)
  {
    v27 = [v9 userIdentity];
    v17 = [v27 personaUniqueString];
    v18 = [v9 containerPath];
    [v18 containerDataURL];
    v19 = v9;
    v20 = self;
    v21 = v4;
    v23 = v22 = v3;
    v24 = [(MCMResultAcquireSandboxExtensionWithUUID *)v16 initWithSandboxToken:v12 personaUniqueString:v17 url:v23];

    v3 = v22;
    v4 = v21;
    self = v20;
    v9 = v19;
  }

  else
  {
    v24 = [(MCMResultBase *)v15 initWithError:v8];
  }

  v25 = [(MCMCommand *)self resultPromise];
  [v25 completeWithResult:v24];

  objc_autoreleasePoolPop(v3);
  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];

  v5 = [(MCMCommandAcquireSandboxExtensionWithUUID *)self concreteContainerIdentity];
  v6 = [v4 isAllowedToPerformOperationType:0 containerIdentity:v5 part:0 partDomain:0 access:2];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (MCMCommandAcquireSandboxExtensionWithUUID)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandAcquireSandboxExtensionWithUUID;
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
  return 35;
}

@end