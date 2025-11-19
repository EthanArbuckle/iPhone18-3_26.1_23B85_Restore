@interface sysdiagnose_DEExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4;
- (id)getRemoteArchives;
- (id)tryReusingSysdiagnoseForParameters:(id)a3;
- (void)dealloc;
@end

@implementation sysdiagnose_DEExtension

- (id)getRemoteArchives
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "REQUEST_TYPE", 9uLL);
  v3 = sub_100000F48(v2);
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, "archive_list");
    v6 = +[NSMutableArray array];
    v7 = v6;
    if (v5)
    {
      count = xpc_array_get_count(v5);
      if (count)
      {
        v9 = count;
        for (i = 0; i != v9; ++i)
        {
          string = xpc_array_get_string(v5, i);
          if (string)
          {
            v12 = [NSString stringWithUTF8String:string];
            [v7 addObject:v12];
          }
        }
      }
    }

    else
    {
      v5 = v6;
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attachmentList
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Called attachmentList", buf, 2u);
  }

  v25 = 0;
  v3 = sub_100000D70(@"DiagnosticLogs/sysdiagnose");
  v4 = sub_1000014A0(v3);

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v25];

  if (v6)
  {
    if (v25 == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sysdiagnose dir exists", buf, 2u);
      }

      v7 = [NSRegularExpression regularExpressionWithPattern:@"sysdiagnose_.*.tar*" options:1 error:0];
      v8 = [NSRegularExpression regularExpressionWithPattern:@"IN_PROGRESS_" options:1 error:0];
      v9 = [NSURL fileURLWithPath:v4 isDirectory:1];
      v10 = [(sysdiagnose_DEExtension *)self filesInDir:v9 matchingPattern:v7 excludingPattern:v8];
    }

    else
    {
      v10 = 0;
    }

    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = sub_100001658;
    v23 = sub_100001668;
    v24 = 0;
    if (v10 && [v10 count])
    {
      v12 = [NSMutableArray arrayWithArray:v10];
    }

    else
    {
      v12 = +[NSMutableArray array];
    }

    v13 = *(v20 + 5);
    *(v20 + 5) = v12;

    v14 = [(sysdiagnose_DEExtension *)self getRemoteArchives];
    v15 = v14;
    if ((!v14 || ![v14 count]) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Didn't receive a non-zero list of archives from the watch", v26, 2u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100001670;
    v18[3] = &unk_1000042A0;
    v18[4] = buf;
    [v15 enumerateObjectsUsingBlock:v18];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v20 + 5);
      *v26 = 138412290;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Returning list of paths: %@", v26, 0xCu);
    }

    v11 = *(v20 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "error: sysdiagnose directory missing.", buf, 2u);
    }

    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)tryReusingSysdiagnoseForParameters:(id)a3
{
  v3 = a3;
  v45 = 0;
  v44 = 1;
  v43 = 0;
  sub_100001DA4(@"forceDiagnostic", v3, &v45);
  sub_100001DA4(@"shouldCreateTarBall", v3, &v44);
  sub_100001DA4(@"fbaKeychord", v3, &v43);
  if (v45)
  {
    v4 = 0;
    goto LABEL_48;
  }

  v5 = v44;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "REQUEST_TYPE", 0xBuLL);
  xpc_dictionary_set_BOOL(v6, "compress", v5);
  v7 = sub_100000F48(v6);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "xpc request to SD server gave nil reply", buf, 2u);
    }

    goto LABEL_8;
  }

  string = xpc_dictionary_get_string(v7, "path");
  if (!string)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = [NSString stringWithUTF8String:string];
