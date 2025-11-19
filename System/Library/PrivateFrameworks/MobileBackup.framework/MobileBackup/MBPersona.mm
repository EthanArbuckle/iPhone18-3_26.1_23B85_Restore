@interface MBPersona
+ (Class)personaClass;
+ (id)personaWithAttributes:(id)a3 volumeMountPoint:(id)a4;
+ (id)personaWithUMPersona:(id)a3 error:(id *)a4;
- (BOOL)shouldRestoreToSharedVolume;
- (MBPersona)initWithPersonaAttributes:(id)a3 volumeMountPoint:(id)a4;
- (MBPersona)initWithUMPersona:(id)a3 error:(id *)a4;
- (NSDictionary)restoreDepotRootsByVolume;
- (NSSet)volumesToBackUp;
- (NSString)appPlaceholderArchiveDirectory;
- (NSString)cacheDirectory;
- (NSString)demotedAppsPlistPath;
- (NSString)keyBagValidationStatePlistPath;
- (NSString)l28BackupTelemetryPlistPath;
- (NSString)personaName;
- (NSString)placeholderRestoreDirectory;
- (NSString)preferencesDirectory;
- (NSString)restoreKeyBagsPath;
- (NSString)restoreOperationLogPath;
- (NSString)restoreSnapshotsDatabaseDirectory;
- (NSString)skippedFileRecordsPlistPath;
- (NSString)snapshotDatabaseDirectory;
- (NSString)sqliteCopyDirectory;
- (NSString)systemContainersVolumeMountPoint;
- (NSString)systemDataContainerRestoreDirectory;
- (NSString)systemSharedDataContainerRestoreDirectory;
- (NSString)userIncompleteRestoreDirectory;
- (NSString)userRestoreDirectory;
- (NSString)volumeMapPlistPath;
- (_MBUser)user;
- (id)_userRestorePrefetchDirectory;
- (id)description;
- (id)restorePrefetchDirectories;
- (id)restorePrefetchDirectoryForDomain:(id)a3;
- (int64_t)accountType;
- (void)removeRestoreKeybags;
@end

@implementation MBPersona

- (NSSet)volumesToBackUp
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_volumesToBackUp)
  {
    if (-[MBPersona isPersonalPersona](v2, "isPersonalPersona") && (-[MBPersona user](v2, "user"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isPrimaryUser], v3, v4))
    {
      v5 = MEMORY[0x1E695DFD8];
      v6 = [(MBPersona *)v2 volumeMountPoint];
      v7 = [v5 setWithObjects:{v6, @"/private/var", 0}];
    }

    else
    {
      v8 = MEMORY[0x1E695DFD8];
      v6 = [(MBPersona *)v2 volumeMountPoint];
      v7 = [v8 setWithObjects:{v6, 0}];
    }

    volumesToBackUp = v2->_volumesToBackUp;
    v2->_volumesToBackUp = v7;
  }

  objc_sync_exit(v2);

  v10 = v2->_volumesToBackUp;

  return v10;
}

- (_MBUser)user
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_user;
  if (!v3)
  {
    v3 = +[_MBUser currentUser];
    objc_storeStrong(&v2->_user, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MBPersona user];
  }

  return v3;
}

+ (Class)personaClass
{
  v3 = _personaClass;
  if (_personaClass)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (id)personaWithAttributes:(id)a3 volumeMountPoint:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(+[MBPersona personaClass](MBPersona "personaClass"))];

  return v7;
}

+ (id)personaWithUMPersona:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(+[MBPersona personaClass](MBPersona "personaClass"))];

  return v6;
}

- (MBPersona)initWithPersonaAttributes:(id)a3 volumeMountPoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MBPersona initWithPersonaAttributes:volumeMountPoint:];
  }

  v8 = v7;
  v9 = [v6 userPersonaUniqueString];
  v10 = -[MBPersona initWithPersonaIdentifier:userPersonaType:dataSeparatedPersona:volumeMountPoint:](self, "initWithPersonaIdentifier:userPersonaType:dataSeparatedPersona:volumeMountPoint:", v9, [v6 userPersonaType], objc_msgSend(v6, "isDataSeparatedPersona"), v8);

  return v10;
}

