@interface MBServiceEncryptionManager
- (MBServiceEncryptionManager)initWithSettingsContext:(id)a3;
- (id)loadRestoreKeyBagsByIDWithError:(id *)a3;
- (void)_exportKeychain;
- (void)dealloc;
- (void)keybagIsLocking;
- (void)keybagIsUnlocked;
@end

@implementation MBServiceEncryptionManager

- (MBServiceEncryptionManager)initWithSettingsContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = MBServiceEncryptionManager;
  v4 = [(MBServiceEncryptionManager *)&v6 init];
  if (v4)
  {
    v4->_settingsContext = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBServiceEncryptionManager;
  [(MBServiceEncryptionManager *)&v3 dealloc];
}

- (id)loadRestoreKeyBagsByIDWithError:(id *)a3
{
  v28 = 0;
  v4 = +[NSMutableDictionary dictionary];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Loading restore keybag", buf, 2u);
    _MBLog();
  }

  v6 = [NSData dataWithContentsOfFile:@"/var/mobile/Library/Backup/RestoreKeyBag.plist" options:0 error:&v28];
  if (!v6)
  {
    if (!a3)
    {
      return 0;
    }

    v19 = [MBError errorForNSError:v28 path:@"/var/mobile/Library/Backup/RestoreKeyBag.plist" format:@"Error reading restore keybag file"];
    goto LABEL_28;
  }

  v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v28];
  if (!v7)
  {
    v4 = 0;
    if (!a3 || !v28)
    {
      return v4;
    }

    v20 = 1;
LABEL_27:
    v19 = [MBError errorWithCode:"errorWithCode:error:format:" error:v20 format:?];
LABEL_28:
    v4 = 0;
    *a3 = v19;
    return v4;
  }

  v8 = v7;
  v9 = [v7 objectForKeyedSubscript:@"keybagSecret"];
  v10 = [v8 objectForKeyedSubscript:@"keybagDatasByID"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v11)
  {
    return v4;
  }

  v12 = v11;
  v22 = a3;
  v13 = *v24;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v23 + 1) + 8 * i);
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 integerValue]);
      v17 = +[MBKeyBag OTAKeyBagWithData:error:](MBKeyBag, "OTAKeyBagWithData:error:", [v10 objectForKeyedSubscript:v15], &v28);
      if (!v17)
      {
        v4 = 0;
        a3 = v22;
        if (!v22 || !v28)
        {
          return v4;
        }

LABEL_26:
        v20 = [v28 code];
        goto LABEL_27;
      }

      v18 = v17;
      if (([v17 unlockWithSecret:v9 error:&v28] & 1) == 0)
      {
        v4 = 0;
        a3 = v22;
        if (!v22 || !v28)
        {
          return v4;
        }

        goto LABEL_26;
      }

      [v4 setObject:v18 forKeyedSubscript:v16];
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v12)
    {
      continue;
    }

    return v4;
  }
}

- (void)keybagIsLocking
{
  [(MBServiceEncryptionManager *)self _findMissingEncryptionKeys];

  [(MBServiceEncryptionManager *)self _exportKeychain];
}

- (void)_exportKeychain
{
  v4 = 0;
  if (![MBKeychainPlugin exportKeychainForCKBackupEngine:0 error:&v4])
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MBError descriptionForError:v4];
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Error exporting keychain: %@", buf, 0xCu);
      [MBError descriptionForError:v4];
      _MBLog();
    }
  }
}

- (void)keybagIsUnlocked
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10022F4F0;
  v2[3] = &unk_1003C2180;
  v2[4] = self;
  MBPerformWithCache(v2);
}

@end