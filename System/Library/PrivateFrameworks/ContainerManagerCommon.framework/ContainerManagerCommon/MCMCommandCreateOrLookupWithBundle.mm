@interface MCMCommandCreateOrLookupWithBundle
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createIfNecessary;
- (BOOL)issueSandboxExtension;
- (BOOL)preflightClientAllowed;
- (BOOL)transient;
- (MCMCommandCreateOrLookupWithBundle)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (NSURL)bundleURL;
- (NSURL)executableURL;
- (const)sandboxToken;
- (id)_containerIdentityWithError:(id *)a3;
- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4 error:(id *)a5;
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
    [(MCMSandboxExtension *)v13 setUseLegacyExtensionPolicy:1];
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

- (id)_containerIdentityWithError:(id *)a3
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

  v11 = [(MCMCommandCreateOrLookupWithBundle *)self bundleURL];
  v12 = [v11 path];
  v13 = [v12 hasSuffix:@".appex"];

  if (v13)
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v45 = [(MCMCommandCreateOrLookupWithBundle *)self bundleURL];
      v46 = [v45 path];
      *buf = 138543362;
      v53 = v46;
      _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] is a plugin", buf, 0xCu);
    }

    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  v16 = [(MCMCommand *)self context];
  v17 = [v16 globalConfiguration];
  v18 = [v17 staticConfig];
  v8 = [v18 configForContainerClass:v15];

  v19 = [MCMCodeSignInfo alloc];
  v20 = [(MCMCommandCreateOrLookupWithBundle *)self executableURL];
  v7 = [(MCMCodeSignInfo *)v19 initWithURL:v20 error:&v51];

  if (!v7)
  {
    v27 = [MCMError alloc];
    v6 = [(MCMError *)v27 initWithErrorType:v51];
    goto LABEL_30;
  }

  v21 = [(MCMCodeSignInfo *)v7 platform];
  v22 = [(MCMCodeSignInfo *)v7 entitlements];
  v23 = v22;
  if (v21 == 2)
  {
    v24 = [v22 objectForKeyedSubscript:@"com.apple.private.security.no-container"];
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
    v28 = [v22 objectForKeyedSubscript:@"com.apple.security.app-sandbox"];
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

  v48 = a3;
  v49 = v8;
  v47 = v5;

  v30 = [(MCMCodeSignInfo *)v7 identifier];
  v31 = [(MCMCommand *)self context];
  v32 = [v31 clientIdentity];
  v33 = [(MCMCommand *)self context];
  v34 = [v33 userIdentityCache];
  v35 = [(MCMCommand *)self warnings];
  v50 = 0;
  v10 = [MCMXPCMessageBase legacyUserIdentityForIdentifier:v30 targetUserIdentity:0 containerConfig:v49 clientIdentity:v32 userIdentityCache:v34 warnings:v35 error:&v50];
  v6 = v50;

  if (!v10)
  {
    v9 = 0;
    a3 = v48;
    v8 = v49;
    if (v47 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v36 = [(MCMCodeSignInfo *)v7 identifier];
  v37 = [(MCMCodeSignInfo *)v7 platform];
  v38 = [(MCMCommand *)self context];
  v39 = [v38 userIdentityCache];
  v9 = [MCMContainerIdentity containerIdentityWithUserIdentity:v10 identifier:v36 containerConfig:v49 platform:v37 userIdentityCache:v39 error:&v51];

  v8 = v49;
  if (!v9)
  {
    v40 = [MCMError alloc];
    v41 = [(MCMError *)v40 initWithErrorType:v51];

    v6 = v41;
  }

  a3 = v48;
  if ((v47 & 0x8000000000000000) == 0)
  {
LABEL_31:
    sandbox_extension_release();
  }

LABEL_32:
  if (a3 && !v9)
  {
    v42 = v6;
    *a3 = v6;
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
    v13 = 0;
    goto LABEL_11;
  }

  v6 = [(MCMCommandCreateOrLookupWithBundle *)self createIfNecessary];
  v7 = [(MCMCommand *)self context];
  v8 = [v7 clientIdentity];
  v9 = [v8 isAllowedToPerformOperationType:v6 containerIdentity:v4 part:0 partDomain:0 access:0];

  if (!v9)
  {
    v12 = +[MCMError notEntitled];

    v20 = 0;
    v13 = 0;
LABEL_10:
    v5 = v12;
    goto LABEL_11;
  }

  v10 = [(MCMCommand *)self context];
  v11 = [v10 containerFactory];
  v25 = v5;
  v9 = [v11 containerForContainerIdentity:v4 createIfNecessary:-[MCMCommandCreateOrLookupWithBundle createIfNecessary](self error:{"createIfNecessary"), &v25}];
  v12 = v25;

  v13 = [v9 metadataMinimal];
  if (!v13)
  {
    v20 = 0;
    goto LABEL_10;
  }

  if ([(MCMCommandCreateOrLookupWithBundle *)self issueSandboxExtension])
  {
    goto LABEL_6;
  }

  v14 = [(MCMCommand *)self context];
  v15 = [v14 clientIdentity];
  v16 = [v15 userIdentity];
  v17 = [v16 isDataSeparated];

  if (v17)
  {
LABEL_6:
    v18 = [v13 containerPath];
    v19 = [v13 containerIdentity];
    v24 = v12;
    v20 = [(MCMCommandCreateOrLookupWithBundle *)self _tokenForContainerPath:v18 containerIdentity:v19 error:&v24];
    v5 = v24;
  }

  else
  {
    v20 = 0;
    v5 = v12;
  }

  if (v20 || !v5 || [v5 type] == 1 || objc_msgSend(v5, "type") == 72)
  {
    v21 = [[MCMResultWithContainerBase alloc] initWithMetadata:v13 sandboxToken:v20 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0];
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
  v22 = [(MCMCommand *)self resultPromise];
  [v22 completeWithResult:v21];

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

- (MCMCommandCreateOrLookupWithBundle)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v17.receiver = self;
  v17.super_class = MCMCommandCreateOrLookupWithBundle;
  v9 = [(MCMCommand *)&v17 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v9->_createIfNecessary = [v8 createIfNecessary];
    v9->_transient = [v8 transient];
    v9->_issueSandboxExtension = [v8 issueSandboxExtension];
    v10 = [v8 sandboxToken];
    if (v10)
    {
      v10 = strndup(v10, 0x800uLL);
    }

    v9->_sandboxToken = v10;
    v11 = [v8 bundleURL];
    bundleURL = v9->_bundleURL;
    v9->_bundleURL = v11;

    v13 = [v8 executableURL];
    executableURL = v9->_executableURL;
    v9->_executableURL = v13;
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