LABEL_9:

  if (v10)
  {
    goto LABEL_36;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v55 = v44;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No in progress archive found for compress: %d. Checking for recent archive", buf, 8u);
  }

  v38 = v3;
  v39 = v44;
  v11 = +[NSFileManager defaultManager];
  v12 = sub_100000D70(@"DiagnosticLogs/sysdiagnose");
  v13 = [NSURL fileURLWithPath:v12 isDirectory:1];
  v14 = [NSArray arrayWithObjects:NSURLNameKey, NSURLPathKey, NSURLCreationDateKey, 0];
  v37 = v11;
  v15 = [v11 enumeratorAtURL:v13 includingPropertiesForKeys:v14 options:7 errorHandler:&stru_1000043A8];

  v42 = +[NSDate distantPast];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v48 objects:buf count:16];
  if (!v17)
  {
    v41 = 0;
    goto LABEL_32;
  }

  v18 = v17;
  v41 = 0;
  v19 = *v49;
  v20 = @"temp";
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v48 + 1) + 8 * i);
      v23 = objc_autoreleasePoolPush();
      v24 = [v22 lastPathComponent];
      if ([v24 hasPrefix:@"sysdiagnose_"] && (objc_msgSend(v24, "containsString:", v20) & 1) == 0)
      {
        v25 = v16;
        v26 = v20;
        v27 = [v24 containsString:@"IN_PROGRESS_"];

        if (v27)
        {
          v20 = v26;
          v16 = v25;
          goto LABEL_28;
        }

        v47 = 0;
        [v22 getResourceValue:&v47 forKey:NSURLCreationDateKey error:0];
        v24 = v47;
        v46 = 0;
        [v22 getResourceValue:&v46 forKey:NSURLIsDirectoryKey error:0];
        v28 = v46;
        v40 = v28;
        if ([v24 compare:v42] != 1 || objc_msgSend(v28, "BOOLValue") == v39)
        {
          v30 = v41;
          v29 = v42;
        }

        else
        {
          v29 = v24;

          v30 = v22;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v52 = 138412290;
            v53 = v30;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "DE found matching file %@", v52, 0xCu);
          }
        }

        v41 = v30;
        v42 = v29;
        v20 = v26;
        v16 = v25;
      }

LABEL_28:
      objc_autoreleasePoolPop(v23);
    }

    v18 = [v16 countByEnumeratingWithState:&v48 objects:buf count:16];
  }

  while (v18);
LABEL_32:

  v31 = [[NSDate alloc] initWithTimeIntervalSinceNow:-600.0];
  if ([v42 compare:v31] == 1)
  {
    v32 = v41;
    v10 = [v41 path];
    v33 = v37;
    v3 = v38;
  }

  else
  {
    v10 = 0;
    v33 = v37;
    v3 = v38;
    v32 = v41;
  }

  if (v10)
  {
LABEL_36:
    v34 = sub_1000014A0(v10);

    if ([v34 hasSuffix:@".tar.gz"])
    {
      v35 = 1;
    }

    else
    {
      v35 = [v34 hasSuffix:@".tar"];
    }

    if (v43 & 1) != 0 || ((v44 | v35) & 1) == 0 || (v44 & v35)
    {
      v34 = v34;
      v4 = v34;
      goto LABEL_47;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No recent archive found. Continuing to invoke new sysdiagnose", buf, 2u);
    }

    v34 = 0;
  }

  v4 = 0;
LABEL_47:

LABEL_48:

  return v4;
}

- (id)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "yes";
    v32 = "[sysdiagnose_DEExtension attachmentsForParameters:withProgressHandler:]";
    *buf = 136315650;
    if (!v7)
    {
      v8 = "no";
    }

    v33 = 2080;
    v34 = v8;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Called %s. Progress handler passed: %s, parameters: %@", buf, 0x20u);
  }

  v9 = [(sysdiagnose_DEExtension *)self tryReusingSysdiagnoseForParameters:v6];
  if (v9 && ([DEAttachmentItem attachmentWithPath:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v30 = v10;
    v12 = [NSArray arrayWithObjects:&v30 count:1];
  }

  else
  {
    v13 = [v6 copy];
    v28 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100002208;
    v26[3] = &unk_1000042C8;
    v27 = v7;
    v14 = [Libsysdiagnose sysdiagnoseWithMetadata:v13 withError:&v28 withProgressHandler:v26];
    v11 = v28;

    v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        *buf = 138412290;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Returning %@ as attachment", buf, 0xCu);
      }

      v25 = 0;
      v16 = +[NSFileManager defaultManager];
      v17 = [v16 fileExistsAtPath:v14 isDirectory:&v25];
      v18 = v25;

      if (v17 && (v18 & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = +[NSFileManager defaultManager];
        v20 = [v19 contentsOfDirectoryAtPath:v14 error:0];
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Contents of dir %@", buf, 0xCu);
      }

      v21 = sub_1000014A0(v14);
      v22 = [DEAttachmentItem attachmentWithPath:v21];

      v29 = v22;
      v12 = [NSArray arrayWithObjects:&v29 count:1];
    }

    else
    {
      if (v15)
      {
        v23 = [v11 localizedDescription];
        *buf = 138543362;
        v32 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Libsysdiagnose returned error %{public}@", buf, 0xCu);
      }

      v12 = &__NSArray0__struct;
    }
  }

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = sysdiagnose_DEExtension;
  [(sysdiagnose_DEExtension *)&v2 dealloc];
}

@end