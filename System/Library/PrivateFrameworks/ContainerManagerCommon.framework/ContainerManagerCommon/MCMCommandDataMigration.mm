@interface MCMCommandDataMigration
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_performBundleContainerOwnershipMigrationWithError:(id *)error;
- (BOOL)_performInternalACLMigrationWithError:(id *)error;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandDataMigration

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
  return 24;
}

- (BOOL)_performInternalACLMigrationWithError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v9 = containermanager_copy_global_configuration();
  staticConfig = [v9 staticConfig];
  v11 = [staticConfig configForContainerClass:12];

  v12 = containermanager_copy_global_configuration();
  staticConfig2 = [v12 staticConfig];
  v14 = [staticConfig2 configForContainerClass:13];

  v15 = containermanager_copy_global_configuration();
  LODWORD(staticConfig2) = [v15 systemContainerMode];

  if (staticConfig2 != 1 || ([v5 hasMigrationOccurredForType:@"ACLMigration"] & 1) != 0)
  {
    v16 = 0;
    classURL = 0;
    classURL2 = 0;
    v19 = 0;
LABEL_4:
    v20 = 1;
    goto LABEL_5;
  }

  v23 = containermanager_copy_global_configuration();
  classPathCache = [v23 classPathCache];
  v25 = [classPathCache containerClassPathForUserIdentity:defaultUserIdentity containerConfig:v11 typeClass:objc_opt_class()];
  classURL = [v25 classURL];

  v26 = +[MCMFileManager defaultManager];
  LODWORD(classPathCache) = [v26 itemExistsAtURL:classURL];

  errorCopy = error;
  if (!classPathCache)
  {
    v42 = 0;
    goto LABEL_12;
  }

  v27 = +[MCMFileManager defaultManager];
  v44 = 0;
  v28 = [v27 standardizeAllSystemContainerACLsAtURL:classURL error:&v44];
  v42 = v44;

  if (v28)
  {
LABEL_12:
    v16 = 0;
    v40 = 1;
    goto LABEL_13;
  }

  v29 = container_log_handle_for_category();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v46 = v42;
    _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to set ACLs on system containers : %@", buf, 0xCu);
  }

  v16 = [[MCMError alloc] initWithNSError:v42 url:classURL defaultErrorType:63];
  v40 = 0;
LABEL_13:
  v30 = containermanager_copy_global_configuration();
  classPathCache2 = [v30 classPathCache];
  v32 = [classPathCache2 containerClassPathForUserIdentity:defaultUserIdentity containerConfig:v14 typeClass:objc_opt_class()];
  classURL2 = [v32 classURL];

  v33 = +[MCMFileManager defaultManager];
  LODWORD(v32) = [v33 itemExistsAtURL:classURL2];

  if (v32)
  {
    v34 = +[MCMFileManager defaultManager];
    v43 = v42;
    v35 = [v34 standardizeAllSystemContainerACLsAtURL:classURL2 error:&v43];
    v19 = v43;

    if ((v35 & 1) == 0)
    {
      v36 = container_log_handle_for_category();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v19;
        _os_log_error_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_ERROR, "Failed to set ACLs on system group containers : %@", buf, 0xCu);
      }

      v37 = [[MCMError alloc] initWithNSError:v19 url:classURL2 defaultErrorType:63];
      v16 = v37;
      v38 = errorCopy;
      goto LABEL_21;
    }
  }

  else
  {
    v19 = v42;
  }

  v38 = errorCopy;
  if (v40)
  {
    [v5 setMigrationCompleteForType:@"ACLMigration"];
    goto LABEL_4;
  }

LABEL_21:
  if (v38)
  {
    v39 = v16;
    v20 = 0;
    *v38 = v16;
  }

  else
  {
    v20 = 0;
  }

LABEL_5:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_performBundleContainerOwnershipMigrationWithError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v7 = containermanager_copy_global_configuration();
  staticConfig = [v7 staticConfig];
  v9 = 1;
  v10 = [staticConfig configForContainerClass:1];

  v11 = containermanager_copy_global_configuration();
  classPathCache = [v11 classPathCache];
  v13 = [classPathCache containerClassPathForUserIdentity:defaultUserIdentity containerConfig:v10 typeClass:objc_opt_class()];

  v14 = objc_opt_new();
  v15 = v14;
  if (v13)
  {
    if ([v14 hasMigrationOccurredForType:@"BundleMigration"])
    {
      v16 = 0;
      v17 = 0;
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    errorCopy = error;
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Changing ownership of bundle container content.", buf, 2u);
    }

    v19 = +[MCMFileManager defaultManager];
    categoryURL = [v13 categoryURL];
    v21 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v21 bundleContainerOwner];
    v35 = 0;
    v23 = [v19 standardizeOwnershipAtURL:categoryURL toPOSIXUser:bundleContainerOwner error:&v35];
    v17 = v35;

    if (v23)
    {
LABEL_8:
      [v15 setMigrationCompleteForType:{@"BundleMigration", errorCopy}];
      v16 = 0;
      goto LABEL_9;
    }

    domain = [v17 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v17 code];

      if (code == 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v28 = [MCMError alloc];
    categoryURL2 = [v13 categoryURL];
    v16 = [(MCMError *)v28 initWithNSError:v17 url:categoryURL2 defaultErrorType:127];

    v30 = container_log_handle_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      categoryURL3 = [v13 categoryURL];
      path = [categoryURL3 path];
      *buf = 138412546;
      v37 = path;
      v38 = 2112;
      v39 = v17;
      _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Failed to change owner of %@: %@", buf, 0x16u);
    }

    if (errorCopy)
    {
      v31 = v16;
      v9 = 0;
      *errorCopy = v16;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_10:

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)execute
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Performing Data Migration on %@", buf, 0xCu);
  }

  v22 = 0;
  v6 = [(MCMCommandDataMigration *)self _performInternalACLMigrationWithError:&v22];
  v7 = v22;
  if (!v6)
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to migrate ACLs on system containers : %@", buf, 0xCu);
    }
  }

  v9 = containermanager_copy_global_configuration();
  v10 = [v9 dispositionForContainerClass:1];

  if (v10 == 1)
  {
    v21 = v7;
    v11 = [(MCMCommandDataMigration *)self _performBundleContainerOwnershipMigrationWithError:&v21];
    v12 = v21;

    if (!v11)
    {
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to migrate bundle containers to system location : %@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v12 = v7;
  }

  if (v6)
  {
    v14 = 1;
    goto LABEL_18;
  }

LABEL_15:
  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to perform data migration : %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_18:
  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEFAULT, "System data migration; error = %@", buf, 0xCu);
  }

  if (v14)
  {
    v17 = objc_opt_new();
  }

  else
  {
    v17 = [[MCMResultBase alloc] initWithError:v12];
  }

  v18 = v17;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v18];

  objc_autoreleasePoolPop(v3);
  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToStartDataMigration = [clientIdentity isAllowedToStartDataMigration];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToStartDataMigration;
}

@end