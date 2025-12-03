@interface MCMContainerClassPath
+ (id)_baseURLForUserIdentity:(id)identity;
+ (id)_baseURLForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)_categoryComponentForContainerClass:(unint64_t)class;
+ (id)_classComponentForContainerClass:(unint64_t)class;
+ (id)containerPathForContainerIdentity:(id)identity;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)containerPathTypeClasses;
+ (id)posixOwnerForContainerClass:(unint64_t)class user:(id)user;
+ (unsigned)_modeForContainerClass:(unint64_t)class;
- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine error:(id *)error;
- (BOOL)_obj1:(id)_obj1 isEqualToObj2:(id)obj2;
- (BOOL)createIfNecessaryWithError:(id *)error;
- (BOOL)exists;
- (BOOL)isCaseSensitive;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerClassPath:(id)path;
- (BOOL)supportsDataProtection;
- (MCMContainerClassPath)initWithBaseURL:(id)l categoryComponent:(id)component classComponent:(id)classComponent containerClass:(unint64_t)class POSIXOwner:(id)owner POSIXMode:(unsigned __int16)mode userIdentity:(id)identity;
- (MCMPOSIXUser)posixOwner;
- (MCMUserIdentity)userIdentity;
- (NSString)categoryComponent;
- (NSString)classComponent;
- (NSString)description;
- (NSURL)baseURL;
- (NSURL)categoryURL;
- (NSURL)classURL;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)containerClass;
- (unint64_t)hash;
- (unsigned)posixMode;
- (void)setExists:(BOOL)exists;
@end

@implementation MCMContainerClassPath

- (NSURL)classURL
{
  result = self->_classURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)baseURL
{
  result = self->_baseURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)categoryComponent
{
  result = self->_categoryComponent;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)classComponent
{
  result = self->_classComponent;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)hash
{
  v14 = *MEMORY[0x1E69E9840];
  baseURL = [(MCMContainerClassPath *)self baseURL];
  v4 = [baseURL hash];
  categoryComponent = [(MCMContainerClassPath *)self categoryComponent];
  v6 = [categoryComponent hash];
  classComponent = [(MCMContainerClassPath *)self classComponent];
  v8 = [classComponent hash];
  userIdentity = [(MCMContainerClassPath *)self userIdentity];
  identifier = [userIdentity identifier];
  v11 = [identifier hash];

  v12 = *MEMORY[0x1E69E9840];
  return v6 ^ v4 ^ v8 ^ v11;
}

- (BOOL)isCaseSensitive
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_classURLCreated)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = "[MCMContainerClassPath isCaseSensitive]";
      _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "%{public}s called before createIfNecessaryWithError:, result may not be valid", buf, 0xCu);
    }
  }

  if (!self->_caseSensitiveDetermined)
  {
    v4 = +[MCMFileManager defaultManager];
    classURL = [(MCMContainerClassPath *)self classURL];
    v11 = 0;
    v6 = [v4 checkFileSystemAtURL:classURL isCaseSensitive:&self->_caseSensitive canAtomicSwap:0 error:&v11];
    v7 = v11;

    if (v6)
    {
      self->_caseSensitiveDetermined = 1;
    }

    else
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Could not determine case sensitivity: %@", buf, 0xCu);
      }
    }
  }

  result = self->_caseSensitive;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)posixMode
{
  result = self->_posixMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)posixOwner
{
  result = self->_posixOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)categoryURL
{
  result = self->_categoryURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  necessaryCopy = necessary;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  v17 = [v16 libraryRepairForUserIdentity:self->_userIdentity];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__MCMContainerClassPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_error___block_invoke;
  v21[3] = &unk_1E86B0F68;
  modeCopy = mode;
  v21[4] = self;
  v22 = ownerCopy;
  classCopy = class;
  quarantineCopy = quarantine;
  v18 = ownerCopy;
  LOBYTE(error) = [v17 fixAndRetryIfPermissionsErrorWithURL:necessaryCopy containerPath:0 containerIdentifier:0 error:error duringBlock:v21];

  v19 = *MEMORY[0x1E69E9840];
  return error;
}

