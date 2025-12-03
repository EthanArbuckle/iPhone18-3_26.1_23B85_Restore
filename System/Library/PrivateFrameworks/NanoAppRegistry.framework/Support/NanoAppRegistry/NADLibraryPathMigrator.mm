@interface NADLibraryPathMigrator
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error movingItemAtURL:(id)l toURL:(id)rL;
- (NADLibraryPathMigrator)initWithSourceURL:(id)l destinationURL:(id)rL;
- (void)migrate;
@end

@implementation NADLibraryPathMigrator

- (NADLibraryPathMigrator)initWithSourceURL:(id)l destinationURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = NADLibraryPathMigrator;
  v8 = [(NADLibraryPathMigrator *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    sourceURL = v8->_sourceURL;
    v8->_sourceURL = v9;

    v11 = [rLCopy copy];
    destinationURL = v8->_destinationURL;
    v8->_destinationURL = v11;
  }

  return v8;
}

- (void)migrate
{
  v3 = objc_alloc_init(NSFileManager);
  [v3 setDelegate:self];
  sourceURL = [(NADLibraryPathMigrator *)self sourceURL];
  destinationURL = [(NADLibraryPathMigrator *)self destinationURL];
  v17 = 0;
  v6 = [v3 moveItemAtURL:sourceURL toURL:destinationURL error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = nar_workspace_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = sourceURL;
      v20 = 2112;
      v21 = destinationURL;
      v10 = "Migrated store from %@ to %@";
      v11 = v9;
      v12 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_13:

    goto LABEL_14;
  }

  domain = [v7 domain];
  v14 = [domain isEqualToString:NSCocoaErrorDomain];

  if (v14)
  {
    code = [v8 code];
    v16 = nar_workspace_log();
    v9 = v16;
    if (code == 516)
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
      if (code != 4)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v19 = sourceURL;
          v20 = 2112;
          v21 = destinationURL;
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

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error movingItemAtURL:(id)l toURL:(id)rL
{
  managerCopy = manager;
  errorCopy = error;
  lCopy = l;
  rLCopy = rL;
  domain = [errorCopy domain];
  if (![domain isEqualToString:NSCocoaErrorDomain] || objc_msgSend(errorCopy, "code") != 516)
  {
LABEL_9:

    goto LABEL_10;
  }

  path = [lCopy path];
  v15 = [managerCopy fileExistsAtPath:path];

  if (!v15)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v21 = 0;
  v16 = [managerCopy removeItemAtURL:rLCopy error:&v21];
  v17 = v21;
  domain = v17;
  if ((v16 & 1) == 0)
  {
    v19 = nar_workspace_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = rLCopy;
      v24 = 2112;
      v25 = lCopy;
      v26 = 2112;
      v27 = domain;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error removing item at %@ trying to move item from %@: %@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

@end