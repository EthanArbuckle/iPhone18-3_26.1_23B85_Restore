@interface SMTUtils
+ (id)decompressArchiveWithURL:(id)l outError:(id *)error;
+ (void)cleanupTemporaryDirectory;
+ (void)initialize;
@end

@implementation SMTUtils

+ (id)decompressArchiveWithURL:(id)l outError:(id *)error
{
  lCopy = l;
  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6 isDirectory:1];
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v10 = [v7 URLByAppendingPathComponent:uUIDString];

  v11 = +[NSFileManager defaultManager];
  v39 = 0;
  LOBYTE(v8) = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v39];
  v12 = v39;

  if ((v8 & 1) == 0)
  {
    v16 = qword_10003FF88;
    if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v10;
      v50 = 2112;
      v51 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not make temporary attachment directory at %@: %@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_23;
      }
    }

    else if (!error)
    {
LABEL_23:
      v18 = 0;
      goto LABEL_24;
    }

    v17 = v12;
    v18 = 0;
    *error = v12;
    goto LABEL_24;
  }

  archive_read_new();
  if (archive_read_support_filter_all())
  {
    v13 = qword_10003FF88;
    if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_ERROR))
    {
      v29 = v13;
      v30 = archive_error_string();
      *buf = 136315138;
      v49 = v30;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to specify compression algorithm: %s", buf, 0xCu);
    }

    archive_read_free();
    if (!error)
    {
      goto LABEL_23;
    }

    v46 = NSLocalizedDescriptionKey;
    v47 = @"Failed to specify compression algorithm";
    v14 = &v47;
    v15 = &v46;
    goto LABEL_22;
  }

  if (archive_read_support_format_all())
  {
    v19 = qword_10003FF88;
    if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_ERROR))
    {
      v35 = v19;
      v36 = archive_error_string();
      *buf = 136315138;
      v49 = v36;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to specify format: %s", buf, 0xCu);
    }

    archive_read_free();
    if (!error)
    {
      goto LABEL_23;
    }

    v44 = NSLocalizedDescriptionKey;
    v45 = @"Failed to specify format";
    v14 = &v45;
    v15 = &v44;
    goto LABEL_22;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v21 = qword_10003FF88;
  if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = fileSystemRepresentation;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Start extracting archive at path: %s", buf, 0xCu);
  }

  if (archive_read_open_filename())
  {
    v22 = qword_10003FF88;
    if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_ERROR))
    {
      v37 = v22;
      v38 = archive_error_string();
      *buf = 136315138;
      v49 = v38;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to open archive for reading: %s", buf, 0xCu);
    }

    archive_read_free();
    if (!error)
    {
      goto LABEL_23;
    }

    v42 = NSLocalizedDescriptionKey;
    v43 = @"Failed to open file for reading";
    v14 = &v43;
    v15 = &v42;
LABEL_22:
    v23 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:1];
    *error = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:5 userInfo:v23];

    goto LABEL_23;
  }

  v25 = objc_alloc_init(NSMutableArray);
  while (!archive_read_next_header())
  {
    v26 = [NSString stringWithUTF8String:archive_entry_pathname()];
    v27 = [v10 URLByAppendingPathComponent:v26];

    v28 = qword_10003FF88;
    if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v49 = v27;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Entry extraction path: %@", buf, 0xCu);
    }

    [v27 fileSystemRepresentation];
    archive_entry_set_pathname();
    if (archive_read_extract())
    {
      v32 = qword_10003FF88;
      if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v27;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unable to extract file to: %@", buf, 0xCu);
      }

      archive_read_free();
      if (error)
      {
        v40 = NSLocalizedDescriptionKey;
        v33 = [NSString stringWithFormat:@"Unable to extract file to: %@", v27];
        v41 = v33;
        v34 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        *error = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:5 userInfo:v34];
      }

      v18 = 0;
      goto LABEL_43;
    }

    [v25 addObject:v27];
  }

  archive_read_free();
  v31 = qword_10003FF88;
  if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = v10;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Finished extracting archive to: %@", buf, 0xCu);
  }

  v18 = v25;
LABEL_43:

LABEL_24:

  return v18;
}

+ (void)cleanupTemporaryDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1];

  v4 = +[NSFileManager defaultManager];
  v23 = 0;
  v17 = v3;
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v23];
  v6 = v23;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        v12 = v6;
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = +[NSFileManager defaultManager];
        v18 = v12;
        [v14 removeItemAtURL:v13 error:&v18];
        v6 = v18;

        if (v6)
        {
          v15 = qword_10003FF88;
          if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v6;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to clean temporary attachment directory: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = qword_10003FF88;
  if (os_log_type_enabled(qword_10003FF88, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Successfully cleaned temporary attachment directory: %@", buf, 0xCu);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10003FF88 = os_log_create("com.apple.speech.speechmodeltraining", "SMTUtils");

    _objc_release_x1();
  }
}

@end