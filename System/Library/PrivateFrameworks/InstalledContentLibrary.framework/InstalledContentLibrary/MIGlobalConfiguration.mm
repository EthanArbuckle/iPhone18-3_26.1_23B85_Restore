@interface MIGlobalConfiguration
+ (id)sharedInstance;
- (BOOL)_isInternalReleaseType;
- (BOOL)allowDeletableSystemApps;
- (BOOL)allowsInternalSecurityPolicy;
- (BOOL)hasInternalContent;
- (MIGlobalConfiguration)init;
- (NSDictionary)coreServicesAppBundleIDToInfoMap;
- (NSDictionary)internalAppBundleIDToInfoMap;
- (NSDictionary)stagedSystemAppBundleIDToInfoMap;
- (NSDictionary)systemAppBundleIDToInfoMap;
- (NSDictionary)systemAppPlaceholderBundleIDToInfoMap;
- (NSSet)allExtensionKitExtensionsDirectories;
- (NSSet)allFrameworksDirectories;
- (NSSet)builtInApplicationBundleIDs;
- (NSSet)builtInExtensionKitExtensionsDirectories;
- (NSSet)builtInFrameworkBundleIDs;
- (NSSet)cryptexExtensionKitExtensionsDirectories;
- (NSSet)cryptexFrameworksDirectories;
- (NSSet)developerDirectories;
- (NSSet)installationBlacklist;
- (NSSet)systemAppPlaceholderAppExtensionBundleIDs;
- (NSSet)systemAppPlaceholderBundleIDs;
- (NSSet)systemAppPlaceholderXPCServiceBundleIDs;
- (NSString)alternateThinningModelIdentifier;
- (NSString)primaryPersonaString;
- (NSURL)backedUpStateDirectory;
- (NSURL)backupSystemAppInstallStateFilePath;
- (NSURL)cachesDirectory;
- (NSURL)coreServicesDirectory;
- (NSURL)cryptexAppsDirectory;
- (NSURL)cryptexExtensionKitExtensionsDirectory;
- (NSURL)cryptexOSDirectory;
- (NSURL)dataDirectory;
- (NSURL)developerRootDirectory;
- (NSURL)helperLogDirectory;
- (NSURL)installdLibraryPath;
- (NSURL)internalAppsDirectory;
- (NSURL)internalExtensionKitExtensionsDirectory;
- (NSURL)internalFrameworksRootDirectory;
- (NSURL)internalRootDirectory;
- (NSURL)lastBuildInfoFileURL;
- (NSURL)logDirectory;
- (NSURL)migrationPlistURL;
- (NSURL)oldArchiveDirectory;
- (NSURL)oldDataDirectoryPath;
- (NSURL)oldLoggingPath;
- (NSURL)roleUserMigrationMarkerFilePath;
- (NSURL)stagedSystemAppsDirectory;
- (NSURL)systemAppDetachedSignaturesDirectory;
- (NSURL)systemAppInstallStateFilePath;
- (NSURL)systemAppPlaceholdersDirectory;
- (NSURL)systemAppsDirectory;
- (NSURL)systemDeveloperRootDirectory;
- (NSURL)systemExtensionKitExtensionsDirectory;
- (NSURL)systemFrameworksRootDirectory;
- (NSURL)testFileSentinelForSyncURL;
- (id)_bundleIDMapForBundlesInDirectory:(id)directory withExtension:(id)extension loadingAdditionalKeys:(id)keys;
- (id)_ixDataStorageHomeURLWithError:(id *)error;
- (id)disableSystemAppDeletionCanaryFile;
- (id)installCoordinationStagingWithError:(id *)error;
- (void)reScanCoreServicesApps;
- (void)reScanInternalApps;
- (void)reScanSystemApps;
- (void)setSystemAppPlaceholderBundleIDToInfoMap:(id)map;
@end

@implementation MIGlobalConfiguration

