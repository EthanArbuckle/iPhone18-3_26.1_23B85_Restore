@interface MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier
+ (BOOL)secureRestrictedContainerIfNeededWithMetadata:(id)a3 entitlements:(id)a4 error:(id *)a5;
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (NSString)appGroupIdentifier;
- (id)_finalizeWithRealPathWithReason:(unint64_t *)a3 containerIdentity:(id)a4 clientNegatesReference:(BOOL)a5 error:(id *)a6;
- (id)_finalizeWithSynthesizedPathWithReason:(unint64_t *)a3 containerConfig:(id)a4 error:(id *)a5;
- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4 reason:(unint64_t *)a5 error:(id *)a6;
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
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];

  v43[0] = 0;
  v5 = [v4 codeSignInfo];
  v6 = [v5 entitlements];
  v7 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
  v36 = [v6 negatesReferenceToAppGroupIdentifier:v7];

  v8 = v4;
  v9 = self->_appGroupIdentifier;
  v42 = 1;
  v10 = [(MCMCommand *)self context];
  v11 = [v10 globalConfiguration];
  v12 = [v11 staticConfig];
  v13 = [v12 configForContainerClass:7];

  v14 = [(MCMCommand *)self context];
  v15 = [v14 userIdentityCache];
  v16 = [(MCMCommand *)self warnings];
  v41 = 0;
  v17 = [MCMXPCMessageBase legacyUserIdentityForIdentifier:v9 targetUserIdentity:0 containerConfig:v13 clientIdentity:v8 userIdentityCache:v15 warnings:v16 error:&v41];
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
    v34 = [(MCMCommand *)self resultPromise];
    [v34 completeWithResult:v26];

    objc_autoreleasePoolPop(v39);
    v35 = *MEMORY[0x1E69E9840];
    return;
  }

  v20 = [v8 platform];
  v21 = [(MCMCommand *)self context];
  [v21 userIdentityCache];
  v23 = v22 = v8;
  v19 = [MCMContainerIdentity containerIdentityWithUserIdentity:v17 identifier:v9 containerConfig:v13 platform:v20 userIdentityCache:v23 error:&v42];

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

- (id)_tokenForContainerPath:(id)a3 containerIdentity:(id)a4 reason:(unint64_t *)a5 error:(id *)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v12 = [MCMSandboxExtension alloc];
  v13 = [(MCMCommand *)self context];
  v14 = [v13 clientIdentity];
  v15 = [(MCMSandboxExtension *)v12 initWithClientIdentity:v14 containerPath:v11 containerIdentity:v10];

  if (v15)
  {
    [(MCMSandboxExtension *)v15 setUseLegacyExtensionPolicy:1];
    [(MCMSandboxExtension *)v15 setUseProxiedClientForTarget:1];
    v16 = [(MCMSandboxExtension *)v15 tokenForPart:0 partDomain:0 error:a6];
  }

  else
  {
    v16 = 0;
  }

  *a5 = [(MCMSandboxExtension *)v15 reason];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_finalizeWithSynthesizedPathWithReason:(unint64_t *)a3 containerConfig:(id)a4 error:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v52 = a4;
  v7 = [(MCMCommand *)self context];
  v8 = [v7 clientIdentity];

  v53 = 1;
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v8 userIdentity];
  v11 = [v8 posixUser];
  v12 = [v10 userIdentityWithPOSIXUser:v11];

  v51 = v9;
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

  v49 = a3;
  v13 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
  v14 = [v8 platform];
  v15 = [(MCMCommand *)self context];
  v16 = [v15 userIdentityCache];
  v17 = [MCMConcreteContainerIdentity containerIdentityWithUUID:v9 userIdentity:v12 identifier:v13 containerConfig:v52 platform:v14 userIdentityCache:v16 error:&v53];

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
    a3 = v49;
    goto LABEL_11;
  }

  v18 = +[MCMFileManager defaultManager];
  v19 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
  v20 = [v18 fsSanitizedStringFromString:v19 allowSpaces:1];

  if (!v20)
  {
    v37 = container_log_handle_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v42 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self appGroupIdentifier];
      *buf = 138543362;
      v55 = v42;
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
  v24 = [v17 identifier];
  v46 = [v17 containerClass];
  v47 = [v17 userIdentity];
  v25 = [v47 posixUser];
  v45 = [v17 userIdentity];
  v26 = [v45 personaUniqueString];
  v27 = [v21 containerDataURL];
  LOBYTE(v44) = 0;
  LOBYTE(v43) = 1;
  v28 = v22;
  v29 = v8;
  v30 = v25;
  v31 = [(MCMResultWithContainerBase *)v28 initWithUUID:v51 containerPathIdentifier:v23 identifier:v24 containerClass:v46 POSIXUser:v25 personaUniqueString:v26 sandboxToken:0 existed:v43 url:v27 info:0 transient:v44 userManagedAssetsRelPath:0 creator:0];

  v8 = v29;
  v12 = v48;
  a3 = v49;
  v32 = 0;
  v33 = 1;