uint64_t __95__MCMContainerClassPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [objc_opt_class() _inLibraryRepairBlock_createURLIfNecessary:v6 mode:*(a1 + 52) owner:*(a1 + 40) dataProtectionClass:*(a1 + 48) quarantine:*(a1 + 54) exists:0 error:a3];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_obj1:(id)_obj1 isEqualToObj2:(id)obj2
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  if (_obj1 && obj2)
  {
    result = [_obj1 isEqual:obj2];
  }

  if (!(_obj1 | obj2))
  {
    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 32), self->_baseURL);
    objc_storeStrong((v5 + 80), self->_categoryComponent);
    objc_storeStrong((v5 + 88), self->_classComponent);
    objc_storeStrong((v5 + 40), self->_categoryURL);
    objc_storeStrong((v5 + 48), self->_classURL);
    *(v5 + 72) = self->_containerClass;
    *(v5 + 8) = self->_caseSensitive;
    *(v5 + 10) = self->_supportsDataProtection;
    *(v5 + 24) = self->_exists;
    objc_storeStrong((v5 + 56), self->_posixOwner);
    *(v5 + 26) = self->_posixMode;
    objc_storeStrong((v5 + 64), self->_userIdentity);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v9 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMContainerClassPath *)self isEqualToContainerClassPath:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToContainerClassPath:(id)path
{
  v8 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [(MCMContainerClassPath *)self _obj1:self->_baseURL isEqualToObj2:pathCopy[4]]&& [(MCMContainerClassPath *)self _obj1:self->_categoryComponent isEqualToObj2:pathCopy[10]]&& [(MCMContainerClassPath *)self _obj1:self->_classComponent isEqualToObj2:pathCopy[11]]&& [(MCMContainerClassPath *)self _obj1:self->_categoryURL isEqualToObj2:pathCopy[5]]&& [(MCMContainerClassPath *)self _obj1:self->_classURL isEqualToObj2:pathCopy[6]]&& [(MCMContainerClassPath *)self _obj1:self->_userIdentity isEqualToObj2:pathCopy[8]];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MCMContainerClassPath_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __36__MCMContainerClassPath_description__block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v24 = NSStringFromClass(v5);
  v6 = *(a1 + 32);
  v7 = [v6 userIdentity];
  v8 = [v7 personaUniqueString];
  v9 = [*(a1 + 32) baseURL];
  v10 = [v9 path];
  v11 = v10;
  v12 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
  }

  v13 = [*(a1 + 32) categoryComponent];
  v14 = [*(a1 + 32) classComponent];
  v15 = v14;
  v16 = *(a1 + 32);
  v17 = "";
  if (v16[12])
  {
    v18 = " created";
  }

  else
  {
    v18 = "";
  }

  if (v16[9] == 1)
  {
    if (v16[8])
    {
      v17 = " case-sensitive";
    }

    else
    {
      v17 = " case-insensitive";
    }
  }

  if (v16[11] == 1)
  {
    if (v16[10])
    {
      v19 = " dp-enabled";
    }

    else
    {
      v19 = " dp-disabled";
    }
  }

  else
  {
    v19 = "";
  }

  v20 = [v23 stringWithFormat:@"<%@: %p persona [%@]; [%@]/[%@]/[%@]%s%s%s>", v24, v6, v8, v12, v13, v14, v18, v17, v19];;

  if (a2)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (MCMContainerClassPath)initWithBaseURL:(id)l categoryComponent:(id)component classComponent:(id)classComponent containerClass:(unint64_t)class POSIXOwner:(id)owner POSIXMode:(unsigned __int16)mode userIdentity:(id)identity
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  componentCopy = component;
  classComponentCopy = classComponent;
  ownerCopy = owner;
  identityCopy = identity;
  v40.receiver = self;
  v40.super_class = MCMContainerClassPath;
  v18 = [(MCMContainerClassPath *)&v40 init];
  v19 = v18;
  if (v18)
  {
    *&v18->_classURLCreated = 0;
    *&v18->_caseSensitive = 0;
    objc_storeStrong(&v18->_userIdentity, identity);
    objc_storeStrong(&v19->_baseURL, l);
    objc_storeStrong(&v19->_categoryComponent, component);
    objc_storeStrong(&v19->_classComponent, classComponent);
    v19->_containerClass = class;
    objc_storeStrong(&v19->_posixOwner, owner);
    v19->_posixMode = mode;
    if (v19->_baseURL)
    {
      if (v19->_userIdentity)
      {
        v20 = containermanager_copy_global_configuration();
        v21 = [v20 isUnsupportedBundleContainerWithContainerClass:class];

        if (v21)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            classCopy2 = class;
            v23 = "Attempted to create a class path with an unsupported bundle class: %{public}llu";
LABEL_23:
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
          }
        }

        else
        {
          v25 = containermanager_copy_global_configuration();
          v26 = [v25 isUnsupportedSystemContainerWithContainerClass:class];

          if (!v26)
          {
            objc_storeStrong(&v19->_categoryURL, v19->_baseURL);
            categoryComponent = v19->_categoryComponent;
            if (categoryComponent)
            {
              v31 = [(NSURL *)v19->_categoryURL URLByAppendingPathComponent:categoryComponent isDirectory:1];
              categoryURL = v19->_categoryURL;
              v19->_categoryURL = v31;
            }

            objc_storeStrong(&v19->_classURL, v19->_categoryURL);
            classComponent = v19->_classComponent;
            if (classComponent)
            {
              v34 = [(NSURL *)v19->_classURL URLByAppendingPathComponent:classComponent isDirectory:1];
              classURL = v19->_classURL;
              v19->_classURL = v34;
            }

            homeDirectoryURL = [identityCopy homeDirectoryURL];
            homeDirectoryURL = v19->_homeDirectoryURL;
            v19->_homeDirectoryURL = homeDirectoryURL;
            goto LABEL_15;
          }

          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            classCopy2 = class;
            v23 = "Attempted to create a class path with an unsupported system class: %{public}llu";
            goto LABEL_23;
          }
        }

