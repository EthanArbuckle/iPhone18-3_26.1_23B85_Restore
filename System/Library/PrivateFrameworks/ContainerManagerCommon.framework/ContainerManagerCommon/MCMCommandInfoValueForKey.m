@interface MCMCommandInfoValueForKey
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)includedCreator;
- (BOOL)includedInfo;
- (BOOL)includedPath;
- (BOOL)includedUserManagedAssetsPath;
- (BOOL)preflightClientAllowed;
- (MCMCommandInfoValueForKey)infoValueForKeyWithError:(unint64_t *)a3;
- (MCMCommandInfoValueForKey)initWithKey:(id)a3 concreteContainerIdentity:(id)a4 context:(id)a5 resultPromise:(id)a6;
- (MCMCommandInfoValueForKey)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (NSString)key;
- (void)execute;
@end

@implementation MCMCommandInfoValueForKey

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

- (MCMCommandInfoValueForKey)infoValueForKeyWithError:(unint64_t *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = [(MCMCommandInfoValueForKey *)self concreteContainerIdentity];
  v4 = [(MCMCommandInfoValueForKey *)self key];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v15 = [[MCMError alloc] initWithErrorType:38];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Can't get nil or non-NSString key: %@", buf, 0xCu);
    }

    v11 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v7 = [(MCMCommand *)self context];
  v8 = [v7 containerCache];
  v25 = 0;
  v9 = [v8 entryForContainerIdentity:v23 error:&v25];
  v10 = v25;

  v24 = v10;
  v11 = [v9 metadataWithError:&v24];
  v12 = v24;

  if (!v11)
  {
    v15 = [[MCMError alloc] initWithErrorType:21];

    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v23;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "No Container with identity: %@", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_17;
  }

  v13 = [v11 info];
  v14 = [v13 objectForKeyedSubscript:v5];

  if (!v14)
  {
    v15 = [[MCMError alloc] initWithErrorType:24];

    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Didn't find info value for key: %@", buf, 0xCu);
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v15 = v12;
LABEL_18:
  if (a3 && v15)
  {
    *a3 = [(MCMError *)v15 type];
  }

  v19 = v14;

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)execute
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v10[0] = 1;
  v4 = [(MCMCommandInfoValueForKey *)self infoValueForKeyWithError:v10];
  if (v10[0] == 1)
  {
    v5 = [[MCMResultInfoValueForKey alloc] initWithValue:v4];
  }

  else
  {
    v6 = [MCMError alloc];
    v7 = [(MCMError *)v6 initWithErrorType:v10[0]];
    v5 = [(MCMResultBase *)[MCMResultInfoValueForKey alloc] initWithError:v7];
  }

  v8 = [(MCMCommand *)self resultPromise];
  [v8 completeWithResult:v5];

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
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

- (MCMCommandInfoValueForKey)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = MCMCommandInfoValueForKey;
  v9 = [(MCMCommand *)&v16 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = v10;

    v12 = [v8 key];
    key = v9->_key;
    v9->_key = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandInfoValueForKey)initWithKey:(id)a3 concreteContainerIdentity:(id)a4 context:(id)a5 resultPromise:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = MCMCommandInfoValueForKey;
  v13 = [(MCMCommand *)&v17 initWithContext:a5 resultPromise:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, a3);
    objc_storeStrong(&v14->_concreteContainerIdentity, a4);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
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
  return 6;
}

@end