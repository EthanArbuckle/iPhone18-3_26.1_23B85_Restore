@interface MCMContainerFactory
- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity error:(id *)error;
- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity reclaimSoon:(BOOL)soon error:(id *)error;
- (BOOL)upgradeContainer:(id)container clientIdentity:(id)identity error:(id *)error;
- (MCMClientIdentity)clientIdentity;
- (MCMContainerCache)cache;
- (MCMContainerFactory)initWithContainerCache:(id)cache clientIdentity:(id)identity userIdentityCache:(id)identityCache;
- (MCMUserIdentityCache)userIdentityCache;
- (id)_containerPathIdentifierForContainerIdentity:(id)identity;
- (id)_createContainerForContainerIdentity:(id)identity error:(id *)error;
- (id)_generateConcreteContainerIdentityFromContainerIdentity:(id)identity error:(id *)error;
- (id)containerForContainerIdentity:(id)identity createIfNecessary:(BOOL)necessary error:(id *)error;
@end

@implementation MCMContainerFactory

- (MCMClientIdentity)clientIdentity
{
  result = self->_clientIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerCache)cache
{
  result = self->_cache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_containerPathIdentifierForContainerIdentity:(id)identity
{
  v13 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containerPathIdentifier = [identityCopy containerPathIdentifier];
    goto LABEL_13;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  containerPathIdentifier = [uUID UUIDString];

  containerClass = [identityCopy containerClass];
  [identityCopy platform];
  [identityCopy transient];
  identifier = [identityCopy identifier];
  if ((container_class_supports_randomized_path() & 1) == 0)
  {
    +[MCMContainerPath containerPathIdentifierForCodeSignIdentifier:containerClass:](MCMContainerPath, "containerPathIdentifierForCodeSignIdentifier:containerClass:", identifier, [identityCopy containerClass]);
    containerPathIdentifier = v10 = containerPathIdentifier;
LABEL_11:

    goto LABEL_12;
  }

  if ((containerClass & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v8 = +[MCMEntitlementBypassList sharedBypassList];
    v9 = v8;
    if (containerClass == 13)
    {
      [v8 wellknownSystemGroupContainerForId:identifier];
    }

    else
    {
      [v8 wellknownSystemContainerForId:identifier];
    }
    v10 = ;

    if (v10)
    {
      v10 = v10;

      containerPathIdentifier = v10;
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];

  return containerPathIdentifier;
}

- (id)_generateConcreteContainerIdentityFromContainerIdentity:(id)identity error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = identityCopy;
    goto LABEL_13;
  }

  identifier = [identityCopy identifier];
  userIdentity = [identityCopy userIdentity];
  platform = [identityCopy platform];
  transient = [identityCopy transient];
  v26[0] = 1;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v12 = [(MCMContainerFactory *)self _containerPathIdentifierForContainerIdentity:identityCopy];
  if (!v12)
  {
    v18 = [[MCMError alloc] initWithErrorType:138];
    v17 = userIdentity;
    if (!error)
    {
LABEL_11:
      v7 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v19 = v18;
    v7 = 0;
    *error = v18;
    goto LABEL_12;
  }

  errorCopy = error;
  v13 = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [identityCopy uuid];

    uUID = uuid;
  }

  containerConfig = [identityCopy containerConfig];
  userIdentityCache = [(MCMContainerFactory *)self userIdentityCache];
  BYTE1(v23) = transient;
  LOBYTE(v23) = 0;
  v17 = userIdentity;
  identifier = v13;
  v7 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:uUID userIdentity:userIdentity identifier:v13 containerConfig:containerConfig platform:platform containerPathIdentifier:v12 existed:v23 transient:userIdentityCache userIdentityCache:v26 error:?];

  if (!v7)
  {
    v20 = [MCMError alloc];
    v18 = [(MCMError *)v20 initWithErrorType:v26[0]];
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v18 = 0;
LABEL_12:

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_createContainerForContainerIdentity:(id)identity error:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifier = [identityCopy identifier];
  containerClass = [identityCopy containerClass];
  userIdentity = [identityCopy userIdentity];
  v10 = +[MCMTestLocks sharedInstance];
  [v10 waitOnLock:7];

  v11 = +[MCMDataProtectionManager defaultManager];
  clientIdentity = [(MCMContainerFactory *)self clientIdentity];
  v13 = [v11 intendedDataProtectionClassBasedOnEntitlementsForIdentifier:identifier clientIdentity:clientIdentity containerClass:containerClass info:0];

  v88 = 0;
  v89 = 0;
  v14 = [(MCMContainerFactory *)self createStagedContainerForContainerIdentity:identityCopy finalContainerPath:&v89 dataProtectionClass:v13 error:&v88];
  v15 = v89;
  v16 = v88;
  if (!v14)
  {
    v83 = 0;
    containerPath = 0;
    v34 = 0;
    v49 = 0;
    if (!error)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v80 = containerClass;
  v81 = userIdentity;
  v82 = v16;
  errorCopy = error;
  v78 = identityCopy;
  containerIdentity = [v14 containerIdentity];
  containerPathIdentifier = [containerIdentity containerPathIdentifier];
  v18 = container_log_handle_for_category();
  if (os_signpost_enabled(v18))
  {
    clientIdentity2 = [(MCMContainerFactory *)self clientIdentity];
    codeSignInfo = [clientIdentity2 codeSignInfo];
    identifier2 = [codeSignInfo identifier];
    v22 = identifier2;
    v23 = @"<unknown>";
    *buf = 138478595;
    v91 = containerPathIdentifier;
    if (identifier2)
    {
      v23 = identifier2;
    }

    v92 = 2113;
    v93 = identifier;
    v94 = 2050;
    v95 = v80;
    v96 = 2113;
    v97 = v23;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CreatingContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  clientIdentifier=%{private, signpost.description:attribute}@ ", buf, 0x2Au);
  }

  selfCopy = self;
  v83 = containerPathIdentifier;
  v79 = identifier;

  containerPath = [v14 containerPath];
  containerClassPath = [v15 containerClassPath];
  v87 = 0;
  v26 = [containerClassPath createIfNecessaryWithError:&v87];
  v27 = v87;

  if (v26)
  {
    v28 = 0;
    v29 = *MEMORY[0x1E696A798];
    while (1)
    {

      v30 = +[MCMFileManager defaultManager];
      containerRootURL = [containerPath containerRootURL];
      containerRootURL2 = [v15 containerRootURL];
      v86 = 0;
      v33 = [v30 moveItemAtURL:containerRootURL toURL:containerRootURL2 error:&v86];
      v34 = v86;

      if (v33)
      {
        break;
      }

      v35 = container_log_handle_for_category();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        containerRootURL3 = [containerPath containerRootURL];
        path = [containerRootURL3 path];
        containerRootURL4 = [v15 containerRootURL];
        path2 = [containerRootURL4 path];
        *buf = 138412802;
        v91 = path;
        v92 = 2112;
        v93 = path2;
        v94 = 2112;
        v95 = v34;
        _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to move staging dir: %@ to live dir: %@; error = %@", buf, 0x20u);
      }

      domain = [v34 domain];
      if ([domain isEqualToString:v29])
      {
        code = [v34 code];

        if (code == 66)
        {

          v63 = [MCMError alloc];
          containerRootURL5 = [v15 containerRootURL];
          path3 = [containerRootURL5 path];
          v66 = [(MCMError *)v63 initWithErrorType:130 category:1 path:path3 POSIXerrno:66];

          p_super = containerRootURL5;
          goto LABEL_21;
        }
      }

      else
      {
      }

      domain2 = [v34 domain];
      if (![domain2 isEqualToString:v29])
      {

LABEL_32:
        v66 = [[MCMError alloc] initWithErrorType:8];
        identifier = v79;
        p_super = &v82->super;
        goto LABEL_33;
      }

      v39 = [v34 code] != 2;

      if ((v28 | v39))
      {
        goto LABEL_32;
      }

      containerClassPath2 = [v15 containerClassPath];
      [containerClassPath2 setExists:0];

      containerClassPath3 = [v15 containerClassPath];
      v87 = v34;
      v42 = [containerClassPath3 createIfNecessaryWithError:&v87];
      v27 = v87;

      v28 = 1;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    identifier = v79;
    if (_os_feature_enabled_impl())
    {
      v50 = +[MCMFileManager defaultManager];
      containerRootURL6 = [v15 containerRootURL];
      v85 = 0;
      v52 = [v50 enableFastDiskUsageForURL:containerRootURL6 error:&v85];
      v53 = v85;

      if ((v52 & 1) == 0)
      {
        v54 = container_log_handle_for_category();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          containerRootURL7 = [v15 containerRootURL];
          path4 = [containerRootURL7 path];
          *buf = 138412546;
          v91 = path4;
          v92 = 2112;
          v93 = v53;
          _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Failed to enable fast disk stats on new container [%@]; error = %@", buf, 0x16u);
        }
      }
    }

    v49 = [v14 metadataByChangingContainerPath:v15];
    containerPath = 0;
  }

  else
  {
LABEL_18:

    v46 = [MCMError alloc];
    containerClassPath4 = [v15 containerClassPath];
    classURL = [containerClassPath4 classURL];
    v66 = [(MCMError *)v46 initWithNSError:v27 url:classURL defaultErrorType:8];

    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      classURL2 = [v15 classURL];
      path5 = [classURL2 path];
      *buf = 138412546;
      v91 = path5;
      v92 = 2112;
      v93 = v27;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Failed to create class dir at %@ : %@", buf, 0x16u);
    }

    v34 = v27;
LABEL_21:
    identifier = v79;
LABEL_33:

    userIdentity = v81;
    if (!containerPath)
    {
      v49 = 0;
      v16 = v66;
      error = errorCopy;
      identityCopy = v78;
      goto LABEL_44;
    }

    v55 = containermanager_copy_global_configuration();
    v56 = [v55 isGlobalContainerClass:v80];

    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v57 = v81;
    }

    containerRootURL8 = [containerPath containerRootURL];
    v84 = 0;
    v59 = [(MCMContainerFactory *)selfCopy deleteURL:containerRootURL8 forUserIdentity:v57 reclaimSoon:1 error:&v84];
    v14 = v84;

    if (!v59)
    {
      v60 = container_log_handle_for_category();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        containerRootURL9 = [containerPath containerRootURL];
        path6 = [containerRootURL9 path];
        *buf = 138412546;
        v91 = path6;
        v92 = 2112;
        v93 = v14;
        _os_log_fault_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_FAULT, "Failed to remove staging dir: %@; error = %@", buf, 0x16u);

        identifier = v79;
      }
    }

    v49 = 0;
    v82 = v66;
  }

  error = errorCopy;
  identityCopy = v78;
  userIdentity = v81;
  v16 = v82;
