@interface MCMCommandDiskUsageForContainer
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandDiskUsageForContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (void)execute;
@end

@implementation MCMCommandDiskUsageForContainer

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
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v47 = 1;
  v4 = _os_feature_enabled_impl();
  v5 = [(MCMCommandDiskUsageForContainer *)self concreteContainerIdentity];
  v6 = [(MCMCommand *)self context];
  v7 = [v6 containerCache];
  v46 = 0;
  v8 = [v7 entryForContainerIdentity:v5 error:&v46];
  v9 = v46;

  v10 = [v8 metadataMinimal];
  if (v10)
  {
    v37 = v9;
    v11 = [v5 containerClass];
    v12 = 0;
    if (v11 <= 0xE && ((1 << v11) & 0x412A) != 0)
    {
      v13 = [MCMCommandInfoValueForKey alloc];
      v14 = [(MCMCommand *)self context];
      v15 = [(MCMCommandInfoValueForKey *)v13 initWithKey:@"StaticDiskUsage" concreteContainerIdentity:v5 context:v14 resultPromise:0];

      v12 = [(MCMCommandInfoValueForKey *)v15 infoValueForKeyWithError:&v47];
      if (!v12 && v47 != 24)
      {
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v49 = v5;
          v50 = 2048;
          v51 = v47;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Error looking up info value for identity: %@: %llu", buf, 0x16u);
        }
      }
    }

    objc_opt_class();
    v17 = v12;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v38 = v3;

    if (!v18)
    {
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v35 = [(MCMCommand *)self context];
        v36 = [v35 clientIdentity];
        *buf = 138412290;
        v49 = v36;
        _os_log_debug_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_DEBUG, "Reply to disk usage handed off to the slow workloop for client [%@]", buf, 0xCu);
      }

      v31 = [(MCMCommand *)self reply];
      v32 = [(MCMCommand *)self context];
      v33 = [v32 clientIdentity];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __42__MCMCommandDiskUsageForContainer_execute__block_invoke;
      v40[3] = &unk_1E86B04C0;
      v41 = v10;
      v45 = v4;
      v42 = v5;
      v43 = self;
      v44 = v8;
      [v31 handoffToSlowWorkloopforClientIdentity:v33 withBlock:v40];

      v21 = v41;
      v9 = v37;
      v3 = v38;
      goto LABEL_23;
    }

    v39 = v5;
    v22 = [v17 unsignedLongLongValue];
    v23 = [MCMResultDiskUsageForContainer alloc];
    v24 = [v8 containerIdentity];
    v25 = [v24 containerClass];
    v19 = v8;
    v26 = [v8 containerIdentity];
    [v26 userIdentity];
    v28 = v27 = v10;
    v21 = -[MCMResultDiskUsageForContainer initWithDiskUsageBytes:descendants:containerClass:personaType:](v23, "initWithDiskUsageBytes:descendants:containerClass:personaType:", v22, 0, v25, [v28 personaType]);

    v10 = v27;
    v9 = v37;
    v3 = v38;
    if (v21)
    {
LABEL_19:
      v29 = [(MCMCommand *)self resultPromise];
      [v29 completeWithResult:v21];

      v8 = v19;
      v5 = v39;
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
    v39 = v5;
    v19 = v8;
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v9;
      v50 = 2112;
      v51 = v39;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "No Container with identity: error = %@, identity = %@", buf, 0x16u);
    }

    v21 = [(MCMResultBase *)[MCMResultDiskUsageForContainer alloc] initWithError:v9];
    v17 = 0;
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v8 = v19;
  v5 = v39;
LABEL_24:

  objc_autoreleasePoolPop(v3);
  v34 = *MEMORY[0x1E69E9840];
}

void __42__MCMCommandDiskUsageForContainer_execute__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = +[MCMTestLocks sharedInstance];
  [v2 waitOnLock:8];

  v3 = +[MCMTestLocks sharedInstance];
  [v3 waitOnLock:2];

  v4 = +[MCMFileManager defaultManager];
  v5 = [*(a1 + 32) containerPath];
  v6 = [v5 containerRootURL];
  v7 = [v4 fastDiskUsageForURL:v6];
  v9 = v8;

  if ((*(a1 + 64) & 1) == 0)
  {
    v10 = [*(a1 + 40) containerClass];
    if (v10 <= 0xE && ((1 << v10) & 0x412A) != 0)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__5365;
      v37 = __Block_byref_object_dispose__5366;
      v38 = 0;
      v11 = [*(a1 + 48) reply];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __42__MCMCommandDiskUsageForContainer_execute__block_invoke_8;
      v27[3] = &unk_1E86B0498;
      v31 = v7;
      v32 = v9;
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v28 = v12;
      v29 = v13;
      v30 = &v33;
      [v11 dispatchSyncToFastWorkloopWithBlock:v27];

      v14 = [v34[5] result];
      v15 = [v14 error];

      if (v15)
      {
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 40);
          v26 = [v14 error];
          *buf = 138412546;
          v40 = v25;
          v41 = 2112;
          v42 = v26;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Error setting info value for identity: %@: %@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v33, 8);
    }
  }

  v17 = [MCMResultDiskUsageForContainer alloc];
  v18 = [*(a1 + 56) containerIdentity];
  v19 = [v18 containerClass];
  v20 = [*(a1 + 56) containerIdentity];
  v21 = [v20 userIdentity];
  v22 = -[MCMResultDiskUsageForContainer initWithDiskUsageBytes:descendants:containerClass:personaType:](v17, "initWithDiskUsageBytes:descendants:containerClass:personaType:", v7, v9, v19, [v21 personaType]);

  v23 = [*(a1 + 48) resultPromise];
  [v23 completeWithResult:v22];

  v24 = *MEMORY[0x1E69E9840];
}

void __42__MCMCommandDiskUsageForContainer_execute__block_invoke_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MCMCommandSetInfoValue alloc];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  v7 = [(MCMCommandSetInfoValue *)v2 initWithKey:@"StaticDiskUsage" value:v3 containerIdentity:v4 context:v5 resultPromise:*(*(*(a1 + 48) + 8) + 40)];

  [(MCMCommandSetInfoValue *)v7 execute];
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];

  v5 = [(MCMCommandDiskUsageForContainer *)self concreteContainerIdentity];
  v6 = [v4 isAllowedToPerformOperationType:0 containerIdentity:v5 part:0 partDomain:0 access:0];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (MCMCommandDiskUsageForContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandDiskUsageForContainer;
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
  return 23;
}

@end