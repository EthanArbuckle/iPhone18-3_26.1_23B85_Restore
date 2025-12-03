@interface MCMContainerMigrator
+ (id)sharedInstance;
- (BOOL)_migrateBundleContainersWithError:(id *)error;
- (BOOL)_migrateDeleteOperationManifestsWithError:(id *)error;
- (BOOL)_migrateManifestIfNecessaryAtURL:(id)l withLibraryRepairForUser:(id)user error:(id *)error;
- (BOOL)_performEntitlementBypassListMigrationWithError:(id *)error;
- (BOOL)performSynchronousBuildUpgradeMigration:(id)migration context:(id)context error:(id *)error;
- (MCMContainerMigrator)initWithUserIdentityCache:(id)cache;
- (MCMUserIdentityCache)userIdentityCache;
- (void)_checkIfDeviceMayNeedSystemContainerACLMigration:(id)migration;
- (void)setUserIdentityCache:(id)cache;
@end

@implementation MCMContainerMigrator

- (void)setUserIdentityCache:(id)cache
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_userIdentityCache = &self->_userIdentityCache;

  objc_storeStrong(p_userIdentityCache, cache);
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_migrateManifestIfNecessaryAtURL:(id)l withLibraryRepairForUser:(id)user error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  userCopy = user;
  v10 = [MCMDeleteManifest alloc];
  userIdentityCache = [(MCMContainerMigrator *)self userIdentityCache];
  v38 = 0;
  v12 = [(MCMDeleteManifest *)v10 initFromURL:lCopy userIdentityCache:userIdentityCache error:&v38];
  v13 = v38;

  if (!v12)
  {
    if ([v13 category] == 1 && objc_msgSend(v13, "POSIXerrno") == 2)
    {
      concreteContainerIdentity = 0;
      if (error)
      {
LABEL_26:
        v29 = v13;
        v23 = 0;
        *error = v13;
        goto LABEL_27;
      }

LABEL_8:
      v23 = 0;
      goto LABEL_27;
    }

    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = v13;
      v41 = 2112;
      v42 = lCopy;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to materialize identity from manifest; error = %@, url = [%@]", buf, 0x16u);
    }

    concreteContainerIdentity = 0;
LABEL_25:

    if (error)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  errorCopy = error;
  concreteContainerIdentity = [v12 concreteContainerIdentity];
  v15 = containermanager_copy_global_configuration();
  containerClass = [concreteContainerIdentity containerClass];
  userIdentity = [concreteContainerIdentity userIdentity];
  posixUser = [userIdentity posixUser];
  if ([v15 dispositionForContainerClass:containerClass forUser:posixUser] != 1)
  {

LABEL_10:
    v23 = 1;
    goto LABEL_27;
  }

  v34 = lCopy;
  v19 = userCopy;
  readURL = [v12 readURL];
  writeURL = [v12 writeURL];
  v22 = [readURL isEqual:writeURL];

  if ((v22 & 1) == 0)
  {
    v25 = container_log_handle_for_category();
    userCopy = v19;
    lCopy = v34;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      writeURL2 = [v12 writeURL];
      *buf = 138412546;
      v40 = v34;
      v41 = 2112;
      v42 = writeURL2;
      _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, "Migrating delete manifest [%@] --> [%@]", buf, 0x16u);
    }

    v37 = v13;
    v26 = [v12 deleteManifestAfterWritingUsingLibraryRepairForUser:userCopy error:&v37];
    v27 = v37;

    if (v26)
    {
      v36 = v27;
      v28 = [v12 deleteManifestAfterRemovingUsingLibraryRepairForUser:userCopy error:&v36];
      v13 = v36;

      if (v28)
      {

        goto LABEL_10;
      }

      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v34;
        v41 = 2112;
        v42 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to remove delete manifest at old location [%@], error = %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        writeURL3 = [v12 writeURL];
        *buf = 138412546;
        v40 = writeURL3;
        v41 = 2112;
        v42 = v27;
        _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to write delete manifest at new location [%@], error = %@", buf, 0x16u);
      }

      v13 = v27;
    }

    error = errorCopy;
    goto LABEL_25;
  }

  v23 = 1;
  userCopy = v19;
  lCopy = v34;
