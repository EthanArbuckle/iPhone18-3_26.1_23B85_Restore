@interface KeepAliveManager
+ (void)createPathFile;
+ (void)deletePathFile;
@end

@implementation KeepAliveManager

+ (void)createPathFile
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/PairedSyncKeepAlive" isDirectory:0];

  if ((v3 & 1) == 0)
  {
    v4 = psd_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating KeepAlive file", buf, 2u);
      }
    }

    v7 = +[NSData data];
    v16 = 0;
    v8 = [v7 writeToFile:@"/var/mobile/Library/PairedSyncKeepAlive" options:268435457 error:&v16];
    v9 = v16;

    if (v8)
    {
      goto LABEL_15;
    }

    domain = [v9 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v9 code];

      if (code == 516)
      {
LABEL_15:
        byte_100038060 = 0;

        return;
      }
    }

    else
    {
    }

    v12 = psd_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = psd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        psy_safeDescription = [v9 psy_safeDescription];
        *buf = 138543362;
        v18 = psy_safeDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to create KeepAlive file with error: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }
}

+ (void)deletePathFile
{
  if ((byte_100038060 & 1) == 0)
  {
    v2 = +[NSFileManager defaultManager];
    v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/PairedSyncKeepAlive" isDirectory:0];

    if ((v3 & 1) == 0)
    {
      byte_100038060 = 1;
      return;
    }

    v4 = psd_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting KeepAlive file", buf, 2u);
      }
    }

    v7 = +[NSFileManager defaultManager];
    v16 = 0;
    v8 = [v7 removeItemAtPath:@"/var/mobile/Library/PairedSyncKeepAlive" error:&v16];
    v9 = v16;

    if (v8)
    {
      byte_100038060 = 1;
LABEL_18:

      return;
    }

    domain = [v9 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v9 code];

      if (code == 4)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v12 = psd_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = psd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        psy_safeDescription = [v9 psy_safeDescription];
        *buf = 138543362;
        v18 = psy_safeDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to delete KeepAlive file with error: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }
}

@end