- (MBPersona)initWithUMPersona:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [MBPersona initWithUMPersona:error:];
  }

  if (!a4)
  {
    [MBPersona initWithUMPersona:error:];
  }

  v7 = v6;
  v8 = [v6 userPersonaUniqueString];
  if (v8)
  {
    v9 = v8;
    if ([v7 isPersonalPersona])
    {
      v10 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:v9];
      if (v10)
      {
        v11 = v10;
        if (([(__CFString *)v10 isPersonalPersona]& 1) == 0)
        {
          [MBPersona initWithUMPersona:error:];
        }

        v12 = v9;
        v9 = @"/private/var/mobile";
LABEL_20:
        v22 = [(MBPersona *)self initWithPersonaAttributes:v11 volumeMountPoint:v9];
        v40 = v11;
        self = v9;
        v11 = v12;
        v9 = v22;
LABEL_30:

        self = v9;
        goto LABEL_31;
      }

      v11 = @"/private/var/mobile";
      goto LABEL_22;
    }

    if (([v7 isDefaultPersona] & 1) != 0 || objc_msgSend(v7, "isSystemPersona"))
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v7 userPersonaNickName];
        *buf = 138543874;
        v82 = v9;
        v83 = 2112;
        v84 = v24;
        v85 = 2048;
        v86 = [v7 userPersonaType];
        _os_log_impl(&dword_1DEB5D000, v23, OS_LOG_TYPE_DEBUG, "Using the personal persona for persona %{public}@ %@ (%ld)", buf, 0x20u);

        v79 = [v7 userPersonaNickName];
        v80 = [v7 userPersonaType];
        _MBLog(@"Db", "Using the personal persona for persona %{public}@ %@ (%ld)", v25, v26, v27, v28, v29, v30, v9);
      }

      v11 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];

      if (v11)
      {
        if (([(__CFString *)v11 isPersonalPersona]& 1) == 0)
        {
          [MBPersona initWithUMPersona:error:];
        }

        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v7 userPersonaNickName];
          v33 = [v7 userPersonaType];
          *buf = 138543874;
          v82 = v11;
          v83 = 2112;
          v84 = v32;
          v85 = 2048;
          v86 = v33;
          _os_log_impl(&dword_1DEB5D000, v31, OS_LOG_TYPE_INFO, "Using the attributes for personal persona: %{public}@ instead of %@ (%ld)", buf, 0x20u);

          v79 = [v7 userPersonaNickName];
          v80 = [v7 userPersonaType];
          _MBLog(@"I ", "Using the attributes for personal persona: %{public}@ instead of %@ (%ld)", v34, v35, v36, v37, v38, v39, v11);
        }

        v12 = [(__CFString *)v11 userPersonaUniqueString];
        v9 = @"/private/var/mobile";
        if (v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:v9];
      if (!v11)
      {
LABEL_22:
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = [v7 userPersonaNickName];
          *buf = 138543874;
          v82 = v9;
          v83 = 2112;
          v84 = v42;
          v85 = 2048;
          v86 = [v7 userPersonaType];
          _os_log_impl(&dword_1DEB5D000, v41, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for persona %{public}@ %@ (%ld)", buf, 0x20u);

          v79 = [v7 userPersonaNickName];
          v80 = [v7 userPersonaType];
          _MBLog(@"E ", "Failed to fetch the attributes for persona %{public}@ %@ (%ld)", v43, v44, v45, v46, v47, v48, v9);
        }

        v40 = [v7 userPersonaNickName];
        [MBError errorWithCode:1 format:@"nil persona attributes for %@ persona", v40, v79, v80];
LABEL_29:
        *a4 = v22 = 0;
        goto LABEL_30;
      }

      v61 = MBGetDefaultLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v82 = v9;
        v83 = 2114;
        v84 = v11;
        _os_log_impl(&dword_1DEB5D000, v61, OS_LOG_TYPE_INFO, "Fetched persona attributes for persona %{public}@: %{public}@", buf, 0x16u);
        v79 = v11;
        _MBLog(@"I ", "Fetched persona attributes for persona %{public}@: %{public}@", v62, v63, v64, v65, v66, v67, v9);
      }

      v12 = [(__CFString *)v11 userPersonaUniqueString];

      v68 = [(__CFString *)v11 personaLayoutPathURL];
      v9 = [v68 path];

      if (v12)
      {
        if (!v9)
        {
          v69 = MBGetDefaultLog();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 = [v7 userPersonaNickName];
            v71 = [v7 userPersonaType];
            *buf = 138543618;
            v82 = v70;
            v83 = 2048;
            v84 = v71;
            _os_log_impl(&dword_1DEB5D000, v69, OS_LOG_TYPE_ERROR, "nil volumeMountPoint for %{public}@ persona (%ld)", buf, 0x16u);

            v72 = [v7 userPersonaNickName];
            [v7 userPersonaType];
            _MBLog(@"E ", "nil volumeMountPoint for %{public}@ persona (%ld)", v73, v74, v75, v76, v77, v78, v72);
          }

          v40 = [v7 userPersonaNickName];
          [MBError errorWithCode:1 format:@"nil volume mount point for %@ persona", v40];
          *a4 = v22 = 0;
          v9 = v12;
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

    v49 = MBGetDefaultLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [v7 userPersonaNickName];
      v51 = [v7 userPersonaType];
      *buf = 138543618;
      v82 = v50;
      v83 = 2048;
      v84 = v51;
      _os_log_impl(&dword_1DEB5D000, v49, OS_LOG_TYPE_ERROR, "nil personaIdentifier for %{public}@ persona (%ld)", buf, 0x16u);

      v52 = [v7 userPersonaNickName];
      v79 = [v7 userPersonaType];
      _MBLog(@"E ", "nil personaIdentifier for %{public}@ persona (%ld)", v53, v54, v55, v56, v57, v58, v52);
    }

    v40 = [v7 userPersonaNickName];
    [MBError errorWithCode:1 format:@"nil persona identifier for %@ persona", v40, v79, v80];
    goto LABEL_29;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v7 userPersonaNickName];
    *buf = 138543362;
    v82 = v14;
    _os_log_impl(&dword_1DEB5D000, v13, OS_LOG_TYPE_ERROR, "nil personaIdentifier for %{public}@ persona", buf, 0xCu);

    v15 = [v7 userPersonaNickName];
    _MBLog(@"E ", "nil personaIdentifier for %{public}@ persona", v16, v17, v18, v19, v20, v21, v15);
  }

  v11 = [v7 userPersonaNickName];
  [MBError errorWithCode:1 format:@"nil persona identifier for %@ persona", v11];
  *a4 = v22 = 0;
