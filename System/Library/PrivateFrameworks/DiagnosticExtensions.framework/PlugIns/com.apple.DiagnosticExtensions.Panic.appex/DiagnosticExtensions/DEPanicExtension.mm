@interface DEPanicExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler;
- (id)getAllCoreFiles;
- (id)getAllPanicLogs;
- (id)getFilePathsFromBreadCrumbWithError:(id)error withProgressHandler:(id)handler;
- (id)readBreadCrumbWithError:(id)error;
@end

@implementation DEPanicExtension

- (id)attachmentList
{
  if (!qword_100008208)
  {
    v3 = os_log_create("com.apple.DumpPanic", "PanicDiagnosticExtension");
    v4 = qword_100008208;
    qword_100008208 = v3;
  }

  v5 = +[NSMutableArray array];
  getAllPanicLogs = [(DEPanicExtension *)self getAllPanicLogs];
  [v5 addObjectsFromArray:getAllPanicLogs];

  getAllCoreFiles = [(DEPanicExtension *)self getAllCoreFiles];
  [v5 addObjectsFromArray:getAllCoreFiles];

  return v5;
}

- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  if (!qword_100008208)
  {
    v7 = os_log_create("com.apple.DumpPanic", "PanicDiagnosticExtension");
    v8 = qword_100008208;
    qword_100008208 = v7;
  }

  v9 = +[NSMutableArray array];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100000F9C;
  v37[3] = &unk_1000041E0;
  v31 = handlerCopy;
  v38 = v31;
  v10 = [(DEPanicExtension *)self getFilePathsFromBreadCrumbWithError:0 withProgressHandler:v37];
  v11 = [v10 objectForKey:@"paniclogKey"];
  if (v11)
  {
    v12 = qword_100008208;
    if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attach paniclog to TTR: %@", buf, 0xCu);
    }

    v13 = [DEAttachmentItem attachmentWithPath:v11];
    [v9 addObject:v13];
    stringByDeletingLastPathComponent = [v11 stringByDeletingLastPathComponent];
    v15 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"Retired"];

    lastPathComponent = [v11 lastPathComponent];
    v17 = [v15 stringByAppendingPathComponent:lastPathComponent];

    v18 = qword_100008208;
    if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Attach retired paniclog to TTR: %@", buf, 0xCu);
    }

    v19 = [DEAttachmentItem attachmentWithPath:v17];

    [v9 addObject:v19];
  }

  v30 = v10;
  v20 = [v10 objectForKey:{@"corefilesKey", v11}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        v26 = qword_100008208;
        if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Attach corefile to TTR: %@", buf, 0xCu);
        }

        v27 = [DEAttachmentItem attachmentWithPath:v25];
        [v9 addObject:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v22);
  }

  return v9;
}

