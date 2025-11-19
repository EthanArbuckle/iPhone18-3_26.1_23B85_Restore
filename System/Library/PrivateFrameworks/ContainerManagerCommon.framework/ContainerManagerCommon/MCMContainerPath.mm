@interface MCMContainerPath
+ (Class)_containerClassPathClass;
+ (id)_posixOwnerForContainerSubdirectories:(unint64_t)a3 user:(id)a4;
+ (id)containerPathForContainerClassPath:(id)a3 containerPathIdentifier:(id)a4;
+ (id)containerPathForContainerIdentity:(id)a3 containerPathIdentifier:(id)a4;
+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4 containerPathIdentifier:(id)a5;
+ (id)containerPathFromURL:(id)a3 containerClassPath:(id)a4 relativePath:(id *)a5;
+ (id)containerPathIdentifierForCodeSignIdentifier:(id)a3 containerClass:(unint64_t)a4;
- (BOOL)_createURLIfNecessary:(id)a3 mode:(unsigned __int16)a4 owner:(id)a5 dataProtectionClass:(int)a6 quarantine:(BOOL)a7 exists:(BOOL *)a8 error:(id *)a9;
- (BOOL)_obj1:(id)a3 isEqualToObj2:(id)a4;
- (BOOL)exists;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainerPath:(id)a3;
- (BOOL)isRandomized;
- (BOOL)transient;
- (MCMContainerClassPath)containerClassPath;
- (MCMContainerPath)initWithContainerClassPath:(id)a3 containerPathIdentifier:(id)a4 containerRootComponent:(id)a5 containerDataComponent:(id)a6;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)urlForPart:(unint64_t)a3 partDomain:(id)a4 error:(id *)a5;
- (unint64_t)containerClass;
- (unint64_t)hash;
- (unsigned)dataPOSIXMode;
- (unsigned)rootPOSIXMode;
- (unsigned)schemaPOSIXMode;
- (void)setExists:(BOOL)a3;
@end

@implementation MCMContainerPath

- (NSURL)containerRootURL
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMContainerPath *)self containerClassPath];
  v4 = [v3 classURL];
  v5 = [(MCMContainerPath *)self containerRootComponent];
  v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:1];

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
  v2 = [(MCMContainerPath *)self containerRootURL];
  v3 = [v2 URLByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist" isDirectory:0];

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
  v3 = [(MCMContainerPath *)self containerRootURL];
  v4 = [(MCMContainerPath *)self containerDataComponent];

  if (v4)
  {
    v5 = [(MCMContainerPath *)self containerDataComponent];
    v6 = [v3 URLByAppendingPathComponent:v5 isDirectory:1];

    v3 = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MCMUserIdentity)userIdentity
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerPath *)self containerClassPath];
  v3 = [v2 userIdentity];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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
  v2 = [(MCMContainerPath *)self containerClassPath];
  v3 = [v2 containerClass];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSString)containerPathIdentifier
{
  result = self->_containerPathIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setExists:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_exists = a3;
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

- (BOOL)_createURLIfNecessary:(id)a3 mode:(unsigned __int16)a4 owner:(id)a5 dataProtectionClass:(int)a6 quarantine:(BOOL)a7 exists:(BOOL *)a8 error:(id *)a9
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  v17 = [(MCMContainerPath *)self containerClassPath];
  v18 = [v17 userIdentity];
  v19 = [v16 libraryRepairForUserIdentity:v18];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__MCMContainerPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_exists_error___block_invoke;
  v26[3] = &unk_1E86B0A48;
  v26[4] = self;
  v30 = a4;
  v20 = v15;
  v29 = a6;
  v31 = a7;
  v27 = v20;
  v28 = &v32;
  v21 = [v19 fixAndRetryIfPermissionsErrorWithURL:v14 containerPath:self containerIdentifier:0 error:a9 duringBlock:v26];
  v22 = v21 ^ 1;
  if (!a8)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    *a8 = *(v33 + 24);
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

- (BOOL)isRandomized
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [(MCMContainerPath *)self containerPathIdentifier];
  v5 = [v3 initWithUUIDString:v4];
  LOBYTE(self) = v5 != 0;

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 24), self->_containerClassPath);
    v7 = [(NSString *)self->_containerRootComponent copyWithZone:a3];
    v8 = *(v6 + 56);
    *(v6 + 56) = v7;

    v9 = [(NSString *)self->_containerDataComponent copyWithZone:a3];
    v10 = *(v6 + 64);
    *(v6 + 64) = v9;

    v11 = [(NSString *)self->_containerPathIdentifier copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self == v4;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMContainerPath *)self isEqualToContainerPath:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToContainerPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMContainerPath *)self _obj1:self->_containerClassPath isEqualToObj2:v4[3]]&& [(MCMContainerPath *)self _obj1:self->_containerRootComponent isEqualToObj2:v4[7]]&& [(MCMContainerPath *)self _obj1:self->_containerDataComponent isEqualToObj2:v4[8]];

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

