@interface MBBackupHelper
+ (id)driveReadError:(id)error description:(id)description;
+ (id)driveWriteError:(id)error description:(id)description;
+ (id)errorForException:(id)exception;
- (MBBackupHelper)initWithSettingsContext:(id)context domainManager:(id)manager;
- (id)readBackupDatabaseWithError:(id *)error;
- (id)readBackupManifestWithError:(id *)error;
- (id)readBackupPropertiesWithError:(id *)error;
- (id)readSnapshotDatabaseWithError:(id *)error;
- (id)readSnapshotManifestDatabaseWithError:(id *)error;
- (id)readSnapshotManifestWithError:(id *)error;
- (id)readSnapshotPropertiesWithError:(id *)error;
- (id)readStatusWithError:(id *)error;
@end

@implementation MBBackupHelper

+ (id)driveReadError:(id)error description:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  domain = [errorCopy domain];
  v8 = [domain isEqualToString:@"MBErrorDomain"];

  if (!v8)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      domain2 = [errorCopy domain];
      *buf = 138412546;
      code2 = @"MBErrorDomain";
      v19 = 2112;
      v20 = domain2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Drive returned error not in domain %@: %@", buf, 0x16u);

      domain3 = [errorCopy domain];
      _MBLog();
    }

    goto LABEL_10;
  }

  code = [errorCopy code];
  v10 = 103;
  if (code <= 10)
  {
    if (code == 2)
    {
      goto LABEL_14;
    }

    if (code != 4)
    {
LABEL_17:
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        code2 = [errorCopy code];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Drive returned unexpected error code: %{MobileBackup:MBError.code}ld", buf, 0xCu);
        [errorCopy code];
        _MBLog();
      }

LABEL_10:
      v10 = 103;
      goto LABEL_14;
    }
  }

  else if ((code - 11) >= 2)
  {
    if (code == 100)
    {
      goto LABEL_14;
    }

    if (code == 203)
    {
      v10 = 203;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v10 = 205;
LABEL_14:
  v13 = [MBError errorWithCode:v10 error:errorCopy format:@"%@", descriptionCopy, domain3];

  return v13;
}

+ (id)driveWriteError:(id)error description:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  domain = [errorCopy domain];
  v8 = [domain isEqualToString:@"MBErrorDomain"];

  if (!v8)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      domain2 = [errorCopy domain];
      *buf = 138412546;
      code2 = @"MBErrorDomain";
      v19 = 2112;
      v20 = domain2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Drive returned error not in domain %@: %@", buf, 0x16u);

      domain3 = [errorCopy domain];
      _MBLog();
    }

    goto LABEL_11;
  }

  code = [errorCopy code];
  if ((code - 3) < 2)
  {
    v10 = 205;
  }

  else
  {
    v10 = 104;
    if (code != 2 && code != 100)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        code2 = [errorCopy code];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Drive returned unexpected error code: %{MobileBackup:MBError.code}ld", buf, 0xCu);
        [errorCopy code];
        _MBLog();
      }

LABEL_11:
      v10 = 104;
    }
  }

  v14 = [MBError errorWithCode:v10 error:errorCopy format:@"%@", descriptionCopy, domain3];

  return v14;
}

+ (id)errorForException:(id)exception
{
  exceptionCopy = exception;
  error = [exceptionCopy error];
  code = [error code];

  if (code <= 10)
  {
    v6 = 1;
    if (code == 1 || code == 10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((code - 11) < 2)
    {
      v6 = 205;
      goto LABEL_12;
    }

    if (code == 100)
    {
      v6 = 102;
      goto LABEL_12;
    }
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    error2 = [exceptionCopy error];
    *buf = 134217984;
    code2 = [error2 code];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected error code from exception: %{MobileBackup:MBError.code}ld", buf, 0xCu);

    error3 = [exceptionCopy error];
    code3 = [error3 code];
    _MBLog();
  }

  v6 = 1;
LABEL_12:
  error4 = [exceptionCopy error];
  localizedDescription = [error4 localizedDescription];
  v12 = [MBError errorWithCode:v6 description:localizedDescription];

  return v12;
}

- (MBBackupHelper)initWithSettingsContext:(id)context domainManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = MBBackupHelper;
  v9 = [(MBBackupHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settingsContext, context);
    objc_storeStrong(&v10->_domainManager, manager);
  }

  return v10;
}