- (MIGlobalConfiguration)init
{
  v20.receiver = self;
  v20.super_class = MIGlobalConfiguration;
  v2 = [(MIGlobalConfiguration *)&v20 init];
  if (v2)
  {
    v18 = 0;
    v19 = 0;
    MIFetchInfoForUsername("_installd", &v19 + 1, &v19, &v18);
    v3 = v18;
    installdPath = v2->_installdPath;
    v2->_installdPath = v3;
    v5 = v3;

    v6 = v19;
    v2->_uid = HIDWORD(v19);
    v2->_gid = v6;
    v17 = 0;
    MIFetchInfoForUsername("mobile", 0, 0, &v17);
    v7 = v17;
    mobilePath = v2->_mobilePath;
    v2->_mobilePath = v7;
    v9 = v7;

    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/" isDirectory:1];
    rootPath = v2->_rootPath;
    v2->_rootPath = v10;

    obj = 0;
    v16 = 0;
    MIFetchInfoForUsername("mobile", &v16 + 1, &v16, &obj);
    objc_storeStrong(&v2->_installcoordinationdPath, obj);
    v12 = v16;
    v2->_ixDaemonUID = HIDWORD(v16);
    v2->_ixDaemonGID = v12;
    sharedManager = [getUMUserManagerClass_0() sharedManager];
    v2->_isSharediPad = [sharedManager isSharedIPad];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MIGlobalConfiguration_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

- (NSSet)systemAppPlaceholderBundleIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemAppPlaceholderBundleIDs = selfCopy->_systemAppPlaceholderBundleIDs;
  if (!systemAppPlaceholderBundleIDs)
  {
    v4 = MEMORY[0x1E695DFD8];
    systemAppPlaceholderBundleIDToInfoMap = [(MIGlobalConfiguration *)selfCopy systemAppPlaceholderBundleIDToInfoMap];
    allKeys = [systemAppPlaceholderBundleIDToInfoMap allKeys];
    v7 = [v4 setWithArray:allKeys];
    v8 = selfCopy->_systemAppPlaceholderBundleIDs;
    selfCopy->_systemAppPlaceholderBundleIDs = v7;

    systemAppPlaceholderBundleIDs = selfCopy->_systemAppPlaceholderBundleIDs;
  }

  v9 = systemAppPlaceholderBundleIDs;
  objc_sync_exit(selfCopy);

  return v9;
}

- (NSDictionary)systemAppPlaceholderBundleIDToInfoMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemAppPlaceholderBundleIDToInfoMap = selfCopy->_systemAppPlaceholderBundleIDToInfoMap;
  if (!systemAppPlaceholderBundleIDToInfoMap)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"UIRequiredDeviceCapabilities", @"UIDeviceFamily", @"LSRequiredFeatureFlags", @"LSEligibilityPredicatesValidAtEraseInstallDataMigration", @"LSEligibilityInstallPredicate", @"LSEligibilityUninstallPredicate", @"LSInstallByDefault", 0}];
    systemAppPlaceholdersDirectory = [(MIGlobalConfiguration *)selfCopy systemAppPlaceholdersDirectory];
    v6 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForAppsInDirectory:systemAppPlaceholdersDirectory loadingAdditionalKeys:v4];
    v7 = selfCopy->_systemAppPlaceholderBundleIDToInfoMap;
    selfCopy->_systemAppPlaceholderBundleIDToInfoMap = v6;

    systemAppPlaceholderBundleIDToInfoMap = selfCopy->_systemAppPlaceholderBundleIDToInfoMap;
  }

  v8 = systemAppPlaceholderBundleIDToInfoMap;
  objc_sync_exit(selfCopy);

  return v8;
}

- (NSURL)systemAppPlaceholdersDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Library/AppPlaceholders" isDirectory:1];

  return v3;
}

uint64_t __39__MIGlobalConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)allowDeletableSystemApps
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MIGlobalConfiguration_allowDeletableSystemApps__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  if (allowDeletableSystemApps_onceToken != -1)
  {
    dispatch_once(&allowDeletableSystemApps_onceToken, block);
  }

  return self->_allowDeletableSystemApps;
}

uint64_t __49__MIGlobalConfiguration_allowDeletableSystemApps__block_invoke(uint64_t a1)
{
  v2 = +[MIFileManager defaultManager];
  v3 = [*(a1 + 32) disableSystemAppDeletionCanaryFile];
  v4 = [v2 itemExistsAtURL:v3];

  if (v4)
  {
    result = gLogHandle;
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      result = MOLogWrite();
    }

    *(*(a1 + 32) + 12) = 0;
  }

  else
  {
    result = +[ICLFeatureFlags systemAppDeletionEnabled];
    *(*(a1 + 32) + 12) = result;
  }

  return result;
}

- (NSURL)oldDataDirectoryPath
{
  mobilePath = [(MIGlobalConfiguration *)self mobilePath];
  v3 = [mobilePath URLByAppendingPathComponent:@"Library/MobileInstallation" isDirectory:1];

  return v3;
}

- (NSURL)oldLoggingPath
{
  mobilePath = [(MIGlobalConfiguration *)self mobilePath];
  v3 = [mobilePath URLByAppendingPathComponent:@"Library/Logs/MobileInstallation" isDirectory:1];

  return v3;
}

