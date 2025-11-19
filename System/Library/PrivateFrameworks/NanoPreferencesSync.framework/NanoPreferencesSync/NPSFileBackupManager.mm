@interface NPSFileBackupManager
- (BOOL)activeDeviceChanged;
- (NPSFileBackupManager)initWithDeviceRegistry:(id)a3;
- (id)fileURLWithUUID:(id)a3;
- (id)localFileURLForOriginalFileURL:(id)a3;
- (id)metadataIndexReadFromDiskIfNeeded;
- (id)newFileUUID;
- (id)pathToFileWithUUID:(id)a3;
- (void)backupFileAtURL:(id)a3 originalFileURL:(id)a4;
- (void)enumerateFileBackupsUsingBlock:(id)a3;
- (void)persistMetadataIndex;
@end

@implementation NPSFileBackupManager

- (NPSFileBackupManager)initWithDeviceRegistry:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NPSFileBackupManager;
  v6 = [(NPSFileBackupManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceRegistry, a3);
    v8 = [v5 activeDeviceID];
    v7->_activeDeviceID = v8;
  }

  else
  {
    v8 = MEMORY[0x10];
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

- (BOOL)activeDeviceChanged
{
  activeDeviceID = self->_activeDeviceID;
  v3 = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];
  LOBYTE(activeDeviceID) = [(NSUUID *)activeDeviceID isEqual:v3];

  return activeDeviceID ^ 1;
}

- (void)backupFileAtURL:(id)a3 originalFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v48 = "[NPSFileBackupManager backupFileAtURL:originalFileURL:]";
    v49 = 2112;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: fileURL: (%@); originalURL: (%@)", buf, 0x20u);
  }

  if ([(NPSFileBackupManager *)self activeDeviceChanged])
  {
    v9 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v48 = "[NPSFileBackupManager backupFileAtURL:originalFileURL:]";
      v10 = "%s: Skipping, active device has changed";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  if (v7)
  {
    v11 = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
    v12 = [v11 objectForKeyedSubscript:v7];
    v13 = v12;
    if (!v6)
    {
      if (!v12)
      {
LABEL_48:

        goto LABEL_49;
      }

      v25 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v7;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing file (%@) from backup", buf, 0xCu);
      }

      v26 = [v13 uuid];
      v16 = [(NPSFileBackupManager *)self pathToFileWithUUID:v26];

      v27 = +[NSFileManager defaultManager];
      v44 = 0;
      [v27 removeItemAtPath:v16 error:&v44];
      v20 = v44;

      if (v20)
      {
        v28 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = v16;
          v49 = 2112;
          v50 = v20;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to remove file (%@) with error: (%@)", buf, 0x16u);
        }
      }

      [v11 removeObjectForKey:v7];
      [(NPSFileBackupManager *)self persistMetadataIndex];
      v14 = v13;
LABEL_47:

      goto LABEL_48;
    }

    v14 = v12;
    if (!v12)
    {
      v14 = objc_opt_new();
      v15 = [(NPSFileBackupManager *)self newFileUUID];
      [v14 setUuid:v15];

      [v14 setUrl:v7];
      [v11 setObject:v14 forKeyedSubscript:v7];
      [(NPSFileBackupManager *)self persistMetadataIndex];
    }

    v16 = [v6 path];
    v17 = [v14 uuid];
    v18 = [(NPSFileBackupManager *)self pathToFileWithUUID:v17];

    if (v18)
    {
      v43 = v11;
      if (v13)
      {
        v19 = +[NSFileManager defaultManager];
        v46 = 0;
        [v19 removeItemAtPath:v18 error:&v46];
        v20 = v46;

        if (v20)
        {
          v21 = [v20 domain];
          if (([v21 isEqualToString:NSCocoaErrorDomain] & 1) == 0)
          {

            goto LABEL_40;
          }

          v22 = v16;
          v23 = [v20 code];

          v24 = v23 == 4;
          v16 = v22;
          if (!v24)
          {
LABEL_40:
            v37 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v48 = v18;
              v49 = 2112;
              v50 = v20;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to delete old file backup (%@) with error: (%@)", buf, 0x16u);
            }

LABEL_42:
            v11 = v43;
LABEL_46:

            goto LABEL_47;
          }
        }

        else
        {
          v22 = v16;
        }
      }

      else
      {
        v22 = v16;
        v20 = 0;
      }

      v34 = v20;
      v35 = +[NSFileManager defaultManager];
      v45 = v20;
      [v35 moveItemAtPath:v22 toPath:v18 error:&v45];
      v20 = v45;

      if (v20)
      {
        v36 = nps_daemon_log;
        v16 = v22;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v48 = v22;
          v49 = 2112;
          v50 = v18;
          v51 = 2112;
          v52 = v20;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to move file (%@) to (%@) with error: (%@)", buf, 0x20u);
        }

        v11 = v43;
        [v43 removeObjectForKey:v7];
        [(NPSFileBackupManager *)self persistMetadataIndex];
        goto LABEL_46;
      }

      v16 = v22;
      goto LABEL_42;
    }

    v29 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Failed to generate file backup destination path. File will not get backuped!", buf, 2u);
    }

    if (!MGGetBoolAnswer())
    {
LABEL_45:
      v20 = 0;
      goto LABEL_46;
    }

    deviceRegistry = self->_deviceRegistry;
    if (deviceRegistry)
    {
      v31 = [(NPSDeviceRegistry *)deviceRegistry filesBackupDirectoryPath];

      if (!v31)
      {
        v20 = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];

        if (v20)
        {
          v20 = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];

          if (v20)
          {
            v39 = [(NPSDeviceRegistry *)self->_deviceRegistry pairingDataStore];

            v32 = NSInvalidArgumentException;
            if (v39)
            {
              v33 = @"other1";
            }

            else
            {
              v33 = @"nil pairingDataStore";
            }

            goto LABEL_44;
          }

          v40 = NSInvalidArgumentException;
          v41 = @"nil pairingID";
        }

        else
        {
          v40 = NSInvalidArgumentException;
          v41 = @"nil pairedDevice";
        }

        v42 = [NSException exceptionWithName:v40 reason:v41 userInfo:0];
        goto LABEL_46;
      }

      v32 = NSInvalidArgumentException;
      v33 = @"other2";
    }

    else
    {
      v32 = NSInvalidArgumentException;
      v33 = @"nil _deviceRegistry";
    }

