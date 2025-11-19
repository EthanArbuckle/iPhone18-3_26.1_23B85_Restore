@interface MCMContainerFactory
- (BOOL)deleteURL:(id)a3 forUserIdentity:(id)a4 error:(id *)a5;
- (BOOL)deleteURL:(id)a3 forUserIdentity:(id)a4 reclaimSoon:(BOOL)a5 error:(id *)a6;
- (BOOL)upgradeContainer:(id)a3 clientIdentity:(id)a4 error:(id *)a5;
- (MCMClientIdentity)clientIdentity;
- (MCMContainerCache)cache;
- (MCMContainerFactory)initWithContainerCache:(id)a3 clientIdentity:(id)a4 userIdentityCache:(id)a5;
- (MCMUserIdentityCache)userIdentityCache;
- (id)_containerPathIdentifierForContainerIdentity:(id)a3;
- (id)_createContainerForContainerIdentity:(id)a3 error:(id *)a4;
- (id)_generateConcreteContainerIdentityFromContainerIdentity:(id)a3 error:(id *)a4;
- (id)containerForContainerIdentity:(id)a3 createIfNecessary:(BOOL)a4 error:(id *)a5;
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

- (id)_containerPathIdentifierForContainerIdentity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 containerPathIdentifier];
    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v5 UUIDString];

  v6 = [v3 containerClass];
  [v3 platform];
  [v3 transient];
  v7 = [v3 identifier];
  if ((container_class_supports_randomized_path() & 1) == 0)
  {
    +[MCMContainerPath containerPathIdentifierForCodeSignIdentifier:containerClass:](MCMContainerPath, "containerPathIdentifierForCodeSignIdentifier:containerClass:", v7, [v3 containerClass]);
    v4 = v10 = v4;
LABEL_11:

    goto LABEL_12;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v8 = +[MCMEntitlementBypassList sharedBypassList];
    v9 = v8;
    if (v6 == 13)
    {
      [v8 wellknownSystemGroupContainerForId:v7];
    }

    else
    {
      [v8 wellknownSystemContainerForId:v7];
    }
    v10 = ;

    if (v10)
    {
      v10 = v10;

      v4 = v10;
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_generateConcreteContainerIdentityFromContainerIdentity:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_13;
  }

  v8 = [v6 identifier];
  v25 = [v6 userIdentity];
  v9 = [v6 platform];
  v10 = [v6 transient];
  v26[0] = 1;
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [(MCMContainerFactory *)self _containerPathIdentifierForContainerIdentity:v6];
  if (!v12)
  {
    v18 = [[MCMError alloc] initWithErrorType:138];
    v17 = v25;
    if (!a4)
    {
LABEL_11:
      v7 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v19 = v18;
    v7 = 0;
    *a4 = v18;
    goto LABEL_12;
  }

  v24 = a4;
  v13 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v6 uuid];

    v11 = v14;
  }

  v15 = [v6 containerConfig];
  v16 = [(MCMContainerFactory *)self userIdentityCache];
  BYTE1(v23) = v10;
  LOBYTE(v23) = 0;
  v17 = v25;
  v8 = v13;
  v7 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:v11 userIdentity:v25 identifier:v13 containerConfig:v15 platform:v9 containerPathIdentifier:v12 existed:v23 transient:v16 userIdentityCache:v26 error:?];

  if (!v7)
  {
    v20 = [MCMError alloc];
    v18 = [(MCMError *)v20 initWithErrorType:v26[0]];
    a4 = v24;
    if (!v24)
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

- (id)_createContainerForContainerIdentity:(id)a3 error:(id *)a4
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 containerClass];
  v9 = [v6 userIdentity];
  v10 = +[MCMTestLocks sharedInstance];
  [v10 waitOnLock:7];

  v11 = +[MCMDataProtectionManager defaultManager];
  v12 = [(MCMContainerFactory *)self clientIdentity];
  v13 = [v11 intendedDataProtectionClassBasedOnEntitlementsForIdentifier:v7 clientIdentity:v12 containerClass:v8 info:0];

  v88 = 0;
  v89 = 0;
  v14 = [(MCMContainerFactory *)self createStagedContainerForContainerIdentity:v6 finalContainerPath:&v89 dataProtectionClass:v13 error:&v88];
  v15 = v89;
  v16 = v88;
  if (!v14)
  {
    v83 = 0;
    v24 = 0;
    v34 = 0;
    v49 = 0;
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v80 = v8;
  v81 = v9;
  v82 = v16;
  v77 = a4;
  v78 = v6;
  v76 = [v14 containerIdentity];
  v17 = [v76 containerPathIdentifier];
  v18 = container_log_handle_for_category();
  if (os_signpost_enabled(v18))
  {
    v19 = [(MCMContainerFactory *)self clientIdentity];
    v20 = [v19 codeSignInfo];
    v21 = [v20 identifier];
    v22 = v21;
    v23 = @"<unknown>";
    *buf = 138478595;
    v91 = v17;
    if (v21)
    {
      v23 = v21;
    }

    v92 = 2113;
    v93 = v7;
    v94 = 2050;
    v95 = v80;
    v96 = 2113;
    v97 = v23;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CreatingContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  clientIdentifier=%{private, signpost.description:attribute}@ ", buf, 0x2Au);
  }

  v75 = self;
  v83 = v17;
  v79 = v7;

  v24 = [v14 containerPath];
  v25 = [v15 containerClassPath];
  v87 = 0;
  v26 = [v25 createIfNecessaryWithError:&v87];
  v27 = v87;

  if (v26)
  {
    v28 = 0;
    v29 = *MEMORY[0x1E696A798];
    while (1)
    {

      v30 = +[MCMFileManager defaultManager];
      v31 = [v24 containerRootURL];
      v32 = [v15 containerRootURL];
      v86 = 0;
      v33 = [v30 moveItemAtURL:v31 toURL:v32 error:&v86];
      v34 = v86;

      if (v33)
      {
        break;
      }

      v35 = container_log_handle_for_category();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v74 = [v24 containerRootURL];
        v43 = [v74 path];
        v44 = [v15 containerRootURL];
        v45 = [v44 path];
        *buf = 138412802;
        v91 = v43;
        v92 = 2112;
        v93 = v45;
        v94 = 2112;
        v95 = v34;
        _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to move staging dir: %@ to live dir: %@; error = %@", buf, 0x20u);
      }

      v36 = [v34 domain];
      if ([v36 isEqualToString:v29])
      {
        v37 = [v34 code];

        if (v37 == 66)
        {

          v63 = [MCMError alloc];
          v64 = [v15 containerRootURL];
          v65 = [v64 path];
          v66 = [(MCMError *)v63 initWithErrorType:130 category:1 path:v65 POSIXerrno:66];

          p_super = v64;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v38 = [v34 domain];
      if (![v38 isEqualToString:v29])
      {

LABEL_32:
        v66 = [[MCMError alloc] initWithErrorType:8];
        v7 = v79;
        p_super = &v82->super;
        goto LABEL_33;
      }

      v39 = [v34 code] != 2;

      if ((v28 | v39))
      {
        goto LABEL_32;
      }

      v40 = [v15 containerClassPath];
      [v40 setExists:0];

      v41 = [v15 containerClassPath];
      v87 = v34;
      v42 = [v41 createIfNecessaryWithError:&v87];
      v27 = v87;

      v28 = 1;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v7 = v79;
    if (_os_feature_enabled_impl())
    {
      v50 = +[MCMFileManager defaultManager];
      v51 = [v15 containerRootURL];
      v85 = 0;
      v52 = [v50 enableFastDiskUsageForURL:v51 error:&v85];
      v53 = v85;

      if ((v52 & 1) == 0)
      {
        v54 = container_log_handle_for_category();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v72 = [v15 containerRootURL];
          v73 = [v72 path];
          *buf = 138412546;
          v91 = v73;
          v92 = 2112;
          v93 = v53;
          _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Failed to enable fast disk stats on new container [%@]; error = %@", buf, 0x16u);
        }
      }
    }

    v49 = [v14 metadataByChangingContainerPath:v15];
    v24 = 0;
  }

  else
  {
LABEL_18:

    v46 = [MCMError alloc];
    v47 = [v15 containerClassPath];
    v48 = [v47 classURL];
    v66 = [(MCMError *)v46 initWithNSError:v27 url:v48 defaultErrorType:8];

    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v68 = [v15 classURL];
      v69 = [v68 path];
      *buf = 138412546;
      v91 = v69;
      v92 = 2112;
      v93 = v27;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Failed to create class dir at %@ : %@", buf, 0x16u);
    }

    v34 = v27;
LABEL_21:
    v7 = v79;
LABEL_33:

    v9 = v81;
    if (!v24)
    {
      v49 = 0;
      v16 = v66;
      a4 = v77;
      v6 = v78;
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

    v58 = [v24 containerRootURL];
    v84 = 0;
    v59 = [(MCMContainerFactory *)v75 deleteURL:v58 forUserIdentity:v57 reclaimSoon:1 error:&v84];
    v14 = v84;

    if (!v59)
    {
      v60 = container_log_handle_for_category();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        v70 = [v24 containerRootURL];
        v71 = [v70 path];
        *buf = 138412546;
        v91 = v71;
        v92 = 2112;
        v93 = v14;
        _os_log_fault_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_FAULT, "Failed to remove staging dir: %@; error = %@", buf, 0x16u);

        v7 = v79;
      }
    }

    v49 = 0;
    v82 = v66;
  }

  a4 = v77;
  v6 = v78;
  v9 = v81;
  v16 = v82;