- (NSURL)oldArchiveDirectory
{
  mobilePath = [(MIGlobalConfiguration *)self mobilePath];
  v3 = [mobilePath URLByAppendingPathComponent:@"Media/ApplicationArchives" isDirectory:1];

  return v3;
}

- (NSURL)roleUserMigrationMarkerFilePath
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"RoleUserMigration.plist" isDirectory:0];

  return v3;
}

- (NSURL)systemAppInstallStateFilePath
{
  backedUpStateDirectory = [(MIGlobalConfiguration *)self backedUpStateDirectory];
  v3 = [backedUpStateDirectory URLByAppendingPathComponent:@"SystemAppInstallState.plist" isDirectory:0];

  return v3;
}

- (NSURL)backupSystemAppInstallStateFilePath
{
  backedUpStateDirectory = [(MIGlobalConfiguration *)self backedUpStateDirectory];
  v3 = [backedUpStateDirectory URLByAppendingPathComponent:@"BackupSystemAppInstallState.plist" isDirectory:0];

  return v3;
}

- (NSURL)logDirectory
{
  installdLibraryPath = [(MIGlobalConfiguration *)self installdLibraryPath];
  v3 = [installdLibraryPath URLByAppendingPathComponent:@"Logs/MobileInstallation" isDirectory:1];

  return v3;
}

- (NSURL)helperLogDirectory
{
  if (self->_helperLogDirectory)
  {
    v3 = 493;
  }

  else
  {
    v19 = 1;
    v4 = container_system_group_path_for_identifier();
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
      v7 = [v6 URLByAppendingPathComponent:@"Library/Logs" isDirectory:1];
      helperLogDirectory = self->_helperLogDirectory;
      self->_helperLogDirectory = v7;

      free(v5);
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v16 = v19;
      MOLogWrite();
    }

    v3 = 511;
  }

  v9 = +[MIFileManager defaultManager];
  v10 = self->_helperLogDirectory;
  v18 = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 mode:v3 error:&v18];
  v12 = v18;

  if ((v11 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    path = [(NSURL *)self->_helperLogDirectory path];
    MOLogWrite();
  }

  v13 = self->_helperLogDirectory;
  v14 = v13;

  return v13;
}

- (NSURL)internalRootDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"AppleInternal" isDirectory:1];

  return v3;
}

- (NSURL)developerRootDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"Developer" isDirectory:1];

  return v3;
}

- (NSURL)systemDeveloperRootDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Developer" isDirectory:1];

  return v3;
}

- (NSURL)coreServicesDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Library/CoreServices" isDirectory:1];

  return v3;
}

- (NSURL)systemAppsDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"Applications" isDirectory:1];

  return v3;
}

- (NSURL)systemAppDetachedSignaturesDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Library/AppSignatures" isDirectory:1];

  return v3;
}

- (id)disableSystemAppDeletionCanaryFile
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Library/disableSystemAppDeletion" isDirectory:0];

  return v3;
}

- (NSURL)internalAppsDirectory
{
  internalRootDirectory = [(MIGlobalConfiguration *)self internalRootDirectory];
  v3 = [internalRootDirectory URLByAppendingPathComponent:@"Applications" isDirectory:1];

  return v3;
}

- (NSSet)developerDirectories
{
  v3 = MEMORY[0x1E695DFD8];
  developerRootDirectory = [(MIGlobalConfiguration *)self developerRootDirectory];
  systemDeveloperRootDirectory = [(MIGlobalConfiguration *)self systemDeveloperRootDirectory];
  v6 = [v3 setWithObjects:{developerRootDirectory, systemDeveloperRootDirectory, 0}];

  return v6;
}

- (NSURL)stagedSystemAppsDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"private/var/staged_system_apps" isDirectory:1];

  return v3;
}

- (NSURL)cryptexAppsDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Cryptexes/App" isDirectory:1];

  return v3;
}

- (NSURL)cryptexOSDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Cryptexes/OS" isDirectory:1];

  return v3;
}

- (NSSet)cryptexFrameworksDirectories
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MIGlobalConfiguration_cryptexFrameworksDirectories__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  if (cryptexFrameworksDirectories_onceToken != -1)
  {
    dispatch_once(&cryptexFrameworksDirectories_onceToken, block);
  }

  return self->_cryptexFrameworksDirectories;
}

