@interface MIDaemonConfiguration
+ (id)sharedInstance;
- (BOOL)codeSigningEnforcementIsDisabled;
- (BOOL)haveUpdatedAppExtensionDataContainersWithParentID;
- (BOOL)localSigningIsUnrestricted;
- (BOOL)wasErroneousContainerCleanupDone;
- (MIDaemonConfiguration)init;
- (NSURL)currentUserCachesDirectory;
- (NSURL)currentUserDataDirectory;
- (NSURL)currentUserInstallCoordinationCachesDirectory;
- (NSURL)currentUserJournalStorageBaseURL;
- (NSURL)currentUserLaunchServicesOperationLookAsideStorageBaseURL;
- (NSURL)currentUserLaunchServicesOperationStorageBaseURL;
- (NSURL)daemonUserDataLibraryDirectory;
- (NSURL)installcoordinationdUserDataLibraryDirectory;
- (NSURL)journalStorageBaseURL;
- (NSURL)launchServicesOperationLookAsideStorageBaseURL;
- (NSURL)launchServicesOperationStorageBaseURL;
- (id)builtInApplicationBundleIDs;
- (void)daemonUserDataLibraryDirectory;
- (void)init;
- (void)installcoordinationdUserDataLibraryDirectory;
- (void)setErroneousContainerCleanupDone:(BOOL)done;
- (void)setHaveUpdatedAppExtensionDataContainersWithParentID:(BOOL)d;
@end

@implementation MIDaemonConfiguration

- (MIDaemonConfiguration)init
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MIDaemonConfiguration;
  v2 = [(MIGlobalConfiguration *)&v15 init];
  if (!v2)
  {
    return v2;
  }

  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobile.installation"];
  v2->_installQOSOverride = 0;
  v2->_skipDeviceFamilyCheck = 0;
  v2->_skipThinningCheck = 0;
  v2->_allowPatchWithoutSinf = 0;
  v2->_nSimultaneousInstallations = 5;
  v2->_requireEligibilityChecksForAppsInDevelopment = 0;
  if ([(MIGlobalConfiguration *)v2 hasInternalContent])
  {
    v4 = [v3 stringForKey:@"InstallQOSOverride"];
    v5 = v4;
    if (!v4 || ([v4 isEqualToString:@"unspecified"] & 1) != 0)
    {
      goto LABEL_25;
    }

    if ([v5 isEqualToString:@"interactive"])
    {
      v2->_installQOSOverride = 33;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_25;
      }
    }

    else if ([v5 isEqualToString:@"initiated"])
    {
      v2->_installQOSOverride = 25;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_25;
      }
    }

    else if ([v5 isEqualToString:@"default"])
    {
      v2->_installQOSOverride = 21;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_25;
      }
    }

    else if ([v5 isEqualToString:@"utility"])
    {
      v2->_installQOSOverride = 17;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (![v5 isEqualToString:@"background"])
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v11 = v5;
          MOLogWrite();
        }

        v2->_installQOSOverride = 0;
        goto LABEL_25;
      }

      v2->_installQOSOverride = 9;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_25:
        if ([v3 BOOLForKey:{@"SkipDeviceFamilyCheck", v11}])
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 5)
          {
            MOLogWrite();
          }

          v2->_skipDeviceFamilyCheck = 1;
        }

        if ([v3 BOOLForKey:@"SkipThinningCheck"])
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 5)
          {
            MOLogWrite();
          }

          v2->_skipThinningCheck = 1;
        }

        if ([v3 BOOLForKey:@"AllowPatchInstallationWithoutSinf"])
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 5)
          {
            MOLogWrite();
          }

          v2->_allowPatchWithoutSinf = 1;
        }

        v6 = [v3 integerForKey:@"SimultaneousInstallsNumber"];
        if (v6 >= 1)
        {
          v7 = v6;
          if (!gLogHandle || *(gLogHandle + 44) >= 5)
          {
            v12 = v6;
            MOLogWrite();
          }

          v2->_nSimultaneousInstallations = v7;
        }

        if ([v3 BOOLForKey:{@"RequireEligibilityForInDevelopmentApps", v12}])
        {
          v2->_requireEligibilityChecksForAppsInDevelopment = 1;
        }

        goto LABEL_48;
      }
    }

    MOLogWrite();
    goto LABEL_25;
  }

LABEL_48:
  v14.receiver = v2;
  v14.super_class = MIDaemonConfiguration;
  installdJetsamLimit = [(MIGlobalConfiguration *)&v14 installdJetsamLimit];
  if (installdJetsamLimit <= 0xC00000)
  {
    [(MIDaemonConfiguration *)&v13 init];
  }

  v2->_estimatedAvailableMemoryForValidation = installdJetsamLimit - 12582912;
  if ([(MIGlobalConfiguration *)v2 isSharediPad]|| (MGGetBoolAnswer() & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = os_variant_uses_ephemeral_storage() ^ 1;
  }

  v2->_deviceHasPersonas = v9;

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MIDaemonConfiguration_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_daemonConfigOnceToken != -1)
  {
    dispatch_once(&sharedInstance_daemonConfigOnceToken, block);
  }

  v2 = sharedInstance_daemonConfigInstance;

  return v2;
}