LABEL_44:
  v14 = containerIdentity;
  if (!error)
  {
    goto LABEL_47;
  }

LABEL_45:
  if (!v49)
  {
    v16 = v16;
    *error = v16;
  }

LABEL_47:

  v61 = *MEMORY[0x1E69E9840];

  return v49;
}

- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity reclaimSoon:(BOOL)soon error:(id *)error
{
  soonCopy = soon;
  v55 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identityCopy = identity;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__12874;
  v53 = __Block_byref_object_dispose__12875;
  v54 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__12874;
  v47[4] = __Block_byref_object_dispose__12875;
  v48 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__12874;
  v37[4] = __Block_byref_object_dispose__12875;
  v38 = 0;
  userIdentityCache = [(MCMContainerFactory *)self userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v14 = MCMSharedDeathrowQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke;
  block[3] = &unk_1E86B0C50;
  v15 = identityCopy;
  v28 = v15;
  v32 = &v49;
  v33 = v37;
  v34 = v47;
  v16 = lCopy;
  v29 = v16;
  selfCopy = self;
  v17 = defaultUserIdentity;
  v31 = v17;
  v35 = &v43;
  v36 = &v39;
  dispatch_sync(v14, block);

  if (v44[3])
  {
    if (soonCopy)
    {
      v18 = [MCMCommandContext alloc];
      clientIdentity = [(MCMContainerFactory *)self clientIdentity];
      userIdentityCache2 = [(MCMContainerFactory *)self userIdentityCache];
      v21 = containermanager_copy_global_configuration();
      v22 = [(MCMCommandContext *)v18 initWithClientIdentity:clientIdentity containerCache:0 containerFactory:self userIdentityCache:userIdentityCache2 clientFactory:0 kernelPersonaID:0 globalConfiguration:v21];

      v23 = [[MCMCommandOperationReclaimDiskSpace alloc] initWithAsynchronously:1 context:v22 resultPromise:0];
      [(MCMCommandOperationReclaimDiskSpace *)v23 execute];
    }

    goto LABEL_5;
  }

  if (v40[3])
  {
LABEL_5:
    v24 = 1;
    goto LABEL_6;
  }

  v24 = 0;
  if (error)
  {
    *error = v50[5];
  }

LABEL_6:

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v47, 8);

  _Block_object_dispose(&v49, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    [MCMContainerClassDeletedPath deletedURLWithUserIdentity:?];
  }

  else
  {
    +[MCMContainerClassDeletedPath deletedGlobalURL];
  }
  v2 = ;
  if (!v2)
  {
    v21 = [[MCMError alloc] initWithErrorType:13];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not get deathrow URL", buf, 2u);
    }

    goto LABEL_23;
  }

  v3 = +[MCMFileManager defaultManager];
  v4 = *(*(a1 + 80) + 8);
  obj = *(v4 + 40);
  v5 = [v3 createTemporaryDirectoryInDirectoryURL:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 72) + 8) + 40);
  if (v8)
  {
    v9 = [*(a1 + 40) lastPathComponent];
    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:{objc_msgSend(*(a1 + 40), "hasDirectoryPath")}];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [*(a1 + 48) userIdentityCache];
    v14 = [v13 libraryRepairForUserIdentity:*(a1 + 56)];

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    v17 = *(a1 + 40);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke_15;
    v47[3] = &unk_1E86B1090;
    v47[4] = *(a1 + 72);
    v48 = v16;
    v18 = [v14 fixAndRetryIfPermissionsErrorWithURL:v17 error:&v48 duringBlock:v47];
    objc_storeStrong((v15 + 40), v48);
    *(*(*(a1 + 88) + 8) + 24) = v18;
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      goto LABEL_18;
    }

    v19 = [*(*(*(a1 + 80) + 8) + 40) domain];
    if ([v19 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v20 = [*(*(*(a1 + 80) + 8) + 40) code];

      if (v20 == 2)
      {
        *(*(*(a1 + 96) + 8) + 24) = 1;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
    }

    v29 = [[MCMError alloc] initWithErrorType:41];
    v30 = *(*(a1 + 64) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v41 = [*(a1 + 40) path];
      v42 = [*(*(*(a1 + 72) + 8) + 40) path];
      v43 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412802;
      v51 = v41;
      v52 = 2112;
      v53 = v42;
      v54 = 2112;
      v55 = v43;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Failed to move item at: %@ to: %@; error = %@", buf, 0x20u);
    }
  }

  else
  {
    v24 = [[MCMError alloc] initWithErrorType:41];
    v25 = *(*(a1 + 64) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v14 = container_log_handle_for_category();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v27 = [*(a1 + 40) path];
    v28 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412546;
    v51 = v27;
    v52 = 2112;
    v53 = v28;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to create unique directory at: %@; error = %@", buf, 0x16u);
  }

LABEL_18:
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v32 = [*(a1 + 48) userIdentityCache];
    v14 = [v32 libraryRepairForUserIdentity:*(a1 + 56)];

    v33 = *(a1 + 40);
    v34 = *(*(a1 + 80) + 8);
    v46 = *(v34 + 40);
    v35 = [v14 fixAndRetryIfPermissionsErrorWithURL:v33 error:&v46 duringBlock:&__block_literal_global_12883];
    objc_storeStrong((v34 + 40), v46);
    *(*(*(a1 + 96) + 8) + 24) = v35;
    if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
      v36 = [[MCMError alloc] initWithErrorType:41];
      v37 = *(*(a1 + 64) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      v39 = container_log_handle_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v44 = [*(a1 + 40) path];
        v45 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412546;
        v51 = v44;
        v52 = 2112;
        v53 = v45;
        _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Failed to direct-delete [%@]; error = %@", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

LABEL_24:

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke_15(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 moveItemAtURL:v5 toURL:*(*(*(a1 + 32) + 8) + 40) error:a3];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[MCMFileManager defaultManager];
  v6 = [v5 removeItemAtURL:v4 error:a3];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)deleteURL:(id)l forUserIdentity:(id)identity error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMContainerFactory *)self deleteURL:l forUserIdentity:identity reclaimSoon:0 error:error];
}

