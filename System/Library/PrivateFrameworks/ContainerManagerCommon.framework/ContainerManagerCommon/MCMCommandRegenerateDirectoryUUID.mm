@interface MCMCommandRegenerateDirectoryUUID
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandRegenerateDirectoryUUID)initWithConcreteContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5;
- (MCMCommandRegenerateDirectoryUUID)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (id)regenerateDirectoryUUIDNoCacheUpdateWithMetadata:(id)a3 error:(id *)a4;
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

- (id)regenerateDirectoryUUIDNoCacheUpdateWithMetadata:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [v5 platform];
  [v5 containerClass];
  [v5 transient];
  if ((container_class_supports_randomized_path() & 1) == 0)
  {
    v25 = [[MCMError alloc] initWithErrorType:72];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v47 = [v5 platform];
      *&v47[4] = 2112;
      *&v47[6] = v5;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "UUID container paths are unsupported on (%u) for: %@", buf, 0x12u);
    }

    goto LABEL_13;
  }

  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v7 = [v5 containerPath];
  v8 = [v7 containerPathIdentifier];
  v9 = [v6 initWithUUIDString:v8];

  if (!v9)
  {
    v25 = [[MCMError alloc] initWithErrorType:11];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v40 = [v5 containerPath];
      v41 = [v40 containerPathIdentifier];
      *buf = 138412546;
      *v47 = v41;
      *&v47[8] = 2112;
      *&v47[10] = v5;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Non-UUID last path component: %@ for %@", buf, 0x16u);
    }

LABEL_13:
    v14 = 0;
    v9 = 0;
    v16 = 0;
LABEL_14:

    if (a4)
    {
      v27 = v25;
      v24 = 0;
      *a4 = v25;
    }

    else
    {
      v24 = 0;
    }

    v22 = v16;
    goto LABEL_18;
  }

  v10 = objc_opt_class();
  if ([v5 transient])
  {
    v10 = objc_opt_class();
  }

  v11 = [v5 containerIdentity];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  v14 = [v10 containerPathForContainerIdentity:v11 containerPathIdentifier:v13];

  v15 = [v14 containerClassPath];
  v45 = 0;
  LOBYTE(v12) = [v15 createIfNecessaryWithError:&v45];
  v16 = v45;

  if ((v12 & 1) == 0)
  {
    v30 = [MCMError alloc];
    v31 = [v14 containerClassPath];
    v32 = [v31 classURL];
    v25 = [(MCMError *)v30 initWithNSError:v16 url:v32 defaultErrorType:48];

    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v33 = [v14 containerClassPath];
      *buf = 138412546;
      *v47 = v33;
      *&v47[8] = 2112;
      *&v47[10] = v16;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to create class path at: %@; error = %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v43 = a4;
  v17 = +[MCMFileManager defaultManager];
  v18 = [v5 containerPath];
  v19 = [v18 containerRootURL];
  v20 = [v14 containerRootURL];
  v44 = v16;
  v21 = [v17 moveItemAtURL:v19 toURL:v20 error:&v44];
  v22 = v44;

  if ((v21 & 1) == 0)
  {
    v34 = [MCMError alloc];
    v35 = [v14 containerRootURL];
    v25 = [(MCMError *)v34 initWithNSError:v22 url:v35 defaultErrorType:48];

    v26 = container_log_handle_for_category();
    a4 = v43;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v42 = [v5 containerPath];
      v36 = [v42 containerRootURL];
      v37 = [v36 path];
      v38 = [v14 containerRootURL];
      v39 = [v38 path];
      *buf = 138412802;
      *v47 = v37;
      *&v47[8] = 2112;
      *&v47[10] = v39;
      v48 = 2112;
      v49 = v22;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to move dir: %@ to new UUID dir: %@; error = %@", buf, 0x20u);

      a4 = v43;
    }

    goto LABEL_27;
  }

  v23 = [v5 metadataByChangingContainerPath:v14];
  a4 = v43;
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
  v4 = [(MCMCommand *)self context];
  v5 = [v4 containerCache];
  v6 = [(MCMCommandRegenerateDirectoryUUID *)self concreteContainerIdentity];
  v25 = 0;
  v7 = [v5 entryForContainerIdentity:v6 error:&v25];
  v8 = v25;

  v9 = [v7 metadataMinimal];
  if (v9)
  {
    v24 = v8;
    v10 = [(MCMCommandRegenerateDirectoryUUID *)self regenerateDirectoryUUIDNoCacheUpdateWithMetadata:v9 error:&v24];
    v11 = v24;

    if (v10)
    {
      v12 = [(MCMCommand *)self context];
      v13 = [v12 containerCache];
      v23 = 0;
      v14 = [v13 addContainerMetadata:v10 error:&v23];
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
  v21 = [(MCMCommand *)self resultPromise];
  [v21 completeWithResult:v20];

  objc_autoreleasePoolPop(v3);
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];

  LOBYTE(v2) = [v3 isAllowedToRegenerateDirectoryUUIDs];
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (MCMCommandRegenerateDirectoryUUID)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandRegenerateDirectoryUUID;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandRegenerateDirectoryUUID)initWithConcreteContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandRegenerateDirectoryUUID;
  v10 = [(MCMCommand *)&v14 initWithContext:a4 resultPromise:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_concreteContainerIdentity, a3);
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