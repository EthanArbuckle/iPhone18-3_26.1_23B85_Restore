@interface MBSiriPlugin
- (BOOL)_deviceIsNonAopDevice;
- (id)startingBackupWithEngine:(id)engine;
- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBSiriPlugin

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy isDeviceTransferEngine] && -[MBSiriPlugin _deviceIsNonAopDevice](self, "_deviceIsNonAopDevice"))
  {
    domainManager = [engineCopy domainManager];
    v6 = [domainManager domainForName:@"HomeDomain"];

    if (!v6)
    {
      __assert_rtn("[MBSiriPlugin startingBackupWithEngine:]", "MBSiriPlugin.m", 22, "homeDomain");
    }

    v7 = [v6 standardizedRelativePathFor:@"Library/VoiceTrigger/SAT"];
    relativePathsToOnlyBackupEncrypted = [v6 relativePathsToOnlyBackupEncrypted];
    v9 = [relativePathsToOnlyBackupEncrypted containsObject:v7];

    if (v9)
    {
      relativePathsToOnlyBackupEncrypted2 = [v6 relativePathsToOnlyBackupEncrypted];
      v11 = [relativePathsToOnlyBackupEncrypted2 mutableCopy];

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsToOnlyBackupEncrypted", buf, 0x16u);
        v23 = v6;
        v25 = v7;
        _MBLog();
      }

      [v11 removeObject:v7];
      [v6 setRelativePathsToOnlyBackupEncrypted:v11];
    }

    relativePathsToRestoreOnly = [v6 relativePathsToRestoreOnly];
    v14 = [relativePathsToRestoreOnly containsObject:v7];

    if (v14)
    {
      relativePathsToRestoreOnly2 = [v6 relativePathsToRestoreOnly];
      v16 = [relativePathsToRestoreOnly2 mutableCopy];

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsToRestoreOnly", buf, 0x16u);
        v24 = v6;
        v26 = v7;
        _MBLog();
      }

      [v16 removeObject:v7];
      [v6 setRelativePathsToRestoreOnly:v16];
    }

    relativePathsNotToRestore = [v6 relativePathsNotToRestore];

    if (relativePathsNotToRestore)
    {
      relativePathsNotToRestore2 = [v6 relativePathsNotToRestore];
      v20 = [relativePathsNotToRestore2 mutableCopy];
    }

    else
    {
      v20 = objc_opt_new();
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v6;
      v29 = 2114;
      v30 = @"Library/VoiceTrigger/SAT";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsNotToRestore", buf, 0x16u);
      _MBLog();
    }

    [v20 addObject:@"Library/VoiceTrigger/SAT"];
    [v6 setRelativePathsNotToRestore:v20];
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  if ([engineCopy isDeviceTransferEngine])
  {
    domainManager = [engineCopy domainManager];
    v8 = [domainManager domainForName:@"HomeDomain"];

    if (!v8)
    {
      __assert_rtn("[MBSiriPlugin startingRestoreWithPolicy:engine:]", "MBSiriPlugin.m", 56, "homeDomain");
    }

    relativePathsNotToRemoveIfNotRestored = [v8 relativePathsNotToRemoveIfNotRestored];

    if (relativePathsNotToRemoveIfNotRestored)
    {
      relativePathsNotToRemoveIfNotRestored2 = [v8 relativePathsNotToRemoveIfNotRestored];
      v11 = [relativePathsNotToRemoveIfNotRestored2 mutableCopy];
    }

    else
    {
      v11 = objc_opt_new();
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = @"Library/VoiceTrigger/SAT";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsNotToRemoveIfNotRestored", buf, 0x16u);
      _MBLog();
    }

    [v11 addObject:@"Library/VoiceTrigger/SAT"];
    [v8 setRelativePathsNotToRemoveIfNotRestored:v11];
  }

  return 0;
}

- (BOOL)_deviceIsNonAopDevice
{
  v2 = [[NSSet alloc] initWithObjects:{@"iPhone5, 1", @"iPhone5, 2", @"iPhone5, 3", @"iPhone5, 4", @"iPhone6, 1", @"iPhone6, 2", @"iPhone7, 1", @"iPhone7, 2", @"iPad3, 4", @"iPad3, 5", @"iPad3, 6", @"iPad4, 1", @"iPad4, 2", @"iPad4, 3", @"iPad4, 4", @"iPad4, 5", @"iPad4, 6", @"iPad4, 7", @"iPad4, 8", @"iPad4, 9", @"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad6, 7", @"iPad6, 8", @"iPad6, 11", @"iPad6, 12", 0}];
  v3 = MBProductType();
  v4 = [v2 containsObject:v3];

  return v4;
}

@end