void __53__MIGlobalConfiguration_cryptexFrameworksDirectories__block_invoke(uint64_t a1)
{
  v11 = objc_opt_new();
  v2 = [*(a1 + 32) cryptexOSDirectory];
  v3 = [*(a1 + 32) systemFrameworksRootDirectory];
  v4 = [v3 path];
  v5 = [v2 URLByAppendingPathComponent:v4 isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:@"Frameworks" isDirectory:1];
  [v11 addObject:v6];

  v7 = [v5 URLByAppendingPathComponent:@"PrivateFrameworks" isDirectory:1];
  [v11 addObject:v7];

  v8 = [v11 copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (NSURL)systemFrameworksRootDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Library" isDirectory:1];

  return v3;
}

- (NSURL)internalFrameworksRootDirectory
{
  internalRootDirectory = [(MIGlobalConfiguration *)self internalRootDirectory];
  v3 = [internalRootDirectory URLByAppendingPathComponent:@"Library" isDirectory:1];

  return v3;
}

- (NSSet)allFrameworksDirectories
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MIGlobalConfiguration_allFrameworksDirectories__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  if (allFrameworksDirectories_onceToken != -1)
  {
    dispatch_once(&allFrameworksDirectories_onceToken, block);
  }

  return self->_allFrameworksDirectories;
}

void __49__MIGlobalConfiguration_allFrameworksDirectories__block_invoke(uint64_t a1)
{
  v17 = objc_opt_new();
  v2 = [*(a1 + 32) systemFrameworksRootDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"Frameworks" isDirectory:1];
  [v17 addObject:v3];

  v4 = [*(a1 + 32) systemFrameworksRootDirectory];
  v5 = [v4 URLByAppendingPathComponent:@"PrivateFrameworks" isDirectory:1];
  [v17 addObject:v5];

  if ([*(a1 + 32) hasInternalContent])
  {
    v6 = [*(a1 + 32) internalRootDirectory];
    v7 = [v6 URLByAppendingPathComponent:@"Frameworks" isDirectory:1];
    [v17 addObject:v7];

    v8 = [*(a1 + 32) internalRootDirectory];
    v9 = [v8 URLByAppendingPathComponent:@"PrivateFrameworks" isDirectory:1];
    [v17 addObject:v9];

    v10 = [*(a1 + 32) internalFrameworksRootDirectory];
    v11 = [v10 URLByAppendingPathComponent:@"Frameworks" isDirectory:1];
    [v17 addObject:v11];

    v12 = [*(a1 + 32) internalFrameworksRootDirectory];
    v13 = [v12 URLByAppendingPathComponent:@"PrivateFrameworks" isDirectory:1];
    [v17 addObject:v13];
  }

  v14 = [v17 copy];
  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  *(v15 + 48) = v14;
}

- (NSURL)systemExtensionKitExtensionsDirectory
{
  rootPath = [(MIGlobalConfiguration *)self rootPath];
  v3 = [rootPath URLByAppendingPathComponent:@"System/Library/ExtensionKit/Extensions" isDirectory:1];

  return v3;
}

- (NSURL)internalExtensionKitExtensionsDirectory
{
  internalRootDirectory = [(MIGlobalConfiguration *)self internalRootDirectory];
  v3 = [internalRootDirectory URLByAppendingPathComponent:@"Library/ExtensionKit/Extensions" isDirectory:1];

  return v3;
}

- (NSURL)cryptexExtensionKitExtensionsDirectory
{
  cryptexOSDirectory = [(MIGlobalConfiguration *)self cryptexOSDirectory];
  v3 = [cryptexOSDirectory URLByAppendingPathComponent:@"System/Library/ExtensionKit/Extensions" isDirectory:1];

  return v3;
}

- (NSSet)builtInExtensionKitExtensionsDirectories
{
  v3 = objc_opt_new();
  systemExtensionKitExtensionsDirectory = [(MIGlobalConfiguration *)self systemExtensionKitExtensionsDirectory];
  [v3 addObject:systemExtensionKitExtensionsDirectory];

  if ([(MIGlobalConfiguration *)self hasInternalContent])
  {
    internalExtensionKitExtensionsDirectory = [(MIGlobalConfiguration *)self internalExtensionKitExtensionsDirectory];
    [v3 addObject:internalExtensionKitExtensionsDirectory];
  }

  v6 = [v3 copy];

  return v6;
}

- (NSSet)cryptexExtensionKitExtensionsDirectories
{
  v2 = MEMORY[0x1E695DFD8];
  cryptexExtensionKitExtensionsDirectory = [(MIGlobalConfiguration *)self cryptexExtensionKitExtensionsDirectory];
  v4 = [v2 setWithObject:cryptexExtensionKitExtensionsDirectory];

  return v4;
}

