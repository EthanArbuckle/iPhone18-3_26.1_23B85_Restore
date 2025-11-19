@interface FileProviderDiagnosticExtension
- (BOOL)_gatherPersistedDiagnostics:(id)a3 domainID:(id)a4 displayName:(id)a5 tempDirURL:(id)a6 attachments:(id)a7;
- (double)logCollectionInterval;
- (id)_displayStringForLogType:(unint64_t)a3;
- (id)_fpDumpAttachmentItemWithTempURL:(id)a3 ProviderFilter:(id)a4 displayName:(id)a5;
- (id)_getFeedbackParameterDict:(id)a3;
- (id)_logAttachmentItemWithTempURL:(id)a3;
- (id)annotatedAttachmentsForParameters:(id)a3;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation FileProviderDiagnosticExtension

- (id)_displayStringForLogType:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return @"Default";
    }

    if (a3 == 1)
    {
      return @"Info";
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        return @"Debug";
      case 0x10uLL:
        return @"Error";
      case 0x11uLL:
        return @"Fault";
    }
  }

  return @"Unknown";
}

- (double)logCollectionInterval
{
  is_internal_build = fpfs_is_internal_build();
  result = 1800.0;
  if (is_internal_build)
  {
    return 172800.0;
  }

  return result;
}

- (id)_logAttachmentItemWithTempURL:(id)a3
{
  v60 = a3;
  v61 = +[OSLogEventStore localStore];
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_10000184C;
  v81 = sub_10000185C;
  v82 = 0;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100001864;
  v76[3] = &unk_1000082B0;
  v76[4] = &v77;
  [v61 prepareWithCompletionHandler:v76];
  if (!v78[5])
  {
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000034E8();
    }

    v38 = 0;
    goto LABEL_41;
  }

  v3 = [NSString stringWithFormat:@"FileProviderDiagnosticLogs-%llu.log", CFAbsoluteTimeGetCurrent()];
  v59 = [v60 URLByAppendingPathComponent:v3 isDirectory:0];

  v4 = [v59 path];
  v56 = +[NSFileManager defaultManager];
  v5 = objc_alloc_init(NSData);
  v75 = 0;
  v6 = [v5 writeToFile:v4 options:1 error:&v75];
  v57 = v75;

  if ((v6 & 1) == 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v40 = [v57 fp_prettyDescription];
      sub_100003300(v40, buf, v8);
    }

    goto LABEL_35;
  }

  v7 = [NSFileHandle fileHandleForWritingAtPath:v4];
  v8 = v7;
  if (!v7)
  {
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = v4;
      sub_1000034AC([v4 UTF8String], buf, v41);
    }

    v43 = v4;
    unlink([v4 UTF8String]);
LABEL_35:
    v58 = 0;
    v38 = 0;
    goto LABEL_40;
  }

  v74 = 0;
  v58 = [v7 truncateAtOffset:0 error:&v74];
  v53 = v74;
  if (v58)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v4;
      sub_1000033B4([v4 UTF8String], v86, v9);
    }

    v11 = dispatch_group_create();
    [v78[5] setFlags:403];
    v12 = +[NSMutableArray array];
    v52 = v11;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v13 = [&off_100008868 countByEnumeratingWithState:&v70 objects:v85 count:16];
    if (v13)
    {
      v14 = *v71;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v71 != v14)
          {
            objc_enumerationMutation(&off_100008868);
          }

          v16 = [NSPredicate predicateWithFormat:@"subsystem == %@", *(*(&v70 + 1) + 8 * i)];
          [v12 addObject:v16];
        }

        v13 = [&off_100008868 countByEnumeratingWithState:&v70 objects:v85 count:16];
      }

      while (v13);
    }

    if ([v12 count])
    {
      v17 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];
      [v78[5] setFilterPredicate:v17];
    }

    v18 = objc_opt_new();
    [v18 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
    v19 = v78[5];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100001904;
    v65[3] = &unk_1000082D8;
    v51 = v18;
    v66 = v51;
    v67 = self;
    v20 = v8;
    v68 = v20;
    v21 = v4;
    v69 = v21;
    [v19 setEventHandler:v65];
    v22 = v78[5];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100001B8C;
    v63[3] = &unk_100008300;
    v23 = v52;
    v64 = v23;
    [v22 setInvalidationHandler:v63];
    [(FileProviderDiagnosticExtension *)self logCollectionInterval];
    v25 = v24;
    v26 = [NSDate dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
    v55 = [v26 dateByAddingTimeInterval:0.0 - v25];

    dispatch_group_enter(v23);
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v84 = v25 / 60.0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[INFO] [FileProviderDiagnosticExtension attachmentsForParameters:ABC] Getting fileprovider oslog for past %f mins", buf, 0xCu);
    }

    v28 = v78[5];
    v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
    [v28 activateStreamFromDate:v55 toDate:v29];

    v30 = dispatch_time(0, 180000000000);
    if (dispatch_group_wait(v23, v30))
    {
      [v78[5] invalidate];
      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000033F0();
      }

      v32 = [@"\nERROR: Log Collection could not complete timed out."];
      v62 = 0;
      v33 = [v20 writeData:v32 error:&v62];
      v34 = v62;

      if ((v33 & 1) == 0)
      {
        v35 = fp_current_or_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = [v21 fp_prettyPath];
          v37 = [v34 fp_prettyDescription];
          sub_10000342C(v36, v37, buf, v35);
        }
      }
    }

    [v20 closeFile];
    v38 = [DEAttachmentItem attachmentWithPath:v21];
    [v38 setDeleteOnAttach:&__kCFBooleanTrue];
    [v38 setShouldCompress:&__kCFBooleanTrue];
    [v38 setDisplayName:@"System Logs for File Sync"];
  }

  else
  {
    v44 = fp_current_or_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = v4;
      v46 = [v4 UTF8String];
      v47 = [v53 fp_prettyDescription];
      sub_10000334C(v46, v47, buf, v44);
    }

    [v8 closeFile];
    v48 = v4;
    unlink([v4 UTF8String]);
    v38 = 0;
  }

