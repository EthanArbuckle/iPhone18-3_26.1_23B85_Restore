@interface MCMContainerClassTransientPath
+ (id)_globalTemporaryComponent;
+ (id)_temporaryComponent;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)transientGlobalBundleURL;
+ (id)transientGlobalURL;
+ (id)transientURLWithUserIdentity:(id)identity withContainerClass:(unint64_t)class;
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

+ (id)transientURLWithUserIdentity:(id)identity withContainerClass:(unint64_t)class
{
  v11 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  _temporaryComponent = [self _temporaryComponent];
  v7 = [self _baseURLForUserIdentity:identityCopy];

  v8 = [v7 URLByAppendingPathComponent:_temporaryComponent isDirectory:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)transientGlobalURL
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  managedPathRegistry = [v3 managedPathRegistry];
  containermanagerCaches = [managedPathRegistry containermanagerCaches];

  v6 = [containermanagerCaches url];
  _globalTemporaryComponent = [self _globalTemporaryComponent];
  v8 = [v6 URLByAppendingPathComponent:_globalTemporaryComponent isDirectory:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)transientGlobalBundleURL
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  sharedContainersDirectory = [v3 sharedContainersDirectory];
  _globalTemporaryComponent = [self _globalTemporaryComponent];
  v6 = [sharedContainersDirectory URLByAppendingPathComponent:_globalTemporaryComponent isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  v23 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7 = [self _categoryComponentForContainerClass:class];
  v8 = [self _classComponentForContainerClass:class];
  posixUser = [identityCopy posixUser];
  v10 = [self posixOwnerForContainerClass:class user:posixUser];

  v11 = [self _modeForContainerClass:class];
  v12 = containermanager_copy_global_configuration();
  v13 = [v12 isGlobalContainerClass:class];

  if (v13)
  {
    v14 = containermanager_copy_global_configuration();
    v15 = [v14 isGlobalBundleContainerWithContainerClass:class];

    if (v15)
    {
      [self transientGlobalBundleURL];
    }

    else
    {
      [self transientGlobalURL];
    }
    v16 = ;
  }

  else
  {
    if (!identityCopy)
    {
      v17 = container_log_handle_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        classCopy = class;
        _os_log_fault_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_14;
    }

    v16 = [self transientURLWithUserIdentity:identityCopy withContainerClass:class];
  }

  v17 = v16;
  if (!v16)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v18 = [[self alloc] initWithBaseURL:v16 categoryComponent:v7 classComponent:v8 containerClass:class POSIXOwner:v10 POSIXMode:v11 userIdentity:identityCopy];
LABEL_14:

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end