@interface MCMCommandAcquireSandboxExtensionWithUUID
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandAcquireSandboxExtensionWithUUID)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity error:(id *)error;
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

- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  pathCopy = path;
  v10 = [MCMSandboxExtension alloc];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  v13 = [(MCMSandboxExtension *)v10 initWithClientIdentity:clientIdentity containerPath:pathCopy containerIdentity:identityCopy];

  if (v13)
  {
    [(MCMSandboxExtension *)v13 setUseLegacyExtensionPolicy:0];
    [(MCMSandboxExtension *)v13 setUseProxiedClientForTarget:1];
    v14 = [(MCMSandboxExtension *)v13 tokenForPart:0 partDomain:0 error:error];
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
  concreteContainerIdentity = [(MCMCommandAcquireSandboxExtensionWithUUID *)self concreteContainerIdentity];
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v30 = 0;
  v7 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v30];
  v8 = v30;

  v28 = v7;
  if (!v7)
  {
    v12 = 0;
    metadataMinimal = 0;
    goto LABEL_8;
  }

  metadataMinimal = [v7 metadataMinimal];
  containerPath = [metadataMinimal containerPath];
  containerIdentity = [metadataMinimal containerIdentity];
  v29 = v8;
  v12 = [(MCMCommandAcquireSandboxExtensionWithUUID *)self _tokenForContainerPath:containerPath containerIdentity:containerIdentity error:&v29];
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
    userIdentity = [metadataMinimal userIdentity];
    personaUniqueString = [userIdentity personaUniqueString];
    containerPath2 = [metadataMinimal containerPath];
    [containerPath2 containerDataURL];
    v19 = metadataMinimal;
    selfCopy = self;
    v21 = concreteContainerIdentity;
    v23 = v22 = v3;
    v24 = [(MCMResultAcquireSandboxExtensionWithUUID *)v16 initWithSandboxToken:v12 personaUniqueString:personaUniqueString url:v23];

    v3 = v22;
    concreteContainerIdentity = v21;
    self = selfCopy;
    metadataMinimal = v19;
  }

  else
  {
    v24 = [(MCMResultBase *)v15 initWithError:v8];
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v24];

  objc_autoreleasePoolPop(v3);
  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  concreteContainerIdentity = [(MCMCommandAcquireSandboxExtensionWithUUID *)self concreteContainerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:0 containerIdentity:concreteContainerIdentity part:0 partDomain:0 access:2];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (MCMCommandAcquireSandboxExtensionWithUUID)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandAcquireSandboxExtensionWithUUID;
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