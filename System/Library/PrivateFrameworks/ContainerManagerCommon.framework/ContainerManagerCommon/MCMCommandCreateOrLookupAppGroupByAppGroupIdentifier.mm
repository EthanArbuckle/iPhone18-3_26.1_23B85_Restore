@interface MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier
+ (BOOL)secureRestrictedContainerIfNeededWithMetadata:(id)metadata entitlements:(id)entitlements error:(id *)error;
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (NSString)appGroupIdentifier;
- (id)_finalizeWithRealPathWithReason:(unint64_t *)reason containerIdentity:(id)identity clientNegatesReference:(BOOL)reference error:(id *)error;
- (id)_finalizeWithSynthesizedPathWithReason:(unint64_t *)reason containerConfig:(id)config error:(id *)error;
- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity reason:(unint64_t *)reason error:(id *)error;
- (unsigned)expectedPersonaKernelID;
- (void)execute;
@end

@implementation MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

- (BOOL)preflightClientAllowed
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)execute
{
  v43[1] = *MEMORY[0x1E69E9840];
  v39 = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  v43[0] = 0;
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  appGroupIdentifier = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
  v36 = [entitlements negatesReferenceToAppGroupIdentifier:appGroupIdentifier];

  v8 = clientIdentity;
  v9 = self->_appGroupIdentifier;
  v42 = 1;
  context2 = [(MCMCommand *)self context];
  globalConfiguration = [context2 globalConfiguration];
  staticConfig = [globalConfiguration staticConfig];
  v13 = [staticConfig configForContainerClass:7];

  context3 = [(MCMCommand *)self context];
  userIdentityCache = [context3 userIdentityCache];
  warnings = [(MCMCommand *)self warnings];
  v41 = 0;
  v17 = [MCMXPCMessageBase legacyUserIdentityForIdentifier:v9 targetUserIdentity:0 containerConfig:v13 clientIdentity:v8 userIdentityCache:userIdentityCache warnings:warnings error:&v41];
  v18 = v41;

  v19 = v17;
  v38 = v13;
  v37 = v17;
  if (!v17)
  {
    v22 = v8;
    v29 = 0;
LABEL_22:
    [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self _recordAnalyticsEventWithAuthResult:0 clientIsAllowed:v29];
    v26 = [(MCMResultBase *)[MCMResultWithContainerBase alloc] initWithError:v18];
    v27 = v18;
LABEL_23:
    resultPromise = [(MCMCommand *)self resultPromise];
    [resultPromise completeWithResult:v26];

    objc_autoreleasePoolPop(v39);
    v35 = *MEMORY[0x1E69E9840];
    return;
  }

  platform = [v8 platform];
  context4 = [(MCMCommand *)self context];
  [context4 userIdentityCache];
  v23 = v22 = v8;
  v19 = [MCMContainerIdentity containerIdentityWithUserIdentity:v17 identifier:v9 containerConfig:v13 platform:platform userIdentityCache:v23 error:&v42];

  if (!v19)
  {
    v30 = [MCMError alloc];
    v31 = [(MCMError *)v30 initWithErrorType:v42];

    v29 = 0;
    v18 = v31;
    goto LABEL_22;
  }

  v24 = [v22 isAllowedToPerformOperationType:1 containerIdentity:v19 part:0 partDomain:0 access:0];
  if (!v24)
  {
    v32 = 1;
    v43[0] = 1;
    v27 = +[MCMError notEntitled];

    v33 = [(MCMResultBase *)[MCMResultWithContainerBase alloc] initWithError:v27];
    v25 = v36;
    if (!v33)
    {
      v29 = 0;
      goto LABEL_21;
    }

    v26 = v33;
    goto LABEL_17;
  }

  v40 = v18;
  v25 = v36;
  v26 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self _finalizeWithRealPathWithReason:v43 containerIdentity:v19 clientNegatesReference:v36 error:&v40];
  v27 = v40;

  if (v26 | v27)
  {
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = v36;
    }

    if (v28 == 1 && v27)
    {
      [v27 type];
LABEL_19:
      v29 = 1;
LABEL_21:
      v18 = v27;
      goto LABEL_22;
    }

    if (!v26)
    {
      goto LABEL_19;
    }

    v32 = v43[0];
