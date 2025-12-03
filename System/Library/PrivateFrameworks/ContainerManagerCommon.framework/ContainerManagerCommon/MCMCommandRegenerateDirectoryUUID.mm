@interface MCMCommandRegenerateDirectoryUUID
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandRegenerateDirectoryUUID)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandRegenerateDirectoryUUID)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (id)regenerateDirectoryUUIDNoCacheUpdateWithMetadata:(id)metadata error:(id *)error;
- (void)execute;
@end

@implementation MCMCommandRegenerateDirectoryUUID

- (BOOL)includedCreator
{
  result = self->_includedCreator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedUserManagedAssetsPath
{
  result = self->_includedUserManagedAssetsPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedInfo
{
  result = self->_includedInfo;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includedPath
{
  result = self->_includedPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)concreteContainerIdentity
{
  result = self->_concreteContainerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)regenerateDirectoryUUIDNoCacheUpdateWithMetadata:(id)metadata error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  [metadataCopy platform];
  [metadataCopy containerClass];
  [metadataCopy transient];
  if ((container_class_supports_randomized_path() & 1) == 0)
  {
    v25 = [[MCMError alloc] initWithErrorType:72];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v47 = [metadataCopy platform];
      *&v47[4] = 2112;
      *&v47[6] = metadataCopy;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "UUID container paths are unsupported on (%u) for: %@", buf, 0x12u);
    }

    goto LABEL_13;
  }

  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  containerPath = [metadataCopy containerPath];
  containerPathIdentifier = [containerPath containerPathIdentifier];
  v9 = [v6 initWithUUIDString:containerPathIdentifier];

  if (!v9)
  {
    v25 = [[MCMError alloc] initWithErrorType:11];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      containerPath2 = [metadataCopy containerPath];
      containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
      *buf = 138412546;
      *v47 = containerPathIdentifier2;
      *&v47[8] = 2112;
      *&v47[10] = metadataCopy;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Non-UUID last path component: %@ for %@", buf, 0x16u);
    }

LABEL_13:
    v14 = 0;
    v9 = 0;
    v16 = 0;
LABEL_14:

    if (error)
    {
      v27 = v25;
      v24 = 0;
      *error = v25;
    }

    else
    {
      v24 = 0;
    }

    v22 = v16;
    goto LABEL_18;
  }

  v10 = objc_opt_class();
  if ([metadataCopy transient])
  {
    v10 = objc_opt_class();
  }

  containerIdentity = [metadataCopy containerIdentity];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v10 containerPathForContainerIdentity:containerIdentity containerPathIdentifier:uUIDString];

  containerClassPath = [v14 containerClassPath];
  v45 = 0;
  LOBYTE(uUID) = [containerClassPath createIfNecessaryWithError:&v45];
  v16 = v45;

  if ((uUID & 1) == 0)
  {
    v30 = [MCMError alloc];
    containerClassPath2 = [v14 containerClassPath];
    classURL = [containerClassPath2 classURL];
    v25 = [(MCMError *)v30 initWithNSError:v16 url:classURL defaultErrorType:48];

    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      containerClassPath3 = [v14 containerClassPath];
      *buf = 138412546;
      *v47 = containerClassPath3;
      *&v47[8] = 2112;
      *&v47[10] = v16;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to create class path at: %@; error = %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  errorCopy = error;
  v17 = +[MCMFileManager defaultManager];
  containerPath3 = [metadataCopy containerPath];
  containerRootURL = [containerPath3 containerRootURL];
  containerRootURL2 = [v14 containerRootURL];
  v44 = v16;
  v21 = [v17 moveItemAtURL:containerRootURL toURL:containerRootURL2 error:&v44];
  v22 = v44;

  if ((v21 & 1) == 0)
  {
    v34 = [MCMError alloc];
    containerRootURL3 = [v14 containerRootURL];
    v25 = [(MCMError *)v34 initWithNSError:v22 url:containerRootURL3 defaultErrorType:48];

    v26 = container_log_handle_for_category();
    error = errorCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      containerPath4 = [metadataCopy containerPath];
      containerRootURL4 = [containerPath4 containerRootURL];
      path = [containerRootURL4 path];
      containerRootURL5 = [v14 containerRootURL];
      path2 = [containerRootURL5 path];
      *buf = 138412802;
      *v47 = path;
      *&v47[8] = 2112;
      *&v47[10] = path2;
      v48 = 2112;
      v49 = v22;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to move dir: %@ to new UUID dir: %@; error = %@", buf, 0x20u);

      error = errorCopy;
    }

    goto LABEL_27;
  }

  v23 = [metadataCopy metadataByChangingContainerPath:v14];
  error = errorCopy;
  if (!v23)
  {
    v25 = [[MCMError alloc] initWithErrorType:73];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v47 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to update metadata for regenerate: %@", buf, 0xCu);
    }

LABEL_27:
    v16 = v22;
    goto LABEL_14;
  }

  v24 = v23;
  v25 = 0;
LABEL_18:

  v28 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)execute
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  concreteContainerIdentity = [(MCMCommandRegenerateDirectoryUUID *)self concreteContainerIdentity];
  v25 = 0;
  v7 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v25];
  v8 = v25;

  metadataMinimal = [v7 metadataMinimal];
  if (metadataMinimal)
  {
    v24 = v8;
    v10 = [(MCMCommandRegenerateDirectoryUUID *)self regenerateDirectoryUUIDNoCacheUpdateWithMetadata:metadataMinimal error:&v24];
    v11 = v24;

    if (v10)
    {
      context2 = [(MCMCommand *)self context];
      containerCache2 = [context2 containerCache];
      v23 = 0;
      v14 = [containerCache2 addContainerMetadata:v10 error:&v23];
      v15 = v23;

      if (!v14)
      {
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v15;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to update container cache for regenerate: %@", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v10 = 0;
    v15 = 0;
    v11 = v8;
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "Roll UUID result: %@, error = %@", buf, 0x16u);
  }

  v18 = [MCMResultWithContainerBase alloc];
  if (v10)
  {
    v19 = [(MCMResultWithContainerBase *)v18 initWithMetadata:v10 sandboxToken:0 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0];
  }

  else
  {
    v19 = [(MCMResultBase *)v18 initWithError:v11];
  }

  v20 = v19;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v20];

  objc_autoreleasePoolPop(v3);
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v6 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  LOBYTE(context) = [clientIdentity isAllowedToRegenerateDirectoryUUIDs];
  v4 = *MEMORY[0x1E69E9840];
  return context;
}

- (MCMCommandRegenerateDirectoryUUID)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandRegenerateDirectoryUUID;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    concreteContainerIdentity = [messageCopy concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = concreteContainerIdentity;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandRegenerateDirectoryUUID)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = MCMCommandRegenerateDirectoryUUID;
  v10 = [(MCMCommand *)&v14 initWithContext:context resultPromise:promise];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_concreteContainerIdentity, identity);
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
  return 9;
}

@end