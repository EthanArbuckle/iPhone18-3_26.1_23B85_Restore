@interface MCMCommandDeleteContainerContent
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteContainerContent)initWithContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5;
- (MCMCommandDeleteContainerContent)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMContainerIdentity)containerIdentity;
- (void)execute;
@end

@implementation MCMCommandDeleteContainerContent

- (MCMContainerIdentity)containerIdentity
{
  result = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v101 = 0;
  v4 = [(MCMCommandDeleteContainerContent *)self containerIdentity];
  v5 = [v4 containerClass];
  v6 = [v4 identifier];
  v7 = v5 > 0xB || ((1 << v5) & 0xED4) == 0;
  v87 = v6;
  if (v7)
  {
    v43 = v6;
    v44 = container_log_handle_for_category();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v103 = v5;
      v104 = 2112;
      v105 = v43;
      _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Can't wipe container non-data container of type: %llu, identifier: %@", buf, 0x16u);
    }

    v11 = [[MCMError alloc] initWithErrorType:11 category:3];
    goto LABEL_26;
  }

  v8 = [(MCMCommand *)self context];
  v9 = [v8 containerCache];
  v100 = 0;
  v10 = [v9 entryForContainerIdentity:v4 error:&v100];
  v11 = v100;

  if (!v10)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v103 = v4;
      v104 = 2112;
      v105 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Failed to lookup existing container during wipe; identity: %@, error: %@", buf, 0x16u);
    }

