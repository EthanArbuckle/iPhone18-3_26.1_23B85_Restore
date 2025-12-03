@interface WiFiDiagnosticsExtension
- (id)WiFiDELog;
- (id)__attachmentsForAirPlayWithParameters:(id)parameters;
- (id)__attachmentsForFBAWithParameters:(id)parameters;
- (id)__attachmentsForSymptomsDiagWithParameters:(id)parameters;
- (id)__attachmentsForTTRWithParameters:(id)parameters;
- (id)__attachmentsForWiFiDEWithParameters:(id)parameters;
- (id)__collectCentauriLogs;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (unint64_t)attachmentSizes:(id)sizes;
- (void)sendTelemetryAndClearTimers:(id)timers withAttachments:(id)attachments;
@end

@implementation WiFiDiagnosticsExtension

- (id)WiFiDELog
{
  if (qword_10000C2B0 != -1)
  {
    dispatch_once(&qword_10000C2B0, &stru_100008220);
  }

  v3 = qword_10000C2A8;

  return v3;
}

- (id)attachmentList
{
  wiFiDELog = [(WiFiDiagnosticsExtension *)self WiFiDELog];
  if (os_log_type_enabled(wiFiDELog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WiFiDiagnosticsExtension attachmentList]";
    v6 = 1024;
    v7 = 82;
    _os_log_impl(&_mh_execute_header, wiFiDELog, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentList called", &v4, 0x12u);
  }

  return &__NSArray0__struct;
}

- (id)__attachmentsForSymptomsDiagWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [NSMutableString stringWithUTF8String:"symptomsd"];
  v5 = [parametersCopy objectForKeyedSubscript:@"trigger"];

  if (v5)
  {
    [v4 appendFormat:@".%@", v5];
  }

  v6 = +[NSMutableArray array];
  sharedClient = [sub_10000121C() sharedClient];
  if (sharedClient)
  {
    v8 = sub_100001328();
    v17 = @"Reason";
    v18 = v4;
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [v8 requestWithItemID:82 configuration:v9];
    v19 = v10;
    v11 = [NSArray arrayWithObjects:&v19 count:1];
    v16 = 0;
    v12 = [sharedClient collectLogs:v11 configuration:0 update:0 receipts:0 error:&v16];
    v13 = v16;

    if (v12)
    {
      v14 = [DEAttachmentItem attachmentWithPathURL:v12];
      [v6 addObject:v14];
    }
  }

  return v6;
}

