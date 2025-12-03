@interface SecureBackupViewStore
+ (id)URLForViewName:(id)name;
- (BOOL)addItem:(id)item error:(id *)error;
- (BOOL)migrateBTree:(id)tree keyClass:(id)class;
- (BOOL)migrateFromKVS;
- (BOOL)migrateView:(id)view;
- (BOOL)removeItemWithKey:(id)key error:(id *)error;
- (BOOL)resetWithKeybag:(id)keybag error:(id *)error;
- (NSData)backupData;
- (NSData)keybag;
- (NSData)keybagDigest;
- (NSData)manifestHash;
- (NSDictionary)backupDict;
- (SecureBackupViewStore)initWithViewName:(id)name recordID:(id)d;
- (void)closeStore;
@end

@implementation SecureBackupViewStore

+ (id)URLForViewName:(id)name
{
  nameCopy = name;
  v4 = sub_100002B84();
  v5 = +[NSFileManager defaultManager];
  v17 = 0;
  v6 = [v5 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v17];
  v7 = v17;
  v8 = [v6 URLByAppendingPathComponent:@"com.apple.sbd" isDirectory:1];

  if (v4)
  {
    v9 = [v8 URLByAppendingPathComponent:v4 isDirectory:1];

    v8 = v9;
  }

  v10 = [v8 URLByAppendingPathComponent:nameCopy isDirectory:1];

  v16 = v7;
  v11 = [v5 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v16];
  v12 = v16;

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100049054();
    }

    v13 = 0;
  }

  return v13;
}

- (SecureBackupViewStore)initWithViewName:(id)name recordID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = SecureBackupViewStore;
  v9 = [(SecureBackupViewStore *)&v19 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v9->_recordID, d);
  v11 = [objc_opt_class() URLForViewName:nameCopy];
  url = v10->_url;
  v10->_url = v11;

  v13 = [[SecureBackupSQLite alloc] initWithURL:v10->_url recordID:dCopy];
  db = v10->_db;
  v10->_db = v13;

  objc_storeStrong(&v10->_viewName, name);
  if (!v10->_db || !v10->_url || !v10->_viewName)
  {
    goto LABEL_10;
  }

  keybagDigest = [(SecureBackupViewStore *)v10 keybagDigest];

  if (keybagDigest)
  {
    goto LABEL_9;
  }

  v16 = CloudServicesLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = nameCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no keybag digest found, migrating view %@", buf, 0xCu);
  }

  if ([(SecureBackupViewStore *)v10 migrateView:v10->_url])
  {
LABEL_9:
    v17 = v10;
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (BOOL)addItem:(id)item error:(id *)error
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [itemCopy objectForKeyedSubscript:@"data"];
    v8 = [itemCopy objectForKeyedSubscript:@"hash"];
    v9 = [itemCopy objectForKeyedSubscript:@"class"];
    v10 = [(SecureBackupViewStore *)self db];
    v11 = [v10 addItem:v7 withKey:v8 forClass:v9 error:error];
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000490D0();
    }

    v15 = NSLocalizedDescriptionKey;
    v16 = @"Unexpected item type for kSecBackupEventAdd";
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    if (error)
    {
      *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v13];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)removeItemWithKey:(id)key error:(id *)error
{
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(SecureBackupViewStore *)self db];
    v8 = [v7 removeItemWithKey:keyCopy error:error];
  }

  else
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100049138();
    }

    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unexpected item type for kSecBackupEventRemove";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    if (error)
    {
      *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (NSDictionary)backupDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SecureBackupViewStore *)self db];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007EDC;
  v7[3] = &unk_1000750E8;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndItemsUsingBlock:v7];

  return v5;
}

