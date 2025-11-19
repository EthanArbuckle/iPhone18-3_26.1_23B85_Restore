@interface MCMCommandRecreateContainerStructure
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandRecreateContainerStructure)initWithConcreteContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5;
- (MCMCommandRecreateContainerStructure)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
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
  v4 = [(MCMCommandRecreateContainerStructure *)self concreteContainerIdentity];
  v75 = self;
  v5 = [(MCMCommand *)self context];
  v6 = [v5 containerCache];
  v83 = 0;
  v7 = [v6 entryForContainerIdentity:v4 error:&v83];
  v8 = v83;

  if (v7)
  {
    v9 = [v7 uuid];
    v10 = [(MCMError *)v4 uuid];
    v11 = [v9 isEqual:v10];

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

  v74 = v4;
  if (!v13)
  {
    v21 = [[MCMError alloc] initWithErrorType:21];

    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v85 = v4;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "No Container with identity: %@", buf, 0xCu);
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
    v16 = [(MCMCommand *)v75 context];
    v17 = [v16 clientIdentity];
    v18 = [v15 desiredDataProtectionClassForMetadata:v13 clientIdentity:v17];

    v19 = [v13 containerPath];
    v81 = 0;
    LOBYTE(v17) = [v19 createDataURLIfNecessaryWithDataProtectionClass:v18 error:&v81];
    v20 = v81;

    if ((v17 & 1) == 0)
    {
      v52 = [MCMError alloc];
      v53 = [v13 containerPath];
      v54 = [v53 containerDataURL];
      v21 = [(MCMError *)v52 initWithNSError:v20 url:v54 defaultErrorType:106];

      v22 = container_log_handle_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = v74;
        v86 = 2112;
        v87 = v21;
        _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Could not create container data subdir for %@; error = %@", buf, 0x16u);
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

  v26 = [(MCMCommand *)v75 context];
  v27 = [v26 userIdentityCache];
  v28 = [v13 userIdentity];
  v29 = [v27 libraryRepairForUserIdentity:v28];

  v30 = [v13 identifier];
  v31 = [v13 containerClass];
  v32 = [v13 schemaVersion];
  v80 = 0;
  v33 = [MCMContainerSchema schemaIsUpToDateForIdentifier:v30 containerClass:v31 currentSchemaVersion:v32 latestSchemaVersion:&v80];
  v24 = v80;

  v34 = +[MCMDataProtectionManager defaultManager];
  v35 = [(MCMCommand *)v75 context];
  v36 = [v35 clientIdentity];
  v37 = [v34 desiredDataProtectionClassForMetadata:v13 clientIdentity:v36];

  v38 = [v13 containerPath];
  v39 = v37;
  v23 = v29;
  v25 = [MCMContainerSchema containerSchemaWithMetadata:v13 finalContainerPath:v38 dataProtectionClass:v39 libraryRepair:v29];

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
      [(MCMCommand *)v75 context];
      v47 = v46 = v41;
      v48 = [v47 containerCache];
      v77 = v44;
      v49 = [v48 addContainerMetadata:v46 error:&v77];
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
  v58 = [(MCMError *)v69 containerPath];
  v59 = [v58 containerRootURL];
  v76 = v42;
  v60 = [v57 standardizeACLsForSystemContainerAtURL:v59 error:&v76];
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
  v22 = [(MCMError *)v69 containerPath];
  v62 = [v22 containerRootURL];
  v63 = [(MCMError *)v61 initWithNSError:v20 url:v62 defaultErrorType:63];

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
  v67 = [(MCMCommand *)v75 resultPromise];
  [v67 completeWithResult:v66];

  objc_autoreleasePoolPop(v3);
  v68 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToRecreateContainerStructure];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandRecreateContainerStructure)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandRecreateContainerStructure;
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

- (MCMCommandRecreateContainerStructure)initWithConcreteContainerIdentity:(id)a3 context:(id)a4 resultPromise:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandRecreateContainerStructure;
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
  return 8;
}

@end