LABEL_31:

  v59 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  personaIdentifier = self->_personaIdentifier;
  v7 = [(MBPersona *)self user];
  v8 = [v3 stringWithFormat:@"<%s: %p id=%@, user=%@>", Name, self, personaIdentifier, v7];;

  return v8;
}

- (NSString)personaName
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"Personal";
  }

  else if ([(MBPersona *)self isEnterprisePersona])
  {
    v3 = @"EDS";
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(MBPersona *)self personaIdentifier];
    v3 = [v4 stringWithFormat:@"UNEXPECTED %@", v5];
  }

  return v3;
}

- (BOOL)shouldRestoreToSharedVolume
{
  v3 = [(MBPersona *)self isPersonalPersona];
  if (v3)
  {
    v4 = [(MBPersona *)self user];
    v5 = [v4 isPrimaryUser];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (NSString)cacheDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = MBGetCacheDir();
  }

  else
  {
    v4 = [(MBPersona *)self volumeMountPoint];
    v3 = [v4 stringByAppendingPathComponent:@"Backup/Caches"];
  }

  if (!v3)
  {
    [MBPersona cacheDirectory];
  }

  return v3;
}

- (NSString)preferencesDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Preferences";
  }

  else
  {
    v4 = [(MBPersona *)self volumeMountPoint];
    v3 = [v4 stringByAppendingPathComponent:@"Backup/Preferences"];

    if (!v3)
    {
      [MBPersona preferencesDirectory];
    }
  }

  return v3;
}