LABEL_27:

  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)_migrateDeleteOperationManifestsWithError:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = containermanager_copy_global_configuration();
  runmode = [v5 runmode];

  if (!runmode)
  {
    v21 = 0;
LABEL_23:
    v29 = 1;
    goto LABEL_31;
  }

  v7 = containermanager_copy_global_configuration();
  managedPathRegistry = [v7 managedPathRegistry];
  containermanagerDeleteOperations = [managedPathRegistry containermanagerDeleteOperations];

  v10 = [containermanagerDeleteOperations url];
  if (v10)
  {
    v11 = +[MCMFileManager defaultManager];
    v40 = 0;
    v12 = [v11 urlsForItemsInDirectoryAtURL:v10 error:&v40];
    v13 = v40;

    if (v12)
    {
      v37 = v13;
      v38 = containermanagerDeleteOperations;
      userIdentityCache = [(MCMContainerMigrator *)self userIdentityCache];
      userIdentityCache2 = [(MCMContainerMigrator *)self userIdentityCache];
      defaultUserIdentity = [userIdentityCache2 defaultUserIdentity];
      v17 = [userIdentityCache libraryRepairForUserIdentity:defaultUserIdentity];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = v12;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v42 objects:v41 count:16];
      if (v19)
      {
        v20 = v19;
        errorCopy = error;
        v21 = 0;
        v22 = *v43;
        while (2)
        {
          v23 = 0;
          v24 = v21;
          do
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v42 + 1) + 8 * v23);
            v39 = v24;
            errorCopy = [(MCMContainerMigrator *)self _migrateManifestIfNecessaryAtURL:v25 withLibraryRepairForUser:v17 error:&v39, errorCopy];
            v21 = v39;

            if (!errorCopy)
            {

              error = errorCopy;
              v13 = v37;
              containermanagerDeleteOperations = v38;
              goto LABEL_28;
            }

            ++v23;
            v24 = v21;
          }

          while (v20 != v23);
          v20 = [v18 countByEnumeratingWithState:&v42 objects:v41 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v21 = 0;
      }

      v13 = v37;
      containermanagerDeleteOperations = v38;
      v12 = v36;
      goto LABEL_22;
    }

    domain = [v13 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v13 code];

      if (code == 2)
      {
        v21 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    v30 = container_log_handle_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      path = [v10 path];
      *buf = 138412546;
      v47 = v13;
      v48 = 2112;
      v49 = path;
      _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Failed to get items at delete operations URL; error = %@, path = [%@]", buf, 0x16u);
    }

    v21 = [[MCMError alloc] initWithNSError:v13 url:v10 defaultErrorType:146];
  }

  else
  {
    v21 = [[MCMError alloc] initWithErrorType:84 category:1];
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to get url for storing pending delete operations.", buf, 2u);
    }
  }

LABEL_28:

  if (error)
  {
    v31 = v21;
    v29 = 0;
    *error = v21;
  }

  else
  {
    v29 = 0;
  }