- (id)__attachmentsForAirPlayWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v67 = +[NSMutableArray array];
  sharedClient = [sub_10000121C() sharedClient];
  if (sharedClient)
  {
    v5 = [parametersCopy objectForKeyedSubscript:@"uuid"];
    if (v5)
    {
      v6 = [[NSUUID alloc] initWithUUIDString:v5];

      if (!v6)
      {

        v5 = 0;
      }
    }

    v7 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
    v8 = [parametersCopy objectForKeyedSubscript:@"trigger"];
    v9 = v8;
    v66 = v8;
    if (v5)
    {
      if ([v8 isEqualToString:@"pre"])
      {
        v62 = parametersCopy;
        v10 = [v5 substringToIndex:5];
        v65 = v7;
        v63 = [NSString stringWithFormat:@"%@.%@[%@]", v7, v9, v10];

        v11 = sub_100001328();
        v94 = @"Reason";
        v95 = v63;
        v60 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v12 = [v11 requestWithItemID:21 configuration:v60];
        v96[0] = v12;
        v13 = [sub_100001328() requestWithItemID:39 configuration:0];
        v96[1] = v13;
        v14 = sub_100001328();
        v92 = @"UUID";
        v93 = v5;
        v15 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        [v14 requestWithItemID:24 configuration:v15];
        v16 = v61 = sharedClient;
        v96[2] = v16;
        v17 = [sub_100001328() requestWithItemID:45 configuration:0];
        v96[3] = v17;
        v18 = [sub_100001328() requestWithItemID:46 configuration:0];
        v96[4] = v18;
        v19 = [sub_100001328() requestWithItemID:47 configuration:0];
        v96[5] = v19;
        v20 = [sub_100001328() requestWithItemID:44 configuration:0];
        v96[6] = v20;
        v21 = [NSArray arrayWithObjects:v96 count:7];

        v22 = v63;
        sharedClient = v61;

        v90 = @"Reason";
        v91 = v63;
        v23 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v24 = [v61 collectLogs:v21 configuration:v23 update:0 receipts:0 error:0];

        if (v24)
        {
          v25 = [DEAttachmentItem attachmentWithPathURL:v24];
          [v67 addObject:v25];
        }

        parametersCopy = v62;
LABEL_10:
        v7 = v65;
        goto LABEL_25;
      }

      if ([v9 isEqualToString:@"abort"])
      {
        v26 = sub_100001328();
        v87 = @"UUID";
        v88 = v5;
        v27 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v28 = [v26 requestWithItemID:25 configuration:v27];
        v89 = v28;
        v22 = [NSArray arrayWithObjects:&v89 count:1];

        v21 = [sharedClient collectLogs:v22 configuration:0 update:0 receipts:0 error:0];
        if (!v21)
        {
LABEL_26:

          goto LABEL_27;
        }

        v24 = [DEAttachmentItem attachmentWithPathURL:v21];
        [v67 addObject:v24];
LABEL_25:

        goto LABEL_26;
      }

      if ([v9 isEqualToString:@"post"])
      {
        v29 = [v5 substringToIndex:5];
        v65 = v7;
        v30 = [NSString stringWithFormat:@"%@.%@[%@]", v7, v9, v29];

        v21 = +[NSMutableArray array];
        v31 = sub_100001328();
        v85 = @"UUID";
        v86 = v5;
        v32 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v33 = [v31 requestWithItemID:25 configuration:v32];
        [v21 addObject:v33];

        v34 = sub_100001328();
        v83 = @"Reason";
        v84 = v30;
        v35 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v36 = [v34 requestWithItemID:82 configuration:v35];
        [v21 addObject:v36];

        v37 = sub_100001328();
        v81 = @"IncludeMatching";
        v38 = [v5 substringToIndex:5];
        v39 = [NSRegularExpression escapedPatternForString:v38];
        v82 = v39;
        v40 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v41 = [v37 requestWithItemID:70 configuration:v40];
        [v21 addObject:v41];

        v22 = v30;
        v79[0] = @"Compress";
        v79[1] = @"Reason";
        v80[0] = &__kCFBooleanTrue;
        v80[1] = v30;
        v42 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:2];
        v24 = [sharedClient collectLogs:v21 configuration:v42 update:0 receipts:0 error:0];

        if (v24)
        {
          v43 = [DEAttachmentItem attachmentWithPathURL:v24];
          [v67 addObject:v43];
        }

        goto LABEL_10;
      }
    }

    if ([v9 isEqualToString:@"datapath"])
    {
      v44 = [NSString stringWithFormat:@"%@.%@", v7, v9];
      v45 = [sub_100001328() requestWithItemID:72 configuration:0];
      v78 = v45;
      v46 = [NSArray arrayWithObjects:&v78 count:1];
      v76[0] = @"Compress";
      v76[1] = @"Reason";
      v77[0] = &__kCFBooleanTrue;
      v77[1] = v44;
      v47 = v44;
      v48 = v77;
      v49 = v76;
    }

    else
    {
      v50 = [v9 isEqualToString:@"abc"];
      v51 = [NSString stringWithFormat:@"%@.%@", v7, v9];
      v52 = sub_100001328();
      v53 = v52;
      if (v50)
      {
        v73 = @"Reason";
        v74 = v51;
        v54 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v55 = [v53 requestWithItemID:82 configuration:v54];
        v75 = v55;
        v56 = [NSArray arrayWithObjects:&v75 count:1];
        v71[0] = @"Compress";
        v71[1] = @"Reason";
        v72[0] = &__kCFBooleanTrue;
        v72[1] = v51;
        v64 = v51;
        v57 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
        v21 = [sharedClient collectLogs:v56 configuration:v57 update:0 receipts:0 error:0];

        if (!v21)
        {
          v22 = v64;
          goto LABEL_26;
        }

        v24 = [DEAttachmentItem attachmentWithPathURL:v21];
        [v67 addObject:v24];
        v22 = v64;
        goto LABEL_25;
      }

      v45 = [v52 requestWithItemID:60 configuration:0];
      v70 = v45;
      v46 = [NSArray arrayWithObjects:&v70 count:1];
      v68[0] = @"Compress";
      v68[1] = @"Reason";
      v69[0] = &__kCFBooleanTrue;
      v69[1] = v51;
      v47 = v51;
      v48 = v69;
      v49 = v68;
    }

    v58 = [NSDictionary dictionaryWithObjects:v48 forKeys:v49 count:2];
    v21 = [sharedClient collectLogs:v46 configuration:v58 update:0 receipts:0 error:0];

    if (!v21)
    {
      v22 = v47;
      goto LABEL_26;
    }

    v24 = [DEAttachmentItem attachmentWithPathURL:v21];
    [v67 addObject:v24];
    v22 = v47;
    goto LABEL_25;
  }

