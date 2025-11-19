@interface MBRestorePolicy
- (BOOL)_isUnencryptedLocal;
- (BOOL)_pluginsAllowForegroundRestoreFile:(id)a3;
- (BOOL)shouldAlwaysRestoreSystemSharedContainerDomain:(id)a3;
- (BOOL)shouldForegroundRestoreDomain:(id)a3;
- (BOOL)shouldRemoveAndRetryPlacingAssetsForRestorable:(id)a3;
- (BOOL)shouldRestoreFile:(id)a3 markFileAsSkipped:(BOOL *)a4 error:(id *)a5;
- (BOOL)shouldRestoreSystemFile:(id)a3;
- (MBRestorePolicy)initWithPersona:(id)a3 enginePolicyProvider:(id)a4 appManager:(id)a5 plugins:(id)a6 serviceRestoreMode:(id)a7 osBuildVersionOfBackup:(id)a8 shouldRestoreSystemFiles:(BOOL)a9 isRestoringPrimaryAccount:(BOOL)a10 shouldCreateMissingIntermediateDirectories:(BOOL)a11;
- (id)_localRootPathForDomain:(id)a3;
- (id)deprecated_destinationPathForiCloudRestorable:(id)a3 safeHarborDir:(id)a4;
- (id)deprecated_validateFile:(id)a3 debugContext:(id)a4;
- (id)deriveATCPolicy;
- (id)notifyPluginsEndedRestoreWithEngine:(id)a3 error:(id)a4;
- (id)notifyPluginsEndingRestoreWithEngine:(id)a3;
- (id)notifyPluginsPreparingRestoreWithEngine:(id)a3;
- (id)notifyPluginsStartingRestoreWithEngine:(id)a3;
- (id)restorePathForDriveRestorable:(id)a3;
- (id)restoreRootForDomain:(id)a3;
- (id)validateRestoreDomain:(id)a3 relativePath:(id)a4;
- (int)restoreType;
- (int64_t)restoreBehaviorForDomain:(id)a3 error:(id *)a4;
- (unint64_t)_enginePolicy;
- (unint64_t)foregroundStateForRestorable:(id)a3;
@end

@implementation MBRestorePolicy

- (MBRestorePolicy)initWithPersona:(id)a3 enginePolicyProvider:(id)a4 appManager:(id)a5 plugins:(id)a6 serviceRestoreMode:(id)a7 osBuildVersionOfBackup:(id)a8 shouldRestoreSystemFiles:(BOOL)a9 isRestoringPrimaryAccount:(BOOL)a10 shouldCreateMissingIntermediateDirectories:(BOOL)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v28 = a7;
  v22 = a8;
  if (!v18)
  {
    __assert_rtn("[MBRestorePolicy initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:]", "MBRestorePolicy.m", 48, "persona");
  }

  if (!v20)
  {
    __assert_rtn("[MBRestorePolicy initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:]", "MBRestorePolicy.m", 49, "appManager");
  }

  v23 = v22;
  v29.receiver = self;
  v29.super_class = MBRestorePolicy;
  v24 = [(MBRestorePolicy *)&v29 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_persona, a3);
    objc_storeWeak(&v25->_enginePolicyProvider, v19);
    v25->_enginePolicy = 0;
    objc_storeStrong(&v25->_appManager, a5);
    if (v21)
    {
      v26 = v21;
    }

    else
    {
      v26 = &__NSArray0__struct;
    }

    objc_storeStrong(&v25->_plugins, v26);
    objc_storeStrong(&v25->_serviceRestoreMode, a7);
    objc_storeStrong(&v25->_osBuildVersionOfBackup, a8);
    v25->_shouldRestoreSystemFiles = a9;
    v25->_isRestoringPrimaryAccount = a10;
    v25->_shouldCreateMissingIntermediateDirectories = a11;
  }

  return v25;
}

- (id)deriveATCPolicy
{
  v3 = [MBRestorePolicy alloc];
  persona = self->_persona;
  WeakRetained = objc_loadWeakRetained(&self->_enginePolicyProvider);
  BYTE2(v8) = 1;
  BYTE1(v8) = self->_isRestoringPrimaryAccount;
  LOBYTE(v8) = self->_shouldRestoreSystemFiles;
  v6 = [MBRestorePolicy initWithPersona:v3 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona plugins:WeakRetained serviceRestoreMode:self->_appManager osBuildVersionOfBackup:self->_plugins shouldRestoreSystemFiles:self->_serviceRestoreMode isRestoringPrimaryAccount:self->_osBuildVersionOfBackup shouldCreateMissingIntermediateDirectories:v8];

  return v6;
}

- (unint64_t)_enginePolicy
{
  result = self->_enginePolicy;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->_enginePolicyProvider);
    self->_enginePolicy = [WeakRetained enginePolicy];

    result = self->_enginePolicy;
    if (!result)
    {
      __assert_rtn("[MBRestorePolicy _enginePolicy]", "MBRestorePolicy.m", 83, "_enginePolicy");
    }
  }

  return result;
}