- (NSSet)allExtensionKitExtensionsDirectories
{
  builtInExtensionKitExtensionsDirectories = [(MIGlobalConfiguration *)self builtInExtensionKitExtensionsDirectories];
  cryptexExtensionKitExtensionsDirectories = [(MIGlobalConfiguration *)self cryptexExtensionKitExtensionsDirectories];
  v5 = [builtInExtensionKitExtensionsDirectories setByAddingObjectsFromSet:cryptexExtensionKitExtensionsDirectories];

  return v5;
}

- (NSURL)installdLibraryPath
{
  installdPath = [(MIGlobalConfiguration *)self installdPath];
  v3 = [installdPath URLByAppendingPathComponent:@"Library" isDirectory:1];

  return v3;
}

- (NSURL)dataDirectory
{
  installdLibraryPath = [(MIGlobalConfiguration *)self installdLibraryPath];
  v3 = [installdLibraryPath URLByAppendingPathComponent:@"MobileInstallation" isDirectory:1];

  return v3;
}

- (NSURL)cachesDirectory
{
  installdLibraryPath = [(MIGlobalConfiguration *)self installdLibraryPath];
  v3 = [installdLibraryPath URLByAppendingPathComponent:@"Caches" isDirectory:1];

  return v3;
}

- (NSURL)backedUpStateDirectory
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"BackedUpState" isDirectory:1];

  return v3;
}

- (id)_ixDataStorageHomeURLWithError:(id *)error
{
  os_unfair_lock_lock(&self->_dynamicPropertyLock);
  ixDataStorageDirectoryPath = self->_ixDataStorageDirectoryPath;
  if (ixDataStorageDirectoryPath)
  {
    v6 = 0;
  }

  else
  {
    v7 = container_system_group_path_for_identifier();
    if (v7)
    {
      v9 = v7;
      v10 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
      v11 = self->_ixDataStorageDirectoryPath;
      self->_ixDataStorageDirectoryPath = v10;

      free(v9);
      v6 = 0;
    }

    else
    {
      v6 = _CreateAndLogError("[MIGlobalConfiguration _ixDataStorageHomeURLWithError:]", 483, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to get group container path for group 'systemgroup.com.apple.installcoordinationd' container_system_group_path_for_identifier returned %llu", v8, 1);;
    }

    ixDataStorageDirectoryPath = self->_ixDataStorageDirectoryPath;
  }

  v12 = ixDataStorageDirectoryPath;
  os_unfair_lock_unlock(&self->_dynamicPropertyLock);
  if (error && !v12)
  {
    v13 = v6;
    *error = v6;
  }

  return v12;
}

- (id)installCoordinationStagingWithError:(id *)error
{
  v3 = [(MIGlobalConfiguration *)self _ixDataStorageHomeURLWithError:error];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (NSSet)installationBlacklist
{
  if (installationBlacklist_onceToken != -1)
  {
    [MIGlobalConfiguration installationBlacklist];
  }

  v3 = installationBlacklist_blacklist;

  return v3;
}

uint64_t __46__MIGlobalConfiguration_installationBlacklist__block_invoke()
{
  installationBlacklist_blacklist = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.iOS6Updater", @"is.workflow.my.app", @"com.apple.mobileme.fmf1", @"com.apple.mobileme.fmip1", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_bundleIDMapForBundlesInDirectory:(id)directory withExtension:(id)extension loadingAdditionalKeys:(id)keys
{
  directoryCopy = directory;
  extensionCopy = extension;
  keysCopy = keys;
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  standardInfoMapInfoPlistKeys = [(MIGlobalConfiguration *)self standardInfoMapInfoPlistKeys];
  v13 = standardInfoMapInfoPlistKeys;
  if (keysCopy)
  {
    v14 = [standardInfoMapInfoPlistKeys setByAddingObjectsFromSet:keysCopy];

    v13 = v14;
  }

  v15 = +[MIFileManager defaultManager];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__MIGlobalConfiguration__bundleIDMapForBundlesInDirectory_withExtension_loadingAdditionalKeys___block_invoke;
  v25[3] = &unk_1E7AE1FB8;
  v16 = extensionCopy;
  v26 = v16;
  v17 = v13;
  v27 = v17;
  v18 = v11;
  v28 = v18;
  v19 = [v15 enumerateURLsForItemsInDirectoryAtURL:directoryCopy ignoreSymlinks:1 withBlock:v25];

  if (!v19)
  {
    v22 = [v18 copy];
    goto LABEL_8;
  }

  domain = [v19 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v19 code];

    if (code == 2)
    {
      v22 = objc_opt_new();
LABEL_8:
      v23 = v22;
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v23 = 0;
LABEL_14:

  return v23;
}

uint64_t __95__MIGlobalConfiguration__bundleIDMapForBundlesInDirectory_withExtension_loadingAdditionalKeys___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 4)
  {
    v7 = [v5 pathExtension];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      v8 = MILoadInfoPlist(v6, *(a1 + 40));
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
        objc_opt_class();
        v11 = v10;
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          [v9 setObject:v6 forKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
          v13 = [v9 copy];
          [*(a1 + 48) setObject:v13 forKeyedSubscript:v12];
        }

        else if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }
    }
  }

  return 1;
}