- (NSString)sqliteCopyDirectory
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"sqlcache"];

  if (!v3)
  {
    [MBPersona sqliteCopyDirectory];
  }

  return v3;
}

- (NSString)appPlaceholderArchiveDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Caches/Backup/placeholders";
  }

  else
  {
    v4 = [(MBPersona *)self volumeMountPoint];
    v3 = [v4 stringByAppendingPathComponent:@"Backup/Caches/placeholders"];

    if (!v3)
    {
      [MBPersona appPlaceholderArchiveDirectory];
    }
  }

  return v3;
}

- (NSString)userRestoreDirectory
{
  v3 = [(MBPersona *)self isPersonalPersona];
  v4 = [(MBPersona *)self volumeMountPoint];
  v5 = v4;
  if (v3)
  {
    v6 = @"backup";
  }

  else
  {
    v6 = @"Backup/backup";
  }

  v7 = [v4 stringByAppendingPathComponent:v6];

  if (!v7)
  {
    [MBPersona userRestoreDirectory];
  }

  return v7;
}

- (NSString)userIncompleteRestoreDirectory
{
  v3 = [(MBPersona *)self isPersonalPersona];
  v4 = [(MBPersona *)self volumeMountPoint];
  v5 = v4;
  if (v3)
  {
    v6 = @".backup.i";
  }

  else
  {
    v6 = @"Backup/.backup.i";
  }

  v7 = [v4 stringByAppendingPathComponent:v6];

  if (!v7)
  {
    [MBPersona userIncompleteRestoreDirectory];
  }

  return v7;
}

- (NSString)placeholderRestoreDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Backup/AppPlaceholders";
  }

  else
  {
    v4 = [(MBPersona *)self volumeMountPoint];
    v3 = [v4 stringByAppendingPathComponent:@"Backup/AppPlaceholders"];

    if (!v3)
    {
      [MBPersona placeholderRestoreDirectory];
    }
  }

  return v3;
}

- (NSString)demotedAppsPlistPath
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist";
  }

  else
  {
    v4 = [(MBPersona *)self preferencesDirectory];
    v3 = [v4 stringByAppendingPathComponent:@"com.apple.MobileBackup.DemotedApps.plist"];

    if (!v3)
    {
      [MBPersona demotedAppsPlistPath];
    }
  }

  return v3;
}

- (NSString)volumeMapPlistPath
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"volume_map.plist"];

  return v3;
}

- (NSString)keyBagValidationStatePlistPath
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"keybag_validation.plist"];

  return v3;
}

- (id)_userRestorePrefetchDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Caches/Backup/prefetch";
  }

  else
  {
    v4 = [(MBPersona *)self volumeMountPoint];
    v3 = [v4 stringByAppendingPathComponent:@"Backup/Caches/prefetch"];

    if (!v3)
    {
      [MBPersona _userRestorePrefetchDirectory];
    }
  }

  return v3;
}

- (id)restorePrefetchDirectoryForDomain:(id)a3
{
  if ([a3 shouldRestoreToSharedVolume])
  {
    v4 = @"/var/root/Library/Caches/Backup/prefetch";
  }

  else
  {
    v4 = [(MBPersona *)self _userRestorePrefetchDirectory];
  }

  return v4;
}

- (id)restorePrefetchDirectories
{
  v3 = [(MBPersona *)self _userRestorePrefetchDirectory];
  if ([(MBPersona *)self shouldRestoreToSharedVolume])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{v3, @"/var/root/Library/Caches/Backup/prefetch", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObject:v3];
  }
  v4 = ;

  return v4;
}

- (NSString)snapshotDatabaseDirectory
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"snapshots"];

  return v3;
}

