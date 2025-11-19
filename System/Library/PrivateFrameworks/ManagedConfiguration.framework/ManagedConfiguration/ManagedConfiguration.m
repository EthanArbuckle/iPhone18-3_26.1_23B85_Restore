uint64_t MCHasMigrated()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = migrationCheckQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MCHasMigrated_block_invoke;
  block[3] = &unk_1E77D2418;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

id migrationCheckQueue()
{
  if (migrationCheckQueue_onceToken != -1)
  {
    migrationCheckQueue_cold_1();
  }

  v1 = migrationCheckQueue_queue;

  return v1;
}

void __MCHasMigrated_block_invoke(uint64_t a1)
{
  v2 = kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_migrationCheckQueueHasMigrated;
  if ((kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_migrationCheckQueueHasMigrated & 1) == 0)
  {
    v3 = MCProductBuildVersion();
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = MCLegacyMetadataFilePath();
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_migrationCheckQueueHasMigrated = 0;
LABEL_18:

      v2 = kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_migrationCheckQueueHasMigrated;
      goto LABEL_19;
    }

    v7 = MEMORY[0x1E695DEF0];
    v8 = MCSystemMetadataFilePath();
    v9 = [v7 dataWithContentsOfFile:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v9 options:0 format:0 error:0];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
LABEL_9:
        v11 = [v10 objectForKey:@"LastMigratedBuild"];

        if (![v11 isEqualToString:v3])
        {
          kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_migrationCheckQueueHasMigrated = 0;
          goto LABEL_17;
        }

        v12 = MEMORY[0x1E695DEF0];
        v13 = MCUserMetadataFilePath();
        v14 = [v12 dataWithContentsOfFile:v13];

        if (v14)
        {
          v15 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v14 options:0 format:0 error:0];
          if (!v15)
          {
            goto LABEL_15;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_15;
          }
        }

        v15 = 0;
LABEL_15:
        v16 = [v15 objectForKey:@"LastMigratedBuild"];

        kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_migrationCheckQueueHasMigrated = [v16 isEqualToString:v3];
LABEL_17:

        goto LABEL_18;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

LABEL_19:
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void MCLoggingInitialize()
{
  if (MCLoggingInitialize_onceToken != -1)
  {
    MCLoggingInitialize_cold_1();
  }
}

uint64_t __notificationQueue_block_invoke()
{
  notificationQueue_queue = dispatch_queue_create("MC notification queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

id notificationQueue()
{
  if (notificationQueue_onceToken != -1)
  {
    notificationQueue_cold_1();
  }

  v1 = notificationQueue_queue;

  return v1;
}

uint64_t __MCLoggingInitialize_block_invoke()
{
  v0 = os_log_create("com.apple.ManagedConfiguration", "MC");
  v1 = _MCLogObjects;
  _MCLogObjects = v0;

  v2 = os_log_create("com.apple.ManagedConfiguration", "MDM");
  v3 = qword_1ED4ADDF0;
  qword_1ED4ADDF0 = v2;

  v4 = os_log_create("com.apple.ManagedConfiguration", "profiled");
  v5 = qword_1ED4ADDF8;
  qword_1ED4ADDF8 = v4;

  v6 = os_log_create("com.apple.ManagedConfiguration", "PIH");
  v7 = qword_1ED4ADE00;
  qword_1ED4ADE00 = v6;

  v8 = os_log_create("com.apple.ManagedConfiguration", "OpenIn");
  v9 = qword_1ED4ADE08;
  qword_1ED4ADE08 = v8;

  v10 = os_log_create("com.apple.ManagedConfiguration", "passcodenagd");
  v11 = qword_1ED4ADE18;
  qword_1ED4ADE18 = v10;

  v12 = os_log_create("com.apple.ManagedConfiguration", "ProfileEvents");
  v13 = qword_1ED4ADE10;
  qword_1ED4ADE10 = v12;

  v14 = os_log_create("com.apple.ManagedConfiguration", "Assertions");
  v15 = qword_1ED4ADE20;
  qword_1ED4ADE20 = v14;

  v16 = os_log_create("com.apple.ManagedConfiguration", "ProfileConnection");
  v17 = qword_1ED4ADE28;
  qword_1ED4ADE28 = v16;

  v18 = os_log_create("com.apple.ManagedConfiguration", "MCInstaller");
  v19 = qword_1ED4ADE30;
  qword_1ED4ADE30 = v18;

  v20 = os_log_create("com.apple.ManagedConfiguration", "File");
  v21 = qword_1ED4ADE38;
  qword_1ED4ADE38 = v20;

  v22 = os_log_create("com.apple.ManagedConfiguration", "UPPTrust");
  v23 = qword_1ED4ADE40;
  qword_1ED4ADE40 = v22;

  qword_1ED4ADE48 = os_log_create("com.apple.ManagedConfiguration", "Migration");

  return MEMORY[0x1EEE66BB8]();
}

id MCEffectiveUserSettingsFilePath()
{
  if (MCEffectiveUserSettingsFilePath_once != -1)
  {
    MCEffectiveUserSettingsFilePath_cold_1();
  }

  v1 = MCEffectiveUserSettingsFilePath_str;

  return v1;
}

id MCLegacyMetadataFilePath()
{
  if (MCLegacyMetadataFilePath_once != -1)
  {
    MCLegacyMetadataFilePath_cold_1();
  }

  v1 = MCLegacyMetadataFilePath_str;

  return v1;
}

void __migrationCheckQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("MC migration check queue", v2);
  v1 = migrationCheckQueue_queue;
  migrationCheckQueue_queue = v0;
}

id MCProductBuildVersion()
{
  v0 = _productBuildVersion;
  if (!_productBuildVersion)
  {
    _fillInProductVersions();
    v0 = _productBuildVersion;
  }

  return v0;
}

void _fillInProductVersions()
{
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v0 = [v4 objectForKey:@"ProductVersion"];
  v1 = _productVersion;
  _productVersion = v0;

  v2 = [v4 objectForKey:@"ProductBuildVersion"];
  v3 = _productBuildVersion;
  _productBuildVersion = v2;
}

void __MCLegacyPublicInfoDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/ConfigurationProfiles/PublicInfo"];
  v0 = [v2 copy];
  v1 = MCLegacyPublicInfoDirectory_str;
  MCLegacyPublicInfoDirectory_str = v0;
}

id MCLegacyPublicInfoDirectory()
{
  if (MCLegacyPublicInfoDirectory_once != -1)
  {
    MCLegacyPublicInfoDirectory_cold_1();
  }

  v1 = MCLegacyPublicInfoDirectory_str;

  return v1;
}

void __MCLegacyMetadataFilePath_block_invoke()
{
  v3 = MCLegacyPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v0 copy];
  v2 = MCLegacyMetadataFilePath_str;
  MCLegacyMetadataFilePath_str = v1;
}

id MCSystemMetadataFilePath()
{
  if (MCSystemMetadataFilePath_once != -1)
  {
    MCSystemMetadataFilePath_cold_1();
  }

  v1 = MCSystemMetadataFilePath_str;

  return v1;
}

void __MCSystemMetadataFilePath_block_invoke()
{
  v3 = MCSystemPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v0 copy];
  v2 = MCSystemMetadataFilePath_str;
  MCSystemMetadataFilePath_str = v1;
}

void __MCSystemPublicInfoDirectory_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PublicInfo"];
  v1 = [v0 copy];
  v2 = MCSystemPublicInfoDirectory_str;
  MCSystemPublicInfoDirectory_str = v1;
}

id MCSystemPublicInfoDirectory()
{
  if (MCSystemPublicInfoDirectory_once != -1)
  {
    MCSystemPublicInfoDirectory_cold_1();
  }

  v1 = MCSystemPublicInfoDirectory_str;

  return v1;
}

id MCSystemProfileStorageDirectory()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    MCSystemProfileStorageDirectory_cold_1();
  }

  v1 = MCSystemProfileStorageDirectory_str;

  return v1;
}

void __MCSystemProfileStorageDirectory_block_invoke()
{
  v3 = MCSystemProfileLibraryDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"ConfigurationProfiles"];
  v1 = [v0 copy];
  v2 = MCSystemProfileStorageDirectory_str;
  MCSystemProfileStorageDirectory_str = v1;
}

id MCSystemProfileLibraryDirectory()
{
  if (MCSystemProfileLibraryDirectory_once != -1)
  {
    MCSystemProfileLibraryDirectory_cold_1();
  }

  v1 = MCSystemProfileLibraryDirectory_str;

  return v1;
}

id MCConfigurationProfilesSystemGroupContainer()
{
  if (MCConfigurationProfilesSystemGroupContainer_onceToken != -1)
  {
    MCConfigurationProfilesSystemGroupContainer_cold_1();
  }

  v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;

  return v1;
}

void __MCSystemProfileLibraryDirectory_block_invoke()
{
  v3 = MCConfigurationProfilesSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 copy];
  v2 = MCSystemProfileLibraryDirectory_str;
  MCSystemProfileLibraryDirectory_str = v1;
}

void __MCConfigurationProfilesSystemGroupContainer_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = MCSystemGroupContainerPathWithGroupIdentifier(@"systemgroup.com.apple.configurationprofiles");
  v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
  MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = v0;

  if (!MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath)
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *v10 = 138543362;
      *&v10[4] = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
      v3 = "Failed to get profile system group container path. Overriding with expected path: %{public}@";
      v4 = v6;
      v5 = 12;
      goto LABEL_7;
    }

LABEL_8:
    v7 = [@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles" copy];
    v8 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
    MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = v7;

    goto LABEL_9;
  }

  if (([MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath isEqualToString:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles"] & 1) == 0)
  {
    v2 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *v10 = 138543618;
      *&v10[4] = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
      *&v10[12] = 2114;
      *&v10[14] = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
      v3 = "Received a profile system group container path we weren't expecting\nExpected: %{public}@\nActual: %{public}@\nOverriding MCM with expected path";
      v4 = v2;
      v5 = 22;
LABEL_7:
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_FAULT, v3, v10, v5);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
}

id MCSystemGroupContainerPathWithGroupIdentifier(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  v2 = container_system_group_path_for_identifier();
  v3 = _MCLogObjects;
  if (v2)
  {
    v4 = v2;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v9 = v1;
      v10 = 2082;
      v11 = v4;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEFAULT, "Got system group container path from MCM for %{public}@: %{public}s", buf, 0x16u);
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
    free(v4);
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v9 = v1;
      v10 = 2048;
      v11 = 1;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_ERROR, "Error getting system group container for %{public}@: %llu", buf, 0x16u);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id MCUserMetadataFilePath()
{
  if (MCUserMetadataFilePath_once != -1)
  {
    MCUserMetadataFilePath_cold_1();
  }

  v1 = MCUserMetadataFilePath_str;

  return v1;
}

void __MCUserMetadataFilePath_block_invoke()
{
  v3 = MCUserPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v0 copy];
  v2 = MCUserMetadataFilePath_str;
  MCUserMetadataFilePath_str = v1;
}

id MCUserProfileLibraryDirectory()
{
  if (MCUserProfileLibraryDirectory_once != -1)
  {
    MCUserProfileLibraryDirectory_cold_1();
  }

  v1 = MCUserProfileLibraryDirectory_str;

  return v1;
}

void sub_1A795EFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MCPublicEffectiveUserSettingsFilePath()
{
  if (MCPublicEffectiveUserSettingsFilePath_once != -1)
  {
    MCPublicEffectiveUserSettingsFilePath_cold_1();
  }

  v1 = MCPublicEffectiveUserSettingsFilePath_str;

  return v1;
}

void __MCPublicEffectiveUserSettingsFilePath_block_invoke()
{
  v3 = MCUserPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PublicEffectiveUserSettings.plist"];
  v1 = [v0 copy];
  v2 = MCPublicEffectiveUserSettingsFilePath_str;
  MCPublicEffectiveUserSettingsFilePath_str = v1;
}

id MCUserPublicInfoDirectory()
{
  if (MCUserPublicInfoDirectory_once != -1)
  {
    MCUserPublicInfoDirectory_cold_1();
  }

  v1 = MCUserPublicInfoDirectory_str;

  return v1;
}

id MCUserProfileStorageDirectory()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    MCUserProfileStorageDirectory_cold_1();
  }

  v1 = MCUserProfileStorageDirectory_str;

  return v1;
}

void __MCUserPublicInfoDirectory_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PublicInfo"];
  v1 = [v0 copy];
  v2 = MCUserPublicInfoDirectory_str;
  MCUserPublicInfoDirectory_str = v1;
}

void __MCUserProfileStorageDirectory_block_invoke()
{
  v3 = MCUserProfileLibraryDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"UserConfigurationProfiles"];
  v1 = [v0 copy];
  v2 = MCUserProfileStorageDirectory_str;
  MCUserProfileStorageDirectory_str = v1;
}

void __MCUserProfileLibraryDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library"];
  v0 = [v2 copy];
  v1 = MCUserProfileLibraryDirectory_str;
  MCUserProfileLibraryDirectory_str = v0;
}

void __MCEffectiveUserSettingsFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"EffectiveUserSettings.plist"];
  v1 = [v0 copy];
  v2 = MCEffectiveUserSettingsFilePath_str;
  MCEffectiveUserSettingsFilePath_str = v1;
}

id MCRestrictionsFilePath()
{
  if (MCRestrictionsFilePath_once != -1)
  {
    MCRestrictionsFilePath_cold_1();
  }

  v1 = MCRestrictionsFilePath_str;

  return v1;
}

void __MCRestrictionsFilePath_block_invoke()
{
  v3 = MCUserPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"Truth.plist"];
  v1 = [v0 copy];
  v2 = MCRestrictionsFilePath_str;
  MCRestrictionsFilePath_str = v1;
}

void sub_1A795F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MCSystemUserSettingsFilePath()
{
  if (MCSystemUserSettingsFilePath_once != -1)
  {
    MCSystemUserSettingsFilePath_cold_1();
  }

  v1 = MCSystemUserSettingsFilePath_str;

  return v1;
}

void sub_1A795FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MCContainingBundleIDForBundleID(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v1 error:&v11];
  v3 = v11;
  if (v2)
  {
    v4 = [v2 containingBundleRecord];
    v5 = [v4 bundleIdentifier];

    v6 = v1;
    if (v5)
    {
      v6 = v5;
    }
  }

  else
  {
    v7 = _MCLogObjects;
    v6 = v1;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v13 = v1;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_DEBUG, "Failed to look get application extension record for bundleID %{public}@ Error: %{public}@", buf, 0x16u);
      v6 = v1;
    }
  }

  v8 = v6;

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL MCIsAppAccountBasedForDragDrop(void *a1)
{
  v1 = a1;
  if (MCAccountBasedAppsForDragDrop_onceToken != -1)
  {
    MCIsAppAccountBasedForDragDrop_cold_1();
  }

  v2 = ([MCAccountBasedAppsForDragDrop_accountBasedApps containsObject:v1] & 1) != 0 || MCIsAppBasicallySafari(v1);

  return v2;
}

void __MCAccountBasedAppsForDragDrop_block_invoke()
{
  v5[18] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.mobilemail";
  v5[1] = @"com.apple.mobilecal";
  v5[2] = @"com.apple.mobilenotes";
  v5[3] = @"com.apple.MobileAddressBook";
  v5[4] = @"com.apple.MailCompositionService";
  v5[5] = @"com.apple.NanoCalendar";
  v5[6] = @"com.apple.calaccessd";
  v5[7] = @"com.apple.UpNextWidget.extension";
  v5[8] = @"com.apple.CalendarNotification.CalendarContentExtension";
  v5[9] = @"com.apple.SafariViewService";
  v5[10] = @"com.apple.reminders";
  v5[11] = @"com.apple.DocumentsApp";
  v5[12] = @"com.apple.DocumentManagerUICore.RecentsAvocado";
  v5[13] = @"com.apple.DocumentManagerUICore.Service";
  v5[14] = @"com.apple.quicklook.extension.previewUI";
  v5[15] = @"com.apple.quicklook.UIExtension";
  v5[16] = @"com.apple.DocumentManagerUICore.RecentsAppPopover";
  v5[17] = @"com.apple.springboard";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:18];
  v2 = [v0 setWithArray:v1];
  v3 = MCAccountBasedAppsForDragDrop_accountBasedApps;
  MCAccountBasedAppsForDragDrop_accountBasedApps = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A7960510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id MCXPCProtocolInterface()
{
  if (MCXPCProtocolInterface_onceToken != -1)
  {
    MCXPCProtocolInterface_cold_1();
  }

  v1 = MCXPCProtocolInterface_interface;

  return v1;
}

void __MCXPCProtocolInterface_block_invoke()
{
  v9[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1AC8B70];
  v1 = MCXPCProtocolInterface_interface;
  MCXPCProtocolInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v9[3] = objc_opt_class();
  v9[4] = objc_opt_class();
  v9[5] = objc_opt_class();
  v9[6] = objc_opt_class();
  v9[7] = objc_opt_class();
  v9[8] = objc_opt_class();
  v9[9] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:10];
  v4 = [v2 setWithArray:v3];

  v8 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v6 = [v4 setByAddingObjectsFromArray:v5];

  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_checkInWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_checkCarrierProfileAndForceReinstallation_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_allowedOpenInAppBundleIDs_originatingAppBundleID_originatingIsManaged_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_allowedImportFromAppBundleIDs_importingAppBundleID_importingIsManaged_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_hasMailAccountsWithFilteringEnabled_sourceAccountManagement_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setAutoCorrectionAllowed_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setSmartPunctuationAllowed_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setPredictiveKeyboardAllowed_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setContinuousPathKeyboardAllowed_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setKeyboardShortcutsAllowed_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setSpellCheckAllowed_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setAllowedURLStrings_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_waitForMigrationIncludingPostRestoreMigration_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_notifyDeviceUnlockedAndPasscodeRequiredWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_notifyDeviceUnlockedWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_mayShareToMessagesForOriginatingAppBundleID_originatingAccountIsManaged_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_mayShareToAirDropForOriginatingAppBundleID_originatingAccountIsManaged_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_defaultAppBundleIDForCommunicationServiceType_forAccountWithIdentifier_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_verifiedMDMProfileIdentifierWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_installProfileData_interactive_options_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_appleConnect_installMDMAssociatedProfileData_interactive_options_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_queueProfileDataForInstallation_originalFileName_originatingBundleID_transitionToUI_completion_ argumentIndex:2 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_popProfileDataFromHeadOfInstallationQueueWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_peekProfileDataFromPurgatoryForDeviceType_withCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_updateProfileIdentifier_interactive_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeProfileWithIdentifier_installationType_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeUninstalledProfileWithIdentifier_installationType_targetDeviceType_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeProtectedProfileWithIdentifier_installationType_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_applyRestrictionDictionary_toSystem_overrideRestrictions_appsAndOptions_clientType_clientUUID_localizedClientDescription_localizedWarningMessage_completion_ argumentIndex:2 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_clearRecoveryPasscodeWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_changePasscode_oldPasscode_isRecovery_skipRecovery_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_changePasscodeWithOldPasscodeContext_newPasscodeContext_isRecovery_skipRecovery_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_clearPasscodeWithEscrowKeybagData_secret_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_clearPasscodeWithEscrowKeybagData_secretContext_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_isPasscodeCompliantWithNamedPolicy_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeOrphanedClientRestrictionsWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_managedSystemConfigurationServiceIDsWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_managedWiFiNetworkNamesWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_migrateWithContext_passcodeWasSetInBackup_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_migrateCleanupMigratorWithContext_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setParametersForSettingsByType_configurationUUID_toSystem_user_passcode_credentialSet_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setParametersForSettingsByType_configurationUUID_toSystem_user_credentialSet_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeBoolSetting_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeValueSetting_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_openSensitiveURL_unlock_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_storeCertificateData_forIPCUIdentifier_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_installProvisioningProfileData_managingProfileIdentifier_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeProvisioningProfileWithUUID_managingProfileIdentifier_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_trustedCodeSigningIdentitiesWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_syncTrustedCodeSigningIdentitiesWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_provisiongProfileUUIDsForSignerIdentity_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_signerIdentityForBundleID_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_isBundleBlocked_completion_ argumentIndex:3 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_areBundlesBlocked_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_notifyStartComplianceTimer_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_notifyHaveSeenComplianceMessageWithLastLockDate_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_recomputeUserComplianceWarningWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_recomputeUserComplianceWarningWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_recomputePerClientUserComplianceWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_resetAllSettingsToDefaultsIsUserInitiated_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setUserInfo_forClientUUID_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeExpiredProfilesWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_storeProfileData_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_storedProfileDataWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_markStoredProfileAsInstalledWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_rereadManagedAppAttributesWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_reducedMachineInfoDataWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_cloudConfigurationMachineInfoDataWithAdditionalInfo_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_cloudConfigurationStoreDetails_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_createActivationLockBypassCodeWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_storeActivationRecord_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_setUserBookmarks_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_validateAppBundleIDs_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_managingOrganizationInformationWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel__debug_scheduleBackgroundTask_interval_tolerance_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_stageMDMEnrollmentInfoForPairingWatchWithProfileData_orServiceURL_anchorCertificates_supervised_declarationKeys_declarationConfiguration_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_unstageMDMEnrollmentInfoForPairingWatchWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_applyPairingWatchMDMEnrollmentData_completion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_updateMDMEnrollmentInfoForPairingWatch_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removePostSetupAutoInstallSetAsideProfileWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_removeSetAsideCloudConfigurationProfileWithCompletion_ argumentIndex:0 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_effectiveBoolValueForWatchSetting_pairingID_pairingDataStore_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_effectiveValueForWatchSetting_pairingID_pairingDataStore_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_effectiveValuesForWatchIntersectionSetting_pairingID_pairingDataStore_completion_ argumentIndex:1 ofReply:1];
  [MCXPCProtocolInterface_interface setClasses:v6 forSelector:sel_effectiveValuesForWatchUnionSetting_pairingID_pairingDataStore_completion_ argumentIndex:1 ofReply:1];

  v7 = *MEMORY[0x1E69E9840];
}