LABEL_17:
    [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self _recordAnalyticsEventWithSandboxExtensionIssueReason:v32 clientIsAllowed:v24 != 0 alwaysReturnPath:0];
    if (v25)
    {
      [v26 setCacheable:0];
    }

    goto LABEL_23;
  }

  _os_crash();
  __break(1u);
}

- (NSString)appGroupIdentifier
{
  result = self->_appGroupIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)expectedPersonaKernelID
{
  result = self->_expectedPersonaKernelID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity reason:(unint64_t *)reason error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  pathCopy = path;
  v12 = [MCMSandboxExtension alloc];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  v15 = [(MCMSandboxExtension *)v12 initWithClientIdentity:clientIdentity containerPath:pathCopy containerIdentity:identityCopy];

  if (v15)
  {
    [(MCMSandboxExtension *)v15 setUseLegacyExtensionPolicy:1];
    [(MCMSandboxExtension *)v15 setUseProxiedClientForTarget:1];
    v16 = [(MCMSandboxExtension *)v15 tokenForPart:0 partDomain:0 error:error];
  }

  else
  {
    v16 = 0;
  }

  *reason = [(MCMSandboxExtension *)v15 reason];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_finalizeWithSynthesizedPathWithReason:(unint64_t *)reason containerConfig:(id)config error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  configCopy = config;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  v53 = 1;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  userIdentity = [clientIdentity userIdentity];
  posixUser = [clientIdentity posixUser];
  v12 = [userIdentity userIdentityWithPOSIXUser:posixUser];

  v51 = uUID;
  if (!v12)
  {
    v32 = [[MCMError alloc] initWithErrorType:155 category:0];
    v33 = 0;
    v17 = 0;
    v20 = 0;
    v21 = 0;
    v31 = 0;
    goto LABEL_11;
  }

  reasonCopy = reason;
  appGroupIdentifier = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
  platform = [clientIdentity platform];
  context2 = [(MCMCommand *)self context];
  userIdentityCache = [context2 userIdentityCache];
  v17 = [MCMConcreteContainerIdentity containerIdentityWithUUID:uUID userIdentity:v12 identifier:appGroupIdentifier containerConfig:configCopy platform:platform userIdentityCache:userIdentityCache error:&v53];

  if (!v17)
  {
    v34 = [MCMError alloc];
    v35 = v53;
    v36 = 0;
LABEL_10:
    v32 = [(MCMError *)v34 initWithErrorType:v35 category:v36];
    v33 = 0;
    v20 = 0;
    v21 = 0;
    v31 = 0;
    reason = reasonCopy;
    goto LABEL_11;
  }

  v18 = +[MCMFileManager defaultManager];
  appGroupIdentifier2 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
  v20 = [v18 fsSanitizedStringFromString:appGroupIdentifier2 allowSpaces:1];

  if (!v20)
  {
    v37 = container_log_handle_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      appGroupIdentifier3 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
      *buf = 138543362;
      v55 = appGroupIdentifier3;
      _os_log_error_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_ERROR, "Invalid app group identifier [%{public}@]", buf, 0xCu);
    }

    v34 = [MCMError alloc];
    v35 = 138;
    v36 = 3;
    goto LABEL_10;
  }

  v21 = [MCMContainerPath containerPathForContainerIdentity:v17 containerPathIdentifier:v20];
  v22 = [MCMResultWithContainerBase alloc];
  [v21 containerPathIdentifier];
  v23 = v48 = v12;
  identifier = [v17 identifier];
  containerClass = [v17 containerClass];
  userIdentity2 = [v17 userIdentity];
  posixUser2 = [userIdentity2 posixUser];
  userIdentity3 = [v17 userIdentity];
  personaUniqueString = [userIdentity3 personaUniqueString];
  containerDataURL = [v21 containerDataURL];
  LOBYTE(v44) = 0;
  LOBYTE(v43) = 1;
  v28 = v22;
  v29 = clientIdentity;
  v30 = posixUser2;
  v31 = [(MCMResultWithContainerBase *)v28 initWithUUID:v51 containerPathIdentifier:v23 identifier:identifier containerClass:containerClass POSIXUser:posixUser2 personaUniqueString:personaUniqueString sandboxToken:0 existed:v43 url:containerDataURL info:0 transient:v44 userManagedAssetsRelPath:0 creator:0];

  clientIdentity = v29;
  v12 = v48;
  reason = reasonCopy;
  v32 = 0;
  v33 = 1;
