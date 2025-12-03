@interface MBDriveEncryptionManager
+ (id)encryptionManagerWithSettingsContext:(id)context;
- (BOOL)_changeBackupKeyBagPasswordInProperties:(id)properties fromPassword:(id)password toPassword:(id)toPassword error:(id *)error;
- (BOOL)changePasswordFrom:(id)from toPassword:(id)password error:(id *)error;
- (BOOL)makeLockdownAndKeychainConsistentWithError:(id *)error;
- (BOOL)setPasswordInKeychain:(id)keychain error:(id *)error;
- (MBDriveEncryptionManager)initWithSettingsContext:(id)context;
- (void)dealloc;
@end

@implementation MBDriveEncryptionManager

+ (id)encryptionManagerWithSettingsContext:(id)context
{
  v3 = [[MBDriveEncryptionManager alloc] initWithSettingsContext:context];

  return v3;
}

- (MBDriveEncryptionManager)initWithSettingsContext:(id)context
{
  v6.receiver = self;
  v6.super_class = MBDriveEncryptionManager;
  v4 = [(MBDriveEncryptionManager *)&v6 init];
  if (v4)
  {
    v4->_settingsContext = context;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDriveEncryptionManager;
  [(MBDriveEncryptionManager *)&v3 dealloc];
}

- (BOOL)_changeBackupKeyBagPasswordInProperties:(id)properties fromPassword:(id)password toPassword:(id)toPassword error:(id *)error
{
  keybagData = [properties keybagData];
  if (keybagData)
  {
    v11 = keybagData;
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Decoding backup keybag", buf, 2u);
      _MBLog();
    }

    v13 = [MBKeyBag keybagWithData:v11 error:error];
    if (v13)
    {
      v14 = v13;
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Changing backup keybag password", v20, 2u);
        _MBLog();
      }

      LODWORD(v13) = [(MBKeyBag *)v14 changePasswordFrom:password toPassword:toPassword error:error];
      if (v13)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Encoding backup keybag", v19, 2u);
          _MBLog();
        }

        v13 = [(MBKeyBag *)v14 dataWithError:error];
        if (v13)
        {
          [properties setKeybagData:v13];
          LOBYTE(v13) = 1;
        }
      }
    }
  }

  else if (error)
  {
    v17 = [MBError errorWithCode:205 format:@"No backup keybag data in encrypted backup properties"];
    LOBYTE(v13) = 0;
    *error = v17;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)changePasswordFrom:(id)from toPassword:(id)password error:(id *)error
{
  v50 = 0;
  v9 = objc_opt_new();
  if (!v9)
  {
    __assert_rtn("[MBDriveEncryptionManager changePasswordFrom:toPassword:error:]", "MBDriveEncryptionManager.m", 86, "passcodePromptContext");
  }

  v10 = v9;
  v11 = objc_opt_new();
  if (!v11)
  {
    __assert_rtn("[MBDriveEncryptionManager changePasswordFrom:toPassword:error:]", "MBDriveEncryptionManager.m", 88, "laOptions");
  }

  v12 = v11;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v13 = dispatch_semaphore_create(0);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10006B918;
  v45[3] = &unk_1003BC890;
  v45[4] = v13;
  v45[5] = &v46;
  [v10 evaluatePolicy:1013 options:v12 reply:v45];
  v14 = dispatch_time(0, 1800000000000);
  if (!dispatch_semaphore_wait(v13, v14))
  {

    if ((v47[3] & 1) == 0)
    {
      if (error)
      {
        v16 = [MBError errorWithCode:208 format:@"Device locked"];
        goto LABEL_27;
      }

      goto LABEL_91;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Changing backup password", buf, 2u);
      _MBLog();
    }

    v18 = from == 0;
    if (!from)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "oldPassword is NULL", buf, 2u);
        _MBLog();
      }
    }

    if (!password)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "newPassword is NULL", buf, 2u);
        _MBLog();
      }
    }

    v21 = [MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v50];
    if (v21)
    {
      if (![from isEqualToString:v21])
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Passwords don't match", buf, 2u);
          _MBLog();
        }

        v30 = ![(MBDriveEncryptionManager *)self setWillEncryptInLockdown:1 error:error];
        if (!error)
        {
          LOBYTE(v30) = 1;
        }

        if ((v30 & 1) == 0)
        {
          v16 = [MBError errorWithCode:207 format:@"Invalid password"];
          goto LABEL_27;
        }

        goto LABEL_91;
      }

      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Password matches", buf, 2u);
        _MBLog();
      }

      if (!password)
      {
        if (![(MBDriveEncryptionManager *)self setWillEncryptInLockdown:0 error:error])
        {
          goto LABEL_91;
        }

        v31 = [MBKeychainManager removeLocalBackupPasswordAndReturnError:error];
        goto LABEL_52;
      }

      if (![MBKeychainManager updateLocalBackupPassword:password error:error])
      {
        goto LABEL_91;
      }

      v18 = 0;
      v23 = 0;
      if (![(MBDriveEncryptionManager *)self setWillEncryptInLockdown:1 error:error])
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (![MBError isError:v50 withCode:4])
      {
        goto LABEL_89;
      }

      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No password is currently set", buf, 2u);
        _MBLog();
      }

      if (!password)
      {
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "No password given to add either", buf, 2u);
          _MBLog();
        }

        v31 = [(MBDriveEncryptionManager *)self setWillEncryptInLockdown:0 error:error];
LABEL_52:
        if (v31)
        {
LABEL_53:
          v23 = 1;
          goto LABEL_92;
        }