- (id)containerForContainerIdentity:(id)identity createIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  v96 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  transient = [identityCopy transient];
  LODWORD(platform) = [identityCopy platform];
  clientIdentity = [(MCMContainerFactory *)self clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier = [codeSignInfo identifier];

  userIdentity = [identityCopy userIdentity];
  containerClass = [identityCopy containerClass];
  selfCopy = self;
  if (!platform)
  {
    clientIdentity2 = [(MCMContainerFactory *)self clientIdentity];
    platform = [clientIdentity2 platform];

    v13 = [identityCopy identityBySettingPlatform:platform];

    identityCopy = v13;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(MCMContainerFactory *)self clientIdentity];
    v44 = v43 = identifier;
    codeSignInfo2 = [v44 codeSignInfo];
    entitlements = [codeSignInfo2 entitlements];
    *buf = 138413570;
    v90 = identityCopy;
    v91 = 1024;
    *v92 = necessaryCopy;
    *&v92[4] = 1024;
    *&v92[6] = platform;
    *v93 = 1024;
    *&v93[2] = transient;
    LOWORD(v94) = 1024;
    *(&v94 + 2) = [entitlements privileged];
    HIWORD(v94) = 2112;
    v95 = v43;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "createOrLookup; identity: %@, createIfNecessary: %d, platform: %u, transient: %d, privileged: %d, clientBundleIdentifier: %@", buf, 0x2Eu);

    identifier = v43;
  }

  if (!identityCopy)
  {
    v18 = [[MCMError alloc] initWithErrorType:38];
    v19 = container_log_handle_for_category();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "Cannot lookup a nil container identity.";
LABEL_64:
    _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
LABEL_10:

    v21 = 0;
    v22 = 0;
LABEL_11:
    if (v18)
    {
      v23 = v18;
      v24 = 0;
      *error = v18;
LABEL_13:
      v25 = v18;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    goto LABEL_57;
  }

  v15 = containermanager_copy_global_configuration();
  v16 = [v15 isUnsupportedSystemContainerWithContainerClass:containerClass];

  if (v16)
  {
    v18 = [[MCMError alloc] initWithErrorType:72];
    v19 = container_log_handle_for_category();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "System containers are unsupported on this platform.";
    goto LABEL_64;
  }

  v75 = identifier;
  v76 = containerClass;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v26 = 0;
  *&v17 = 136315138;
  v74 = v17;
  v27 = selfCopy;
  while (1)
  {
    v28 = v26;
    v29 = v21;

    cache = [(MCMContainerFactory *)v27 cache];
    v21 = [cache classCacheForContainerIdentity:identityCopy];

    cache2 = [(MCMContainerFactory *)v27 cache];
    v88 = 0;
    v24 = [cache2 entryForContainerIdentity:identityCopy classCache:v21 error:&v88];
    v18 = v88;

    if (v24)
    {
      if (!transient || (objc_opt_class(), ((objc_opt_isKindOfClass() | !necessaryCopy) & 1) != 0))
      {
        v22 = 0;
        identifier = v75;
        goto LABEL_49;
      }

      v32 = objc_alloc(MEMORY[0x1E695DFF8]);
      v80 = v24;
      containerPath = [v24 containerPath];
      containerRootURL = [containerPath containerRootURL];
      path = [containerRootURL path];
      v36 = [v32 initFileURLWithPath:path isDirectory:1];

      v37 = containermanager_copy_global_configuration();
      LOBYTE(v32) = [v37 isGlobalContainerClass:v76];

      if (v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = userIdentity;
      }

      v87 = v18;
      v40 = [(MCMContainerFactory *)selfCopy deleteURL:v36 forUserIdentity:v38 reclaimSoon:1 error:&v87, v74];
      v39 = v87;

      if (!v40)
      {
        v18 = [[MCMError alloc] initWithErrorType:5];

        v52 = container_log_handle_for_category();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          path2 = [v36 path];
          *buf = 138412546;
          v90 = path2;
          v91 = 2112;
          *v92 = v18;
          _os_log_error_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_ERROR, "Failed to remove transient container at %@; error = %@", buf, 0x16u);
        }

        v22 = 0;
        identifier = v75;
        v24 = v80;
        goto LABEL_49;
      }

      v27 = selfCopy;
      v24 = v80;
    }

    else
    {
      if ([(MCMError *)v18 type]!= 21 && [(MCMError *)v18 type]!= 44 && [(MCMError *)v18 type]!= 108)
      {
        goto LABEL_62;
      }

      if (!necessaryCopy)
      {
        v18 = [[MCMError alloc] initWithErrorType:21];
LABEL_62:
        v22 = 0;
        identifier = v75;
        goto LABEL_11;
      }

      v39 = 0;
    }

    v86 = v39;
    v22 = [(MCMContainerFactory *)v27 _createContainerForContainerIdentity:identityCopy error:&v86, v74];
    v18 = v86;

    if (v22)
    {
      break;
    }

    if ([(MCMError *)v18 type]== 130)
    {
      v41 = container_log_handle_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = " Retrying lookup.";
        if (v28)
        {
          v42 = "";
        }

        *buf = v74;
        v90 = v42;
        _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Container already exists when trying to create it.%s", buf, 0xCu);
      }

      v26 = 1;
      if ((v28 & 1) == 0)
      {
        continue;
      }
    }

    v22 = 0;
    identifier = v75;
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

  v85 = v18;
  v47 = [v22 verifyWithError:&v85];
  v48 = v85;

  identifier = v75;
  if (v47)
  {
    cache3 = [(MCMContainerFactory *)selfCopy cache];
    v84 = v48;
    v50 = [cache3 addContainerMetadata:v22 error:&v84];
    v51 = v84;

    if (!v50)
    {
      v18 = [[MCMError alloc] initWithErrorType:45];

      v63 = container_log_handle_for_category();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        containerPath2 = [v22 containerPath];
        [containerPath2 containerRootURL];
        v70 = identityCopy;
        v72 = v71 = v21;
        path3 = [v72 path];
        *buf = 138413058;
        v90 = v22;
        v91 = 2112;
        *v92 = path3;
        *&v92[8] = 1024;
        *v93 = transient;
        *&v93[4] = 2112;
        v94 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@, transient: %d; error = %@", buf, 0x26u);

        v21 = v71;
        identityCopy = v70;
      }

      goto LABEL_11;
    }

    v24 = [v50 copyWithZone:0];
    v48 = v51;
  }

  else
  {
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [v22 shortDescription];
      *buf = 138412546;
      v90 = shortDescription;
      v91 = 2112;
      *v92 = v48;
      _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "Failed to verify new metadata; metadata = %@, error = %@", buf, 0x16u);
    }
  }

  v18 = v48;
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_49:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [v24 uuid];
    uuid2 = [identityCopy uuid];
    v55 = [uuid isEqual:uuid2];

    if ((v55 & 1) == 0)
    {

      v62 = [[MCMError alloc] initWithErrorType:21];
      v18 = v62;
      goto LABEL_11;
    }
  }

  if (!necessaryCopy)
  {
    goto LABEL_13;
  }

  v56 = v21;
  clientIdentity3 = [(MCMContainerFactory *)selfCopy clientIdentity];
  v83 = v18;
  v58 = [(MCMContainerFactory *)selfCopy upgradeContainer:v24 clientIdentity:clientIdentity3 error:&v83];
  v25 = v83;

  if (!v58)
  {
    v59 = container_log_handle_for_category();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      containerPath3 = [v24 containerPath];
      containerRootURL2 = [containerPath3 containerRootURL];
      path4 = [containerRootURL2 path];
      *buf = 138412546;
      v90 = path4;
      v91 = 2112;
      *v92 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v59, OS_LOG_TYPE_ERROR, "Failed to migrate container at [%@]; error = %@", buf, 0x16u);
    }
  }

  v21 = v56;
