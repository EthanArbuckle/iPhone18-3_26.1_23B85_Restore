@interface ConnectivityWiFiDE
- (id)attachmentsForParameters:(id)a3;
- (id)getOutputDirectoryForCurrentSession;
- (unint64_t)getCDFSubsystemCollectionFlags:(unint64_t)a3 params:(id)a4;
- (void)setupWithParameters:(id)a3;
- (void)teardownWithParameters:(id)a3;
@end

@implementation ConnectivityWiFiDE

- (id)getOutputDirectoryForCurrentSession
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  v4 = [@"/private/var/tmp/ConnectivityWiFiDE" stringByAppendingFormat:@"/%@", v3];

  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v6 = +[NSFileManager defaultManager];
  v11 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ConnectivityWiFiDE getOutputDirectoryForCurrentSession]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s: failed to create output directory: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (unint64_t)getCDFSubsystemCollectionFlags:(unint64_t)a3 params:(id)a4
{
  v5 = a4;
  if (a3 != 3)
  {
    sub_1000013C4();
  }

  return 6;
}

- (void)setupWithParameters:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[ConnectivityWiFiDE setupWithParameters:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s:  -- complete", &v3, 0xCu);
  }
}

- (void)teardownWithParameters:(id)a3
{
  v3 = +[NSFileManager defaultManager];
  v6 = 0;
  [v3 removeItemAtPath:@"/private/var/tmp/ConnectivityWiFiDE" error:&v6];
  v4 = v6;

  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 localizedDescription];
    *buf = 136315394;
    v8 = "[ConnectivityWiFiDE teardownWithParameters:]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s: Failed to clean tmp archive: %{public}@", buf, 0x16u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[ConnectivityWiFiDE teardownWithParameters:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s:  -- complete", buf, 0xCu);
  }
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v30 = +[NSMutableArray array];
  v5 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ConnectivityWiFiDE attachmentsForParameters:]";
    v38 = 2114;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s: invoked by %{public}@", buf, 0x16u);
  }

  v6 = [&off_1000041F0 objectForKey:v5];
  if (!isCentauriPlatform() || !v6)
  {
    sub_1000013F0(buf);
LABEL_25:
    v11 = *buf;
    goto LABEL_20;
  }

  v7 = [(ConnectivityWiFiDE *)self getOutputDirectoryForCurrentSession];
  if (!v7)
  {
    sub_100001600(buf);
    goto LABEL_25;
  }

  v8 = v7;
  if (-[ConnectivityWiFiDE getCDFSubsystemCollectionFlags:params:](self, "getCDFSubsystemCollectionFlags:params:", [v6 unsignedLongValue], v4))
  {
    v35 = 0;
    v9 = collectSubsystemLogsForClient();
    v10 = 0;
    v11 = v10;
    if (v9)
    {
      v25 = v10;
      v26 = v8;
      v27 = v6;
      v28 = v5;
      v29 = v4;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = [v17 path];
            v19 = [v17 name];
            v20 = [v17 date];
            v21 = [v17 size];
            v22 = [DEAttachmentItem attachmentWithPath:v18 withDisplayName:v19 modificationDate:v20 andFilesize:v21];

            if (v22)
            {
              [v22 setDeleteOnAttach:&__kCFBooleanTrue];
              [v30 addObject:v22];
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v17 name];
              *buf = 136315394;
              *&buf[4] = "[ConnectivityWiFiDE attachmentsForParameters:]";
              v38 = 2114;
              v39 = v23;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s: failed to create attachment for file %{public}@", buf, 0x16u);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v14);
      }

      v5 = v28;
      v4 = v29;
      v6 = v27;
      v11 = v25;
    }

    else
    {
      sub_100001490(v10, v8);
    }
  }

  else
  {
    sub_100001560(v8);
    v11 = 0;
  }

LABEL_20:

  return v30;
}

@end