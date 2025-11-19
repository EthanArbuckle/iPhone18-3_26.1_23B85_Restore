@interface ConnectivityDE
- (BOOL)isClientCollectionSupported:(unint64_t)a3;
- (id)attachmentsForParameters:(id)a3;
- (id)createConnectivityDESummaryFile:(unint64_t)a3;
- (id)getOutputDirectoryForCurrentSession;
- (unint64_t)getCDFClientOverrideFlags:(unint64_t)a3;
- (unint64_t)getCDFSubsystemCollectionFlags:(unint64_t)a3 params:(id)a4;
@end

@implementation ConnectivityDE

- (id)getOutputDirectoryForCurrentSession
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  v4 = [@"/private/var/tmp/ConnectivityDE" stringByAppendingFormat:@"/%@", v3];

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
      v13 = "[ConnectivityDE getOutputDirectoryForCurrentSession]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CDE: %s: failed to create output directory: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (unint64_t)getCDFSubsystemCollectionFlags:(unint64_t)a3 params:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  v8 = 14;
  if (a3 && a3 != 4)
  {
    if (a3 == 2)
    {
      v9 = [v5 valueForKey:@"Domain"];
      if (v9)
      {
        v7 = v9;
        if ([v9 isEqualToString:@"WiFi"])
        {
          v8 = 6;
          goto LABEL_13;
        }

        if ([v7 isEqualToString:@"Bluetooth"])
        {
          v8 = 10;
          goto LABEL_13;
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "[ConnectivityDE getCDFSubsystemCollectionFlags:params:]";
          v13 = 2112;
          v14 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CDE: %s: invalid payload from ABC Client %@", &v11, 0x16u);
        }

        v7 = 0;
      }
    }

    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)getCDFClientOverrideFlags:(unint64_t)a3
{
  if (a3 == 4)
  {
    return 259;
  }

  else
  {
    return 0;
  }
}

- (id)createConnectivityDESummaryFile:(unint64_t)a3
{
  if (a3 != 4)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v17 = "[ConnectivityDE createConnectivityDESummaryFile:]";
    v12 = "CDE: %s: invalid client for summary file";
LABEL_17:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    goto LABEL_18;
  }

  if (isCentauriPlatform())
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v17 = "[ConnectivityDE createConnectivityDESummaryFile:]";
    v12 = "CDE: %s: invalid environment for summary file";
    goto LABEL_17;
  }

  v4 = [(ConnectivityDE *)self getOutputDirectoryForCurrentSession];
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[ConnectivityDE createConnectivityDESummaryFile:]";
      v12 = "CDE: %s: failed to create output directory";
      goto LABEL_17;
    }

LABEL_18:
    v10 = 0;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v4 stringByAppendingPathComponent:@"Log Collection Summary.txt"];
  v15 = 0;
  v7 = [@"No errors found. Expected files: 0. Collected files: 0." writeToFile:v6 atomically:1 encoding:4 error:&v15];
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[ConnectivityDE createConnectivityDESummaryFile:]";
      v18 = 2114;
      v19 = v8;
      v13 = "CDE: %s: failed to write summary file: %{public}@";
      v14 = 22;
LABEL_23:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
    }

LABEL_24:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [DEAttachmentItem attachmentWithPath:v6];
  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[ConnectivityDE createConnectivityDESummaryFile:]";
      v13 = "CDE: %s: failed to create DEAttachmentItem";
      v14 = 12;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v10 = v9;
  [v9 setDeleteOnAttach:&__kCFBooleanTrue];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ConnectivityDE createConnectivityDESummaryFile:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CDE: %s: returning summary attachment", buf, 0xCu);
  }

LABEL_8:

  return v10;
}

- (BOOL)isClientCollectionSupported:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];
  [v5 cStringUsingEncoding:4];

  v6 = (os_variant_has_internal_diagnostics() & 1) != 0 || os_variant_has_internal_content();
  return a3 == 4 || v6;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v34 = +[NSMutableArray array];
  v5 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ConnectivityDE attachmentsForParameters:]";
    v42 = 2114;
    v43 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CDE: %s: invoked by %{public}@", buf, 0x16u);
  }

  v6 = [&off_100004338 objectForKey:v5];
  v27 = isCentauriPlatform();
  if (!v27 || !v6)
  {
    sub_100001714(buf);
LABEL_34:
    v10 = *buf;
    goto LABEL_21;
  }

  v7 = [v6 unsignedLongValue];
  if (![(ConnectivityDE *)self isClientCollectionSupported:v7])
  {
    sub_1000017B4(buf);
    goto LABEL_34;
  }

  v8 = [(ConnectivityDE *)self getOutputDirectoryForCurrentSession];
  if (!v8)
  {
    sub_1000019B0(buf);
    goto LABEL_34;
  }

  v9 = v8;
  v10 = [(ConnectivityDE *)self getCDFSubsystemCollectionFlags:v7 params:v4];
  if (v10)
  {
    [(ConnectivityDE *)self getCDFClientOverrideFlags:v7];
    v39 = 0;
    v11 = collectSubsystemLogsForClient();
    v12 = 0;
    v10 = v12;
    if (v11)
    {
      v28 = v9;
      v29 = v12;
      v30 = v6;
      v31 = self;
      v32 = v5;
      v33 = v4;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v35 + 1) + 8 * i);
            v19 = [v18 path];
            v20 = [v18 name];
            v21 = [v18 date];
            v22 = [v18 size];
            v23 = [DEAttachmentItem attachmentWithPath:v19 withDisplayName:v20 modificationDate:v21 andFilesize:v22];

            if (v23)
            {
              [v23 setDeleteOnAttach:&__kCFBooleanTrue];
              [v34 addObject:v23];
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v18 name];
              *buf = 136315394;
              *&buf[4] = "[ConnectivityDE attachmentsForParameters:]";
              v42 = 2114;
              v43 = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CDE: %s: failed to create attachment for file %{public}@", buf, 0x16u);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v15);
      }

      v5 = v32;
      v4 = v33;
      v6 = v30;
      self = v31;
      v10 = v29;
    }

    else
    {
      sub_100001854(v12, v9);
    }
  }

  else
  {
    sub_100001910(v9);
  }

LABEL_21:
  if (![v34 count] && v27 != 1 && v6 && objc_msgSend(v6, "unsignedLongValue") == 4)
  {
    v25 = [(ConnectivityDE *)self createConnectivityDESummaryFile:4];
    if (v25)
    {
      [v34 addObject:v25];
    }
  }

  return v34;
}

@end