- (id)getFilePathsFromBreadCrumbWithError:(id)error withProgressHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v8 = objc_alloc_init(NSMutableDictionary);
  if (qword_100008228 != -1)
  {
    dispatch_once(&qword_100008228, &stru_100004200);
  }

  v50 = qword_100008220;
  v9 = +[NSFileManager defaultManager];
  v10 = 0;
  v11 = 0;
  while (1)
  {
    while (([v9 fileExistsAtPath:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"] & 1) == 0)
    {
      sleep(1u);
      if (++v11 == 60)
      {
        v15 = v10;
        goto LABEL_11;
      }
    }

    v15 = [(DEPanicExtension *)self readBreadCrumbWithError:errorCopy];

    if (!v15)
    {
      v37 = 0;
      v39 = 0;
      v17 = 0;
      goto LABEL_48;
    }

    v12 = [v15 objectForKey:v50];
    if (v12)
    {
      break;
    }

    sleep(1u);
    v13 = v11 + 1;
    v10 = v15;
    if (v11++ >= 59)
    {
      if (v13 != 60)
      {
LABEL_13:
        v17 = 0;
        goto LABEL_14;
      }

LABEL_11:
      v16 = qword_100008208;
      if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Timeout to wait for paniclog generation", buf, 2u);
      }

      goto LABEL_13;
    }
  }

  v17 = v12;
  if ([v12 length])
  {
    [v8 setObject:v17 forKey:@"paniclogKey"];
  }

  handlerCopy[2](handlerCopy, 50.0);
LABEL_14:
  v49 = handlerCopy;
  if (qword_100008218 != -1)
  {
    dispatch_once(&qword_100008218, &stru_1000041B8);
  }

  v18 = qword_100008210;
  v19 = @"debug";
  v20 = qword_100008208;
  v21 = os_log_type_enabled(qword_100008208, OS_LOG_TYPE_INFO);
  if (v18)
  {
    v47 = v8;
    v48 = errorCopy;
    if (v21)
    {
      *buf = 138412290;
      v54 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "boot-args NVRAM variable is:%@", buf, 0xCu);
    }

    v22 = [NSString stringWithFormat:@"(?:^|[ \t\r\n])%@=(0x[a-fA-F0-9]+|-?[0-9]+)(?:[ \t\r\n]|$)", @"debug"];
    v52 = 0;
    v23 = [NSRegularExpression regularExpressionWithPattern:v22 options:0 error:&v52];
    v24 = v52;
    v46 = v23;
    if (v24)
    {
      v25 = qword_100008208;
      if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v24;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to create a regex matching expression: %@", buf, 0xCu);
      }

      v26 = 0;
      v27 = 1;
    }

    else
    {
      v28 = [v23 firstMatchInString:v18 options:0 range:{0, -[__CFString length](v18, "length")}];
      v45 = v28;
      if (v28)
      {
        v29 = [v28 rangeAtIndex:1];
        [(__CFString *)v18 substringWithRange:v29, v30];
        v44 = __endptr = 0;
        v31 = strtoull([v44 UTF8String], &__endptr, 0);
        v32 = __endptr;
        v27 = *__endptr != 0;
        if (*__endptr)
        {
          v33 = qword_100008208;
          if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = @"debug";
            v55 = 2080;
            v56 = v32;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to parse the value of the '%@' boot-arg as an integer. Remainder = '%s'", buf, 0x16u);
          }

          v26 = 0;
        }

        else
        {
          v26 = v31;
        }
      }

      else
      {
        v34 = qword_100008208;
        v27 = 1;
        if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = @"debug";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "boot-args NVRAM variable does not have a '%@'=<value> arg", buf, 0xCu);
        }

        v26 = 0;
      }
    }

    v8 = v47;
    errorCopy = v48;
    handlerCopy = v49;
    if (!v27 && v26 && (v26 & 0x20000) == 0)
    {
      v43 = 180;
      while (![v9 fileExistsAtPath:@"/var/run/com.apple.DumpPanic.finishedThisBoot"])
      {
        sleep(1u);
        if (!--v43)
        {
          v35 = qword_100008208;
          if (!os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }

          *buf = 0;
          v36 = "Timeout to wait for corefile dumping";
          goto LABEL_40;
        }
      }

      v35 = qword_100008208;
      if (!os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      *buf = 0;
      v36 = "DumpPanic done cookie found";
LABEL_40:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "boot-args NVRAM variable is either not set or inaccessible", buf, 2u);
    }

    handlerCopy = v49;
  }

  v35 = qword_100008208;
  if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v36 = "The device is not configured to enable corefile dump, skip waiting...";
    goto LABEL_40;
  }

LABEL_41:
  v37 = [(DEPanicExtension *)self readBreadCrumbWithError:errorCopy];

  if (v37)
  {
    v38 = [v50 stringByAppendingString:@"-corefile_paths"];
    v39 = [v37 objectForKey:v38];

    if (v39)
    {
      [v8 setObject:v39 forKey:@"corefilesKey"];
      v40 = [v8 objectForKey:@"paniclogKey"];

      if (!v40)
      {
        v41 = [v37 objectForKey:v50];
        if ([v41 length])
        {
          [v8 setObject:v41 forKey:@"paniclogKey"];
        }
      }
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_48:
  handlerCopy[2](handlerCopy, 100.0);

  return v8;
}

- (id)readBreadCrumbWithError:(id)error
{
  errorCopy = error;
  v4 = [NSURL fileURLWithPath:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
  v15 = errorCopy;
  v5 = [NSData dataWithContentsOfURL:v4 options:0 error:&v15];
  v6 = v15;

  if (v5)
  {
    v14 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v14];
    v8 = v14;

    v9 = qword_100008208;
    v10 = os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to load data from DumpPanic breadcrumb, error: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      if (v10)
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got data from DumpPanic breadcrumb: %@", buf, 0xCu);
      }

      v11 = v7;
    }
  }

  else
  {
    v12 = qword_100008208;
    if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to get data from DumpPanic breadcrumb, error: %@", buf, 0xCu);
    }

    v11 = 0;
    v8 = v6;
  }

  return v11;
}

- (id)getAllCoreFiles
{
  v3 = [@"/var/mobile/Library/Logs/CrashReporter" stringByAppendingPathComponent:@"Panics"];
  v4 = [NSURL fileURLWithPath:v3];
  v5 = [(DEPanicExtension *)self filesInDir:v4 matchingPattern:0 excludingPattern:0];
  v6 = [v5 mutableCopy];

  v7 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:1];
  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v6 sortUsingDescriptors:v8];

  return v6;
}

- (id)getAllPanicLogs
{
  v3 = [NSRegularExpression regularExpressionWithPattern:@".*panic.*\\.ips.*" options:1 error:0];
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v5 = [(DEPanicExtension *)self filesInDir:v4 matchingPattern:v3 excludingPattern:0];
  v6 = [v5 mutableCopy];

  v7 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:1];
  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [v6 sortUsingDescriptors:v8];

  return v6;
}

@end