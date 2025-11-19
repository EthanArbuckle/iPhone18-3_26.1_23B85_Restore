@interface MCMGlobalConfiguration
- (BOOL)handlesGlobalContainers;
- (BOOL)handlesUserContainers;
- (BOOL)isGlobalBundleContainerWithContainerClass:(unint64_t)a3;
- (BOOL)isGlobalContainerClass:(unint64_t)a3;
- (BOOL)isGlobalSystemContainerWithContainerClass:(unint64_t)a3;
- (BOOL)isInternalImage;
- (BOOL)isPerUserBundleContainerWithContainerClass:(unint64_t)a3;
- (BOOL)isUnsupportedBundleContainerWithContainerClass:(unint64_t)a3;
- (BOOL)isUnsupportedSystemContainerWithContainerClass:(unint64_t)a3;
- (BOOL)isUserBundleContainerWithContainerClass:(unint64_t)a3;
- (BOOL)isUserSystemContainerWithContainerClass:(unint64_t)a3;
- (BOOL)kernelUpcallEnabled;
- (MCMContainerClassIterator)classIterator;
- (MCMContainerClassPathCache)classPathCache;
- (MCMGlobalConfiguration)initWithStaticConfig:(id)a3 runMode:(unsigned int)a4 userContainerMode:(unsigned int)a5 bundleContainerMode:(unsigned int)a6 bundleContainerOwner:(id)a7 systemContainerMode:(unsigned int)a8 systemContainerOwner:(id)a9 kernelUpcallEnabled:(BOOL)a10;
- (MCMLibraryRepair)libraryRepair;
- (MCMManagedPathRegistry)managedPathRegistry;
- (MCMPOSIXUser)bundleContainerOwner;
- (MCMPOSIXUser)currentUser;
- (MCMPOSIXUser)defaultUser;
- (MCMPOSIXUser)systemContainerOwner;
- (MCMStaticConfiguration)staticConfig;
- (NSArray)appUserDataItemNames;
- (NSArray)excludedFromAppUserData;
- (NSString)csIdentifier;
- (NSURL)sharedContainersDirectory;
- (unsigned)bundleContainerMode;
- (unsigned)dispositionForContainerClass:(unint64_t)a3;
- (unsigned)dispositionForContainerClass:(unint64_t)a3 forUser:(id)a4;
- (unsigned)runmode;
- (unsigned)systemContainerMode;
- (unsigned)userContainerMode;
- (void)setIsInternalImage:(BOOL)a3;
- (void)signpostFirstContainerClass:(unint64_t)a3;
@end

@implementation MCMGlobalConfiguration

- (unsigned)userContainerMode
{
  result = self->_userContainerMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)defaultUser
{
  result = self->_defaultUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMStaticConfiguration)staticConfig
{
  result = self->_staticConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)runmode
{
  result = self->_runmode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)currentUser
{
  result = self->_currentUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerClassPathCache)classPathCache
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_classPathCache)
  {
    v3 = [MCMContainerClassPathCache alloc];
    v4 = +[MCMUserIdentitySharedCache sharedInstance];
    v5 = [(MCMContainerClassPathCache *)v3 initWithUserIdentityCache:v4];
    classPathCache = v2->_classPathCache;
    v2->_classPathCache = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_classPathCache;
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unsigned)systemContainerMode
{
  result = self->_systemContainerMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)csIdentifier
{
  result = self->_csIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)kernelUpcallEnabled
{
  result = self->_kernelUpcallEnabled;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMLibraryRepair)libraryRepair
{
  result = self->_libraryRepair;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPathRegistry)managedPathRegistry
{
  result = self->_managedPathRegistry;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)systemContainerOwner
{
  result = self->_systemContainerOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)bundleContainerOwner
{
  result = self->_bundleContainerOwner;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)bundleContainerMode
{
  result = self->_bundleContainerMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setIsInternalImage:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_isInternalImage = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (MCMContainerClassIterator)classIterator
{
  result = self->_classIterator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)dispositionForContainerClass:(unint64_t)a3 forUser:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 <= 8 && ((1 << a3) & 0x12A) != 0)
  {
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 bundleContainerMode];

    v9 = v8 - 1;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v12 = containermanager_copy_global_configuration();
    v13 = v12;
    if (v11 != 12)
    {
      v15 = [v12 userContainerMode];

      if (v15 == 2 || v15 == 1 && (!v6 || (-[MCMGlobalConfiguration defaultUser](self, "defaultUser"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v6 isEqual:v16], v16, v17)))
      {
        v10 = 1;
        goto LABEL_14;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v14 = [v12 systemContainerMode];

    v9 = v14 - 1;
  }

  if (v9 >= 3)
  {
    goto LABEL_13;
  }

  v10 = dword_1DF3BE4C4[v9];
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unsigned)dispositionForContainerClass:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMGlobalConfiguration *)self dispositionForContainerClass:a3 forUser:0];
}