LABEL_44:
  v14 = v76;
  if (!a4)
  {
    goto LABEL_47;
  }

LABEL_45:
  if (!v49)
  {
    v16 = v16;
    *a4 = v16;
  }

LABEL_47:

  v61 = *MEMORY[0x1E69E9840];

  return v49;
}

- (BOOL)deleteURL:(id)a3 forUserIdentity:(id)a4 reclaimSoon:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
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
  v12 = [(MCMContainerFactory *)self userIdentityCache];
  v13 = [v12 defaultUserIdentity];

  v14 = MCMSharedDeathrowQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MCMContainerFactory_deleteURL_forUserIdentity_reclaimSoon_error___block_invoke;
  block[3] = &unk_1E86B0C50;
  v15 = v11;
  v28 = v15;
  v32 = &v49;
  v33 = v37;
  v34 = v47;
  v16 = v10;
  v29 = v16;
  v30 = self;
  v17 = v13;
  v31 = v17;
  v35 = &v43;
  v36 = &v39;
  dispatch_sync(v14, block);

  if (v44[3])
  {
    if (v7)
    {
      v18 = [MCMCommandContext alloc];
      v19 = [(MCMContainerFactory *)self clientIdentity];
      v20 = [(MCMContainerFactory *)self userIdentityCache];
      v21 = containermanager_copy_global_configuration();
      v22 = [(MCMCommandContext *)v18 initWithClientIdentity:v19 containerCache:0 containerFactory:self userIdentityCache:v20 clientFactory:0 kernelPersonaID:0 globalConfiguration:v21];

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
  if (a6)
  {
    *a6 = v50[5];
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

- (BOOL)deleteURL:(id)a3 forUserIdentity:(id)a4 error:(id *)a5
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMContainerFactory *)self deleteURL:a3 forUserIdentity:a4 reclaimSoon:0 error:a5];
}

