@interface NPSFileBackupManager
- (BOOL)activeDeviceChanged;
- (NPSFileBackupManager)initWithDeviceRegistry:(id)registry;
- (id)fileURLWithUUID:(id)d;
- (id)localFileURLForOriginalFileURL:(id)l;
- (id)metadataIndexReadFromDiskIfNeeded;
- (id)newFileUUID;
- (id)pathToFileWithUUID:(id)d;
- (void)backupFileAtURL:(id)l originalFileURL:(id)rL;
- (void)enumerateFileBackupsUsingBlock:(id)block;
- (void)persistMetadataIndex;
@end

@implementation NPSFileBackupManager

- (NPSFileBackupManager)initWithDeviceRegistry:(id)registry
{
  registryCopy = registry;
  v12.receiver = self;
  v12.super_class = NPSFileBackupManager;
  v6 = [(NPSFileBackupManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceRegistry, registry);
    activeDeviceID = [registryCopy activeDeviceID];
    v7->_activeDeviceID = activeDeviceID;
  }

  else
  {
    activeDeviceID = MEMORY[0x10];
  }

  if (activeDeviceID)
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
  activeDeviceID = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];
  LOBYTE(activeDeviceID) = [(NSUUID *)activeDeviceID isEqual:activeDeviceID];

  return activeDeviceID ^ 1;
}

- (void)backupFileAtURL:(id)l originalFileURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v48 = "[NPSFileBackupManager backupFileAtURL:originalFileURL:]";
    v49 = 2112;
    v50 = lCopy;
    v51 = 2112;
    v52 = rLCopy;
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

  if (rLCopy)
  {
    metadataIndexReadFromDiskIfNeeded = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
    v12 = [metadataIndexReadFromDiskIfNeeded objectForKeyedSubscript:rLCopy];
    v13 = v12;
    if (!lCopy)
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
        v48 = rLCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing file (%@) from backup", buf, 0xCu);
      }

      uuid = [v13 uuid];
      path = [(NPSFileBackupManager *)self pathToFileWithUUID:uuid];

      v27 = +[NSFileManager defaultManager];
      v44 = 0;
      [v27 removeItemAtPath:path error:&v44];
      activeDevice = v44;

      if (activeDevice)
      {
        v28 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = path;
          v49 = 2112;
          v50 = activeDevice;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to remove file (%@) with error: (%@)", buf, 0x16u);
        }
      }

      [metadataIndexReadFromDiskIfNeeded removeObjectForKey:rLCopy];
      [(NPSFileBackupManager *)self persistMetadataIndex];
      v14 = v13;
LABEL_47:

      goto LABEL_48;
    }

    v14 = v12;
    if (!v12)
    {
      v14 = objc_opt_new();
      newFileUUID = [(NPSFileBackupManager *)self newFileUUID];
      [v14 setUuid:newFileUUID];

      [v14 setUrl:rLCopy];
      [metadataIndexReadFromDiskIfNeeded setObject:v14 forKeyedSubscript:rLCopy];
      [(NPSFileBackupManager *)self persistMetadataIndex];
    }

    path = [lCopy path];
    uuid2 = [v14 uuid];
    v18 = [(NPSFileBackupManager *)self pathToFileWithUUID:uuid2];

    if (v18)
    {
      v43 = metadataIndexReadFromDiskIfNeeded;
      if (v13)
      {
        v19 = +[NSFileManager defaultManager];
        v46 = 0;
        [v19 removeItemAtPath:v18 error:&v46];
        activeDevice = v46;

        if (activeDevice)
        {
          domain = [activeDevice domain];
          if (([domain isEqualToString:NSCocoaErrorDomain] & 1) == 0)
          {

            goto LABEL_40;
          }

          v22 = path;
          code = [activeDevice code];

          v24 = code == 4;
          path = v22;
          if (!v24)
          {
LABEL_40:
            v37 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v48 = v18;
              v49 = 2112;
              v50 = activeDevice;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to delete old file backup (%@) with error: (%@)", buf, 0x16u);
            }

LABEL_42:
            metadataIndexReadFromDiskIfNeeded = v43;
LABEL_46:

            goto LABEL_47;
          }
        }

        else
        {
          v22 = path;
        }
      }

      else
      {
        v22 = path;
        activeDevice = 0;
      }

      v34 = activeDevice;
      v35 = +[NSFileManager defaultManager];
      v45 = activeDevice;
      [v35 moveItemAtPath:v22 toPath:v18 error:&v45];
      activeDevice = v45;

      if (activeDevice)
      {
        v36 = nps_daemon_log;
        path = v22;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v48 = v22;
          v49 = 2112;
          v50 = v18;
          v51 = 2112;
          v52 = activeDevice;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to move file (%@) to (%@) with error: (%@)", buf, 0x20u);
        }

        metadataIndexReadFromDiskIfNeeded = v43;
        [v43 removeObjectForKey:rLCopy];
        [(NPSFileBackupManager *)self persistMetadataIndex];
        goto LABEL_46;
      }

      path = v22;
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
      activeDevice = 0;
      goto LABEL_46;
    }

    deviceRegistry = self->_deviceRegistry;
    if (deviceRegistry)
    {
      filesBackupDirectoryPath = [(NPSDeviceRegistry *)deviceRegistry filesBackupDirectoryPath];

      if (!filesBackupDirectoryPath)
      {
        activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];

        if (activeDevice)
        {
          activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];

          if (activeDevice)
          {
            pairingDataStore = [(NPSDeviceRegistry *)self->_deviceRegistry pairingDataStore];

            v32 = NSInvalidArgumentException;
            if (pairingDataStore)
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
    v48 = lCopy;
    v10 = "Error backuping file (%@), originalFileURL is nil";
    goto LABEL_18;
  }

LABEL_49:
}