LABEL_11:
  if (!a5 || v31)
  {
    if (a3 && v31)
    {
      *a3 = v33;
    }
  }

  else
  {
    v38 = v32;
    *a5 = v32;
  }

  v39 = v31;

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_finalizeWithRealPathWithReason:(unint64_t *)a3 containerIdentity:(id)a4 clientNegatesReference:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v58[0] = 0;
  v9 = [(MCMCommand *)self context];
  v10 = [v9 containerFactory];
  v57 = 0;
  v11 = [v10 containerForContainerIdentity:v8 createIfNecessary:!v6 error:&v57];
  v12 = v57;

  if (v11)
  {
    v51 = v11;
    v13 = [v11 metadataMinimal];
    v14 = [v8 containerConfig];
    v15 = [v14 registerDynamicProtectionWithRestrictedEntitlement];

    v52 = v8;
    if (v15)
    {
      v16 = [(MCMCommand *)self context];
      v17 = [v16 clientIdentity];
      v18 = [v17 codeSignInfo];
      v19 = [v18 entitlements];

      v56 = v12;
      LODWORD(v17) = [MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier secureRestrictedContainerIfNeededWithMetadata:v13 entitlements:v19 error:&v56];
      v20 = v56;

      if (!v17)
      {
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v36 = 0;
        v12 = v20;
        v8 = v52;
LABEL_12:
        v11 = v51;
        goto LABEL_13;
      }

      v12 = v20;
      v8 = v52;
    }

    v21 = v12;
    v22 = [v13 containerPath];
    v23 = [v13 containerIdentity];
    v55 = v12;
    v24 = [(MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier *)self _tokenForContainerPath:v22 containerIdentity:v23 reason:v58 error:&v55];
    v12 = v55;

    if (v24 || !v12 || [v12 type] == 90)
    {
      v49 = [v13 containerPath];
      v45 = [v49 containerDataURL];
      v47 = [MCMResultWithContainerBase alloc];
      v46 = [v13 uuid];
      v50 = [v13 containerPath];
      v25 = [v50 containerPathIdentifier];
      v26 = [v13 identifier];
      v44 = [v13 containerClass];
      v27 = [v13 userIdentity];
      v28 = [v27 posixUser];
      v29 = [v13 userIdentity];
      v30 = [v29 personaUniqueString];
      LOBYTE(v43) = 0;
      LOBYTE(v42) = [v13 existed];
      v41 = v24;
      v31 = v47;
      v48 = v24;
      v32 = v25;
      v33 = [(MCMResultWithContainerBase *)v31 initWithUUID:v46 containerPathIdentifier:v25 identifier:v26 containerClass:v44 POSIXUser:v28 personaUniqueString:v30 sandboxToken:v41 existed:v42 url:v45 info:0 transient:v43 userManagedAssetsRelPath:0 creator:0];

      v34 = v49;
      v8 = v52;

      v35 = v48;
      v36 = v45;
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
  v13 = 0;
  v35 = 0;
  v34 = 0;
  v36 = 0;
LABEL_13:
  if (!a6 || v33)
  {
    if (a3 && v33)
    {
      *a3 = v58[0];
    }
  }

  else
  {
    v37 = v12;
    *a6 = v12;
  }

  v38 = v33;

  v39 = *MEMORY[0x1E69E9840];
  return v33;
}

- (MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 appGroupIdentifier];
    appGroupIdentifier = v9->_appGroupIdentifier;
    v9->_appGroupIdentifier = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)secureRestrictedContainerIfNeededWithMetadata:(id)a3 entitlements:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [v8 identifier];
  v10 = [v8 containerPath];

  v11 = [v10 containerRootURL];

  v12 = [MCMFileHandle alloc];
  v13 = [v11 path];
  LOBYTE(v32) = 0;
  v14 = [(MCMFileHandle *)v12 initWithPath:v13 relativeToFileHandle:0 direction:10 symlinks:1 createMode:0 createDPClass:0 openLazily:v32];

  v15 = [v7 isOwnerOfProtectedAppGroupContainerWithIdentifier:v9];
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
        v23 = [v11 path];
        *buf = 138412546;
        v36 = v9;
        v37 = 2112;
        v38 = v23;
        _os_log_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Registered app group container at [%@] for protection", buf, 0x16u);
      }

      goto LABEL_7;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = [v11 path];
      *buf = 138412802;
      v36 = v9;
      v37 = 2112;
      v38 = v31;
      v39 = 2112;
      v40 = v16;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "[%@] Failed to register app group container at [%@] for protection; error = %@", buf, 0x20u);
    }

    v24 = [[MCMError alloc] initWithNSError:v16 url:v11 defaultErrorType:145];
    v19 = v16;
  }

  else
  {
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v30 = [v11 path];
      *buf = 138412802;
      v36 = v9;
      v37 = 2112;
      v38 = v30;
      v39 = 2112;
      v40 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "[%@] Failed to open %@ during app group protection check; error = %@", buf, 0x20u);
    }

    v24 = [[MCMError alloc] initWithNSError:v19 url:v11 defaultErrorType:144];
  }

  [(MCMFileHandle *)v14 close];
  if (a5)
  {
    v27 = v24;
    v25 = 0;
    *a5 = v24;
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