- (NSString)restoreSnapshotsDatabaseDirectory
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"restore_snapshots"];

  return v3;
}

- (NSString)restoreOperationLogPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MBPersona *)self personaIdentifier];
  v4 = [v2 stringWithFormat:@"RestoreOperationLog-%@.log", v3];

  v5 = MBGetLogDir();
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (NSString)l28BackupTelemetryPlistPath
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"l28BackupTelemetry.plist"];

  return v3;
}

- (NSString)systemDataContainerRestoreDirectory
{
  if (_os_feature_enabled_impl())
  {
    return @"/var/root/Library/Backup/SystemContainers/Data";
  }

  else
  {
    return @"/var/mobile/Library/Backup/SystemContainers/Data";
  }
}

- (NSString)systemSharedDataContainerRestoreDirectory
{
  if (_os_feature_enabled_impl())
  {
    return @"/var/root/Library/Backup/SystemContainers/Shared";
  }

  else
  {
    return @"/var/mobile/Library/Backup/SystemContainers/Shared";
  }
}

- (NSString)systemContainersVolumeMountPoint
{
  if (_os_feature_enabled_impl())
  {
    v3 = @"/private/var";
  }

  else
  {
    v3 = [(MBPersona *)self volumeMountPoint];
  }

  return v3;
}

- (NSString)restoreKeyBagsPath
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Backup/RestoreKeyBag.plist";
  }

  else
  {
    v4 = [(MBPersona *)self cacheDirectory];
    v3 = [v4 stringByAppendingPathComponent:@"RestoreKeyBag.plist"];

    if (!v3)
    {
      [MBPersona restoreKeyBagsPath];
    }
  }

  return v3;
}

- (NSString)skippedFileRecordsPlistPath
{
  v2 = [(MBPersona *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.MobileBackup.SkippedFileRecords.plist"];

  return v3;
}

- (void)removeRestoreKeybags
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [(MBPersona *)self restoreKeyBagsPath];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v2;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "Removing the restore keybags at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Removing the restore keybags at %{public}@", v4, v5, v6, v7, v8, v9, v2);
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v11 = [v10 removeItemAtPath:v2 error:&v21];
  v12 = v21;

  if ((v11 & 1) == 0)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v2;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_1DEB5D000, v13, OS_LOG_TYPE_ERROR, "Failed to remove the restore keybags at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to remove the restore keybags at %{public}@: %{public}@", v14, v15, v16, v17, v18, v19, v2);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)restoreDepotRootsByVolume
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  restoreDepotRootsByVolume = v2->_restoreDepotRootsByVolume;
  if (restoreDepotRootsByVolume)
  {
    goto LABEL_2;
  }

  if ([(MBPersona *)v2 isPersonalPersona])
  {
    v5 = [(MBPersona *)v2 user];
    v6 = [v5 isPrimaryUser];

    if (v6)
    {
      v7 = v2->_restoreDepotRootsByVolume;
      v2->_restoreDepotRootsByVolume = &unk_1F59DC7F0;

      restoreDepotRootsByVolume = v2->_restoreDepotRootsByVolume;
LABEL_2:
      v4 = restoreDepotRootsByVolume;
      goto LABEL_7;
    }
  }

  v8 = [(MBPersona *)v2 volumeMountPoint];
  v9 = [(MBPersona *)v2 cacheDirectory];
  v10 = [v9 stringByAppendingPathComponent:@"restore_depot"];

  v15 = v8;
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = v2->_restoreDepotRootsByVolume;
  v2->_restoreDepotRootsByVolume = v11;

  v4 = v2->_restoreDepotRootsByVolume;
LABEL_7:
  objc_sync_exit(v2);

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)accountType
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = [(MBPersona *)self user];
    v4 = [v3 isPrimaryUser];

    if (v4)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if ([(MBPersona *)self isDataSeparatedPersona])
  {
    return 2;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MBPersona accountType]"];
    [v6 handleFailureInFunction:v7 file:@"MBPersona.m" lineNumber:438 description:@"Unexpected call"];

    return 0;
  }
}

@end