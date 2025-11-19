@interface MCMCommandUserManagedAssetsPath
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createIfNecessary;
- (BOOL)isRelative;
- (BOOL)preflightClientAllowed;
- (MCMCommandUserManagedAssetsPath)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMContainerIdentity)containerIdentity;
- (void)execute;
@end

@implementation MCMCommandUserManagedAssetsPath

- (BOOL)createIfNecessary
{
  result = self->_createIfNecessary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isRelative
{
  result = self->_relative;
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
  v89 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  v4 = [v3 userIdentity];

  v5 = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  v6 = [v5 identifier];

  v7 = [(MCMCommand *)self context];
  v8 = [v7 containerCache];
  v9 = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  v80 = 0;
  v10 = [v8 entryForContainerIdentity:v9 error:&v80];
  v11 = v80;

  v71 = v6;
  v72 = v4;
  v70 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  v79 = v11;
  v12 = [v10 metadataWithError:&v79];
  v13 = v79;

  if (!v12)
  {
    v11 = v13;
LABEL_14:
    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v82 = v6;
      v83 = 2112;
      v84 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Failed to create app data container for user managed assets path for %@: %@", buf, 0x16u);
    }

    v33 = 0;
    v30 = 0;
    v25 = 0;
    v74 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v14 = [v12 containerPath];

  if (!v14)
  {
    v11 = [[MCMError alloc] initWithErrorType:11];

    v44 = container_log_handle_for_category();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
LABEL_20:

      v33 = 0;
      v30 = 0;
      v25 = 0;
      v74 = 0;
LABEL_21:
      v26 = 0;
LABEL_22:
      v48 = 0;
      v41 = 0;
      goto LABEL_23;
    }

    *buf = 138412290;
    v82 = v12;
    v45 = "No URL in container metadata object: %@";
    v46 = v44;
    v47 = 12;
LABEL_48:
    _os_log_error_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
    goto LABEL_20;
  }

  v15 = [v12 containerPath];
  v16 = [v15 containerDataURL];
  v17 = [v16 URLByAppendingPathComponent:@"Library" isDirectory:1];

  if (!v17)
  {
    v11 = [[MCMError alloc] initWithErrorType:13];

    v44 = container_log_handle_for_category();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v45 = "Could not get library URL";
    v46 = v44;
    v47 = 2;
    goto LABEL_48;
  }

  v69 = v13;
  v18 = [v12 userManagedAssetsDirName];
  v74 = v17;
  if (v18)
  {
    v19 = v18;
    v20 = +[MCMFileManager defaultManager];
    v21 = [v12 userManagedAssetsDirName];
    v22 = [v17 URLByAppendingPathComponent:v21 isDirectory:1];
    v23 = [v20 itemDoesNotExistAtURL:v22];

    if (!v23)
    {
      v56 = [v12 userManagedAssetsDirName];
      v41 = 1;
      v25 = [v17 URLByAppendingPathComponent:v56 isDirectory:1];

      v33 = 0;
      v30 = 0;
      v42 = 0;
      v36 = v12;
      goto LABEL_33;
    }
  }

  if (![(MCMCommandUserManagedAssetsPath *)self createIfNecessary])
  {
    v11 = [[MCMError alloc] initWithErrorType:71];

    v55 = container_log_handle_for_category();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v82 = v4;
      v83 = 2112;
      v84 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "User managed path for %@:%@ Not Found", buf, 0x16u);
    }

    v33 = 0;
    v30 = 0;
    v25 = 0;
    goto LABEL_21;
  }

  v24 = +[MCMFileManager defaultManager];
  v78 = 0;
  v25 = [v24 createTemporaryDirectoryInDirectoryURL:v17 withNamePrefix:@"com.apple.UserManagedAssets." error:&v78];
  v26 = v78;

  if (!v25)
  {
    v11 = [[MCMError alloc] initWithErrorType:6];

    v59 = container_log_handle_for_category();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v82 = v74;
      v83 = 2112;
      v84 = v26;
      _os_log_error_impl(&dword_1DF2C3000, v59, OS_LOG_TYPE_ERROR, "Failed to create user managed assets dir at %@: %@", buf, 0x16u);
    }

    v33 = 0;
    v30 = 0;
    v25 = 0;
    goto LABEL_22;
  }

  v27 = [v12 containerClass];
  v28 = [v12 userIdentity];
  v29 = [v28 posixUser];
  v30 = [MCMContainerClassPath posixOwnerForContainerClass:v27 user:v29];

  v31 = [MCMFileHandle alloc];
  v32 = [v25 path];
  LOBYTE(v67) = 1;
  v33 = [(MCMFileHandle *)v31 initWithPath:v32 relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v67];

  v77 = v26;
  LOBYTE(v32) = [(MCMFileHandle *)v33 setPermissions:493 andOwner:v30 error:&v77];
  v34 = v77;

  if ((v32 & 1) == 0)
  {
    v11 = [[MCMError alloc] initWithNSError:v34 url:v25 defaultErrorType:6];

    v60 = container_log_handle_for_category();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = v34;
      _os_log_error_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_ERROR, "Failed to set permissions on user managed assets dir; error = %@", buf, 0xCu);
    }

    v48 = 0;
    v41 = 0;
    goto LABEL_43;
  }

  v68 = v34;
  v35 = [v25 lastPathComponent];
  v36 = [v12 metadataBySettingUserManagedAssetsDirName:v35];

  v76 = v69;
  LOBYTE(v35) = [v36 writeMetadataToDiskWithError:&v76];
  v11 = v76;

  if (v35)
  {
    v37 = [(MCMCommand *)self context];
    v38 = [v37 containerCache];
    v75 = v11;
    v39 = [v38 addContainerMetadata:v36 error:&v75];
    v40 = v75;

    if (v39)
    {
      v69 = v40;
      v41 = 0;
      v42 = v68;
LABEL_33:
      if ([(MCMCommandUserManagedAssetsPath *)self isRelative])
      {
        [v36 userManagedAssetsDirName];
        v58 = v57 = v42;
        v48 = [@"Library" stringByAppendingPathComponent:v58];

        v12 = v36;
        v26 = v57;
      }

      else
      {
        v48 = [v25 path];
        v12 = v36;
        v26 = v42;
      }

      v11 = v69;
      goto LABEL_23;
    }

    v11 = [[MCMError alloc] initWithErrorType:45];

    v62 = container_log_handle_for_category();
    v34 = v68;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v65 = [v36 containerPath];
      v66 = [v36 transient];
      *buf = 138412802;
      v82 = v36;
      v83 = 2112;
      v84 = v65;
      v85 = 1024;
      v86 = v66;
      _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, container path: %@, transient: %d", buf, 0x1Cu);

      v34 = v68;
    }

    v48 = 0;
    v41 = 0;
    v12 = v36;
