@interface MCMContainerClassPath
+ (id)_baseURLForUserIdentity:(id)a3;
+ (id)_baseURLForUserIdentity:(id)a3 containerClass:(unint64_t)a4;
+ (id)_categoryComponentForContainerClass:(unint64_t)a3;
+ (id)_classComponentForContainerClass:(unint64_t)a3;
+ (id)containerPathForContainerIdentity:(id)a3;
+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4;
+ (id)containerPathTypeClasses;
+ (id)posixOwnerForContainerClass:(unint64_t)a3 user:(id)a4;
+ (unsigned)_modeForContainerClass:(unint64_t)a3;
- (BOOL)_createURLIfNecessary:(id)a3 mode:(unsigned __int16)a4 owner:(id)a5 dataProtectionClass:(int)a6 quarantine:(BOOL)a7 error:(id *)a8;
- (BOOL)_obj1:(id)a3 isEqualToObj2:(id)a4;
- (BOOL)createIfNecessaryWithError:(id *)a3;
- (BOOL)exists;
- (BOOL)isCaseSensitive;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainerClassPath:(id)a3;
- (BOOL)supportsDataProtection;
- (MCMContainerClassPath)initWithBaseURL:(id)a3 categoryComponent:(id)a4 classComponent:(id)a5 containerClass:(unint64_t)a6 POSIXOwner:(id)a7 POSIXMode:(unsigned __int16)a8 userIdentity:(id)a9;
- (MCMPOSIXUser)posixOwner;
- (MCMUserIdentity)userIdentity;
- (NSString)categoryComponent;
- (NSString)classComponent;
- (NSString)description;
- (NSURL)baseURL;
- (NSURL)categoryURL;
- (NSURL)classURL;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)containerClass;
- (unint64_t)hash;
- (unsigned)posixMode;
- (void)setExists:(BOOL)a3;
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
  v3 = [(MCMContainerClassPath *)self baseURL];
  v4 = [v3 hash];
  v5 = [(MCMContainerClassPath *)self categoryComponent];
  v6 = [v5 hash];
  v7 = [(MCMContainerClassPath *)self classComponent];
  v8 = [v7 hash];
  v9 = [(MCMContainerClassPath *)self userIdentity];
  v10 = [v9 identifier];
  v11 = [v10 hash];

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
    v5 = [(MCMContainerClassPath *)self classURL];
    v11 = 0;
    v6 = [v4 checkFileSystemAtURL:v5 isCaseSensitive:&self->_caseSensitive canAtomicSwap:0 error:&v11];
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

- (BOOL)_createURLIfNecessary:(id)a3 mode:(unsigned __int16)a4 owner:(id)a5 dataProtectionClass:(int)a6 quarantine:(BOOL)a7 error:(id *)a8
{
  v26 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a3;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  v17 = [v16 libraryRepairForUserIdentity:self->_userIdentity];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__MCMContainerClassPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_error___block_invoke;
  v21[3] = &unk_1E86B0F68;
  v24 = a4;
  v21[4] = self;
  v22 = v14;
  v23 = a6;
  v25 = a7;
  v18 = v14;
  LOBYTE(a8) = [v17 fixAndRetryIfPermissionsErrorWithURL:v15 containerPath:0 containerIdentifier:0 error:a8 duringBlock:v21];

  v19 = *MEMORY[0x1E69E9840];
  return a8;
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

- (BOOL)_obj1:(id)a3 isEqualToObj2:(id)a4
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    result = [a3 isEqual:a4];
  }

  if (!(a3 | a4))
  {
    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMContainerClassPath *)self isEqualToContainerClassPath:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqualToContainerClassPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMContainerClassPath *)self _obj1:self->_baseURL isEqualToObj2:v4[4]]&& [(MCMContainerClassPath *)self _obj1:self->_categoryComponent isEqualToObj2:v4[10]]&& [(MCMContainerClassPath *)self _obj1:self->_classComponent isEqualToObj2:v4[11]]&& [(MCMContainerClassPath *)self _obj1:self->_categoryURL isEqualToObj2:v4[5]]&& [(MCMContainerClassPath *)self _obj1:self->_classURL isEqualToObj2:v4[6]]&& [(MCMContainerClassPath *)self _obj1:self->_userIdentity isEqualToObj2:v4[8]];

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

