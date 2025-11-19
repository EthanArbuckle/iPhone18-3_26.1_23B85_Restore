@interface MCMContainerClassStagingPath
+ (id)_globalStagingComponent;
+ (id)_stagingComponent;
+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4;
+ (id)stagingGlobalURL;
+ (id)stagingURLWithUserIdentity:(id)a3;
@end

@implementation MCMContainerClassStagingPath

+ (id)_stagingComponent
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return @"Staging";
}

+ (id)_globalStagingComponent
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return @"Staging";
}

+ (id)stagingURLWithUserIdentity:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 _baseURLForUserIdentity:a3];
  v5 = [a1 _stagingComponent];
  v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)stagingGlobalURL
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 managedPathRegistry];
  v5 = [v4 containermanagerCaches];

  v6 = [v5 url];
  v7 = [a1 _globalStagingComponent];
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 posixUser];
  v8 = [a1 posixOwnerForContainerClass:a4 user:v7];

  v9 = [a1 _modeForContainerClass:a4];
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 isGlobalContainerClass:a4];

  if (v11)
  {
    v12 = [a1 stagingGlobalURL];
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  if (v6)
  {
    v12 = [a1 stagingURLWithUserIdentity:v6];
    goto LABEL_5;
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    v19 = a4;
    _os_log_fault_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", buf, 0xCu);
  }

  v13 = 0;
LABEL_6:
  v14 = [[a1 alloc] initWithBaseURL:v13 categoryComponent:0 classComponent:0 containerClass:a4 POSIXOwner:v8 POSIXMode:v9 userIdentity:v6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end