LABEL_91:
        v23 = 0;
        goto LABEL_92;
      }

      if (![MBKeychainManager addLocalBackupPassword:password error:error]|| ![(MBDriveEncryptionManager *)self setWillEncryptInLockdown:1 error:error])
      {
        goto LABEL_91;
      }
    }

    v25 = [MBDriveProperties propertiesWithDrive:[(MBDriveSettingsContext *)self->_settingsContext drive] path:[(MBDriveSettingsContext *)self->_settingsContext driveSnapshotPropertiesPath] error:&v50];
    v26 = v25;
    if (v25)
    {
      if (![(MBProperties *)v25 encrypted])
      {
        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Snapshot not encrypted", buf, 2u);
          _MBLog();
        }

        goto LABEL_53;
      }

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Changing snapshot properties password", buf, 2u);
        _MBLog();
      }

      if (v18)
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Skipping change snapshot properties password - oldPassword is NULL", buf, 2u);
          _MBLog();
        }

        goto LABEL_53;
      }

      if ([(MBDriveEncryptionManager *)self _changeBackupKeyBagPasswordInProperties:v26 fromPassword:from toPassword:password error:&v50])
      {
        v31 = [[(MBDriveSettingsContext *)self->_settingsContext drive] uploadPropertyList:[(MBProperties *)v26 propertyList] toPath:[(MBDriveSettingsContext *)self->_settingsContext driveSnapshotPropertiesPath] options:0 error:&v50];
        goto LABEL_52;
      }

      if ([MBError isError:v50 withCode:207])
      {
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Password in keychain doesn't match snapshot keybag", buf, 2u);
          _MBLog();
        }

        goto LABEL_78;
      }

LABEL_89:
      if (error)
      {
        v23 = 0;
        *error = v50;
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    if (![MBError isError:v50 withCode:4])
    {
      if (error)
      {
        v16 = [MBBackupHelper driveReadError:v50 description:@"Error reading snapshot manifest properties"];
        goto LABEL_27;
      }

      goto LABEL_91;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "No snapshot properties found", buf, 2u);
      _MBLog();
    }

    v34 = [MBDriveProperties propertiesWithDrive:[(MBDriveSettingsContext *)self->_settingsContext drive] path:[(MBDriveSettingsContext *)self->_settingsContext driveBackupPropertiesPath] error:&v50];
    v35 = v34;
    if (v34)
    {
      if (![(MBProperties *)v34 encrypted])
      {
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Backup not encrypted", buf, 2u);
          _MBLog();
        }

        goto LABEL_78;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Changing backup properties password", buf, 2u);
        _MBLog();
      }

      if (v18)
      {
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Skipping change backup properties password - oldPassword is NULL", buf, 2u);
          _MBLog();
        }

        goto LABEL_78;
      }

      if (![(MBDriveEncryptionManager *)self _changeBackupKeyBagPasswordInProperties:v35 fromPassword:from toPassword:password error:&v50])
      {
        if ([MBError isError:v50 withCode:207])
        {
          v42 = MBGetDefaultLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Password in keychain doesn't match backup keybag", buf, 2u);
            _MBLog();
          }

          goto LABEL_78;
        }

        goto LABEL_89;
      }

      if (![[(MBDriveSettingsContext *)self->_settingsContext drive] uploadPropertyList:[(MBProperties *)v35 propertyList] toPath:[(MBDriveSettingsContext *)self->_settingsContext driveBackupPropertiesPath] options:0 error:error])
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (![MBError isError:v50 withCode:4])
      {
        if (error)
        {
          v16 = [MBBackupHelper driveReadError:v50 description:@"Error reading backup manifest properties"];
          goto LABEL_27;
        }

        goto LABEL_91;
      }

      v40 = MBGetDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "No properties found in backup or snapshot", buf, 2u);
        _MBLog();
      }
    }

LABEL_78:
    v50 = 0;
    goto LABEL_53;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v52 = 30;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Timed out waiting %lld minutes for passcode", buf, 0xCu);
    v44 = 30;
    _MBLog();
  }

  [v10 invalidate];

  if (!error)
  {
    goto LABEL_91;
  }

  v16 = [MBError errorWithCode:208 format:@"Device locked - timeout waiting for passcode entry"];
LABEL_27:
  v23 = 0;
  *error = v16;
LABEL_92:
  _Block_object_dispose(&v46, 8);
  return v23;
}

- (BOOL)setPasswordInKeychain:(id)keychain error:(id *)error
{
  v7 = 0;
  if ([MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v7])
  {
    if (keychain)
    {
      return [MBKeychainManager updateLocalBackupPassword:keychain error:error];
    }

    else
    {
      return [MBKeychainManager removeLocalBackupPasswordAndReturnError:error];
    }
  }

  else if ([MBError isError:v7 withCode:4])
  {
    if (keychain)
    {
      return [MBKeychainManager addLocalBackupPassword:keychain error:error];
    }

    else
    {
      return 1;
    }
  }

  else
  {
    result = 0;
    if (error)
    {
      *error = v7;
    }
  }

  return result;
}

- (BOOL)makeLockdownAndKeychainConsistentWithError:(id *)error
{
  v10 = 0;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Making lockdown and keychain consistent", v9, 2u);
    _MBLog();
  }

  if ([MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v10])
  {
    selfCopy2 = self;
    v7 = 1;
    return [(MBDriveEncryptionManager *)selfCopy2 setWillEncryptInLockdown:v7 error:error];
  }

  if ([MBError isError:v10 withCode:4])
  {
    selfCopy2 = self;
    v7 = 0;
    return [(MBDriveEncryptionManager *)selfCopy2 setWillEncryptInLockdown:v7 error:error];
  }

  result = 0;
  if (error)
  {
    *error = v10;
  }

  return result;
}

@end