- (id)readStatusWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading status", buf, 2u);
    _MBLog();
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveBackupStatusPath = [(MBDriveSettingsContext *)self->_settingsContext driveBackupStatusPath];
  v8 = [MBStatus statusWithDrive:drive path:driveBackupStatusPath error:error];

  if (v8)
  {
    isVersionAmbiguous = [v8 isVersionAmbiguous];
    v10 = MBGetDefaultLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (isVersionAmbiguous)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Status version is ambiguous", buf, 2u);
        _MBLog();
      }

      drive2 = [(MBDriveSettingsContext *)self->_settingsContext drive];
      driveBackupPropertiesPath = [(MBDriveSettingsContext *)self->_settingsContext driveBackupPropertiesPath];
      v22 = 0;
      v14 = [drive2 propertyListAtPath:driveBackupPropertiesPath options:0 error:&v22];
      v15 = v22;

      if (v14)
      {
        v16 = [v14 objectForKeyedSubscript:@"Version"];
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Properties version is %@", buf, 0xCu);
          _MBLog();
        }

        if (!v16)
        {
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Overwriting status version to 1.0", buf, 2u);
            _MBLog();
          }

          [v8 setVersion:1.0];
        }

        v19 = v8;
      }

      else if ([MBError isError:v15 withCode:4])
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No manifest properties found", buf, 2u);
          _MBLog();
        }

        v19 = v8;
      }

      else if (error)
      {
        [MBBackupHelper driveReadError:v15 description:@"Error reading backup properties"];
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Backup status: %@", buf, 0xCu);
        _MBLog();
      }

      v19 = v8;
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  return v19;
}

- (id)readBackupPropertiesWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading backup properties", buf, 2u);
    _MBLog();
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveBackupPropertiesPath = [(MBDriveSettingsContext *)self->_settingsContext driveBackupPropertiesPath];
  v8 = [MBDriveProperties propertiesWithDrive:drive path:driveBackupPropertiesPath error:error];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Backup properties: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (error)
  {
    *error = [MBBackupHelper driveReadError:*error description:@"Error reading backup properties"];
  }

  return v8;
}

- (id)readBackupDatabaseWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading backup database", buf, 2u);
    _MBLog();
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveBackupDatabasePath = [(MBDriveSettingsContext *)self->_settingsContext driveBackupDatabasePath];
  v8 = [MBDatabase databaseWithDrive:drive path:driveBackupDatabasePath domainManager:self->_domainManager error:error];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Backup database: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (error)
  {
    *error = [MBBackupHelper driveReadError:*error description:@"Error reading backup database"];
  }

  return v8;
}

- (id)readBackupManifestWithError:(id *)error
{
  v5 = [(MBBackupHelper *)self readBackupPropertiesWithError:?];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_45;
  }

  if (![v5 hasManifestDB])
  {
    v24 = [(MBBackupHelper *)self readBackupDatabaseWithError:error];
    if (v24)
    {
      v25 = v24;
      v22 = [MBManifest manifestWithProperties:v6 database:v24 databaseIndex:0];

      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (![v6 encrypted])
  {
    goto LABEL_11;
  }

  keybag = [(MBDriveSettingsContext *)self->_settingsContext keybag];

  if (!keybag)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Decoding and unlocking backup keybag from manifest", buf, 2u);
      _MBLog();
    }

    keybagData = [v6 keybagData];
    if (keybagData)
    {
      password = [(MBDriveSettingsContext *)self->_settingsContext password];
      v39 = 0;
      v29 = [MBKeyBag unlockedKeyBagWithData:keybagData password:password error:&v39];
      v30 = v39;
      [(MBDriveSettingsContext *)self->_settingsContext setKeybag:v29];

      keybag2 = [(MBDriveSettingsContext *)self->_settingsContext keybag];

      if (keybag2)
      {

        goto LABEL_5;
      }

      if ([MBError isError:v30 withCode:207])
      {
        if (error)
        {
          v35 = @"Invalid password when restoring encrypted backup";
          v36 = 207;
LABEL_42:
          v32 = [MBError errorWithCode:v36 error:v30 format:v35];
          goto LABEL_43;
        }
      }

      else if (error)
      {
        v35 = @"Error decoding keybag";
        v36 = 1;
        goto LABEL_42;
      }
    }

    else
    {
      if (error)
      {
        v32 = [MBError errorWithCode:205 format:@"No keybag in manifest"];
        v30 = 0;
LABEL_43:
        *error = v32;
        goto LABEL_44;
      }

      v30 = 0;
    }

LABEL_44:

    goto LABEL_45;
  }

