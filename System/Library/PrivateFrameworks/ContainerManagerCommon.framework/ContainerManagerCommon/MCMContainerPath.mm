@interface MCMContainerPath
+ (Class)_containerClassPathClass;
+ (id)_posixOwnerForContainerSubdirectories:(unint64_t)subdirectories user:(id)user;
+ (id)containerPathForContainerClassPath:(id)path containerPathIdentifier:(id)identifier;
+ (id)containerPathForContainerIdentity:(id)identity containerPathIdentifier:(id)identifier;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier;
+ (id)containerPathFromURL:(id)l containerClassPath:(id)path relativePath:(id *)relativePath;
+ (id)containerPathIdentifierForCodeSignIdentifier:(id)identifier containerClass:(unint64_t)class;
- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine exists:(BOOL *)exists error:(id *)error;
- (BOOL)_obj1:(id)_obj1 isEqualToObj2:(id)obj2;
- (BOOL)exists;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerPath:(id)path;
- (BOOL)isRandomized;
- (BOOL)transient;
- (MCMContainerClassPath)containerClassPath;
- (MCMContainerPath)initWithContainerClassPath:(id)path containerPathIdentifier:(id)identifier containerRootComponent:(id)component containerDataComponent:(id)dataComponent;
- (MCMPOSIXUser)dataPOSIXOwner;
- (MCMPOSIXUser)rootPOSIXOwner;
- (MCMPOSIXUser)schemaPOSIXOwner;
- (MCMUserIdentity)userIdentity;
- (NSString)containerDataComponent;
- (NSString)containerPathIdentifier;
- (NSString)containerRootComponent;
- (NSString)description;
- (NSURL)baseURL;
- (NSURL)categoryURL;
- (NSURL)classURL;
- (NSURL)containerDataURL;
- (NSURL)containerRootURL;
- (NSURL)metadataURL;
- (id)containerPathForRealPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlForPart:(unint64_t)part partDomain:(id)domain error:(id *)error;
- (unint64_t)containerClass;
- (unint64_t)hash;
- (unsigned)dataPOSIXMode;
- (unsigned)rootPOSIXMode;
- (unsigned)schemaPOSIXMode;
- (void)setExists:(BOOL)exists;
@end

@implementation MCMContainerPath