id MCProfileConnectionXPCProtocolInterface()
{
  if (MCProfileConnectionXPCProtocolInterface_onceToken != -1)
  {
    MCProfileConnectionXPCProtocolInterface_cold_1();
  }

  v1 = MCProfileConnectionXPCProtocolInterface_interface;

  return v1;
}

void __MCProfileConnectionXPCProtocolInterface_block_invoke()
{
  v20[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1AA8938];
  v1 = MCProfileConnectionXPCProtocolInterface_interface;
  MCProfileConnectionXPCProtocolInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v20[3] = objc_opt_class();
  v20[4] = objc_opt_class();
  v20[5] = objc_opt_class();
  v20[6] = objc_opt_class();
  v20[7] = objc_opt_class();
  v20[8] = objc_opt_class();
  v20[9] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:10];
  v4 = [v2 setWithArray:v3];

  v19 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v6 = [v4 setByAddingObjectsFromArray:v5];

  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidUpdateStatus_completion_ argumentIndex:0 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidBeginInstallingNextProfileData_completion_ argumentIndex:0 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidFinishInstallationWithIdentifier_error_completion_ argumentIndex:1 ofReply:0];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidFinishInstallationWithIdentifier_error_completion_ argumentIndex:0 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v4 forSelector:sel_doMCICDidRequestUserInput_completion_ argumentIndex:0 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidRequestUserInput_completion_ argumentIndex:3 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidRequestMAIDSignIn_personaID_completion_ argumentIndex:1 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidRequestManagedRestoreWithManagedAppleID_personaID_completion_ argumentIndex:1 ofReply:1];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidFinishPreflightWithError_completion_ argumentIndex:0 ofReply:0];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidFinishPreflightWithError_completion_ argumentIndex:3 ofReply:1];
  v7 = MCProfileConnectionXPCProtocolInterface_interface;
  v8 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v10 = [v8 setWithArray:v9];
  [v7 setClasses:v10 forSelector:sel_doMCICDidRequestShowUserWarnings_completion_ argumentIndex:1 ofReply:0];

  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidRequestShowUserWarnings_completion_ argumentIndex:1 ofReply:1];
  v11 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:3];
  v13 = [v11 setWithArray:{v12, v15, v16}];

  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v13 forSelector:sel_doMCICDidRequestShowUserWarnings_completion_ argumentIndex:0 ofReply:0];
  [MCProfileConnectionXPCProtocolInterface_interface setClasses:v6 forSelector:sel_doMCICDidRequestCurrentPasscodeNeedsExtractable_withCompletion_ argumentIndex:3 ofReply:1];

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t ACMKernelControl(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMKernelControl";
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(ioKitTransport);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMKernelControl";
    v10 = 2048;
    v11 = v2;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_1A795B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

id _MCKeybagDeviceConfigurations(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = @"DeviceHandle";
    v7[0] = v1;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  v3 = MKBGetDeviceConfigurations();

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t performCommand(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v45 = v21;
      v22 = IOConnectCallStructMethod(dword_1EB2AF11C, 0, v19, inputStructCnt, a6, &v45);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (_logLevel <= 0x46u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_27();
          v50 = v25;
          v51 = v23;
          v52 = v25;
          v53 = v23;
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v45;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v47 = 136315650;
    v48 = "ACMLib";
    OUTLINED_FUNCTION_13_1();
    v49 = "performCommand";
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v21[0] = v21;
    MEMORY[0x1EEE9AC00](a1);
    v15 = (v21 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      LibCall_ACMKernelControl_cold_1();
    }

    v17 = v13(a2, 26, 0, v21 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t ioKitTransport(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = init();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = performCommand(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t init()
{
  v18 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (_MergedGlobals)
  {
    v5 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E696CD68];
    v7 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(v6, v7);
    if (!MatchingService)
    {
      v10 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v9 = MatchingService;
    v5 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &dword_1EB2AF11C);
    if (v5)
    {
      v10 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v9);
    _MergedGlobals = 1;
  }

  v10 = 10;
LABEL_10:
  if (v10 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return generate_unwrap_shared_key_curve25519(v0, v1 + 8, (v1 + 40));
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    _allocatedMem_2 += size;
  }

  return result;
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v20 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v19, 0x2000uLL);
  v18 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v19, &v18);
  if (v3)
  {
    if (v18)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

id MCUserHomeScreenLayoutFilePath()
{
  if (MCUserHomeScreenLayoutFilePath_once != -1)
  {
    MCUserHomeScreenLayoutFilePath_cold_1();
  }

  v1 = MCUserHomeScreenLayoutFilePath_str;

  return v1;
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

id MCSystemHomeScreenLayoutFilePath()
{
  if (MCSystemHomeScreenLayoutFilePath_once != -1)
  {
    MCSystemHomeScreenLayoutFilePath_cold_1();
  }

  v1 = MCSystemHomeScreenLayoutFilePath_str;

  return v1;
}

void OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

void *OUTLINED_FUNCTION_27_1(size_t a1)
{

  return calloc(a1, 1uLL);
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a1, a2);
    free(v3);
    v4 = _allocatedMem_2 - v2;
    if (_allocatedMem_2 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_2 = v4;
  }
}

uint64_t OUTLINED_FUNCTION_0_0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_0_7(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t OUTLINED_FUNCTION_0_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return cchkdf();
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t MCEqualDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] || objc_msgSend(v4, "count"))
  {
    v5 = [v3 isEqualToDictionary:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1A796C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A796C7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A796CB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A796D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A796D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A796DD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *MCKeychainCopyIdentityFromPKCS12(const __CFData *a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  items = 0;
  if (!a2)
  {
    v10 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Can't decode identity certificate because the password is missing.", buf, 2u);
    }

    goto LABEL_14;
  }

  v20 = *MEMORY[0x1E697B0B0];
  v21[0] = a2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v4 = SecPKCS12Import(a1, v3, &items);
  if (v4)
  {
    v5 = v4;
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v5;
      v7 = "Can't decode identity certificate. Error: %d";
      v8 = v6;
      v9 = 8;
LABEL_12:
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (CFArrayGetCount(items) != 1)
  {
    v14 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Too many identity certificates in PKCS#12 container.";
      v8 = v14;
      v9 = 2;
      goto LABEL_12;
    }

LABEL_13:

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
  v13 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

LABEL_15:
  if (items)
  {
    CFRelease(items);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

id MCUSEnglishErrorString(void *a1)
{
  v1 = a1;
  v2 = _USEnglishLocalizedStringForKey(v1);
  if (!v2)
  {
    v2 = v1;
  }

  return v2;
}

id MCUSEnglishErrorFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = _USEnglishLocalizedStringForKey(a1);
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];

  return v10;
}

id _USEnglishLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = _bundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Errors" localization:@"en"];

  return v3;
}

id MCLocalizedStringInTable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _bundle();
  v6 = [v5 localizedStringForKey:v4 value:0 table:v3];

  return v6;
}

id _bundle()
{
  if (_bundle_once != -1)
  {
    _bundle_cold_1();
  }

  v1 = _bundle_bundle;

  return v1;
}

id MCLocalizedAppleInternalString(void *a1)
{
  v1 = _internalBundle_once;
  v2 = a1;
  if (v1 != -1)
  {
    MCLocalizedAppleInternalString_cold_1();
  }

  v3 = [_internalBundle_bundle localizedStringForKey:v2 value:0 table:@"Payloads-AppleInternal"];

  return v3;
}

id MCLocalizedStringByDevice(void *a1)
{
  v1 = a1;
  v2 = MCGestaltGetDeviceClass();
  v3 = MCLocalizedStringForDevice(v1, 0, v2);

  return v3;
}

id MCLocalizedStringForDevice(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [a3 uppercaseString];
    v9 = [v7 stringWithFormat:@"%@_%@", v6, v8];

    v10 = _MCLocalizedStringForDomain(v9, a2);
    if ([v10 isEqualToString:v9])
    {
      v11 = _MCLocalizedStringForDomain(v6, a2);
    }

    else
    {
      v11 = v10;
    }

    v12 = v11;
  }

  else
  {
    v12 = _MCLocalizedStringForDomain(v5, a2);
  }

  return v12;
}

id MCLocalizedErrorStringByDevice(void *a1)
{
  v1 = a1;
  v2 = MCGestaltGetDeviceClass();
  v3 = MCLocalizedStringForDevice(v1, 1, v2);

  return v3;
}

id MCLocalizedAppleInternalStringByDevice(void *a1)
{
  v1 = a1;
  v2 = MCGestaltGetDeviceClass();
  v3 = MCLocalizedStringForDevice(v1, 2, v2);

  return v3;
}

id MCUSEnglishErrorStringByDevice(void *a1)
{
  v1 = a1;
  v2 = MCGestaltGetDeviceClass();
  v3 = MCLocalizedStringForDevice(v1, 3, v2);

  return v3;
}

id _MCLocalizedStringForDomain(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = MCLocalizedAppleInternalString(v4);
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_12;
      }

      v7 = MCUSEnglishErrorString(v4);
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_12;
      }

      v6 = @"Errors";
    }

    else
    {
      v6 = @"Payloads";
    }

    v7 = MCLocalizedStringInTable(v4, v6);
  }

  v2 = v7;
LABEL_12:

  return v2;
}

id MCLocalizedFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = MCLocalizedStringInTable(v10, @"Payloads");

  v13 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v14 = [v11 initWithFormat:v12 locale:v13 arguments:&a9];

  return v14;
}

id MCLocalizedErrorFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = MCLocalizedStringInTable(v10, @"Errors");

  v13 = [v11 initWithFormat:v12 arguments:&a9];

  return v13;
}

id MCLocalizedFormatByDevice(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = MCLocalizedStringByDevice(v10);

  v13 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v14 = [v11 initWithFormat:v12 locale:v13 arguments:&a9];

  return v14;
}

id MCLocalizedErrorFormatByDevice(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = MCLocalizedErrorStringByDevice(v10);

  v13 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v14 = [v11 initWithFormat:v12 locale:v13 arguments:&a9];

  return v14;
}

id MCErrorVaArray(void *a1, id *a2)
{
  v3 = a1;
  v4 = MCLocalizedStringInTable(v3, @"Errors");
  v5 = MCUSEnglishErrorString(v3);

  v6 = MCErrorVaList(v4, v5, a2);

  return v6;
}

id MCErrorVaList(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  v21 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v8 initWithFormat:v5 locale:v9 arguments:v21];

  [v7 addObject:v10];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = MCUSEnglishLocale();
  v13 = [v11 initWithFormat:v6 locale:v12 arguments:v21];

  [v7 addObject:v13];
  v19 = v21 + 1;
  v14 = *v21;
  if (v14)
  {
    v15 = v14;
    do
    {
      [v7 addObject:{v15, v19}];
      v16 = v20;
      v19 = v20 + 1;
      v17 = *v16;

      v15 = v17;
    }

    while (v17);
  }

  return v7;
}

id MCErrorArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = MCErrorVaArray(a1, &a9);

  return v9;
}

id MCErrorArrayByDevice(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = a1;
  v10 = MCLocalizedErrorStringByDevice(v9);
  v11 = MCUSEnglishErrorStringByDevice(v9);

  v12 = MCErrorVaList(v10, v11, &a9);

  return v12;
}

id MCErrorArrayFromLocalizedDescription(void *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v1 = MEMORY[0x1E695DFB0];
  v2 = a1;
  v3 = [v1 null];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t ___bundle_block_invoke()
{
  _bundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void ___internalBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = MCAppleInternalBundlePath();
  v1 = [v0 bundleWithPath:v3];
  v2 = _internalBundle_bundle;
  _internalBundle_bundle = v1;
}

id _intersectionFeaturesToAlias()
{
  if (_intersectionFeaturesToAlias_onceToken != -1)
  {
    _intersectionFeaturesToAlias_cold_1();
  }

  v1 = _intersectionFeaturesToAlias_dict;

  return v1;
}

void ___intersectionFeaturesToAlias_block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"allowListedAppBundleIDs";
  v4[1] = @"whitelistedAppBundleIDs";
  v5 = @"appLockBundleIDs";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v6[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = _intersectionFeaturesToAlias_dict;
  _intersectionFeaturesToAlias_dict = v1;

  v3 = *MEMORY[0x1E69E9840];
}

void ___intersectionAliasToFeatures_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"allowListedAppBundleIDs";
  v3[1] = @"whitelistedAppBundleIDs";
  v4[0] = @"appLockBundleIDs";
  v4[1] = @"appLockBundleIDs";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = _intersectionAliasToFeatures_dict;
  _intersectionAliasToFeatures_dict = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id MCProductVersion()
{
  v0 = _productVersion;
  if (!_productVersion)
  {
    _fillInProductVersions();
    v0 = _productVersion;
  }

  return v0;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7970FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1A7972AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MCFeatureInsertRestrictedBool(void *a1, void *a2, void *a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v14[0] = @"value";
    v14[1] = @"preference";
    v15[0] = a3;
    v7 = MEMORY[0x1E696AD98];
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = [v7 numberWithBool:a4];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    [v10 setObject:v12 forKeyedSubscript:v9];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void MCFeatureInsertRestrictedValue(void *a1, void *a2, void *a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v14[0] = @"value";
    v14[1] = @"preferSmallerValues";
    v15[0] = a3;
    v7 = MEMORY[0x1E696AD98];
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = [v7 numberWithBool:a4];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    [v10 setObject:v12 forKeyedSubscript:v9];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void MCFeatureSetBoolSetting(void *a1, void *a2, uint64_t a3)
{
  v8 = a1;
  v5 = a2;
  v6 = [v8 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [v8 setObject:v6 forKeyedSubscript:v5];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v6 setObject:v7 forKeyedSubscript:@"value"];
}

uint64_t MCIsAppExemptFromOpenInSourceRestrictions(void *a1)
{
  v1 = MCAppsExemptFromOpenInSourceRestrictions_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MCIsAppExemptFromOpenInSourceRestrictions_cold_1();
  }

  v3 = [MCAppsExemptFromOpenInSourceRestrictions_retval containsObject:v2];

  return v3;
}

uint64_t MCIsAppExemptFromImportFromTargetRestrictions(void *a1)
{
  v1 = a1;
  v2 = MCAppsExemptFromOpenInTargetRestrictions();
  v3 = [v2 containsObject:v1];

  return v3;
}

id MCAppsExemptFromOpenInTargetRestrictions()
{
  if (MCAppsExemptFromOpenInTargetRestrictions_onceToken != -1)
  {
    MCAppsExemptFromOpenInTargetRestrictions_cold_1();
  }

  v1 = MCAppsExemptFromOpenInTargetRestrictions_retval;

  return v1;
}

uint64_t MCIsAppExemptFromImportFromTargetRestrictionsForContacts(void *a1)
{
  v1 = MCAppsExemptFromOpenInTargetRestrictionsForContacts_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MCIsAppExemptFromImportFromTargetRestrictionsForContacts_cold_1();
  }

  v3 = [MCAppsExemptFromOpenInTargetRestrictionsForContacts_retval containsObject:v2];

  return v3;
}

uint64_t MCIsAppAccountBasedSourceForOpenIn(void *a1)
{
  v1 = a1;
  v2 = MCAccountBasedAppsForOpenIn();
  if (([v2 containsObject:v1] & 1) != 0 || MCIsAppBasicallySafari(v1))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 isEqualToString:@"com.apple.iBooks"];
  }

  return v3;
}

id MCAccountBasedAppsForOpenIn()
{
  if (MCAccountBasedAppsForOpenIn_onceToken != -1)
  {
    MCAccountBasedAppsForOpenIn_cold_1();
  }

  v1 = MCAccountBasedAppsForOpenIn_accountBasedApps;

  return v1;
}

BOOL MCIsAppBasicallySafari(void *a1)
{
  v1 = a1;
  v2 = ([v1 isEqualToString:@"com.apple.mobilesafari"] & 1) != 0 || objc_msgSend(v1, "rangeOfString:options:", @"com.apple.webapp-", 8) == 0;

  return v2;
}

uint64_t MCIsAppAccountBasedTargetForOpenIn(void *a1)
{
  v1 = a1;
  v2 = MCAccountBasedAppsForOpenIn();
  v3 = [v2 containsObject:v1];

  return v3;
}

uint64_t MCIsAppExemptFromDragDropManagement(void *a1)
{
  v1 = MCAppsExemptFromDragDropManagement_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MCIsAppExemptFromDragDropManagement_cold_1();
  }

  v3 = [MCAppsExemptFromDragDropManagement_retval containsObject:v2];

  return v3;
}

id MCUnrestrictableApps()
{
  if (MCUnrestrictableApps_onceToken != -1)
  {
    MCUnrestrictableApps_cold_1();
  }

  v1 = MCUnrestrictableApps_unrestrictableApps;

  return v1;
}

void __MCUnrestrictableApps_block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v6[0] = @"com.apple.appleseed.FeedbackAssistant";
  v6[1] = @"com.apple.Preferences";
  v6[2] = @"com.apple.TVSettings";
  v6[3] = @"com.apple.TapToRadar";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v2 = [v0 setWithArray:v1];

  if (MCCTHasTelephony())
  {
    [v2 addObject:@"com.apple.mobilephone"];
  }

  v3 = [v2 copy];
  v4 = MCUnrestrictableApps_unrestrictableApps;
  MCUnrestrictableApps_unrestrictableApps = v3;

  v5 = *MEMORY[0x1E69E9840];
}

id MCAlwaysRestrictedAppsInEDUMode()
{
  if (MCAlwaysRestrictedAppsInEDUMode_onceToken != -1)
  {
    MCAlwaysRestrictedAppsInEDUMode_cold_1();
  }

  v1 = MCAlwaysRestrictedAppsInEDUMode_restrictedApps;

  return v1;
}