- (NSData)backupData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SecureBackupViewStore *)self db];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100008110;
  v16[3] = &unk_1000750E8;
  v5 = v3;
  v17 = v5;
  [v4 enumerateKeysAndItemsUsingBlock:v16];

  if ([v5 count])
  {
    cf = 0;
    DERData = CFPropertyListCreateDERData();
    if (!DERData)
    {
      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000491A0(&cf, v7, v8, v9, v10, v11, v12, v13);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  else
  {
    DERData = 0;
  }

  return DERData;
}

- (BOOL)resetWithKeybag:(id)keybag error:(id *)error
{
  keybagCopy = keybag;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    keybagDigest = [(SecureBackupViewStore *)self keybagDigest];
    sha1Digest = [keybagCopy sha1Digest];
    v10 = [keybagDigest isEqual:sha1Digest];

    if (v10)
    {
      v11 = CloudServicesLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "keybag hasn't changed, skipping DB reset", &v18, 2u);
      }
    }

    else
    {
      v13 = [(SecureBackupViewStore *)self db];
      [v13 resetDBWithKeybag:keybagCopy];

      v14 = CloudServicesLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        viewName = [(SecureBackupViewStore *)self viewName];
        v18 = 138412290;
        v19 = viewName;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "reset manifest for view %@", &v18, 0xCu);
      }

      v11 = CloudServicesLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        peerIDs = [keybagCopy peerIDs];
        v18 = 138412290;
        v19 = peerIDs;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "backup keybag peers: %@", &v18, 0xCu);
      }
    }
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100049210();
    }

    v20 = NSLocalizedDescriptionKey;
    v21 = @"Unexpected item type for resetWithKeybag";
    v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    if (error)
    {
      *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v11];
    }
  }

  return isKindOfClass & 1;
}

- (NSData)manifestHash
{
  v2 = [(SecureBackupViewStore *)self db];
  manifestHash = [v2 manifestHash];

  return manifestHash;
}

- (NSData)keybagDigest
{
  v2 = [(SecureBackupViewStore *)self db];
  keybagDigest = [v2 keybagDigest];

  return keybagDigest;
}

- (NSData)keybag
{
  v2 = [(SecureBackupViewStore *)self db];
  keybag = [v2 keybag];

  return keybag;
}

- (void)closeStore
{
  v2 = [(SecureBackupViewStore *)self db];
  [v2 closeDB];
}

- (BOOL)migrateFromKVS
{
  v3 = +[NSUbiquitousKeyValueStore defaultStore];
  v4 = [v3 dictionaryForKey:@"com.apple.securebackup.record"];
  [v4 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        v16 = 0;
        v11 = [(SecureBackupViewStore *)self addItem:v10 error:&v16];
        v12 = v16;

        if ((v11 & 1) == 0)
        {
          v14 = CloudServicesLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100049278();
          }

          v13 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (BOOL)migrateView:(id)view
{
  viewCopy = view;
  v5 = objc_autoreleasePoolPush();
  v6 = [(SecureBackupViewStore *)self db];
  v7 = [v6 sqliteExec:@"BEGIN TRANSACTION;"];

  if (v7)
  {
    lastPathComponent = [viewCopy lastPathComponent];
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = lastPathComponent;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "migrating %@", buf, 0xCu);
    }

    v10 = [viewCopy URLByAppendingPathComponent:@"keybag.plist"];
    v11 = [[NSDictionary alloc] initWithContentsOfURL:v10];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"keybag"];
      v49 = 0;
      v14 = [(SecureBackupViewStore *)self resetWithKeybag:v13 error:&v49];
      v15 = v49;

      if (v14)
      {
        v16 = [(SecureBackupViewStore *)self db];
        v17 = [v16 sqliteExec:@"SAVEPOINT migrate_start;"];

        if (!v17)
        {
          v32 = 0;
LABEL_37:

          goto LABEL_38;
        }

        v18 = +[NSFileManager defaultManager];
        v48 = v15;
        v19 = [v18 contentsOfDirectoryAtURL:viewCopy includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v48];
        v42 = v48;

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v21)
        {
          v22 = v21;
          v38 = v18;
          v39 = v12;
          selfCopy = self;
          v40 = v5;
          v41 = viewCopy;
          v23 = *v45;
          while (2)
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v45 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v44 + 1) + 8 * i);
              v26 = objc_autoreleasePoolPush();
              pathExtension = [v25 pathExtension];
              v28 = [pathExtension isEqualToString:@"bt3"];

              if (v28)
              {
                lastPathComponent2 = [v25 lastPathComponent];
                stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];

                if (([stringByDeletingPathExtension isEqualToString:@"manifest"] & 1) == 0 && !-[SecureBackupViewStore migrateBTree:keyClass:](selfCopy, "migrateBTree:keyClass:", v25, stringByDeletingPathExtension))
                {
                  self = selfCopy;
                  if ([lastPathComponent isEqualToString:@"KeychainV0-tomb"] && -[SecureBackupViewStore migrateFromKVS](selfCopy, "migrateFromKVS"))
                  {
                    v31 = 1;
                    v5 = v40;
                    viewCopy = v41;
                  }

                  else
                  {
                    v33 = CloudServicesLog();
                    v5 = v40;
                    viewCopy = v41;
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      sub_100049348();
                    }

                    v34 = [(SecureBackupViewStore *)selfCopy db];
                    v31 = [v34 sqliteExec:@"ROLLBACK TO migrate_start;"];
                  }

                  objc_autoreleasePoolPop(v26);
                  goto LABEL_32;
                }
              }

              objc_autoreleasePoolPop(v26);
            }

            v22 = [v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

          v31 = 1;
          v5 = v40;
          viewCopy = v41;
          self = selfCopy;
LABEL_32:
          v18 = v38;
          v12 = v39;
        }

        else
        {
          v31 = 1;
        }

        v15 = v42;
      }

      else
      {
        v18 = CloudServicesLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000492E0();
        }

        v31 = 0;
      }
    }

    else
    {
      v15 = 0;
      v31 = 1;
    }

    v35 = [(SecureBackupViewStore *)self db:v38];
    v36 = [v35 sqliteExec:@"COMMIT TRANSACTION;"];

    v32 = v36 & v31;
    goto LABEL_37;
  }

  v32 = 0;