LABEL_40:
  if (v58)
  {
LABEL_41:
    v38 = v38;
    v49 = v38;
    goto LABEL_43;
  }

  v49 = 0;
LABEL_43:
  _Block_object_dispose(&v77, 8);

  return v49;
}

- (id)_fpDumpAttachmentItemWithTempURL:(id)a3 ProviderFilter:(id)a4 displayName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 URLByAppendingPathComponent:@"fp-dump.txt"];
  unlink([v10 fileSystemRepresentation]);
  v11 = open([v10 fileSystemRepresentation], 1541, 384);
  if ((v11 & 0x80000000) != 0)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000036FC(v10);
    }

    v21 = 0;
    goto LABEL_31;
  }

  v12 = [[NSFileHandle alloc] initWithFileDescriptor:v11 closeOnDealloc:1];
  if ([v8 isEqualToString:@"test_provider"])
  {
    v13 = [[FPCTLTermDumper alloc] initWithFd:objc_msgSend(v12 forceColor:{"fileDescriptor"), 1}];
    [v13 write:@"TEST-CANARY\n"];
  }

  v14 = +[FPDaemonConnection sharedConnectionProxy];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100001FF4;
  v30[3] = &unk_100008328;
  v32 = &v33;
  v15 = v12;
  v31 = v15;
  [v14 dumpStateTo:v15 providerFilter:v8 options:0 completionHandler:v30];
  v16 = 0;
  v29 = 0;
  while ((v34[3] & 1) == 0)
  {
    v17 = [v15 getOffset:&v29 error:0];
    if (v29)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100003690(&v25, v26);
      }

      v16 = 0;
      goto LABEL_20;
    }

    if (!v16)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100003664(&v27, v28);
      }

      v16 = 1;
LABEL_20:

      goto LABEL_21;
    }

    if (v16 >= 59)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100003628();
      }

      v20 = [[FPCTLTermDumper alloc] initWithFd:-[NSObject fileDescriptor](v15 forceColor:{"fileDescriptor"), 1}];
      [v20 write:@"Timed out while capturing FP dump\n"];
      goto LABEL_30;
    }

    ++v16;
LABEL_21:
    sleep(1u);
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000036BC();
  }

LABEL_30:

  v23 = [v10 path];
  v21 = [DEAttachmentItem attachmentWithPath:v23];

  [v21 setShouldCompress:&__kCFBooleanTrue];
  [v21 setDeleteOnAttach:&__kCFBooleanTrue];
  [v21 setDisplayName:v9];

  _Block_object_dispose(&v33, 8);
LABEL_31:

  return v21;
}

- (id)_getFeedbackParameterDict:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100003814(v3);
  }

  v5 = [v3 objectForKeyedSubscript:@":de_parameter"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v3 objectForKeyedSubscript:@":de_parameter"];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = [v3 objectForKeyedSubscript:@":de_parameter"];
    if ([v9 count])
    {
      v10 = [v3 objectForKeyedSubscript:@":de_parameter"];
      v7 = [v10 objectAtIndexedSubscript:0];
    }

    else
    {
      v7 = 0;
    }
  }

  if (v7)
  {
    v11 = [v7 dataUsingEncoding:4];
    if (v11)
    {
      v18 = 0;
      v12 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v18];
      v13 = v18;
      v14 = fp_current_or_default_log();
      v15 = v14;
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000038A0();
        }

        v16 = v12;
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100003908();
        }
      }
    }

    else
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000398C();
      }

      v12 = 0;
    }

    goto LABEL_26;
  }

