@interface MBScreenTimePlugin
- (id)startingBackupWithEngine:(id)a3;
- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (void)_updatePathsForHomeDomainWithEngine:(id)a3;
@end

@implementation MBScreenTimePlugin

- (id)startingBackupWithEngine:(id)a3
{
  v4 = a3;
  if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    if ([v4 isDeviceTransferEngine])
    {
      [(MBScreenTimePlugin *)self _updatePathsForHomeDomainWithEngine:v4];
    }
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v5 = a4;
  if ([v5 isDeviceTransferEngine])
  {
    [(MBScreenTimePlugin *)self _updatePathsForHomeDomainWithEngine:v5];
  }

  return 0;
}

- (void)_updatePathsForHomeDomainWithEngine:(id)a3
{
  v3 = a3;
  v4 = [v3 domainManager];
  v5 = [v4 domainForName:@"HomeDomain"];

  if (!v5)
  {
    __assert_rtn("[MBScreenTimePlugin _updatePathsForHomeDomainWithEngine:]", "MBScreenTimePlugin.m", 43, "homeDomain");
  }

  v6 = [v5 standardizedRelativePathFor:@"Library/Application Support/com.apple.remotemanagementd"];
  v7 = [v5 relativePathsNotToBackup];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = [v5 relativePathsNotToBackup];
    v10 = [v9 mutableCopy];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = v5;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
      v20 = v5;
      v21 = v6;
      _MBLog();
    }

    [v10 removeObject:v6];
    [v5 setRelativePathsNotToBackup:v10];
  }

  v12 = [v5 relativePathsToBackupAndRestore];

  if (v12)
  {
    v13 = [v5 relativePathsToBackupAndRestore];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = @"Library/Application Support/com.apple.remotemanagementd";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
    _MBLog();
  }

  [v14 addObject:@"Library/Application Support/com.apple.remotemanagementd"];
  [v5 setRelativePathsToBackupAndRestore:v14];
  v16 = [v5 relativePathsToIgnoreExclusionsForDrive];

  if (v16)
  {
    v17 = [v5 relativePathsToIgnoreExclusionsForDrive];
    v18 = [v17 mutableCopy];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = @"Library/Application Support/com.apple.remotemanagementd";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToIgnoreExclusionsForDrive", buf, 0x16u);
    _MBLog();
  }

  [v18 addObject:@"Library/Application Support/com.apple.remotemanagementd"];
  [v5 setRelativePathsToIgnoreExclusionsForDrive:v18];
}

@end