void __MCAlwaysRestrictedAppsInEDUMode_block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.tips";
  v5[1] = @"com.apple.Home";
  v5[2] = @"com.apple.ScreenTimeWidgetApplication";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = MCAlwaysRestrictedAppsInEDUMode_restrictedApps;
  MCAlwaysRestrictedAppsInEDUMode_restrictedApps = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __MCAppsExemptFromOpenInSourceRestrictions_block_invoke()
{
  v5[10] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.phone.addressbooksyncd";
  v5[1] = @"com.apple.AssistantServices";
  v5[2] = @"com.apple.watch.addressbooksyncd";
  v5[3] = @"com.apple.Carousel";
  v5[4] = @"com.apple.Maps";
  v5[5] = @"com.apple.MobileSMS";
  v5[6] = @"com.apple.Preferences";
  v5[7] = @"com.apple.sharingd";
  v5[8] = @"com.apple.siri";
  v5[9] = @"com.apple.springboard";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  v2 = [v0 setWithArray:v1];
  v3 = MCAppsExemptFromOpenInSourceRestrictions_retval;
  MCAppsExemptFromOpenInSourceRestrictions_retval = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __MCAppsExemptFromOpenInTargetRestrictions_block_invoke()
{
  v5[8] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.phone.addressbooksyncd";
  v5[1] = @"com.apple.AssistantServices";
  v5[2] = @"com.apple.mobilecal.CalendarFocusConfigurationExtension";
  v5[3] = @"com.apple.mobilecal.widget";
  v5[4] = @"com.apple.watch.addressbooksyncd";
  v5[5] = @"com.apple.TelephonyUtilities.PhoneIntentHandler";
  v5[6] = @"com.apple.Preferences";
  v5[7] = @"com.apple.siri";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = MCAppsExemptFromOpenInTargetRestrictions_retval;
  MCAppsExemptFromOpenInTargetRestrictions_retval = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __MCAppsExemptFromOpenInTargetRestrictionsForContacts_block_invoke()
{
  v6[10] = *MEMORY[0x1E69E9840];
  v0 = MCAppsExemptFromOpenInTargetRestrictions();
  v1 = [v0 mutableCopy];

  v6[0] = @"com.apple.asd";
  v6[1] = @"com.apple.telephonyutilities.callservicesd";
  v6[2] = @"com.apple.ContactsUI.LimitedAccessPromptView";
  v6[3] = @"com.apple.ContactsUI.LimitedLibraryPickerViewService";
  v6[4] = @"com.apple.ContactsUI.ContactsButtonXPCService";
  v6[5] = @"com.apple.routined";
  v6[6] = @"com.apple.sharingd";
  v6[7] = @"com.apple.siriknowledged";
  v6[8] = @"com.apple.suggestd";
  v6[9] = @"com.apple.transparencyd";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:10];
  [v1 addObjectsFromArray:v2];

  v3 = [v1 copy];
  v4 = MCAppsExemptFromOpenInTargetRestrictionsForContacts_retval;
  MCAppsExemptFromOpenInTargetRestrictionsForContacts_retval = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __MCAccountBasedAppsForOpenIn_block_invoke()
{
  v5[31] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.bird";
  v5[1] = @"com.apple.calaccessd";
  v5[2] = @"com.apple.mobilecal";
  v5[3] = @"com.apple.CalendarNotification.CalendarContentExtension";
  v5[4] = @"com.apple.mobilecal.CalendarWidgetExtension";
  v5[5] = @"com.apple.CalendarWidget.IntentsExtension";
  v5[6] = @"com.apple.CallHistorySyncHelper";
  v5[7] = @"com.apple.telephonyutilities.callservicesd";
  v5[8] = @"com.apple.DocumentManagerUICore.RecentsAppPopover";
  v5[9] = @"com.apple.DocumentsApp";
  v5[10] = @"com.apple.DocumentManagerUICore.RecentsAvocado";
  v5[11] = @"com.apple.NanoCalendar";
  v5[12] = @"com.apple.callhistory.sync-helper";
  v5[13] = @"com.apple.mobilemail";
  v5[14] = @"com.apple.MailCompositionService";
  v5[15] = @"com.apple.email.maild";
  v5[16] = @"com.apple.EmailDaemon";
  v5[17] = @"com.apple.mobilemail.MailIntentsExtension";
  v5[18] = @"com.apple.mobilenotes";
  v5[19] = @"com.apple.MobileAddressBook";
  v5[20] = @"com.apple.profilectl";
  v5[21] = @"com.apple.reminders";
  v5[22] = @"com.apple.SafariViewService";
  v5[23] = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v5[24] = @"com.apple.shortcuts";
  v5[25] = @"com.apple.WorkflowKit.ShortcutsIntents";
  v5[26] = @"com.apple.shortcuts.runtime";
  v5[27] = @"com.apple.shortcuts.Today-Extension";
  v5[28] = @"com.apple.shortcuts.Run-Workflow";
  v5[29] = @"com.apple.TelephonyUtilities";
  v5[30] = @"com.apple.UpNextWidget.extension";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:31];
  v2 = [v0 setWithArray:v1];
  v3 = MCAccountBasedAppsForOpenIn_accountBasedApps;
  MCAccountBasedAppsForOpenIn_accountBasedApps = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __MCAppsExemptFromDragDropManagement_block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.springboard";
  v5[1] = @"com.apple.Maps";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = MCAppsExemptFromDragDropManagement_retval;
  MCAppsExemptFromDragDropManagement_retval = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id MCConfigurationProfilesSystemGroupContainerNF()
{
  v0 = MCConfigurationProfilesSystemGroupContainer();
  if (v0)
  {
    v1 = [@"/.nofollow" stringByAppendingString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id MCLegacyProfileStorageDirectory()
{
  if (MCLegacyProfileStorageDirectory_once != -1)
  {
    MCLegacyProfileStorageDirectory_cold_1();
  }

  v1 = MCLegacyProfileStorageDirectory_str;

  return v1;
}

void __MCLegacyProfileStorageDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/ConfigurationProfiles"];
  v0 = [v2 copy];
  v1 = MCLegacyProfileStorageDirectory_str;
  MCLegacyProfileStorageDirectory_str = v0;
}

id MCSystemProfileLibraryDirectoryNF()
{
  if (MCSystemProfileLibraryDirectoryNF_once != -1)
  {
    MCSystemProfileLibraryDirectoryNF_cold_1();
  }

  v1 = MCSystemProfileLibraryDirectoryNF_str;

  return v1;
}

void __MCSystemProfileLibraryDirectoryNF_block_invoke()
{
  v3 = MCConfigurationProfilesSystemGroupContainerNF();
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 copy];
  v2 = MCSystemProfileLibraryDirectoryNF_str;
  MCSystemProfileLibraryDirectoryNF_str = v1;
}

id MCSystemProfileStorageDirectoryNF()
{
  if (MCSystemProfileStorageDirectoryNF_once != -1)
  {
    MCSystemProfileStorageDirectoryNF_cold_1();
  }

  v1 = MCSystemProfileStorageDirectoryNF_str;

  return v1;
}

void __MCSystemProfileStorageDirectoryNF_block_invoke()
{
  v3 = MCSystemProfileLibraryDirectoryNF();
  v0 = [v3 stringByAppendingPathComponent:@"ConfigurationProfiles"];
  v1 = [v0 copy];
  v2 = MCSystemProfileStorageDirectoryNF_str;
  MCSystemProfileStorageDirectoryNF_str = v1;
}

id MCHoldingTankManifestName()
{
  if (MCHoldingTankManifestName_once != -1)
  {
    MCHoldingTankManifestName_cold_1();
  }

  v1 = MCHoldingTankManifestName_str;

  return v1;
}

uint64_t __MCHoldingTankManifestName_block_invoke()
{
  MCHoldingTankManifestName_str = [@"HoldingTankManifest.plist" copy];

  return MEMORY[0x1EEE66BB8]();
}

id MCSystemManifestPath()
{
  if (MCSystemManifestPath_once != -1)
  {
    MCSystemManifestPath_cold_1();
  }

  v1 = MCSystemManifestPath_str;

  return v1;
}

void __MCSystemManifestPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PayloadManifest.plist"];
  v1 = [v0 copy];
  v2 = MCSystemManifestPath_str;
  MCSystemManifestPath_str = v1;
}

id MCSystemAppAccessibilityParametersFilePath()
{
  if (MCSystemAppAccessibilityParametersFilePath_once != -1)
  {
    MCSystemAppAccessibilityParametersFilePath_cold_1();
  }

  v1 = MCSystemAppAccessibilityParametersFilePath_str;

  return v1;
}

void __MCSystemAppAccessibilityParametersFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"AppAccessibilityParameters.plist"];
  v1 = [v0 copy];
  v2 = MCSystemAppAccessibilityParametersFilePath_str;
  MCSystemAppAccessibilityParametersFilePath_str = v1;
}

id MCSystemProfileRestrictionsFilePath()
{
  if (MCSystemProfileRestrictionsFilePath_once != -1)
  {
    MCSystemProfileRestrictionsFilePath_cold_1();
  }

  v1 = MCSystemProfileRestrictionsFilePath_str;

  return v1;
}

void __MCSystemProfileRestrictionsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"ProfileTruth.plist"];
  v1 = [v0 copy];
  v2 = MCSystemProfileRestrictionsFilePath_str;
  MCSystemProfileRestrictionsFilePath_str = v1;
}

id MCSystemClientRestrictionsFilePath()
{
  if (MCSystemClientRestrictionsFilePath_once != -1)
  {
    MCSystemClientRestrictionsFilePath_cold_1();
  }

  v1 = MCSystemClientRestrictionsFilePath_str;

  return v1;
}

void __MCSystemClientRestrictionsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"ClientTruth.plist"];
  v1 = [v0 copy];
  v2 = MCSystemClientRestrictionsFilePath_str;
  MCSystemClientRestrictionsFilePath_str = v1;
}

void __MCSystemUserSettingsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"UserSettings.plist"];
  v1 = [v0 copy];
  v2 = MCSystemUserSettingsFilePath_str;
  MCSystemUserSettingsFilePath_str = v1;
}

id MCSystemNamespacedUserSettingsFilePath()
{
  if (MCSystemNamespacedUserSettingsFilePath_once != -1)
  {
    MCSystemNamespacedUserSettingsFilePath_cold_1();
  }

  v1 = MCSystemNamespacedUserSettingsFilePath_str;

  return v1;
}

void __MCSystemNamespacedUserSettingsFilePath_block_invoke()
{
  v3 = MCSystemPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"NamespacedUserSettings.plist"];
  v1 = [v0 copy];
  v2 = MCSystemNamespacedUserSettingsFilePath_str;
  MCSystemNamespacedUserSettingsFilePath_str = v1;
}

id MCSystemPreferencesDirectory()
{
  if (MCSystemPreferencesDirectory_once != -1)
  {
    MCSystemPreferencesDirectory_cold_1();
  }

  v1 = MCSystemPreferencesDirectory_str;

  return v1;
}

uint64_t __MCSystemPreferencesDirectory_block_invoke()
{
  MCSystemPreferencesDirectory_str = [@"/Library/Managed Preferences/mobile" copy];

  return MEMORY[0x1EEE66BB8]();
}

id MCiPCUKeychainMapPath()
{
  if (MCiPCUKeychainMapPath_once != -1)
  {
    MCiPCUKeychainMapPath_cold_1();
  }

  v1 = MCiPCUKeychainMapPath_str;

  return v1;
}

void __MCiPCUKeychainMapPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"KeyMapTable"];
  v1 = [v0 copy];
  v2 = MCiPCUKeychainMapPath_str;
  MCiPCUKeychainMapPath_str = v1;
}

id MCSystemDependencyFilePath()
{
  if (MCSystemDependencyFilePath_once != -1)
  {
    MCSystemDependencyFilePath_cold_1();
  }

  v1 = MCSystemDependencyFilePath_str;

  return v1;
}

void __MCSystemDependencyFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PayloadDependency.plist"];
  v1 = [v0 copy];
  v2 = MCSystemDependencyFilePath_str;
  MCSystemDependencyFilePath_str = v1;
}

id MCPostSetupAutoInstallProfilePathNF()
{
  if (MCPostSetupAutoInstallProfilePathNF_once != -1)
  {
    MCPostSetupAutoInstallProfilePathNF_cold_1();
  }

  v1 = MCPostSetupAutoInstallProfilePathNF_str;

  return v1;
}

void __MCPostSetupAutoInstallProfilePathNF_block_invoke()
{
  v3 = MCSystemProfileStorageDirectoryNF();
  v0 = [v3 stringByAppendingPathComponent:@"PostSetupProfile.mobileconfig"];
  v1 = [v0 copy];
  v2 = MCPostSetupAutoInstallProfilePathNF_str;
  MCPostSetupAutoInstallProfilePathNF_str = v1;
}

id MCPostSetupAutoInstallSetAsideProfilePath()
{
  if (MCPostSetupAutoInstallSetAsideProfilePath_once != -1)
  {
    MCPostSetupAutoInstallSetAsideProfilePath_cold_1();
  }

  v1 = MCPostSetupAutoInstallSetAsideProfilePath_str;

  return v1;
}

void __MCPostSetupAutoInstallSetAsideProfilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PostSetupSetAsideProfile.mobileconfig"];
  v1 = [v0 copy];
  v2 = MCPostSetupAutoInstallSetAsideProfilePath_str;
  MCPostSetupAutoInstallSetAsideProfilePath_str = v1;
}

id MCLegacyPostSetupAutoInstallProfilePath()
{
  if (MCLegacyPostSetupAutoInstallProfilePath_once != -1)
  {
    MCLegacyPostSetupAutoInstallProfilePath_cold_1();
  }

  v1 = MCLegacyPostSetupAutoInstallProfilePath_str;

  return v1;
}

void __MCLegacyPostSetupAutoInstallProfilePath_block_invoke()
{
  v3 = MCLegacyProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PostSetupProfile.mobileconfig"];
  v1 = [v0 copy];
  v2 = MCLegacyPostSetupAutoInstallProfilePath_str;
  MCLegacyPostSetupAutoInstallProfilePath_str = v1;
}

id MCSettingsEventsFilePath()
{
  if (MCSettingsEventsFilePath_once != -1)
  {
    MCSettingsEventsFilePath_cold_1();
  }

  v1 = MCSettingsEventsFilePath_str;

  return v1;
}

void __MCSettingsEventsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCSettingsEvents.plist"];
  v1 = [v0 copy];
  v2 = MCSettingsEventsFilePath_str;
  MCSettingsEventsFilePath_str = v1;
}

id MCProfileEventsFilePath()
{
  if (MCProfileEventsFilePath_once != -1)
  {
    MCProfileEventsFilePath_cold_1();
  }

  v1 = MCProfileEventsFilePath_str;

  return v1;
}

void __MCProfileEventsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCProfileEvents.plist"];
  v1 = [v0 copy];
  v2 = MCProfileEventsFilePath_str;
  MCProfileEventsFilePath_str = v1;
}

id MCBackupContainsPasscodeFilePath()
{
  if (MCBackupContainsPasscodeFilePath_once != -1)
  {
    MCBackupContainsPasscodeFilePath_cold_1();
  }

  v1 = MCBackupContainsPasscodeFilePath_str;

  return v1;
}

void __MCBackupContainsPasscodeFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"backupContainedPasscode.plist"];
  v1 = [v0 copy];
  v2 = MCBackupContainsPasscodeFilePath_str;
  MCBackupContainsPasscodeFilePath_str = v1;
}

id MCCrashDetectionFilePath()
{
  if (MCCrashDetectionFilePath_once != -1)
  {
    MCCrashDetectionFilePath_cold_1();
  }

  v1 = MCCrashDetectionFilePath_str;

  return v1;
}

void __MCCrashDetectionFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"profiledRunning"];
  v1 = [v0 copy];
  v2 = MCCrashDetectionFilePath_str;
  MCCrashDetectionFilePath_str = v1;
}

id MCSystemLostModeRequestPath()
{
  if (MCSystemLostModeRequestPath_once != -1)
  {
    MCSystemLostModeRequestPath_cold_1();
  }

  v1 = MCSystemLostModeRequestPath_str;

  return v1;
}

void __MCSystemLostModeRequestPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"LostModeRequest.plist"];
  v1 = [v0 copy];
  v2 = MCSystemLostModeRequestPath_str;
  MCSystemLostModeRequestPath_str = v1;
}

id MCNagUIMetaFilePath()
{
  if (MCNagUIMetaFilePath_once != -1)
  {
    MCNagUIMetaFilePath_cold_1();
  }

  v1 = MCNagUIMetaFilePath_str;

  return v1;
}

void __MCNagUIMetaFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCNagMeta.plist"];
  v1 = [v0 copy];
  v2 = MCNagUIMetaFilePath_str;
  MCNagUIMetaFilePath_str = v1;
}

id MCPasscodeNagKeepAliveFilePath()
{
  if (MCPasscodeNagKeepAliveFilePath_once != -1)
  {
    MCPasscodeNagKeepAliveFilePath_cold_1();
  }

  v1 = MCPasscodeNagKeepAliveFilePath_str;

  return v1;
}

void __MCPasscodeNagKeepAliveFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PasscodeDoesNotComply"];
  v1 = [v0 copy];
  v2 = MCPasscodeNagKeepAliveFilePath_str;
  MCPasscodeNagKeepAliveFilePath_str = v1;
}

id MCOutstandingNagComputationFilePath()
{
  if (MCOutstandingNagComputationFilePath_once != -1)
  {
    MCOutstandingNagComputationFilePath_cold_1();
  }

  v1 = MCOutstandingNagComputationFilePath_str;

  return v1;
}

void __MCOutstandingNagComputationFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MCOutstandingNagComputation"];
  v1 = [v0 copy];
  v2 = MCOutstandingNagComputationFilePath_str;
  MCOutstandingNagComputationFilePath_str = v1;
}

id MCSystemAppWhitelistByProfileFilePath()
{
  if (MCSystemAppWhitelistByProfileFilePath_once != -1)
  {
    MCSystemAppWhitelistByProfileFilePath_cold_1();
  }

  v1 = MCSystemAppWhitelistByProfileFilePath_str;

  return v1;
}

void __MCSystemAppWhitelistByProfileFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"AppWhitelist.plist"];
  v1 = [v0 copy];
  v2 = MCSystemAppWhitelistByProfileFilePath_str;
  MCSystemAppWhitelistByProfileFilePath_str = v1;
}

id MCSystemAppOptionsByBundleIDFilePath()
{
  if (MCSystemAppOptionsByBundleIDFilePath_once != -1)
  {
    MCSystemAppOptionsByBundleIDFilePath_cold_1();
  }

  v1 = MCSystemAppOptionsByBundleIDFilePath_str;

  return v1;
}

void __MCSystemAppOptionsByBundleIDFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"AppOptionsByBundleID.plist"];
  v1 = [v0 copy];
  v2 = MCSystemAppOptionsByBundleIDFilePath_str;
  MCSystemAppOptionsByBundleIDFilePath_str = v1;
}

id MCSystemEffectiveAppWhitelistFilePath()
{
  if (MCSystemEffectiveAppWhitelistFilePath_once != -1)
  {
    MCSystemEffectiveAppWhitelistFilePath_cold_1();
  }

  v1 = MCSystemEffectiveAppWhitelistFilePath_str;

  return v1;
}

void __MCSystemEffectiveAppWhitelistFilePath_block_invoke()
{
  v3 = MCSystemPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"EffectiveAppWhitelist.plist"];
  v1 = [v0 copy];
  v2 = MCSystemEffectiveAppWhitelistFilePath_str;
  MCSystemEffectiveAppWhitelistFilePath_str = v1;
}

id MCLegacyCloudConfigurationDetailsFilePath()
{
  if (MCLegacyCloudConfigurationDetailsFilePath_once != -1)
  {
    MCLegacyCloudConfigurationDetailsFilePath_cold_1();
  }

  v1 = MCLegacyCloudConfigurationDetailsFilePath_str;

  return v1;
}

void __MCLegacyCloudConfigurationDetailsFilePath_block_invoke()
{
  v3 = MCLegacyProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"CloudConfigurationDetails.plist"];
  v1 = [v0 copy];
  v2 = MCLegacyCloudConfigurationDetailsFilePath_str;
  MCLegacyCloudConfigurationDetailsFilePath_str = v1;
}

id MCCloudConfigurationDetailsFilePath()
{
  if (MCCloudConfigurationDetailsFilePath_once != -1)
  {
    MCCloudConfigurationDetailsFilePath_cold_1();
  }

  v1 = MCCloudConfigurationDetailsFilePath_str;

  return v1;
}

void __MCCloudConfigurationDetailsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"CloudConfigurationDetails.plist"];
  v1 = [v0 copy];
  v2 = MCCloudConfigurationDetailsFilePath_str;
  MCCloudConfigurationDetailsFilePath_str = v1;
}

id MCCloudConfigurationSetAsideDetailsFilePath()
{
  if (MCCloudConfigurationSetAsideDetailsFilePath_once != -1)
  {
    MCCloudConfigurationSetAsideDetailsFilePath_cold_1();
  }

  v1 = MCCloudConfigurationSetAsideDetailsFilePath_str;

  return v1;
}

void __MCCloudConfigurationSetAsideDetailsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"CloudConfigurationSetAsideDetails.plist"];
  v1 = [v0 copy];
  v2 = MCCloudConfigurationSetAsideDetailsFilePath_str;
  MCCloudConfigurationSetAsideDetailsFilePath_str = v1;
}

void __MCSystemHomeScreenLayoutFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"HomeScreenLayout.plist"];
  v1 = [v0 copy];
  v2 = MCSystemHomeScreenLayoutFilePath_str;
  MCSystemHomeScreenLayoutFilePath_str = v1;
}

id MCSystemNotificationSettingsFilePath()
{
  if (MCSystemNotificationSettingsFilePath_once != -1)
  {
    MCSystemNotificationSettingsFilePath_cold_1();
  }

  v1 = MCSystemNotificationSettingsFilePath_str;

  return v1;
}

void __MCSystemNotificationSettingsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"NotificationSettings.plist"];
  v1 = [v0 copy];
  v2 = MCSystemNotificationSettingsFilePath_str;
  MCSystemNotificationSettingsFilePath_str = v1;
}

