@interface MCMCommandSetInfoValue
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandSetInfoValue)initWithKey:(id)a3 value:(id)a4 containerIdentity:(id)a5 context:(id)a6 resultPromise:(id)a7;
- (MCMCommandSetInfoValue)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (NSString)key;
- (id)value;
- (void)execute;
@end

@implementation MCMCommandSetInfoValue

- (id)value
{
  result = self->_value;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)key
{
  result = self->_key;
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
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MCMCommandSetInfoValue *)self concreteContainerIdentity];
  v5 = [(MCMCommandSetInfoValue *)self key];
  v6 = [(MCMCommandSetInfoValue *)self value];
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v34 = v6;
  if (!v8)
  {
    v33 = v4;
    v14 = [[MCMError alloc] initWithErrorType:38];
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Can't set nil or non-NSString key: %@", buf, 0xCu);
    }

    v16 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v9 = [(MCMCommand *)self context];
  v10 = [v9 containerCache];
  v38 = 0;
  v11 = [v10 entryForContainerIdentity:v4 error:&v38];
  v12 = v38;

  v37 = v12;
  v13 = [v11 metadataWithError:&v37];
  v14 = v37;

  if (!v13)
  {
    v33 = v4;
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v33;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "No Container with identity: %@", buf, 0xCu);
    }

    v16 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v15 = [v13 metadataBySettingInfoValue:v6 forKey:v7];
  v16 = v15;
  if (v13 != v15)
  {
    v33 = v4;
    v36 = v14;
    v17 = [v15 writeMetadataToDiskWithError:&v36];
    v18 = v36;

    if (v17)
    {
      v31 = v3;
      v19 = [(MCMCommand *)self context];
      v20 = [v19 containerCache];
      v35 = v18;
      v21 = [v20 addContainerMetadata:v16 error:&v35];
      v14 = v35;

      if (v21)
      {
        v3 = v31;
        v4 = v33;
        goto LABEL_10;
      }

      v23 = container_log_handle_for_category();
      v3 = v31;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = [v13 containerPath];
        v29 = [v28 containerRootURL];
        v30 = [v29 path];
        *buf = 138412546;
        v40 = v16;
        v41 = 2112;
        v42 = v30;
        _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@", buf, 0x16u);

        v3 = v31;
      }
    }

    else
    {
      v23 = container_log_handle_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = [v13 containerPath];
        v32 = [v26 containerRootURL];
        v27 = [v32 path];
        *buf = 138412802;
        v40 = v16;
        v41 = 2112;
        v42 = v27;
        v43 = 2112;
        v44 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Failed to write updated metadata: %@, url: %@, error = %@", buf, 0x20u);
      }

      v14 = v18;
    }

LABEL_22:

    v22 = [[MCMResultBase alloc] initWithError:v14];
    v4 = v33;
    goto LABEL_23;
  }

LABEL_10:
  v22 = objc_opt_new();
LABEL_23:
  v24 = [(MCMCommand *)self resultPromise];
  [v24 completeWithResult:v22];

  objc_autoreleasePoolPop(v3);
  v25 = *MEMORY[0x1E69E9840];
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

- (MCMCommandSetInfoValue)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18.receiver = self;
  v18.super_class = MCMCommandSetInfoValue;
  v9 = [(MCMCommand *)&v18 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = v10;

    v12 = [v8 key];
    key = v9->_key;
    v9->_key = v12;

    v14 = [v8 value];
    value = v9->_value;
    v9->_value = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandSetInfoValue)initWithKey:(id)a3 value:(id)a4 containerIdentity:(id)a5 context:(id)a6 resultPromise:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v20.receiver = self;
  v20.super_class = MCMCommandSetInfoValue;
  v16 = [(MCMCommand *)&v20 initWithContext:a6 resultPromise:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, a3);
    objc_storeStrong(&v17->_value, a4);
    objc_storeStrong(&v17->_concreteContainerIdentity, a5);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
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
  return 5;
}

@end