@interface MBKeyboardPlugin
- (id)startingBackupWithEngine:(id)engine;
- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine;
- (void)_addRelativePathsToPathsToBackupAndRestore:(id)restore forDomain:(id)domain;
- (void)_removeRelativePathsFromPathsNotToBackup:(id)backup forDomain:(id)domain;
- (void)_removeRelativePathsFromPathsNotToRestore:(id)restore forDomain:(id)domain;
- (void)_updatePathsForKeyboardDomainWithEngine:(id)engine;
@end

@implementation MBKeyboardPlugin

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    if ([engineCopy isDeviceTransferEngine])
    {
      [(MBKeyboardPlugin *)self _updatePathsForKeyboardDomainWithEngine:engineCopy];
    }
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy isDeviceTransferEngine])
  {
    [(MBKeyboardPlugin *)self _updatePathsForKeyboardDomainWithEngine:engineCopy];
  }

  return 0;
}

- (void)_removeRelativePathsFromPathsNotToBackup:(id)backup forDomain:(id)domain
{
  backupCopy = backup;
  domainCopy = domain;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [backupCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(backupCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [domainCopy standardizedRelativePathFor:{v11, v18, v19}];
        relativePathsNotToBackup = [domainCopy relativePathsNotToBackup];
        v14 = [relativePathsNotToBackup containsObject:v12];

        if (v14)
        {
          relativePathsNotToBackup2 = [domainCopy relativePathsNotToBackup];
          v16 = [relativePathsNotToBackup2 mutableCopy];

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v25 = domainCopy;
            v26 = 2114;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
            v18 = domainCopy;
            v19 = v11;
            _MBLog();
          }

          [v16 removeObject:v12];
          [domainCopy setRelativePathsNotToBackup:v16];
        }
      }

      v8 = [backupCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)_removeRelativePathsFromPathsNotToRestore:(id)restore forDomain:(id)domain
{
  restoreCopy = restore;
  domainCopy = domain;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [restoreCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(restoreCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [domainCopy standardizedRelativePathFor:{v11, v18, v19}];
        relativePathsNotToRestore = [domainCopy relativePathsNotToRestore];
        v14 = [relativePathsNotToRestore containsObject:v12];

        if (v14)
        {
          relativePathsNotToRestore2 = [domainCopy relativePathsNotToRestore];
          v16 = [relativePathsNotToRestore2 mutableCopy];

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v25 = domainCopy;
            v26 = 2114;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %{public}@ from relativePathsNotToRestore", buf, 0x16u);
            v18 = domainCopy;
            v19 = v11;
            _MBLog();
          }

          [v16 removeObject:v12];
          [domainCopy setRelativePathsNotToRestore:v16];
        }
      }

      v8 = [restoreCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)_addRelativePathsToPathsToBackupAndRestore:(id)restore forDomain:(id)domain
{
  restoreCopy = restore;
  domainCopy = domain;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [restoreCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(restoreCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        relativePathsToBackupAndRestore = [domainCopy relativePathsToBackupAndRestore];

        if (relativePathsToBackupAndRestore)
        {
          relativePathsToBackupAndRestore2 = [domainCopy relativePathsToBackupAndRestore];
          v14 = [relativePathsToBackupAndRestore2 mutableCopy];
        }

        else
        {
          v14 = objc_opt_new();
        }

        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v23 = domainCopy;
          v24 = 2114;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
          v16 = domainCopy;
          v17 = v11;
          _MBLog();
        }

        [v14 addObject:@"Library/Keyboard"];
        [domainCopy setRelativePathsToBackupAndRestore:v14];
      }

      v8 = [restoreCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)_updatePathsForKeyboardDomainWithEngine:(id)engine
{
  engineCopy = engine;
  domainManager = [engineCopy domainManager];
  v6 = [domainManager domainForName:@"KeyboardDomain"];

  if (!v6)
  {
    __assert_rtn("[MBKeyboardPlugin _updatePathsForKeyboardDomainWithEngine:]", "MBKeyboardPlugin.m", 85, "keyboardDomain");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing all paths from relativePathsNotToBackupToDrive", buf, 0xCu);
    _MBLog();
  }

  v8 = objc_opt_new();
  [v6 setRelativePathsNotToBackupToDrive:v8];

  v9 = [NSMutableArray arrayWithObjects:@"Library/Keyboard", @"Library/KeyboardServices/TextReplacements.db", @"Library/KeyboardServices/TextReplacements.db-wal", @"Library/KeyboardServices/TextReplacements.db-shm", @"Library/Keyboard/CoreDataUbiquitySupport", 0];
  [(MBKeyboardPlugin *)self _removeRelativePathsFromPathsNotToBackup:v9 forDomain:v6];
  [(MBKeyboardPlugin *)self _removeRelativePathsFromPathsNotToRestore:v9 forDomain:v6];
  [v9 removeObject:@"Library/Keyboard/CoreDataUbiquitySupport"];
  [(MBKeyboardPlugin *)self _addRelativePathsToPathsToBackupAndRestore:v9 forDomain:v6];
  relativePathsToIgnoreExclusionsForDrive = [v6 relativePathsToIgnoreExclusionsForDrive];

  if (relativePathsToIgnoreExclusionsForDrive)
  {
    relativePathsToIgnoreExclusionsForDrive2 = [v6 relativePathsToIgnoreExclusionsForDrive];
    v12 = [relativePathsToIgnoreExclusionsForDrive2 mutableCopy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = @"Library/Keyboard";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToIgnoreExclusionsForDrive", buf, 0x16u);
    _MBLog();
  }

  [v12 addObject:@"Library/Keyboard"];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = @"Library/KeyboardServices";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %{public}@ to relativePathsToIgnoreExclusionsForDrive", buf, 0x16u);
    _MBLog();
  }

  [v12 addObject:@"Library/KeyboardServices"];
  [v6 setRelativePathsToIgnoreExclusionsForDrive:v12];
}

@end