id MCSharedDeviceConfigurationFilePath()
{
  if (MCSharedDeviceConfigurationFilePath_once != -1)
  {
    MCSharedDeviceConfigurationFilePath_cold_1();
  }

  v1 = MCSharedDeviceConfigurationFilePath_str;

  return v1;
}

void __MCSharedDeviceConfigurationFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"SharedDeviceConfiguration.plist"];
  v1 = [v0 copy];
  v2 = MCSharedDeviceConfigurationFilePath_str;
  MCSharedDeviceConfigurationFilePath_str = v1;
}

id MCSystemWebContentFilterCurrentUserBookmarksPath()
{
  if (MCSystemWebContentFilterCurrentUserBookmarksPath_once != -1)
  {
    MCSystemWebContentFilterCurrentUserBookmarksPath_cold_1();
  }

  v1 = MCSystemWebContentFilterCurrentUserBookmarksPath_str;

  return v1;
}

void __MCSystemWebContentFilterCurrentUserBookmarksPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"CurrentUserBookmarks.plist"];
  v1 = [v0 copy];
  v2 = MCSystemWebContentFilterCurrentUserBookmarksPath_str;
  MCSystemWebContentFilterCurrentUserBookmarksPath_str = v1;
}

id MCSystemWebContentFilterStashedUserBookmarksPath()
{
  if (MCSystemWebContentFilterStashedUserBookmarksPath_once != -1)
  {
    MCSystemWebContentFilterStashedUserBookmarksPath_cold_1();
  }

  v1 = MCSystemWebContentFilterStashedUserBookmarksPath_str;

  return v1;
}

void __MCSystemWebContentFilterStashedUserBookmarksPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"StashedUserBookmarks.plist"];
  v1 = [v0 copy];
  v2 = MCSystemWebContentFilterStashedUserBookmarksPath_str;
  MCSystemWebContentFilterStashedUserBookmarksPath_str = v1;
}

id MCSetupAssistantSettingsFilePath()
{
  if (MCSetupAssistantSettingsFilePath_once != -1)
  {
    MCSetupAssistantSettingsFilePath_cold_1();
  }

  v1 = MCSetupAssistantSettingsFilePath_str;

  return v1;
}

void __MCSetupAssistantSettingsFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"SetupAssistantSettings.plist"];
  v1 = [v0 copy];
  v2 = MCSetupAssistantSettingsFilePath_str;
  MCSetupAssistantSettingsFilePath_str = v1;
}

id MCSystemWatchEnrollmentDataFilePath()
{
  if (MCSystemWatchEnrollmentDataFilePath_once != -1)
  {
    MCSystemWatchEnrollmentDataFilePath_cold_1();
  }

  v1 = MCSystemWatchEnrollmentDataFilePath_str;

  return v1;
}

void __MCSystemWatchEnrollmentDataFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"WatchMDMEnrollmentInfo.plist"];
  v1 = [v0 copy];
  v2 = MCSystemWatchEnrollmentDataFilePath_str;
  MCSystemWatchEnrollmentDataFilePath_str = v1;
}

id MCUserManifestPath()
{
  if (MCUserManifestPath_once != -1)
  {
    MCUserManifestPath_cold_1();
  }

  v1 = MCUserManifestPath_str;

  return v1;
}

void __MCUserManifestPath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PayloadManifest.plist"];
  v1 = [v0 copy];
  v2 = MCUserManifestPath_str;
  MCUserManifestPath_str = v1;
}

id MCUserProfileRestrictionsFilePath()
{
  if (MCUserProfileRestrictionsFilePath_once != -1)
  {
    MCUserProfileRestrictionsFilePath_cold_1();
  }

  v1 = MCUserProfileRestrictionsFilePath_str;

  return v1;
}

void __MCUserProfileRestrictionsFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"ProfileTruth.plist"];
  v1 = [v0 copy];
  v2 = MCUserProfileRestrictionsFilePath_str;
  MCUserProfileRestrictionsFilePath_str = v1;
}

id MCUserClientRestrictionsFilePath()
{
  if (MCUserClientRestrictionsFilePath_once != -1)
  {
    MCUserClientRestrictionsFilePath_cold_1();
  }

  v1 = MCUserClientRestrictionsFilePath_str;

  return v1;
}

void __MCUserClientRestrictionsFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"ClientTruth.plist"];
  v1 = [v0 copy];
  v2 = MCUserClientRestrictionsFilePath_str;
  MCUserClientRestrictionsFilePath_str = v1;
}

id MCUserUserSettingsFilePath()
{
  if (MCUserUserSettingsFilePath_once != -1)
  {
    MCUserUserSettingsFilePath_cold_1();
  }

  v1 = MCUserUserSettingsFilePath_str;

  return v1;
}

void __MCUserUserSettingsFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"UserSettings.plist"];
  v1 = [v0 copy];
  v2 = MCUserUserSettingsFilePath_str;
  MCUserUserSettingsFilePath_str = v1;
}

id MCUserNamespacedUserSettingsFilePath()
{
  if (MCUserNamespacedUserSettingsFilePath_once != -1)
  {
    MCUserNamespacedUserSettingsFilePath_cold_1();
  }

  v1 = MCUserNamespacedUserSettingsFilePath_str;

  return v1;
}

void __MCUserNamespacedUserSettingsFilePath_block_invoke()
{
  v3 = MCUserPublicInfoDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"NamespacedUserSettings.plist"];
  v1 = [v0 copy];
  v2 = MCUserNamespacedUserSettingsFilePath_str;
  MCUserNamespacedUserSettingsFilePath_str = v1;
}

id MCUserDependencyFilePath()
{
  if (MCUserDependencyFilePath_once != -1)
  {
    MCUserDependencyFilePath_cold_1();
  }

  v1 = MCUserDependencyFilePath_str;

  return v1;
}

void __MCUserDependencyFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"PayloadDependency.plist"];
  v1 = [v0 copy];
  v2 = MCUserDependencyFilePath_str;
  MCUserDependencyFilePath_str = v1;
}

void __MCUserHomeScreenLayoutFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"HomeScreenLayout.plist"];
  v1 = [v0 copy];
  v2 = MCUserHomeScreenLayoutFilePath_str;
  MCUserHomeScreenLayoutFilePath_str = v1;
}

id MCUserNotificationSettingsFilePath()
{
  if (MCUserNotificationSettingsFilePath_once != -1)
  {
    MCUserNotificationSettingsFilePath_cold_1();
  }

  v1 = MCUserNotificationSettingsFilePath_str;

  return v1;
}

void __MCUserNotificationSettingsFilePath_block_invoke()
{
  v3 = MCUserProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"NotificationSettings.plist"];
  v1 = [v0 copy];
  v2 = MCUserNotificationSettingsFilePath_str;
  MCUserNotificationSettingsFilePath_str = v1;
}

id MCSystemRestartLogPath()
{
  if (MCSystemRestartLogPath_once != -1)
  {
    MCSystemRestartLogPath_cold_1();
  }

  v1 = MCSystemRestartLogPath_str;

  return v1;
}

void __MCSystemRestartLogPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MDMRequestedRestart"];
  v1 = [v0 copy];
  v2 = MCSystemRestartLogPath_str;
  MCSystemRestartLogPath_str = v1;
}

id MCSystemShutDownLogPath()
{
  if (MCSystemShutDownLogPath_once != -1)
  {
    MCSystemShutDownLogPath_cold_1();
  }

  v1 = MCSystemShutDownLogPath_str;

  return v1;
}

void __MCSystemShutDownLogPath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MDMRequestedShutDown"];
  v1 = [v0 copy];
  v2 = MCSystemShutDownLogPath_str;
  MCSystemShutDownLogPath_str = v1;
}

id MCTagsMappingFilePath()
{
  if (MCTagsMappingFilePath_once != -1)
  {
    MCTagsMappingFilePath_cold_1();
  }

  v1 = MCTagsMappingFilePath_str;

  return v1;
}

void __MCTagsMappingFilePath_block_invoke()
{
  v3 = MCSystemProfileStorageDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"TagsMapping.plist"];
  v1 = [v0 copy];
  v2 = MCTagsMappingFilePath_str;
  MCTagsMappingFilePath_str = v1;
}

void sub_1A797A5C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A797A76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MCStringForBool(int a1)
{
  if (a1)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

id MCLocalizedStringForBool(int a1)
{
  if (a1)
  {
    v1 = @"YES";
  }

  else
  {
    v1 = @"NO";
  }

  v2 = MCLocalizedString(v1);

  return v2;
}

id MCStringFromArrayOfStrings(void *a1)
{
  v1 = a1;
  if (![v1 count])
  {
    goto LABEL_13;
  }

  v2 = [v1 count];
  v3 = [v1 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v2 == 1)
  {
    if (isKindOfClass)
    {
      v5 = [v1 objectAtIndex:0];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((isKindOfClass & 1) == 0)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  if ([v1 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v1 objectAtIndex:v7];
      if (v7)
      {
        [v6 appendString:@"\n"];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v6 appendString:v8];

      if (++v7 >= [v1 count])
      {
        goto LABEL_12;
      }
    }

    v5 = 0;
  }

  else
  {
LABEL_12:
    v5 = v6;
  }

LABEL_14:

  return v5;
}

id MCFormattedStringForNumber(void *a1)
{
  v1 = MCNoStyleNumberFormatter_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    MCFormattedStringForNumber_cold_1();
  }

  v3 = [MCNoStyleNumberFormatter_formatter stringFromNumber:v2];

  return v3;
}

uint64_t MCFormattedStringForTimeInterval(double a1)
{
  if (MCFormattedStringForTimeInterval_onceToken != -1)
  {
    MCFormattedStringForTimeInterval_cold_1();
  }

  v2 = MCFormattedStringForTimeInterval_numericFormatter;

  return [v2 stringFromTimeInterval:a1];
}

uint64_t __MCFormattedStringForTimeInterval_block_invoke()
{
  v0 = objc_opt_new();
  v1 = MCFormattedStringForTimeInterval_numericFormatter;
  MCFormattedStringForTimeInterval_numericFormatter = v0;

  [MCFormattedStringForTimeInterval_numericFormatter setAllowedUnits:112];
  [MCFormattedStringForTimeInterval_numericFormatter setUnitsStyle:3];
  v2 = MCFormattedStringForTimeInterval_numericFormatter;

  return [v2 setFormattingContext:1];
}

id MCUSEnglishLocale()
{
  if (MCUSEnglishLocale_once != -1)
  {
    MCUSEnglishLocale_cold_1();
  }

  v1 = MCUSEnglishLocale_locale;

  return v1;
}

uint64_t __MCUSEnglishLocale_block_invoke()
{
  MCUSEnglishLocale_locale = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];

  return MEMORY[0x1EEE66BB8]();
}

id MCUSEnglishNumberFormatter()
{
  if (MCUSEnglishNumberFormatter_once != -1)
  {
    MCUSEnglishNumberFormatter_cold_1();
  }

  v1 = MCUSEnglishNumberFormatter_formatter;

  return v1;
}

uint64_t __MCUSEnglishNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = MCUSEnglishNumberFormatter_formatter;
  MCUSEnglishNumberFormatter_formatter = v0;

  v2 = MCUSEnglishNumberFormatter_formatter;
  v3 = MCUSEnglishLocale();
  [v2 setLocale:v3];

  v4 = MCUSEnglishNumberFormatter_formatter;

  return [v4 setNumberStyle:0];
}

uint64_t MCEqualStrings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v5 = [v3 isEqualToString:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __MCNoStyleNumberFormatter_block_invoke()
{
  v0 = objc_opt_new();
  v1 = MCNoStyleNumberFormatter_formatter;
  MCNoStyleNumberFormatter_formatter = v0;

  [MCNoStyleNumberFormatter_formatter setNumberStyle:0];
  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [MCNoStyleNumberFormatter_formatter setLocale:v2];
}

void _populateMissingManifestDictionaries(void *a1)
{
  v5 = a1;
  v1 = [v5 objectForKey:@"OrderedProfiles"];

  if (!v1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    [v5 setObject:v2 forKey:@"OrderedProfiles"];
  }

  v3 = [v5 objectForKey:@"HiddenProfiles"];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [v5 setObject:v4 forKey:@"HiddenProfiles"];
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A797E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A797F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A797F410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A797F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A797FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A797FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A797FEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A798009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7980258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7983F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79880E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A7988288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id URLForCanonicalFilePath(void *a1)
{
  v1 = a1;
  v2 = MCSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

  return v4;
}

uint64_t MCPowerlogControlSwitchMode(void *a1)
{
  v1 = a1;
  +[MCLazyInitializationUtilities initPowerlogControl];
  if (_PowerlogControlSwitchMode)
  {
    v2 = _PowerlogControlSwitchMode(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MCPowerlogControlReadMode()
{
  v0 = +[MCLazyInitializationUtilities initPowerlogControl];
  if (_PowerlogControlReadMode)
  {
    v1 = _PowerlogControlReadMode(v0);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t MCCGDataProviderCreateWithURL(uint64_t a1)
{
  +[MCLazyInitializationUtilities initCoreGraphics];
  v2 = _CGDataProviderCreateWithURL;

  return v2(a1);
}

uint64_t MCCGFontCopyFullName(uint64_t a1)
{
  +[MCLazyInitializationUtilities initCoreGraphics];
  v2 = _CGFontCopyFullName;

  return v2(a1);
}

uint64_t MCCGFontCopyPostScriptName(uint64_t a1)
{
  +[MCLazyInitializationUtilities initCoreGraphics];
  v2 = _CGFontCopyPostScriptName;

  return v2(a1);
}

uint64_t MCCGFontCreateWithDataProvider(uint64_t a1)
{
  +[MCLazyInitializationUtilities initCoreGraphics];
  v2 = _CGFontCreateWithDataProvider;

  return v2(a1);
}

id MCAXBackBoardServerSessionClass()
{
  if (MCAXBackBoardServerSessionClass_onceToken != -1)
  {
    MCAXBackBoardServerSessionClass_cold_1();
  }

  v1 = MCAXBackBoardServerSessionClass_theClass;

  return v1;
}

void __MCAXBackBoardServerSessionClass_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AccessibilityUtilities.framework");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MCAXBackBoardServerSessionClass_block_invoke_2;
  v3[3] = &unk_1E77D2198;
  v4 = @"AXBackBoardServer";
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:v3];

  if (!MCAXBackBoardServerSessionClass_theClass)
  {
    v1 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = @"AXBackBoardServer";
      _os_log_impl(&dword_1A795B000, v1, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MCAXBackBoardServerSessionClass_block_invoke_2(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    result = [a3 classNamed:*(result + 32)];
    MCAXBackBoardServerSessionClass_theClass = result;
  }

  return result;
}

id MCPLPhotoLibraryClass()
{
  if (MCPLPhotoLibraryClass_onceToken != -1)
  {
    MCPLPhotoLibraryClass_cold_1();
  }

  v1 = MCPLPhotoLibraryClass_theClass;

  return v1;
}

void __MCPLPhotoLibraryClass_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/PhotoLibraryServices.framework");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MCPLPhotoLibraryClass_block_invoke_2;
  v3[3] = &unk_1E77D2198;
  v4 = @"PLPhotoLibrary";
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:v3];

  if (!MCPLPhotoLibraryClass_theClass)
  {
    v1 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = @"PLPhotoLibrary";
      _os_log_impl(&dword_1A795B000, v1, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MCPLPhotoLibraryClass_block_invoke_2(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    result = [a3 classNamed:*(result + 32)];
    MCPLPhotoLibraryClass_theClass = result;
  }

  return result;
}

id MCPLManagedAssetClass()
{
  if (MCPLManagedAssetClass_onceToken != -1)
  {
    MCPLManagedAssetClass_cold_1();
  }

  v1 = MCPLManagedAssetClass_theClass;

  return v1;
}

void __MCPLManagedAssetClass_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/PhotoLibraryServices.framework");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MCPLManagedAssetClass_block_invoke_2;
  v3[3] = &unk_1E77D2198;
  v4 = @"PLManagedAsset";
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:v3];

  if (!MCPLManagedAssetClass_theClass)
  {
    v1 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = @"PLManagedAsset";
      _os_log_impl(&dword_1A795B000, v1, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MCPLManagedAssetClass_block_invoke_2(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    result = [a3 classNamed:*(result + 32)];
    MCPLManagedAssetClass_theClass = result;
  }

  return result;
}

uint64_t MCCGImageSourceCreateImageAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  +[MCLazyInitializationUtilities initImageIO];
  v6 = _CGImageSourceCreateImageAtIndex;

  return v6(a1, a2, a3);
}

uint64_t MCCGImageSourceCreateWithData(uint64_t a1, uint64_t a2)
{
  +[MCLazyInitializationUtilities initImageIO];
  v4 = _CGImageSourceCreateWithData;

  return v4(a1, a2);
}

uint64_t MCCGImageSourceGetCount(uint64_t a1)
{
  +[MCLazyInitializationUtilities initImageIO];
  v2 = _CGImageSourceGetCount;

  return v2(a1);
}

id MCMailAccountClass()
{
  if (MCMailAccountClass_onceToken != -1)
  {
    MCMailAccountClass_cold_1();
  }

  v1 = MCMailAccountClass_theClass;

  return v1;
}

void __MCMailAccountClass_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/Message.framework");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MCMailAccountClass_block_invoke_2;
  v3[3] = &unk_1E77D2198;
  v4 = @"MailAccount";
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:v3];

  if (!MCMailAccountClass_theClass)
  {
    v1 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = @"MailAccount";
      _os_log_impl(&dword_1A795B000, v1, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MCMailAccountClass_block_invoke_2(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    result = [a3 classNamed:*(result + 32)];
    MCMailAccountClass_theClass = result;
  }

  return result;
}

id MCMailAccountManagedTag()
{
  +[MCLazyInitializationUtilities initMessage];
  v0 = _MailAccountManagedTag;

  return v0;
}

uint64_t MCCTFontManagerCreateFontDescriptorsFromURL(uint64_t a1)
{
  +[MCLazyInitializationUtilities initCoreText];
  v2 = _CTFontManagerCreateFontDescriptorsFromURL;

  return v2(a1);
}

id MCASPolicyPreflighterClass()
{
  if (MCASPolicyPreflighterClass_onceToken != -1)
  {
    MCASPolicyPreflighterClass_cold_1();
  }

  v1 = MCASPolicyPreflighterClass_theClass;

  return v1;
}

void __MCASPolicyPreflighterClass_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  if (DAEASBundle_onceToken != -1)
  {
    __MCASPolicyPreflighterClass_block_invoke_cold_1();
  }

  MCASPolicyPreflighterClass_theClass = [DAEASBundle_retval classNamed:@"ASPolicyPreflighter"];
  if (!MCASPolicyPreflighterClass_theClass)
  {
    v0 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v2 = 138543362;
      v3 = @"ASPolicyPreflighter";
      _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_ERROR, "Could not load %{public}@", &v2, 0xCu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

id MCkASSyncDefaultFoldersOnly()
{
  +[MCLazyInitializationUtilities initDAEAS];
  v0 = _kASSyncDefaultFoldersOnly;

  return v0;
}

uint64_t MCEASOverSimplifiedStatusForError(void *a1)
{
  v1 = a1;
  +[MCLazyInitializationUtilities initDAEAS];
  v2 = _overSimplifiedStatusForError(v1);

  return v2;
}

id MCkMAActivationStateActivated()
{
  +[MCLazyInitializationUtilities initMobileActivation];
  v0 = _kMAActivationStateActivated;

  return v0;
}

id MCkNotificationActivationStateChanged()
{
  +[MCLazyInitializationUtilities initMobileActivation];
  v0 = _kNotificationActivationStateChanged;

  return v0;
}

uint64_t MCMAEGetActivationStateWithError(uint64_t a1)
{
  +[MCLazyInitializationUtilities initMobileActivation];
  v2 = _MAEGetActivationStateWithError;

  return v2(a1);
}

uint64_t MCMAECopyActivationRecordWithError(uint64_t a1)
{
  +[MCLazyInitializationUtilities initMobileActivation];
  v2 = _MAECopyActivationRecordWithError;

  return v2(a1);
}

__CFString *MCkESExchangeAccountWipeOnly()
{
  +[MCLazyInitializationUtilities initExchangeSyncExpress];
  if (_kESExchangeAccountWipeOnly)
  {
    v0 = _kESExchangeAccountWipeOnly;
  }

  else
  {
    v0 = @"ESExchangeAccountWipeOnly";
  }

  return v0;
}

__CFString *MCkESExchangeDeviceID()
{
  +[MCLazyInitializationUtilities initExchangeSyncExpress];
  if (_kESExchangeDeviceID)
  {
    v0 = _kESExchangeDeviceID;
  }

  else
  {
    v0 = @"ESExchangeDeviceID";
  }

  return v0;
}

__CFString *MCkESExchangeUserEnrollmentMode()
{
  +[MCLazyInitializationUtilities initExchangeSyncExpress];
  if (_kESExchangeUserEnrollmentMode)
  {
    v0 = _kESExchangeUserEnrollmentMode;
  }

  else
  {
    v0 = @"ESExchangeUserEnrollmentMode";
  }

  return v0;
}

id MCLDAPSearchSettingsClass()
{
  if (MCLDAPSearchSettingsClass_onceToken != -1)
  {
    MCLDAPSearchSettingsClass_cold_1();
  }

  v1 = MCLDAPSearchSettingsClass_theClass;

  return v1;
}

void __MCLDAPSearchSettingsClass_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  if (DALDAPBundle_onceToken != -1)
  {
    __MCLDAPSearchSettingsClass_block_invoke_cold_1();
  }

  MCLDAPSearchSettingsClass_theClass = [DALDAPBundle_retval classNamed:@"LDAPSearchSettings"];
  if (!MCLDAPSearchSettingsClass_theClass)
  {
    v0 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v2 = 138543362;
      v3 = @"LDAPSearchSettings";
      _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_ERROR, "Could not load %{public}@", &v2, 0xCu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t MCBYSetupAssistantNeedsToRun()
{
  +[MCLazyInitializationUtilities initSetupAssistant];
  v0 = _BYSetupAssistantNeedsToRun;

  return v0();
}

id MCNEProfileIngestionClass()
{
  if (MCNEProfileIngestionClass_onceToken != -1)
  {
    MCNEProfileIngestionClass_cold_1();
  }

  v1 = MCNEProfileIngestionClass_theClass;

  return v1;
}

void __MCNEProfileIngestionClass_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/Frameworks/NetworkExtension.framework");
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_235];
}

void __MCNEProfileIngestionClass_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    MCNEProfileIngestionClass_theClass = [v4 classNamed:@"NEProfileIngestion"];
  }

  else
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Could not load NetworkExtension framework.", v7, 2u);
    }
  }
}

id MCNEProfileIngestionHandlerClassForPayload(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MCNEProfileIngestionClass()) initWithNameAndType:@"ManagedConfiguration client" payloadType:v1];
  if (!v2)
  {
    v3 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v1;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_ERROR, "Could not instantiate NetworkExtension handler for %{public}@.", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

id MCBiometricKitClass()
{
  if (MCBiometricKitClass_onceToken != -1)
  {
    MCBiometricKitClass_cold_1();
  }

  v1 = MCBiometricKitClass_theClass;

  return v1;
}

void __MCBiometricKitClass_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/BiometricKit.framework");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __MCBiometricKitClass_block_invoke_2;
  v3[3] = &unk_1E77D2198;
  v4 = @"BiometricKit";
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:v3];

  if (!MCBiometricKitClass_theClass)
  {
    v1 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = @"BiometricKit";
      _os_log_impl(&dword_1A795B000, v1, OS_LOG_TYPE_ERROR, "Could not load %{public}@", buf, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __MCBiometricKitClass_block_invoke_2(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    result = [a3 classNamed:*(result + 32)];
    MCBiometricKitClass_theClass = result;
  }

  return result;
}

uint64_t MCSBSCopyFrontmostApplicationDisplayIdentifier()
{
  +[MCLazyInitializationUtilities initSpringBoardServices];
  v0 = _SBSCopyFrontmostApplicationDisplayIdentifier;

  return v0();
}

uint64_t MCSBSSuspendFrontmostApplication()
{
  +[MCLazyInitializationUtilities initSpringBoardServices];
  v0 = _SBSSuspendFrontmostApplication;

  return v0();
}

uint64_t MCSBSSpringBoardServerPort()
{
  +[MCLazyInitializationUtilities initSpringBoardServices];
  v0 = _SBSSpringBoardServerPort;

  return v0();
}

uint64_t MCSBAddWebClipToHomeScreen(uint64_t a1, uint64_t a2)
{
  +[MCLazyInitializationUtilities initSpringBoardServices];
  v4 = _SBAddWebClipToHomeScreen;

  return v4(a1, a2);
}

uint64_t MCSBGetScreenLockStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  +[MCLazyInitializationUtilities initSpringBoardServices];
  v6 = _SBGetScreenLockStatus;

  return v6(a1, a2, a3);
}

uint64_t MCSBRemoveWebClipFromHomeScreen(uint64_t a1, uint64_t a2)
{
  +[MCLazyInitializationUtilities initSpringBoardServices];
  v4 = _SBRemoveWebClipFromHomeScreen;

  return v4(a1, a2);
}

uint64_t MCOSLogValidateProfilePayload(void *a1, uint64_t a2)
{
  v3 = a1;
  +[MCLazyInitializationUtilities initLoggingSupport];
  v4 = _OSLogValidateProfilePayload(v3, a2);

  return v4;
}

uint64_t MCOSLogInstallProfilePayload(void *a1, uint64_t a2)
{
  v3 = a1;
  +[MCLazyInitializationUtilities initLoggingSupport];
  v4 = _OSLogInstallProfilePayload(v3, a2);

  return v4;
}

uint64_t MCOSLogRemoveProfilePayload(void *a1, uint64_t a2)
{
  v3 = a1;
  +[MCLazyInitializationUtilities initLoggingSupport];
  v4 = _OSLogRemoveProfilePayload(v3, a2);

  return v4;
}

id MCLKLogoutSupportClass()
{
  if (MCLKLogoutSupportClass_onceToken != -1)
  {
    MCLKLogoutSupportClass_cold_1();
  }

  v1 = MCLKLogoutSupportClass_LKLogoutSupportClass;

  return v1;
}

uint64_t __MCLKLogoutSupportClass_block_invoke()
{
  if (LoginKitBundle_onceToken != -1)
  {
    __MCLKLogoutSupportClass_block_invoke_cold_1();
  }

  result = [LoginKitBundle_retval classNamed:@"LKLogoutSupport"];
  MCLKLogoutSupportClass_LKLogoutSupportClass = result;
  return result;
}

void __DAEASBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/ExchangeSync.framework/Frameworks/DAEAS.framework");
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_256];
}

