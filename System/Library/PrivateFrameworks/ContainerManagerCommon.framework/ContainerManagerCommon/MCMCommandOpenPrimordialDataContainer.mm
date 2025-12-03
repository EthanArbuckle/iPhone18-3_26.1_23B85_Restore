@interface MCMCommandOpenPrimordialDataContainer
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)extension;
- (BOOL)preflightClientAllowed;
- (BOOL)testMode;
- (MCMCommandOpenPrimordialDataContainer)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMContainerIdentity)containerIdentity;
- (MCMError)error;
- (void)execute;
@end

@implementation MCMCommandOpenPrimordialDataContainer

- (BOOL)extension
{
  result = self->_extension;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)testMode
{
  result = self->_testMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMError)error
{
  result = self->_error;
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
  v57 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    context = [(MCMCommand *)self context];
    clientIdentity = [context clientIdentity];
    codeSignInfo = [clientIdentity codeSignInfo];
    identifier = [codeSignInfo identifier];
    containerIdentity = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    containerClass = [containerIdentity containerClass];
    containerIdentity2 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    [containerIdentity2 identifier];
    v41 = v40 = v3;
    extension = [(MCMCommandOpenPrimordialDataContainer *)self extension];
    v43 = "app";
    *buf = 138544130;
    *&buf[12] = 2048;
    *&buf[4] = identifier;
    if (extension)
    {
      v43 = "extension";
    }

    *&buf[14] = containerClass;
    *&buf[22] = 2114;
    *&buf[24] = v41;
    v55 = 2082;
    v56 = v43;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Fetching primordial container for '%{public}@' with identifier '%llu:%{public}@' (%{public}s)", buf, 0x2Au);

    v3 = v40;
  }

  error = [(MCMCommandOpenPrimordialDataContainer *)self error];

  if (error)
  {
    error2 = [(MCMCommandOpenPrimordialDataContainer *)self error];
LABEL_4:
    existed = 0;
    v8 = 0;
LABEL_5:
    containerDataURL = 0;
    goto LABEL_6;
  }

  error2 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];

  if (!error2)
  {
    goto LABEL_4;
  }

  context2 = [(MCMCommand *)self context];
  containerFactory = [context2 containerFactory];
  containerIdentity3 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
  v53 = 0;
  v8 = [containerFactory containerForContainerIdentity:containerIdentity3 createIfNecessary:1 error:&v53];
  error2 = v53;

  if (!v8)
  {
    existed = 0;
    goto LABEL_5;
  }

  metadataMinimal = [v8 metadataMinimal];
  existed = [metadataMinimal existed];
  containerPath = [metadataMinimal containerPath];
  containerDataURL = [containerPath containerDataURL];

  if (containerDataURL)
  {
    v26 = v8;
    context3 = [(MCMCommand *)self context];
    clientIdentity2 = [context3 clientIdentity];
    proximateClient = [clientIdentity2 proximateClient];
    v30 = proximateClient;
    if (proximateClient)
    {
      [proximateClient auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    [containerDataURL fileSystemRepresentation];
    v44 = sandbox_set_container_path_for_audit_token();

    if (v44)
    {
      v8 = v26;
      if (![(MCMCommandOpenPrimordialDataContainer *)self testMode]&& ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) == 0 && *__error() != 45))
      {
        v45 = container_log_handle_for_category();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          v47 = *__error();
          *buf = 67109376;
          *&buf[4] = v44;
          *&buf[8] = 1024;
          *&buf[10] = v47;
          _os_log_fault_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_FAULT, "sandbox_set_container_path_for_audit_token() failed with error %d / %d.", buf, 0xEu);
        }

        v46 = [[MCMError alloc] initWithErrorType:65];
        containerDataURL = 0;
        error2 = v46;
      }
    }

    else
    {
      v8 = v26;
    }
  }