- (BOOL)_isUnencryptedLocal
{
  v3 = [(MBRestorePolicy *)self _isDriveEngine];
  if (v3)
  {
    if ([(MBRestorePolicy *)self _isEncrypted])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
    }
  }

  return v3;
}

- (int)restoreType
{
  serviceRestoreMode = self->_serviceRestoreMode;
  if (serviceRestoreMode && (v3 = [(MBServiceRestoreMode *)serviceRestoreMode type]- 1, v3 <= 6))
  {
    return dword_1002B9F10[v3];
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldForegroundRestoreDomain:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_domainNamesToForegroundInstall containsObject:v4]|| ![MBDomain isContainerizedName:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];
  }

  return v5;
}

- (unint64_t)foregroundStateForRestorable:(id)a3
{
  v8 = 0;
  v7 = 0;
  v3 = [(MBRestorePolicy *)self shouldRestoreFile:a3 markFileAsSkipped:&v8 error:&v7];
  v4 = v7;
  v5 = 0;
  if ((v3 & 1) == 0)
  {
    if (([MBError isError:v4 withCode:213]& 1) != 0)
    {
      v5 = 3;
    }

    else if (v8)
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }
  }

  return v5;
}

- (id)restoreRootForDomain:(id)a3
{
  v4 = a3;
  v5 = [(MBRestorePolicy *)self persona];
  v6 = [v4 rootPath];
  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type]== 6)
  {
    if ([v4 isBackupDomain])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restore-policy= Restoring BackupDomain for EDS persona in-place at %@", buf, 0xCu);
LABEL_11:
        _MBLog();
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([v4 isLegacyPerAppPlaceholderDomain])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restore-policy= Restoring legacy placeholder for EDS persona in-place at %@", buf, 0xCu);
        goto LABEL_11;
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type])
  {
LABEL_13:
    v9 = v6;
    goto LABEL_16;
  }

  if (![v4 shouldRestoreToSharedVolume])
  {
LABEL_14:
    v8 = [v5 userIncompleteRestoreDirectory];
    goto LABEL_15;
  }

  v8 = [v5 sharedIncompleteRestoreDirectory];
LABEL_15:
  v10 = v8;
  v9 = [v8 stringByAppendingPathComponent:v6];

LABEL_16:

  return v9;
}

- (id)restorePathForDriveRestorable:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBRestorePolicy restorePathForDriveRestorable:]", "MBRestorePolicy.m", 208, "restorable");
  }

  v5 = v4;
  v6 = [(MBRestorePolicy *)self persona];
  v7 = [v5 domain];
  if ([v7 shouldRestoreToSharedVolume])
  {
    [v6 sharedIncompleteRestoreDirectory];
  }

  else
  {
    [v6 userIncompleteRestoreDirectory];
  }
  v8 = ;
  v9 = [v5 absolutePath];
  v10 = [v8 stringByAppendingPathComponent:v9];

  return v10;
}

- (id)deprecated_destinationPathForiCloudRestorable:(id)a3 safeHarborDir:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type]== 6)
  {
    v8 = [v6 domain];
    if (([v8 isBackupDomain] & 1) != 0 || objc_msgSend(v8, "isLegacyPerAppPlaceholderDomain"))
    {
      v9 = [v6 absolutePath];
LABEL_15:

      goto LABEL_16;
    }

    v12 = [(MBRestorePolicy *)self persona];
    v10 = v12;
    goto LABEL_12;
  }

  if ([(MBRestorePolicy *)self _isForegroundRestore])
  {
    v8 = [(MBRestorePolicy *)self persona];
    v10 = [v6 domain];
    if ([v10 shouldRestoreToSharedVolume])
    {
      v11 = [v8 sharedIncompleteRestoreDirectory];
LABEL_13:
      v13 = v11;
      v14 = [v6 absolutePath];
      v9 = [v13 stringByAppendingPathComponent:v14];

      goto LABEL_14;
    }

    v12 = v8;
LABEL_12:
    v11 = [v12 userIncompleteRestoreDirectory];
    goto LABEL_13;
  }

  if ([v7 length])
  {
    v8 = [v7 stringByAppendingPathComponent:kMBSafeHarborDataDirName];
    v10 = [v6 relativePath];
    v9 = [v8 stringByAppendingPathComponent:v10];
LABEL_14:

    goto LABEL_15;
  }

  v9 = [v6 absolutePath];
LABEL_16:

  return v9;
}