- (BOOL)handlesUserContainers
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = containermanager_copy_global_configuration();
  if ([v2 userContainerMode])
  {
    v3 = 1;
  }

  else
  {
    v4 = containermanager_copy_global_configuration();
    if ([v4 bundleContainerMode] == 2)
    {
      v3 = 1;
    }

    else
    {
      v5 = containermanager_copy_global_configuration();
      v3 = [v5 systemContainerMode] == 2;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)handlesGlobalContainers
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = containermanager_copy_global_configuration();
  if ([v2 bundleContainerMode] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = containermanager_copy_global_configuration();
    v3 = [v4 systemContainerMode] == 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isGlobalContainerClass:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 - 2 < 0xD && ((0x13B5u >> (a3 - 2)) & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else if ([(MCMGlobalConfiguration *)self isGlobalSystemContainerWithContainerClass:a3]|| (v5 = [(MCMGlobalConfiguration *)self isGlobalBundleContainerWithContainerClass:a3]))
  {
    LOBYTE(v5) = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isUnsupportedBundleContainerWithContainerClass:(unint64_t)a3
{
  v3 = 0;
  v7 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xE && ((1 << a3) & 0x412A) != 0)
  {
    v4 = containermanager_copy_global_configuration();
    v3 = [v4 bundleContainerMode] == 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isUserBundleContainerWithContainerClass:(unint64_t)a3
{
  v3 = 0;
  v7 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xE)
  {
    if (((1 << a3) & 0x12A) != 0)
    {
      v4 = containermanager_copy_global_configuration();
      v3 = [v4 bundleContainerMode] == 2;
    }

    else
    {
      if (a3 != 14)
      {
        goto LABEL_5;
      }

      v4 = containermanager_copy_global_configuration();
      v3 = [v4 bundleContainerMode] != 0;
    }
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isPerUserBundleContainerWithContainerClass:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 == 14)
  {
    v3 = containermanager_copy_global_configuration();
    v4 = [v3 bundleContainerMode] != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isGlobalBundleContainerWithContainerClass:(unint64_t)a3
{
  v3 = 0;
  v7 = *MEMORY[0x1E69E9840];
  if (a3 <= 8 && ((1 << a3) & 0x12A) != 0)
  {
    v4 = containermanager_copy_global_configuration();
    v3 = [v4 bundleContainerMode] == 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isUnsupportedSystemContainerWithContainerClass:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v3 = containermanager_copy_global_configuration();
    v4 = [v3 systemContainerMode] == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isUserSystemContainerWithContainerClass:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v3 = containermanager_copy_global_configuration();
    v4 = [v3 systemContainerMode] == 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isGlobalSystemContainerWithContainerClass:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v3 = containermanager_copy_global_configuration();
    v4 = [v3 systemContainerMode] == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isInternalImage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MCMGlobalConfiguration_isInternalImage__block_invoke;
  v5[3] = &unk_1E86B0E08;
  v5[4] = self;
  if (isInternalImage_onceToken != -1)
  {
    dispatch_once(&isInternalImage_onceToken, v5);
  }

  result = self->_isInternalImage;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __41__MCMGlobalConfiguration_isInternalImage__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = os_variant_has_internal_content();
  *(*(a1 + 32) + 24) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)excludedFromAppUserData
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return &unk_1F5A77038;
}

- (NSArray)appUserDataItemNames
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return &unk_1F5A77020;
}

- (NSURL)sharedContainersDirectory
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MCMGlobalConfiguration *)self currentUser];
  v4 = [v3 isRoot];

  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (!v5->_sharedContainersDirectory)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/containers" isDirectory:1];
      sharedContainersDirectory = v5->_sharedContainersDirectory;
      v5->_sharedContainersDirectory = v6;
    }

    v8 = +[MCMFileManager defaultManager];
    v9 = v5->_sharedContainersDirectory;
    v18 = 0;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 mode:493 error:&v18];
    v11 = v18;

    if ((v10 & 1) == 0)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = [(NSURL *)v5->_sharedContainersDirectory path];
        *buf = 138412546;
        v20 = v17;
        v21 = 2112;
        v22 = v11;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to create shared container dir at %@: %@", buf, 0x16u);
      }

      v13 = v5->_sharedContainersDirectory;
      v5->_sharedContainersDirectory = 0;
    }

    objc_sync_exit(v5);
  }

  v14 = self->_sharedContainersDirectory;
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)signpostFirstContainerClass:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 - 1 <= 0xD)
  {
    v3 = container_class_normalized();
    os_unfair_lock_lock_with_options();
    v4 = gSignpostedFirstContainerOfClass[v3];
    gSignpostedFirstContainerOfClass[v3] = 0;
    os_unfair_lock_unlock(&gSignpostedFirstContainerOfClassLock + v3);
    if (v4)
    {
      v5 = container_log_handle_for_category();
      v6 = v5;
      if (v4 != -1 && os_signpost_enabled(v5))
      {
        v8 = 134349056;
        v9 = v3;
        _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v6, OS_SIGNPOST_INTERVAL_END, v4, "VendFirstContainerOfClass", " class=%{public, signpost.description:attribute}llu ", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (MCMGlobalConfiguration)initWithStaticConfig:(id)a3 runMode:(unsigned int)a4 userContainerMode:(unsigned int)a5 bundleContainerMode:(unsigned int)a6 bundleContainerOwner:(id)a7 systemContainerMode:(unsigned int)a8 systemContainerOwner:(id)a9 kernelUpcallEnabled:(BOOL)a10
{
  v60 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a7;
  v50 = a9;
  v51.receiver = self;
  v51.super_class = MCMGlobalConfiguration;
  v19 = [(MCMGlobalConfiguration *)&v51 init];
  if (!v19)
  {
LABEL_12:

    v42 = *MEMORY[0x1E69E9840];
    return v19;
  }

  container_class_for_each_normalized_class();
  objc_storeStrong(&v19->_staticConfig, a3);
  v20 = [[MCMContainerClassIterator alloc] initWithStaticConfig:v17];
  classIterator = v19->_classIterator;
  v19->_classIterator = v20;

  v19->_runmode = a4;
  v19->_userContainerMode = a5;
  v19->_bundleContainerMode = a6;
  objc_storeStrong(&v19->_bundleContainerOwner, a7);
  v19->_systemContainerMode = a8;
  objc_storeStrong(&v19->_systemContainerOwner, a9);
  v22 = [v17 defaultUser];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = +[MCMPOSIXUser currentPOSIXUser];
  }

  defaultUser = v19->_defaultUser;
  v19->_defaultUser = v24;

  v26 = +[MCMPOSIXUser currentPOSIXUser];
  currentUser = v19->_currentUser;
  v19->_currentUser = v26;

  v19->_kernelUpcallEnabled = a10;
  v28 = [(MCMPOSIXUser *)v19->_currentUser homeDirectoryURL];
  homeDirectory = v19->_homeDirectory;
  v19->_homeDirectory = v28;

  if (v19->_homeDirectory)
  {
    v30 = [[MCMManagedPathRegistry alloc] initWithDaemonUser:v19->_currentUser privileged:a4 == 0];
    managedPathRegistry = v19->_managedPathRegistry;
    v19->_managedPathRegistry = v30;

    v32 = [MCMLibraryRepair alloc];
    v33 = v19->_managedPathRegistry;
    v34 = +[MCMFileManager defaultManager];
    v35 = [(MCMLibraryRepair *)v32 initWithManagedPathRegistry:v33 fileManager:v34 classIterator:v19->_classIterator];
    libraryRepair = v19->_libraryRepair;
    v19->_libraryRepair = v35;

    current_identifier = container_codesign_get_current_identifier();
    if (current_identifier)
    {
      v38 = current_identifier;
    }

    else
    {
      v38 = "unknown";
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v38, v18}];
    csIdentifier = v19->_csIdentifier;
    v19->_csIdentifier = v39;

    v41 = container_log_handle_for_category();
    v18 = v49;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v44 = v19->_defaultUser;
      v45 = v19->_currentUser;
      bundleContainerOwner = v19->_bundleContainerOwner;
      v47 = v19->_homeDirectory;
      *buf = 138413058;
      v53 = v44;
      v54 = 2112;
      v55 = v45;
      v56 = 2112;
      v57 = bundleContainerOwner;
      v58 = 2112;
      v59 = v47;
      _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Default user: %@, current user: %@, bundle owner: %@, home dir: [%@]", buf, 0x2Au);
    }

    goto LABEL_12;
  }

  v48 = container_log_handle_for_category();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_ERROR, "could not get home directory...aborting\n", buf, 2u);
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void __175__MCMGlobalConfiguration_initWithStaticConfig_runMode_userContainerMode_bundleContainerMode_bundleContainerOwner_systemContainerMode_systemContainerOwner_kernelUpcallEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  v4 = os_signpost_id_make_with_pointer(v3, &gSignpostedFirstContainerOfClass[a2]);

  v5 = container_log_handle_for_category();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VendFirstContainerOfClass", "", v8, 2u);
  }

  gSignpostedFirstContainerOfClass[a2] = v4;
  gSignpostedFirstContainerOfClassLock[a2] = 0;
  v7 = *MEMORY[0x1E69E9840];
}

@end