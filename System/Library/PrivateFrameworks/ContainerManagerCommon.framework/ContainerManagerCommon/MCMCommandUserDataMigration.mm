@interface MCMCommandUserDataMigration
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_bundleContainerExistsForDataContainer:(id)a3 error:(id *)a4;
- (BOOL)_repairTmpDirWithMigrationStatus:(id)a3 error:(id *)a4;
- (BOOL)preflightClientAllowed;
- (int)_intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)a3;
- (void)_setDataProtectionIfNecessaryOnContainer:(id)a3;
- (void)execute;
@end

@implementation MCMCommandUserDataMigration

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
  return 30;
}

- (BOOL)_bundleContainerExistsForDataContainer:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48 = 1;
  if ([v6 containerClass] == 2)
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 dispositionForContainerClass:1];

    if (v8 == 2)
    {
      container_query_create();
      container_query_set_class();
      v9 = [v6 identifier];
      v10 = xpc_string_create([v9 UTF8String]);
      container_query_set_identifiers();

      count_results = container_query_count_results();
      v12 = count_results > 0;
      if (count_results < 0)
      {
        v13 = [[MCMError alloc] initWithLibsystemError:container_query_get_last_error()];
      }

      else
      {
        v13 = 0;
      }

      container_query_free();
      goto LABEL_41;
    }

    v21 = [(MCMCommand *)self context];
    v22 = [v21 globalConfiguration];
    v23 = [v22 staticConfig];
    v16 = [v23 configForContainerClass:1];

    v24 = [v6 userIdentity];
    v25 = [v6 identifier];
    v26 = [(MCMCommand *)self context];
    v27 = [v26 userIdentityCache];
    v28 = [MCMContainerIdentity containerIdentityWithUserIdentity:v24 identifier:v25 containerConfig:v16 platform:0 userIdentityCache:v27 error:&v48];

    if (v28)
    {
      v47 = 0;
      v29 = [gContainerCache entryForContainerIdentity:v28 error:&v47];
      v30 = v47;
      v13 = v30;
      if (v29)
      {
        v12 = 1;
LABEL_39:

        goto LABEL_40;
      }

      if (v30 && [(MCMError *)v30 type]== 21)
      {

        v29 = 0;
        v13 = 0;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v32 = [MCMError alloc];
      v13 = [(MCMError *)v32 initWithErrorType:v48];
      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = [v6 identifier];
        *buf = 138412546;
        v50 = v33;
        v51 = 2112;
        v52 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Could not create container identity from [%@]: %@", buf, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_39;
  }

  if ([v6 containerClass] == 4)
  {
    v14 = [gCodeSigningMapping childParentMapCache];
    v15 = [v6 identifier];
    v16 = [v14 parentIdentifierForChildIdentifier:v15];

    if (!v16)
    {
      v13 = 0;
      v12 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v17 = containermanager_copy_global_configuration();
    v18 = [v17 dispositionForContainerClass:1];

    if (v18 == 2)
    {
      container_query_create();
      container_query_set_class();
      v19 = xpc_string_create([v16 UTF8String]);
      container_query_set_identifiers();

      v20 = container_query_count_results();
      v12 = v20 > 0;
      if (v20 < 0)
      {
        v13 = [[MCMError alloc] initWithLibsystemError:container_query_get_last_error()];
      }

      else
      {
        v13 = 0;
      }

      container_query_free();
      goto LABEL_40;
    }

    v34 = [(MCMCommand *)self context];
    v35 = [v34 globalConfiguration];
    v36 = [v35 staticConfig];
    v28 = [v36 configForContainerClass:1];

    v37 = [v6 userIdentity];
    v38 = [(MCMCommand *)self context];
    v39 = [v38 userIdentityCache];
    v29 = [MCMContainerIdentity containerIdentityWithUserIdentity:v37 identifier:v16 containerConfig:v28 platform:0 userIdentityCache:v39 error:&v48];

    if (v29)
    {
      v46 = 0;
      v40 = [gContainerCache entryForContainerIdentity:v29 error:&v46];
      v41 = v46;
      v13 = v41;
      if (v40)
      {
        v12 = 1;
LABEL_38:

        goto LABEL_39;
      }

      if (v41 && [(MCMError *)v41 type]== 21)
      {

        v40 = 0;
        v13 = 0;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v42 = [MCMError alloc];
      v13 = [(MCMError *)v42 initWithErrorType:v48];
      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = v16;
        v51 = 2112;
        v52 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Could not create container identity from [%@]: %@", buf, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_38;
  }

  v13 = [[MCMError alloc] initWithErrorType:20];
  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v50 = [v6 containerClass];
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Passed an unexpected container type: %llu", buf, 0xCu);
  }

  v12 = 0;
LABEL_41:
  if (a4 && v13)
  {
    v43 = v13;
    *a4 = v13;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int)_intendedDataProtectionClassBasedOnEntitlementsForIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [gCodeSigningMapping entitlementsForIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intendedDataProtectionClass];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_setDataProtectionIfNecessaryOnContainer:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 containerPath];
  v6 = [v5 containerClassPath];
  v7 = [v6 supportsDataProtection];

  if (v7)
  {
    v22 = 0;
    v8 = [(MCMCommandUserDataMigration *)self _bundleContainerExistsForDataContainer:v4 error:&v22];
    v9 = v22;
    v10 = [v4 identifier];
    if (v9)
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = v9;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Error looking up bundle container for %@ : %@", buf, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
LABEL_8:

        goto LABEL_9;
      }

      v12 = [(MCMCommandUserDataMigration *)self _intendedDataProtectionClassBasedOnEntitlementsForIdentifier:v10];
      v13 = [MCMResultPromise alloc];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72__MCMCommandUserDataMigration__setDataProtectionIfNecessaryOnContainer___block_invoke;
      v20[3] = &unk_1E86AFE80;
      v21 = v10;
      v14 = [(MCMResultPromise *)v13 initWithCompletion:v20];
      v15 = [MCMCommandSetDataProtection alloc];
      v16 = [v4 containerIdentity];
      v17 = [(MCMCommand *)self context];
      v18 = [(MCMCommandSetDataProtection *)v15 initWithContainerIdentity:v16 thirdParty:0 dataProtectionClass:v12 retryIfLocked:0 skipIfUnchanged:1 context:v17 resultPromise:v14];

      [(MCMCommandSetDataProtection *)v18 execute];
      v11 = v21;
    }

    goto LABEL_8;
  }

LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

id __72__MCMCommandUserDataMigration__setDataProtectionIfNecessaryOnContainer___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v3 error];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Error processing restored system container %@: %@", &v10, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)_repairTmpDirWithMigrationStatus:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 hasMigrationOccurredForType:@"RepairTmpDir2"])
  {
    v6 = 0;
    goto LABEL_3;
  }

  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412290;
    v60 = v9;
    _os_log_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEFAULT, "Performing Tmp Dir Repair Migration on %@", buf, 0xCu);
  }

  v50 = +[MCMFileManager defaultManager];
  v10 = +[MCMUserIdentitySharedCache sharedInstance];
  v11 = [v10 allAccessibleUserIdentities];

  v53 = 0;
  v12 = [gContainerCache entriesForUserIdentities:v11 contentClass:2 transient:0 error:&v53];
  v6 = v53;
  if (!v12)
  {
    obj = container_log_handle_for_category();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v60 = v11;
      v61 = 2112;
      v62 = v6;
      _os_log_error_impl(&dword_1DF2C3000, obj, OS_LOG_TYPE_ERROR, "Failed to fetch list of app data containers tmp repair migration: userIdentities = %@, error = %@", buf, 0x16u);
    }

LABEL_33:

    if (a4)
    {
      v37 = v6;
      v7 = 0;
      *a4 = v6;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_36;
  }

  v45 = v12;
  v46 = a4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v49 = *v56;
  v43 = v11;
  v44 = v5;
  v42 = v6;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v56 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v55 + 1) + 8 * i);
      v17 = objc_autoreleasePoolPush();
      v52 = 0;
      v18 = [v16 containerPath];
      v19 = [v18 containerDataURL];
      v20 = [v19 URLByAppendingPathComponent:@"tmp" isDirectory:1];

      v51 = 0;
      LOBYTE(v18) = [v50 itemAtURL:v20 exists:&v52 + 1 isDirectory:&v52 error:&v51];
      v21 = v51;
      if ((v18 & 1) == 0)
      {
        v33 = container_log_handle_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v40 = [v20 path];
          *buf = 138412546;
          v60 = v40;
          v61 = 2112;
          v62 = v21;
          _os_log_fault_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_FAULT, "Unable to check for existence of <tmp> dir in container repair migration; path = [%@], error = %@", buf, 0x16u);
        }

        v34 = [[MCMError alloc] initWithNSError:v21 url:v20 defaultErrorType:127];
        goto LABEL_32;
      }

      if (HIBYTE(v52) == 1 && v52 == 1)
      {
        goto LABEL_19;
      }

      v22 = objc_alloc_init(MCMResultPromise);
      v23 = [MCMCommandRecreateContainerStructure alloc];
      v24 = [v16 containerIdentity];
      v25 = [(MCMCommand *)self context];
      v26 = [(MCMCommandRecreateContainerStructure *)v23 initWithConcreteContainerIdentity:v24 context:v25 resultPromise:v22];

      [(MCMCommandRecreateContainerStructure *)v26 execute];
      v27 = [(MCMResultPromise *)v22 result];
      v28 = [v27 error];

      if (v28)
      {
        v35 = [(MCMResultPromise *)v22 result];
        v34 = [v35 error];

        v36 = container_log_handle_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          v41 = [v20 path];
          *buf = 138412546;
          v60 = v41;
          v61 = 2112;
          v62 = v34;
          _os_log_fault_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_FAULT, "Failed to swap in <tmp> dir in container repair migration; path = [%@], error = %@", buf, 0x16u);
        }