LABEL_31:

  v32 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)performSynchronousBuildUpgradeMigration:(id)migration context:(id)context error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  contextCopy = context;
  v10 = containermanager_copy_global_configuration();
  runmode = [v10 runmode];

  if (runmode && ([migrationCopy hasMigrationOccurredForType:@"DeleteManifestLocationChange"] & 1) == 0)
  {
    v81 = 0;
    v12 = [(MCMContainerMigrator *)self _migrateDeleteOperationManifestsWithError:&v81];
    v13 = v81;
    if (v12)
    {
      [migrationCopy setMigrationCompleteForType:@"DeleteManifestLocationChange"];
    }

    else
    {
      v14 = container_log_handle_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        multiuser_flags = 138412290;
        v83 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to migrate delete manifest files; error = %@", &multiuser_flags, 0xCu);
      }
    }
  }

  multiuser_flags = 0;
  v15 = MEMORY[0x1E12D3930]();
  if (host_get_multiuser_config_flags(v15, &multiuser_flags) || (multiuser_flags & 0x80000000) == 0)
  {
    v17 = contextCopy;
    userIdentityCache = [(MCMContainerMigrator *)self userIdentityCache];
    defaultUserIdentity = [userIdentityCache defaultUserIdentity];

    homeDirectoryURL = [defaultUserIdentity homeDirectoryURL];
    v21 = [homeDirectoryURL URLByAppendingPathComponent:@"Library/Logs/MobileContainerManager" isDirectory:1];

    v22 = +[MCMFileManager defaultManager];
    v80 = 0;
    v23 = [v22 removeItemAtURL:v21 error:&v80];
    v16 = v80;

    if ((v23 & 1) == 0)
    {
      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        multiuser_flags = 138412290;
        v83 = v16;
        _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to remove really old log directory: %@", &multiuser_flags, 0xCu);
      }
    }

    contextCopy = v17;
  }

  else
  {
    v16 = 0;
  }

  v25 = +[MCMPOSIXUser currentPOSIXUser];
  homeDirectoryURL2 = [v25 homeDirectoryURL];
  v27 = [homeDirectoryURL2 URLByAppendingPathComponent:@"Library/Logs/MobileContainerManager" isDirectory:1];

  v28 = v27;
  v29 = +[MCMFileManager defaultManager];
  v79 = v16;
  LOBYTE(homeDirectoryURL2) = [v29 removeItemAtURL:v27 error:&v79];
  v30 = v79;

  if ((homeDirectoryURL2 & 1) == 0)
  {
    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      multiuser_flags = 138412290;
      v83 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Failed to remove old log directory: %@", &multiuser_flags, 0xCu);
    }
  }

  v32 = containermanager_copy_global_configuration();
  v33 = 1;
  v34 = [v32 dispositionForContainerClass:1];

  if (v34 == 1)
  {
    v78 = v30;
    v35 = [(MCMContainerMigrator *)self _migrateBundleContainersWithError:&v78];
    v36 = v78;

    if (v35)
    {
      v33 = 1;
    }

    else
    {
      v37 = container_log_handle_for_category();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        multiuser_flags = 138412290;
        v83 = v36;
        _os_log_error_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_ERROR, "Failed to migrate bundle containers : %@", &multiuser_flags, 0xCu);
      }

      v33 = 0;
    }
  }

  else
  {
    v36 = v30;
  }

  v38 = containermanager_copy_global_configuration();
  v39 = [v38 dispositionForContainerClass:12];

  if (v39 == 1)
  {
    [(MCMContainerMigrator *)self _checkIfDeviceMayNeedSystemContainerACLMigration:migrationCopy];
    v77 = v36;
    v40 = [(MCMContainerMigrator *)self _performEntitlementBypassListMigrationWithError:&v77];
    v41 = v77;

    if (!v40)
    {
      v42 = container_log_handle_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        multiuser_flags = 138412290;
        v83 = v41;
        _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Failed to migrate listed bundle containers : %@", &multiuser_flags, 0xCu);
      }

      v33 = 0;
    }
  }

  else
  {
    v41 = v36;
  }

  v43 = containermanager_copy_global_configuration();
  v44 = [v43 dispositionForContainerClass:10];

  if (v44 == 1 && ([migrationCopy hasMigrationOccurredForType:@"DaemonContainerCleaning"] & 1) == 0)
  {
    v71 = v41;
    v72 = contextCopy;
    v74 = migrationCopy;
    v75 = v28;
    errorCopy = error;
    v45 = +[MCMUserIdentitySharedCache sharedInstance];
    allAccessibleUserIdentities = [v45 allAccessibleUserIdentities];

    v47 = [MEMORY[0x1E695DFA8] set];
    v76 = 0;
    v70 = allAccessibleUserIdentities;
    v48 = [gContainerCache entriesForUserIdentities:allAccessibleUserIdentities contentClass:10 transient:0 error:&v76];
    v69 = v76;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v87 objects:v86 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v88;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v87 + 1) + 8 * i);
          identifier = [v54 identifier];
          v56 = [identifier hasPrefix:@"com.apple."];

          if ((v56 & 1) == 0)
          {
            containerIdentity = [v54 containerIdentity];
            [v47 addObject:containerIdentity];
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v87 objects:v86 count:16];
      }

      while (v51);
    }

    contextCopy = v72;
    if ([v47 count])
    {
      v58 = objc_alloc_init(MCMResultPromise);
      allObjects = [v47 allObjects];
      v60 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:allObjects removeAllCodeSignInfo:0 context:v72 resultPromise:v58];

      [v60 execute];
      result = [(MCMResultPromise *)v58 result];
      error = [result error];

      if (error)
      {
        v63 = container_log_handle_for_category();
        v28 = v75;
        v41 = v71;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
        {
          error2 = [result error];
          multiuser_flags = 138412546;
          v83 = error2;
          v84 = 2112;
          v85 = v47;
          _os_log_fault_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_FAULT, "Failed to clear daemon containers; error = %@, containers = %@", &multiuser_flags, 0x16u);

          v28 = v75;
        }

        migrationCopy = v74;
        goto LABEL_52;
      }
    }

    migrationCopy = v74;
    [v74 setMigrationCompleteForType:@"DaemonContainerCleaning"];
    v28 = v75;
    v41 = v71;
