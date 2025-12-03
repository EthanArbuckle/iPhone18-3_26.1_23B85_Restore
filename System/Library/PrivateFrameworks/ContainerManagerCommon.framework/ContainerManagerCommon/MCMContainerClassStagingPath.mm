@interface MCMContainerClassStagingPath
+ (id)_globalStagingComponent;
+ (id)_stagingComponent;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)stagingGlobalURL;
+ (id)stagingURLWithUserIdentity:(id)identity;
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

+ (id)stagingURLWithUserIdentity:(id)identity
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [self _baseURLForUserIdentity:identity];
  _stagingComponent = [self _stagingComponent];
  v6 = [v4 URLByAppendingPathComponent:_stagingComponent isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)stagingGlobalURL
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  managedPathRegistry = [v3 managedPathRegistry];
  containermanagerCaches = [managedPathRegistry containermanagerCaches];

  v6 = [containermanagerCaches url];
  _globalStagingComponent = [self _globalStagingComponent];
  v8 = [v6 URLByAppendingPathComponent:_globalStagingComponent isDirectory:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  v20 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  posixUser = [identityCopy posixUser];
  v8 = [self posixOwnerForContainerClass:class user:posixUser];

  v9 = [self _modeForContainerClass:class];
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 isGlobalContainerClass:class];

  if (v11)
  {
    stagingGlobalURL = [self stagingGlobalURL];
LABEL_5:
    v13 = stagingGlobalURL;
    goto LABEL_6;
  }

  if (identityCopy)
  {
    stagingGlobalURL = [self stagingURLWithUserIdentity:identityCopy];
    goto LABEL_5;
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    classCopy = class;
    _os_log_fault_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", buf, 0xCu);
  }

  v13 = 0;
LABEL_6:
  v14 = [[self alloc] initWithBaseURL:v13 categoryComponent:0 classComponent:0 containerClass:class POSIXOwner:v8 POSIXMode:v9 userIdentity:identityCopy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end