void __DALDAPBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DALDAP.framework");
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_260_0];
}

void __LoginKitBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/LoginKit.framework");
  [MCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_264];
}

uint64_t MCHCUCreateCSR(void *a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E697AD50];
  keys[0] = *MEMORY[0x1E697AD68];
  keys[1] = v2;
  values[0] = *MEMORY[0x1E697ADA8];
  values[1] = @"1024";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 5;
  cf = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  v5 = CFDictionaryCreate(v3, MEMORY[0x1E697AFF0], &cf, 1, 0, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  error = 0;
  v6 = SecKeyCreateRandomKey(v4, &error);
  if (v4)
  {
    CFRelease(v4);
  }

  if (error)
  {
    v7 = CFErrorCopyDescription(error);
    v8 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "Could not generate public/private key pair for CSR: %{public}@", buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(error);
    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v7);
    CertificateRequestWithParameters = 0;
  }

  else
  {
    v10 = SecKeyCopyPublicKey(v6);
    memset(cStr, 0, 37);
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    uuid_unparse(out, cStr);
    v11 = CFStringCreateWithCString(v3, cStr, 0x600u);
    *buf = *MEMORY[0x1E697B278];
    buf[8] = *MEMORY[0x1E697AAF0];
    v20 = v11;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v17 = buf;
    v18 = 0;
    [v1 setObject:v10 forKey:@"PublicKey"];
    [v1 setObject:v6 forKey:@"PrivateKey"];
    CertificateRequestWithParameters = SecGenerateCertificateRequestWithParameters();
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return CertificateRequestWithParameters;
}

SecCertificateRef MCHCUCopyCertificateFromKeychainForMappedLabel(void *a1)
{
  certificateRef = 0;
  v1 = _copyObjectFromKeychainForLabel(a1);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != SecCertificateGetTypeID())
    {
      v4 = CFGetTypeID(v2);
      if (v4 == SecIdentityGetTypeID())
      {
        SecIdentityCopyCertificate(v2, &certificateRef);
        CFRelease(v2);
        return certificateRef;
      }

      else
      {
        CFRelease(v2);
        return 0;
      }
    }
  }

  return v2;
}

void *_copyObjectFromKeychainForLabel(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = _persistentKeyMapTable();
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [MCKeychain copyItemWithPersistentID:v3 useSystemKeychain:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MCHCUSetHostCertificateDataForMappedLabel(const __CFData *a1, void *a2)
{
  v3 = a2;
  v4 = SecCertificateCreateWithData(0, a1);
  if (v4)
  {
    v5 = v4;
    v6 = [v3 stringByAppendingString:@"-HostCert"];
    if (v6)
    {
      v7 = [MCKeychain saveItem:v5 withLabel:v6 group:@"apple" useSystemKeychain:1];
      if (v7)
      {
        v8 = _persistentKeyMapTable();
        [v8 setObject:v7 forKey:v6];
        v9 = v8;
        v10 = MCiPCUKeychainMapPath();
        [v9 MCWriteToBinaryFile:v10];
      }
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *MCHCUCopyHostCertificateForMappedLabel(void *a1)
{
  v1 = [a1 stringByAppendingString:@"-HostCert"];
  v2 = _copyObjectFromKeychainForLabel(v1);

  return v2;
}

id _persistentKeyMapTable()
{
  v0 = MEMORY[0x1E695DF90];
  v1 = MCiPCUKeychainMapPath();
  v2 = [v0 dictionaryWithContentsOfFile:v1];

  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
  }

  return v2;
}

__CFString *MCGestaltGetDeviceClass()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  return v0;
}

__CFString *MCGestaltGetDeviceName()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iDevice";
  }

  return v0;
}

uint64_t MCGestaltIsiPad()
{
  if (MCGestaltIsiPad_onceToken != -1)
  {
    MCGestaltIsiPad_cold_1();
  }

  return MCGestaltIsiPad_isiPad;
}

void __MCGestaltIsiPad_block_invoke()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  v1 = v0;
  MCGestaltIsiPad_isiPad = [(__CFString *)v0 isEqualToString:@"iPad"];
}

uint64_t MCGestaltIsAppleTV()
{
  if (MCGestaltIsAppleTV_onceToken != -1)
  {
    MCGestaltIsAppleTV_cold_1();
  }

  return MCGestaltIsAppleTV_isAppleTV;
}

void __MCGestaltIsAppleTV_block_invoke()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  v1 = v0;
  MCGestaltIsAppleTV_isAppleTV = [(__CFString *)v0 isEqualToString:@"AppleTV"];
}

uint64_t MCGestaltIsWatch()
{
  if (MCGestaltIsWatch_onceToken != -1)
  {
    MCGestaltIsWatch_cold_1();
  }

  return MCGestaltIsWatch_isWatch;
}

void __MCGestaltIsWatch_block_invoke()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  v1 = v0;
  MCGestaltIsWatch_isWatch = [(__CFString *)v0 isEqualToString:@"Watch"];
}

uint64_t MCGestaltIsHomePod()
{
  if (MCGestaltIsHomePod_onceToken != -1)
  {
    MCGestaltIsHomePod_cold_1();
  }

  return MCGestaltIsHomePod_isHomePod;
}

void __MCGestaltIsHomePod_block_invoke()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  v1 = v0;
  MCGestaltIsHomePod_isHomePod = [(__CFString *)v0 isEqualToString:@"AudioAccessory"];
}

uint64_t MCGestaltIsPhone()
{
  if (MCGestaltIsPhone_onceToken != -1)
  {
    MCGestaltIsPhone_cold_1();
  }

  return MCGestaltIsPhone_isPhone;
}

void __MCGestaltIsPhone_block_invoke()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  v1 = v0;
  MCGestaltIsPhone_isPhone = [(__CFString *)v0 isEqualToString:?];
}

uint64_t MCGestaltIsVisionDevice()
{
  if (MCGestaltIsVisionDevice_onceToken != -1)
  {
    MCGestaltIsVisionDevice_cold_1();
  }

  return MCGestaltIsVisionDevice_isVisionDevice;
}

void __MCGestaltIsVisionDevice_block_invoke()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  v1 = v0;
  MCGestaltIsVisionDevice_isVisionDevice = [(__CFString *)v0 isEqualToString:@"RealityDevice"];
}

id MCGestaltGetDeviceUUID()
{
  v0 = MGCopyAnswer();

  return v0;
}

id MCGestaltGetDeviceSerialNumber()
{
  v0 = MGCopyAnswer();

  return v0;
}

id MCGestaltGetDeviceID()
{
  if (MCGestaltIsAppleTV_onceToken != -1)
  {
    MCGestaltGetDeviceID_cold_1();
  }

  if (MCGestaltIsAppleTV_isAppleTV == 1)
  {
    v0 = MGCopyAnswer();
    if (!v0)
    {
      v0 = MGCopyAnswer();
      if (!v0)
      {
        v0 = MGCopyAnswer();
      }
    }
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id MCGestaltGetProductName()
{
  v0 = MGCopyAnswer();

  return v0;
}

id MCGestaltGetWiFiMAC()
{
  v0 = MGCopyAnswer();

  return v0;
}

id MCGestaltGetModelNumber()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t MCGestaltHasBiometricCapability()
{
  if (MCGestaltHasBiometricCapability_onceToken != -1)
  {
    MCGestaltHasBiometricCapability_cold_1();
  }

  return MCGestaltHasBiometricCapability_hasBiometrics;
}

void __MCGestaltHasBiometricCapability_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    MCGestaltHasBiometricCapability_hasBiometrics = CFEqual(v0, *MEMORY[0x1E695E4D0]) != 0;
    CFRelease(v1);
  }

  if ((MCGestaltHasBiometricCapability_hasBiometrics & 1) == 0)
  {
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      MCGestaltHasBiometricCapability_hasBiometrics = CFEqual(v2, *MEMORY[0x1E695E4D0]) != 0;

      CFRelease(v3);
    }
  }
}

uint64_t MCGestaltSupportsMultiUser()
{
  if (MCGestaltIsiPad_onceToken != -1)
  {
    MCGestaltSupportsMultiUser_cold_1();
  }

  if (MCGestaltIsiPad_isiPad != 1)
  {
    return 0;
  }

  return MEMORY[0x1EEE62800](@"4fT83+9coO3VAUnlxuOOcw");
}

__CFString *MCLockdownGetDeviceName()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  return v0;
}

uint64_t MCLockdownSetDeviceName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 length])
  {
LABEL_6:
    v2 = 0;
    goto LABEL_7;
  }

  v2 = lockdown_connect();
  if (v2)
  {
    v3 = *MEMORY[0x1E69E5780];
    v4 = lockdown_set_value();
    lockdown_disconnect();
    if (!v4)
    {
      v2 = 1;
      goto LABEL_7;
    }

    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Unable to set device name with error %d", v8, 8u);
    }

    goto LABEL_6;
  }

LABEL_7:

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

id MCLockdownGetDeviceColor()
{
  v0 = MGCopyAnswer();

  return v0;
}

id MCLockdownGetDeviceCapacity()
{
  v0 = MGCopyAnswer();
  v1 = [v0 objectForKey:*MEMORY[0x1E69E5120]];

  return v1;
}

id MCLockdownGetDiskCapacity()
{
  v0 = MGCopyAnswer();
  v1 = [v0 objectForKey:*MEMORY[0x1E69E5128]];

  return v1;
}

id MCLockdownGetDeviceAvailableCapacity()
{
  v0 = MGCopyAnswer();
  v1 = [v0 objectForKey:*MEMORY[0x1E69E5108]];

  return v1;
}

uint64_t MCLockdownCopyBuiltInIdentity()
{
  result = lockdown_connect();
  if (result)
  {
    v1 = lockdown_copy_identity();
    lockdown_disconnect();
    return v1;
  }

  return result;
}

id MCLockdownGetDeviceIntermediateCertificates()
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (MCLockdownGetDeviceIntermediateCertificates_once != -1)
  {
    MCLockdownGetDeviceIntermediateCertificates_cold_1();
  }

  v3[0] = MCLockdownGetDeviceIntermediateCertificates_iPhoneDeviceCA;
  v3[1] = MCLockdownGetDeviceIntermediateCertificates_iPhoneCA;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void __MCLockdownGetDeviceIntermediateCertificates_block_invoke()
{
  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:@"/System/Library/Lockdown/iPhoneDeviceCA.pem"];
  MCLockdownGetDeviceIntermediateCertificates_iPhoneDeviceCA = [MCCrypto copyCertificateRefFromPEMData:v1];
  v0 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:@"/System/Library/Lockdown/iPhoneCA.pem"];
  MCLockdownGetDeviceIntermediateCertificates_iPhoneCA = [MCCrypto copyCertificateRefFromPEMData:v0];
}

id MCLockdownLastCloudBackupDate()
{
  v0 = lockdown_connect();
  if (v0)
  {
    v1 = lockdown_copy_value();
    lockdown_disconnect();
    if (v1)
    {
      v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v1, "unsignedLongLongValue") + 978307200.0}];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

BOOL MCIsDeviceActivated()
{
  v0 = lockdown_copy_brickState();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBooleanGetValue(v0) == 0;
  CFRelease(v1);
  return v2;
}

id MCLockdownOperationQueue()
{
  if (MCLockdownOperationQueue_onceToken != -1)
  {
    MCLockdownOperationQueue_cold_1();
  }

  v1 = MCLockdownOperationQueue_queue;

  return v1;
}

uint64_t __MCLockdownOperationQueue_block_invoke()
{
  MCLockdownOperationQueue_queue = dispatch_queue_create("MC Lockdown Operation Queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t MCSendRestrictionChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending restriction changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.restrictionchanged" cStringUsingEncoding:4]);
}

uint64_t MCSendPasscodeChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending passcode changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.passcodechanged" cStringUsingEncoding:4]);
}

void MCSendPasscodePolicyChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending passcode policy changed notification.", v2, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PINPolicyChangedNotification", 0, 0, 1u);
}

uint64_t MCSendKeyboardSettingsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending keyboard settings changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.keyboardsettingschanged" cStringUsingEncoding:4]);
}

uint64_t MCSendUserNotificationsSettingsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Notifications settings changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.usernotificationssettingschanged" cStringUsingEncoding:4]);
}

uint64_t MCSendHomeScreenLayoutChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Home Screen Layout changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.homescreenlayoutchanged" cStringUsingEncoding:4]);
}

uint64_t MCSendNewsSettingsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending News settings changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.newssettingschanged" cStringUsingEncoding:4]);
}

uint64_t MCSendProfileListChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending profile list changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.profileListChanged" cStringUsingEncoding:4]);
}

uint64_t MCSendSettingsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending settings changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.settingschanged" cStringUsingEncoding:4]);
}

uint64_t MCSendEffectiveSettingsChangedNotification(int a1)
{
  if (MCSendEffectiveSettingsChangedNotification_once != -1)
  {
    MCSendEffectiveSettingsChangedNotification_cold_1();
  }

  +[MCSignpostManager willPostEffectiveSettingsChangedNotification];
  v2 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEFAULT, "Sending effective settings changed notification.", v4, 2u);
  }

  notify_set_state(MCSendEffectiveSettingsChangedNotification_token, a1);
  return notify_post([@"com.apple.managedconfiguration.effectivesettingschanged" UTF8String]);
}

uint64_t __MCSendEffectiveSettingsChangedNotification_block_invoke()
{
  v0 = [@"com.apple.managedconfiguration.effectivesettingschanged" UTF8String];

  return notify_register_check(v0, &MCSendEffectiveSettingsChangedNotification_token);
}

uint64_t MCSendClientTruthChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Client Restrictions Changed notification", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.clientrestrictionschanged" cStringUsingEncoding:4]);
}

uint64_t MCSendAppWhitelistChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending App Whitelist Changed notification", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.appwhitelistdidchange" UTF8String]);
}

uint64_t MCSendCloudConfigurationDetailsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Cloud Configuration Changed notification", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.cloudConfigurationChanged" UTF8String]);
}

uint64_t MCSendWebContentFilterChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Web Content Filter Changed notification", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.webContentFilterChanged" UTF8String]);
}

uint64_t MCSendWebContentFilterUIActiveChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Web Content Filter UI Active Changed notification", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.webFilterUIActiveDidChange" UTF8String]);
}

uint64_t MCSendWebContentFilterTypeChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Web Content Filter Type Changed notification", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.webContentFilterTypeChanged" UTF8String]);
}

uint64_t MCSendAirPlayPreferencesChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending AirPlay preferences changed notification.", v2, 2u);
  }

  return notify_post("com.apple.airplay.prefsChanged");
}

uint64_t MCSendUnlockScreenTypeDidChangeNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending unlock screen type changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.unlockScreenTypeDidChange" UTF8String]);
}

void MCSendActivationLockBypassCodeWasStoredNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending activation lock bypass code was generated notification.", v2, 2u);
  }

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"ActivationLockBypassCodeWasStored" object:0];
}

uint64_t MCSendManagedBooksChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Managed Books changed notification.", v2, 2u);
  }

  return notify_post([@"MCManagedBooksChanged" UTF8String]);
}

uint64_t MCSendManagedAppsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Managed Apps changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.managedAppsChanged" UTF8String]);
}

uint64_t MCSendSafariCookiePolicyChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Safari cookie policy changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.mobilesafari.SetCookiePolicy" UTF8String]);
}

uint64_t MCSendAllowPasscodeModificationChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending allowPasscodeModification changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.allowpasscodemodificationchanged" UTF8String]);
}

uint64_t MCSendRemovedSystemAppsChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Removed System Apps changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.removedSystemAppsChanged" UTF8String]);
}

uint64_t MCSendDiagnosticsCollectedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Diagnostics collected notification.", v2, 2u);
  }

  return notify_post([@"com.apple.ManagedConfiguration.diagnosticsCollected" UTF8String]);
}

uint64_t MCSendAllowHealthDataSubmissionChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending allowHealthDataSubmission changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.allowhealthdatasubmissionchanged" UTF8String]);
}

uint64_t MCSendDependencyChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending Dependency Changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.dependencydidchange" UTF8String]);
}

uint64_t MCSendTriggerRollKeybagsNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending rolld notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.rolld" UTF8String]);
}

uint64_t MCSendActivationRecordStoredNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending activation record stored notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.activationrecordstored" UTF8String]);
}

uint64_t MCSendCleanupMigrationFinishedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending cleanup migration finished notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.cleanupmigrationfinished" UTF8String]);
}

uint64_t MCSendPasscodeComplianceChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending passcode compliance changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.passcodecompliancechanged" UTF8String]);
}

uint64_t MCSendClearPasscodeGenerationCachesNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending clear passcode generation caches notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.clearpasscodegenerationcaches" cStringUsingEncoding:4]);
}

uint64_t MCSendExternalIntelligenceWorkspaceListChangedNotification()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_DEFAULT, "Sending external intelligence workspace changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.externalintelligenceworkspacelistchanged" cStringUsingEncoding:4]);
}

void sub_1A7996C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void MCActivationUtilitiesDeactivated()
{
  v0 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A795B000, v0, OS_LOG_TYPE_INFO, "Device deactivated. Clearing activation record cache.", v2, 2u);
  }

  v1 = +[MCActivationUtilities sharedInstance];
  [v1 _clearCache];
}

void ___nonPrivacySensitiveEAPKeys_block_invoke()
{
  v5[17] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"AcceptEAPTypes";
  v5[1] = @"PayloadCertificateAnchorUUID";
  v5[2] = @"TLSTrustedCertificates";
  v5[3] = @"TLSTrustedServerCommonNames";
  v5[4] = @"TLSTrustedServerNames";
  v5[5] = @"TLSAllowTrustExceptions";
  v5[6] = @"TLSCertificateIsRequired";
  v5[7] = @"TTLSInnerAuthentication";
  v5[8] = @"TLSMinimumVersion";
  v5[9] = @"TLSMaximumVersion";
  v5[10] = @"EAPFASTUsePAC";
  v5[11] = @"EAPFASTProvisionPAC";
  v5[12] = @"EAPFASTProvisionPACAnonymously";
  v5[13] = @"EAPSIMNumberOfRANDs";
  v5[14] = @"EAPSIMAKAConservativePeer";
  v5[15] = @"EAPSIMAKAPseudonymIdentityLifetimeHours";
  v5[16] = @"EAPSIMAKAEncryptedIdentityEnabled";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:17];
  v2 = [v0 setWithArray:v1];
  v3 = _nonPrivacySensitiveEAPKeys_keys;
  _nonPrivacySensitiveEAPKeys_keys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void HMAC_SHA256Prf(void *key, size_t keyLength, const void *a3, size_t a4, void *a5)
{
  memset(&v8, 0, sizeof(v8));
  CCHmacInit(&v8, 2u, key, keyLength);
  CCHmacUpdate(&v8, a3, a4);
  CCHmacFinal(&v8, a5);
}

double _MCMachTimeToSeconds(unint64_t a1)
{
  if (_MCMachTimeToSeconds_onceToken != -1)
  {
    _MCMachTimeToSeconds_cold_1();
  }

  return *&_MCMachTimeToSeconds_sFactor * a1;
}

uint64_t MCHasMDMMigrated()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = migrationCheckQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MCHasMDMMigrated_block_invoke;
  block[3] = &unk_1E77D2418;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __MCHasMDMMigrated_block_invoke(uint64_t a1)
{
  v2 = kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_2_migrationCheckQueueHasMDMMigrated;
  if (kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_2_migrationCheckQueueHasMDMMigrated)
  {
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E695DEF0];
  v4 = MCSystemMetadataFilePath();
  v5 = [v3 dataWithContentsOfFile:v4];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v5 options:0 format:0 error:0];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_6:
      v6 = 0;
    }
  }

  v7 = [v6 objectForKey:@"LastMDMMigratedBuild"];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = MCLegacyMetadataFilePath();
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_2_migrationCheckQueueHasMDMMigrated = 0;
  }

  else
  {
    v11 = MCProductBuildVersion();
    kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_2_migrationCheckQueueHasMDMMigrated = [v7 isEqualToString:v11];
  }

  v2 = kMCMetaStopFilteringGrandfatheredRestrictions_block_invoke_2_migrationCheckQueueHasMDMMigrated;
LABEL_11:
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

uint64_t MCIsBundleIDRunning(uint64_t a1)
{
  v1 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:a1];
  v2 = [MEMORY[0x1E69C75D0] handleForPredicate:v1 error:0];
  v3 = [v2 currentState];
  v4 = [v3 isRunning];

  return v4;
}

id MCFrontmostApplicationBundleIdentifier()
{
  v0 = MCSBSCopyFrontmostApplicationDisplayIdentifier();

  return v0;
}

uint64_t MCIsEffectivelyInAppWhitelistMode()
{
  v0 = +[MCRestrictionManager sharedManager];
  v1 = [v0 appWhitelistState];

  if (v1 != 6 && v1 != 0)
  {
    return 1;
  }

  v3 = [MCAXBackBoardServerSessionClass() server];
  v4 = [v3 currentGuidedAccessModeAndSessionApp:0] != 0;

  return v4;
}

id MCEffectiveSingleAppModeBundleID()
{
  v0 = [MCAXBackBoardServerSessionClass() server];
  v10 = 0;
  v1 = [v0 currentGuidedAccessModeAndSessionApp:&v10];
  v2 = v10;

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v4 = +[MCRestrictionManager sharedManager];
    v5 = [v4 appWhitelistState];
    if (v5)
    {
      v6 = v5 == 6;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v3 = 0;
    }

    else
    {
      v7 = [v4 effectiveWhitelistedAppsAndOptions];
      v8 = [v7 firstObject];

      v3 = [v8 objectForKeyedSubscript:@"Identifier"];
    }
  }

  return v3;
}

void sub_1A79B89CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79B9238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MCCTHasTelephony()
{
  if (MCCTHasTelephony_once != -1)
  {
    MCCTHasTelephony_cold_1();
  }

  return MCCTHasTelephony_hasTelephony;
}

void __MCCTHasTelephony_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      MCCTHasTelephony_hasTelephony = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

uint64_t MCCTHasCellular()
{
  if (MCCTHasCellular_once != -1)
  {
    MCCTHasCellular_cold_1();
  }

  return MCCTHasCellular_hasCellular;
}

void __MCCTHasCellular_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      MCCTHasCellular_hasCellular = CFBooleanGetValue(v1) != 0;
    }

    CFRelease(v1);
  }
}

id MCCTIMEI()
{
  if (MCCTIMEI_once != -1)
  {
    MCCTIMEI_cold_1();
  }

  v1 = MCCTIMEI_imei;

  return v1;
}

uint64_t __MCCTIMEI_block_invoke()
{
  v0 = _EquipmentInfo();
  v4 = [v0 IMEI];

  if ([v4 length])
  {
    v1 = [MEMORY[0x1E696AD60] stringWithString:v4];
    if ([v1 length] >= 3)
    {
      [v1 insertString:@" " atIndex:2];
    }

    if ([v1 length] >= 0xA)
    {
      [v1 insertString:@" " atIndex:9];
    }

    if ([v1 length] >= 0x11)
    {
      [v1 insertString:@" " atIndex:16];
    }

    v2 = MCCTIMEI_imei;
    MCCTIMEI_imei = v1;
  }

  return MEMORY[0x1EEE66BE0]();
}

id _EquipmentInfo()
{
  v26 = *MEMORY[0x1E69E9840];
  if (_CoreTelephonyClient_onceToken != -1)
  {
    _EquipmentInfo_cold_1();
  }

  v0 = _CoreTelephonyClient_coreTelephonyClient;
  v1 = v0;
  if (!v0)
  {
    v11 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "nil client passed to _DataServiceSubscriptionContextFromClient", buf, 2u);
    }

    goto LABEL_23;
  }

  v23 = 0;
  v2 = [v0 getPreferredDataSubscriptionContextSync:&v23];
  v3 = v23;
  v4 = v3;
  if (v2)
  {
    v22 = v3;
    v5 = [v1 getSIMStatus:v2 error:&v22];
    v6 = v22;

    if (v5)
    {
      if (![v5 isEqualToString:*MEMORY[0x1E6965438]])
      {
        v13 = v2;
        goto LABEL_19;
      }

      v7 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "rejecting data SIM that isn't inserted";
        v9 = v7;
        v10 = 2;
LABEL_16:
        _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }

    else
    {
      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v6;
        v8 = "getSIMStatus failed: %{public}@";
        v9 = v14;
        v10 = 12;
        goto LABEL_16;
      }
    }

    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v4;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_DEFAULT, "getPreferredDataSubscriptionContextSync failed: %{public}@", buf, 0xCu);
  }

  v13 = 0;
  v6 = v4;
LABEL_20:

  if (!v13)
  {
LABEL_23:
    v15 = 0;
    goto LABEL_27;
  }

  v21 = 0;
  v15 = [v1 getMobileEquipmentInfoFor:v13 error:&v21];
  v16 = v21;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEFAULT, "getMobileEquipmentInfoFor:error: failed: %{public}@", buf, 0xCu);
    }
  }

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

id MCCTMEID()
{
  if (MCCTMEID_once != -1)
  {
    MCCTMEID_cold_1();
  }

  v1 = MCCTMEID_meid;

  return v1;
}

void __MCCTMEID_block_invoke()
{
  v0 = _EquipmentInfo();
  obj = [v0 MEID];

  if ([obj length])
  {
    objc_storeStrong(&MCCTMEID_meid, obj);
  }
}

BOOL MCCTHasGSM()
{
  v0 = MCCTIMEI();
  v1 = v0 != 0;

  return v1;
}

BOOL MCCTHasCDMA()
{
  v0 = MCCTMEID();
  v1 = v0 != 0;

  return v1;
}

BOOL MCCTSetManagedCellularProfile(void *a1, void *a2)
{
  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v13 = v5;
    ManagedCellularProfile = _CTServerConnectionLoadManagedCellularProfile();
    v15 = ManagedCellularProfile == 0;
    if (a2 && ManagedCellularProfile)
    {
      *a2 = errorFromCTError(ManagedCellularProfile);
    }

    CFRelease(v13);
  }

  else if (a2)
  {
    cannotConnectError(0, v6, v7, v8, v9, v10, v11, v12);
    *a2 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id errorFromCTError(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A5A0];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(a1)];
    v17 = MCErrorArray(@"MACH_ERROR_P_CODE", v10, v11, v12, v13, v14, v15, v16, v9);
    v6 = [v7 MCErrorWithDomain:v8 code:a1 >> 32 descriptionArray:v17 errorType:@"MCFatalError"];
  }

  else if (a1 == 1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(SHIDWORD(a1))];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A798];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v6 = [v3 errorWithDomain:v4 code:a1 >> 32 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

id cannotConnectError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"CELLULAR_CANNOT_CONNECT", a2, a3, a4, a5, a6, a7, a8, 0);
  v10 = [v8 MCErrorWithDomain:@"MCCellularErrorDomain" code:36001 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

BOOL MCCTClearManagedCellularProfile(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = _CTServerConnectionCreate();
  if (v3)
  {
    v11 = v3;
    v12 = _CTServerConnectionUnloadManagedCellularProfile();
    v13 = v12 == 0;
    if (a1 && v12)
    {
      *a1 = errorFromCTError(v12);
    }

    CFRelease(v11);
  }

  else if (a1)
  {
    cannotConnectError(0, v4, v5, v6, v7, v8, v9, v10);
    *a1 = v13 = 0;
  }

  else
  {
    return 0;
  }

  return v13;
}

BOOL MCCTGetManagedCellularProfile(void *a1, void *a2)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v13 = v5;
    ManagedCellularProfile = _CTServerConnectionGetManagedCellularProfile();
    if (a1)
    {
      v15 = 0;
      *a1 = 0;
    }

    v16 = ManagedCellularProfile == 0;
    if (a2 && ManagedCellularProfile)
    {
      *a2 = errorFromCTError(ManagedCellularProfile);
    }

    CFRelease(v13);
  }

  else if (a2)
  {
    cannotConnectError(0, v6, v7, v8, v9, v10, v11, v12);
    *a2 = v16 = 0;
  }

  else
  {
    return 0;
  }

  return v16;
}

id MCIOSerialString()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v3);
  }

  else
  {
    CFProperty = 0;
  }

  return CFProperty;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ephemeralMultiUserAllowedKeysFilter_block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"ephemeralMultiUserRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _ephemeralMultiUserAllowedKeysFilter_dict;
  _ephemeralMultiUserAllowedKeysFilter_dict = v2;
}

void ___singleUserAllowedKeysFilter_block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"singleUserRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _singleUserAllowedKeysFilter_dict;
  _singleUserAllowedKeysFilter_dict = v2;
}

void sub_1A79C5A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79C6A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A79C72E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79C7604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79C7EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A79C8414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A79C8994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A79C9A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79C9DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79CA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79CA640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A79CA944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79CAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79CB154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79CB4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79CB8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79CBE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A79CC29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79CC8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A79CCD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_1A79CDE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79D0720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79D2D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A79D3120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A79D3500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A79D38E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1A79D3EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D6388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79D693C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D6DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D71E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D7604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D7A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D8114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A79D9B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79DA11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1A79DA8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79DF708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MCBundleIDToContainingBundleIDMap(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = MCContainingBundleIDForBundleID(v8);
        [v2 setObject:v10 forKeyedSubscript:{v8, v13}];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

id MCBundleIDFromAuditToken(_OWORD *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v2 = a1[1];
  *buf.val = *a1;
  *&buf.val[4] = v2;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = a1[1];
    *buf.val = *a1;
    *&buf.val[4] = v9;
    v10 = SecTaskCreateWithAuditToken(v8, &buf);
    if (!v10)
    {
      v16 = _MCLogObjects;
      if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      LOWORD(buf.val[0]) = 0;
      v4 = "Failed to create SecTask from audit token";
      v5 = v16;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 2;
      goto LABEL_4;
    }

    v11 = v10;
    cf = 0;
    v22 = SecTaskCopySigningIdentifier(v10, &cf);
    v12 = _MCLogObjects;
    if (v22)
    {
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        buf.val[0] = 138543362;
        *&buf.val[1] = v22;
        v13 = "Looked up bundle ID %{public}@ using SecTask";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1A795B000, v14, v15, v13, &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 138543362;
      *&buf.val[1] = cf;
      v13 = "Failed to look up bundle ID using SecTask with error: %{public}@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v11);
    goto LABEL_17;
  }

  v3 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    buf.val[0] = 138543362;
    *&buf.val[1] = v22;
    v4 = "Looked up bundle ID %{public}@ from audit token using entitlement";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEBUG;
    v7 = 12;
LABEL_4:
    _os_log_impl(&dword_1A795B000, v5, v6, v4, &buf, v7);
  }

LABEL_17:
  v17 = v22;
  if (!v22)
  {
    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "Could not look up bundle identifier using audit token", &buf, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

void sub_1A79E3488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id syncQueue()
{
  if (syncQueue_onceToken != -1)
  {
    syncQueue_cold_1();
  }

  v1 = syncQueue_queue;

  return v1;
}

id syncQueueiTunesLoginCompletionBlocks()
{
  if (syncQueueiTunesLoginCompletionBlocks_onceToken != -1)
  {
    syncQueueiTunesLoginCompletionBlocks_cold_1();
  }

  v1 = syncQueueiTunesLoginCompletionBlocks_blocks;

  return v1;
}

id syncQueueNotificationQueue()
{
  if (syncQueueNotificationQueue_onceToken != -1)
  {
    syncQueueNotificationQueue_cold_1();
  }

  v1 = syncQueueNotificationQueue_queue;

  return v1;
}

void syncQueueCheckToShowNextNotification()
{
  v70 = *MEMORY[0x1E69E9840];
  if (syncQueueCurrentlyVisibleNotificationEntry)
  {
    goto LABEL_2;
  }

  v1 = syncQueueNotificationQueue();
  v2 = [v1 count];

  if (!v2)
  {
    goto LABEL_2;
  }

  v56 = *MEMORY[0x1E695EE58];
  v55 = *MEMORY[0x1E695EE60];
  v54 = *MEMORY[0x1E695EE78];
  v3 = *MEMORY[0x1E695EE70];
  v4 = *MEMORY[0x1E695EE98];
  v53 = *MEMORY[0x1E695EE68];
  v5 = *MEMORY[0x1E695EEA0];
  v6 = *MEMORY[0x1E695E480];
  v51 = v58;
  mode = *MEMORY[0x1E695E8D0];
  v7 = MEMORY[0x1E695E118];
  while (1)
  {
    v8 = syncQueueNotificationQueue();
    v9 = [v8 objectAtIndexedSubscript:{0, v51}];

    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [v9 title];

    if (v11)
    {
      v12 = [v9 title];
      [v10 setObject:v12 forKey:v56];
    }

    v13 = [v9 message];

    if (v13)
    {
      v14 = [v9 message];
      [v10 setObject:v14 forKey:v55];
    }

    v15 = [v9 defaultButtonText];

    if (v15)
    {
      v16 = [v9 defaultButtonText];
      [v10 setObject:v16 forKey:v54];
    }

    v17 = [v9 alternateButtonText];

    if (v17)
    {
      v18 = [v9 alternateButtonText];
      [v10 setObject:v18 forKey:v3];
    }

    v19 = [v9 otherButtonText];

    if (v19)
    {
      v20 = [v9 otherButtonText];
      [v10 setObject:v20 forKey:v4];
    }

    if ([v9 displayOnLockScreen])
    {
      [v10 setObject:v7 forKey:v53];
    }

    if ([v9 dismissOnLock])
    {
      [v10 setObject:v7 forKey:MCSBUserNotificationDismissOnLock()];
    }

    [v10 setObject:v7 forKey:MCSBUserNotificationDontDismissOnUnlock()];
    v21 = [v9 defaultButtonText];
    if (v21)
    {
      v22 = [v9 alternateButtonText];
      if (v22)
      {
        v23 = v22;
        v24 = [v9 otherButtonText];
        v25 = v24 != 0;

        v21 = 32 * v25;
      }

      else
      {

        v21 = 0;
      }
    }

    v26 = [v9 textfieldPlaceholder];

    if (v26)
    {
      v27 = [v9 textfieldPlaceholder];
      [v10 setObject:v27 forKey:v5];

      v21 |= 0x10000uLL;
    }

    error = 0;
    v28 = CFUserNotificationCreate(v6, 0.0, v21, &error, v10);
    if (!v28)
    {
      v32 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v61) = error;
        _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, "Cannot create alert. Error: %d", buf, 8u);
      }

      goto LABEL_32;
    }

    v29 = v28;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v28, mainQueueNotificationCallback, 0);
    if (RunLoopSource)
    {
      break;
    }

    v31 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_ERROR, "Cannot display alert: can't create run loop source.", buf, 2u);
    }

    CFRelease(v29);