- (id)containerForContainerIdentity:(id)a3 createIfNecessary:(BOOL)a4 error:(id *)a5
{
  v78 = a4;
  v96 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v79 = [v6 transient];
  LODWORD(v7) = [v6 platform];
  v8 = [(MCMContainerFactory *)self clientIdentity];
  v9 = [v8 codeSignInfo];
  v10 = [v9 identifier];

  v81 = [v6 userIdentity];
  v11 = [v6 containerClass];
  v82 = self;
  if (!v7)
  {
    v12 = [(MCMContainerFactory *)self clientIdentity];
    v7 = [v12 platform];

    v13 = [v6 identityBySettingPlatform:v7];

    v6 = v13;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(MCMContainerFactory *)self clientIdentity];
    v44 = v43 = v10;
    v45 = [v44 codeSignInfo];
    v46 = [v45 entitlements];
    *buf = 138413570;
    v90 = v6;
    v91 = 1024;
    *v92 = v78;
    *&v92[4] = 1024;
    *&v92[6] = v7;
    *v93 = 1024;
    *&v93[2] = v79;
    LOWORD(v94) = 1024;
    *(&v94 + 2) = [v46 privileged];
    HIWORD(v94) = 2112;
    v95 = v43;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "createOrLookup; identity: %@, createIfNecessary: %d, platform: %u, transient: %d, privileged: %d, clientBundleIdentifier: %@", buf, 0x2Eu);

    v10 = v43;
  }

  if (!v6)
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
      *a5 = v18;
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
  v16 = [v15 isUnsupportedSystemContainerWithContainerClass:v11];

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

  v75 = v10;
  v76 = v11;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v26 = 0;
  *&v17 = 136315138;
  v74 = v17;
  v27 = v82;
  while (1)
  {
    v28 = v26;
    v29 = v21;

    v30 = [(MCMContainerFactory *)v27 cache];
    v21 = [v30 classCacheForContainerIdentity:v6];

    v31 = [(MCMContainerFactory *)v27 cache];
    v88 = 0;
    v24 = [v31 entryForContainerIdentity:v6 classCache:v21 error:&v88];
    v18 = v88;

    if (v24)
    {
      if (!v79 || (objc_opt_class(), ((objc_opt_isKindOfClass() | !v78) & 1) != 0))
      {
        v22 = 0;
        v10 = v75;
        goto LABEL_49;
      }

      v32 = objc_alloc(MEMORY[0x1E695DFF8]);
      v80 = v24;
      v33 = [v24 containerPath];
      v34 = [v33 containerRootURL];
      v35 = [v34 path];
      v36 = [v32 initFileURLWithPath:v35 isDirectory:1];

      v37 = containermanager_copy_global_configuration();
      LOBYTE(v32) = [v37 isGlobalContainerClass:v76];

      if (v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = v81;
      }

      v87 = v18;
      v40 = [(MCMContainerFactory *)v82 deleteURL:v36 forUserIdentity:v38 reclaimSoon:1 error:&v87, v74];
      v39 = v87;

      if (!v40)
      {
        v18 = [[MCMError alloc] initWithErrorType:5];

        v52 = container_log_handle_for_category();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v67 = [v36 path];
          *buf = 138412546;
          v90 = v67;
          v91 = 2112;
          *v92 = v18;
          _os_log_error_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_ERROR, "Failed to remove transient container at %@; error = %@", buf, 0x16u);
        }

        v22 = 0;
        v10 = v75;
        v24 = v80;
        goto LABEL_49;
      }

      v27 = v82;
      v24 = v80;
    }

    else
    {
      if ([(MCMError *)v18 type]!= 21 && [(MCMError *)v18 type]!= 44 && [(MCMError *)v18 type]!= 108)
      {
        goto LABEL_62;
      }

      if (!v78)
      {
        v18 = [[MCMError alloc] initWithErrorType:21];
LABEL_62:
        v22 = 0;
        v10 = v75;
        goto LABEL_11;
      }

      v39 = 0;
    }

    v86 = v39;
    v22 = [(MCMContainerFactory *)v27 _createContainerForContainerIdentity:v6 error:&v86, v74];
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
    v10 = v75;
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

  v85 = v18;
  v47 = [v22 verifyWithError:&v85];
  v48 = v85;

  v10 = v75;
  if (v47)
  {
    v49 = [(MCMContainerFactory *)v82 cache];
    v84 = v48;
    v50 = [v49 addContainerMetadata:v22 error:&v84];
    v51 = v84;

    if (!v50)
    {
      v18 = [[MCMError alloc] initWithErrorType:45];

      v63 = container_log_handle_for_category();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v69 = [v22 containerPath];
        [v69 containerRootURL];
        v70 = v6;
        v72 = v71 = v21;
        v73 = [v72 path];
        *buf = 138413058;
        v90 = v22;
        v91 = 2112;
        *v92 = v73;
        *&v92[8] = 1024;
        *v93 = v79;
        *&v93[4] = 2112;
        v94 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@, transient: %d; error = %@", buf, 0x26u);

        v21 = v71;
        v6 = v70;
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
      v68 = [v22 shortDescription];
      *buf = 138412546;
      v90 = v68;
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
    v53 = [v24 uuid];
    v54 = [v6 uuid];
    v55 = [v53 isEqual:v54];

    if ((v55 & 1) == 0)
    {

      v62 = [[MCMError alloc] initWithErrorType:21];
      v18 = v62;
      goto LABEL_11;
    }
  }

  if (!v78)
  {
    goto LABEL_13;
  }

  v56 = v21;
  v57 = [(MCMContainerFactory *)v82 clientIdentity];
  v83 = v18;
  v58 = [(MCMContainerFactory *)v82 upgradeContainer:v24 clientIdentity:v57 error:&v83];
  v25 = v83;

  if (!v58)
  {
    v59 = container_log_handle_for_category();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v64 = [v24 containerPath];
      v65 = [v64 containerRootURL];
      v66 = [v65 path];
      *buf = 138412546;
      v90 = v66;
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

- (MCMContainerFactory)initWithContainerCache:(id)a3 clientIdentity:(id)a4 userIdentityCache:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MCMContainerFactory;
  v12 = [(MCMContainerFactory *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cache, a3);
    objc_storeStrong(&v13->_clientIdentity, a4);
    objc_storeStrong(&v13->_userIdentityCache, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)upgradeContainer:(id)a3 clientIdentity:(id)a4 error:(id *)a5
{
  v44 = a5;
  v65 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v45 = a4;
  v48 = [v7 schemaVersion];
  v8 = [v7 containerPath];
  v49 = [v7 identifier];
  v9 = [v8 containerClass];
  v10 = [(MCMContainerFactory *)self userIdentityCache];
  v11 = [v8 userIdentity];
  v47 = [v10 libraryRepairForUserIdentity:v11];

  [v8 containerClass];
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
  v12 = [v8 containerDataURL];
  v57[5] = &v59;
  v58 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __71__MCMContainerFactory_Upgrades__upgradeContainer_clientIdentity_error___block_invoke;
  v57[3] = &unk_1E86B0C78;
  v57[4] = buf;
  v13 = [v47 fixAndRetryIfPermissionsErrorWithURL:v12 containerPath:v8 containerIdentifier:v49 error:&v58 duringBlock:v57];
  v46 = v58;

  if ((v13 & 1) == 0)
  {
    v29 = [MCMError alloc];
    v30 = [v8 containerDataURL];
    v14 = [(MCMError *)v29 initWithNSError:v46 url:v30 defaultErrorType:105];
    goto LABEL_26;
  }

  if (*(*&buf[8] + 24) != 1 || (v60[3] & 1) == 0)
  {
    v56 = 0;
    v30 = [v7 metadataWithError:{&v56, v44}];
    v14 = v56;
    if (v30)
    {
      v31 = +[MCMDataProtectionManager defaultManager];
      v32 = [v31 desiredDataProtectionClassForMetadata:v30 clientIdentity:v45];

      v55 = v46;
      LOBYTE(v31) = [v8 createDataURLIfNecessaryWithDataProtectionClass:v32 error:&v55];
      v33 = v55;

      if (v31)
      {
        v34 = &unk_1F5A76F90;

        v48 = &unk_1F5A76F90;
        v46 = v33;
        goto LABEL_20;
      }

      v36 = [MCMError alloc];
      v37 = [v8 containerDataURL];
      v38 = [(MCMError *)v36 initWithNSError:v33 url:v37 defaultErrorType:106];

      v46 = v33;
      v14 = v38;
    }

LABEL_26:

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(buf, 8);
    v16 = 0;
LABEL_27:
    if (v44)
    {
      v39 = v14;
      v18 = 0;
      v17 = 0;
      *v44 = v14;
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
  v15 = [MCMContainerSchema schemaIsUpToDateForIdentifier:v49 containerClass:v9 currentSchemaVersion:v48 latestSchemaVersion:&v54, v44];
  v16 = v54;
  if (v15)
  {
    v17 = 0;
LABEL_9:
    v18 = 1;
    goto LABEL_30;
  }

  v53 = v14;
  v19 = [v7 metadataWithError:&v53];
  v20 = v53;

  if (!v19)
  {
    v14 = v20;
    goto LABEL_27;
  }

  v21 = +[MCMDataProtectionManager defaultManager];
  v22 = [v21 desiredDataProtectionClassForMetadata:v19 clientIdentity:v45];

  v23 = [v19 containerPath];
  v24 = [MCMContainerSchema containerSchemaWithMetadata:v19 finalContainerPath:v23 dataProtectionClass:v22 libraryRepair:v47];

  v52 = v20;
  LOBYTE(v21) = [v24 writeSchemaFromVersion:v48 toTargetVersion:v16 error:&v52];
  v14 = v52;

  if ((v21 & 1) == 0)
  {
    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v49;
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
    v27 = [(MCMContainerFactory *)self cache];
    v50 = v26;
    v28 = [v27 addContainerMetadata:v17 error:&v50];
    v14 = v50;

    if (v28)
    {
      v18 = 1;
      v7 = v28;
      goto LABEL_30;
    }

    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Failed to update cache with new metadata during schema update; error = %@", buf, 0xCu);
    }

    v7 = 0;
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