LABEL_57:

  v60 = *MEMORY[0x1E69E9840];

  return v24;
}

- (MCMContainerFactory)initWithContainerCache:(id)cache clientIdentity:(id)identity userIdentityCache:(id)identityCache
{
  v17 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  identityCopy = identity;
  identityCacheCopy = identityCache;
  v16.receiver = self;
  v16.super_class = MCMContainerFactory;
  v12 = [(MCMContainerFactory *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cache, cache);
    objc_storeStrong(&v13->_clientIdentity, identity);
    objc_storeStrong(&v13->_userIdentityCache, identityCache);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)upgradeContainer:(id)container clientIdentity:(id)identity error:(id *)error
{
  errorCopy = error;
  v65 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  identityCopy = identity;
  schemaVersion = [containerCopy schemaVersion];
  containerPath = [containerCopy containerPath];
  identifier = [containerCopy identifier];
  containerClass = [containerPath containerClass];
  userIdentityCache = [(MCMContainerFactory *)self userIdentityCache];
  userIdentity = [containerPath userIdentity];
  v47 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  [containerPath containerClass];
  if (!container_class_supports_data_subdirectory())
  {
    v46 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v64 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  containerDataURL = [containerPath containerDataURL];
  v57[5] = &v59;
  v58 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __71__MCMContainerFactory_Upgrades__upgradeContainer_clientIdentity_error___block_invoke;
  v57[3] = &unk_1E86B0C78;
  v57[4] = buf;
  v13 = [v47 fixAndRetryIfPermissionsErrorWithURL:containerDataURL containerPath:containerPath containerIdentifier:identifier error:&v58 duringBlock:v57];
  v46 = v58;

  if ((v13 & 1) == 0)
  {
    v29 = [MCMError alloc];
    containerDataURL2 = [containerPath containerDataURL];
    v14 = [(MCMError *)v29 initWithNSError:v46 url:containerDataURL2 defaultErrorType:105];
    goto LABEL_26;
  }

  if (*(*&buf[8] + 24) != 1 || (v60[3] & 1) == 0)
  {
    v56 = 0;
    containerDataURL2 = [containerCopy metadataWithError:{&v56, errorCopy}];
    v14 = v56;
    if (containerDataURL2)
    {
      v31 = +[MCMDataProtectionManager defaultManager];
      v32 = [v31 desiredDataProtectionClassForMetadata:containerDataURL2 clientIdentity:identityCopy];

      v55 = v46;
      LOBYTE(v31) = [containerPath createDataURLIfNecessaryWithDataProtectionClass:v32 error:&v55];
      v33 = v55;

      if (v31)
      {
        v34 = &unk_1F5A76F90;

        schemaVersion = &unk_1F5A76F90;
        v46 = v33;
        goto LABEL_20;
      }

      v36 = [MCMError alloc];
      containerDataURL3 = [containerPath containerDataURL];
      v38 = [(MCMError *)v36 initWithNSError:v33 url:containerDataURL3 defaultErrorType:106];

      v46 = v33;
      v14 = v38;
    }

LABEL_26:

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(buf, 8);
    v16 = 0;
LABEL_27:
    if (errorCopy)
    {
      v39 = v14;
      v18 = 0;
      v17 = 0;
      *errorCopy = v14;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    goto LABEL_30;
  }

  v14 = 0;
LABEL_20:
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(buf, 8);
LABEL_7:
  v54 = 0;
  errorCopy = [MCMContainerSchema schemaIsUpToDateForIdentifier:identifier containerClass:containerClass currentSchemaVersion:schemaVersion latestSchemaVersion:&v54, errorCopy];
  v16 = v54;
  if (errorCopy)
  {
    v17 = 0;
LABEL_9:
    v18 = 1;
    goto LABEL_30;
  }

  v53 = v14;
  v19 = [containerCopy metadataWithError:&v53];
  v20 = v53;

  if (!v19)
  {
    v14 = v20;
    goto LABEL_27;
  }

  v21 = +[MCMDataProtectionManager defaultManager];
  v22 = [v21 desiredDataProtectionClassForMetadata:v19 clientIdentity:identityCopy];

  containerPath2 = [v19 containerPath];
  v24 = [MCMContainerSchema containerSchemaWithMetadata:v19 finalContainerPath:containerPath2 dataProtectionClass:v22 libraryRepair:v47];

  v52 = v20;
  LOBYTE(v21) = [v24 writeSchemaFromVersion:schemaVersion toTargetVersion:v16 error:&v52];
  v14 = v52;

  if ((v21 & 1) == 0)
  {
    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Could not update container schema for %@: %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v17 = [v19 metadataByChangingSchemaVersion:v16];

  if (!v17)
  {
    goto LABEL_9;
  }

  v51 = v14;
  v25 = [v17 writeMetadataToDiskWithError:&v51];
  v26 = v51;

  if (v25)
  {
    cache = [(MCMContainerFactory *)self cache];
    v50 = v26;
    v28 = [cache addContainerMetadata:v17 error:&v50];
    v14 = v50;

    if (v28)
    {
      v18 = 1;
      containerCopy = v28;
      goto LABEL_30;
    }

    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Failed to update cache with new metadata during schema update; error = %@", buf, 0xCu);
    }

    containerCopy = 0;
    v14 = 0;
    goto LABEL_9;
  }

  v42 = container_log_handle_for_category();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Could not update container schema version or data protection class in metadata for %@: %@", buf, 0x16u);
  }

  v18 = 1;
  v14 = v26;
LABEL_30:

  v40 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __71__MCMContainerFactory_Upgrades__upgradeContainer_clientIdentity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 itemAtURL:v5 exists:*(*(a1 + 32) + 8) + 24 isDirectory:*(*(a1 + 40) + 8) + 24 error:a3];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end