- (BOOL)shouldRestoreSystemFile:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (([v5 isPlaceholderDomain] & 1) == 0 && (-[MBServiceRestoreMode type](self->_serviceRestoreMode, "type") != 6 || (objc_msgSend(v5, "isBackupDomain") & 1) == 0) && (!objc_msgSend(v5, "isSystemSharedContainerDomain") || !-[MBRestorePolicy shouldAlwaysRestoreSystemSharedContainerDomain:](self, "shouldAlwaysRestoreSystemSharedContainerDomain:", v5)))
  {
    v7 = [v5 relativePathsOfSystemFilesToAlwaysRestore];
    if ([v7 count])
    {
      v32 = v7;
      v8 = [v4 relativePath];
      v9 = [v8 pathComponents];

      v33 = v9;
      v10 = [v9 count];
      v11 = 0;
      do
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [v33 subarrayWithRange:{0, v11}];
        v14 = [NSString pathWithComponents:v13];

        v15 = [v5 relativePathsOfSystemFilesToAlwaysRestore];
        v16 = [v15 containsObject:v14];

        objc_autoreleasePoolPop(v12);
        if (v16)
        {

          v6 = 1;
          v7 = v32;
          goto LABEL_30;
        }

        ++v11;
      }

      while (v11 <= v10);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = v32;
      v17 = v32;
      v36 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v36)
      {
        v30 = self;
        v31 = v5;
        v18 = 0;
        obj = v17;
        v35 = *v39;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v39 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            v21 = [v20 pathComponents];
            v22 = [v21 count];
            v23 = 0;
            do
            {
              v24 = [v21 subarrayWithRange:{0, v23}];
              v25 = [NSString pathWithComponents:v24];

              v26 = [v4 relativePath];
              v27 = [v26 isEqualToString:v25];

              v18 |= v27;
              ++v23;
            }

            while (v23 <= v22);

            objc_autoreleasePoolPop(context);
          }

          v36 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v36);

        v5 = v31;
        v7 = v32;
        self = v30;
        if (v18)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if (([v5 isAppDomain] & 1) == 0 && !self->_shouldRestoreSystemFiles)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v4;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring system file: %@", buf, 0xCu);
        _MBLog();
      }

      v6 = 0;
      goto LABEL_30;
    }

LABEL_26:
    v6 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v6 = 1;
LABEL_31:

  return v6;
}