LABEL_11:
  if (!error || v31)
  {
    if (reason && v31)
    {
      *reason = v33;
    }
  }

  else
  {
    v38 = v32;
    *error = v32;
  }

  v39 = v31;

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_finalizeWithRealPathWithReason:(unint64_t *)reason containerIdentity:(id)identity clientNegatesReference:(BOOL)reference error:(id *)error
{
  referenceCopy = reference;
  v58[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v58[0] = 0;
  context = [(MCMCommand *)self context];
  containerFactory = [context containerFactory];
  v57 = 0;
  v11 = [containerFactory containerForContainerIdentity:identityCopy createIfNecessary:!referenceCopy error:&v57];
  v12 = v57;

  if (v11)
  {
    v51 = v11;
    metadataMinimal = [v11 metadataMinimal];
    containerConfig = [identityCopy containerConfig];
    registerDynamicProtectionWithRestrictedEntitlement = [containerConfig registerDynamicProtectionWithRestrictedEntitlement];

    v52 = identityCopy;
    if (registerDynamicProtectionWithRestrictedEntitlement)
    {
      context2 = [(MCMCommand *)self context];
      clientIdentity = [context2 clientIdentity];
      codeSignInfo = [clientIdentity codeSignInfo];
      entitlements = [codeSignInfo entitlements];

      v56 = v12;
      LODWORD(clientIdentity) = [MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier secureRestrictedContainerIfNeededWithMetadata:metadataMinimal entitlements:entitlements error:&v56];
      v20 = v56;

      if (!clientIdentity)
      {
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v36 = 0;
        v12 = v20;
        identityCopy = v52;
LABEL_12:
        v11 = v51;
        goto LABEL_13;
      }

      v12 = v20;
      identityCopy = v52;
    }

    v21 = v12;
    containerPath = [metadataMinimal containerPath];
    containerIdentity = [metadataMinimal containerIdentity];
    v55 = v12;
    v24 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self _tokenForContainerPath:containerPath containerIdentity:containerIdentity reason:v58 error:&v55];
    v12 = v55;

    if (v24 || !v12 || [v12 type] == 90)
    {
      containerPath2 = [metadataMinimal containerPath];
      containerDataURL = [containerPath2 containerDataURL];
      v47 = [MCMResultWithContainerBase alloc];
      uuid = [metadataMinimal uuid];
      containerPath3 = [metadataMinimal containerPath];
      containerPathIdentifier = [containerPath3 containerPathIdentifier];
      identifier = [metadataMinimal identifier];
      containerClass = [metadataMinimal containerClass];
      userIdentity = [metadataMinimal userIdentity];
      posixUser = [userIdentity posixUser];
      userIdentity2 = [metadataMinimal userIdentity];
      personaUniqueString = [userIdentity2 personaUniqueString];
      LOBYTE(v43) = 0;
      LOBYTE(v42) = [metadataMinimal existed];
      v41 = v24;
      v31 = v47;
      v48 = v24;
      v32 = containerPathIdentifier;
      v33 = [(MCMResultWithContainerBase *)v31 initWithUUID:uuid containerPathIdentifier:containerPathIdentifier identifier:identifier containerClass:containerClass POSIXUser:posixUser personaUniqueString:personaUniqueString sandboxToken:v41 existed:v42 url:containerDataURL info:0 transient:v43 userManagedAssetsRelPath:0 creator:0];

      v34 = containerPath2;
      identityCopy = v52;

      v35 = v48;
      v36 = containerDataURL;
    }

    else
    {
      v33 = 0;
      v35 = 0;
      v34 = 0;
      v36 = 0;
    }

    goto LABEL_12;
  }

  v33 = 0;
  metadataMinimal = 0;
  v35 = 0;
  v34 = 0;
  v36 = 0;
LABEL_13:
  if (!error || v33)
  {
    if (reason && v33)
    {
      *reason = v58[0];
    }
  }

  else
  {
    v37 = v12;
    *error = v12;
  }

  v38 = v33;

  v39 = *MEMORY[0x1E69E9840];
  return v33;
}

