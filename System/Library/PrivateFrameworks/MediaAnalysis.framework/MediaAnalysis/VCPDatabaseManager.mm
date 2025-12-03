@interface VCPDatabaseManager
+ (BOOL)existsDatabaseForPhotoLibrary:(id)library;
+ (id)sharedDatabaseForPhotoLibrary:(id)library;
+ (id)sharedDatabaseManager;
+ (int)_removeLegacyDatabaseFileAtPath:(id)path fileLabel:(id)label;
+ (int)removeLegacyDatabaseFilesForPhotoLibrary:(id)library;
+ (void)releaseSharedDatabaseForPhotoLibrary:(id)library;
- (VCPDatabaseManager)init;
- (id)sharedDatabaseForPhotoLibrary:(id)library;
- (void)releaseSharedDatabaseForPhotoLibrary:(id)library;
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
  block[4] = self;
  if (qword_1002B8388 != -1)
  {
    dispatch_once(&qword_1002B8388, block);
  }

  v2 = qword_1002B8380;

  return v2;
}

- (id)sharedDatabaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000D4988;
  v18 = sub_1000D4998;
  v19 = 0;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  v6 = photoLibraryURL;
  if (photoLibraryURL)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D49A0;
    v10[3] = &unk_100285DB8;
    v13 = &v14;
    v10[4] = self;
    v11 = photoLibraryURL;
    v12 = libraryCopy;
    dispatch_sync(queue, v10);
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (id)sharedDatabaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  sharedDatabaseManager = [objc_opt_class() sharedDatabaseManager];
  v5 = [sharedDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];

  return v5;
}

+ (BOOL)existsDatabaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = +[NSFileManager defaultManager];
  vcp_mediaAnalysisDatabaseFilepath = [libraryCopy vcp_mediaAnalysisDatabaseFilepath];

  LOBYTE(libraryCopy) = [v4 fileExistsAtPath:vcp_mediaAnalysisDatabaseFilepath];
  return libraryCopy;
}

- (void)releaseSharedDatabaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (([libraryCopy isSystemPhotoLibrary] & 1) == 0)
  {
    photoLibraryURL = [libraryCopy photoLibraryURL];
    v6 = photoLibraryURL;
    if (photoLibraryURL)
    {
      queue = self->_queue;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000D4BF4;
      v8[3] = &unk_100282F50;
      v8[4] = self;
      v9 = photoLibraryURL;
      dispatch_sync(queue, v8);
    }
  }
}

+ (void)releaseSharedDatabaseForPhotoLibrary:(id)library
{
  libraryCopy = library;
  sharedDatabaseManager = [objc_opt_class() sharedDatabaseManager];
  [sharedDatabaseManager releaseSharedDatabaseForPhotoLibrary:libraryCopy];
}

+ (int)_removeLegacyDatabaseFileAtPath:(id)path fileLabel:(id)label
{
  pathCopy = path;
  labelCopy = label;
  v7 = +[NSFileManager defaultManager];
  code = [v7 fileExistsAtPath:pathCopy];

  if (code)
  {
    v9 = +[NSFileManager defaultManager];
    v16 = 0;
    v10 = [v9 removeItemAtPath:pathCopy error:&v16];
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
          v18 = labelCopy;
          v19 = 2112;
          v20 = pathCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[VCPDatabaseManager] Removed legacy database %@ file at path %@", buf, 0x16u);
        }
      }

      code = 0;
    }

    else
    {
      if (v12 >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          *buf = 138412802;
          v18 = labelCopy;
          v19 = 2112;
          v20 = pathCopy;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[VCPDatabaseManager] Failed to remove legacy database %@ file at path %@ - %@", buf, 0x20u);
        }
      }

      code = [v11 code];
    }
  }

  return code;
}

+ (int)removeLegacyDatabaseFilesForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = [self sharedDatabaseForPhotoLibrary:libraryCopy];
  [v5 flush];
  vcp_mediaAnalysisDatabaseFilepath = [libraryCopy vcp_mediaAnalysisDatabaseFilepath];
  v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:vcp_mediaAnalysisDatabaseFilepath fileLabel:@".db"];
  if (!v7)
  {
    v8 = [vcp_mediaAnalysisDatabaseFilepath stringByAppendingString:@"-wal"];
    v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:v8 fileLabel:@".db-wal"];
    if (!v7)
    {
      v9 = [vcp_mediaAnalysisDatabaseFilepath stringByAppendingString:@"-shm"];
      v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:v9 fileLabel:@".db-shm"];
      if (!v7)
      {
        vcp_mediaAnalysisBackupFilepath = [libraryCopy vcp_mediaAnalysisBackupFilepath];
        v7 = [VCPDatabaseManager _removeLegacyDatabaseFileAtPath:vcp_mediaAnalysisBackupFilepath fileLabel:@"backup"];
      }
    }
  }

  return v7;
}

@end