- (BOOL)shouldRestoreFile:(id)a3 markFileAsSkipped:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v8 domain];
  if (!v10)
  {
    __assert_rtn("[MBRestorePolicy shouldRestoreFile:markFileAsSkipped:error:]", "MBRestorePolicy.m", 294, "domain");
  }

  v11 = v10;
  v12 = [v10 rootPath];
  if ([v12 hasPrefix:@"/private"])
  {
    v13 = [v11 rootPath];
    v14 = [v13 hasPrefix:@"/private/var/PersonaVolumes"];

    if ((v14 & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring (invalid path prefix): %@", buf, 0xCu);
        _MBLog();
      }

      v16 = [v11 rootPath];
      v17 = [v11 rootPath];
      v18 = [MBError errorWithCode:205 path:v16 format:@"Domain %@ has an invalid root path: %@", v11, v17];
LABEL_9:

      goto LABEL_21;
    }
  }

  else
  {
  }

  v19 = [v11 rootPath];
  v20 = [v8 relativePath];
  v16 = [v19 stringByAppendingPathComponent:v20];

  if (strlen([v16 fileSystemRepresentation]) >= 0x3E6)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v11 name];
      *buf = 138412546;
      v74 = v22;
      v75 = 2112;
      v76 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring (file name too long): %@:%@", buf, 0x16u);

      v64 = [v11 name];
      v65 = v16;
      _MBLog();
    }

    if (a4)
    {
      *a4 = 1;
    }

    v18 = [MBError errorWithCode:107 path:v16 format:@"Cannot restore file with path name that is too long", v64, v65];
    goto LABEL_21;
  }

  v72 = 0;
  v23 = [(MBRestorePolicy *)self restoreBehaviorForFile:v8 debugContext:0 error:&v72];
  v24 = v72;
  v18 = v24;
  if (v23 == -1)
  {
LABEL_21:

    objc_autoreleasePoolPop(v9);
LABEL_22:
    if (a5)
    {
      v25 = v18;
      v26 = 0;
      *a5 = v18;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_25;
  }

  if (v23 == 1)
  {
    if (a4)
    {
      *a4 = 1;
    }

    goto LABEL_21;
  }

  v69 = v24;
  if (_os_feature_enabled_impl())
  {
    if ([(MBRestorePolicy *)self _isForegroundRestore])
    {
      v28 = [v8 domain];
      v29 = [v28 name];
      v30 = [v29 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

      if (v30)
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v8;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "=restore-policy= Not restoring in foreground because file is in LocalStorage domain: %@", buf, 0xCu);
          _MBLog();
        }

        v17 = [v8 relativePath];
        v18 = [MBError errorWithCode:213 path:v17 format:@"Not restoring in foreground because file is in LocalStorage domain"];

        goto LABEL_9;
      }
    }
  }

  v66 = v16;
  v67 = v9;
  v68 = a5;
  v70 = v8;
  v32 = [v8 relativePath];
  v33 = [v32 pathComponents];

  v71 = v33;
  v34 = [v33 count];
  v35 = 0;
  do
  {
    v36 = objc_autoreleasePoolPush();
    v37 = [v33 subarrayWithRange:{0, v35}];
    v38 = [NSString pathWithComponents:v37];

    v39 = [v11 relativePathsNotToRestore];
    v40 = [v39 containsObject:v38];

    if (v40)
    {
      a5 = v68;
      if (a4)
      {
        *a4 = 1;
      }

      v53 = MBGetDefaultLog();
      v8 = v70;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = v70;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring: %@", buf, 0xCu);
        _MBLog();
      }

      v52 = 1;
LABEL_67:

      objc_autoreleasePoolPop(v36);
      v26 = 0;
      v45 = v67;
      goto LABEL_68;
    }

    if (-[MBRestorePolicy _isForegroundRestore](self, "_isForegroundRestore") && ([v70 type] & 0xF000) == 0x8000)
    {
      v41 = [v11 relativePathsToBackgroundRestore];
      if ([v41 containsObject:v38])
      {
        shouldRestoreSystemFiles = self->_shouldRestoreSystemFiles;

        if (shouldRestoreSystemFiles)
        {
          v55 = MBGetDefaultLog();
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
          v8 = v70;
          if (v56)
          {
            *buf = 138412290;
            v74 = v70;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "=restore-policy= Ignoring file since it needs to be restored in the background: %@", buf, 0xCu);
            _MBLog();
          }

          v57 = [MBError errorWithCode:213 format:@"Domain policy requires file must be restored in the background"];

          v52 = 6;
          v69 = v57;
          a5 = v68;
          goto LABEL_67;
        }
      }

      else
      {
      }
    }

    if (![(MBRestorePolicy *)self isRestoringToSameDevice])
    {
      v43 = [v11 relativePathsNotToMigrate];
      v44 = [v43 containsObject:v38];

      if (v44)
      {
        v54 = MBGetDefaultLog();
        v8 = v70;
        a5 = v68;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v74 = v70;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because this is a migrate: %@", buf, 0xCu);
          _MBLog();
        }

        v52 = 1;
        if (a4)
        {
          *a4 = 1;
        }

        goto LABEL_67;
      }
    }

    objc_autoreleasePoolPop(v36);
    ++v35;
  }

  while (v35 <= v34);
  v8 = v70;
  a5 = v68;
  if ([(MBRestorePolicy *)self shouldRestoreSystemFile:v70])
  {
    v45 = v67;
    if (![(MBRestorePolicy *)self _isForegroundRestore])
    {
      goto LABEL_71;
    }

    if ([v11 isAppDomain])
    {
      appManager = self->_appManager;
      v47 = [v11 containerID];
      v48 = [(MBAppManager *)appManager appWithIdentifier:v47];

      if (([v48 isSystemApp] & 1) != 0 || (objc_msgSend(v11, "name"), v49 = objc_claimAutoreleasedReturnValue(), v50 = -[MBRestorePolicy shouldForegroundRestoreDomain:](self, "shouldForegroundRestoreDomain:", v49), v49, v50))
      {
        v51 = MBGetDefaultLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v70;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "=restore-policy= Restoring system app in the foreground: %@", buf, 0xCu);
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if ([v11 isLegacyPerAppPlaceholderDomain])
      {
        v51 = MBGetDefaultLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v70;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "=restore-policy= Restoring app placeholder file in the foreground: %@", buf, 0xCu);
LABEL_50:
          _MBLog();
        }

LABEL_51:
        v52 = 1;
        v26 = 1;
      }

      else
      {
        if ([v11 isPluginAppDomain])
        {
          v59 = MBGetDefaultLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = v70;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "=restore-policy= Restoring app plugin file in the background: %@", buf, 0xCu);
            v64 = v70;
            _MBLog();
          }

          v60 = @"App plug-in file must be restored in the background";
        }

        else
        {
          v61 = [v11 isGroupAppDomain];
          v62 = MBGetDefaultLog();
          v63 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
          if (v61)
          {
            if (v63)
            {
              *buf = 138412290;
              v74 = v70;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "=restore-policy= Restoring group container file in the background: %@", buf, 0xCu);
              v64 = v70;
              _MBLog();
            }

            v60 = @"Group container file must be restored in the background";
          }

          else
          {
            if (v63)
            {
              *buf = 138412290;
              v74 = v70;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "=restore-policy= Restoring app file in the background: %@", buf, 0xCu);
              v64 = v70;
              _MBLog();
            }

            v60 = @"App file must be restored in the background";
          }
        }

        [MBError errorWithCode:213 format:v60, v64];
        v26 = 0;
        v51 = v69;
        v69 = v52 = 6;
      }

      goto LABEL_68;
    }

    if (![(MBRestorePolicy *)self _pluginsAllowForegroundRestoreFile:v70])
    {
      v58 = [MBError errorWithCode:213 format:@"Plug-in requested file must be restored in the background"];

      v26 = 0;
      v52 = 6;
      v69 = v58;
    }

    else
    {
LABEL_71:
      v52 = 1;
      v26 = 1;
    }
  }

  else
  {
    v52 = 1;
    v45 = v67;
    v26 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

LABEL_68:

  objc_autoreleasePoolPop(v45);
  v18 = v69;
  if (v52 == 6)
  {
    goto LABEL_22;
  }

LABEL_25:

  return v26;
}

