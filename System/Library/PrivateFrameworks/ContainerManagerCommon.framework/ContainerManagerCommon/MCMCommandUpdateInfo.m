@interface MCMCommandUpdateInfo
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)fullReplace;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandUpdateInfo)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (NSDictionary)infoDict;
- (NSSet)deleteKeys;
- (void)execute;
@end

@implementation MCMCommandUpdateInfo

- (BOOL)fullReplace
{
  result = self->_fullReplace;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)infoDict
{
  result = self->_infoDict;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)deleteKeys
{
  result = self->_deleteKeys;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

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
  v55 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MCMCommandUpdateInfo *)self concreteContainerIdentity];
  v44 = [(MCMCommandUpdateInfo *)self infoDict];
  v5 = [(MCMCommandUpdateInfo *)self deleteKeys];
  v6 = [(MCMCommand *)self context];
  v7 = [v6 containerCache];
  v48 = 0;
  v8 = [v7 entryForContainerIdentity:v4 error:&v48];
  v9 = v48;

  v10 = v8;
  v47 = v9;
  v11 = [v8 metadataWithError:&v47];
  v12 = v47;

  if (!v11)
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v4;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "No container with identity: %@", buf, 0xCu);
    }

    v15 = v12;
    goto LABEL_17;
  }

  if (v5)
  {
    [v11 metadataByDeletingInfoDictKeys:v5];
  }

  else
  {
    [v11 metadataBySettingValuesWithInfoDict:v44 fullReplace:[(MCMCommandUpdateInfo *)self fullReplace]];
  }
  v13 = ;
  v14 = v13;
  if (v11 != v13)
  {
    v46 = v12;
    v16 = [v13 writeMetadataToDiskWithError:&v46];
    v15 = v46;

    if (v16)
    {
      v41 = v4;
      v39 = v3;
      v17 = [(MCMCommand *)self context];
      v18 = [v17 containerCache];
      v45 = v15;
      v19 = [v18 addContainerMetadata:v14 error:&v45];
      v12 = v45;

      v43 = v11;
      if (v19)
      {
        v3 = v39;
        v4 = v41;
      }

      else
      {
        v32 = container_log_handle_for_category();
        v4 = v41;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v36 = [v11 containerPath];
          v37 = [v36 containerRootURL];
          v38 = [v37 path];
          *buf = 138412546;
          v50 = v14;
          v51 = 2112;
          v52 = v38;
          _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@", buf, 0x16u);

          v4 = v41;
        }

        v3 = v39;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v42 = [v11 containerPath];
      v40 = [v42 containerRootURL];
      v35 = [v40 path];
      *buf = 138412802;
      v50 = v14;
      v51 = 2112;
      v52 = v35;
      v53 = 2112;
      v54 = v15;
      _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Failed to write updated metadata: %@, url: %@, error = %@", buf, 0x20u);
    }

LABEL_17:
    v12 = v15;
LABEL_23:
    v30 = [(MCMResultBase *)[MCMResultWithContainerBase alloc] initWithError:v12];
    goto LABEL_24;
  }

  v43 = v11;
  if (!v13)
  {
LABEL_22:
    v11 = v43;
    goto LABEL_23;
  }

LABEL_13:
  v20 = [MCMResultWithContainerBase alloc];
  v21 = v3;
  v22 = [(MCMCommandUpdateInfo *)self includedPath];
  v23 = v10;
  v24 = v5;
  v25 = v4;
  v26 = [(MCMCommandUpdateInfo *)self includedUserManagedAssetsPath];
  v27 = [(MCMCommandUpdateInfo *)self includedCreator];
  v28 = v22;
  v3 = v21;
  v29 = v26;
  v4 = v25;
  v5 = v24;
  v10 = v23;
  v30 = [(MCMResultWithContainerBase *)v20 initWithMetadata:v14 sandboxToken:0 includePath:v28 includeInfo:1 includeUserManagedAssetsRelPath:v29 includeCreator:v27];

  v11 = v43;
LABEL_24:
  v33 = [(MCMCommand *)self resultPromise];
  [v33 completeWithResult:v30];

  objc_autoreleasePoolPop(v3);
  v34 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];

  LOBYTE(v2) = [v3 isAllowedToAccessInfoMetadata];
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (MCMCommandUpdateInfo)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18.receiver = self;
  v18.super_class = MCMCommandUpdateInfo;
  v9 = [(MCMCommand *)&v18 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = v10;

    v9->_includedPath = [v8 includedPath];
    v9->_includedInfo = [v8 includedInfo];
    v9->_includedUserManagedAssetsPath = [v8 includedUserManagedAssetsPath];
    v9->_includedCreator = [v8 includedCreator];
    v12 = [v8 deleteKeys];
    deleteKeys = v9->_deleteKeys;
    v9->_deleteKeys = v12;

    v14 = [v8 infoDict];
    infoDict = v9->_infoDict;
    v9->_infoDict = v14;

    v9->_fullReplace = [v8 fullReplace];
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
  return 51;
}

@end