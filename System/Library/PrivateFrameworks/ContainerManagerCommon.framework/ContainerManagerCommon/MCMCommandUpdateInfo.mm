@interface MCMCommandUpdateInfo
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)fullReplace;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandUpdateInfo)initWithMessage:(id)message context:(id)context reply:(id)reply;
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
  concreteContainerIdentity = [(MCMCommandUpdateInfo *)self concreteContainerIdentity];
  infoDict = [(MCMCommandUpdateInfo *)self infoDict];
  deleteKeys = [(MCMCommandUpdateInfo *)self deleteKeys];
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v48 = 0;
  v8 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v48];
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
      v50 = concreteContainerIdentity;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "No container with identity: %@", buf, 0xCu);
    }

    v15 = v12;
    goto LABEL_17;
  }

  if (deleteKeys)
  {
    [v11 metadataByDeletingInfoDictKeys:deleteKeys];
  }

  else
  {
    [v11 metadataBySettingValuesWithInfoDict:infoDict fullReplace:[(MCMCommandUpdateInfo *)self fullReplace]];
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
      v41 = concreteContainerIdentity;
      v39 = v3;
      context2 = [(MCMCommand *)self context];
      containerCache2 = [context2 containerCache];
      v45 = v15;
      v19 = [containerCache2 addContainerMetadata:v14 error:&v45];
      v12 = v45;

      v43 = v11;
      if (v19)
      {
        v3 = v39;
        concreteContainerIdentity = v41;
      }

      else
      {
        v32 = container_log_handle_for_category();
        concreteContainerIdentity = v41;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          containerPath = [v11 containerPath];
          containerRootURL = [containerPath containerRootURL];
          path = [containerRootURL path];
          *buf = 138412546;
          v50 = v14;
          v51 = 2112;
          v52 = path;
          _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@", buf, 0x16u);

          concreteContainerIdentity = v41;
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
      containerPath2 = [v11 containerPath];
      containerRootURL2 = [containerPath2 containerRootURL];
      path2 = [containerRootURL2 path];
      *buf = 138412802;
      v50 = v14;
      v51 = 2112;
      v52 = path2;
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
  includedPath = [(MCMCommandUpdateInfo *)self includedPath];
  v23 = v10;
  v24 = deleteKeys;
  v25 = concreteContainerIdentity;
  includedUserManagedAssetsPath = [(MCMCommandUpdateInfo *)self includedUserManagedAssetsPath];
  includedCreator = [(MCMCommandUpdateInfo *)self includedCreator];
  v28 = includedPath;
  v3 = v21;
  v29 = includedUserManagedAssetsPath;
  concreteContainerIdentity = v25;
  deleteKeys = v24;
  v10 = v23;
  v30 = [(MCMResultWithContainerBase *)v20 initWithMetadata:v14 sandboxToken:0 includePath:v28 includeInfo:1 includeUserManagedAssetsRelPath:v29 includeCreator:includedCreator];

  v11 = v43;
LABEL_24:
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v30];

  objc_autoreleasePoolPop(v3);
  v34 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v6 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  LOBYTE(context) = [clientIdentity isAllowedToAccessInfoMetadata];
  v4 = *MEMORY[0x1E69E9840];
  return context;
}

- (MCMCommandUpdateInfo)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = MCMCommandUpdateInfo;
  v9 = [(MCMCommand *)&v18 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    concreteContainerIdentity = [messageCopy concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = concreteContainerIdentity;

    v9->_includedPath = [messageCopy includedPath];
    v9->_includedInfo = [messageCopy includedInfo];
    v9->_includedUserManagedAssetsPath = [messageCopy includedUserManagedAssetsPath];
    v9->_includedCreator = [messageCopy includedCreator];
    deleteKeys = [messageCopy deleteKeys];
    deleteKeys = v9->_deleteKeys;
    v9->_deleteKeys = deleteKeys;

    infoDict = [messageCopy infoDict];
    infoDict = v9->_infoDict;
    v9->_infoDict = infoDict;

    v9->_fullReplace = [messageCopy fullReplace];
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