LABEL_27:

  return v67;
}

- (id)__attachmentsForFBAWithParameters:(id)parameters
{
  v4 = +[NSMutableArray array];
  sharedClient = [sub_10000121C() sharedClient];
  if (sharedClient)
  {
    v6 = [sub_100001328() requestWithItemID:59 configuration:0];
    v14 = v6;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    v13 = 0;
    v8 = [sharedClient collectLogs:v7 configuration:&off_100008728 update:0 receipts:0 error:&v13];
    v9 = v13;

    if (v8)
    {
      v10 = [DEAttachmentItem attachmentWithPathURL:v8];
      [v4 addObject:v10];
    }

    if (&_isCentauriPlatform)
    {
      __collectCentauriLogs = [(WiFiDiagnosticsExtension *)self __collectCentauriLogs];
      if (__collectCentauriLogs)
      {
        [v4 addObject:__collectCentauriLogs];
      }
    }
  }

  return v4;
}

- (id)__collectCentauriLogs
{
  if (!isCentauriPlatform())
  {
    v13 = 0;
LABEL_18:
    v13 = v13;
    v16 = v13;
    goto LABEL_20;
  }

  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd_HH.mm.ss"];
  v4 = +[NSDate now];
  v5 = [v3 stringFromDate:v4];

  v6 = [@"/private/var/tmp/ConnectivityDE/" stringByAppendingFormat:@"ConnectivityLogs_%@", v5];
  if (!v6)
  {
    wiFiDELog = [(WiFiDiagnosticsExtension *)self WiFiDELog];
    if (os_log_type_enabled(wiFiDELog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v20 = "[WiFiDiagnosticsExtension __collectCentauriLogs]";
      v21 = 1024;
      v22 = 265;
      _os_log_impl(&_mh_execute_header, wiFiDELog, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: failed to create output path", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v7 = +[NSFileManager defaultManager];
  v18 = 0;
  v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v18];
  wiFiDELog = v18;

  if ((v8 & 1) == 0)
  {
    wiFiDELog2 = [(WiFiDiagnosticsExtension *)self WiFiDELog];
    if (os_log_type_enabled(wiFiDELog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[WiFiDiagnosticsExtension __collectCentauriLogs]";
      v21 = 1024;
      v22 = 274;
      v23 = 2112;
      v24 = wiFiDELog;
      _os_log_impl(&_mh_execute_header, wiFiDELog2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: failed to create directory %@", buf, 0x1Cu);
    }

LABEL_12:
    v12 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  v10 = collectSubsystemLogsForClient();
  v11 = wiFiDELog;

  v12 = v10 != 0;
  if (v10)
  {
    v13 = [DEAttachmentItem attachmentWithPath:v6];
    [v13 setDeleteOnAttach:&__kCFBooleanTrue];
  }

  else
  {
    wiFiDELog3 = [(WiFiDiagnosticsExtension *)self WiFiDELog];
    if (os_log_type_enabled(wiFiDELog3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[WiFiDiagnosticsExtension __collectCentauriLogs]";
      v21 = 1024;
      v22 = 286;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, wiFiDELog3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: failed to get attachments %@", buf, 0x1Cu);
    }

    v13 = 0;
  }

  wiFiDELog = v11;
LABEL_17:

  if (v12)
  {
    goto LABEL_18;
  }

  v16 = 0;
LABEL_20:

  return v16;
}

- (id)__attachmentsForTTRWithParameters:(id)parameters
{
  v3 = +[NSMutableArray array];
  sharedClient = [sub_10000121C() sharedClient];
  if (sharedClient)
  {
    v5 = [sub_100001328() requestWithItemID:60 configuration:0];
    v13 = v5;
    v6 = [NSArray arrayWithObjects:&v13 count:1];
    v12 = 0;
    v7 = [sharedClient collectLogs:v6 configuration:&off_100008750 update:0 receipts:0 error:&v12];
    v8 = v12;

    if (v7)
    {
      path = [v7 path];
      v10 = [DEAttachmentItem attachmentWithPath:path];

      [v3 addObject:v10];
    }
  }

  return v3;
}

- (id)__attachmentsForWiFiDEWithParameters:(id)parameters
{
  v3 = +[NSMutableArray array];
  sharedClient = [sub_10000121C() sharedClient];
  if (sharedClient)
  {
    v5 = [sub_100001328() requestWithItemID:55 configuration:0];
    v13 = v5;
    v6 = [NSArray arrayWithObjects:&v13 count:1];
    v12 = 0;
    v7 = [sharedClient collectLogs:v6 configuration:&off_100008778 update:0 receipts:0 error:&v12];
    v8 = v12;

    if (v7)
    {
      path = [v7 path];
      v10 = [DEAttachmentItem attachmentWithPath:path];

      [v3 addObject:v10];
    }
  }

  return v3;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[NSMutableArray array];
  [(WiFiDiagnosticsExtension *)self clearTimers];
  qword_10000C298 = CFAbsoluteTimeGetCurrent();
  wiFiDELog = [(WiFiDiagnosticsExtension *)self WiFiDELog];
  if (os_log_type_enabled(wiFiDELog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446722;
    v17 = "[WiFiDiagnosticsExtension attachmentsForParameters:]";
    v18 = 1024;
    v19 = 348;
    v20 = 2112;
    v21 = parametersCopy;
    _os_log_impl(&_mh_execute_header, wiFiDELog, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: called with param: %@", &v16, 0x1Cu);
  }

  v7 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v7 isEqualToString:@"com.apple.symptomsd"])
  {
    v8 = [(WiFiDiagnosticsExtension *)self __attachmentsForSymptomsDiagWithParameters:parametersCopy];
  }

  else
  {
    lowercaseString = [v7 lowercaseString];
    v10 = [lowercaseString hasPrefix:@"airplay"];

    if (v10)
    {
      v8 = [(WiFiDiagnosticsExtension *)self __attachmentsForAirPlayWithParameters:parametersCopy];
    }

    else if ([v7 isEqualToString:@"Feedback Assistant"])
    {
      v8 = [(WiFiDiagnosticsExtension *)self __attachmentsForFBAWithParameters:parametersCopy];
    }

    else
    {
      lowercaseString2 = [v7 lowercaseString];
      v12 = [lowercaseString2 hasPrefix:@"com.apple.taptoradar"];

      if (v12)
      {
        [(WiFiDiagnosticsExtension *)self __attachmentsForTTRWithParameters:parametersCopy];
      }

      else
      {
        [(WiFiDiagnosticsExtension *)self __attachmentsForWiFiDEWithParameters:parametersCopy];
      }
      v8 = ;
    }
  }

  v13 = v8;
  [v5 addObjectsFromArray:v8];

  qword_10000C2A0 = CFAbsoluteTimeGetCurrent();
  wiFiDELog2 = [(WiFiDiagnosticsExtension *)self WiFiDELog];
  if (os_log_type_enabled(wiFiDELog2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446466;
    v17 = "[WiFiDiagnosticsExtension attachmentsForParameters:]";
    v18 = 1024;
    v19 = 381;
    _os_log_impl(&_mh_execute_header, wiFiDELog2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: done", &v16, 0x12u);
  }

  [(WiFiDiagnosticsExtension *)self sendTelemetryAndClearTimers:parametersCopy withAttachments:v5];

  return v5;
}

- (unint64_t)attachmentSizes:(id)sizes
{
  sizesCopy = sizes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [sizesCopy countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(sizesCopy);
        }

        filesize = [*(*(&v12 + 1) + 8 * i) filesize];
        v6 += [filesize unsignedIntValue];
      }

      v5 = [sizesCopy countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sendTelemetryAndClearTimers:(id)timers withAttachments:(id)attachments
{
  timersCopy = timers;
  attachmentsCopy = attachments;
  wiFiDELog = [(WiFiDiagnosticsExtension *)self WiFiDELog];
  if (os_log_type_enabled(wiFiDELog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[WiFiDiagnosticsExtension sendTelemetryAndClearTimers:withAttachments:]";
    v16 = 1024;
    v17 = 402;
    v18 = 2112;
    v19 = timersCopy;
    _os_log_impl(&_mh_execute_header, wiFiDELog, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: called with parameters: %@", buf, 0x1Cu);
  }

  v12 = attachmentsCopy;
  v13 = timersCopy;
  v9 = timersCopy;
  v10 = attachmentsCopy;
  AnalyticsSendEventLazy();
  [(WiFiDiagnosticsExtension *)self clearTimers];
  wiFiDELog2 = [(WiFiDiagnosticsExtension *)self WiFiDELog];
  if (os_log_type_enabled(wiFiDELog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[WiFiDiagnosticsExtension sendTelemetryAndClearTimers:withAttachments:]";
    v16 = 1024;
    v17 = 450;
    _os_log_impl(&_mh_execute_header, wiFiDELog2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: done", buf, 0x12u);
  }
}

@end