@interface NBBackupIndexManager
- (BOOL)shouldLoadiCloudBackups;
- (NBBackupIndexManager)initWithiCloudBackup:(id)a3;
- (id)_metadataIndexReadFromDiskIfNeeded;
- (id)metadataIndexReadFromDiskIfNeeded;
- (id)newBackupUUID;
- (id)pathToBackup:(id)a3;
- (id)pathToBackupID:(id)a3;
- (id)pathToBackupIndex;
- (id)persistMetadataIndex;
- (void)allBackupsWithTimeout:(int64_t)a3 completion:(id)a4;
- (void)backupForID:(id)a3 completion:(id)a4;
- (void)createNewBackup:(id)a3;
- (void)deleteBackupWithID:(id)a3 withCompletion:(id)a4;
- (void)iCloudBackupsWithTimeout:(int64_t)a3 completion:(id)a4;
- (void)loadiCloudBackups:(int64_t)a3 completion:(id)a4;
- (void)localBackupsWithCompletion:(id)a3;
- (void)pruneLocalBackups;
- (void)purgeCache;
- (void)removeICloudBackupsFromIndex;
@end

@implementation NBBackupIndexManager

- (BOOL)shouldLoadiCloudBackups
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v2 aa_primaryAppleAccount];
    v6 = [v5 aa_altDSID];
    v7 = [v4 authKitAccountWithAltDSID:v6];

    v8 = [v4 securityLevelForAccount:v7];
    v9 = v8 == 4;
    if (v8 != 4)
    {
      v10 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found primary account, but not HSA2.  iCloud backups will not be loaded", buf, 2u);
      }
    }
  }

  else
  {
    v11 = nb_daemon_log;
    v9 = 0;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No primary account.  iCloud Backups will not be loaded", v13, 2u);
      v9 = 0;
    }
  }

  return v9;
}

- (NBBackupIndexManager)initWithiCloudBackup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NBBackupIndexManager;
  v6 = [(NBBackupIndexManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iCloudBackup, a3);
  }

  return v7;
}

- (void)allBackupsWithTimeout:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(NBBackupIndexManager *)self removeICloudBackupsFromIndex];
  v7 = [(NBBackupIndexManager *)self metadataIndexReadFromDiskIfNeeded];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000042BC;
  v9[3] = &unk_10002C8C0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(NBBackupIndexManager *)self loadiCloudBackups:a3 completion:v9];
}

- (void)iCloudBackupsWithTimeout:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (!self->_metadataIndex)
  {
    v7 = objc_opt_new();
    metadataIndex = self->_metadataIndex;
    self->_metadataIndex = v7;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000044E4;
  v10[3] = &unk_10002C8E8;
  v11 = v6;
  v9 = v6;
  [(NBBackupIndexManager *)self loadiCloudBackups:a3 completion:v10];
}

- (void)localBackupsWithCompletion:(id)a3
{
  v4 = a3;
  metadataIndex = self->_metadataIndex;
  self->_metadataIndex = 0;

  v6 = [(NBBackupIndexManager *)self metadataIndexReadFromDiskIfNeeded];
  v7 = self->_metadataIndex;
  self->_metadataIndex = v6;

  v8 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(NSMutableDictionary *)self->_metadataIndex allValues];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (![v14 backupType])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v4[2](v4, v8);
}

- (void)backupForID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NBBackupIndexManager *)self metadataIndexReadFromDiskIfNeeded];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:v6];
    v7[2](v7, v10);
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000048C0;
    v11[3] = &unk_10002C910;
    v13 = v7;
    v12 = v6;
    [(NBBackupIndexManager *)self loadiCloudBackups:0 completion:v11];
  }
}

- (id)pathToBackup:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(NBBackupIndexManager *)self pathToBackupID:v4];

  return v5;
}

- (id)pathToBackupID:(id)a3
{
  v3 = a3;
  v4 = NBBackupDirectoryPath();
  v5 = [v3 UUIDString];

  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

- (void)createNewBackup:(id)a3
{
  v4 = a3;
  v5 = [(NBBackupIndexManager *)self newBackupUUID];
  v6 = [(NBBackupIndexManager *)self pathToBackupID:v5];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004B60;
  v11[3] = &unk_10002C938;
  v14 = &v15;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v9 = objc_retainBlock(v11);
  v4[2](v4, v7, v8, v9);
  if ((v16[3] & 1) == 0)
  {
    v10 = (v9[2])(v9, 0);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)deleteBackupWithID:(id)a3 withCompletion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004CC4;
  v8[3] = &unk_10002C988;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(NBBackupIndexManager *)self backupForID:v7 completion:v8];
}

- (void)pruneLocalBackups
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000050BC;
  v2[3] = &unk_10002CA18;
  v2[4] = self;
  [(NBBackupIndexManager *)self localBackupsWithCompletion:v2];
}

