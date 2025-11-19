@interface BLBooksDEExtensionProvider
- (id)_fileDateSuffix;
- (id)attachmentFromURL:(id)a3 withName:(id)a4 archiveFile:(BOOL)a5 fixPermission:(BOOL)a6;
- (void)appendDatabaseAttachmentsFromURLs:(id)a3 hasSqliteSuffix:(BOOL)a4 toArray:(id)a5;
@end

@implementation BLBooksDEExtensionProvider

- (void)appendDatabaseAttachmentsFromURLs:(id)a3 hasSqliteSuffix:(BOOL)a4 toArray:(id)a5
{
  v8 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100000DAC;
  v14[4] = sub_100000DBC;
  v15 = @"*.sqlite";
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100000DC4;
  v10[3] = &unk_100008200;
  v13 = a4;
  v12 = v14;
  v10[4] = self;
  v9 = a5;
  v11 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

- (id)attachmentFromURL:(id)a3 withName:(id)a4 archiveFile:(BOOL)a5 fixPermission:(BOOL)a6
{
  v6 = a6;
  v38 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v10 stringByDeletingPathExtension];
  v12 = [(BLBooksDEExtensionProvider *)self _fileDateSuffix];
  v13 = [v11 stringByAppendingString:v12];
  v14 = [v9 pathExtension];
  v15 = [v13 stringByAppendingPathExtension:v14];

  v16 = NSTemporaryDirectory();
  v50[0] = v16;
  v50[1] = v15;
  v17 = [NSArray arrayWithObjects:v50 count:2];
  v18 = [NSURL fileURLWithPathComponents:v17];

  v19 = +[NSFileManager defaultManager];
  v40 = 0;
  v20 = [v19 copyItemAtURL:v9 toURL:v18 error:&v40];
  v21 = v40;

  if (v20)
  {
    if (v6)
    {
      memset(&v49, 0, sizeof(v49));
      v22 = [v18 path];
      v23 = stat([v22 UTF8String], &v49);

      if (v23)
      {
        v24 = BLBooksDiagnosticExtensionLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v18 path];
          v26 = __error();
          v27 = strerror(*v26);
          *buf = 138412546;
          v42 = v25;
          v43 = 2080;
          *v44 = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not stat %@: %s", buf, 0x16u);
        }

        v28 = v21;
      }

      else
      {
        v47 = NSFilePosixPermissions;
        v37 = v49.st_mode | 0x1A4;
        v31 = [NSNumber numberWithUnsignedShort:?];
        v48 = v31;
        v24 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

        v32 = +[NSFileManager defaultManager];
        v33 = [v18 path];
        v39 = v21;
        [v32 setAttributes:v24 ofItemAtPath:v33 error:&v39];
        v28 = v39;

        if (v28)
        {
          v34 = BLBooksDiagnosticExtensionLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v42 = v10;
            v43 = 1024;
            *v44 = v37;
            *&v44[4] = 2112;
            *&v44[6] = v18;
            v45 = 2112;
            v46 = v28;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to set permission %@ to (%3o), exportURL: %@ %@", buf, 0x26u);
          }
        }
      }

      v21 = v28;
    }

    if (v38)
    {
      v35 = [DEArchiver archiveFile:v18 deleteOriginal:1];
      v30 = [DEAttachmentItem attachmentWithPathURL:v35];
    }

    else
    {
      v30 = [DEAttachmentItem attachmentWithPathURL:v18];
    }
  }

  else
  {
    v29 = BLBooksDiagnosticExtensionLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v49.st_dev = 138412802;
      *&v49.st_mode = v10;
      WORD2(v49.st_ino) = 2112;
      *(&v49.st_ino + 6) = v9;
      HIWORD(v49.st_gid) = 2112;
      *&v49.st_rdev = v21;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to copy %@, sourceURL: %@ %@", &v49, 0x20u);
    }

    v30 = 0;
  }

  return v30;
}

- (id)_fileDateSuffix
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"-yyyy.MM.dd_HH-mm"];
  v3 = +[NSDate date];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

@end