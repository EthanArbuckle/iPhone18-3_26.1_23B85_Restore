@interface MCMCommandCreateOrLookupWithBundle
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createIfNecessary;
- (BOOL)issueSandboxExtension;
- (BOOL)preflightClientAllowed;
- (BOOL)transient;
- (MCMCommandCreateOrLookupWithBundle)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (NSURL)bundleURL;
- (NSURL)executableURL;
- (const)sandboxToken;
- (id)_containerIdentityWithError:(id *)error;
- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity error:(id *)error;
- (void)dealloc;
- (void)execute;
@end

@implementation MCMCommandCreateOrLookupWithBundle

- (NSURL)executableURL
{
  result = self->_executableURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)bundleURL
{
  result = self->_bundleURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (const)sandboxToken
{
  result = self->_sandboxToken;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)issueSandboxExtension
{
  result = self->_issueSandboxExtension;
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

- (BOOL)createIfNecessary
{
  result = self->_createIfNecessary;
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
    [(MCMSandboxExtension *)v13 setUseLegacyExtensionPolicy:1];
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

- (id)_containerIdentityWithError:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  v51 = 1;
  if ([(MCMCommandCreateOrLookupWithBundle *)self sandboxToken])
  {
    [(MCMCommandCreateOrLookupWithBundle *)self sandboxToken];
    v5 = sandbox_extension_consume();
    if (v5 < 0)
    {
      v6 = [[MCMError alloc] initWithErrorType:57];
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v5 = -1;
  }

  bundleURL = [(MCMCommandCreateOrLookupWithBundle *)self bundleURL];
  path = [bundleURL path];
  v13 = [path hasSuffix:@".appex"];

  if (v13)
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      bundleURL2 = [(MCMCommandCreateOrLookupWithBundle *)self bundleURL];
      path2 = [bundleURL2 path];
      *buf = 138543362;
      v53 = path2;
      _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] is a plugin", buf, 0xCu);
    }

    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  context = [(MCMCommand *)self context];
  globalConfiguration = [context globalConfiguration];
  staticConfig = [globalConfiguration staticConfig];
  v8 = [staticConfig configForContainerClass:v15];

  v19 = [MCMCodeSignInfo alloc];
  executableURL = [(MCMCommandCreateOrLookupWithBundle *)self executableURL];
  v7 = [(MCMCodeSignInfo *)v19 initWithURL:executableURL error:&v51];

  if (!v7)
  {
    v27 = [MCMError alloc];
    v6 = [(MCMError *)v27 initWithErrorType:v51];
    goto LABEL_30;
  }

  platform = [(MCMCodeSignInfo *)v7 platform];
  entitlements = [(MCMCodeSignInfo *)v7 entitlements];
  v23 = entitlements;
  if (platform == 2)
  {
    v24 = [entitlements objectForKeyedSubscript:@"com.apple.private.security.no-container"];
    objc_opt_class();
    v25 = v24;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 && [v26 BOOLValue])
    {
LABEL_29:
      v6 = [[MCMError alloc] initWithErrorType:96];

LABEL_30:
      v10 = 0;
      v9 = 0;
      if (v5 < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v28 = [entitlements objectForKeyedSubscript:@"com.apple.security.app-sandbox"];
    objc_opt_class();
    v29 = v28;
    if (objc_opt_isKindOfClass())
    {
      v26 = v29;
    }

    else
    {
      v26 = 0;
    }

    if (!v26 || ([v26 BOOLValue] & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  errorCopy = error;
  v49 = v8;
  v47 = v5;

  identifier = [(MCMCodeSignInfo *)v7 identifier];
  context2 = [(MCMCommand *)self context];
  clientIdentity = [context2 clientIdentity];
  context3 = [(MCMCommand *)self context];
  userIdentityCache = [context3 userIdentityCache];
  warnings = [(MCMCommand *)self warnings];
  v50 = 0;
  v10 = [MCMXPCMessageBase legacyUserIdentityForIdentifier:identifier targetUserIdentity:0 containerConfig:v49 clientIdentity:clientIdentity userIdentityCache:userIdentityCache warnings:warnings error:&v50];
  v6 = v50;

  if (!v10)
  {
    v9 = 0;
    error = errorCopy;
    v8 = v49;
    if (v47 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  identifier2 = [(MCMCodeSignInfo *)v7 identifier];
  platform2 = [(MCMCodeSignInfo *)v7 platform];
  context4 = [(MCMCommand *)self context];
  userIdentityCache2 = [context4 userIdentityCache];
  v9 = [MCMContainerIdentity containerIdentityWithUserIdentity:v10 identifier:identifier2 containerConfig:v49 platform:platform2 userIdentityCache:userIdentityCache2 error:&v51];

  v8 = v49;
  if (!v9)
  {
    v40 = [MCMError alloc];
    v41 = [(MCMError *)v40 initWithErrorType:v51];

    v6 = v41;
  }

  error = errorCopy;
  if ((v47 & 0x8000000000000000) == 0)
  {
LABEL_31:
    sandbox_extension_release();
  }

LABEL_32:
  if (error && !v9)
  {
    v42 = v6;
    *error = v6;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)execute
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v26[0] = 0;
  v4 = [(MCMCommandCreateOrLookupWithBundle *)self _containerIdentityWithError:v26];
  v5 = v26[0];
  if (!v4)
  {
    v9 = 0;
    v20 = 0;
    metadataMinimal = 0;
    goto LABEL_11;
  }

  createIfNecessary = [(MCMCommandCreateOrLookupWithBundle *)self createIfNecessary];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  v9 = [clientIdentity isAllowedToPerformOperationType:createIfNecessary containerIdentity:v4 part:0 partDomain:0 access:0];

  if (!v9)
  {
    v12 = +[MCMError notEntitled];

    v20 = 0;
    metadataMinimal = 0;
LABEL_10:
    v5 = v12;
    goto LABEL_11;
  }

  context2 = [(MCMCommand *)self context];
  containerFactory = [context2 containerFactory];
  v25 = v5;
  v9 = [containerFactory containerForContainerIdentity:v4 createIfNecessary:-[MCMCommandCreateOrLookupWithBundle createIfNecessary](self error:{"createIfNecessary"), &v25}];
  v12 = v25;

  metadataMinimal = [v9 metadataMinimal];
  if (!metadataMinimal)
  {
    v20 = 0;
    goto LABEL_10;
  }

  if ([(MCMCommandCreateOrLookupWithBundle *)self issueSandboxExtension])
  {
    goto LABEL_6;
  }

  context3 = [(MCMCommand *)self context];
  clientIdentity2 = [context3 clientIdentity];
  userIdentity = [clientIdentity2 userIdentity];
  isDataSeparated = [userIdentity isDataSeparated];

  if (isDataSeparated)
  {
LABEL_6:
    containerPath = [metadataMinimal containerPath];
    containerIdentity = [metadataMinimal containerIdentity];
    v24 = v12;
    v20 = [(MCMCommandCreateOrLookupWithBundle *)self _tokenForContainerPath:containerPath containerIdentity:containerIdentity error:&v24];
    v5 = v24;
  }

  else
  {
    v20 = 0;
    v5 = v12;
  }

  if (v20 || !v5 || [v5 type] == 1 || objc_msgSend(v5, "type") == 72)
  {
    v21 = [[MCMResultWithContainerBase alloc] initWithMetadata:metadataMinimal sandboxToken:v20 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0];
    if (v21)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_11:
  v21 = [(MCMResultBase *)[MCMResultWithContainerBase alloc] initWithError:v5];
LABEL_12:
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v21];

  objc_autoreleasePoolPop(v3);
  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  sandboxToken = self->_sandboxToken;
  if (sandboxToken)
  {
    free(sandboxToken);
    memset_s(&self->_sandboxToken, 8uLL, 0, 8uLL);
  }

  v5.receiver = self;
  v5.super_class = MCMCommandCreateOrLookupWithBundle;
  [(MCMCommandCreateOrLookupWithBundle *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (MCMCommandCreateOrLookupWithBundle)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MCMCommandCreateOrLookupWithBundle;
  v9 = [(MCMCommand *)&v17 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v9->_createIfNecessary = [messageCopy createIfNecessary];
    v9->_transient = [messageCopy transient];
    v9->_issueSandboxExtension = [messageCopy issueSandboxExtension];
    sandboxToken = [messageCopy sandboxToken];
    if (sandboxToken)
    {
      sandboxToken = strndup(sandboxToken, 0x800uLL);
    }

    v9->_sandboxToken = sandboxToken;
    bundleURL = [messageCopy bundleURL];
    bundleURL = v9->_bundleURL;
    v9->_bundleURL = bundleURL;

    executableURL = [messageCopy executableURL];
    executableURL = v9->_executableURL;
    v9->_executableURL = executableURL;
  }

  v15 = *MEMORY[0x1E69E9840];
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
  return 36;
}

@end