LABEL_44:
    v38 = [NSException exceptionWithName:v32 reason:v33 userInfo:0];
    goto LABEL_45;
  }

  v9 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v6;
    v10 = "Error backuping file (%@), originalFileURL is nil";
    goto LABEL_18;
  }

LABEL_49:
}

- (void)enumerateFileBackupsUsingBlock:(id)a3
{
  v4 = a3;
  if ([(NPSFileBackupManager *)self activeDeviceChanged])
  {
    v5 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[NPSFileBackupManager enumerateFileBackupsUsingBlock:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Skipping, active device has changed", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupDirectoryPath];
    v7 = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100025D04;
    v9[3] = &unk_10003D478;
    v10 = v6;
    v11 = v4;
    v8 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

- (id)localFileURLForOriginalFileURL:(id)a3
{
  v4 = a3;
  if ([(NPSFileBackupManager *)self activeDeviceChanged])
  {
    v5 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[NPSFileBackupManager localFileURLForOriginalFileURL:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Skipping, active device has changed", &v15, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v7 = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupDirectoryPath];
    v8 = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
    v9 = [v8 objectForKeyedSubscript:v4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 uuid];
      v12 = [v11 UUIDString];
      v13 = [v7 stringByAppendingPathComponent:v12];

      v6 = [NSURL fileURLWithPath:v13 isDirectory:0];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)pathToFileWithUUID:(id)a3
{
  deviceRegistry = self->_deviceRegistry;
  v4 = a3;
  v5 = [(NPSDeviceRegistry *)deviceRegistry filesBackupDirectoryPath];
  v6 = [v4 UUIDString];

  v7 = [v5 stringByAppendingString:v6];

  return v7;
}

- (id)fileURLWithUUID:(id)a3
{
  v3 = [(NPSFileBackupManager *)self pathToFileWithUUID:a3];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)metadataIndexReadFromDiskIfNeeded
{
  metadataIndex = self->_metadataIndex;
  if (!metadataIndex)
  {
    v4 = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupMetadataIndexPath];
    if (v4)
    {
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v12 count:3];
      v6 = [NSSet setWithArray:v5, v12, v13];

      v7 = [NPSKeyedArchiverUtil unarchiveObjectOfClasses:v6 withFile:v4];
      v8 = self->_metadataIndex;
      self->_metadataIndex = v7;
    }

    if (!self->_metadataIndex)
    {
      v9 = objc_opt_new();
      v10 = self->_metadataIndex;
      self->_metadataIndex = v9;
    }

    metadataIndex = self->_metadataIndex;
  }

  return metadataIndex;
}

- (void)persistMetadataIndex
{
  v3 = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupMetadataIndexPath];
  if (v3)
  {
    metadataIndex = self->_metadataIndex;
    if (metadataIndex && [(NSMutableDictionary *)metadataIndex count])
    {
      v5 = [NPSKeyedArchiverUtil archiveObject:self->_metadataIndex];
      v13 = 0;
      [v5 writeToFile:v3 options:268435457 error:&v13];
      v6 = v13;
      if (v6)
      {
        v7 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = v3;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to write index file (%@) with error: (%@)", buf, 0x16u);
        }
      }

      goto LABEL_15;
    }

    v8 = +[NSFileManager defaultManager];
    v12 = 0;
    [v8 removeItemAtPath:v3 error:&v12];
    v6 = v12;

    if (v6)
    {
      v9 = [v6 domain];
      if ([v9 isEqualToString:NSCocoaErrorDomain])
      {
        v10 = [v6 code];

        if (v10 == 4)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v11 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to delete to-be-empty index file (%@) with error: (%@)", buf, 0x16u);
      }
    }

LABEL_15:
  }
}

- (id)newFileUUID
{
  v2 = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
  v3 = 0;
  do
  {
    while (1)
    {
      v4 = +[NSUUID UUID];

      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100026524;
      v10[3] = &unk_10003D4A0;
      v3 = v4;
      v11 = v3;
      v12 = &v13;
      [v2 enumerateKeysAndObjectsUsingBlock:v10];
      if ((v14[3] & 1) == 0)
      {
        break;
      }

      _Block_object_dispose(&v13, 8);
    }

    v5 = +[NSFileManager defaultManager];
    v6 = [(NPSFileBackupManager *)self pathToFileWithUUID:v3];
    v7 = [v5 fileExistsAtPath:v6];

    _Block_object_dispose(&v13, 8);
  }

  while ((v7 & 1) != 0);

  return v3;
}

@end