LABEL_32:
        v11 = v43;
        v5 = v44;
        v12 = v45;
        a4 = v46;
        objc_autoreleasePoolPop(v17);
        v6 = v34;
        goto LABEL_33;
      }

      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v20 path];
        *buf = 138412290;
        v60 = v30;
        _os_log_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEFAULT, "Repaired [%@]", buf, 0xCu);
      }

LABEL_19:
      objc_autoreleasePoolPop(v17);
    }

    v14 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
    v11 = v43;
    v5 = v44;
    v6 = v42;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412546;
    v60 = v32;
    v61 = 1024;
    LODWORD(v62) = 78;
    _os_log_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_DEFAULT, "Completed Tmp Dir Repair Migration on %@ : Success: %c", buf, 0x12u);
  }

  [v5 setMigrationCompleteForType:@"DaemonContainerCleaning"];
LABEL_3:
  v7 = 1;
LABEL_36:

  v38 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)execute
{
  v92 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__2545;
  v79 = __Block_byref_object_dispose__2546;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(MCMCommand *)self context];
    v4 = [v3 clientIdentity];
    v5 = containermanager_copy_global_configuration();
    v6 = [v5 defaultUser];
    *buf = 138412546;
    *v82 = v4;
    *&v82[8] = 2112;
    *&v82[10] = v6;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Container data migration requested by %@ for default user: %@", buf, 0x16u);
  }

  v7 = gCodeSigningMapping;
  v8 = [(MCMCommand *)self context];
  [v7 performAllCodeSigningMigrationAndReconciliationWithContext:v8];

  v57 = [[MCMMigrationStatus alloc] initForMobileUserMigration];
  if (([v57 hasMigrationOccurredForType:@"SubdirectoryMigration"] & 1) == 0)
  {
    v9 = [(MCMCommand *)self context];
    v10 = [v9 userIdentityCache];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __38__MCMCommandUserDataMigration_execute__block_invoke;
    v66[3] = &unk_1E86AFFE8;
    v66[4] = self;
    v66[5] = &v75;
    v66[6] = &v71;
    [v10 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v66];

    if (*(v72 + 24) == 1)
    {
      [v57 setMigrationCompleteForType:@"SubdirectoryMigration"];
    }
  }

  v11 = [(MCMCommand *)self context];
  v12 = [v11 userIdentityCache];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __38__MCMCommandUserDataMigration_execute__block_invoke_8;
  v65[3] = &unk_1E86AFFE8;
  v65[4] = self;
  v65[5] = &v75;
  v65[6] = &v67;
  [v12 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v65];

  v64 = 1;
  v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(&unk_1F5A75AA0, "count")}];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v13 = [&unk_1F5A75AA0 countByEnumeratingWithState:&v88 objects:v87 count:16];
  if (v13)
  {
    v59 = *v89;
    do
    {
      v60 = v13;
      for (i = 0; i != v60; ++i)
      {
        if (*v89 != v59)
        {
          objc_enumerationMutation(&unk_1F5A75AA0);
        }

        v15 = *(*(&v88 + 1) + 8 * i);
        v16 = [&unk_1F5A75AA0 objectForKeyedSubscript:v15];
        v17 = [v16 unsignedLongLongValue];

        v64 = 1;
        v18 = [(MCMCommand *)self context];
        v19 = [v18 globalConfiguration];
        v20 = [v19 staticConfig];
        v21 = [v20 configForContainerClass:v17];

        v22 = [(MCMCommand *)self context];
        v23 = [v22 userIdentityCache];
        v24 = [(MCMCommand *)self context];
        v25 = [v24 clientIdentity];
        v26 = [v25 posixUser];
        v27 = [v23 userIdentityForPersonalPersonaWithPOSIXUser:v26];

        v28 = [(MCMCommand *)self context];
        v29 = [v28 userIdentityCache];
        v30 = [MCMContainerIdentity containerIdentityWithUserIdentity:v27 identifier:v15 containerConfig:v21 platform:0 userIdentityCache:v29 error:&v64];

        if (v30)
        {
          v31 = (v76 + 5);
          obj = v76[5];
          v32 = [gContainerCache entryForContainerIdentity:v30 error:&obj];
          objc_storeStrong(v31, obj);
          v33 = [v32 metadataMinimal];
          if (v33)
          {
            [v58 addObject:v30];
          }

          else
          {
            if ([v76[5] type] == 21)
            {
              v36 = v76[5];
              v76[5] = 0;
            }

            else
            {
              v36 = container_log_handle_for_category();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v37 = v76[5];
                *buf = 134218498;
                *v82 = v17;
                *&v82[8] = 2112;
                *&v82[10] = v15;
                v83 = 2112;
                v84 = v37;
                _os_log_error_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_ERROR, "Failed lookup when trying to remove deprecated [%llu:%@]: %@", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          v32 = container_log_handle_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = v64;
            error_description = container_get_error_description();
            *buf = 134218754;
            *v82 = v17;
            *&v82[8] = 2112;
            *&v82[10] = v15;
            v83 = 2048;
            v84 = v34;
            v85 = 2080;
            v86 = error_description;
            _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Could not create container identity when trying to remove deprecated [%llu:%@]: (%llu) %s", buf, 0x2Au);
          }
        }
      }

      v13 = [&unk_1F5A75AA0 countByEnumeratingWithState:&v88 objects:v87 count:16];
    }

    while (v13);
  }

  if ([v58 count])
  {
    v38 = objc_alloc_init(MCMResultPromise);
    v39 = [v58 copy];
    v40 = [(MCMCommand *)self context];
    v41 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v39 removeAllCodeSignInfo:1 context:v40 resultPromise:v38];

    [v41 execute];
    v42 = [(MCMResultPromise *)v38 result];
    v43 = [v42 error];

    if (v43)
    {
      v44 = container_log_handle_for_category();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v82 = v43;
        _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) during user data migration; error = %@", buf, 0xCu);
      }
    }
  }

  v45 = (v76 + 5);
  v62 = v76[5];
  v46 = [(MCMCommandUserDataMigration *)self _repairTmpDirWithMigrationStatus:v57 error:&v62];
  objc_storeStrong(v45, v62);
  if (*(v72 + 24) == 1)
  {
    v47 = v68[3] & v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = container_log_handle_for_category();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v76[5];
    *buf = 67109378;
    *v82 = v47 & 1;
    *&v82[4] = 2112;
    *&v82[6] = v49;
    _os_log_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_DEFAULT, "Per user data migration result: %d, error = %@", buf, 0x12u);
  }

  if (v47)
  {
    v50 = objc_opt_new();
  }

  else
  {
    v51 = [MCMResultBase alloc];
    v50 = [(MCMResultBase *)v51 initWithError:v76[5]];
  }

  v52 = v50;
  v53 = [(MCMCommand *)self resultPromise];
  [v53 completeWithResult:v52];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v75, 8);
  objc_autoreleasePoolPop(contexta);
  v54 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandUserDataMigration_execute__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 userIdentityCache];
  v6 = [MCMCommandContext privilegedWithUserIdentity:v3 userIdentityCache:v5];

  v7 = container_log_handle_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412546;
    v26 = v3;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEFAULT, "Performing Per User Subdirectory Migration for %@ on %@", buf, 0x16u);
  }

  v9 = [*(a1 + 32) context];
  v10 = [v9 classIterator];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __38__MCMCommandUserDataMigration_execute__block_invoke_3;
  v21 = &unk_1E86AFE58;
  v11 = v6;
  v22 = v11;
  v12 = v3;
  v23 = v12;
  v24 = *(a1 + 40);
  [v10 selectUserWithIterator:&v18];

  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MCMMigrationStatus currentBuildVersion:v18];
    v15 = v14;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v16 = 89;
    }

    else
    {
      v16 = 78;
    }

    *buf = 138412802;
    v26 = v12;
    v27 = 2112;
    v28 = v14;
    v29 = 1024;
    v30 = v16;
    _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "Completed Per User Subdirectory Migration for %@ on %@ : Success: %c", buf, 0x1Cu);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandUserDataMigration_execute__block_invoke_8(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[MCMMigrationStatus currentBuildVersion];
    *buf = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Performing User Data Protection Migration for %@ on %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) context];
  v7 = [v6 classIterator];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __38__MCMCommandUserDataMigration_execute__block_invoke_9;
  v17 = &unk_1E86AFE58;
  v18 = *(a1 + 32);
  v8 = v3;
  v19 = v8;
  v20 = *(a1 + 40);
  [v7 selectDataProtectedWithIterator:&v14];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MCMMigrationStatus currentBuildVersion:v14];
    v11 = v10;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v12 = 89;
    }

    else
    {
      v12 = 78;
    }

    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    v25 = 1024;
    v26 = v12;
    _os_log_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEFAULT, "Completed User Data Protection Migration for %@ on %@ : Success: %c", buf, 0x1Cu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandUserDataMigration_execute__block_invoke_9(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 containerCache];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  v7 = [v3 containerClass];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v5 entriesForUserIdentities:v6 contentClass:v7 transient:0 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = *(*(a1 + 48) + 8);
          v24 = *(v17 + 40);
          v18 = [v15 metadataWithError:&v24];
          objc_storeStrong((v17 + 40), v24);
          if (v18)
          {
            [*(a1 + 32) _setDataProtectionIfNecessaryOnContainer:v18];
          }

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      v22 = [v3 containerClass];
      v23 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch list of data containers for userIdentity: %@, class: %ld: %@", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandUserDataMigration_execute__block_invoke_3(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) containerCache];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  v34 = v3;
  v6 = [v3 containerClass];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v4 entriesForUserIdentities:v5 contentClass:v6 transient:0 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (v8)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v33 = v8;
    v39 = v8;
    v9 = [v39 countByEnumeratingWithState:&v50 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      do
      {
        v12 = 0;
        do
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v39);
          }

          v13 = *(*(&v50 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 metadataMinimal];
          v16 = objc_alloc_init(MCMResultPromise);
          v17 = [MCMCommandRecreateContainerStructure alloc];
          v18 = [v15 containerIdentity];
          v19 = [(MCMCommandRecreateContainerStructure *)v17 initWithConcreteContainerIdentity:v18 context:*(a1 + 32) resultPromise:v16];

          [(MCMCommandRecreateContainerStructure *)v19 execute];
          v20 = [(MCMResultPromise *)v16 result];
          v21 = [v20 error];

          if (v21)
          {
            v22 = [(MCMResultPromise *)v16 result];
            v23 = [v22 error];
            v24 = *(*(a1 + 48) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            v26 = container_log_handle_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v38 = [v15 userIdentity];
              v35 = [v34 containerClass];
              v36 = [v15 identifier];
              v37 = [(MCMResultPromise *)v16 result];
              v27 = [v37 error];
              *buf = 138413058;
              v42 = v38;
              v43 = 2048;
              v44 = v35;
              v45 = 2112;
              v46 = v36;
              v47 = 2112;
              v48 = v27;
              v28 = v27;
              _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to recreate container directory structure for %@:%ld:%@ : %@", buf, 0x2Au);
            }

            *(*(*(a1 + 56) + 8) + 24) = 0;
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v39 countByEnumeratingWithState:&v50 objects:v49 count:16];
      }

      while (v10);
    }

    v8 = v33;
  }

  else
  {
    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 40);
      v32 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v42 = v31;
      v43 = 2048;
      v44 = 0;
      v45 = 2112;
      v46 = v32;
      _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to fetch list of containers for userIdentity: %@, class %ld : %@", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToStartUserDataMigration];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end