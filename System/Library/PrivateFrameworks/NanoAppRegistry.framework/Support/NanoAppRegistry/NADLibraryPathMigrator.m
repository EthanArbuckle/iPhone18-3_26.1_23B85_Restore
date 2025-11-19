@interface NADLibraryPathMigrator
- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 movingItemAtURL:(id)a5 toURL:(id)a6;
- (NADLibraryPathMigrator)initWithSourceURL:(id)a3 destinationURL:(id)a4;
- (void)migrate;
@end

@implementation NADLibraryPathMigrator

- (NADLibraryPathMigrator)initWithSourceURL:(id)a3 destinationURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NADLibraryPathMigrator;
  v8 = [(NADLibraryPathMigrator *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sourceURL = v8->_sourceURL;
    v8->_sourceURL = v9;

    v11 = [v7 copy];
    destinationURL = v8->_destinationURL;
    v8->_destinationURL = v11;
  }

  return v8;
}

- (void)migrate
{
  v3 = objc_alloc_init(NSFileManager);
  [v3 setDelegate:self];
  v4 = [(NADLibraryPathMigrator *)self sourceURL];
  v5 = [(NADLibraryPathMigrator *)self destinationURL];
  v17 = 0;
  v6 = [v3 moveItemAtURL:v4 toURL:v5 error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = nar_workspace_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      v10 = "Migrated store from %@ to %@";
      v11 = v9;
      v12 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = [v7 domain];
  v14 = [v13 isEqualToString:NSCocoaErrorDomain];

  if (v14)
  {
    v15 = [v8 code];
    v16 = nar_workspace_log();
    v9 = v16;
    if (v15 == 516)
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v10 = "Migration failed because file already exists.";
    }

    else
    {
      if (v15 != 4)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v19 = v4;
          v20 = 2112;
          v21 = v5;
          v22 = 2112;
          v23 = v8;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error migrating from %@ to %@: %@", buf, 0x20u);
        }

        goto LABEL_13;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v10 = "No file to migrate.";
    }

    v11 = v9;
    v12 = 2;
    goto LABEL_12;
  }

LABEL_14:
  [v3 setDelegate:0];
}

- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 movingItemAtURL:(id)a5 toURL:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 domain];
  if (![v13 isEqualToString:NSCocoaErrorDomain] || objc_msgSend(v10, "code") != 516)
  {
LABEL_9:

    goto LABEL_10;
  }

  v14 = [v11 path];
  v15 = [v9 fileExistsAtPath:v14];

  if (!v15)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v21 = 0;
  v16 = [v9 removeItemAtURL:v12 error:&v21];
  v17 = v21;
  v13 = v17;
  if ((v16 & 1) == 0)
  {
    v19 = nar_workspace_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = v12;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v13;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error removing item at %@ trying to move item from %@: %@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

@end