- (NSURL)containerRootURL
{
  v9 = *MEMORY[0x1E69E9840];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  classURL = [containerClassPath classURL];
  containerRootComponent = [(MCMContainerPath *)self containerRootComponent];
  v6 = [classURL URLByAppendingPathComponent:containerRootComponent isDirectory:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)containerRootComponent
{
  result = self->_containerRootComponent;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerClassPath)containerClassPath
{
  result = self->_containerClassPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)metadataURL
{
  v6 = *MEMORY[0x1E69E9840];
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  v3 = [containerRootURL URLByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist" isDirectory:0];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)transient
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

- (NSURL)containerDataURL
{
  v9 = *MEMORY[0x1E69E9840];
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  containerDataComponent = [(MCMContainerPath *)self containerDataComponent];

  if (containerDataComponent)
  {
    containerDataComponent2 = [(MCMContainerPath *)self containerDataComponent];
    v6 = [containerRootURL URLByAppendingPathComponent:containerDataComponent2 isDirectory:1];

    containerRootURL = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return containerRootURL;
}

- (MCMUserIdentity)userIdentity
{
  v6 = *MEMORY[0x1E69E9840];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  userIdentity = [containerClassPath userIdentity];

  v4 = *MEMORY[0x1E69E9840];

  return userIdentity;
}

- (NSString)containerDataComponent
{
  result = self->_containerDataComponent;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  v6 = *MEMORY[0x1E69E9840];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  containerClass = [containerClassPath containerClass];

  v4 = *MEMORY[0x1E69E9840];
  return containerClass;
}

- (NSString)containerPathIdentifier
{
  result = self->_containerPathIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setExists:(BOOL)exists
{
  v4 = *MEMORY[0x1E69E9840];
  self->_exists = exists;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)exists
{
  result = self->_exists;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)schemaPOSIXMode
{
  result = self->_schemaPOSIXMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)schemaPOSIXOwner
{
  result = self->_schemaPOSIXOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)dataPOSIXMode
{
  result = self->_dataPOSIXMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)dataPOSIXOwner
{
  result = self->_dataPOSIXOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)rootPOSIXMode
{
  result = self->_rootPOSIXMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)rootPOSIXOwner
{
  result = self->_rootPOSIXOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine exists:(BOOL *)exists error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  ownerCopy = owner;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  v19 = [v16 libraryRepairForUserIdentity:userIdentity];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__MCMContainerPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_exists_error___block_invoke;
  v26[3] = &unk_1E86B0A48;
  v26[4] = self;
  modeCopy = mode;
  v20 = ownerCopy;
  classCopy = class;
  quarantineCopy = quarantine;
  v27 = v20;
  v28 = &v32;
  v21 = [v19 fixAndRetryIfPermissionsErrorWithURL:necessaryCopy containerPath:self containerIdentifier:0 error:error duringBlock:v26];
  v22 = v21 ^ 1;
  if (!exists)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    *exists = *(v33 + 24);
  }

  _Block_object_dispose(&v32, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __97__MCMContainerPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_exists_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 containerClassPath];
  v8 = [objc_opt_class() _inLibraryRepairBlock_createURLIfNecessary:v6 mode:*(a1 + 60) owner:*(a1 + 40) dataProtectionClass:*(a1 + 56) quarantine:*(a1 + 62) exists:*(*(a1 + 48) + 8) + 24 error:a3];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
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

- (BOOL)isRandomized
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  containerPathIdentifier = [(MCMContainerPath *)self containerPathIdentifier];
  v5 = [v3 initWithUUIDString:containerPathIdentifier];
  LOBYTE(self) = v5 != 0;

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 24), self->_containerClassPath);
    v7 = [(NSString *)self->_containerRootComponent copyWithZone:zone];
    v8 = *(v6 + 56);
    *(v6 + 56) = v7;

    v9 = [(NSString *)self->_containerDataComponent copyWithZone:zone];
    v10 = *(v6 + 64);
    *(v6 + 64) = v9;

    v11 = [(NSString *)self->_containerPathIdentifier copyWithZone:zone];
    v12 = *(v6 + 16);
    *(v6 + 16) = v11;

    *(v6 + 10) = self->_rootPOSIXMode;
    *(v6 + 12) = self->_dataPOSIXMode;
    *(v6 + 14) = self->_schemaPOSIXMode;
    objc_storeStrong((v6 + 32), self->_rootPOSIXOwner);
    objc_storeStrong((v6 + 40), self->_dataPOSIXOwner);
    objc_storeStrong((v6 + 48), self->_schemaPOSIXOwner);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = self == equalCopy;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMContainerPath *)self isEqualToContainerPath:equalCopy];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToContainerPath:(id)path
{
  v8 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [(MCMContainerPath *)self _obj1:self->_containerClassPath isEqualToObj2:pathCopy[3]]&& [(MCMContainerPath *)self _obj1:self->_containerRootComponent isEqualToObj2:pathCopy[7]]&& [(MCMContainerPath *)self _obj1:self->_containerDataComponent isEqualToObj2:pathCopy[8]];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(MCMContainerClassPath *)self->_containerClassPath hash];
  v4 = [(NSString *)self->_containerRootComponent hash];
  v5 = [(NSString *)self->_containerDataComponent hash];
  v6 = *MEMORY[0x1E69E9840];
  return v4 ^ v3 ^ v5;
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MCMContainerPath_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __31__MCMContainerPath_description__block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *(a1 + 32);
  v10 = [v9 containerClassPath];
  v11 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
    v2 = [*(a1 + 32) containerRootComponent];
    v13 = [v2 redactedDescription];
  }

  else
  {
    v13 = [*(a1 + 32) containerRootComponent];
    v12 = v11;
  }

  v14 = [*(a1 + 32) containerDataComponent];
  v15 = [*(a1 + 32) exists];
  v16 = "";
  if (v15)
  {
    v16 = " exists";
  }

  v17 = [v5 stringWithFormat:@"<%@: %p [%@]/[%@]/[%@]%s>", v8, v9, v12, v13, v14, v16];;

  if (a2)
  {

    v13 = v12;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (MCMContainerPath)initWithContainerClassPath:(id)path containerPathIdentifier:(id)identifier containerRootComponent:(id)component containerDataComponent:(id)dataComponent
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  componentCopy = component;
  dataComponentCopy = dataComponent;
  v30.receiver = self;
  v30.super_class = MCMContainerPath;
  v15 = [(MCMContainerPath *)&v30 init];
  v16 = v15;
  if (v15)
  {
    v15->_exists = 0;
    containerClass = [pathCopy containerClass];
    objc_storeStrong(&v16->_containerClassPath, path);
    objc_storeStrong(&v16->_containerPathIdentifier, identifier);
    objc_storeStrong(&v16->_containerRootComponent, component);
    objc_storeStrong(&v16->_containerDataComponent, dataComponent);
    if (v16->_containerClassPath && v16->_containerRootComponent)
    {
      v16->_rootPOSIXMode = [pathCopy posixMode];
      v16->_dataPOSIXMode = [pathCopy posixMode];
      v16->_schemaPOSIXMode = 493;
      if ((containerClass & 0xFFFFFFFFFFFFFFFELL) == 0xC)
      {
        v18 = containermanager_copy_global_configuration();
        systemContainerMode = [v18 systemContainerMode];

        if (systemContainerMode == 1)
        {
          v16->_schemaPOSIXMode = 0;
        }
      }

      posixOwner = [pathCopy posixOwner];
      rootPOSIXOwner = v16->_rootPOSIXOwner;
      v16->_rootPOSIXOwner = posixOwner;

      posixOwner2 = [pathCopy posixOwner];
      dataPOSIXOwner = v16->_dataPOSIXOwner;
      v16->_dataPOSIXOwner = posixOwner2;

      v24 = objc_opt_class();
      posixOwner3 = [pathCopy posixOwner];
      v26 = [v24 _posixOwnerForContainerSubdirectories:containerClass user:posixOwner3];
      schemaPOSIXOwner = v16->_schemaPOSIXOwner;
      v16->_schemaPOSIXOwner = v26;
    }

    else
    {
      posixOwner3 = v16;
      v16 = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

- (NSURL)classURL
{
  v6 = *MEMORY[0x1E69E9840];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  classURL = [containerClassPath classURL];

  v4 = *MEMORY[0x1E69E9840];

  return classURL;
}

- (NSURL)categoryURL
{
  v6 = *MEMORY[0x1E69E9840];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  categoryURL = [containerClassPath categoryURL];

  v4 = *MEMORY[0x1E69E9840];

  return categoryURL;
}

- (NSURL)baseURL
{
  v6 = *MEMORY[0x1E69E9840];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  baseURL = [containerClassPath baseURL];

  v4 = *MEMORY[0x1E69E9840];

  return baseURL;
}

- (id)urlForPart:(unint64_t)part partDomain:(id)domain error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  if (part - 2 < 5)
  {
    [(MCMContainerPath *)self containerClass];
    [domainCopy fileSystemRepresentation];
    v9 = container_paths_copy_part_subpath();
    __s = v9;
    if (v9)
    {
      v10 = v9;
      containerDataURL = [(MCMContainerPath *)self containerDataURL];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      containerDataURL2 = [containerDataURL URLByAppendingPathComponent:v12 isDirectory:1];

      free(v10);
      memset_s(&__s, 8uLL, 0, 8uLL);
      goto LABEL_15;
    }

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = gContainerPartNames[part];
      v20 = gContainerClassNames[[(MCMContainerPath *)self containerClass]];
      *buf = 138412546;
      partCopy = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Container part [%@] not supported by containers of class [%@]", buf, 0x16u);
    }

LABEL_12:
    v16 = [[MCMError alloc] initWithErrorType:38 category:3];
    containerDataURL2 = 0;
    if (error)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (part)
  {
    if (part == 1)
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      partCopy = part;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Invalid container part [%llu]", buf, 0xCu);
    }

    goto LABEL_12;
  }

  containerDataURL2 = [(MCMContainerPath *)self containerDataURL];
LABEL_15:
  v16 = 0;
  if (error)
  {
LABEL_16:
    if (!containerDataURL2)
    {
      v16 = v16;
      *error = v16;
    }
  }

LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return containerDataURL2;
}

+ (id)_posixOwnerForContainerSubdirectories:(unint64_t)subdirectories user:(id)user
{
  v15 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v6 = userCopy;
  if (subdirectories <= 0xE && ((1 << subdirectories) & 0x412A) != 0)
  {
    v7 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v7 bundleContainerOwner];
LABEL_4:
    v9 = bundleContainerOwner;

    goto LABEL_5;
  }

  if ((subdirectories & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v12 = containermanager_copy_global_configuration();
    systemContainerMode = [v12 systemContainerMode];

    if (systemContainerMode != 1)
    {
      v7 = containermanager_copy_global_configuration();
      bundleContainerOwner = [v7 systemContainerOwner];
      goto LABEL_4;
    }

    v14 = +[MCMPOSIXUser nobody];
  }

  else
  {
    v14 = userCopy;
  }

  v9 = v14;
LABEL_5:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (Class)_containerClassPathClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (id)containerPathFromURL:(id)l containerClassPath:(id)path relativePath:(id *)relativePath
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  lCopy = l;
  classURL = [pathCopy classURL];
  path = [classURL path];

  pathComponents = [path pathComponents];
  path2 = [lCopy path];

  pathComponents2 = [path2 pathComponents];

  v15 = [pathComponents count];
  if (v15 >= [pathComponents2 count])
  {
    firstObject = 0;
    v22 = 0;
  }

  else
  {
    v16 = [pathComponents count];
    v17 = [pathComponents2 count];
    v18 = v17 - v16;
    v19 = [pathComponents2 subarrayWithRange:{v16, v17 - v16}];

    firstObject = [v19 firstObject];
    [pathCopy containerClass];
    if (container_class_supports_data_subdirectory())
    {
      v21 = @"Data";
    }

    else
    {
      v21 = 0;
    }

    v22 = [[self alloc] initWithContainerClassPath:pathCopy containerPathIdentifier:firstObject containerRootComponent:firstObject containerDataComponent:v21];
    if (relativePath)
    {
      pathComponents2 = [v19 subarrayWithRange:{1, v18 - 1}];

      *relativePath = [pathComponents2 componentsJoinedByString:@"/"];
    }

    else
    {
      pathComponents2 = v19;
    }
  }

  v23 = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)containerPathIdentifierForCodeSignIdentifier:(id)identifier containerClass:(unint64_t)class
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 fsSanitizedStringFromString:identifierCopy allowSpaces:class == 7];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)containerPathForContainerClassPath:(id)path containerPathIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  [pathCopy containerClass];
  v7 = container_class_supports_data_subdirectory();
  v8 = objc_opt_class();
  v9 = off_1E86AF4E8;
  if (([pathCopy isMemberOfClass:{+[MCMContainerStagingPath _containerClassPathClass](MCMContainerStagingPath, "_containerClassPathClass")}] & 1) != 0 || (v9 = off_1E86AF4F0, objc_msgSend(pathCopy, "isMemberOfClass:", +[MCMContainerTransientPath _containerClassPathClass](MCMContainerTransientPath, "_containerClassPathClass"))))
  {
    v10 = *v9;
    v8 = objc_opt_class();
  }

  if (v7)
  {
    v11 = @"Data";
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_msgSend(v8 "alloc")];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identityCopy = identity;
  v10 = containermanager_copy_global_configuration();
  staticConfig = [v10 staticConfig];
  v12 = [staticConfig configForContainerClass:class];

  v13 = containermanager_copy_global_configuration();
  classPathCache = [v13 classPathCache];
  v15 = [classPathCache containerClassPathForUserIdentity:identityCopy containerConfig:v12 typeClass:{objc_msgSend(self, "_containerClassPathClass")}];

  v16 = [self containerPathForContainerClassPath:v15 containerPathIdentifier:identifierCopy];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)containerPathForContainerIdentity:(id)identity containerPathIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  containerClass = [identityCopy containerClass];

  v10 = [self containerPathForUserIdentity:userIdentity containerClass:containerClass containerPathIdentifier:identifierCopy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)containerPathForRealPath
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[MCMFileManager defaultManager];
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  v16 = 0;
  v5 = [v3 realPathForURL:containerRootURL isDirectory:1 error:&v16];
  v6 = v16;

  if (v5)
  {
    v7 = objc_alloc(objc_opt_class());
    containerClassPath = [(MCMContainerPath *)self containerClassPath];
    lastPathComponent = [v5 lastPathComponent];
    lastPathComponent2 = [v5 lastPathComponent];
    containerDataComponent = [(MCMContainerPath *)self containerDataComponent];
    v12 = [v7 initWithContainerClassPath:containerClassPath containerPathIdentifier:lastPathComponent containerRootComponent:lastPathComponent2 containerDataComponent:containerDataComponent];
  }

  else
  {
    containerClassPath = container_log_handle_for_category();
    if (os_log_type_enabled(containerClassPath, OS_LOG_TYPE_ERROR))
    {
      containerRootURL2 = [0 containerRootURL];
      *buf = 138412546;
      v18 = containerRootURL2;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1DF2C3000, containerClassPath, OS_LOG_TYPE_ERROR, "Could not get realpath for [%@]; error = %@", buf, 0x16u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end