- (NSSet)builtInApplicationBundleIDs
{
  systemAppBundleIDToInfoMap = [(MIGlobalConfiguration *)self systemAppBundleIDToInfoMap];
  allKeys = [systemAppBundleIDToInfoMap allKeys];

  internalAppBundleIDToInfoMap = [(MIGlobalConfiguration *)self internalAppBundleIDToInfoMap];
  allKeys2 = [internalAppBundleIDToInfoMap allKeys];

  v7 = objc_opt_new();
  [v7 addObjectsFromArray:allKeys];
  [v7 addObjectsFromArray:allKeys2];
  v8 = [v7 copy];

  return v8;
}

- (NSDictionary)coreServicesAppBundleIDToInfoMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  coreServicesAppBundleIDToInfoMap = selfCopy->_coreServicesAppBundleIDToInfoMap;
  if (!coreServicesAppBundleIDToInfoMap)
  {
    coreServicesDirectory = [(MIGlobalConfiguration *)selfCopy coreServicesDirectory];
    v5 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForAppsInDirectory:coreServicesDirectory];
    v6 = selfCopy->_coreServicesAppBundleIDToInfoMap;
    selfCopy->_coreServicesAppBundleIDToInfoMap = v5;

    coreServicesAppBundleIDToInfoMap = selfCopy->_coreServicesAppBundleIDToInfoMap;
  }

  v7 = coreServicesAppBundleIDToInfoMap;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSDictionary)systemAppBundleIDToInfoMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemAppBundleIDToInfoMap = selfCopy->_systemAppBundleIDToInfoMap;
  if (!systemAppBundleIDToInfoMap)
  {
    systemAppsDirectory = [(MIGlobalConfiguration *)selfCopy systemAppsDirectory];
    v5 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForAppsInDirectory:systemAppsDirectory];
    v6 = selfCopy->_systemAppBundleIDToInfoMap;
    selfCopy->_systemAppBundleIDToInfoMap = v5;

    systemAppBundleIDToInfoMap = selfCopy->_systemAppBundleIDToInfoMap;
  }

  v7 = systemAppBundleIDToInfoMap;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSDictionary)stagedSystemAppBundleIDToInfoMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stagedSystemAppBundleIDToInfoMap = selfCopy->_stagedSystemAppBundleIDToInfoMap;
  if (!stagedSystemAppBundleIDToInfoMap)
  {
    stagedSystemAppsDirectory = [(MIGlobalConfiguration *)selfCopy stagedSystemAppsDirectory];
    v5 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForAppsInDirectory:stagedSystemAppsDirectory];
    v6 = selfCopy->_stagedSystemAppBundleIDToInfoMap;
    selfCopy->_stagedSystemAppBundleIDToInfoMap = v5;

    stagedSystemAppBundleIDToInfoMap = selfCopy->_stagedSystemAppBundleIDToInfoMap;
  }

  v7 = stagedSystemAppBundleIDToInfoMap;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setSystemAppPlaceholderBundleIDToInfoMap:(id)map
{
  mapCopy = map;
  obj = self;
  objc_sync_enter(obj);
  systemAppPlaceholderBundleIDToInfoMap = obj->_systemAppPlaceholderBundleIDToInfoMap;
  obj->_systemAppPlaceholderBundleIDToInfoMap = mapCopy;

  objc_sync_exit(obj);
}