LABEL_6:
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = containerDataURL;
    v12 = error2;
    if (existed)
    {
      v13 = @"Fetched";
    }

    else
    {
      v13 = @"Created";
    }

    context4 = [(MCMCommand *)self context];
    [context4 clientIdentity];
    v14 = v50 = v8;
    codeSignInfo2 = [v14 codeSignInfo];
    identifier2 = [codeSignInfo2 identifier];
    [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    selfCopy = self;
    v17 = v49 = v3;
    [v17 identifier];
    v19 = v18 = existed;
    *buf = 138544130;
    *&buf[4] = v13;
    error2 = v12;
    containerDataURL = v11;
    *&buf[12] = 2114;
    *&buf[14] = identifier2;
    *&buf[22] = 2114;
    *&buf[24] = v19;
    v55 = 2112;
    v56 = error2;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ primordial container for '%{public}@' with identifier '%{public}@': error = %@", buf, 0x2Au);

    existed = v18;
    v3 = v49;
    self = selfCopy;

    v8 = v50;
  }

  if (containerDataURL)
  {
    v20 = [[MCMResultWithURLBase alloc] initWithURL:containerDataURL existed:existed sandboxToken:0];
  }

  else
  {
    if (!error2)
    {
      error2 = +[MCMError unsupported];
    }

    v20 = [(MCMResultBase *)[MCMResultWithURLBase alloc] initWithError:error2];
  }

  v31 = v20;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v31];

  objc_autoreleasePoolPop(v3);
  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (MCMCommandOpenPrimordialDataContainer)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v60 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  v55.receiver = self;
  v55.super_class = MCMCommandOpenPrimordialDataContainer;
  v10 = [(MCMCommand *)&v55 initWithMessage:messageCopy context:contextCopy reply:reply];
  if (v10)
  {
    v11 = messageCopy;
    useCodeSignDatabase = [v11 useCodeSignDatabase];
    clientIdentity = [contextCopy clientIdentity];
    codeSignInfo = [clientIdentity codeSignInfo];
    v54 = 1;
    entitlements = [codeSignInfo entitlements];
    containerRequiredIdentifier = [entitlements containerRequiredIdentifier];

    if (containerRequiredIdentifier)
    {
LABEL_3:
      v10->_testMode = [clientIdentity isAllowedToTest] & useCodeSignDatabase;
      v17 = [gCodeSigningMapping dataContainerTypeForIdentifier:containerRequiredIdentifier];
      if (!v17)
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v57 = containerRequiredIdentifier;
          _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEFAULT, "Unknown data container type for identifier (%{public}@), assuming app", buf, 0xCu);
        }

        v17 = 2;
      }

      v52 = contextCopy;
      v53 = codeSignInfo;
      v10->_extension = v17 == 4;
      context = [(MCMCommand *)v10 context];
      globalConfiguration = [context globalConfiguration];
      staticConfig = [globalConfiguration staticConfig];
      v22 = [staticConfig configForContainerClass:v17];

      userIdentity = [clientIdentity userIdentity];
      v51 = messageCopy;
      if ([userIdentity isNoSpecificPersona])
      {
        userIdentityCache = [contextCopy userIdentityCache];
        posixUser = [userIdentity posixUser];
        [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:posixUser];
        v27 = v26 = clientIdentity;

        userIdentity = v27;
        clientIdentity = v26;
      }

      codeSignInfo = v53;
      if (userIdentity)
      {
        v28 = clientIdentity;
        platform = [v11 platform];
        context2 = [(MCMCommand *)v10 context];
        [context2 userIdentityCache];
        v32 = v31 = v11;
        codeSignInfo = v53;
        v33 = platform;
        clientIdentity = v28;
        v34 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentity identifier:containerRequiredIdentifier containerConfig:v22 platform:v33 transient:0 userIdentityCache:v32 error:&v54];
        containerIdentity = v10->_containerIdentity;
        v10->_containerIdentity = v34;

        v11 = v31;
        if (v54 != 1)
        {
          v36 = [MCMError alloc];
          v37 = [(MCMError *)v36 initWithErrorType:v54];
          error = v10->_error;
          v10->_error = v37;
        }
      }

      messageCopy = v51;
      contextCopy = v52;
      goto LABEL_23;
    }

    entitlements2 = [codeSignInfo entitlements];
    requestsNoContainer = [entitlements2 requestsNoContainer];

    if (requestsNoContainer)
    {
      v41 = container_log_handle_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        posixPID = [clientIdentity posixPID];
        *buf = 138543618;
        v57 = codeSignInfo;
        v58 = 1024;
        v59 = posixPID;
        _os_log_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEFAULT, "Client (%{public}@, %d) requests no container with no-container entitlement", buf, 0x12u);
      }

      v43 = [MCMError alloc];
      v44 = 96;
    }

    else
    {
      identifier = [codeSignInfo identifier];
      if (identifier)
      {
        containerRequiredIdentifier = identifier;
        goto LABEL_3;
      }

      v46 = container_log_handle_for_category();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        posixPID2 = [clientIdentity posixPID];
        *buf = 67109120;
        LODWORD(v57) = posixPID2;
        _os_log_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_DEFAULT, "No container-required or codesign identifier -- no container possible for client %d", buf, 8u);
      }

      v43 = [MCMError alloc];
      v44 = 18;
    }

    v48 = [(MCMError *)v43 initWithErrorType:v44];
    containerRequiredIdentifier = v10->_error;
    v10->_error = v48;
LABEL_23:
  }

  v49 = *MEMORY[0x1E69E9840];
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
  return 45;
}

@end