- (BOOL)_pluginsAllowForegroundRestoreFile:(id)a3
{
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_plugins;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v5)
  {
    v19 = 1;
    goto LABEL_33;
  }

  v6 = v5;
  v32 = v4;
  v7 = *v34;
  v8 = &selRef_setServiceDelegate_;
  v9 = &selRef_setServiceDelegate_;
  v10 = &selRef_setServiceDelegate_;
  while (2)
  {
    v11 = 0;
    v12 = v8[274];
    v13 = v9[243];
    v14 = v10[275];
    do
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v33 + 1) + 8 * v11);
      if (objc_opt_respondsToSelector())
      {
        v16 = [v32 absolutePath];
        v17 = [v15 shouldRestoreContentWithPolicy:self atPath:v16];

        if ((v17 & 1) == 0)
        {
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            Name = class_getName(v20);
            *buf = 136446466;
            v38 = Name;
            v39 = 2112;
            v4 = v32;
            v40 = v32;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);
            v22 = objc_opt_class();
            class_getName(v22);
            _MBLog();
          }

          else
          {
            v4 = v32;
          }

          goto LABEL_32;
        }
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v18 = 0;
          goto LABEL_18;
        }

LABEL_14:
        v18 = [MBFileInfo fileInfoWithRestorable:v32];
LABEL_15:
        if (([v15 shouldRestoreContentWithPolicy:self fileInfo:v18] & 1) == 0)
        {
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            v28 = class_getName(v27);
            *buf = 136446466;
            v38 = v28;
            v39 = 2112;
            v4 = v32;
            v40 = v32;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        goto LABEL_18;
      }

      v18 = [MBFileInfo fileInfoWithRestorable:v32];
      if ([v15 shouldBackgroundRestoreContentWithPolicy:self fileInfo:v18])
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v23 = objc_opt_class();
          v24 = class_getName(v23);
          *buf = 136446466;
          v38 = v24;
          v39 = 2112;
          v4 = v32;
          v40 = v32;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=restore-policy= Restoring system file in the background (requested by plugin %{public}s: %@", buf, 0x16u);
LABEL_28:
          v29 = objc_opt_class();
          class_getName(v29);
          _MBLog();
LABEL_30:

LABEL_32:
          v19 = 0;
          goto LABEL_33;
        }

LABEL_29:
        v4 = v32;
        goto LABEL_30;
      }

      if (objc_opt_respondsToSelector())
      {
        if (!v18)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_18:

      v11 = v11 + 1;
    }

    while (v6 != v11);
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    v8 = &selRef_setServiceDelegate_;
    v9 = &selRef_setServiceDelegate_;
    v10 = &selRef_setServiceDelegate_;
    if (v6)
    {
      continue;
    }

    break;
  }

  v19 = 1;
  v4 = v32;
LABEL_33:

  return v19;
}

- (int64_t)restoreBehaviorForDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 isPlaceholderDomain] & 1) != 0 || -[MBServiceRestoreMode type](self->_serviceRestoreMode, "type") == 6 && (objc_msgSend(v6, "isBackupDomain"))
  {
LABEL_2:
    v7 = 0;
    goto LABEL_54;
  }

  if (!self->_shouldRestoreSystemFiles && ([v6 isAppDomain] & 1) == 0)
  {
    v8 = [v6 relativePathsOfSystemFilesToAlwaysRestore];

    if (!v8)
    {
      if (![(MBRestorePolicy *)self shouldAlwaysRestoreSystemSharedContainerDomain:v6])
      {
        v11 = MBGetDefaultLog();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v34 = [v6 name];
        *buf = 138412290;
        v47 = v34;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring system domain: %@", buf, 0xCu);

        v13 = [v6 name];
        goto LABEL_12;
      }

      goto LABEL_2;
    }
  }

  if ([(MBRestorePolicy *)self _isDriveEngine])
  {
    v9 = [v6 containerID];
    v10 = [v9 isEqualToString:@"systemgroup.com.apple.mobilegestaltcache"];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        v7 = 1;
        goto LABEL_54;
      }

      v12 = [v6 name];
      *buf = 138543362;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring mobile gestalt cache: %{public}@", buf, 0xCu);

      v13 = [v6 name];
