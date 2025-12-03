@interface ShortcutsDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
- (id)exportedDatabaseAttachment;
- (id)exportedSyncEventsAttachment;
@end

@implementation ShortcutsDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = +[NSMutableArray array];
  exportedDatabaseAttachment = [(ShortcutsDiagnosticExtension *)self exportedDatabaseAttachment];
  if (exportedDatabaseAttachment)
  {
    [v4 addObject:exportedDatabaseAttachment];
  }

  exportedSyncEventsAttachment = [(ShortcutsDiagnosticExtension *)self exportedSyncEventsAttachment];
  if (exportedSyncEventsAttachment)
  {
    [v4 addObject:exportedSyncEventsAttachment];
  }

  return v4;
}

- (id)exportedSyncEventsAttachment
{
  v2 = +[NSURL wf_shortcutsDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"synclog.db"];
  v9 = 0;
  v4 = [v3 checkResourceIsReachableAndReturnError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [DEAttachmentItem attachmentWithPathURL:v3];
    [v6 setShouldCompress:&__kCFBooleanTrue];
    [v6 setDeleteOnAttach:&__kCFBooleanFalse];
  }

  else
  {
    v7 = sub_100000F20();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[ShortcutsDiagnosticExtension exportedSyncEventsAttachment]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Sync events database not reachable: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)exportedDatabaseAttachment
{
  v2 = sub_100000F20();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Loading database", buf, 0xCu);
  }

  v24 = 0;
  v3 = [[WFDatabase alloc] initWithPersistenceMode:0 error:&v24];
  v4 = v24;
  if (v3)
  {
    context = [v3 context];
    persistentStoreCoordinator = [context persistentStoreCoordinator];

    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    if (!firstObject)
    {
      v10 = sub_100000F20();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to load persistent store from database", buf, 0xCu);
      }

      v19 = 0;
      goto LABEL_27;
    }

    v9 = NSTemporaryDirectory();
    v10 = [NSURL fileURLWithPath:v9];

    v11 = [v10 URLByAppendingPathComponent:@"Shortcuts.sqlite"];
    if ([v11 checkResourceIsReachableAndReturnError:0])
    {
      v12 = sub_100000F20();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Found existing exported database at %@. Removing it.", buf, 0x16u);
      }

      v13 = +[NSFileManager defaultManager];
      v23 = v4;
      v14 = [v13 removeItemAtURL:v11 error:&v23];
      v15 = v23;

      if ((v14 & 1) == 0)
      {
        v16 = sub_100000F20();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to remove existing database: %@", buf, 0x16u);
        }

        goto LABEL_25;
      }

      v4 = v15;
    }

    v25 = NSSQLitePragmasOption;
    v26 = &off_1000041F8;
    v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v17 = sub_100000F20();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Saving a copy of the database to %@", buf, 0x16u);
    }

    v22 = v4;
    v18 = [persistentStoreCoordinator migratePersistentStore:firstObject toURL:v11 options:v16 withType:NSSQLiteStoreType error:&v22];
    v15 = v22;

    if (v18)
    {
      v19 = [DEAttachmentItem attachmentWithPathURL:v11];
      [v19 setShouldCompress:&__kCFBooleanTrue];
      [v19 setDeleteOnAttach:&__kCFBooleanTrue];
LABEL_26:

      v4 = v15;
LABEL_27:

      goto LABEL_28;
    }

    v20 = sub_100000F20();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed to copy database: %@", buf, 0x16u);
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  persistentStoreCoordinator = sub_100000F20();
  if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[ShortcutsDiagnosticExtension exportedDatabaseAttachment]";
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, persistentStoreCoordinator, OS_LOG_TYPE_ERROR, "%s Unable to load database: %@", buf, 0x16u);
  }

  v19 = 0;
LABEL_28:

  return v19;
}

@end