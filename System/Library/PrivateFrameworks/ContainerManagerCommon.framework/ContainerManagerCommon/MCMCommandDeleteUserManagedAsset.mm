@interface MCMCommandDeleteUserManagedAsset
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteUserManagedAsset)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMContainerIdentity)containerIdentity;
- (NSString)sourceRelativePath;
- (void)execute;
@end

@implementation MCMCommandDeleteUserManagedAsset

- (NSString)sourceRelativePath
{
  result = self->_sourceRelativePath;
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
  v71 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  containerIdentity = [(MCMCommandDeleteUserManagedAsset *)self containerIdentity];
  identifier = [containerIdentity identifier];

  containerIdentity2 = [(MCMCommandDeleteUserManagedAsset *)self containerIdentity];
  userIdentity = [containerIdentity2 userIdentity];

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  containerIdentity3 = [(MCMCommandDeleteUserManagedAsset *)self containerIdentity];
  v66 = 0;
  v9 = [containerCache entryForContainerIdentity:containerIdentity3 error:&v66];
  v10 = v66;

  v65 = v10;
  v57 = v9;
  v11 = [v9 metadataWithError:&v65];
  v12 = v65;

  v58 = identifier;
  if (!v11)
  {
    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v68 = identifier;
      v69 = 2112;
      v70 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to create app data container for user managed assets path for %@: %@", buf, 0x16u);
    }

    v29 = 0;
    v25 = 0;
    v55 = 0;
    v56 = 0;
    v60 = 0;
    v26 = 0;
    goto LABEL_31;
  }

  containerPath = [v11 containerPath];
  if (!containerPath || (v14 = containerPath, [v11 userManagedAssetsDirName], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    v34 = [[MCMError alloc] initWithErrorType:11];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "No userManagedAssetsDirName or URL in container metadata object: %@", buf, 0xCu);
    }

    v29 = 0;
    v25 = 0;
    v55 = 0;
    v56 = 0;
    v60 = 0;
    v26 = 0;
    goto LABEL_30;
  }

  containerPath2 = [v11 containerPath];
  containerDataURL = [containerPath2 containerDataURL];
  v18 = [containerDataURL URLByAppendingPathComponent:@"Library" isDirectory:1];

  userManagedAssetsDirName = [v11 userManagedAssetsDirName];
  v56 = v18;
  v20 = [v18 URLByAppendingPathComponent:userManagedAssetsDirName isDirectory:1];

  sourceRelativePath = [(MCMCommandDeleteUserManagedAsset *)self sourceRelativePath];
  v22 = [v20 URLByAppendingPathComponent:sourceRelativePath isDirectory:0];
  absoluteURL = [v22 absoluteURL];

  v24 = +[MCMFileManager defaultManager];
  v64 = 0;
  v60 = absoluteURL;
  v25 = [v24 realPathForURL:absoluteURL isDirectory:0 error:&v64];
  v26 = v64;

  v55 = v20;
  if (!v25)
  {
    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path = [v60 path];
      *buf = 138412546;
      v68 = path;
      v69 = 2112;
      v70 = v26;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Unable to get realpath for resource %@; error = %@", buf, 0x16u);
    }

    v29 = 0;
    v25 = 0;
    goto LABEL_30;
  }

  v27 = +[MCMFileManager defaultManager];
  absoluteURL2 = [v20 absoluteURL];
  v63 = v26;
  v29 = [v27 realPathForURL:absoluteURL2 isDirectory:1 error:&v63];
  v30 = v63;

  if (!v29)
  {
    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path2 = [v60 path];
      *buf = 138412546;
      v68 = path2;
      v69 = 2112;
      v70 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Unable to get realpath for resource %@; error = %@", buf, 0x16u);
    }

    v29 = 0;
    goto LABEL_29;
  }

  path3 = [v29 path];
  path4 = [v25 path];
  v33 = [path3 isEqualToString:path4];

  if (v33)
  {
    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path5 = [v29 path];
      *buf = 138412290;
      v68 = path5;
      v37 = "Illegal attempt to delete user managed assets directory at %@";
LABEL_26:
      v44 = v35;
      v45 = 12;
LABEL_27:
      _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, v37, buf, v45);
    }
  }

  else
  {
    path6 = [v25 path];
    path7 = [v29 path];
    v40 = [path6 hasPrefix:path7];

    if (v40)
    {
      context2 = [(MCMCommand *)self context];
      containerFactory = [context2 containerFactory];
      v62 = v12;
      v54 = [containerFactory deleteURL:v25 forUserIdentity:userIdentity error:&v62];
      v34 = v62;

      if (v54)
      {
        v43 = 1;
        goto LABEL_32;
      }

      v35 = container_log_handle_for_category();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      path5 = [v25 path];
      *buf = 138412546;
      v68 = path5;
      v69 = 2112;
      v70 = v34;
      v37 = "Failed to remove asset at %@; error = %@";
      v44 = v35;
      v45 = 22;
      goto LABEL_27;
    }

    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path5 = [v25 path];
      *buf = 138412290;
      v68 = path5;
      v37 = "Illegal attempt to delete asset not residing in user managed assets directory %@";
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = v30;
LABEL_30:
  v12 = v34;
LABEL_31:

  v43 = 0;
  v30 = v26;
  v34 = v12;
LABEL_32:
  v46 = container_log_handle_for_category();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    sourceRelativePath2 = [(MCMCommandDeleteUserManagedAsset *)self sourceRelativePath];
    *buf = 138412546;
    v68 = sourceRelativePath2;
    v69 = 2112;
    v70 = v34;
    _os_log_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_DEFAULT, "Delete user managed asset [%@], error = %@", buf, 0x16u);
  }

  if (v43)
  {
    v48 = objc_opt_new();
  }

  else
  {
    v48 = [[MCMResultBase alloc] initWithError:v34];
  }

  v49 = v48;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v49];

  objc_autoreleasePoolPop(context);
  v51 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToAccessUserAssets = [clientIdentity isAllowedToAccessUserAssets];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToAccessUserAssets;
}

- (MCMCommandDeleteUserManagedAsset)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = MCMCommandDeleteUserManagedAsset;
  v9 = [(MCMCommand *)&v16 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;

    sourceRelativePath = [messageCopy sourceRelativePath];
    sourceRelativePath = v9->_sourceRelativePath;
    v9->_sourceRelativePath = sourceRelativePath;
  }

  v14 = *MEMORY[0x1E69E9840];
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
  return 29;
}

@end