LABEL_14:

        homeDirectoryURL = v19;
        v19 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v22 = container_log_handle_for_category();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v24 = "Attempted to create a class path with no userIdentity.";
    }

    else
    {
      v22 = container_log_handle_for_category();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v24 = "Attempted to create a class path with no baseURL.";
    }

    _os_log_fault_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_FAULT, v24, buf, 2u);
    goto LABEL_14;
  }

LABEL_16:

  v28 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)setExists:(BOOL)exists
{
  v8 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (exists)
  {
    v4 = 1;
    v5 = obj;
  }

  else
  {
    v4 = 0;
    v5 = obj;
    obj->_caseSensitiveDetermined = 0;
    obj->_supportsDataProtectionDetermined = 0;
  }

  v5->_exists = v4;
  v5->_classURLCreated = v4;
  objc_sync_exit(v5);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)exists
{
  v8 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_classURLCreated)
  {
    v3 = +[MCMFileManager defaultManager];
    classURL = [(MCMContainerClassPath *)selfCopy classURL];
    selfCopy->_exists = [v3 itemExistsAtURL:classURL];
  }

  exists = selfCopy->_exists;
  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x1E69E9840];
  return exists;
}

- (BOOL)supportsDataProtection
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_classURLCreated)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = "[MCMContainerClassPath supportsDataProtection]";
      _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "%{public}s called before createIfNecessaryWithError:, result may not be valid", buf, 0xCu);
    }
  }

  if (!self->_supportsDataProtectionDetermined)
  {
    v4 = +[MCMFileManager defaultManager];
    classURL = [(MCMContainerClassPath *)self classURL];
    v11 = 0;
    v6 = [v4 checkFileSystemAtURL:classURL supportsPerFileKeys:&self->_supportsDataProtection error:&v11];
    v7 = v11;

    if (v6)
    {
      self->_supportsDataProtectionDetermined = 1;
    }

    else
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Could not determine dp support: %@", buf, 0xCu);
      }
    }
  }

  result = self->_supportsDataProtection;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)createIfNecessaryWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_classURLCreated)
  {
    classURLCreated = 1;
  }

  else
  {
    classURL = [(MCMContainerClassPath *)self classURL];
    posixMode = [(MCMContainerClassPath *)self posixMode];
    posixOwner = [(MCMContainerClassPath *)self posixOwner];
    self->_classURLCreated = [(MCMContainerClassPath *)self _createURLIfNecessary:classURL mode:posixMode owner:posixOwner dataProtectionClass:0xFFFFFFFFLL quarantine:0 error:error];

    classURLCreated = self->_classURLCreated;
  }

  v9 = *MEMORY[0x1E69E9840];
  return classURLCreated;
}

