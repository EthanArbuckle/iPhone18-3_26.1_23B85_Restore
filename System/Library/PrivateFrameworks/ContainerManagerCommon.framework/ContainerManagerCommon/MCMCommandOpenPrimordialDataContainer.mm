@interface MCMCommandOpenPrimordialDataContainer
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)extension;
- (BOOL)preflightClientAllowed;
- (BOOL)testMode;
- (MCMCommandOpenPrimordialDataContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
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
    v52 = [(MCMCommand *)self context];
    v34 = [v52 clientIdentity];
    v35 = [v34 codeSignInfo];
    v36 = [v35 identifier];
    v37 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    v38 = [v37 containerClass];
    v39 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    [v39 identifier];
    v41 = v40 = v3;
    v42 = [(MCMCommandOpenPrimordialDataContainer *)self extension];
    v43 = "app";
    *buf = 138544130;
    *&buf[12] = 2048;
    *&buf[4] = v36;
    if (v42)
    {
      v43 = "extension";
    }

    *&buf[14] = v38;
    *&buf[22] = 2114;
    *&buf[24] = v41;
    v55 = 2082;
    v56 = v43;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Fetching primordial container for '%{public}@' with identifier '%llu:%{public}@' (%{public}s)", buf, 0x2Au);

    v3 = v40;
  }

  v5 = [(MCMCommandOpenPrimordialDataContainer *)self error];

  if (v5)
  {
    v6 = [(MCMCommandOpenPrimordialDataContainer *)self error];
LABEL_4:
    v7 = 0;
    v8 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];

  if (!v6)
  {
    goto LABEL_4;
  }

  v21 = [(MCMCommand *)self context];
  v22 = [v21 containerFactory];
  v23 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
  v53 = 0;
  v8 = [v22 containerForContainerIdentity:v23 createIfNecessary:1 error:&v53];
  v6 = v53;

  if (!v8)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v24 = [v8 metadataMinimal];
  v7 = [v24 existed];
  v25 = [v24 containerPath];
  v9 = [v25 containerDataURL];

  if (v9)
  {
    v26 = v8;
    v27 = [(MCMCommand *)self context];
    v28 = [v27 clientIdentity];
    v29 = [v28 proximateClient];
    v30 = v29;
    if (v29)
    {
      [v29 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    [v9 fileSystemRepresentation];
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
        v9 = 0;
        v6 = v46;
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
    v11 = v9;
    v12 = v6;
    if (v7)
    {
      v13 = @"Fetched";
    }

    else
    {
      v13 = @"Created";
    }

    v48 = [(MCMCommand *)self context];
    [v48 clientIdentity];
    v14 = v50 = v8;
    v15 = [v14 codeSignInfo];
    v16 = [v15 identifier];
    [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    v51 = self;
    v17 = v49 = v3;
    [v17 identifier];
    v19 = v18 = v7;
    *buf = 138544130;
    *&buf[4] = v13;
    v6 = v12;
    v9 = v11;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 2114;
    *&buf[24] = v19;
    v55 = 2112;
    v56 = v6;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ primordial container for '%{public}@' with identifier '%{public}@': error = %@", buf, 0x2Au);

    v7 = v18;
    v3 = v49;
    self = v51;

    v8 = v50;
  }

  if (v9)
  {
    v20 = [[MCMResultWithURLBase alloc] initWithURL:v9 existed:v7 sandboxToken:0];
  }

  else
  {
    if (!v6)
    {
      v6 = +[MCMError unsupported];
    }

    v20 = [(MCMResultBase *)[MCMResultWithURLBase alloc] initWithError:v6];
  }

  v31 = v20;
  v32 = [(MCMCommand *)self resultPromise];
  [v32 completeWithResult:v31];

  objc_autoreleasePoolPop(v3);
  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (MCMCommandOpenPrimordialDataContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v55.receiver = self;
  v55.super_class = MCMCommandOpenPrimordialDataContainer;
  v10 = [(MCMCommand *)&v55 initWithMessage:v8 context:v9 reply:a5];
  if (v10)
  {
    v11 = v8;
    v12 = [v11 useCodeSignDatabase];
    v13 = [v9 clientIdentity];
    v14 = [v13 codeSignInfo];
    v54 = 1;
    v15 = [v14 entitlements];
    v16 = [v15 containerRequiredIdentifier];

    if (v16)
    {
LABEL_3:
      v10->_testMode = [v13 isAllowedToTest] & v12;
      v17 = [gCodeSigningMapping dataContainerTypeForIdentifier:v16];
      if (!v17)
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v57 = v16;
          _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEFAULT, "Unknown data container type for identifier (%{public}@), assuming app", buf, 0xCu);
        }

        v17 = 2;
      }

      v52 = v9;
      v53 = v14;
      v10->_extension = v17 == 4;
      v19 = [(MCMCommand *)v10 context];
      v20 = [v19 globalConfiguration];
      v21 = [v20 staticConfig];
      v22 = [v21 configForContainerClass:v17];

      v23 = [v13 userIdentity];
      v51 = v8;
      if ([v23 isNoSpecificPersona])
      {
        v24 = [v9 userIdentityCache];
        v25 = [v23 posixUser];
        [v24 userIdentityForPersonalPersonaWithPOSIXUser:v25];
        v27 = v26 = v13;

        v23 = v27;
        v13 = v26;
      }

      v14 = v53;
      if (v23)
      {
        v28 = v13;
        v29 = [v11 platform];
        v30 = [(MCMCommand *)v10 context];
        [v30 userIdentityCache];
        v32 = v31 = v11;
        v14 = v53;
        v33 = v29;
        v13 = v28;
        v34 = [MCMContainerIdentity containerIdentityWithUserIdentity:v23 identifier:v16 containerConfig:v22 platform:v33 transient:0 userIdentityCache:v32 error:&v54];
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

      v8 = v51;
      v9 = v52;
      goto LABEL_23;
    }

    v39 = [v14 entitlements];
    v40 = [v39 requestsNoContainer];

    if (v40)
    {
      v41 = container_log_handle_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v13 posixPID];
        *buf = 138543618;
        v57 = v14;
        v58 = 1024;
        v59 = v42;
        _os_log_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEFAULT, "Client (%{public}@, %d) requests no container with no-container entitlement", buf, 0x12u);
      }

      v43 = [MCMError alloc];
      v44 = 96;
    }

    else
    {
      v45 = [v14 identifier];
      if (v45)
      {
        v16 = v45;
        goto LABEL_3;
      }

      v46 = container_log_handle_for_category();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v13 posixPID];
        *buf = 67109120;
        LODWORD(v57) = v47;
        _os_log_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_DEFAULT, "No container-required or codesign identifier -- no container possible for client %d", buf, 8u);
      }

      v43 = [MCMError alloc];
      v44 = 18;
    }

    v48 = [(MCMError *)v43 initWithErrorType:v44];
    v16 = v10->_error;
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