- (MCMContainerPath)initWithContainerClassPath:(id)a3 containerPathIdentifier:(id)a4 containerRootComponent:(id)a5 containerDataComponent:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = MCMContainerPath;
  v15 = [(MCMContainerPath *)&v30 init];
  v16 = v15;
  if (v15)
  {
    v15->_exists = 0;
    v17 = [v11 containerClass];
    objc_storeStrong(&v16->_containerClassPath, a3);
    objc_storeStrong(&v16->_containerPathIdentifier, a4);
    objc_storeStrong(&v16->_containerRootComponent, a5);
    objc_storeStrong(&v16->_containerDataComponent, a6);
    if (v16->_containerClassPath && v16->_containerRootComponent)
    {
      v16->_rootPOSIXMode = [v11 posixMode];
      v16->_dataPOSIXMode = [v11 posixMode];
      v16->_schemaPOSIXMode = 493;
      if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
      {
        v18 = containermanager_copy_global_configuration();
        v19 = [v18 systemContainerMode];

        if (v19 == 1)
        {
          v16->_schemaPOSIXMode = 0;
        }
      }

      v20 = [v11 posixOwner];
      rootPOSIXOwner = v16->_rootPOSIXOwner;
      v16->_rootPOSIXOwner = v20;

      v22 = [v11 posixOwner];
      dataPOSIXOwner = v16->_dataPOSIXOwner;
      v16->_dataPOSIXOwner = v22;

      v24 = objc_opt_class();
      v25 = [v11 posixOwner];
      v26 = [v24 _posixOwnerForContainerSubdirectories:v17 user:v25];
      schemaPOSIXOwner = v16->_schemaPOSIXOwner;
      v16->_schemaPOSIXOwner = v26;
    }

    else
    {
      v25 = v16;
      v16 = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

- (NSURL)classURL
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerPath *)self containerClassPath];
  v3 = [v2 classURL];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSURL)categoryURL
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerPath *)self containerClassPath];
  v3 = [v2 categoryURL];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSURL)baseURL
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMContainerPath *)self containerClassPath];
  v3 = [v2 baseURL];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)urlForPart:(unint64_t)a3 partDomain:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3 - 2 < 5)
  {
    [(MCMContainerPath *)self containerClass];
    [v8 fileSystemRepresentation];
    v9 = container_paths_copy_part_subpath();
    __s = v9;
    if (v9)
    {
      v10 = v9;
      v11 = [(MCMContainerPath *)self containerDataURL];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:1];

      free(v10);
      memset_s(&__s, 8uLL, 0, 8uLL);
      goto LABEL_15;
    }

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = gContainerPartNames[a3];
      v20 = gContainerClassNames[[(MCMContainerPath *)self containerClass]];
      *buf = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Container part [%@] not supported by containers of class [%@]", buf, 0x16u);
    }

LABEL_12:
    v16 = [[MCMError alloc] initWithErrorType:38 category:3];
    v13 = 0;
    if (a5)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Invalid container part [%llu]", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v13 = [(MCMContainerPath *)self containerDataURL];
LABEL_15:
  v16 = 0;
  if (a5)
  {
LABEL_16:
    if (!v13)
    {
      v16 = v16;
      *a5 = v16;
    }
  }

LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_posixOwnerForContainerSubdirectories:(unint64_t)a3 user:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 <= 0xE && ((1 << a3) & 0x412A) != 0)
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 bundleContainerOwner];
LABEL_4:
    v9 = v8;

    goto LABEL_5;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v12 = containermanager_copy_global_configuration();
    v13 = [v12 systemContainerMode];

    if (v13 != 1)
    {
      v7 = containermanager_copy_global_configuration();
      v8 = [v7 systemContainerOwner];
      goto LABEL_4;
    }

    v14 = +[MCMPOSIXUser nobody];
  }

  else
  {
    v14 = v5;
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

+ (id)containerPathFromURL:(id)a3 containerClassPath:(id)a4 relativePath:(id *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [v8 classURL];
  v11 = [v10 path];

  v12 = [v11 pathComponents];
  v13 = [v9 path];

  v14 = [v13 pathComponents];

  v15 = [v12 count];
  if (v15 >= [v14 count])
  {
    v20 = 0;
    v22 = 0;
  }

  else
  {
    v16 = [v12 count];
    v17 = [v14 count];
    v18 = v17 - v16;
    v19 = [v14 subarrayWithRange:{v16, v17 - v16}];

    v20 = [v19 firstObject];
    [v8 containerClass];
    if (container_class_supports_data_subdirectory())
    {
      v21 = @"Data";
    }

    else
    {
      v21 = 0;
    }

    v22 = [[a1 alloc] initWithContainerClassPath:v8 containerPathIdentifier:v20 containerRootComponent:v20 containerDataComponent:v21];
    if (a5)
    {
      v14 = [v19 subarrayWithRange:{1, v18 - 1}];

      *a5 = [v14 componentsJoinedByString:@"/"];
    }

    else
    {
      v14 = v19;
    }
  }

  v23 = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)containerPathIdentifierForCodeSignIdentifier:(id)a3 containerClass:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 fsSanitizedStringFromString:v5 allowSpaces:a4 == 7];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)containerPathForContainerClassPath:(id)a3 containerPathIdentifier:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v5 containerClass];
  v7 = container_class_supports_data_subdirectory();
  v8 = objc_opt_class();
  v9 = off_1E86AF4E8;
  if (([v5 isMemberOfClass:{+[MCMContainerStagingPath _containerClassPathClass](MCMContainerStagingPath, "_containerClassPathClass")}] & 1) != 0 || (v9 = off_1E86AF4F0, objc_msgSend(v5, "isMemberOfClass:", +[MCMContainerTransientPath _containerClassPathClass](MCMContainerTransientPath, "_containerClassPathClass"))))
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

+ (id)containerPathForUserIdentity:(id)a3 containerClass:(unint64_t)a4 containerPathIdentifier:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 staticConfig];
  v12 = [v11 configForContainerClass:a4];

  v13 = containermanager_copy_global_configuration();
  v14 = [v13 classPathCache];
  v15 = [v14 containerClassPathForUserIdentity:v9 containerConfig:v12 typeClass:{objc_msgSend(a1, "_containerClassPathClass")}];

  v16 = [a1 containerPathForContainerClassPath:v15 containerPathIdentifier:v8];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)containerPathForContainerIdentity:(id)a3 containerPathIdentifier:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 userIdentity];
  v9 = [v7 containerClass];

  v10 = [a1 containerPathForUserIdentity:v8 containerClass:v9 containerPathIdentifier:v6];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)containerPathForRealPath
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[MCMFileManager defaultManager];
  v4 = [(MCMContainerPath *)self containerRootURL];
  v16 = 0;
  v5 = [v3 realPathForURL:v4 isDirectory:1 error:&v16];
  v6 = v16;

  if (v5)
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [(MCMContainerPath *)self containerClassPath];
    v9 = [v5 lastPathComponent];
    v10 = [v5 lastPathComponent];
    v11 = [(MCMContainerPath *)self containerDataComponent];
    v12 = [v7 initWithContainerClassPath:v8 containerPathIdentifier:v9 containerRootComponent:v10 containerDataComponent:v11];
  }

  else
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [0 containerRootURL];
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Could not get realpath for [%@]; error = %@", buf, 0x16u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end