LABEL_38:
  objc_autoreleasePoolPop(v5);

  return v32;
}

- (BOOL)migrateBTree:(id)tree keyClass:(id)class
{
  treeCopy = tree;
  classCopy = class;
  v8 = dbopen([treeCopy fileSystemRepresentation], 0, 438, DB_BTREE, 0);
  if (v8)
  {
    v9 = v8;
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = (v9->seq)(v9, &v37, &v35, 3);
    if (v11)
    {
      if ((v11 & 0x80000000) == 0)
      {
LABEL_4:
        (v9->close)(v9);
        v12 = CloudServicesLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 count];
          v14 = [v10 count];
          v15 = "s";
          *buf = 134218498;
          v40 = v13;
          if (v14 == 1)
          {
            v15 = "";
          }

          v41 = 2080;
          v42 = v15;
          v43 = 2112;
          v44 = classCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "migrated %lu item%s in class %@", buf, 0x20u);
        }

        v16 = 1;
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      do
      {
        if (v38 != 20)
        {
          v30 = CloudServicesLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1000493B0(&v38);
          }

          goto LABEL_25;
        }

        v21 = [NSData alloc];
        v22 = [v21 initWithBytes:v37 length:v38];
        v23 = [v10 objectForKeyedSubscript:v22];

        if (v23)
        {
          v31 = CloudServicesLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100049434();
          }

          (v9->close)(v9);
          goto LABEL_29;
        }

        [v10 setObject:v22 forKeyedSubscript:v22];
        v24 = [NSData alloc];
        v25 = [v24 initWithBytesNoCopy:v35 length:v36 freeWhenDone:0];
        v45[0] = @"data";
        v45[1] = @"hash";
        v46[0] = v25;
        v46[1] = v22;
        v45[2] = @"class";
        v46[2] = classCopy;
        v26 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
        v34 = 0;
        v27 = [(SecureBackupViewStore *)self addItem:v26 error:&v34];
        v28 = v34;

        if ((v27 & 1) == 0)
        {
          v33 = CloudServicesLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10004949C();
          }

          (v9->close)(v9);
          v16 = 0;
          goto LABEL_30;
        }

        v29 = (v9->seq)(v9, &v37, &v35, 7);
      }

      while (!v29);
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    v30 = CloudServicesLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100049504();
    }

LABEL_25:

    (v9->close)(v9);
LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

  v17 = treeCopy;
  v18 = *__error();
  v19 = CloudServicesLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if (v18 == 79)
  {
    if (v20)
    {
      sub_100049618(v19);
    }

    v16 = 1;
    treeCopy = v17;
  }

  else
  {
    treeCopy = v17;
    if (v20)
    {
      sub_10004958C();
    }

    v16 = 0;
  }

LABEL_31:

  return v16;
}

@end