LABEL_52:

    error = errorCopy;
  }

  if (error)
  {
    v64 = v33;
  }

  else
  {
    v64 = 1;
  }

  if ((v64 & 1) == 0)
  {
    v65 = v41;
    *error = v41;
  }

  v66 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)_migrateBundleContainersWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = 1;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/Containers/Bundle" isDirectory:1];
  v6 = +[(MCMUserIdentityCache *)MCMUserIdentitySharedCache];
  v7 = containermanager_copy_global_configuration();
  staticConfig = [v7 staticConfig];
  v9 = [staticConfig configForContainerClass:1];

  v10 = containermanager_copy_global_configuration();
  classPathCache = [v10 classPathCache];
  v12 = [classPathCache containerClassPathForUserIdentity:v6 containerConfig:v9 typeClass:objc_opt_class()];

  if (!v12)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v13 = +[MCMFileManager defaultManager];
  v14 = [v13 itemExistsAtURL:v5];

  if (!v14)
  {
    v19 = 0;
LABEL_12:
    v4 = 1;
    goto LABEL_13;
  }

  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEBUG, "Moving bundle containers from user to system location", buf, 2u);
  }

  v16 = +[MCMFileManager defaultManager];
  classURL = [v12 classURL];
  v24 = 0;
  v18 = [v16 moveItemAtURL:v5 toURL:classURL error:&v24];
  v19 = v24;

  if (v18)
  {
    goto LABEL_12;
  }

  v20 = container_log_handle_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v19;
    _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to migrate to new bundle containers location : %@.  This is terrible.", buf, 0xCu);
  }

  if (error)
  {
    v21 = v19;
    v4 = 0;
    *error = v19;
  }

  else
  {
    v4 = 0;
  }

LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_checkIfDeviceMayNeedSystemContainerACLMigration:(id)migration
{
  v26 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  v4 = containermanager_copy_global_configuration();
  staticConfig = [v4 staticConfig];
  v6 = [staticConfig configForContainerClass:12];

  v7 = containermanager_copy_global_configuration();
  staticConfig2 = [v7 staticConfig];
  v9 = [staticConfig2 configForContainerClass:13];

  v10 = containermanager_copy_global_configuration();
  LODWORD(staticConfig2) = [v10 systemContainerMode];

  if (staticConfig2 == 1 && ([migrationCopy hasMigrationOccurredForType:@"ACLMigration"] & 1) == 0)
  {
    v11 = +[(MCMUserIdentityCache *)MCMUserIdentitySharedCache];
    v12 = containermanager_copy_global_configuration();
    classPathCache = [v12 classPathCache];
    v14 = [classPathCache containerClassPathForUserIdentity:v11 containerConfig:v6 typeClass:objc_opt_class()];
    classURL = [v14 classURL];

    v16 = containermanager_copy_global_configuration();
    classPathCache2 = [v16 classPathCache];
    v18 = [classPathCache2 containerClassPathForUserIdentity:v11 containerConfig:v9 typeClass:objc_opt_class()];
    classURL2 = [v18 classURL];

    v20 = +[MCMFileManager defaultManager];
    if ([v20 itemDoesNotExistAtURL:classURL])
    {
      v21 = +[MCMFileManager defaultManager];
      v22 = [v21 itemDoesNotExistAtURL:classURL2];

      if (v22)
      {
        v23 = container_log_handle_for_category();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *v25 = 0;
          _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "No system containers requiring ACL migration", v25, 2u);
        }

        [migrationCopy setMigrationCompleteForType:@"ACLMigration"];
      }
    }

    else
    {
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_performEntitlementBypassListMigrationWithError:(id *)error
{
  v123 = *MEMORY[0x1E69E9840];
  userIdentityCache = [(MCMContainerMigrator *)self userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v6 = containermanager_copy_global_configuration();
  systemContainerMode = [v6 systemContainerMode];

  if (!systemContainerMode)
  {
    v68 = 0;
    v69 = 0;
    v70 = 1;
    goto LABEL_62;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v87 = 1;
  p_vtable = MCMContainerSchemaActionCopyContents.vtable;
  v12 = 0x1E695D000uLL;
  p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
  *&v8 = 136315394;
  v79 = v8;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = _performEntitlementBypassListMigrationWithError__possibleContainerClasses[v10];
    v17 = p_vtable[483];
    v18 = [*(v12 + 4056) setWithObject:{defaultUserIdentity, v79}];
    v105 = v9;
    v98 = v16;
    v19 = [v17 entriesForUserIdentities:v18 contentClass:v16 transient:0 error:&v105];
    v20 = v105;

    if (v20)
    {
      v78 = container_log_handle_for_category();
      v74 = errorCopy;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v107 = v20;
        _os_log_error_impl(&dword_1DF2C3000, v78, OS_LOG_TYPE_ERROR, "Failed to get list of system containers for migration: %@", buf, 0xCu);
      }

      v70 = 0;
LABEL_56:
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __72__MCMContainerMigrator__performEntitlementBypassListMigrationWithError___block_invoke;
      v99[3] = &unk_1E86B0B98;
      v69 = v20;
      v100 = v69;
      v68 = __72__MCMContainerMigrator__performEntitlementBypassListMigrationWithError___block_invoke(v99);

      if (v74)
      {
        goto LABEL_60;
      }

      goto LABEL_62;
    }

    v84 = v15;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v19;
    v97 = [obj countByEnumeratingWithState:&v119 objects:v118 count:16];
    v9 = 0;
    if (!v97)
    {
      goto LABEL_45;
    }

    v21 = *v120;
    v89 = *v120;
    v91 = defaultUserIdentity;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v120 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v119 + 1) + 8 * v22);
        metadataMinimal = [v23 metadataMinimal];
        identifier = [metadataMinimal identifier];
        if (identifier)
        {
          sharedBypassList = [p_superclass + 439 sharedBypassList];
          v27 = [sharedBypassList containerIdIsWellknown:identifier class:v98];

          if (v27)
          {
            v104 = v9;
            v28 = [v23 metadataWithError:&v104];
            v29 = v104;

            if (!v28)
            {
              v71 = container_log_handle_for_category();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v107 = v23;
                v108 = 2112;
                v109 = v29;
                _os_log_error_impl(&dword_1DF2C3000, v71, OS_LOG_TYPE_ERROR, "Couldn't load metadata; container = %@, error = %@", buf, 0x16u);
              }

              v9 = v29;

              v72 = 0;
              v73 = 1;
              goto LABEL_52;
            }

            v94 = metadataMinimal;
            v30 = v29;
            sharedBypassList2 = [p_superclass + 439 sharedBypassList];
            v32 = [sharedBypassList2 wellknownContainerForId:identifier class:v98];

            v95 = v32;
            v33 = [MCMContainerPath containerPathForUserIdentity:defaultUserIdentity containerClass:v98 containerPathIdentifier:v32];
            containerRootURL = [v33 containerRootURL];
            containerPath = [v28 containerPath];
            containerRootURL2 = [containerPath containerRootURL];
            v96 = containerRootURL;
            if (containerRootURL2)
            {
              v37 = containerRootURL2;
              v90 = v33;
              v92 = v29;
              containerPath2 = [v28 containerPath];
              containerRootURL3 = [containerPath2 containerRootURL];
              v40 = [containerRootURL3 isEqual:containerRootURL];

              if ((v40 & 1) == 0)
              {
                v43 = container_log_handle_for_category();
                v29 = v30;
                metadataMinimal = v94;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  containerPath3 = [v28 containerPath];
                  containerRootURL4 = [containerPath3 containerRootURL];
                  path = [containerRootURL4 path];
                  path2 = [containerRootURL path];
                  *buf = 138412802;
                  v107 = identifier;
                  v108 = 2112;
                  v109 = path;
                  v110 = 2112;
                  v111 = path2;
                  _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Migrating well-known container %@ from %@ to %@", buf, 0x20u);

                  v29 = v92;
                }

                v103 = 0;
                v44 = [gContainerCache removeContainerForUserIdentity:v91 contentClass:v98 identifier:identifier transient:0 error:&v103];
                v45 = v103;
                v46 = v45;
                if (v44)
                {
                  v85 = v45;
                  v47 = +[MCMFileManager defaultManager];
                  containerPath4 = [v28 containerPath];
                  containerRootURL5 = [containerPath4 containerRootURL];
                  v102 = 0;
                  v50 = [v47 moveItemAtURL:containerRootURL5 toURL:containerRootURL error:&v102];
                  v86 = v102;

                  p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
                  if (v50)
                  {
                    v33 = v90;
                    v51 = [v28 metadataByChangingContainerPath:v90];
                    v29 = v92;
                    if (v51)
                    {
                      v41 = v51;
                      v101 = 0;
                      v52 = [gContainerCache addContainerMetadata:v51 error:&v101];
                      v53 = v101;
                      v80 = v53;
                      v81 = v52;
                      if (v52)
                      {
                        v42 = 0;
                      }

                      else
                      {
                        v61 = v53;
                        v62 = container_log_handle_for_category();
                        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          v107 = "[MCMContainerMigrator _performEntitlementBypassListMigrationWithError:]";
                          v108 = 2112;
                          v109 = identifier;
                          v110 = 2112;
                          v111 = v61;
                          _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "%s: Failed to update cache for listed container %@: %@", buf, 0x20u);
                        }

                        v87 = 0;
                        v42 = 2;
                      }

                      if (!v81)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_17;
                    }

                    v56 = container_log_handle_for_category();
                    v54 = v86;
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v79;
                      v107 = "[MCMContainerMigrator _performEntitlementBypassListMigrationWithError:]";
                      v108 = 2112;
                      v109 = identifier;
                      _os_log_error_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_ERROR, "%s: Failed to generate new metadata for listed container %@", buf, 0x16u);
                    }

                    v46 = v85;
                  }

                  else
                  {
                    v55 = container_log_handle_for_category();
                    v29 = v92;
                    v33 = v90;
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      containerPath5 = [v28 containerPath];
                      containerRootURL6 = [containerPath5 containerRootURL];
                      path3 = [containerRootURL6 path];
                      path4 = [containerRootURL path];
                      domain = [v86 domain];
                      code = [v86 code];
                      *buf = 136316418;
                      v107 = "[MCMContainerMigrator _performEntitlementBypassListMigrationWithError:]";
                      v108 = 2112;
                      v109 = identifier;
                      v110 = 2112;
                      v111 = path3;
                      v112 = 2112;
                      v113 = path4;
                      v114 = 2112;
                      v115 = domain;
                      v116 = 2048;
                      v117 = code;
                      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "%s: Failed to move system container %@ from %@ to listed location %@: (error= %@: %lld)", buf, 0x3Eu);

                      v29 = v92;
                      v33 = v90;
                    }

                    v46 = v85;
                    v54 = v86;
                  }
                }

                else
                {
                  v54 = container_log_handle_for_category();
                  p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v107 = "[MCMContainerMigrator _performEntitlementBypassListMigrationWithError:]";
                    v108 = 2112;
                    v109 = identifier;
                    v110 = 2112;
                    v111 = v46;
                    _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "%s: Failed to remove cache for listed container %@: %@", buf, 0x20u);
                  }

                  v33 = v90;
                }

                v41 = 0;
                v87 = 0;
                v42 = 2;
                goto LABEL_35;
              }

              v41 = 0;
              p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
              v29 = v30;
              v33 = v90;
            }

            else
            {

              v41 = 0;
            }

            metadataMinimal = v94;