LABEL_43:
    v26 = v34;
    goto LABEL_23;
  }

  v61 = container_log_handle_for_category();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v63 = [v36 containerPath];
    v64 = [v36 transient];
    *buf = 138413058;
    v82 = v36;
    v83 = 2112;
    v84 = v63;
    v85 = 1024;
    v86 = v64;
    v87 = 2112;
    v88 = v11;
    _os_log_error_impl(&dword_1DF2C3000, v61, OS_LOG_TYPE_ERROR, "Failed to write metadata: %@, container path: %@, transient: %d; error = %@", buf, 0x26u);
  }

  v48 = 0;
  v41 = 0;
  v12 = v36;
  v26 = v68;
LABEL_23:
  v49 = container_log_handle_for_category();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v82 = v48;
    v83 = 2112;
    v84 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_DEBUG, "User managed assets path result: [%@], error = %@", buf, 0x16u);
  }

  v50 = [MCMResultWithURLBase alloc];
  if (v48)
  {
    v51 = [(MCMResultWithURLBase *)v50 initWithPath:v48 existed:v41 sandboxToken:0];
  }

  else
  {
    v51 = [(MCMResultBase *)v50 initWithError:v11];
  }

  v52 = v51;
  v53 = [(MCMCommand *)self resultPromise];
  [v53 completeWithResult:v52];

  objc_autoreleasePoolPop(context);
  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v2 = self;
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  v4 = [v3 identifier];
  v5 = [(MCMCommand *)v2 context];
  v6 = [v5 clientIdentity];
  v7 = [v6 codeSignInfo];
  v8 = [v7 identifier];
  v9 = [v4 isEqualToString:v8];

  v10 = [(MCMCommand *)v2 context];
  v11 = [v10 clientIdentity];
  LOBYTE(v2) = [v11 isAllowedToAccessUserAssets];

  v12 = *MEMORY[0x1E69E9840];
  return (v2 | v9) & 1;
}

- (MCMCommandUserManagedAssetsPath)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandUserManagedAssetsPath;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = v10;

    v9->_relative = [v8 isRelative];
    v9->_createIfNecessary = [v8 createIfNecessary];
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
  return 28;
}

@end