- (NSDictionary)internalAppBundleIDToInfoMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  internalAppBundleIDToInfoMap = selfCopy->_internalAppBundleIDToInfoMap;
  if (!internalAppBundleIDToInfoMap)
  {
    internalAppsDirectory = [(MIGlobalConfiguration *)selfCopy internalAppsDirectory];
    v5 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForAppsInDirectory:internalAppsDirectory];
    v6 = selfCopy->_internalAppBundleIDToInfoMap;
    selfCopy->_internalAppBundleIDToInfoMap = v5;

    internalAppBundleIDToInfoMap = selfCopy->_internalAppBundleIDToInfoMap;
  }

  v7 = internalAppBundleIDToInfoMap;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSSet)builtInFrameworkBundleIDs
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  builtInFrameworkBundleIDs = selfCopy->_builtInFrameworkBundleIDs;
  if (!builtInFrameworkBundleIDs)
  {
    v4 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allFrameworksDirectories = [(MIGlobalConfiguration *)selfCopy allFrameworksDirectories];
    v6 = [allFrameworksDirectories countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(allFrameworksDirectories);
          }

          v9 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForBundlesInDirectory:*(*(&v15 + 1) + 8 * i) withExtension:@"framework"];
          allKeys = [v9 allKeys];
          [v4 addObjectsFromArray:allKeys];
        }

        v6 = [allFrameworksDirectories countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v11 = [v4 copy];
    v12 = selfCopy->_builtInFrameworkBundleIDs;
    selfCopy->_builtInFrameworkBundleIDs = v11;

    builtInFrameworkBundleIDs = selfCopy->_builtInFrameworkBundleIDs;
  }

  v13 = builtInFrameworkBundleIDs;
  objc_sync_exit(selfCopy);

  return v13;
}

- (NSSet)systemAppPlaceholderAppExtensionBundleIDs
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemAppPlaceholderAppExtensionBundleIDs = selfCopy->_systemAppPlaceholderAppExtensionBundleIDs;
  if (!systemAppPlaceholderAppExtensionBundleIDs)
  {
    v22 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    systemAppPlaceholderBundleIDToInfoMap = [(MIGlobalConfiguration *)selfCopy systemAppPlaceholderBundleIDToInfoMap];
    allValues = [systemAppPlaceholderBundleIDToInfoMap allValues];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = allValues;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v23 + 1) + 8 * i) objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 URLByAppendingPathComponent:@"PlugIns" isDirectory:1];
            v12 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForBundlesInDirectory:v11 withExtension:@"appex"];
            if ([v12 count])
            {
              allKeys = [v12 allKeys];
              [v22 addObjectsFromArray:allKeys];
            }

            v14 = [v10 URLByAppendingPathComponent:@"Extensions" isDirectory:1];
            v15 = [(MIGlobalConfiguration *)selfCopy _bundleIDMapForBundlesInDirectory:v14 withExtension:@"appex"];

            if ([v15 count])
            {
              allKeys2 = [v15 allKeys];
              [v22 addObjectsFromArray:allKeys2];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v17 = [v22 copy];
    v18 = selfCopy->_systemAppPlaceholderAppExtensionBundleIDs;
    selfCopy->_systemAppPlaceholderAppExtensionBundleIDs = v17;

    systemAppPlaceholderAppExtensionBundleIDs = selfCopy->_systemAppPlaceholderAppExtensionBundleIDs;
  }

  v19 = systemAppPlaceholderAppExtensionBundleIDs;
  objc_sync_exit(selfCopy);

  return v19;
}

- (NSSet)systemAppPlaceholderXPCServiceBundleIDs
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemAppPlaceholderXPCServiceBundleIDs = selfCopy->_systemAppPlaceholderXPCServiceBundleIDs;
  if (!systemAppPlaceholderXPCServiceBundleIDs)
  {
    v20 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    v4 = selfCopy;
    systemAppPlaceholderBundleIDToInfoMap = [(MIGlobalConfiguration *)selfCopy systemAppPlaceholderBundleIDToInfoMap];
    allValues = [systemAppPlaceholderBundleIDToInfoMap allValues];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = allValues;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) objectForKeyedSubscript:@"com.apple.MobileInstallation.bundleURL"];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 URLByAppendingPathComponent:@"XPCServices" isDirectory:1];
            v14 = [(MIGlobalConfiguration *)v4 _bundleIDMapForBundlesInDirectory:v13 withExtension:@"xpc"];
            if ([v14 count])
            {
              allKeys = [v14 allKeys];
              [v20 addObjectsFromArray:allKeys];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v16 = [v20 copy];
    v17 = v4->_systemAppPlaceholderXPCServiceBundleIDs;
    v4->_systemAppPlaceholderXPCServiceBundleIDs = v16;

    systemAppPlaceholderXPCServiceBundleIDs = v4->_systemAppPlaceholderXPCServiceBundleIDs;
    selfCopy = v4;
  }

  v18 = systemAppPlaceholderXPCServiceBundleIDs;
  objc_sync_exit(selfCopy);

  return v18;
}