uint64_t __39__MIDaemonConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_daemonConfigInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (NSURL)daemonUserDataLibraryDirectory
{
  v13 = *MEMORY[0x1E69E9840];
  daemonUserDataLibraryDirectory = self->_daemonUserDataLibraryDirectory;
  if (!daemonUserDataLibraryDirectory)
  {
    v11 = 0;
    v4 = [MIMCMContainer daemonContainerForPersona:0 error:&v11];
    v5 = v11;
    if (!v4)
    {
      [(MIDaemonConfiguration *)&v10 daemonUserDataLibraryDirectory];
    }

    containerURL = [v4 containerURL];
    v7 = [containerURL URLByAppendingPathComponent:@"Library" isDirectory:1];
    v8 = self->_daemonUserDataLibraryDirectory;
    self->_daemonUserDataLibraryDirectory = v7;

    if (!self->_daemonUserDataLibraryDirectory)
    {
      [MIDaemonConfiguration daemonUserDataLibraryDirectory];
    }

    if ([v4 transferOwnershipOfSandboxExtensionToCaller] == -1 && (!gLogHandle || *(gLogHandle + 44) >= 4))
    {
      MOLogWrite();
    }

    daemonUserDataLibraryDirectory = self->_daemonUserDataLibraryDirectory;
  }

  return daemonUserDataLibraryDirectory;
}

- (NSURL)installcoordinationdUserDataLibraryDirectory
{
  v13 = *MEMORY[0x1E69E9840];
  installcoordinationdUserDataLibraryDirectory = self->_installcoordinationdUserDataLibraryDirectory;
  if (!installcoordinationdUserDataLibraryDirectory)
  {
    v11 = 0;
    v4 = [MIMCMContainer daemonContainerForIdentifier:@"com.apple.installcoordinationd" personaUniqueString:0 error:&v11];
    v5 = v11;
    if (!v4)
    {
      [(MIDaemonConfiguration *)&v10 installcoordinationdUserDataLibraryDirectory];
    }

    containerURL = [v4 containerURL];
    v7 = [containerURL URLByAppendingPathComponent:@"Library" isDirectory:1];
    v8 = self->_installcoordinationdUserDataLibraryDirectory;
    self->_installcoordinationdUserDataLibraryDirectory = v7;

    if (!self->_installcoordinationdUserDataLibraryDirectory)
    {
      [MIDaemonConfiguration installcoordinationdUserDataLibraryDirectory];
    }

    if ([v4 transferOwnershipOfSandboxExtensionToCaller] == -1 && (!gLogHandle || *(gLogHandle + 44) >= 4))
    {
      MOLogWrite();
    }

    installcoordinationdUserDataLibraryDirectory = self->_installcoordinationdUserDataLibraryDirectory;
  }

  return installcoordinationdUserDataLibraryDirectory;
}

- (NSURL)currentUserDataDirectory
{
  daemonUserDataLibraryDirectory = [(MIDaemonConfiguration *)self daemonUserDataLibraryDirectory];
  v3 = [daemonUserDataLibraryDirectory URLByAppendingPathComponent:@"MobileInstallation" isDirectory:1];

  return v3;
}

- (NSURL)currentUserCachesDirectory
{
  daemonUserDataLibraryDirectory = [(MIDaemonConfiguration *)self daemonUserDataLibraryDirectory];
  v3 = [daemonUserDataLibraryDirectory URLByAppendingPathComponent:@"Caches" isDirectory:1];

  return v3;
}

- (NSURL)currentUserInstallCoordinationCachesDirectory
{
  installcoordinationdUserDataLibraryDirectory = [(MIDaemonConfiguration *)self installcoordinationdUserDataLibraryDirectory];
  v3 = [installcoordinationdUserDataLibraryDirectory URLByAppendingPathComponent:@"Caches" isDirectory:1];

  return v3;
}

- (BOOL)codeSigningEnforcementIsDisabled
{
  if ([(MIGlobalConfiguration *)self allowsInternalSecurityPolicy])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MIDaemonConfiguration_codeSigningEnforcementIsDisabled__block_invoke;
    block[3] = &unk_1E7AE17F8;
    block[4] = self;
    if (codeSigningEnforcementIsDisabled_onceToken != -1)
    {
      dispatch_once(&codeSigningEnforcementIsDisabled_onceToken, block);
    }

    return self->_codeSigningEnforcementIsDisabled;
  }

  else
  {
    return 0;
  }
}

void __57__MIDaemonConfiguration_codeSigningEnforcementIsDisabled__block_invoke(uint64_t a1)
{
  v8 = 0;
  v2 = +[MITestManager sharedInstance];
  v7 = 0;
  v3 = [v2 isRunningInTestMode:&v8 outError:&v7];
  v4 = v7;

  if (v3)
  {
    if (v8 == 1)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        MOLogWrite();
      }

      *(*(a1 + 32) + 168) = 0;
      goto LABEL_25;
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobile.installation"];
  if ([v5 BOOLForKey:@"FakeCodeSigningNotDisabled"])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    *(*(a1 + 32) + 168) = 0;
  }

  else
  {
    bootarg_state = amfi_interface_query_bootarg_state();
    if (bootarg_state)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        strerror(bootarg_state);
        MOLogWrite();
      }
    }

    else
    {
      *(*(a1 + 32) + 168) = 0;
    }

    if (*(*(a1 + 32) + 168) == 1 && (!gLogHandle || *(gLogHandle + 44) >= 5))
    {
      MOLogWrite();
    }
  }