LABEL_15:
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000039FC();
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (BOOL)_gatherPersistedDiagnostics:(id)a3 domainID:(id)a4 displayName:(id)a5 tempDirURL:(id)a6 attachments:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSFileManager defaultManager];
  if ([v11 isEqualToString:@"1"])
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_10000184C;
    v36 = sub_10000185C;
    v37 = 0;
    v17 = +[FPDaemonConnection synchronousSharedConnectionProxy];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000025AC;
    v24 = &unk_100008390;
    v29 = &v32;
    v30 = &v38;
    v25 = v16;
    v26 = v14;
    v27 = v13;
    v28 = v15;
    v31 = &v42;
    [v17 getSavedDiagnosticsFor:v12 completionHandler:&v21];
    if (*(v39 + 24) == 1)
    {
      v18 = v33[5];
      if (v18)
      {
        [v18 stopAccessingSecurityScopedResource];
      }
    }

    v19 = *(v43 + 24);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSURL fp_secureTempDirectory];
  v7 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v7 isEqualToString:@"Feedback Assistant"] && (objc_msgSend(v4, "objectForKeyedSubscript:", @":de_parameter"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(FileProviderDiagnosticExtension *)self _getFeedbackParameterDict:v4];
    v10 = v9;
    if (v9 && ([v9 objectForKeyedSubscript:@"domainID"], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, objc_msgSend(v10, "objectForKeyedSubscript:", @"displayName"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = [v10 objectForKeyedSubscript:@"domainID"];
      v15 = [v10 objectForKeyedSubscript:@"displayName"];
      v16 = [NSString stringWithFormat:@"System Database for %@", v15];

      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100003C68(v14, v10, v17);
      }

      v18 = [v10 objectForKeyedSubscript:@"useDiagnostic"];
      if (v18 && -[FileProviderDiagnosticExtension _gatherPersistedDiagnostics:domainID:displayName:tempDirURL:attachments:](self, "_gatherPersistedDiagnostics:domainID:displayName:tempDirURL:attachments:", v18, v14, v16, v6, v5) && [v5 count] == 2)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[INFO] Returning previously captured data", buf, 2u);
        }

        goto LABEL_43;
      }

      [v5 removeAllObjects];
    }

    else
    {
      v14 = &stru_100008690;
      v16 = @"System Database for File Sync";
    }
  }

  else
  {
    if ([v7 isEqualToString:@"FileProvider Daemon"] && (objc_msgSend(v4, "objectForKeyedSubscript:", @"domainID"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100003D30();
      }

      v14 = [v4 objectForKeyedSubscript:@"domainID"];
    }

    else
    {
      v14 = &stru_100008690;
    }

    v16 = @"System Database for File Sync";
  }

  if (fpfs_is_internal_build())
  {
    v22 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.fileproviderd"];
    if ([v22 BOOLForKey:@"dumpDEParameters"])
    {
      [v22 setObject:v14 forKey:@"DEParametersProviderFilter"];
      [v22 setObject:v16 forKey:@"DEParametersDisplayName"];
    }
  }

  v10 = [(FileProviderDiagnosticExtension *)self _logAttachmentItemWithTempURL:v6];
  if (v10)
  {
    [v5 addObject:v10];
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100003DC0();
    }
  }

  section = __fp_create_section();
  v25 = fp_current_or_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_100003DFC(v7, section);
  }

  v26 = fp_current_or_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_100003E7C();
  }

  v27 = [(FileProviderDiagnosticExtension *)self _fpDumpAttachmentItemWithTempURL:v6 ProviderFilter:v14 displayName:v16];
  if (v27)
  {
    [v5 addObject:v27];
  }

  else
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100003EE4();
    }
  }

  __fp_leave_section_Debug();
LABEL_43:

  return v5;
}

- (id)annotatedAttachmentsForParameters:(id)a3
{
  v3 = [(FileProviderDiagnosticExtension *)self attachmentsForParameters:a3];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Diagnostics with %lu items", [v3 count]);
  v5 = [[DEAnnotatedGroup alloc] initWithDisplayName:@"File Sync Diagnostics" localizedDescription:v4 iconType:0 additionalInfo:0 attachmentItems:v3];

  return v5;
}

@end