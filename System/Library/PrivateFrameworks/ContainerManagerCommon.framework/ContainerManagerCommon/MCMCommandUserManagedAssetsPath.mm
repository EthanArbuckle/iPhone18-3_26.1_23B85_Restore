@interface MCMCommandUserManagedAssetsPath
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createIfNecessary;
- (BOOL)isRelative;
- (BOOL)preflightClientAllowed;
- (MCMCommandUserManagedAssetsPath)initWithMessage:(id)message context:(id)context reply:(id)reply;
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
  containerIdentity = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  userIdentity = [containerIdentity userIdentity];

  containerIdentity2 = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  identifier = [containerIdentity2 identifier];

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  containerIdentity3 = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  v80 = 0;
  v10 = [containerCache entryForContainerIdentity:containerIdentity3 error:&v80];
  v11 = v80;

  v71 = identifier;
  v72 = userIdentity;
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
      v82 = identifier;
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

  containerPath = [v12 containerPath];

  if (!containerPath)
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
      path2 = 0;
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

  containerPath2 = [v12 containerPath];
  containerDataURL = [containerPath2 containerDataURL];
  v17 = [containerDataURL URLByAppendingPathComponent:@"Library" isDirectory:1];

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
  userManagedAssetsDirName = [v12 userManagedAssetsDirName];
  v74 = v17;
  if (userManagedAssetsDirName)
  {
    v19 = userManagedAssetsDirName;
    v20 = +[MCMFileManager defaultManager];
    userManagedAssetsDirName2 = [v12 userManagedAssetsDirName];
    v22 = [v17 URLByAppendingPathComponent:userManagedAssetsDirName2 isDirectory:1];
    v23 = [v20 itemDoesNotExistAtURL:v22];

    if (!v23)
    {
      userManagedAssetsDirName3 = [v12 userManagedAssetsDirName];
      v41 = 1;
      v25 = [v17 URLByAppendingPathComponent:userManagedAssetsDirName3 isDirectory:1];

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
      v82 = userIdentity;
      v83 = 2112;
      v84 = identifier;
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

  containerClass = [v12 containerClass];
  userIdentity2 = [v12 userIdentity];
  posixUser = [userIdentity2 posixUser];
  v30 = [MCMContainerClassPath posixOwnerForContainerClass:containerClass user:posixUser];

  v31 = [MCMFileHandle alloc];
  path = [v25 path];
  LOBYTE(v67) = 1;
  v33 = [(MCMFileHandle *)v31 initWithPath:path relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v67];

  v77 = v26;
  LOBYTE(path) = [(MCMFileHandle *)v33 setPermissions:493 andOwner:v30 error:&v77];
  v34 = v77;

  if ((path & 1) == 0)
  {
    v11 = [[MCMError alloc] initWithNSError:v34 url:v25 defaultErrorType:6];

    v60 = container_log_handle_for_category();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = v34;
      _os_log_error_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_ERROR, "Failed to set permissions on user managed assets dir; error = %@", buf, 0xCu);
    }

    path2 = 0;
    v41 = 0;
    goto LABEL_43;
  }

  v68 = v34;
  lastPathComponent = [v25 lastPathComponent];
  v36 = [v12 metadataBySettingUserManagedAssetsDirName:lastPathComponent];

  v76 = v69;
  LOBYTE(lastPathComponent) = [v36 writeMetadataToDiskWithError:&v76];
  v11 = v76;

  if (lastPathComponent)
  {
    context2 = [(MCMCommand *)self context];
    containerCache2 = [context2 containerCache];
    v75 = v11;
    v39 = [containerCache2 addContainerMetadata:v36 error:&v75];
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
        path2 = [@"Library" stringByAppendingPathComponent:v58];

        v12 = v36;
        v26 = v57;
      }

      else
      {
        path2 = [v25 path];
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
      containerPath3 = [v36 containerPath];
      transient = [v36 transient];
      *buf = 138412802;
      v82 = v36;
      v83 = 2112;
      v84 = containerPath3;
      v85 = 1024;
      v86 = transient;
      _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, container path: %@, transient: %d", buf, 0x1Cu);

      v34 = v68;
    }

    path2 = 0;
    v41 = 0;
    v12 = v36;
LABEL_43:
    v26 = v34;
    goto LABEL_23;
  }

  v61 = container_log_handle_for_category();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    containerPath4 = [v36 containerPath];
    transient2 = [v36 transient];
    *buf = 138413058;
    v82 = v36;
    v83 = 2112;
    v84 = containerPath4;
    v85 = 1024;
    v86 = transient2;
    v87 = 2112;
    v88 = v11;
    _os_log_error_impl(&dword_1DF2C3000, v61, OS_LOG_TYPE_ERROR, "Failed to write metadata: %@, container path: %@, transient: %d; error = %@", buf, 0x26u);
  }

  path2 = 0;
  v41 = 0;
  v12 = v36;
  v26 = v68;
LABEL_23:
  v49 = container_log_handle_for_category();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v82 = path2;
    v83 = 2112;
    v84 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_DEBUG, "User managed assets path result: [%@], error = %@", buf, 0x16u);
  }

  v50 = [MCMResultWithURLBase alloc];
  if (path2)
  {
    v51 = [(MCMResultWithURLBase *)v50 initWithPath:path2 existed:v41 sandboxToken:0];
  }

  else
  {
    v51 = [(MCMResultBase *)v50 initWithError:v11];
  }

  v52 = v51;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v52];

  objc_autoreleasePoolPop(context);
  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  containerIdentity = [(MCMCommandUserManagedAssetsPath *)self containerIdentity];
  identifier = [containerIdentity identifier];
  context = [(MCMCommand *)selfCopy context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier2 = [codeSignInfo identifier];
  v9 = [identifier isEqualToString:identifier2];

  context2 = [(MCMCommand *)selfCopy context];
  clientIdentity2 = [context2 clientIdentity];
  LOBYTE(selfCopy) = [clientIdentity2 isAllowedToAccessUserAssets];

  v12 = *MEMORY[0x1E69E9840];
  return (selfCopy | v9) & 1;
}

- (MCMCommandUserManagedAssetsPath)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandUserManagedAssetsPath;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;

    v9->_relative = [messageCopy isRelative];
    v9->_createIfNecessary = [messageCopy createIfNecessary];
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