LABEL_25:
}

- (BOOL)localSigningIsUnrestricted
{
  if ([(MIGlobalConfiguration *)self allowsInternalSecurityPolicy])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MIDaemonConfiguration_localSigningIsUnrestricted__block_invoke;
    block[3] = &unk_1E7AE17F8;
    block[4] = self;
    if (localSigningIsUnrestricted_onceToken != -1)
    {
      dispatch_once(&localSigningIsUnrestricted_onceToken, block);
    }

    return self->_localSigningIsUnrestricted;
  }

  else
  {
    return 0;
  }
}

uint64_t __51__MIDaemonConfiguration_localSigningIsUnrestricted__block_invoke(uint64_t a1)
{
  result = amfi_interface_query_bootarg_state();
  if (result && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    strerror(result);
    result = MOLogWrite();
  }

  *(*(a1 + 32) + 169) = 0;
  if (*(*(a1 + 32) + 169) == 1)
  {
    result = gLogHandle;
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      return MOLogWrite();
    }
  }

  return result;
}

- (BOOL)wasErroneousContainerCleanupDone
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobile.installation"];
  v3 = [v2 BOOLForKey:@"ErroneousContainerCleanupDone"];

  return v3;
}

- (void)setErroneousContainerCleanupDone:(BOOL)done
{
  doneCopy = done;
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobile.installation"];
  [v4 setBool:doneCopy forKey:@"ErroneousContainerCleanupDone"];
}

- (BOOL)haveUpdatedAppExtensionDataContainersWithParentID
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobile.installation"];
  v3 = [v2 integerForKey:@"ExtensionDataContainerParentIDUpdateVersion"] == 1;

  return v3;
}

- (void)setHaveUpdatedAppExtensionDataContainersWithParentID:(BOOL)d
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobile.installation"];
  [v3 setObject:&unk_1F2888DF0 forKey:@"ExtensionDataContainerParentIDUpdateVersion"];
}

- (id)builtInApplicationBundleIDs
{
  v9.receiver = self;
  v9.super_class = MIDaemonConfiguration;
  builtInApplicationBundleIDs = [(MIGlobalConfiguration *)&v9 builtInApplicationBundleIDs];
  v3 = MIDiskImageManagerProxy();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appBundleIDsOnAttachedEntityType:1];
    v6 = [builtInApplicationBundleIDs setByAddingObjectsFromSet:v5];

    v7 = [v4 appBundleIDsOnAttachedEntityType:2];
    builtInApplicationBundleIDs = [v6 setByAddingObjectsFromSet:v7];
  }

  return builtInApplicationBundleIDs;
}

- (NSURL)journalStorageBaseURL
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"Journal" isDirectory:1];

  return v3;
}

- (NSURL)currentUserJournalStorageBaseURL
{
  currentUserDataDirectory = [(MIDaemonConfiguration *)self currentUserDataDirectory];
  v3 = [currentUserDataDirectory URLByAppendingPathComponent:@"Journal" isDirectory:1];

  return v3;
}

- (NSURL)launchServicesOperationStorageBaseURL
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"LaunchServicesOperations" isDirectory:1];

  return v3;
}

- (NSURL)launchServicesOperationLookAsideStorageBaseURL
{
  dataDirectory = [(MIGlobalConfiguration *)self dataDirectory];
  v3 = [dataDirectory URLByAppendingPathComponent:@"ReconcilingLSOperations" isDirectory:1];

  return v3;
}

- (NSURL)currentUserLaunchServicesOperationStorageBaseURL
{
  currentUserDataDirectory = [(MIDaemonConfiguration *)self currentUserDataDirectory];
  v3 = [currentUserDataDirectory URLByAppendingPathComponent:@"LaunchServicesOperations" isDirectory:1];

  return v3;
}

- (NSURL)currentUserLaunchServicesOperationLookAsideStorageBaseURL
{
  currentUserDataDirectory = [(MIDaemonConfiguration *)self currentUserDataDirectory];
  v3 = [currentUserDataDirectory URLByAppendingPathComponent:@"ReconcilingLSOperations" isDirectory:1];

  return v3;
}

- (void)init
{
  OUTLINED_FUNCTION_1(self, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_0();
  _os_crash_msg();
  __break(1u);
}

- (void)daemonUserDataLibraryDirectory
{
  OUTLINED_FUNCTION_1(self, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_0();
  _os_crash_msg();
  __break(1u);
}

- (void)installcoordinationdUserDataLibraryDirectory
{
  OUTLINED_FUNCTION_1(self, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_0();
  _os_crash_msg();
  __break(1u);
}

@end