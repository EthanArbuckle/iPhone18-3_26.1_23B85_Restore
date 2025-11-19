@interface MBDriveSettingsContext
+ (id)defaultSettingsContext;
- (BOOL)shouldCopyBackup;
- (BOOL)shouldNotifySpringBoard;
- (BOOL)shouldRemoveItemsNotRestored;
- (BOOL)shouldRestoreAppWithID:(id)a3;
- (BOOL)shouldRestoreSystemFiles;
- (MBDriveSettingsContext)initWithPersona:(id)a3;
- (NSString)driveBackupDatabaseIndexPath;
- (NSString)driveBackupDatabasePath;
- (NSString)driveBackupDir;
- (NSString)driveBackupInfoPath;
- (NSString)driveBackupManifestDatabasePath;
- (NSString)driveBackupPropertiesPath;
- (NSString)driveBackupStatusPath;
- (NSString)driveSnapshotDatabaseIndexPath;
- (NSString)driveSnapshotDatabasePath;
- (NSString)driveSnapshotDir;
- (NSString)driveSnapshotManifestDatabasePath;
- (NSString)driveSnapshotPropertiesPath;
- (id)copyWithZone:(_NSZone *)a3;
- (void)log;
- (void)updatePassword:(id)a3;
@end

@implementation MBDriveSettingsContext

+ (id)defaultSettingsContext
{
  v7 = 0;
  v2 = [MBPersona personalPersonaWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [[MBDriveSettingsContext alloc] initWithPersona:v2];
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to fetch personal persona: %@", buf, 0xCu);
      _MBLog();
    }

    v4 = 0;
  }

  return v4;
}

- (MBDriveSettingsContext)initWithPersona:(id)a3
{
  v15.receiver = self;
  v15.super_class = MBDriveSettingsContext;
  v3 = [(MBSettingsContext *)&v15 init];
  if (v3)
  {
    v4 = MBDeviceClass();
    targetDeviceClass = v3->_targetDeviceClass;
    v3->_targetDeviceClass = v4;

    v6 = MBDefaultOptions();
    v7 = [v6 mutableCopy];
    options = v3->_options;
    v3->_options = v7;

    v9 = [[MBDriveEncryptionManager alloc] initWithSettingsContext:v3];
    encryptionManager = v3->_encryptionManager;
    v3->_encryptionManager = v9;

    v11 = MBGetCacheDir();
    deviceCacheDir = v3->_deviceCacheDir;
    v3->_deviceCacheDir = v11;

    v13 = [(NSMutableDictionary *)v3->_options objectForKeyedSubscript:@"RestorePreserveSettings"];
    -[MBSettingsContext setShouldPreserveSettings:](v3, "setShouldPreserveSettings:", [v13 BOOLValue]);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MBDriveSettingsContext;
  v5 = [(MBSettingsContext *)&v9 copyWithZone:?];
  [v5 setProtocolVersion:self->_protocolVersion];
  [v5 setTargetDeviceClass:self->_targetDeviceClass];
  [v5 setSourceIdentifier:self->_sourceIdentifier];
  [v5 setTargetIdentifier:self->_targetIdentifier];
  v6 = [(NSSet *)self->_applicationIDs mutableCopyWithZone:a3];
  [v5 setApplicationIDs:v6];

  v7 = [(NSMutableDictionary *)self->_options mutableCopyWithZone:a3];
  [v5 setOptions:v7];

  [v5 setDrive:self->_drive];
  [v5 setEncryptionManager:self->_encryptionManager];
  [v5 setDeviceCacheDir:self->_deviceCacheDir];
  return v5;
}

- (BOOL)shouldNotifySpringBoard
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RestoreShouldReboot"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldCopyBackup
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RestoreDontCopyBackup"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1;
}

- (BOOL)shouldRestoreSystemFiles
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RestoreSystemFiles"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldRemoveItemsNotRestored
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RemoveItemsNotRestored"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSString)driveBackupDir
{
  sourceIdentifier = self->_sourceIdentifier;
  if (!sourceIdentifier)
  {
    sourceIdentifier = self->_targetIdentifier;
  }

  return sourceIdentifier;
}

- (NSString)driveBackupStatusPath
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Status.plist"];

  return v3;
}

- (NSString)driveBackupPropertiesPath
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.plist"];

  return v3;
}

- (NSString)driveBackupDatabasePath
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.mbdb"];

  return v3;
}

- (NSString)driveBackupDatabaseIndexPath
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.mbdx"];

  return v3;
}

- (NSString)driveBackupManifestDatabasePath
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.db"];

  return v3;
}

- (NSString)driveBackupInfoPath
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Info.plist"];

  return v3;
}

- (NSString)driveSnapshotDir
{
  v2 = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [v2 stringByAppendingPathComponent:@"Snapshot"];

  return v3;
}

- (NSString)driveSnapshotPropertiesPath
{
  v2 = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.plist"];

  return v3;
}

- (NSString)driveSnapshotDatabasePath
{
  v2 = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.mbdb"];

  return v3;
}

- (NSString)driveSnapshotDatabaseIndexPath
{
  v2 = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.mbdx"];

  return v3;
}

- (NSString)driveSnapshotManifestDatabasePath
{
  v2 = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [v2 stringByAppendingPathComponent:@"Manifest.db"];

  return v3;
}

- (BOOL)shouldRestoreAppWithID:(id)a3
{
  applicationIDs = self->_applicationIDs;
  if (applicationIDs)
  {
    return [(NSSet *)applicationIDs containsObject:a3];
  }

  else
  {
    return 1;
  }
}

- (void)updatePassword:(id)a3
{
  options = self->_options;
  if (a3)
  {
    [(NSMutableDictionary *)options setObject:a3 forKeyedSubscript:@"Password"];
  }

  else
  {
    [(NSMutableDictionary *)options removeObjectForKey:@"Password"];
  }
}

- (void)log
{
  v25.receiver = self;
  v25.super_class = MBDriveSettingsContext;
  [(MBSettingsContext *)&v25 log];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(MBDriveSettingsContext *)self targetDeviceClass];
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TargetDeviceClass: %@", buf, 0xCu);

    v20 = [(MBDriveSettingsContext *)self targetDeviceClass];
    _MBLog();
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [(MBDriveSettingsContext *)self protocolVersion];
    *buf = 134217984;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ProtocolVersion: %0.1f", buf, 0xCu);
    [(MBDriveSettingsContext *)self protocolVersion];
    _MBLog();
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(MBDriveSettingsContext *)self sourceIdentifier];
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SourceIdentifier: %@", buf, 0xCu);

    v21 = [(MBDriveSettingsContext *)self sourceIdentifier];
    _MBLog();
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(MBDriveSettingsContext *)self targetIdentifier];
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TargetIdentifier: %@", buf, 0xCu);

    v22 = [(MBDriveSettingsContext *)self targetIdentifier];
    _MBLog();
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(MBDriveSettingsContext *)self applicationIDs];
    v13 = MBStringWithSet();
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ApplicationIDs: %@", buf, 0xCu);

    v14 = [(MBDriveSettingsContext *)self applicationIDs];
    v23 = MBStringWithSet();
    _MBLog();
  }

  v15 = [(MBDriveSettingsContext *)self options];
  v16 = [v15 mutableCopy];

  v17 = [v16 objectForKeyedSubscript:@"Password"];

  if (v17)
  {
    [v16 setObject:@"********" forKeyedSubscript:@"Password"];
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = MBStringWithDictionary();
    *buf = 138412290;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Options: %@", buf, 0xCu);

    v24 = MBStringWithDictionary();
    _MBLog();
  }
}

@end