- (MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    appGroupIdentifier = [messageCopy appGroupIdentifier];
    appGroupIdentifier = v9->_appGroupIdentifier;
    v9->_appGroupIdentifier = appGroupIdentifier;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)secureRestrictedContainerIfNeededWithMetadata:(id)metadata entitlements:(id)entitlements error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  metadataCopy = metadata;
  identifier = [metadataCopy identifier];
  containerPath = [metadataCopy containerPath];

  containerRootURL = [containerPath containerRootURL];

  v12 = [MCMFileHandle alloc];
  path = [containerRootURL path];
  LOBYTE(v32) = 0;
  v14 = [(MCMFileHandle *)v12 initWithPath:path relativeToFileHandle:0 direction:10 symlinks:1 createMode:0 createDPClass:0 openLazily:v32];

  v15 = [entitlementsCopy isOwnerOfProtectedAppGroupContainerWithIdentifier:identifier];
  v16 = 0;
  if (!v15)
  {
LABEL_7:
    [(MCMFileHandle *)v14 close];
    v24 = 0;
    v25 = 1;
    v19 = v16;
    goto LABEL_17;
  }

  v34 = 0;
  v17 = [(MCMFileHandle *)v14 openWithError:&v34];
  v18 = v34;
  v19 = v18;
  if (v17)
  {
    v33 = v18;
    v20 = [(MCMFileHandle *)v14 registerAppContainerForProtectionWithError:&v33];
    v16 = v33;

    v21 = container_log_handle_for_category();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [containerRootURL path];
        *buf = 138412546;
        v36 = identifier;
        v37 = 2112;
        v38 = path2;
        _os_log_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Registered app group container at [%@] for protection", buf, 0x16u);
      }

      goto LABEL_7;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      path3 = [containerRootURL path];
      *buf = 138412802;
      v36 = identifier;
      v37 = 2112;
      v38 = path3;
      v39 = 2112;
      v40 = v16;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "[%@] Failed to register app group container at [%@] for protection; error = %@", buf, 0x20u);
    }

    v24 = [[MCMError alloc] initWithNSError:v16 url:containerRootURL defaultErrorType:145];
    v19 = v16;
  }

  else
  {
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      path4 = [containerRootURL path];
      *buf = 138412802;
      v36 = identifier;
      v37 = 2112;
      v38 = path4;
      v39 = 2112;
      v40 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "[%@] Failed to open %@ during app group protection check; error = %@", buf, 0x20u);
    }

    v24 = [[MCMError alloc] initWithNSError:v19 url:containerRootURL defaultErrorType:144];
  }

  [(MCMFileHandle *)v14 close];
  if (error)
  {
    v27 = v24;
    v25 = 0;
    *error = v24;
  }

  else
  {
    v25 = 0;
  }

LABEL_17:

  v28 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 38;
}

@end