LABEL_32:

    v33 = syncQueueNotificationQueue();
    v34 = [v33 count];

    if (!v34)
    {
      goto LABEL_2;
    }
  }

  v35 = RunLoopSource;
  v36 = syncQueueNotificationQueue();
  [v36 removeObjectAtIndex:0];

  objc_storeStrong(&syncQueueCurrentlyVisibleNotificationEntry, v9);
  [v9 setNotification:v29];
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v35, mode);
  CFRelease(v35);
  v38 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    v40 = [v9 title];
    v41 = [v9 message];
    v42 = [v9 defaultButtonText];
    v43 = [v9 alternateButtonText];
    v44 = [v9 otherButtonText];
    *buf = 138544386;
    v61 = v40;
    v62 = 2114;
    v63 = v41;
    v64 = 2114;
    v65 = v42;
    v66 = 2114;
    v67 = v43;
    v68 = 2114;
    v69 = v44;
    _os_log_impl(&dword_1A795B000, v39, OS_LOG_TYPE_DEFAULT, "Displaying alert: %{public}@ - %{public}@ [%{public}@] [%{public}@] [%{public}@]", buf, 0x34u);
  }

  [v9 dismissAfterTimeInterval];
  if (v45 <= 0.0)
  {
    CFRelease(v29);
  }

  else
  {
    v46 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v47 = v46;
      [v9 dismissAfterTimeInterval];
      *buf = 134217984;
      v61 = v48;
      _os_log_impl(&dword_1A795B000, v47, OS_LOG_TYPE_INFO, "Scheduling automatic alert dismissal after %0.0f seconds.", buf, 0xCu);
    }

    CFRetain(v29);
    [v9 dismissAfterTimeInterval];
    v50 = dispatch_time(0, (v49 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v58[0] = __syncQueueCheckToShowNextNotification_block_invoke;
    v58[1] = &__block_descriptor_40_e5_v8__0l;
    v58[2] = v29;
    dispatch_after(v50, MEMORY[0x1E69E96A0], block);
  }

LABEL_2:
  v0 = *MEMORY[0x1E69E9840];
}

id syncQueueVPPInvitationCompletionBlocks()
{
  if (syncQueueVPPInvitationCompletionBlocks_onceToken != -1)
  {
    syncQueueVPPInvitationCompletionBlocks_cold_1();
  }

  v1 = syncQueueVPPInvitationCompletionBlocks_blocks;

  return v1;
}

uint64_t __syncQueue_block_invoke()
{
  syncQueue_queue = dispatch_queue_create("MCUserNotificationManager syncQueue", MEMORY[0x1E69E96A8]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __syncQueueiTunesLoginCompletionBlocks_block_invoke()
{
  syncQueueiTunesLoginCompletionBlocks_blocks = [MEMORY[0x1E695DF70] array];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __syncQueueNotificationQueue_block_invoke()
{
  syncQueueNotificationQueue_queue = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

void mainQueueNotificationCallback(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 3)
  {
    v4 = @"Unknown";
    v3 = 4;
  }

  else
  {
    v3 = a2;
    v4 = off_1E77D2F20[a2];
  }

  v5 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Alert dismissed with response: %{public}@", buf, 0xCu);
  }

  v6 = syncQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __mainQueueNotificationCallback_block_invoke;
  v8[3] = &__block_descriptor_44_e5_v8__0l;
  v8[4] = a1;
  v9 = v3;
  dispatch_barrier_sync(v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __syncQueueCheckToShowNextNotification_block_invoke(uint64_t a1)
{
  v2 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_DEFAULT, "Automatically dismissing alert.", v3, 2u);
  }

  CFUserNotificationCancel(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

void __mainQueueNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = syncQueueCurrentlyVisibleNotificationEntry;
  v3 = [v2 textfieldPlaceholder];

  if (v3)
  {
    v3 = [(__CFString *)CFUserNotificationGetResponseValue(*(a1 + 32) copy:0)];
  }

  v4 = syncQueueCurrentlyVisibleNotificationEntry;
  syncQueueCurrentlyVisibleNotificationEntry = 0;

  v5 = [v2 completionBlock];

  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __mainQueueNotificationCallback_block_invoke_2;
    block[3] = &unk_1E77D2D50;
    v8 = v2;
    v10 = *(a1 + 40);
    v9 = v3;
    dispatch_async(v6, block);
  }

  syncQueueCheckToShowNextNotification();
}

void __mainQueueNotificationCallback_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

uint64_t __syncQueueVPPInvitationCompletionBlocks_block_invoke()
{
  syncQueueVPPInvitationCompletionBlocks_blocks = [MEMORY[0x1E695DF70] array];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79F12D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MCSetMigrationParameters(void *a1)
{
  v1 = a1;
  v2 = MCSystemProfileStorageDirectory();
  v4 = [v2 stringByAppendingPathComponent:@"LockdownParameters.plist"];

  [v1 MCWriteToBinaryFile:v4];
  v3 = v4;
  chown([v4 fileSystemRepresentation], 0x1F5u, 0x1F5u);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A79FE864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79FE9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A79FEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A03998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A03B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A04064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A04250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A0443C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A045E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A0584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A05A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A06C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void ___removedPayloadClasses_block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = _removedPayloadClasses_array;
  _removedPayloadClasses_array = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id MCKeybagSetPasscodeGracePeriod(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v5 = @"Yes";
    if (!v3)
    {
      v5 = @"No";
    }

    *buf = 134218242;
    v27 = a1;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Attempting to set grace period to %lu seconds. Passcode context present: %{public}@", buf, 0x16u);
  }

  v24 = @"GracePeriod";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v25 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v8 = MKBDeviceSetGracePeriodWithACM();
  v9 = _MCLogObjects;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v27) = v10;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Failed to set grace period. Error code: %d", buf, 8u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    v20 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_SET_GRACE_PERIOD_P_CODE", v13, v14, v15, v16, v17, v18, v19, v12);
    v21 = [v11 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5015 descriptionArray:v20 errorType:@"MCFatalError"];
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_INFO, "Successfully set grace period.", buf, 2u);
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t MCKeybagCurrentPasscodeGracePeriod()
{
  GracePeriod = MKBDeviceGetGracePeriod();
  v1 = [GracePeriod objectForKeyedSubscript:@"GracePeriod"];
  v2 = [v1 unsignedLongValue];

  return v2;
}

id MCKeybagSetMaximumFailedPasscodeAttempts(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v5 = @"Yes";
    if (!v3)
    {
      v5 = @"No";
    }

    *buf = 134218242;
    v27 = a1;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Attempting to set maximum failed passcode attempts to %lu. Passcode context present: %{public}@", buf, 0x16u);
  }

  v24 = *MEMORY[0x1E69B1A08];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v25 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v8 = MKBSetDeviceConfigurationsWithACM();
  v9 = _MCLogObjects;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v27) = v10;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Failed to set maximum failed passcode attempts. Error code: %d", buf, 8u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    v20 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_SET_PASSCODE_ATTEMPTS_P_CODE", v13, v14, v15, v16, v17, v18, v19, v12);
    v21 = [v11 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5018 descriptionArray:v20 errorType:@"MCFatalError"];
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_INFO, "Successfully set maximum failed passcode attempts.", buf, 2u);
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t MCKeybagCurrentMaximumFailedPasscodeAttemptsForHandle(void *a1)
{
  v1 = _MCKeybagDeviceConfigurations(a1);
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69B1A08]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

id MCKeybagCurrentPasscodeGenerationForHandle(void *a1)
{
  v1 = a1;
  objc_sync_enter(@"passcodeGenerationLock");
  v2 = currentPasscodeGenerationCache;
  if (!v2)
  {
    v3 = _MCKeybagDeviceConfigurations(v1);
    v2 = [v3 objectForKeyedSubscript:@"PasscodeGeneration"];
    objc_storeStrong(&currentPasscodeGenerationCache, v2);
  }

  objc_sync_exit(@"passcodeGenerationLock");

  return v2;
}

id MCKeybagMementoPasscodeGenerationForHandle(void *a1)
{
  v1 = a1;
  objc_sync_enter(@"passcodeGenerationLock");
  v2 = mementoPasscodeGenerationCache;
  if (!v2)
  {
    v3 = _MCKeybagDeviceConfigurations(v1);
    v2 = [v3 objectForKeyedSubscript:@"MementoPasscodeGeneration"];
    objc_storeStrong(&mementoPasscodeGenerationCache, v2);
  }

  objc_sync_exit(@"passcodeGenerationLock");

  return v2;
}

uint64_t MCKeybagClearPasscodeGenerationCaches()
{
  objc_sync_enter(@"passcodeGenerationLock");
  v0 = currentPasscodeGenerationCache;
  currentPasscodeGenerationCache = 0;

  v1 = mementoPasscodeGenerationCache;
  mementoPasscodeGenerationCache = 0;

  return objc_sync_exit(@"passcodeGenerationLock");
}

uint64_t MCKeybagMementoSupportedForHandle(void *a1)
{
  v1 = a1;
  if ((MCKeybagMementoSupportedForHandle_supported & 1) == 0 && _os_feature_enabled_impl())
  {
    v2 = _MCKeybagDeviceConfigurations(v1);
    v3 = [v2 objectForKeyedSubscript:@"MementoSupported"];
    MCKeybagMementoSupportedForHandle_supported = [v3 BOOLValue];
  }

  v4 = MCKeybagMementoSupportedForHandle_supported;

  return v4;
}

id MCKeybagClearMementoBlobForHandle(void *a1)
{
  if (MCKeybagMementoSupportedForHandle(a1))
  {
    v1 = MKBKeyBagEffaceMementoBlob();
    if (v1)
    {
      v2 = MEMORY[0x1E696ABC0];
      v3 = [MEMORY[0x1E696AD98] numberWithInt:v1];
      v11 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_CLEAR_MEMENTO_P_CODE", v4, v5, v6, v7, v8, v9, v10, v3);
      v12 = [v2 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5022 descriptionArray:v11 errorType:@"MCFatalError"];

      goto LABEL_7;
    }

    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_INFO, "Successfully cleared recovery passcode.", buf, 2u);
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

uint64_t MCKeybagMementoBlobExistsForHandle(void *a1)
{
  v1 = a1;
  if (MCKeybagMementoSupportedForHandle(v1))
  {
    v2 = _MCKeybagDeviceConfigurations(v1);
    v3 = [v2 objectForKeyedSubscript:@"MementoBlobExists"];
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MCKeybagCopyEscrowWithContext(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  cf = 0;
  v7 = +[MCPasscodeManager sharedManager];
  v8 = [v7 isPasscodeSet];

  if (!v6 && v8)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = MCErrorArray(@"KEYBAG_ERROR_CANNOT_CREATE_ESCROW_KEYBAG_WITHOUT_PASSCODE", v9, v10, v11, v12, v13, v14, v15, 0);
    v18 = [v16 MCErrorWithDomain:@"MCKeybagErrorDomain" code:37002 descriptionArray:v17 errorType:@"MCFatalError"];
LABEL_6:

    v29 = 0;
    goto LABEL_7;
  }

  EscrowWithACM = MKBKeyBagCreateEscrowWithACM();
  if (EscrowWithACM)
  {
    v20 = MEMORY[0x1E696ABC0];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:EscrowWithACM];
    v28 = MCErrorArray(@"KEYBAG_ERROR_CANNOT_CREATE_ESCROW_KEYBAG_P_CODE", v21, v22, v23, v24, v25, v26, v27, v17);
    v18 = [v20 MCErrorWithDomain:@"MCKeybagErrorDomain" code:37003 descriptionArray:v28 errorType:@"MCFatalError"];

    goto LABEL_6;
  }

  v33 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v33, OS_LOG_TYPE_INFO, "MCKeybagCopyEscrowWithContext: escrow created.", buf, 2u);
  }

  *buf = 0;
  v34 = MKBKeyBagCopyData();
  v29 = *buf;
  if (v34)
  {
    v35 = MEMORY[0x1E696ABC0];
    v36 = [MEMORY[0x1E696AD98] numberWithInt:v34];
    v44 = MCErrorArray(@"KEYBAG_ERROR_CANNOT_COPY_ESCROW_KEYBAG_DATA_P_CODE", v37, v38, v39, v40, v41, v42, v43, v36);
    v18 = [v35 MCErrorWithDomain:@"MCKeybagErrorDomain" code:37004 descriptionArray:v44 errorType:@"MCFatalError"];
  }

  else
  {
    v45 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *v46 = 0;
      _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_INFO, "MCKeybagCopyEscrowWithContext: escrow data copied.", v46, 2u);
    }

    v18 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    if (a3)
    {
      v30 = v18;
      v31 = 0;
      *a3 = v18;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = v29;
  }

  return v31;
}

id MCKeybagCreateSupervisionEscrowWithPasscodeContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = [@"com.apple.Chaperone" dataUsingEncoding:4];
  v13 = 0;
  v5 = [MCSecurePasscodeContextWrapper contextWrapperForSecureSecretData:v4 outError:&v13];
  v6 = v13;

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    v8 = [v5 externalizedContext];
    v12 = 0;
    v7 = MCKeybagCopyEscrowWithContext(v8, v3, &v12);
    v6 = v12;

    if (!v6)
    {
      v7 = v7;
      v10 = v7;
      goto LABEL_8;
    }
  }

  if (a2)
  {
    v9 = v6;
    v10 = 0;
    *a2 = v6;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

uint64_t MCKeybagHasMDMEscrowDataAndSecret()
{
  v0 = MCKeybagRetrieveMDMEscrowDataIfPresent(0);
  v1 = MCKeybagRetrieveMDMEscrowSecret(0);
  if (v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;

  return v3;
}

id MCKeybagRetrieveMDMEscrowDataIfPresent(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69AD548];
  v3 = *MEMORY[0x1E69AD4C0];
  v15 = 0;
  v4 = [MCKeychain dataFromService:v2 account:v3 label:0 description:0 useSystemKeychain:0 outError:&v15];
  v5 = v15;
  v6 = v5;
  if (!v4)
  {
    if (a1)
    {
      v7 = v5;
      *a1 = v6;
    }

    v8 = _MCLogObjects;
    if (v6)
    {
      if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v17 = v6;
      v9 = "Unable to retrieve escrow keybag from the keychain. Error: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
    }

    else
    {
      if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v9 = "No escrow keybag found in the keychain.";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 2;
    }

    _os_log_impl(&dword_1A795B000, v10, v11, v9, buf, v12);
  }

LABEL_10:

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

id MCKeybagRetrieveMDMEscrowSecret(uint64_t a1)
{
  v1 = [MCKeychain stringFromService:*MEMORY[0x1E69AD548] account:*MEMORY[0x1E69AD4C8] label:0 description:0 useSystemKeychain:0 outError:a1];
  v2 = [v1 dataUsingEncoding:4];

  return v2;
}

BOOL MCKeybagCreateMDMEscrowWithPasscodeContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AEC0] MCMakeUUID];
  v5 = [v4 dataUsingEncoding:4];
  v14 = 0;
  v6 = [MCSecurePasscodeContextWrapper contextWrapperForSecureSecretData:v5 outError:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = v7;
LABEL_5:

    goto LABEL_6;
  }

  v9 = [v6 externalizedContext];
  v13 = 0;
  v10 = MCKeybagCopyEscrowWithContext(v9, v3, &v13);
  v8 = v13;

  if (v10)
  {
    _MCKeybagStoreMDMEscrowAndSecret(v4, v10);
    v6 = v10;
    goto LABEL_5;
  }

LABEL_6:
  if (a2 && v8)
  {
    v11 = v8;
    *a2 = v8;
  }

  return v8 == 0;
}

uint64_t _MCKeybagStoreMDMEscrowAndSecret(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E69AD548];
  v5 = *MEMORY[0x1E69AD4C8];
  v6 = *MEMORY[0x1E697AC08];
  v20 = 0;
  LOWORD(v17) = 256;
  [MCKeychain setString:a1 forService:v4 account:v5 label:0 description:0 access:v6 group:0 useSystemKeychain:v17 sysBound:&v20 outError:?];
  v7 = v20;
  if (v7)
  {
    v8 = v7;
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Failed to store MDM escrow secret into keychain. Error: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = *MEMORY[0x1E69AD4C0];
    v11 = *MEMORY[0x1E697ABE8];
    v19 = 0;
    LOWORD(v18) = 256;
    [MCKeychain setData:v3 forService:v4 account:v10 label:0 description:0 access:v11 group:0 useSystemKeychain:v18 sysBound:&v19 outError:?];
    v12 = v19;
    if (!v12)
    {
      v14 = 1;
      goto LABEL_9;
    }

    v8 = v12;
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Failed to store MDM escrow data into keychain. Error: %@", buf, 0xCu);
    }

    [MCKeychain removeItemForService:v4 account:v5 label:0 description:0 useSystemKeychain:0 group:0];
  }

  v14 = 0;
LABEL_9:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL MCKeybagVerifyPasscodeContext()
{
  v0 = MKBVerifyACMPasswordWithContext();
  if (v0)
  {
    v1 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A795B000, v1, OS_LOG_TYPE_ERROR, "MCKeybagVerifyPasscodeContext Failed to verify passcode context", v3, 2u);
    }
  }

  return v0 == 0;
}

