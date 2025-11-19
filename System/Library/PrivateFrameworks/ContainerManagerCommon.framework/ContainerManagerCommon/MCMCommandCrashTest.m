@interface MCMCommandCrashTest
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandCrashTest)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (unint64_t)crashCount;
- (unint64_t)setTestLocks;
- (void)execute;
@end

@implementation MCMCommandCrashTest

- (unint64_t)setTestLocks
{
  result = self->_setTestLocks;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)crashCount
{
  result = self->_crashCount;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v76 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 csIdentifier];

  v5 = [(MCMCommand *)self context];
  v69 = 1;
  v6 = containermanager_copy_global_configuration();
  v7 = 12;
  v8 = [v6 dispositionForContainerClass:12];

  if (v8 != 1)
  {
    v9 = containermanager_copy_global_configuration();
    v7 = 10;
    [v9 dispositionForContainerClass:10];
  }

  v10 = [(MCMCommand *)self context];
  v11 = [v10 globalConfiguration];
  v12 = [v11 staticConfig];
  v13 = [v12 configForContainerClass:v7];

  v14 = [v5 userIdentityCache];
  v15 = [v14 userIdentityForPersonalPersona];
  active_platform = dyld_get_active_platform();
  v17 = [(MCMCommand *)self context];
  v18 = [v17 userIdentityCache];
  v64 = v13;
  v19 = [MCMContainerIdentity containerIdentityWithUserIdentity:v15 identifier:v4 containerConfig:v13 platform:active_platform userIdentityCache:v18 error:&v69];

  v20 = [v5 containerFactory];
  v68 = 0;
  v21 = [v20 containerForContainerIdentity:v19 createIfNecessary:1 error:&v68];
  v22 = v68;

  v67 = v22;
  v23 = [v21 metadataWithError:&v67];
  v24 = v67;

  v65 = v4;
  if (!v23)
  {
    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v4;
      v74 = 2112;
      v75 = v24;
      _os_log_error_impl(&dword_1DF2C3000, &v31->super, OS_LOG_TYPE_ERROR, "Failed to create or lookup lookup existing container for retry test: %@; error = %@", buf, 0x16u);
    }

    v63 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_20;
  }

  v62 = v21;
  if (![(MCMCommandCrashTest *)self crashCount])
  {
    v34 = v19;
    v63 = 0;
    v33 = 0;
LABEL_16:
    v31 = objc_alloc_init(MCMResultPromise);
    v39 = [v23 containerIdentity];
    v70 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
    v32 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v40 removeAllCodeSignInfo:0 context:v5 resultPromise:v31];

    [v32 execute];
    v41 = [(MCMResultPromise *)v31 result];
    v42 = [v41 error];

    if (!v42)
    {

      v46 = objc_opt_new();
      v19 = v34;
      v21 = v62;
      goto LABEL_22;
    }

    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v61 = [v23 containerPath];
      v60 = [v61 containerRootURL];
      v58 = [v60 path];
      v59 = [(MCMResultPromise *)v31 result];
      v50 = [v59 error];
      *buf = 138412546;
      *&buf[4] = v58;
      v74 = 2112;
      v75 = v50;
      v51 = v50;
      _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Failed to delete retry container at [%@]; error = %@", buf, 0x16u);
    }

    v44 = [(MCMResultPromise *)v31 result];
    v45 = [v44 error];

    v24 = v45;
    v19 = v34;
    v21 = v62;
LABEL_20:

    v46 = [[MCMResultBase alloc] initWithError:v24];
LABEL_22:
    v47 = container_log_handle_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 0;
      v74 = 2112;
      v75 = v24;
      _os_log_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEFAULT, "Restart result: %llu, error = %@", buf, 0x16u);
    }

    v48 = [(MCMCommand *)self resultPromise];
    [v48 completeWithResult:v46];

    objc_autoreleasePoolPop(context);
    v49 = *MEMORY[0x1E69E9840];
    return;
  }

  v25 = [v23 info];
  v26 = [v25 objectForKeyedSubscript:@"CrashCounter"];

  v63 = v26;
  if (v26)
  {
    v27 = [v23 info];
    v28 = [v27 objectForKeyedSubscript:@"CrashCounter"];
    v29 = [v28 unsignedIntValue];

    v30 = v29 - 1;
  }

  else
  {
    v30 = [(MCMCommandCrashTest *)self crashCount];
  }

  v35 = container_log_handle_for_category();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = v30;
    _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Restarts remaining in retry test: %llu", buf, 0xCu);
  }

  v36 = [MCMCommandSetInfoValue alloc];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v30];
  v38 = [v23 containerIdentity];
  v33 = [(MCMCommandSetInfoValue *)v36 initWithKey:@"CrashCounter" value:v37 containerIdentity:v38 context:v5 resultPromise:0];

  [(MCMCommandSetInfoValue *)v33 execute];
  if (!v30)
  {
    v34 = v19;
    goto LABEL_16;
  }

  if ([(MCMCommandCrashTest *)self setTestLocks])
  {
    v52 = +[MCMTestLocks sharedInstance];
    [v52 setEnabled:1];
    [v52 acquireLock:{-[MCMCommandCrashTest setTestLocks](self, "setTestLocks")}];
  }

  [objc_alloc_init(MCMRuntimeState) persist];
  v53 = container_log_handle_for_category();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_DEFAULT, "Restarting", buf, 2u);
  }

  *buf = 1;
  if (sysctlbyname("kern.crash_behavior_test_mode", 0, 0, buf, 8uLL) < 0)
  {
    v54 = *__error();
    v55 = container_log_handle_for_category();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v71 = 67109120;
      v72 = v54;
      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Could not enable crash test mode, error = %{darwin.errno}d", v71, 8u);
    }
  }

  usleep(0x7A120u);
  v56 = abort_with_reason();
  [(MCMCommandCrashTest *)v56 preflightClientAllowed];
}

- (BOOL)preflightClientAllowed
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 isInternalImage];

  if (v4)
  {
    v5 = [(MCMCommand *)self context];
    v6 = [v5 clientIdentity];
    v7 = [v6 isAllowedToTest];

    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (MCMCommandCrashTest)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMCommandCrashTest;
  v9 = [(MCMCommand *)&v12 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v9->_crashCount = [v8 crashCount];
    v9->_setTestLocks = [v8 setTestLocks];
  }

  v10 = *MEMORY[0x1E69E9840];
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
  return 25;
}

@end