- (void)enumerateFileBackupsUsingBlock:(id)block
{
  blockCopy = block;
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
    filesBackupDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupDirectoryPath];
    metadataIndexReadFromDiskIfNeeded = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100025D04;
    v9[3] = &unk_10003D478;
    v10 = filesBackupDirectoryPath;
    v11 = blockCopy;
    v8 = filesBackupDirectoryPath;
    [metadataIndexReadFromDiskIfNeeded enumerateKeysAndObjectsUsingBlock:v9];
  }
}

- (id)localFileURLForOriginalFileURL:(id)l
{
  lCopy = l;
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
    filesBackupDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupDirectoryPath];
    metadataIndexReadFromDiskIfNeeded = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
    v9 = [metadataIndexReadFromDiskIfNeeded objectForKeyedSubscript:lCopy];
    v10 = v9;
    if (v9)
    {
      uuid = [v9 uuid];
      uUIDString = [uuid UUIDString];
      v13 = [filesBackupDirectoryPath stringByAppendingPathComponent:uUIDString];

      v6 = [NSURL fileURLWithPath:v13 isDirectory:0];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)pathToFileWithUUID:(id)d
{
  deviceRegistry = self->_deviceRegistry;
  dCopy = d;
  filesBackupDirectoryPath = [(NPSDeviceRegistry *)deviceRegistry filesBackupDirectoryPath];
  uUIDString = [dCopy UUIDString];

  v7 = [filesBackupDirectoryPath stringByAppendingString:uUIDString];

  return v7;
}

- (id)fileURLWithUUID:(id)d
{
  v3 = [(NPSFileBackupManager *)self pathToFileWithUUID:d];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)metadataIndexReadFromDiskIfNeeded
{
  metadataIndex = self->_metadataIndex;
  if (!metadataIndex)
  {
    filesBackupMetadataIndexPath = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupMetadataIndexPath];
    if (filesBackupMetadataIndexPath)
    {
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v12 count:3];
      v6 = [NSSet setWithArray:v5, v12, v13];

      v7 = [NPSKeyedArchiverUtil unarchiveObjectOfClasses:v6 withFile:filesBackupMetadataIndexPath];
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
  filesBackupMetadataIndexPath = [(NPSDeviceRegistry *)self->_deviceRegistry filesBackupMetadataIndexPath];
  if (filesBackupMetadataIndexPath)
  {
    metadataIndex = self->_metadataIndex;
    if (metadataIndex && [(NSMutableDictionary *)metadataIndex count])
    {
      v5 = [NPSKeyedArchiverUtil archiveObject:self->_metadataIndex];
      v13 = 0;
      [v5 writeToFile:filesBackupMetadataIndexPath options:268435457 error:&v13];
      v6 = v13;
      if (v6)
      {
        v7 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = filesBackupMetadataIndexPath;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to write index file (%@) with error: (%@)", buf, 0x16u);
        }
      }

      goto LABEL_15;
    }

    v8 = +[NSFileManager defaultManager];
    v12 = 0;
    [v8 removeItemAtPath:filesBackupMetadataIndexPath error:&v12];
    v6 = v12;

    if (v6)
    {
      domain = [v6 domain];
      if ([domain isEqualToString:NSCocoaErrorDomain])
      {
        code = [v6 code];

        if (code == 4)
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
        v15 = filesBackupMetadataIndexPath;
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
  metadataIndexReadFromDiskIfNeeded = [(NPSFileBackupManager *)self metadataIndexReadFromDiskIfNeeded];
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
      [metadataIndexReadFromDiskIfNeeded enumerateKeysAndObjectsUsingBlock:v10];
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