@interface MCMCommandDeleteContainerContent
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteContainerContent)initWithContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandDeleteContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply;
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
  containerIdentity = [(MCMCommandDeleteContainerContent *)self containerIdentity];
  containerClass = [containerIdentity containerClass];
  identifier = [containerIdentity identifier];
  v7 = containerClass > 0xB || ((1 << containerClass) & 0xED4) == 0;
  v87 = identifier;
  if (v7)
  {
    v43 = identifier;
    v44 = container_log_handle_for_category();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v103 = containerClass;
      v104 = 2112;
      v105 = v43;
      _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Can't wipe container non-data container of type: %llu, identifier: %@", buf, 0x16u);
    }

    v11 = [[MCMError alloc] initWithErrorType:11 category:3];
    goto LABEL_26;
  }

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v100 = 0;
  v10 = [containerCache entryForContainerIdentity:containerIdentity error:&v100];
  v11 = v100;

  if (!v10)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v103 = containerIdentity;
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
    containerRootURL2 = 0;
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
    info = [v12 info];
    v15 = [info objectForKeyedSubscript:@"com.apple.MobileInstallation.ContentProtectionClass"];

    v85 = v15;
    v16 = v3;
    if (v15)
    {
      intValue = [v15 intValue];
    }

    else
    {
      intValue = 0xFFFFFFFFLL;
    }

    containerPath = [v12 containerPath];
    selfCopy = self;
    context2 = [(MCMCommand *)self context];
    containerFactory = [context2 containerFactory];
    v28 = v12;
    v29 = containerFactory;
    v88 = v28;
    containerIdentity2 = [v28 containerIdentity];
    v97 = v13;
    v98 = containerPath;
    v31 = [v29 createStagedContainerForContainerIdentity:containerIdentity2 finalContainerPath:&v98 dataProtectionClass:intValue error:&v97];
    v21 = v98;

    v11 = v97;
    if (v31)
    {
      v89 = v31;
      containerPath2 = [v31 containerPath];
      v81 = v21;
      containerRootURL = [(MCMError *)v21 containerRootURL];
      v91 = containerPath2;
      containerRootURL2 = [containerPath2 containerRootURL];
      v34 = [MCMContainerCacheEntry birthtimeForURL:containerRootURL];
      v3 = v16;
      if (v34 | v35)
      {
        birthtime = v34;
        v41 = v35;
        self = selfCopy;
      }

      else
      {
        v36 = +[MCMFileManager defaultManager];
        v96 = 0;
        v37 = [v36 fsNodeOfURL:containerRootURL followSymlinks:0 error:&v96];
        v38 = v96;

        self = selfCopy;
        if (v37)
        {
          birthtime = [v37 birthtime];
          v41 = v40;
        }

        else
        {
          v51 = container_log_handle_for_category();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v103 = containerRootURL;
            v104 = 2112;
            v105 = v38;
            _os_log_error_impl(&dword_1DF2C3000, v51, OS_LOG_TYPE_ERROR, "Could not read fs node for old container at [%@] (non-fatal); error = %@", buf, 0x16u);
          }

          v41 = 0;
          birthtime = 0;
        }
      }

      if (birthtime | v41)
      {
        [MCMContainerCacheEntry setBirthtime:birthtime forURL:v41, containerRootURL2];
      }

      v52 = +[MCMFileManager defaultManager];
      v95 = 0;
      v53 = [v52 replaceItemAtDestinationURL:containerRootURL withSourceURL:containerRootURL2 swapped:&v101 error:&v95];
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
          context3 = [(MCMCommand *)self context];
          [context3 containerCache];
          v60 = v59 = v56;
          v93 = v59;
          v24 = [v60 addContainerMetadata:v23 error:&v93];
          v11 = v93;

          if (v24)
          {
            v22 = containerRootURL;
            v20 = 1;
            v3 = v57;
            v21 = v81;
            goto LABEL_53;
          }

          v56 = [[MCMError alloc] initWithErrorType:45];

          containerRootURL4 = container_log_handle_for_category();
          v22 = containerRootURL;
          if (os_log_type_enabled(containerRootURL4, OS_LOG_TYPE_ERROR))
          {
            containerPath3 = [v23 containerPath];
            containerRootURL3 = [containerPath3 containerRootURL];
            [containerRootURL3 path];
            v77 = v76 = v56;
            *buf = 138412802;
            v103 = v23;
            v104 = 2112;
            v105 = v77;
            v106 = 2112;
            v107 = v76;
            _os_log_error_impl(&dword_1DF2C3000, containerRootURL4, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@; error = %@", buf, 0x20u);

            v56 = v76;
          }

          v3 = v57;
          v21 = v81;
        }

        else
        {
          containerRootURL4 = container_log_handle_for_category();
          v22 = containerRootURL;
          if (os_log_type_enabled(containerRootURL4, OS_LOG_TYPE_ERROR))
          {
            shortDescription = [v23 shortDescription];
            *buf = 138412546;
            v103 = shortDescription;
            v104 = 2112;
            v105 = v56;
            _os_log_error_impl(&dword_1DF2C3000, containerRootURL4, OS_LOG_TYPE_ERROR, "Failed to verify new metadata; metadata = %@, error = %@", buf, 0x16u);
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

        v22 = containerRootURL;

        v62 = [MCMError alloc];
        containerRootURL4 = [(MCMError *)v21 containerRootURL];
        v56 = [(MCMError *)v62 initWithNSError:v54 url:containerRootURL4 defaultErrorType:15];

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
          context4 = [(MCMCommand *)self context];
          containerFactory2 = [context4 containerFactory];
          containerRootURL5 = [v91 containerRootURL];
          userIdentity = [v91 userIdentity];
          v92 = 0;
          v78 = [containerFactory2 deleteURL:containerRootURL5 forUserIdentity:userIdentity error:&v92];
          v83 = v92;

          if ((v78 & 1) == 0)
          {
            v68 = container_log_handle_for_category();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              containerRootURL6 = [v91 containerRootURL];
              path = [containerRootURL6 path];
              *buf = 138412546;
              v103 = path;
              v104 = 2112;
              v105 = v83;
              _os_log_error_impl(&dword_1DF2C3000, v68, OS_LOG_TYPE_ERROR, "Failed to remove staging container during wipe: %@; error = %@", buf, 0x16u);
            }
          }

          v69 = [MCMCommandOperationReclaimDiskSpace alloc];
          context5 = [(MCMCommand *)self context];
          v71 = [(MCMCommandOperationReclaimDiskSpace *)v69 initWithAsynchronously:1 context:context5 resultPromise:0];

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
    containerRootURL2 = 0;
    v91 = 0;
    v23 = 0;
    v24 = 0;
    self = selfCopy;
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v103 = containerIdentity;
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
    containerRootURL2 = 0;
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
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v48];

  objc_autoreleasePoolPop(v3);
  v50 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  containerIdentity = [(MCMCommandDeleteContainerContent *)self containerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:3 containerIdentity:containerIdentity part:0 partDomain:0 access:0];

  result = v6 != 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMCommandDeleteContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandDeleteContainerContent;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandDeleteContainerContent)initWithContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = MCMCommandDeleteContainerContent;
  v10 = [(MCMCommand *)&v14 initWithContext:context resultPromise:promise];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containerIdentity, identity);
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