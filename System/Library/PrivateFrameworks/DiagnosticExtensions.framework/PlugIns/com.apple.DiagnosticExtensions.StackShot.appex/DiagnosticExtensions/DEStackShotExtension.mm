@interface DEStackShotExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (id)takeStackshot;
@end

@implementation DEStackShotExtension

- (id)attachmentList
{
  [DELogMover moveSystemLogsWithExtensions:0];
  v3 = [NSRegularExpression regularExpressionWithPattern:@"stacks.*\\.(plist|log|ips).*" options:1 error:0];
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v5 = [(DEStackShotExtension *)self filesInDir:v4 matchingPattern:v3 excludingPattern:0];

  return v5;
}

- (id)attachmentsForParameters:(id)parameters
{
  [DELogMover moveSystemLogsWithExtensions:0];
  attachmentList = [(DEStackShotExtension *)self attachmentList];
  v5 = [attachmentList mutableCopy];
  v6 = [[NSDate alloc] initWithTimeIntervalSinceNow:-1800.0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = attachmentList;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        modificationDate = [v12 modificationDate];
        v14 = [modificationDate compare:v6];

        if (v14 == -1)
        {
          [v5 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if (![v5 count])
  {
    v15 = 1;
    do
    {
      v16 = v15;
      takeStackshot = [(DEStackShotExtension *)self takeStackshot];
      if (takeStackshot)
      {
        [v5 addObject:takeStackshot];
      }

      v15 = 0;
    }

    while ((v16 & 1) != 0);
  }

  return v5;
}

- (id)takeStackshot
{
  if (!qword_100008168)
  {
    v3 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
    qword_100008168 = v3;
    if (v3)
    {
      v4 = dlsym(v3, "WriteStackshotReport");
      qword_100008160 = v4;
      if (v4)
      {
LABEL_11:
        v4(@"Radar Compose taking stackshot", 4276958003);
        [DELogMover moveSystemLogsWithExtensions:0];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        attachmentList = [(DEStackShotExtension *)self attachmentList];
        v8 = [attachmentList countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v21;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(attachmentList);
              }

              v13 = *(*(&v20 + 1) + 8 * i);
              if (!v10)
              {
                v10 = v13;
              }

              modificationDate = [v13 modificationDate];
              modificationDate2 = [v10 modificationDate];
              v16 = [modificationDate compare:modificationDate2];

              if (v16 == 1)
              {
                v17 = v13;

                v10 = v17;
              }
            }

            v9 = [attachmentList countByEnumeratingWithState:&v20 objects:v26 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v18 = +[DELogging fwHandle];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "stackshot to return: %@", buf, 0xCu);
        }

        goto LABEL_29;
      }

      v5 = +[DELogging fwHandle];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v6 = "CLWriteStackshotReport is NULL\n";
    }

    else
    {
      v5 = +[DELogging fwHandle];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      *buf = 0;
      v6 = "Unable to load CrashReporterSupport framework.\n";
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v4 = qword_100008160;
  if (qword_100008160)
  {
    goto LABEL_11;
  }

  v18 = +[DELogging fwHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DEWriteStackshotReport is NULL\n", buf, 2u);
  }

  v10 = 0;
LABEL_29:

  return v10;
}

@end