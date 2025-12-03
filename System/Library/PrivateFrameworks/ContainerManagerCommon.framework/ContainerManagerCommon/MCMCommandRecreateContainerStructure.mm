@interface MCMCommandRecreateContainerStructure
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandRecreateContainerStructure)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandRecreateContainerStructure)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (void)execute;
@end

@implementation MCMCommandRecreateContainerStructure

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

- (void)execute
{
  v88 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  concreteContainerIdentity = [(MCMCommandRecreateContainerStructure *)self concreteContainerIdentity];
  selfCopy = self;
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v83 = 0;
  v7 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v83];
  v8 = v83;

  if (v7)
  {
    uuid = [v7 uuid];
    uuid2 = [(MCMError *)concreteContainerIdentity uuid];
    v11 = [uuid isEqual:uuid2];

    if ((v11 & 1) == 0)
    {

      v12 = [[MCMError alloc] initWithErrorType:21];
      v7 = 0;
      v8 = v12;
    }
  }

  v82 = v8;
  v13 = [v7 metadataWithError:&v82];
  v14 = v82;

  v74 = concreteContainerIdentity;
  if (!v13)
  {
    v21 = [[MCMError alloc] initWithErrorType:21];

    containerPath5 = container_log_handle_for_category();
    if (os_log_type_enabled(containerPath5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v85 = concreteContainerIdentity;
      _os_log_error_impl(&dword_1DF2C3000, containerPath5, OS_LOG_TYPE_ERROR, "No Container with identity: %@", buf, 0xCu);
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v13 = 0;
    v20 = 0;
    goto LABEL_33;
  }

  [v13 containerClass];
  v73 = v7;
  if (container_class_supports_data_subdirectory())
  {
    v15 = +[MCMDataProtectionManager defaultManager];
    context2 = [(MCMCommand *)selfCopy context];
    clientIdentity = [context2 clientIdentity];
    v18 = [v15 desiredDataProtectionClassForMetadata:v13 clientIdentity:clientIdentity];

    containerPath = [v13 containerPath];
    v81 = 0;
    LOBYTE(clientIdentity) = [containerPath createDataURLIfNecessaryWithDataProtectionClass:v18 error:&v81];
    v20 = v81;

    if ((clientIdentity & 1) == 0)
    {
      v52 = [MCMError alloc];
      containerPath2 = [v13 containerPath];
      containerDataURL = [containerPath2 containerDataURL];
      v21 = [(MCMError *)v52 initWithNSError:v20 url:containerDataURL defaultErrorType:106];

      containerPath5 = container_log_handle_for_category();
      if (os_log_type_enabled(containerPath5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v74;
        v86 = 2112;
        v87 = v21;
        _os_log_error_impl(&dword_1DF2C3000, containerPath5, OS_LOG_TYPE_ERROR, "Could not create container data subdir for %@; error = %@", buf, 0x16u);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_33;
    }

    v70 = v3;
    v71 = v20;
  }

  else
  {
    v70 = v3;
    v71 = 0;
  }

  context3 = [(MCMCommand *)selfCopy context];
  userIdentityCache = [context3 userIdentityCache];
  userIdentity = [v13 userIdentity];
  v29 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  identifier = [v13 identifier];
  containerClass = [v13 containerClass];
  schemaVersion = [v13 schemaVersion];
  v80 = 0;
  v33 = [MCMContainerSchema schemaIsUpToDateForIdentifier:identifier containerClass:containerClass currentSchemaVersion:schemaVersion latestSchemaVersion:&v80];
  v24 = v80;

  v34 = +[MCMDataProtectionManager defaultManager];
  context4 = [(MCMCommand *)selfCopy context];
  clientIdentity2 = [context4 clientIdentity];
  v37 = [v34 desiredDataProtectionClassForMetadata:v13 clientIdentity:clientIdentity2];

  containerPath3 = [v13 containerPath];
  v39 = v37;
  v23 = v29;
  v25 = [MCMContainerSchema containerSchemaWithMetadata:v13 finalContainerPath:containerPath3 dataProtectionClass:v39 libraryRepair:v29];

  v79 = v14;
  v40 = [v25 writeSchemaFromVersion:&unk_1F5A76F90 toTargetVersion:v24 error:&v79];
  v21 = v79;

  if (!v40)
  {
    v3 = v70;
    v42 = v71;
    v7 = v73;
    goto LABEL_34;
  }

  v41 = [v13 metadataByChangingSchemaVersion:v24];

  v42 = v71;
  v7 = v73;
  v69 = v41;
  if (!v33)
  {
    v78 = 0;
    v43 = [(MCMError *)v41 writeMetadataToDiskWithError:&v78];
    v44 = v78;
    if (v43)
    {
      v45 = v23;
      [(MCMCommand *)selfCopy context];
      v47 = v46 = v41;
      containerCache2 = [v47 containerCache];
      v77 = v44;
      v49 = [containerCache2 addContainerMetadata:v46 error:&v77];
      v50 = v77;

      if (!v49)
      {
        v51 = container_log_handle_for_category();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v85 = v69;
          v86 = 2112;
          v87 = v50;
          _os_log_error_impl(&dword_1DF2C3000, v51, OS_LOG_TYPE_ERROR, "Could not update cache for container schema version in metadata for %@: %@", buf, 0x16u);
        }

        v49 = 0;
      }

      v23 = v45;
    }

    else
    {
      v49 = container_log_handle_for_category();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v41;
        v86 = 2112;
        v87 = v44;
        _os_log_error_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_ERROR, "Could not update container schema version in metadata for %@: %@", buf, 0x16u);
      }

      v50 = v44;
    }

    v42 = v71;
  }

  v55 = containermanager_copy_global_configuration();
  v56 = [v55 isGlobalSystemContainerWithContainerClass:{-[MCMError containerClass](v74, "containerClass")}];

  v3 = v70;
  if (!v56)
  {
    v40 = 1;
    v13 = v69;
    goto LABEL_34;
  }

  v72 = v23;
  v57 = +[MCMFileManager defaultManager];
  containerPath4 = [(MCMError *)v69 containerPath];
  containerRootURL = [containerPath4 containerRootURL];
  v76 = v42;
  v60 = [v57 standardizeACLsForSystemContainerAtURL:containerRootURL error:&v76];
  v20 = v76;

  if (v60)
  {
    v40 = 1;
    v13 = v69;
    v42 = v20;
    v23 = v72;
    v7 = v73;
    goto LABEL_34;
  }

  v61 = [MCMError alloc];
  v13 = v69;
  containerPath5 = [(MCMError *)v69 containerPath];
  containerRootURL2 = [containerPath5 containerRootURL];
  v63 = [(MCMError *)v61 initWithNSError:v20 url:containerRootURL2 defaultErrorType:63];

  v21 = v63;
  v23 = v72;
  v7 = v73;
LABEL_33:

  v40 = 0;
  v42 = v20;
LABEL_34:
  v64 = container_log_handle_for_category();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v85 = v21;
    _os_log_debug_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_DEBUG, "Recreate container structure; error = %@", buf, 0xCu);
  }

  if (v40)
  {
    v65 = objc_opt_new();
  }

  else
  {
    v65 = [[MCMResultBase alloc] initWithError:v21];
  }

  v66 = v65;
  resultPromise = [(MCMCommand *)selfCopy resultPromise];
  [resultPromise completeWithResult:v66];

  objc_autoreleasePoolPop(v3);
  v68 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToRecreateContainerStructure = [clientIdentity isAllowedToRecreateContainerStructure];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToRecreateContainerStructure;
}

- (MCMCommandRecreateContainerStructure)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandRecreateContainerStructure;
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

- (MCMCommandRecreateContainerStructure)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = MCMCommandRecreateContainerStructure;
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
  return 8;
}

@end