@interface MCMCommandStageSharedContent
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandStageSharedContent)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (NSString)destinationRelativePath;
- (NSString)identifier;
- (NSString)sourceRelativePath;
- (void)execute;
@end

@implementation MCMCommandStageSharedContent

- (NSString)destinationRelativePath
{
  result = self->_destinationRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)sourceRelativePath
{
  result = self->_sourceRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v100 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v91 = 1;
  context2 = [(MCMCommand *)self context];
  globalConfiguration = [context2 globalConfiguration];
  staticConfig = [globalConfiguration staticConfig];
  v9 = [staticConfig configForContainerClass:13];

  identifier = [(MCMCommandStageSharedContent *)self identifier];
  context3 = [(MCMCommand *)self context];
  userIdentityCache2 = [context3 userIdentityCache];
  v86 = defaultUserIdentity;
  v13 = [MCMContainerIdentity containerIdentityWithUserIdentity:defaultUserIdentity identifier:identifier containerConfig:v9 platform:0 userIdentityCache:userIdentityCache2 error:&v91];

  if (!v13)
  {
    v17 = [MCMError alloc];
    v18 = [(MCMError *)v17 initWithErrorType:v91];
LABEL_12:
    v22 = 0;
    v23 = 0;
    v85 = 0;
LABEL_13:
    v24 = 0;
    v25 = 0;
    v84 = 0;
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v14 = containermanager_copy_global_configuration();
  systemContainerMode = [v14 systemContainerMode];

  if (!systemContainerMode)
  {
    v18 = [[MCMError alloc] initWithErrorType:72];
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "System containers are not supported", buf, 2u);
    }

    goto LABEL_11;
  }

  sourceRelativePath = [(MCMCommandStageSharedContent *)self sourceRelativePath];
  if ([sourceRelativePath containsDotDotPathComponents])
  {

    goto LABEL_9;
  }

  destinationRelativePath = [(MCMCommandStageSharedContent *)self destinationRelativePath];
  containsDotDotPathComponents = [destinationRelativePath containsDotDotPathComponents];

  if (containsDotDotPathComponents)
  {
LABEL_9:
    v18 = [[MCMError alloc] initWithErrorType:38];
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sourceRelativePath2 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
      destinationRelativePath2 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
      *buf = 138412546;
      v93 = sourceRelativePath2;
      v94 = 2112;
      v95 = destinationRelativePath2;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Paths can't contain dots. source: %@, dest: %@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  context4 = [(MCMCommand *)self context];
  clientIdentity = [context4 clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  systemGroupIdentifiers = [entitlements systemGroupIdentifiers];

  identifier2 = [v13 identifier];
  v85 = systemGroupIdentifiers;
  LOBYTE(clientIdentity) = [systemGroupIdentifiers containsObject:identifier2];

  if ((clientIdentity & 1) == 0)
  {
    v18 = +[MCMError notEntitled];
    v63 = container_log_handle_for_category();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      context5 = [(MCMCommand *)self context];
      clientIdentity2 = [context5 clientIdentity];
      identifier3 = [v13 identifier];
      *buf = 138412546;
      v93 = clientIdentity2;
      v94 = 2112;
      v95 = identifier3;
      _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "%@ not entitled for system group container %@", buf, 0x16u);
    }

    v22 = 0;
    v23 = 0;
    goto LABEL_13;
  }

  context6 = [(MCMCommand *)self context];
  containerCache = [context6 containerCache];
  v90 = 0;
  v41 = [containerCache entryForContainerIdentity:v13 error:&v90];
  v42 = v90;

  v84 = v41;
  metadataMinimal = [v41 metadataMinimal];
  if (!metadataMinimal)
  {
    v18 = [[MCMError alloc] initWithErrorType:21];

    v64 = container_log_handle_for_category();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      identifier4 = [v13 identifier];
      *buf = 138412546;
      v93 = identifier4;
      v94 = 2112;
      v95 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "System group container with identifier %@ not found: %@", buf, 0x16u);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v25 = metadataMinimal;
  v81 = v42;
  containerPath = [metadataMinimal containerPath];
  containerDataURL = [containerPath containerDataURL];
  sourceRelativePath3 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
  v23 = [containerDataURL URLByAppendingPathComponent:sourceRelativePath3 isDirectory:0];

  containerPath2 = [v25 containerPath];
  containerDataURL2 = [containerPath2 containerDataURL];
  destinationRelativePath3 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
  v22 = [containerDataURL2 URLByAppendingPathComponent:destinationRelativePath3 isDirectory:0];

  v50 = +[MCMFileManager defaultManager];
  containerPath3 = [v25 containerPath];
  containerDataURL3 = [containerPath3 containerDataURL];
  v53 = [v50 realPathForURL:v23 ifChildOfURL:containerDataURL3];

  if (!v53)
  {
    v18 = [[MCMError alloc] initWithErrorType:10];

    v67 = container_log_handle_for_category();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
LABEL_37:

      v24 = 0;
      goto LABEL_14;
    }

    identifier5 = [v13 identifier];
    containerPath4 = [v25 containerPath];
    containerDataURL4 = [containerPath4 containerDataURL];
    *buf = 138412802;
    v93 = v23;
    v94 = 2112;
    v95 = identifier5;
    v96 = 2112;
    v97 = containerDataURL4;
    v70 = "Invalid source URL %@ for %@ at %@";
