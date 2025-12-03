@interface MBCKSQLiteCopyPlugin
- (id)endedBackupWithEngine:(id)engine error:(id)error;
- (id)startingBackupWithEngine:(id)engine;
@end

@implementation MBCKSQLiteCopyPlugin

- (id)startingBackupWithEngine:(id)engine
{
  persona = [engine persona];
  sqliteCopyDirectory = [persona sqliteCopyDirectory];

  if (mkdir([sqliteCopyDirectory fileSystemRepresentation], 0x1C0u) && *__error() != 17)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *__error();
      *buf = 138543618;
      v10 = sqliteCopyDirectory;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create the directory at %{public}@: %{errno}d", buf, 0x12u);
      v8 = *__error();
      _MBLog();
    }
  }

  return 0;
}

- (id)endedBackupWithEngine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  persona = [engineCopy persona];
  sqliteCopyDirectory = [persona sqliteCopyDirectory];

  memset(&v35, 0, sizeof(v35));
  if (lstat([sqliteCopyDirectory fileSystemRepresentation], &v35))
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      *buf = 138543618;
      v37 = sqliteCopyDirectory;
      v38 = 1024;
      LODWORD(v39) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to lstat %{public}@: %{errno}d", buf, 0x12u);
      v25 = *__error();
      _MBLog();
    }
  }

  else
  {
    v27 = engineCopy;
    v9 = +[NSFileManager defaultManager];
    v34 = errorCopy;
    v11 = [v9 contentsOfDirectoryAtPath:sqliteCopyDirectory error:&v34];
    v26 = v34;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = [sqliteCopyDirectory stringByAppendingPathComponent:v17];
          v29 = 0;
          if ([v9 fileExistsAtPath:v19 isDirectory:&v29]&& (v29 & 1) == 0)
          {
            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "MBCKSQLiteCopyPlugin: Removing %@", buf, 0xCu);
              _MBLog();
            }

            v28 = 0;
            v21 = [v9 removeItemAtPath:v19 error:&v28];
            v22 = v28;
            if ((v21 & 1) == 0)
            {
              v23 = MBGetDefaultLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v37 = v19;
                v38 = 2112;
                v39 = v22;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "MBCKSQLiteCopyPlugin: Unable to remove %@: %@", buf, 0x16u);
                _MBLog();
              }
            }
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v14);
    }

    errorCopy = v26;
    engineCopy = v27;
  }

  return 0;
}

@end