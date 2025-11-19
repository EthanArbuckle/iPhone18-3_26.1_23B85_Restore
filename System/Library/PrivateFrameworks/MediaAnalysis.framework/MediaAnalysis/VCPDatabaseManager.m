@interface VCPDatabaseManager
+ (BOOL)existsDatabaseForPhotoLibrary:(id)a3;
+ (id)sharedDatabaseForPhotoLibrary:(id)a3;
+ (id)sharedDatabaseManager;
+ (int)_removeLegacyDatabaseFileAtPath:(id)a3 fileLabel:(id)a4;
+ (int)removeLegacyDatabaseFilesForPhotoLibrary:(id)a3;
+ (void)releaseSharedDatabaseForPhotoLibrary:(id)a3;
- (VCPDatabaseManager)init;
- (id)sharedDatabaseForPhotoLibrary:(id)a3;
- (void)releaseSharedDatabaseForPhotoLibrary:(id)a3;
@end

@implementation VCPDatabaseManager

- (VCPDatabaseManager)init
{
  v8.receiver = self;
  v8.super_class = VCPDatabaseManager;
  v2 = [(VCPDatabaseManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysisd.VCPDatabaseManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableDictionary dictionary];
    databases = v2->_databases;
    v2->_databases = v5;
  }

  return v2;
}

+ (id)sharedDatabaseManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D47F0;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B8388 != -1)
  {
    dispatch_once(&qword_1002B8388, block);
  }

  v2 = qword_1002B8380;

  return v2;
}

- (id)sharedDatabaseForPhotoLibrary:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000D4988;
  v18 = sub_1000D4998;
  v19 = 0;
  v5 = [v4 photoLibraryURL];
  v6 = v5;
  if (v5)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D49A0;
    v10[3] = &unk_100285DB8;
    v13 = &v14;
    v10[4] = self;
    v11 = v5;
    v12 = v4;
    dispatch_sync(queue, v10);
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (id)sharedDatabaseForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedDatabaseManager];
  v5 = [v4 sharedDatabaseForPhotoLibrary:v3];

  return v5;
}

+ (BOOL)existsDatabaseForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 vcp_mediaAnalysisDatabaseFilepath];

  LOBYTE(v3) = [v4 fileExistsAtPath:v5];
  return v3;
}

- (void)releaseSharedDatabaseForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (([v4 isSystemPhotoLibrary] & 1) == 0)
  {
    v5 = [v4 photoLibraryURL];
    v6 = v5;
    if (v5)
    {
      queue = self->_queue;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000D4BF4;
      v8[3] = &unk_100282F50;
      v8[4] = self;
      v9 = v5;
      dispatch_sync(queue, v8);
    }
  }
}

+ (void)releaseSharedDatabaseForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedDatabaseManager];
  [v4 releaseSharedDatabaseForPhotoLibrary:v3];
}

+ (int)_removeLegacyDatabaseFileAtPath:(id)a3 fileLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v5];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v16 = 0;
    v10 = [v9 removeItemAtPath:v5 error:&v16];
    v11 = v16;

    v12 = MediaAnalysisLogLevel();
    if (v10)
    {
      if (v12 >= 7)
      {
        v13 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          *buf = 138412546;
          v18 = v6;
          v19 = 2112;
          v20 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[VCPDatabaseManager] Removed legacy database %@ file at path %@", buf, 0x16u);
        }
      }

      v8 = 0;
    }

    else
    {
      if (v12 >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          *buf = 138412802;
          v18 = v6;
          v19 = 2112;
          v20 = v5;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[VCPDatabaseManager] Failed to remove legacy database %@ file at path %@ - %@", buf, 0x20u);
        }
      }

      v8 = [v11 code];
    }
  }

  return v8;
}

+ (int)removeLegacyDatabaseFilesForPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedDatabaseForPhotoLibrary:v4];
  [v5 flush];
  v6 = [v4 vcp_mediaAnalysisDatabaseFilepath];
  v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:v6 fileLabel:@".db"];
  if (!v7)
  {
    v8 = [v6 stringByAppendingString:@"-wal"];
    v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:v8 fileLabel:@".db-wal"];
    if (!v7)
    {
      v9 = [v6 stringByAppendingString:@"-shm"];
      v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:v9 fileLabel:@".db-shm"];
      if (!v7)
      {
        v10 = [v4 vcp_mediaAnalysisBackupFilepath];
        v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:v10 fileLabel:@"backup"];
      }
    }
  }

  return v7;
}

@end