LABEL_43:
    _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, v70, buf, 0x20u);

    goto LABEL_37;
  }

  v54 = +[MCMFileManager defaultManager];
  containerPath5 = [v25 containerPath];
  containerDataURL5 = [containerPath5 containerDataURL];
  v57 = [v54 realPathForURL:v22 ifChildOfURL:containerDataURL5];

  if (!v57)
  {
    v18 = [[MCMError alloc] initWithErrorType:10];

    v67 = container_log_handle_for_category();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    identifier5 = [v13 identifier];
    containerPath4 = [v25 containerPath];
    containerDataURL4 = [containerPath4 containerDataURL];
    *buf = 138412802;
    v93 = v22;
    v94 = 2112;
    v95 = identifier5;
    v96 = 2112;
    v97 = containerDataURL4;
    v70 = "Invalid dest URL %@ for %@ at %@";
    goto LABEL_43;
  }

  v58 = +[MCMFileManager defaultManager];
  v89 = 0;
  v59 = [v58 standardizeACLsAtURL:v23 isSystemContainer:0 error:&v89];
  v26 = v89;

  if ((v59 & 1) == 0)
  {
    v18 = [[MCMError alloc] initWithErrorType:63];

    v71 = container_log_handle_for_category();
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    identifier6 = [v13 identifier];
    path = [v23 path];
    *buf = 138412802;
    v93 = identifier6;
    v94 = 2112;
    v95 = path;
    v73 = path;
    v96 = 2112;
    v97 = v26;
    _os_log_error_impl(&dword_1DF2C3000, v71, OS_LOG_TYPE_ERROR, "Failed to standardize ACLs for %@ at %@: %@", buf, 0x20u);

LABEL_45:
    goto LABEL_41;
  }

  v60 = +[MCMFileManager defaultManager];
  v88 = v26;
  v61 = [v60 moveItemAtURL:v23 toURL:v22 error:&v88];
  v62 = v88;

  if (v61)
  {
    v22 = v22;
    v24 = v22;
    v26 = v62;
    v18 = v81;
    goto LABEL_15;
  }

  v26 = v62;
  v18 = [[MCMError alloc] initWithErrorType:64];

  v71 = container_log_handle_for_category();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    identifier6 = [v13 identifier];
    path2 = [v23 path];
    path3 = [v22 path];
    *buf = 138413058;
    v93 = identifier6;
    v94 = 2112;
    v95 = path2;
    v96 = 2112;
    v97 = path3;
    v79 = path3;
    v98 = 2112;
    v99 = v26;
    _os_log_error_impl(&dword_1DF2C3000, v71, OS_LOG_TYPE_ERROR, "Failed move for %@ from %@ to: %@: %@", buf, 0x2Au);

    goto LABEL_45;
  }

LABEL_41:

  v24 = 0;
LABEL_15:
  v27 = container_log_handle_for_category();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v93 = v24;
    v94 = 2112;
    v95 = v18;
    _os_log_debug_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEBUG, "Stage shared content result: %@, error = %@", buf, 0x16u);
  }

  v28 = [MCMResultWithURLBase alloc];
  if (v24)
  {
    v29 = [(MCMResultWithURLBase *)v28 initWithURL:v24 existed:1 sandboxToken:0];
  }

  else
  {
    v29 = [(MCMResultBase *)v28 initWithError:v18];
  }

  v30 = v29;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v30];

  objc_autoreleasePoolPop(context);
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToStageSharedContent = [clientIdentity isAllowedToStageSharedContent];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToStageSharedContent;
}

- (MCMCommandStageSharedContent)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = MCMCommandStageSharedContent;
  v9 = [(MCMCommand *)&v18 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    identifier = [messageCopy identifier];
    identifier = v9->_identifier;
    v9->_identifier = identifier;

    sourceRelativePath = [messageCopy sourceRelativePath];
    sourceRelativePath = v9->_sourceRelativePath;
    v9->_sourceRelativePath = sourceRelativePath;

    destinationRelativePath = [messageCopy destinationRelativePath];
    destinationRelativePath = v9->_destinationRelativePath;
    v9->_destinationRelativePath = destinationRelativePath;
  }

  v16 = *MEMORY[0x1E69E9840];
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
  return 26;
}

@end