- (void)purgeCache
{
  metadataIndex = self->_metadataIndex;
  self->_metadataIndex = 0;

  v4 = objc_opt_new();
  v5 = self->_metadataIndex;
  self->_metadataIndex = v4;

  _objc_release_x1();
}

- (void)loadiCloudBackups:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  if ([(NBBackupIndexManager *)self shouldLoadiCloudBackups])
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    if (a3)
    {
      v7 = dispatch_time(0, 1000000000 * a3);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005710;
      block[3] = &unk_10002CA40;
      v18 = v20;
      v17 = v6;
      objc_copyWeak(&v19, &location);
      dispatch_after(v7, &_dispatch_main_q, block);
      objc_destroyWeak(&v19);
    }

    v8 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "got iCloud HSA2 account, ask for backups from iCloud", buf, 2u);
    }

    iCloudBackup = self->_iCloudBackup;
    if (!iCloudBackup)
    {
      v10 = objc_opt_new();
      v11 = self->_iCloudBackup;
      self->_iCloudBackup = v10;

      iCloudBackup = self->_iCloudBackup;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000057D0;
    v12[3] = &unk_10002CA68;
    v14 = v20;
    v13 = v6;
    [(NBBackupiCloud *)iCloudBackup backupList:v12];

    _Block_object_dispose(v20, 8);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  objc_destroyWeak(&location);
}

- (void)removeICloudBackupsFromIndex
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_metadataIndex allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 backupType] == 1)
        {
          metadataIndex = self->_metadataIndex;
          v10 = [v8 uuid];
          [(NSMutableDictionary *)metadataIndex removeObjectForKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)metadataIndexReadFromDiskIfNeeded
{
  metadataIndex = self->_metadataIndex;
  if (!metadataIndex || ![(NSMutableDictionary *)metadataIndex count])
  {
    v4 = [(NBBackupIndexManager *)self _metadataIndexReadFromDiskIfNeeded];
    v5 = self->_metadataIndex;
    self->_metadataIndex = v4;
  }

  v6 = self->_metadataIndex;

  return v6;
}

- (id)_metadataIndexReadFromDiskIfNeeded
{
  v3 = [(NBBackupIndexManager *)self pathToBackupIndex];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v13 count:3];
  v5 = [NSSet setWithArray:v4, v13, v14];

  v6 = [NBKeyedArchiverUtil unarchiveObjectOfClasses:v5 withFile:v3];
  metadataIndex = self->_metadataIndex;
  self->_metadataIndex = v6;

  v8 = self->_metadataIndex;
  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = self->_metadataIndex;
    self->_metadataIndex = v9;

    v8 = self->_metadataIndex;
  }

  v11 = v8;

  return v8;
}

- (id)persistMetadataIndex
{
  v3 = NBBackupDirectoryPath();
  v4 = [(NBBackupIndexManager *)self pathToBackupIndex];
  metadataIndex = self->_metadataIndex;
  if (metadataIndex && [(NSMutableDictionary *)metadataIndex count])
  {
    v6 = [NBKeyedArchiverUtil archiveObject:self->_metadataIndex];
    v15 = 0;
    [v6 writeToFile:v4 options:268435457 error:&v15];
    v7 = v15;
    if (v7)
    {
      v8 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to write index file (%@) with error: (%@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = +[NSFileManager defaultManager];
    v14 = 0;
    [v9 removeItemAtPath:v3 error:&v14];
    v7 = v14;

    if (!v7)
    {
      goto LABEL_14;
    }

    v10 = [v7 domain];
    if ([v10 isEqualToString:NSCocoaErrorDomain])
    {
      v11 = [v7 code];

      if (v11 == 4)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v12 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to delete to-be-empty backup directory (%@) with error: (%@)", buf, 0x16u);
    }
  }

LABEL_14:

  return v7;
}

- (id)pathToBackupIndex
{
  if (qword_100034AC8 != -1)
  {
    sub_10001D764();
  }

  v3 = qword_100034AC0;

  return v3;
}

- (id)newBackupUUID
{
  v3 = [(NBBackupIndexManager *)self _metadataIndexReadFromDiskIfNeeded];
  v4 = +[NSFileManager defaultManager];
  v5 = 0;
  do
  {
    while (1)
    {
      do
      {
        v6 = v5;
        v5 = +[NSUUID UUID];
      }

      while (!v5);
      v7 = [v3 objectForKeyedSubscript:v5];
      if (!v7)
      {
        break;
      }
    }

    v8 = [(NBBackupIndexManager *)self pathToBackupID:v5];
    v9 = [v4 fileExistsAtPath:v8];
  }

  while ((v9 & 1) != 0);

  return v5;
}

@end