+ (id)_baseURLForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  v16 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 isGlobalContainerClass:class];

  if (v8)
  {
    v9 = containermanager_copy_global_configuration();
    sharedContainersDirectory = [v9 sharedContainersDirectory];
  }

  else if (identityCopy)
  {
    sharedContainersDirectory = [self _baseURLForUserIdentity:identityCopy];
  }

  else
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 134217984;
      classCopy = class;
      _os_log_fault_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", &v14, 0xCu);
    }

    sharedContainersDirectory = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return sharedContainersDirectory;
}

+ (id)_baseURLForUserIdentity:(id)identity
{
  v13 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  homeDirectoryURL = [identityCopy homeDirectoryURL];
  if (!homeDirectoryURL)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "+[MCMContainerClassPath _baseURLForUserIdentity:]";
      v11 = 2112;
      v12 = identityCopy;
      _os_log_fault_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_FAULT, "%s: User identity has a nil home directory; userIdentity = %@", &v9, 0x16u);
    }
  }

  v6 = [homeDirectoryURL URLByAppendingPathComponent:@"Containers" isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_classComponentForContainerClass:(unint64_t)class
{
  if (class - 1 > 0xD)
  {
    result = @"Unknown";
  }

  else
  {
    result = off_1E86B1018[class - 1];
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_categoryComponentForContainerClass:(unint64_t)class
{
  if (class - 1 > 0xD)
  {
    result = 0;
  }

  else
  {
    result = off_1E86B0FA8[class - 1];
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unsigned)_modeForContainerClass:(unint64_t)class
{
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 493;
}

+ (id)posixOwnerForContainerClass:(unint64_t)class user:(id)user
{
  v15 = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (class <= 0xE && ((1 << class) & 0x412A) != 0 && (v6 = containermanager_copy_global_configuration(), v7 = [v6 isUnsupportedBundleContainerWithContainerClass:class], v6, (v7 & 1) == 0))
  {
    v11 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v11 bundleContainerOwner];
  }

  else
  {
    if (class & 0xFFFFFFFFFFFFFFFELL) != 0xC || (v8 = containermanager_copy_global_configuration(), v9 = [v8 isUnsupportedSystemContainerWithContainerClass:class], v8, (v9))
    {
      v10 = userCopy;
      goto LABEL_10;
    }

    v11 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v11 systemContainerOwner];
  }

  v10 = bundleContainerOwner;

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7 = [self _baseURLForUserIdentity:identityCopy containerClass:class];
  v8 = [self _categoryComponentForContainerClass:class];
  v9 = [self _classComponentForContainerClass:class];
  posixUser = [identityCopy posixUser];
  v11 = [self posixOwnerForContainerClass:class user:posixUser];

  v12 = [[self alloc] initWithBaseURL:v7 categoryComponent:v8 classComponent:v9 containerClass:class POSIXOwner:v11 POSIXMode:objc_msgSend(self userIdentity:{"_modeForContainerClass:", class), identityCopy}];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)containerPathForContainerIdentity:(id)identity
{
  v10 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  containerClass = [identityCopy containerClass];

  v7 = [self containerPathForUserIdentity:userIdentity containerClass:containerClass];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)containerPathTypeClasses
{
  v5 = *MEMORY[0x1E69E9840];
  if (containerPathTypeClasses_onceToken != -1)
  {
    dispatch_once(&containerPathTypeClasses_onceToken, &__block_literal_global_13899);
  }

  v2 = containerPathTypeClasses_typeClasses;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __49__MCMContainerClassPath_containerPathTypeClasses__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = containerPathTypeClasses_typeClasses;
  containerPathTypeClasses_typeClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end