LABEL_5:
  keybag3 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  if (!keybag3)
  {
    goto LABEL_11;
  }

  v9 = keybag3;
  keybag4 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  isUnlocked = [keybag4 isUnlocked];

  if (isUnlocked)
  {
    goto LABEL_11;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unlocking backup keybag from manifest", buf, 2u);
    _MBLog();
  }

  keybag5 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  password2 = [(MBDriveSettingsContext *)self->_settingsContext password];
  v38 = 0;
  v15 = [keybag5 unlockWithPassword:password2 error:&v38];
  v16 = v38;

  if ((v15 & 1) == 0)
  {
    if ([MBError isError:v16 withCode:207])
    {
      if (error)
      {
        v33 = @"Invalid password when restoring encrypted backup";
        v34 = 207;
LABEL_37:
        *error = [MBError errorWithCode:v34 error:v16 format:v33];
      }
    }

    else if (error)
    {
      v33 = @"Error decoding keybag";
      v34 = 1;
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_11:
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Fetching new format backup manifest", buf, 2u);
    _MBLog();
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveBackupManifestDatabasePath = [(MBDriveSettingsContext *)self->_settingsContext driveBackupManifestDatabasePath];
  domainManager = self->_domainManager;
  keybag6 = [(MBDriveSettingsContext *)self->_settingsContext keybag];
  v22 = [MBManifestDB manifestDBWithDrive:drive sourcePath:driveBackupManifestDatabasePath properties:v6 domainManager:domainManager keybag:keybag6 error:error];

  if (!v22)
  {
    if (error)
    {
      *error = [MBBackupHelper driveReadError:*error description:@"Error reading backup manifest database"];
    }

    goto LABEL_20;
  }

  if ([v22 openWithError:error])
  {
    v23 = v22;
LABEL_20:

    goto LABEL_46;
  }

LABEL_45:
  v22 = 0;
LABEL_46:

  return v22;
}

- (id)readSnapshotPropertiesWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading snapshot properties", buf, 2u);
    _MBLog();
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveSnapshotPropertiesPath = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotPropertiesPath];
  v8 = [MBDriveProperties propertiesWithDrive:drive path:driveSnapshotPropertiesPath error:error];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Snapshot properties: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (error)
  {
    *error = [MBBackupHelper driveReadError:*error description:@"Error reading snapshot properties"];
  }

  return v8;
}

- (id)readSnapshotDatabaseWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading snapshot database", buf, 2u);
    _MBLog();
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveSnapshotDatabasePath = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotDatabasePath];
  v8 = [MBDatabase databaseWithDrive:drive path:driveSnapshotDatabasePath domainManager:self->_domainManager error:error];

  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Snapshot database: %@", buf, 0xCu);
      _MBLog();
    }

    v10 = v8;
  }

  else if (error)
  {
    *error = [MBBackupHelper driveReadError:*error description:@"Error reading snapshot database"];
  }

  return v8;
}

- (id)readSnapshotManifestDatabaseWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reading snapshot manifest database", buf, 2u);
    _MBLog();
  }

  v6 = [(MBBackupHelper *)self readSnapshotPropertiesWithError:error];
  if (!v6)
  {
    v12 = 0;
    goto LABEL_15;
  }

  drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
  driveSnapshotManifestDatabasePath = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotManifestDatabasePath];
  v9 = [MBManifestDB manifestDBWithDrive:drive sourcePath:driveSnapshotManifestDatabasePath properties:v6 domainManager:self->_domainManager error:error];

  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Snapshot manifest database: %@", buf, 0xCu);
      _MBLog();
    }

    if (![v9 openWithError:error])
    {
      v12 = 0;
      goto LABEL_14;
    }

    v11 = v9;
    goto LABEL_12;
  }

  v12 = 0;
  if (error)
  {
    *error = [MBBackupHelper driveReadError:*error description:@"Error reading snapshot manifest database"];
LABEL_12:
    v12 = v9;
  }

LABEL_14:

LABEL_15:

  return v12;
}

- (id)readSnapshotManifestWithError:(id *)error
{
  v5 = [(MBBackupHelper *)self readSnapshotPropertiesWithError:?];
  v6 = v5;
  if (v5)
  {
    if ([v5 hasManifestDB])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching new format snapshot manifest", v15, 2u);
        _MBLog();
      }

      drive = [(MBDriveSettingsContext *)self->_settingsContext drive];
      driveSnapshotManifestDatabasePath = [(MBDriveSettingsContext *)self->_settingsContext driveSnapshotManifestDatabasePath];
      v10 = [MBManifestDB manifestDBWithDrive:drive sourcePath:driveSnapshotManifestDatabasePath properties:v6 domainManager:self->_domainManager error:error];

      if (!v10)
      {
        if (error)
        {
          *error = [MBBackupHelper driveReadError:*error description:@"Error reading snapshot manifest database"];
        }

        goto LABEL_12;
      }

      if ([v10 openWithError:error])
      {
        v11 = v10;
LABEL_12:

        goto LABEL_15;
      }
    }

    else
    {
      v12 = [(MBBackupHelper *)self readSnapshotDatabaseWithError:error];
      if (v12)
      {
        v13 = v12;
        v10 = [MBManifest manifestWithProperties:v6 database:v12 databaseIndex:0];

        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

@end