- (void)reScanSystemApps
{
  obj = self;
  objc_sync_enter(obj);
  systemAppBundleIDToInfoMap = obj->_systemAppBundleIDToInfoMap;
  obj->_systemAppBundleIDToInfoMap = 0;

  systemAppPlaceholderBundleIDToInfoMap = obj->_systemAppPlaceholderBundleIDToInfoMap;
  obj->_systemAppPlaceholderBundleIDToInfoMap = 0;

  builtInFrameworkBundleIDs = obj->_builtInFrameworkBundleIDs;
  obj->_builtInFrameworkBundleIDs = 0;

  objc_sync_exit(obj);
}

- (void)reScanCoreServicesApps
{
  obj = self;
  objc_sync_enter(obj);
  coreServicesAppBundleIDToInfoMap = obj->_coreServicesAppBundleIDToInfoMap;
  obj->_coreServicesAppBundleIDToInfoMap = 0;

  objc_sync_exit(obj);
}

- (void)reScanInternalApps
{
  obj = self;
  objc_sync_enter(obj);
  internalAppBundleIDToInfoMap = obj->_internalAppBundleIDToInfoMap;
  obj->_internalAppBundleIDToInfoMap = 0;

  builtInFrameworkBundleIDs = obj->_builtInFrameworkBundleIDs;
  obj->_builtInFrameworkBundleIDs = 0;

  objc_sync_exit(obj);
}

- (NSString)alternateThinningModelIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.itunesstored"];
  v3 = [v2 stringForKey:@"ThinnedAppVariantID"];

  return v3;
}

- (NSURL)migrationPlistURL
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"MigrationInfo.plist" isDirectory:0];

  if (v3)
  {
    v4 = v3;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return v3;
}

- (NSURL)lastBuildInfoFileURL
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"LastBuildInfo.plist" isDirectory:0];

  if (v3)
  {
    v4 = v3;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return v3;
}

- (BOOL)_isInternalReleaseType
{
  if (_isInternalReleaseType_onceToken != -1)
  {
    [MIGlobalConfiguration _isInternalReleaseType];
  }

  return _isInternalReleaseType_isInternalReleaseType;
}

void __47__MIGlobalConfiguration__isInternalReleaseType__block_invoke()
{
  v1 = _CFCopySystemVersionDictionary();
  v0 = [v1 objectForKeyedSubscript:@"ReleaseType"];
  _isInternalReleaseType_isInternalReleaseType = [v0 isEqualToString:@"Internal"];
}

- (BOOL)allowsInternalSecurityPolicy
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MIGlobalConfiguration_allowsInternalSecurityPolicy__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  if (allowsInternalSecurityPolicy_onceToken != -1)
  {
    dispatch_once(&allowsInternalSecurityPolicy_onceToken, block);
  }

  return allowsInternalSecurityPolicy_allowsInternalSecurityPolicy;
}

uint64_t __53__MIGlobalConfiguration_allowsInternalSecurityPolicy__block_invoke(uint64_t a1)
{
  result = os_variant_allows_internal_security_policies();
  allowsInternalSecurityPolicy_allowsInternalSecurityPolicy = result;
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _isInternalReleaseType];
    if (result)
    {
      result = gLogHandle;
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {

        return MOLogWrite();
      }
    }
  }

  return result;
}

- (BOOL)hasInternalContent
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MIGlobalConfiguration_hasInternalContent__block_invoke;
  block[3] = &unk_1E7AE17F8;
  block[4] = self;
  if (hasInternalContent_onceToken != -1)
  {
    dispatch_once(&hasInternalContent_onceToken, block);
  }

  return hasInternalContent_hasInternalContent;
}

uint64_t __43__MIGlobalConfiguration_hasInternalContent__block_invoke(uint64_t a1)
{
  result = os_variant_has_internal_content();
  hasInternalContent_hasInternalContent = result;
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _isInternalReleaseType];
    if (result)
    {
      result = gLogHandle;
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {

        return MOLogWrite();
      }
    }
  }

  return result;
}

- (NSString)primaryPersonaString
{
  if (primaryPersonaString_onceToken != -1)
  {
    [MIGlobalConfiguration primaryPersonaString];
  }

  v3 = primaryPersonaString_personalPersona;

  return v3;
}

void __45__MIGlobalConfiguration_primaryPersonaString__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [getUMUserManagerClass_0() sharedManager];
  v1 = [v0 listAllPersonaWithAttributes];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isPersonalPersona])
        {
          v8 = [v7 userPersonaUniqueString];
          v9 = primaryPersonaString_personalPersona;
          primaryPersonaString_personalPersona = v8;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (NSURL)testFileSentinelForSyncURL
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"TestFileForSync" isDirectory:0];

  return v3;
}

@end