LABEL_26:
    v20 = 0;
    v85 = 0;
    v86 = 0;
    v88 = 0;
    v89 = 0;
    v21 = 0;
    v22 = 0;
    v84 = 0;
    v90 = 0;
    v91 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_27;
  }

  v99 = v11;
  v86 = v10;
  v12 = [v10 metadataWithError:&v99];
  v13 = v99;

  if (v12)
  {
    v14 = [v12 info];
    v15 = [v14 objectForKeyedSubscript:@"com.apple.MobileInstallation.ContentProtectionClass"];

    v85 = v15;
    v16 = v3;
    if (v15)
    {
      v17 = [v15 intValue];
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    v25 = [v12 containerPath];
    v82 = self;
    v26 = [(MCMCommand *)self context];
    v27 = [v26 containerFactory];
    v28 = v12;
    v29 = v27;
    v88 = v28;
    v30 = [v28 containerIdentity];
    v97 = v13;
    v98 = v25;
    v31 = [v29 createStagedContainerForContainerIdentity:v30 finalContainerPath:&v98 dataProtectionClass:v17 error:&v97];
    v21 = v98;

    v11 = v97;
    if (v31)
    {
      v89 = v31;
      v32 = [v31 containerPath];
      v81 = v21;
      v33 = [(MCMError *)v21 containerRootURL];
      v91 = v32;
      v90 = [v32 containerRootURL];
      v34 = [MCMContainerCacheEntry birthtimeForURL:v33];
      v3 = v16;
      if (v34 | v35)
      {
        v39 = v34;
        v41 = v35;
        self = v82;
      }

      else
      {
        v36 = +[MCMFileManager defaultManager];
        v96 = 0;
        v37 = [v36 fsNodeOfURL:v33 followSymlinks:0 error:&v96];
        v38 = v96;

        self = v82;
        if (v37)
        {
          v39 = [v37 birthtime];
          v41 = v40;
        }

        else
        {
          v51 = container_log_handle_for_category();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v103 = v33;
            v104 = 2112;
            v105 = v38;
            _os_log_error_impl(&dword_1DF2C3000, v51, OS_LOG_TYPE_ERROR, "Could not read fs node for old container at [%@] (non-fatal); error = %@", buf, 0x16u);
          }

          v41 = 0;
          v39 = 0;
        }
      }

      if (v39 | v41)
      {
        [MCMContainerCacheEntry setBirthtime:v39 forURL:v41, v90];
      }

      v52 = +[MCMFileManager defaultManager];
      v95 = 0;
      v53 = [v52 replaceItemAtDestinationURL:v33 withSourceURL:v90 swapped:&v101 error:&v95];
      v54 = v95;

      v84 = v54;
      if (v53)
      {
        v23 = [v89 metadataByChangingContainerPath:v21];
        v94 = v11;
        v55 = [v23 verifyWithError:&v94];
        v56 = v94;

        if (v55)
        {
          v57 = v3;
          v58 = [(MCMCommand *)self context];
          [v58 containerCache];
          v60 = v59 = v56;
          v93 = v59;
          v24 = [v60 addContainerMetadata:v23 error:&v93];
          v11 = v93;

          if (v24)
          {
            v22 = v33;
            v20 = 1;
            v3 = v57;
            v21 = v81;
            goto LABEL_53;
          }

          v56 = [[MCMError alloc] initWithErrorType:45];

          v63 = container_log_handle_for_category();
          v22 = v33;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v74 = [v23 containerPath];
            v75 = [v74 containerRootURL];
            [v75 path];
            v77 = v76 = v56;
            *buf = 138412802;
            v103 = v23;
            v104 = 2112;
            v105 = v77;
            v106 = 2112;
            v107 = v76;
            _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@; error = %@", buf, 0x20u);

            v56 = v76;
          }

          v3 = v57;
          v21 = v81;
        }

        else
        {
          v63 = container_log_handle_for_category();
          v22 = v33;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = [v23 shortDescription];
            *buf = 138412546;
            v103 = v64;
            v104 = 2112;
            v105 = v56;
            _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Failed to verify new metadata; metadata = %@, error = %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v61 = container_log_handle_for_category();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v103 = v54;
          _os_log_error_impl(&dword_1DF2C3000, v61, OS_LOG_TYPE_ERROR, "Failed to swap containers during wipe; error: %@", buf, 0xCu);
        }

        v22 = v33;

        v62 = [MCMError alloc];
        v63 = [(MCMError *)v21 containerRootURL];
        v56 = [(MCMError *)v62 initWithNSError:v54 url:v63 defaultErrorType:15];

        v23 = 0;
      }

      v24 = 0;
      v20 = 0;
      v11 = v56;
LABEL_53:
      if (v91)
      {
        if (v101 == 1)
        {
          v80 = v3;
          v79 = [(MCMCommand *)self context];
          v65 = [v79 containerFactory];
          v66 = [v91 containerRootURL];
          v67 = [v91 userIdentity];
          v92 = 0;
          v78 = [v65 deleteURL:v66 forUserIdentity:v67 error:&v92];
          v83 = v92;

          if ((v78 & 1) == 0)
          {
            v68 = container_log_handle_for_category();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v72 = [v91 containerRootURL];
              v73 = [v72 path];
              *buf = 138412546;
              v103 = v73;
              v104 = 2112;
              v105 = v83;
              _os_log_error_impl(&dword_1DF2C3000, v68, OS_LOG_TYPE_ERROR, "Failed to remove staging container during wipe: %@; error = %@", buf, 0x16u);
            }
          }

          v69 = [MCMCommandOperationReclaimDiskSpace alloc];
          v70 = [(MCMCommand *)self context];
          v71 = [(MCMCommandOperationReclaimDiskSpace *)v69 initWithAsynchronously:1 context:v70 resultPromise:0];

          [(MCMCommandOperationReclaimDiskSpace *)v71 execute];
          v3 = v80;
          v21 = v81;
        }
      }

      else
      {
        v91 = 0;
      }

      goto LABEL_27;
    }

    v42 = container_log_handle_for_category();
    v3 = v16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v103 = v88;
      v104 = 2112;
      v105 = v21;
      v106 = 2112;
      v107 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Failed to create staging container during wipe; metadata: %@, existingContainerPath: %@, error: %@", buf, 0x20u);
    }

    v20 = 0;
    v22 = 0;
    v84 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v23 = 0;
    v24 = 0;
    self = v82;
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v103 = v4;
      v104 = 2112;
      v105 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to read existing container metadata during wipe; identity: %@, error: %@", buf, 0x16u);
    }

    v20 = 0;
    v88 = 0;
    v89 = 0;
    v21 = 0;
    v22 = 0;
    v84 = 0;
    v85 = 0;
    v90 = 0;
    v91 = 0;
    v23 = 0;
    v24 = 0;
    v11 = v13;
  }

LABEL_27:
  v45 = container_log_handle_for_category();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v103 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_DEBUG, "Delete content result; error = %@", buf, 0xCu);
  }

  if (v20)
  {
    v46 = v21;
    v47 = objc_opt_new();
  }

  else
  {
    v46 = v21;
    v47 = [[MCMResultBase alloc] initWithError:v11];
  }

  v48 = v47;
  v49 = [(MCMCommand *)self resultPromise];
  [v49 completeWithResult:v48];

  objc_autoreleasePoolPop(v3);
  v50 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];
  v5 = [(MCMCommandDeleteContainerContent *)self containerIdentity];
  v6 = [v4 isAllowedToPerformOperationType:3 containerIdentity:v5 part:0 partDomain:0 access:0];

  result = v6 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMCommandDeleteContainerContent)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandDeleteContainerContent;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandDeleteContainerContent)initWithContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandDeleteContainerContent;
  v10 = [(MCMCommand *)&v14 initWithContext:a4 resultPromise:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containerIdentity, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
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
  return 12;
}

@end