void sub_1A7A17FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7A182F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A1B498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A1BAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCRKEDUDeviceGroupNameKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCRKEDUDeviceGroupNameKeySymbolLoc_ptr;
  v7 = getkCRKEDUDeviceGroupNameKeySymbolLoc_ptr;
  if (!getkCRKEDUDeviceGroupNameKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "kCRKEDUDeviceGroupNameKey");
    getkCRKEDUDeviceGroupNameKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkCRKEDUDeviceGroupNameKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCRKEDUUserIdentifierKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCRKEDUUserIdentifierKeySymbolLoc_ptr;
  v7 = getkCRKEDUUserIdentifierKeySymbolLoc_ptr;
  if (!getkCRKEDUUserIdentifierKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "kCRKEDUUserIdentifierKey");
    getkCRKEDUUserIdentifierKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkCRKEDUUserIdentifierKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1CB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A1D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRKEDUProfileErrorDomain()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCRKEDUProfileErrorDomainSymbolLoc_ptr;
  v7 = getCRKEDUProfileErrorDomainSymbolLoc_ptr;
  if (!getCRKEDUProfileErrorDomainSymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "CRKEDUProfileErrorDomain");
    getCRKEDUProfileErrorDomainSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCRKEDUProfileErrorDomain_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1D598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRKEDUProfileErrorFieldKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCRKEDUProfileErrorFieldKeySymbolLoc_ptr;
  v7 = getCRKEDUProfileErrorFieldKeySymbolLoc_ptr;
  if (!getCRKEDUProfileErrorFieldKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "CRKEDUProfileErrorFieldKey");
    getCRKEDUProfileErrorFieldKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCRKEDUProfileErrorFieldKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1D69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRKEDUProfileErrorValueKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCRKEDUProfileErrorValueKeySymbolLoc_ptr;
  v7 = getCRKEDUProfileErrorValueKeySymbolLoc_ptr;
  if (!getCRKEDUProfileErrorValueKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "CRKEDUProfileErrorValueKey");
    getCRKEDUProfileErrorValueKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCRKEDUProfileErrorValueKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1D7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCRKEDUGroupBeaconIDKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCRKEDUGroupBeaconIDKeySymbolLoc_ptr;
  v7 = getkCRKEDUGroupBeaconIDKeySymbolLoc_ptr;
  if (!getkCRKEDUGroupBeaconIDKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "kCRKEDUGroupBeaconIDKey");
    getkCRKEDUGroupBeaconIDKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkCRKEDUGroupBeaconIDKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCRKEDUPayloadLeaderCertificateAnchorUUIDKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCRKEDUPayloadLeaderCertificateAnchorUUIDKeySymbolLoc_ptr;
  v7 = getkCRKEDUPayloadLeaderCertificateAnchorUUIDKeySymbolLoc_ptr;
  if (!getkCRKEDUPayloadLeaderCertificateAnchorUUIDKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "kCRKEDUPayloadLeaderCertificateAnchorUUIDKey");
    getkCRKEDUPayloadLeaderCertificateAnchorUUIDKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkCRKEDUPayloadLeaderCertificateAnchorUUIDKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1D9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCRKEDUPayloadMemberCertificateAnchorUUIDKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCRKEDUPayloadMemberCertificateAnchorUUIDKeySymbolLoc_ptr;
  v7 = getkCRKEDUPayloadMemberCertificateAnchorUUIDKeySymbolLoc_ptr;
  if (!getkCRKEDUPayloadMemberCertificateAnchorUUIDKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "kCRKEDUPayloadMemberCertificateAnchorUUIDKey");
    getkCRKEDUPayloadMemberCertificateAnchorUUIDKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkCRKEDUPayloadMemberCertificateAnchorUUIDKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1DAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCRKEDUSingleUserIdentifierKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkCRKEDUSingleUserIdentifierKeySymbolLoc_ptr;
  v7 = getkCRKEDUSingleUserIdentifierKeySymbolLoc_ptr;
  if (!getkCRKEDUSingleUserIdentifierKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "kCRKEDUSingleUserIdentifierKey");
    getkCRKEDUSingleUserIdentifierKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkCRKEDUSingleUserIdentifierKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1DBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRKEDUProfileErrorTopLevelUserIdentifierKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCRKEDUProfileErrorTopLevelUserIdentifierKeySymbolLoc_ptr;
  v7 = getCRKEDUProfileErrorTopLevelUserIdentifierKeySymbolLoc_ptr;
  if (!getCRKEDUProfileErrorTopLevelUserIdentifierKeySymbolLoc_ptr)
  {
    v1 = ClassroomKitLibrary();
    v5[3] = dlsym(v1, "CRKEDUProfileErrorTopLevelUserIdentifierKey");
    getCRKEDUProfileErrorTopLevelUserIdentifierKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCRKEDUProfileErrorTopLevelUserIdentifierKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A7A1DCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRKEDUPayloadClass_block_invoke(uint64_t a1)
{
  ClassroomKitLibrary();
  result = objc_getClass("CRKEDUPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRKEDUPayloadClass_block_invoke_cold_1();
  }

  getCRKEDUPayloadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ClassroomKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ClassroomKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ClassroomKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77D34E0;
    v5 = 0;
    ClassroomKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ClassroomKitLibraryCore_frameworkLibrary;
  if (!ClassroomKitLibraryCore_frameworkLibrary)
  {
    ClassroomKitLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ClassroomKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ClassroomKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkCRKEDUDepartmentNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUDepartmentNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUDepartmentNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUDeviceGroupNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUDeviceGroupNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUDeviceGroupNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUUserIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUUserIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUUserIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUUserNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUUserNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUUserNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRKEDUProfileErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "CRKEDUProfileErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRKEDUProfileErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRKEDUProfileErrorFieldKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "CRKEDUProfileErrorFieldKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRKEDUProfileErrorFieldKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRKEDUProfileErrorValueKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "CRKEDUProfileErrorValueKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRKEDUProfileErrorValueKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUGroupBeaconIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUGroupBeaconIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUGroupBeaconIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUPayloadLeaderCertificateAnchorUUIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUPayloadLeaderCertificateAnchorUUIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUPayloadLeaderCertificateAnchorUUIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUPayloadMemberCertificateAnchorUUIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUPayloadMemberCertificateAnchorUUIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUPayloadMemberCertificateAnchorUUIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCRKEDUSingleUserIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "kCRKEDUSingleUserIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCRKEDUSingleUserIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRKEDUProfileErrorTopLevelUserIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "CRKEDUProfileErrorTopLevelUserIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRKEDUProfileErrorTopLevelUserIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "CRKEDUProfileErrorProvidedKeysKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ClassroomKitLibrary();
  result = dlsym(v2, "CRKEDUProfileErrorAllOrNoneKeysKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A7A23708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A23C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A2406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7A2449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7A27330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MCCheckSystemGroupContainerFileReadability(int a1, _BYTE *a2)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v2 = MCConfigurationProfilesSystemGroupContainer();
  v3 = MCLogSystemGroupContainerDirectoryACLs(v2);

  if (!v3)
  {
    v4 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_FAULT, "System container directory is missing ACLs!", buf, 2u);
    }
  }

  v5 = MCSystemProfileLibraryDirectory();
  v6 = MCLogSystemGroupContainerDirectoryACLs(v5);

  if (!v6)
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_FAULT, "Profile library directory is missing ACLs!", buf, 2u);
    }
  }

  v8 = MCSystemProfileStorageDirectory();
  v9 = MCLogSystemGroupContainerDirectoryACLs(v8);

  if (!v9)
  {
    v10 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_FAULT, "Profile storage directory is missing ACLs!", buf, 2u);
    }
  }

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = MEMORY[0x1E695DFF8];
  v13 = MCSystemProfileStorageDirectory();
  v14 = [v12 URLWithString:v13];
  v15 = *MEMORY[0x1E695DBB8];
  v47[0] = *MEMORY[0x1E695DBB8];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v33 = v11;
  v17 = [v11 enumeratorAtURL:v14 includingPropertiesForKeys:v16 options:0 errorHandler:&__block_literal_global_52];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    BYTE4(v35) = 1;
    LODWORD(v35) = a1;
    do
    {
      v22 = 0;
      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v38 + 1) + 8 * v22);
        v37 = 0;
        [v23 getResourceValue:&v37 forKey:v15 error:0];
        v24 = v37;
        v25 = [v24 BOOLValue];
        v26 = _MCLogObjects;
        v27 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v27)
          {
            *buf = 138543362;
            v45 = v23;
            _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_DEFAULT, "Checking file: %{public}@", buf, 0xCu);
          }

          if ([v23 getFileSystemRepresentation:buf maxLength:1024])
          {
            *__error() = 0;
            if (access(buf, 4) < 0 && *__error() == 13)
            {
              v28 = [v23 path];
              MCLogUnexpectedFileAccessError(v28, 0);

              if (a1)
              {
                v29 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *v42 = 138543362;
                  v43 = v23;
                  _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_DEFAULT, "Attempting to recover: %{public}@", v42, 0xCu);
                }

                v35 = MCRecoverUnreadableSystemGroupContainerFile(v23, buf) & v35;
              }

              else
              {
                BYTE4(v35) = 0;
              }
            }
          }
        }

        else if (v27)
        {
          *buf = 138543362;
          v45 = v23;
          _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_DEFAULT, "Skipping non-file path: %{public}@", buf, 0xCu);
        }

        ++v22;
      }

      while (v20 != v22);
      v30 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
      v20 = v30;
    }

    while (v30);
  }

  else
  {
    BYTE4(v35) = 1;
    LOBYTE(v35) = a1;
  }

  if (a2)
  {
    *a2 = v35 & 1;
  }

  v31 = *MEMORY[0x1E69E9840];
  return BYTE4(v35) & 1;
}

BOOL MCLogSystemGroupContainerDirectoryACLs(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v23 = 0;
    v3 = [v2 attributesOfItemAtPath:v1 error:&v23];
    v4 = v23;
    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v1;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Path %{public}@ attributes: %{public}@", buf, 0x16u);
    }

    file = acl_get_file([v1 UTF8String], ACL_TYPE_EXTENDED);
    v7 = file != 0;
    if (file)
    {
      v8 = file;
      v9 = acl_to_text(file, 0);
      v10 = _MCLogObjects;
      v11 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = v10;
          v14 = [v12 stringWithUTF8String:v9];
          *buf = 138543362;
          v25 = v14;
          _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_DEFAULT, "Path has ACL(s): %{public}@", buf, 0xCu);
        }

        acl_free(v9);
      }

      else if (v11)
      {
        v19 = v10;
        v20 = *__error();
        *buf = 67109120;
        LODWORD(v25) = v20;
        _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_DEFAULT, "acl_to_text returned NULL, errno = %d", buf, 8u);
      }

      acl_free(v8);
    }

    else
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = *__error();
        *buf = 67109120;
        LODWORD(v25) = v18;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "acl_get_file returned NULL, errno = %d", buf, 8u);
      }
    }
  }

  else
  {
    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v1;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Path %{public}@ does not exist yet", buf, 0xCu);
    }

    v7 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __MCCheckSystemGroupContainerFileReadability_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Directory enumerator error for %{public}@: %{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void MCLogUnexpectedFileAccessError(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v34 = 0;
  v6 = [v5 attributesOfItemAtPath:v3 error:&v34];
  v7 = v34;
  v8 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_FAULT, "Unexpected error (EACCES) reading file: %{public}@", buf, 0xCu);
  }

  v9 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&dword_1A795B000, v9, OS_LOG_TYPE_ERROR, "Error details: %{public}@", buf, 0xCu);
  }

  v33 = v3;
  v10 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_ERROR, "Attributes: %{public}@", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  *buf = 0u;
  v38 = 0u;
  v11 = getgroups(16, buf);
  if ((v11 & 0x80000000) != 0)
  {
    perror("getgroups");
  }

  else
  {
    v12 = v11;
    v13 = v11;
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    if (v12)
    {
      v15 = buf;
      do
      {
        v16 = *v15;
        v15 += 4;
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v16, v33}];
        [v14 addObject:v17];

        --v13;
      }

      while (v13);
    }

    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *v35 = 138543362;
      v36 = v14;
      _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "process belongs to groups: %{public}@", v35, 0xCu);
    }
  }

  file = acl_get_file([v33 UTF8String], ACL_TYPE_EXTENDED);
  if (file)
  {
    v20 = file;
    v21 = acl_to_text(file, 0);
    v22 = _MCLogObjects;
    v23 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = v22;
        v26 = [v24 stringWithUTF8String:v21];
        *v35 = 138543362;
        v36 = v26;
        _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_ERROR, "Path has ACL(s): %{public}@", v35, 0xCu);
      }

      acl_free(v21);
    }

    else if (v23)
    {
      v30 = v22;
      v31 = *__error();
      *v35 = 67109120;
      LODWORD(v36) = v31;
      _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "acl_to_text returned NULL, errno = %d", v35, 8u);
    }

    acl_free(v20);
  }

  else
  {
    v27 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = *__error();
      *v35 = 67109120;
      LODWORD(v36) = v29;
      _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "acl_get_file returned NULL, errno = %d", v35, 8u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t MCRecoverUnreadableSystemGroupContainerFile(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *__error() = 0;
  if (chmod(a2, 0x1A4u))
  {
    v4 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = *__error();
      v17 = 138543618;
      v18 = v3;
      v19 = 1024;
      v20 = v6;
      v7 = "Unable to recover %{public}@: cannot chmod(), errno %d";
LABEL_7:
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, v7, &v17, 0x12u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (!access(a2, 4))
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
    v14 = v13;
    if (v13)
    {
      if ([v13 writeToURL:v3 atomically:1])
      {
        v15 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138543362;
          v18 = v3;
          _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_DEFAULT, "Successfully recovered %{public}@!", &v17, 0xCu);
        }

        v10 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = 138543362;
        v18 = v3;
        _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "Unable to recover %{public}@: failed to read contents of file", &v17, 0xCu);
      }
    }

    v10 = 0;
LABEL_18:

    goto LABEL_9;
  }

  v8 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v5 = v8;
    v9 = *__error();
    v17 = 138543618;
    v18 = v3;
    v19 = 1024;
    v20 = v9;
    v7 = "Unable to recover %{public}@: file still not readable per access(), errno %d";
    goto LABEL_7;
  }

LABEL_8:
  v10 = 0;
LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL MCChangeOwnershipOfFileToMobile(void *a1, void *a2)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v29 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v29];
  v6 = v29;
  v14 = v6;
  if (!v5)
  {
    v16 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v15 = *MEMORY[0x1E696A360];
  v16 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A360]];
  if (([v16 isEqual:@"mobile"] & 1) == 0)
  {
    v17 = *MEMORY[0x1E696A328];
    v36[0] = v15;
    v36[1] = v17;
    v37[0] = @"mobile";
    v37[1] = @"mobile";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v28 = v14;
    [v4 setAttributes:v18 ofItemAtPath:v3 error:&v28];
    v19 = v28;

    v14 = v19;
  }

  if (v14)
  {
LABEL_7:
    v20 = MEMORY[0x1E696ABC0];
    v34[0] = *MEMORY[0x1E696A578];
    v21 = MCLocalizedErrorFormat(@"ERROR_FAILED_TO_CHANGE_OWNERSHIP", v7, v8, v9, v10, v11, v12, v13, v3);
    v34[1] = *MEMORY[0x1E696AA08];
    v35[0] = v21;
    v35[1] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v23 = [v20 errorWithDomain:@"MCInternalErrorDomain" code:0 userInfo:v22];

    v24 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v3;
      v32 = 2114;
      v33 = v23;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "Failed to change ownership of file at path %{public}@. Error: %{public}@", buf, 0x16u);
    }

    if (a2)
    {
      v25 = v23;
      *a2 = v23;
    }
  }

LABEL_12:

  v26 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

BOOL MCChangeOwnershipOfDirectoryContentsToMobile(void *a1, void *a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  if ([v5 fileExistsAtPath:v3 isDirectory:&v30] && (v30 & 1) != 0)
  {
    v6 = [v5 enumeratorAtPath:v3];
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 nextObject];
    if (v8)
    {
      v9 = v8;
      do
      {
        v10 = [v3 stringByAppendingPathComponent:v9];
        v29 = 0;
        v11 = MCChangeOwnershipOfFileToMobile(v10, &v29);
        v12 = v29;
        if (!v11)
        {
          [v4 addObject:v12];
        }

        objc_autoreleasePoolPop(v7);
        v7 = objc_autoreleasePoolPush();
        v9 = [v6 nextObject];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v3;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Path %{public}@ does not refer to a directory.", buf, 0xCu);
    }

    v21 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v22 = MCLocalizedErrorFormat(@"ERROR_NOT_A_DIRECTORY_P_PATH", v14, v15, v16, v17, v18, v19, v20, v3);
    v36[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v6 = [v21 errorWithDomain:@"MCInternalErrorDomain" code:1 userInfo:v23];

    [v4 addObject:v6];
  }

  v24 = [v4 count];
  if (v24)
  {
    v25 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v3;
      v33 = 2114;
      v34 = v4;
      _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_ERROR, "Failed to change ownership of directory contents at %{public}@. Errors: %{public}@", buf, 0x16u);
    }

    if (a2)
    {
      v26 = v4;
      *a2 = v4;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v24 == 0;
}

BOOL MCFixPermissionOfSystemGroupContainerFile(void *a1, int a2, void *a3)
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a1;
  v7 = [v5 defaultManager];
  v8 = MCFixPermissionOfSystemGroupContainerFileFM(v7, v6, a2, a3);

  return v8;
}

BOOL MCFixPermissionOfSystemGroupContainerFileFM(void *a1, void *a2, int a3, void *a4)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v34 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v34];
  v10 = v34;
  v11 = *MEMORY[0x1E696A370];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A370]];
  if (a3)
  {
    v13 = 511;
  }

  else
  {
    v13 = 438;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
  if (([v12 isEqualToNumber:v14] & 1) == 0)
  {
    v41 = v11;
    v42[0] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v33 = v10;
    [v7 setAttributes:v22 ofItemAtPath:v8 error:&v33];
    v23 = v33;

    v10 = v23;
  }

  if (v10)
  {
    v32 = a4;
    v24 = MEMORY[0x1E696ABC0];
    v39[0] = *MEMORY[0x1E696A578];
    v25 = MCLocalizedErrorFormat(@"ERROR_FAILED_TO_FIX_PERMISSIONS", v15, v16, v17, v18, v19, v20, v21, v8);
    v39[1] = *MEMORY[0x1E696AA08];
    v40[0] = v25;
    v40[1] = v10;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v27 = [v24 errorWithDomain:@"MCInternalErrorDomain" code:2 userInfo:v26];

    v28 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v36 = v8;
      v37 = 2114;
      v38 = v27;
      _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "Failed to fix permissions of file at path %{public}@. Error: %{public}@", buf, 0x16u);
    }

    if (v32)
    {
      v29 = v27;
      *v32 = v27;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

BOOL MCFixPermissionsOfSystemGroupContainerDirectoryAndContents(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a1;
  v5 = [v3 defaultManager];
  v6 = MCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM(v5, v4, a2);

  return v6;
}

BOOL MCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM(void *a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E695DF70] array];
  v35 = 0;
  if ([v5 fileExistsAtPath:v6 isDirectory:&v35] && (v35 & 1) != 0)
  {
    v34 = 0;
    v8 = MCFixPermissionOfSystemGroupContainerFileFM(v5, v6, 1, &v34);
    v9 = v34;
    if (!v8)
    {
      [v7 addObject:v9];
    }

    v10 = [v5 enumeratorAtPath:v6];
    v11 = objc_autoreleasePoolPush();
    v12 = [v10 nextObject];
    if (v12)
    {
      v13 = v12;
      do
      {
        v14 = [v6 stringByAppendingPathComponent:v13];
        buf[0] = 0;
        [v5 fileExistsAtPath:v14 isDirectory:buf];
        v33 = 0;
        v15 = MCFixPermissionOfSystemGroupContainerFileFM(v5, v14, buf[0], &v33);
        v16 = v33;
        if (!v15)
        {
          [v7 addObject:v16];
        }

        objc_autoreleasePoolPop(v11);
        v11 = objc_autoreleasePoolPush();
        v13 = [v10 nextObject];
      }

      while (v13);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v17 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v6;
      _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "Path %{public}@ does not refer to a directory.", buf, 0xCu);
    }

    v25 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v26 = MCLocalizedErrorFormat(@"ERROR_NOT_A_DIRECTORY_P_PATH", v18, v19, v20, v21, v22, v23, v24, v6);
    v41[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v10 = [v25 errorWithDomain:@"MCInternalErrorDomain" code:1 userInfo:v27];

    [v7 addObject:v10];
  }

  v28 = [v7 count];
  if (v28)
  {
    v29 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = v6;
      v38 = 2114;
      v39 = v7;
      _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "Failed to change ownership of directory and contents at %{public}@. Errors: %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v30 = v7;
      *a3 = v7;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v28 == 0;
}

uint64_t MCSafelyCopyItemAtPathToDestinationPath(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a2;
  v7 = a1;
  v8 = [v5 defaultManager];
  v9 = MCSafelyCopyItemAtPathToDestinationPathFM(v8, v7, v6, a3);

  return v9;
}

uint64_t MCSafelyCopyItemAtPathToDestinationPathFM(void *a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v7 fileExistsAtPath:v8])
  {
    if ((MCDestinationPathIsSafeFromSymlinkAttacks(v9) & 1) == 0)
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v45 = v9;
        _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_FAULT, "Destination path contains suspicious symlink: %{public}@", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v13 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v45 = v11;
      v46 = 2114;
      v47 = v12;
      _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ to %{public}@...", buf, 0x16u);
    }

    v43 = 0;
    v14 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:&v43];
    v15 = v43;
    if (v14)
    {
      v38 = a4;
      v16 = [v11 lastPathComponent];
      v17 = [v14 URLByAppendingPathComponent:v16];

      if (v17)
      {
        v42 = v15;
        v18 = [v7 copyItemAtURL:v11 toURL:v17 error:&v42];
        v19 = v42;

        if (!v18 || v19)
        {
          v32 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v45 = v11;
            v46 = 2114;
            v47 = v17;
            v48 = 2114;
            v49 = v19;
            _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, "Copying of item %{public}@ to temporary %{public}@ failed with error %{public}@", buf, 0x20u);
          }

          v22 = 0;
          v15 = v19;
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v20 = [v7 replaceItemAtURL:v12 withItemAtURL:v17 backupItemName:0 options:1 resultingItemURL:&v41 error:&v40];
          v37 = v41;
          v21 = v40;
          if (v21)
          {
            v22 = 0;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            v23 = [v17 absoluteString];
            v24 = [v7 fileExistsAtPath:v23];

            if (v24)
            {
              v39 = 0;
              v25 = [v7 removeItemAtURL:v17 error:&v39];
              v26 = v39;
              v27 = v26;
              if (!v25 || v26)
              {
                v28 = _MCLogObjects;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v45 = v17;
                  v46 = 2114;
                  v47 = v27;
                  _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "Removal of temporary item %{public}@ failed with error %{public}@", buf, 0x16u);
                }
              }
            }

            v15 = 0;
          }

          else
          {
            v15 = v21;
            v33 = _MCLogObjects;
            if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v45 = v12;
              v46 = 2114;
              v47 = v17;
              v48 = 2114;
              v49 = v15;
              _os_log_impl(&dword_1A795B000, v33, OS_LOG_TYPE_ERROR, "Replacement of item %{public}@ with %{public}@ failed with error %{public}@", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v31 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v11;
          _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_ERROR, "Failed to create temporary URL for moving item %{public}@", buf, 0xCu);
        }

        v22 = 0;
      }

      a4 = v38;
    }

    else
    {
      v30 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v45 = v11;
        _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "Failed to get temporary directory path for item %{public}@", buf, 0xCu);
      }

      v22 = 0;
    }

    if (a4 && v15)
    {
      v34 = v15;
      *a4 = v15;
    }
  }

  else
  {
    v29 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = v8;
      _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "Item does not exist at %{public}@", buf, 0xCu);
    }

    v22 = 0;
    v15 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v22;
}