- (MCMContainerClassPath)initWithBaseURL:(id)a3 categoryComponent:(id)a4 classComponent:(id)a5 containerClass:(unint64_t)a6 POSIXOwner:(id)a7 POSIXMode:(unsigned __int16)a8 userIdentity:(id)a9
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v16 = a7;
  v17 = a9;
  v40.receiver = self;
  v40.super_class = MCMContainerClassPath;
  v18 = [(MCMContainerClassPath *)&v40 init];
  v19 = v18;
  if (v18)
  {
    *&v18->_classURLCreated = 0;
    *&v18->_caseSensitive = 0;
    objc_storeStrong(&v18->_userIdentity, a9);
    objc_storeStrong(&v19->_baseURL, a3);
    objc_storeStrong(&v19->_categoryComponent, a4);
    objc_storeStrong(&v19->_classComponent, a5);
    v19->_containerClass = a6;
    objc_storeStrong(&v19->_posixOwner, a7);
    v19->_posixMode = a8;
    if (v19->_baseURL)
    {
      if (v19->_userIdentity)
      {
        v20 = containermanager_copy_global_configuration();
        v21 = [v20 isUnsupportedBundleContainerWithContainerClass:a6];

        if (v21)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            v42 = a6;
            v23 = "Attempted to create a class path with an unsupported bundle class: %{public}llu";
LABEL_23:
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
          }
        }

        else
        {
          v25 = containermanager_copy_global_configuration();
          v26 = [v25 isUnsupportedSystemContainerWithContainerClass:a6];

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

            v36 = [v17 homeDirectoryURL];
            homeDirectoryURL = v19->_homeDirectoryURL;
            v19->_homeDirectoryURL = v36;
            goto LABEL_15;
          }

          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            v42 = a6;
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

- (void)setExists:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (a3)
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
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_classURLCreated)
  {
    v3 = +[MCMFileManager defaultManager];
    v4 = [(MCMContainerClassPath *)v2 classURL];
    v2->_exists = [v3 itemExistsAtURL:v4];
  }

  exists = v2->_exists;
  objc_sync_exit(v2);

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
    v5 = [(MCMContainerClassPath *)self classURL];
    v11 = 0;
    v6 = [v4 checkFileSystemAtURL:v5 supportsPerFileKeys:&self->_supportsDataProtection error:&v11];
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

- (BOOL)createIfNecessaryWithError:(id *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_classURLCreated)
  {
    classURLCreated = 1;
  }

  else
  {
    v6 = [(MCMContainerClassPath *)self classURL];
    v7 = [(MCMContainerClassPath *)self posixMode];
    v8 = [(MCMContainerClassPath *)self posixOwner];
    self->_classURLCreated = [(MCMContainerClassPath *)self _createURLIfNecessary:v6 mode:v7 owner:v8 dataProtectionClass:0xFFFFFFFFLL quarantine:0 error:a3];

    classURLCreated = self->_classURLCreated;
  }

  v9 = *MEMORY[0x1E69E9840];
  return classURLCreated;
}

+ (id)_baseURLForUserIdentity:(id)a3 containerClass:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 isGlobalContainerClass:a4];

  if (v8)
  {
    v9 = containermanager_copy_global_configuration();
    v10 = [v9 sharedContainersDirectory];
  }

  else if (v6)
  {
    v10 = [a1 _baseURLForUserIdentity:v6];
  }

  else
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 134217984;
      v15 = a4;
      _os_log_fault_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", &v14, 0xCu);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_baseURLForUserIdentity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 homeDirectoryURL];
  if (!v4)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "+[MCMContainerClassPath _baseURLForUserIdentity:]";
      v11 = 2112;
      v12 = v3;
      _os_log_fault_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_FAULT, "%s: User identity has a nil home directory; userIdentity = %@", &v9, 0x16u);
    }
  }

  v6 = [v4 URLByAppendingPathComponent:@"Containers" isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_classComponentForContainerClass:(unint64_t)a3
{
  if (a3 - 1 > 0xD)
  {
    result = @"Unknown";
  }

  else
  {
    result = off_1E86B1018[a3 - 1];
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_categoryComponentForContainerClass:(unint64_t)a3
{
  if (a3 - 1 > 0xD)
  {
    result = 0;
  }

  else
  {
    result = off_1E86B0FA8[a3 - 1];
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unsigned)_modeForContainerClass:(unint64_t)a3
{
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 493;
}

+ (id)posixOwnerForContainerClass:(unint64_t)a3 user:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (a3 <= 0xE && ((1 << a3) & 0x412A) != 0 && (v6 = containermanager_copy_global_configuration(), v7 = [v6 isUnsupportedBundleContainerWithContainerClass:a3], v6, (v7 & 1) == 0))
  {
    v11 = containermanager_copy_global_configuration();
    v12 = [v11 bundleContainerOwner];
  }

  else
  {
    if (a3 & 0xFFFFFFFFFFFFFFFELL) != 0xC || (v8 = containermanager_copy_global_configuration(), v9 = [v8 isUnsupportedSystemContainerWithContainerClass:a3], v8, (v9))
    {
      v10 = v5;
      goto LABEL_10;
    }

    v11 = containermanager_copy_global_configuration();
    v12 = [v11 systemContainerOwner];
  }

  v10 = v12;

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _baseURLForUserIdentity:v6 containerClass:a4];
  v8 = [a1 _categoryComponentForContainerClass:a4];
  v9 = [a1 _classComponentForContainerClass:a4];
  v10 = [v6 posixUser];
  v11 = [a1 posixOwnerForContainerClass:a4 user:v10];

  v12 = [[a1 alloc] initWithBaseURL:v7 categoryComponent:v8 classComponent:v9 containerClass:a4 POSIXOwner:v11 POSIXMode:objc_msgSend(a1 userIdentity:{"_modeForContainerClass:", a4), v6}];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)containerPathForContainerIdentity:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userIdentity];
  v6 = [v4 containerClass];

  v7 = [a1 containerPathForUserIdentity:v5 containerClass:v6];

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