LABEL_12:
      _MBLog();

      goto LABEL_13;
    }
  }

  v14 = [v6 rootPath];
  if (([v14 hasPrefix:@"/private"] & 1) == 0)
  {

LABEL_20:
    cachedDomainRestoreBehaviors = self->_cachedDomainRestoreBehaviors;
    v20 = [v6 name];
    v21 = [(NSMutableDictionary *)cachedDomainRestoreBehaviors objectForKeyedSubscript:v20];

    if (v21)
    {
      v7 = [v21 integerValue];
LABEL_53:

      goto LABEL_54;
    }

    v22 = [(MBRestorePolicy *)self _localRootPathForDomain:v6];
    v23 = [NSURL fileURLWithPath:v22];

    v45 = 0;
    v44 = 0;
    v24 = [v23 getResourceValue:&v45 forKey:NSURLIsExcludedFromBackupKey error:&v44];
    v25 = v45;
    v26 = v44;
    if (v24 && [v25 BOOLValue])
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v6;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain (attribute set locally): %@", buf, 0xCu);
        _MBLog();
      }

      v28 = self->_cachedDomainRestoreBehaviors;
      v29 = [v6 name];
      [(NSMutableDictionary *)v28 setObject:&off_1003E0E10 forKeyedSubscript:v29];

      goto LABEL_44;
    }

    v30 = [(MBRestorePolicy *)self _isMegaBackup];
    if ([(MBRestorePolicy *)self _isUnencryptedLocal])
    {
      error = 0;
      propertyValueTypeRefPtr = 0;
      v31 = _kCFURLIsExcludedFromUnencryptedBackupKey;
      if (CFURLCopyResourcePropertyForKey(v23, _kCFURLIsExcludedFromUnencryptedBackupKey, &propertyValueTypeRefPtr, &error))
      {
        v32 = propertyValueTypeRefPtr;
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
          if (v32 == kCFBooleanTrue)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v47 = v6;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain from unencrypted iTunes backup (attribute set locally): %@", buf, 0xCu);
LABEL_42:
              _MBLog();
              goto LABEL_43;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_51;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        *buf = 138543618;
        v47 = v31;
        v48 = 2112;
        v49 = error;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
        v40 = v31;
        v41 = error;
        _MBLog();
      }
    }

    else
    {
      if (v30 & 1 | ![(MBRestorePolicy *)self _isCloudKitEngine])
      {
        goto LABEL_51;
      }

      error = 0;
      propertyValueTypeRefPtr = 0;
      v31 = _kCFURLIsExcludedFromCloudBackupKey;
      if (CFURLCopyResourcePropertyForKey(v23, _kCFURLIsExcludedFromCloudBackupKey, &propertyValueTypeRefPtr, &error))
      {
        v35 = propertyValueTypeRefPtr;
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
          if (v35 == kCFBooleanTrue)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v47 = v6;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain from iCloud (attribute set locally): %@", buf, 0xCu);
              goto LABEL_42;
            }

LABEL_43:

LABEL_44:
            v7 = 1;
LABEL_52:

            goto LABEL_53;
          }
        }

LABEL_51:
        v37 = self->_cachedDomainRestoreBehaviors;
        v38 = [v6 name];
        [(NSMutableDictionary *)v37 setObject:&off_1003E0E28 forKeyedSubscript:v38];

        v7 = 0;
        goto LABEL_52;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_51;
  }

  v15 = [v6 rootPath];
  v16 = [v15 hasPrefix:@"/private/var/PersonaVolumes"];

  if (v16)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    v17 = [v6 rootPath];
    v18 = [v6 rootPath];
    *a4 = [MBError errorWithCode:205 path:v17 format:@"Domain %@ has an invalid root path: %@", v6, v18];
  }

  v7 = -1;
LABEL_54:

  return v7;
}

- (id)_localRootPathForDomain:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_appManager)
  {
    goto LABEL_9;
  }

  if ([v4 isSystemContainerDomain])
  {
    appManager = self->_appManager;
    v7 = [v5 name];
    v8 = [MBDomain containerIDWithName:v7];
    v9 = [(MBAppManager *)appManager systemDataContainerWithIdentifier:v8];
    goto LABEL_6;
  }

  if (![v5 isSystemSharedContainerDomain])
  {
LABEL_9:
    v15 = [v5 rootPath];
    goto LABEL_12;
  }

  v10 = self->_appManager;
  v7 = [v5 name];
  v8 = [MBDomain containerIDWithName:v7];
  v9 = [(MBAppManager *)v10 systemSharedContainerWithIdentifier:v8];
