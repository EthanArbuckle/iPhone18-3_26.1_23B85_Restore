@interface MCMContainerClassTransientPath
+ (id)_globalTemporaryComponent;
+ (id)_temporaryComponent;
+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4;
+ (id)transientGlobalBundleURL;
+ (id)transientGlobalURL;
+ (id)transientURLWithUserIdentity:(id)a3 withContainerClass:(unint64_t)a4;
@end

@implementation MCMContainerClassTransientPath

+ (id)_temporaryComponent
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return @"Temp";
}

+ (id)_globalTemporaryComponent
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return @"Temp";
}

+ (id)transientURLWithUserIdentity:(id)a3 withContainerClass:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 _temporaryComponent];
  v7 = [a1 _baseURLForUserIdentity:v5];

  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)transientGlobalURL
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 managedPathRegistry];
  v5 = [v4 containermanagerCaches];

  v6 = [v5 url];
  v7 = [a1 _globalTemporaryComponent];
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)transientGlobalBundleURL
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 sharedContainersDirectory];
  v5 = [a1 _globalTemporaryComponent];
  v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _categoryComponentForContainerClass:a4];
  v8 = [a1 _classComponentForContainerClass:a4];
  v9 = [v6 posixUser];
  v10 = [a1 posixOwnerForContainerClass:a4 user:v9];

  v11 = [a1 _modeForContainerClass:a4];
  v12 = containermanager_copy_global_configuration();
  v13 = [v12 isGlobalContainerClass:a4];

  if (v13)
  {
    v14 = containermanager_copy_global_configuration();
    v15 = [v14 isGlobalBundleContainerWithContainerClass:a4];

    if (v15)
    {
      [a1 transientGlobalBundleURL];
    }

    else
    {
      [a1 transientGlobalURL];
    }
    v16 = ;
  }

  else
  {
    if (!v6)
    {
      v17 = container_log_handle_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v22 = a4;
        _os_log_fault_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_14;
    }

    v16 = [a1 transientURLWithUserIdentity:v6 withContainerClass:a4];
  }

  v17 = v16;
  if (!v16)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v18 = [[a1 alloc] initWithBaseURL:v16 categoryComponent:v7 classComponent:v8 containerClass:a4 POSIXOwner:v10 POSIXMode:v11 userIdentity:v6];
LABEL_14:

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end