LABEL_17:
            v42 = 0;
LABEL_35:

            v9 = v29;
            if (!v42)
            {
              v21 = v89;
              defaultUserIdentity = v91;
              goto LABEL_37;
            }

            v73 = v42 >> 1;
            v72 = v87;
            defaultUserIdentity = v91;
LABEL_52:

            v70 = obj;
            if (v73)
            {
              v87 = v72;
              goto LABEL_54;
            }

            v68 = 0;
            v69 = v9;
            goto LABEL_62;
          }
        }

LABEL_37:

        ++v22;
      }

      while (v97 != v22);
      v67 = [obj countByEnumeratingWithState:&v119 objects:v118 count:16];
      v97 = v67;
      if (v67)
      {
        continue;
      }

      break;
    }

LABEL_45:

    v14 = 0;
    v10 = 1;
    p_vtable = (MCMContainerSchemaActionCopyContents + 24);
    v12 = 0x1E695D000;
  }

  while ((v84 & 1) != 0);
LABEL_54:
  if (v9)
  {
    v20 = v9;
    v74 = errorCopy;
    v70 = v87;
    goto LABEL_56;
  }

  v69 = 0;
  v68 = 0;
  v74 = errorCopy;
  v70 = v87;
  if (errorCopy)
  {
LABEL_60:
    if ((v70 & 1) == 0)
    {
      v75 = v68;
      v70 = 0;
      *v74 = v68;
    }
  }

LABEL_62:

  v76 = *MEMORY[0x1E69E9840];
  return v70 & 1;
}

id __72__MCMContainerMigrator__performEntitlementBypassListMigrationWithError___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error during entitlement bypass list migration: %@", *(a1 + 32)];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerMigrator _performEntitlementBypassListMigrationWithError:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A76870;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:objc_msgSend(*(a1 + 32) userInfo:{"type"), v5}];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerMigrator)initWithUserIdentityCache:(id)cache
{
  v11 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v10.receiver = self;
  v10.super_class = MCMContainerMigrator;
  v6 = [(MCMContainerMigrator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentityCache, cache);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)sharedInstance
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MCMContainerMigrator_sharedInstance__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = self;
  if (sharedInstance_onceToken_12392 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12392, v5);
  }

  v2 = sharedInstance_instance_12393;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __38__MCMContainerMigrator_sharedInstance__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc(*(a1 + 32));
  v5 = +[MCMUserIdentitySharedCache sharedInstance];
  v2 = [v1 initWithUserIdentityCache:?];
  v3 = sharedInstance_instance_12393;
  sharedInstance_instance_12393 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end