LABEL_6:
  v11 = v9;

  if (v11 && ([v11 domain], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasRootPath"), v12, (v13 & 1) != 0))
  {
    v14 = [v11 domain];
    v15 = [v14 rootPath];
  }

  else
  {
    v15 = [v5 rootPath];
  }

LABEL_12:

  return v15;
}

- (id)deprecated_validateFile:(id)a3 debugContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 relativePath];
  valid = MBIsValidRelativePath();

  if ((valid & 1) == 0)
  {
    v12 = [v6 domain];
    v13 = [v12 name];
    v14 = [v6 relativePath];
    v15 = [MBError errorWithCode:205 format:@"File path is invalid: %@:%@", v13, v14];
LABEL_61:

    goto LABEL_62;
  }

  LODWORD(v10) = [(MBRestorePolicy *)self _isMegaBackup];
  v11 = [(MBRestorePolicy *)self _isDriveEngine];
  if ([(MBRestorePolicy *)self _isDriveEngine])
  {
    v48 = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
  }

  else
  {
    v48 = 0;
  }

  v16 = [(MBRestorePolicy *)self _isServiceEngine];
  v37 = [(MBRestorePolicy *)self _isDeviceTransferEngine];
  v12 = [v6 relativePath];
  v13 = [v6 domain];
  v14 = [v13 relativePathsToRestore];
  if ([v14 containsObject:v12])
  {
    v15 = 0;
    goto LABEL_61;
  }

  v34 = v7;
  v17 = v11 | v10;
  v18 = v16 & ((v11 | v10) ^ 1);
  v40 = v10;
  while (1)
  {
    if (v18)
    {
      v47 = [v6 domain];
      v11 = [v47 relativePathsToRestoreOnlyFromService];
      if ([v11 containsObject:v12])
      {
        v19 = 1;
        goto LABEL_20;
      }

      v42 = [v6 domain];
      v41 = [v42 relativePathsToBackupToDriveAndStandardAccount];
      if ([v41 containsObject:v12])
      {
        v19 = 1;
LABEL_19:

LABEL_20:
        if (v19)
        {
          goto LABEL_65;
        }

        goto LABEL_21;
      }
    }

    v20 = [v6 domain];
    if (![v20 isExternalConfig])
    {

      if (!v18)
      {

        goto LABEL_21;
      }

      v19 = 0;
      goto LABEL_19;
    }

    v21 = [v6 domain];
    v22 = [v21 hasExternalConfig];

    if (v18)
    {
      v19 = v22 ^ 1;
      LOBYTE(v10) = v40;
      goto LABEL_19;
    }

    LOBYTE(v10) = v40;
    if ((v22 & 1) == 0)
    {
LABEL_65:
      v15 = 0;
      v7 = v34;
      goto LABEL_62;
    }

LABEL_21:
    v23 = [v6 domain];
    v24 = [v23 relativePathsNotToBackup];
    if ([v24 containsObject:v12])
    {

      v30 = @"File path in set of paths not to back up: %@:%@";
      v31 = @"RestorePathInSetOfPathsNotToBackup";
      v7 = v34;
LABEL_60:
      [v7 setFlag:v31];
      v13 = [v6 domain];
      v14 = [v13 name];
      v32 = [v6 relativePath];
      v15 = [MBError errorWithCode:205 format:v30, v14, v32];

      goto LABEL_61;
    }

    if ((v17 & 1) == 0 || ([v6 domain], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "relativePathsNotToBackupToDrive"), v45 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v45, "containsObject:", v12) & 1) == 0))
    {
      if (v18)
      {
        v44 = [v6 domain];
        v43 = [v44 relativePathsNotToBackupToService];
        if ([v43 containsObject:v12])
        {
          v25 = 1;
          goto LABEL_48;
        }
      }

      if (v48)
      {
        v39 = [v6 domain];
        v38 = [v39 relativePathsNotToBackupToLocal];
        if ([v38 containsObject:v12])
        {
          v25 = 1;
          goto LABEL_47;
        }
      }

      if (v10)
      {
        v26 = [v6 domain];
        v27 = [v26 relativePathsNotToBackupInMegaBackup];
        v35 = v27;
        v36 = v26;
        if ([v27 containsObject:v12])
        {

          v25 = 1;
          goto LABEL_46;
        }

        if ((v37 & 1) == 0)
        {
          v25 = 0;
          goto LABEL_45;
        }
      }

      else if ((v37 & 1) == 0)
      {
        v25 = 0;
        goto LABEL_41;
      }

      v28 = [v6 domain];
      v10 = [v28 relativePathsNotToTransferDeviceToDevice];
      v25 = [v10 containsObject:v12];

      LOBYTE(v10) = v40;
      if ((v40 & 1) == 0)
      {
LABEL_41:
        if (v48)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }

LABEL_45:

LABEL_46:
      if (v48)
      {
LABEL_47:

        if ((v18 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_42:
      if (!v18)
      {
LABEL_49:
        if ((v17 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_48:

      goto LABEL_49;
    }

    v25 = 1;
LABEL_50:

LABEL_51:
    if (v25)
    {
      v7 = v34;
      v30 = @"File path in set of paths not to back up: %@:%@";
      v31 = @"RestorePathInSetOfPathsNotToBackup";
      goto LABEL_60;
    }

    if (![v12 length])
    {
      break;
    }

    v29 = [v12 stringByDeletingLastPathComponent];

    v13 = [v6 domain];
    v14 = [v13 relativePathsToRestore];
    v12 = v29;
    if ([v14 containsObject:v29])
    {
      v15 = 0;
      v12 = v29;
      v7 = v34;
      goto LABEL_61;
    }
  }

  v7 = v34;
  if (([v6 type] & 0xF000) != 0x4000 || objc_msgSend(v12, "length"))
  {
    v30 = @"File path not in set of paths to back up: %@:%@";
    v31 = @"RestorePathNotInSetOfPathsToBackup";
    goto LABEL_60;
  }

  v15 = 0;
LABEL_62:

  return v15;
}

- (id)validateRestoreDomain:(id)a3 relativePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 rootPath];
  if ([v8 hasPrefix:@"/private"])
  {
    v9 = [v6 rootPath];
    v10 = [v9 hasPrefix:@"/private/var/PersonaVolumes"];

    if ((v10 & 1) == 0)
    {
      v11 = [v6 rootPath];
      v12 = [v6 rootPath];
      v13 = [MBError errorWithCode:205 path:v11 format:@"Domain %@ has an invalid root path: %@", v6, v12];

      goto LABEL_24;
    }
  }

  else
  {
  }

  v14 = [v6 rootPath];
  v15 = [v14 stringByAppendingPathComponent:v7];

  if (strlen([v15 fileSystemRepresentation]) >= 0x3E6)
  {
    v13 = [MBError errorWithCode:205 path:v15 format:@"Cannot restore file with path name that is too long"];
    goto LABEL_23;
  }

  v16 = [v7 stringByDeletingLastPathComponent];

  if (![v16 length])
  {
    v13 = 0;
    v7 = v16;
    goto LABEL_23;
  }

  v7 = v16;
  while (1)
  {
    v17 = [(MBRestorePolicy *)self persona];
    v18 = sub_100150D7C(v6, v17);
    v19 = [v18 stringByAppendingPathComponent:v7];

    v30 = 0;
    v29 = 0;
    [v19 mb_splitIntoBase:&v30 andRelativePath:&v29];
    memset(&v28, 0, sizeof(v28));
    v20 = fstatat(v30, v29, &v28, 32);
    v21 = *__error();
    if ((v30 & 0x80000000) == 0)
    {
      close(v30);
    }

    if (v20)
    {
      break;
    }

    if ((~v28.st_mode & 0xA000) == 0)
    {
      v13 = [MBError errorWithErrno:v21 code:205 path:v19 format:@"Restore path parent directory is a symlink"];
      goto LABEL_22;
    }

LABEL_15:
    v22 = [v7 stringByDeletingLastPathComponent];

    v7 = v22;
    if (![v22 length])
    {
      v13 = 0;
      v7 = v22;
      goto LABEL_23;
    }
  }

  if (v21 == 2)
  {
    goto LABEL_15;
  }

  v13 = [MBError posixErrorWithPath:v19 format:@"lstat error"];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v25 = *__error();
    *buf = 138412546;
    v32 = v19;
    v33 = 1024;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=restore-policy= lstat failed at %@: %{errno}d", buf, 0x12u);
    v27 = *__error();
    _MBLog();
  }

LABEL_22:
LABEL_23:

LABEL_24:

  return v13;
}

- (BOOL)shouldAlwaysRestoreSystemSharedContainerDomain:(id)a3
{
  v3 = a3;
  if ([v3 isSystemSharedContainerDomain])
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:@"SysSharedContainerDomain-systemgroup.com.apple.configurationprofiles"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldRemoveAndRetryPlacingAssetsForRestorable:(id)a3
{
  v4 = a3;
  v5 = [(MBRestorePolicy *)self serviceRestoreMode];
  v9 = 1;
  if (([v5 isBackgroundFiles] & 1) != 0 || objc_msgSend(v5, "isBackgroundFile"))
  {
    v6 = [v4 domain];
    v7 = [v6 name];
    v8 = [v7 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

    if (v8)
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)notifyPluginsStartingRestoreWithEngine:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_plugins objectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151AC8;
  v9[3] = &unk_1003BFCB8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = MBNotifyPluginsBlock(v6, v5, "startingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsPreparingRestoreWithEngine:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_plugins objectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151BB0;
  v9[3] = &unk_1003BFCB8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = MBNotifyPluginsBlock(v6, v5, "preparingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsEndingRestoreWithEngine:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_plugins reverseObjectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151C98;
  v9[3] = &unk_1003BFCB8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = MBNotifyPluginsBlock(v6, v5, "endingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsEndedRestoreWithEngine:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSArray *)self->_plugins reverseObjectEnumerator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100151DAC;
  v13[3] = &unk_1003BFCE0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = MBNotifyPluginsBlock(v10, v8, "endedRestoreWithPolicy:engine:error:", v13);

  return v11;
}

@end