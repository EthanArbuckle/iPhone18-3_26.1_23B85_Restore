@interface WFToolKitDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
- (id)exportedToolKitDatabaseAttachment;
- (id)exportedToolKitIndexingLogAttachment;
@end

@implementation WFToolKitDiagnosticExtension

- (id)exportedToolKitIndexingLogAttachment
{
  v2 = sub_10000A3A4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[WFToolKitDiagnosticExtension exportedToolKitIndexingLogAttachment]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Collecting ToolKit indexing logs", buf, 0xCu);
  }

  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];

  v5 = [v4 URLByAppendingPathComponent:@"ToolKitIndexingLog.txt"];
  v6 = 0;
  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    v7 = sub_10000A3A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[WFToolKitDiagnosticExtension exportedToolKitIndexingLogAttachment]";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Found existing indexing log dump at %@. Removing it.", buf, 0x16u);
    }

    v8 = +[NSFileManager defaultManager];
    v19 = 0;
    v9 = [v8 removeItemAtURL:v5 error:&v19];
    v6 = v19;

    if ((v9 & 1) == 0)
    {
      v13 = sub_10000A3A4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[WFToolKitDiagnosticExtension exportedToolKitIndexingLogAttachment]";
        v22 = 2112;
        v23 = v6;
        v15 = "%s Failed to remove existing indexing log: %@";
        v16 = v13;
        v17 = 22;
        goto LABEL_15;
      }

LABEL_16:

      v14 = 0;
      goto LABEL_17;
    }
  }

  v10 = +[_TtC26ToolKitDiagnosticExtension24ToolKitDiagnosticWrapper shared];
  v11 = [v10 exportIndexingLogToFileAt:v5];

  v12 = sub_10000A3A4();
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[WFToolKitDiagnosticExtension exportedToolKitIndexingLogAttachment]";
      v15 = "%s Failed to export ToolKit indexing log";
      v16 = v13;
      v17 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[WFToolKitDiagnosticExtension exportedToolKitIndexingLogAttachment]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Created ToolKit indexing log dump at %@", buf, 0x16u);
  }

  v14 = [DEAttachmentItem attachmentWithPathURL:v5];
  [v14 setShouldCompress:&__kCFBooleanTrue];
  [v14 setDeleteOnAttach:&__kCFBooleanTrue];
LABEL_17:

  return v14;
}

- (id)exportedToolKitDatabaseAttachment
{
  v2 = sub_10000A3A4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[WFToolKitDiagnosticExtension exportedToolKitDatabaseAttachment]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Loading ToolKit database", buf, 0xCu);
  }

  v3 = +[_TtC26ToolKitDiagnosticExtension24ToolKitDiagnosticWrapper shared];
  getToolKitDatabaseURL = [v3 getToolKitDatabaseURL];

  if (!getToolKitDatabaseURL)
  {
    v6 = sub_10000A3A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[WFToolKitDiagnosticExtension exportedToolKitDatabaseAttachment]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unable to get ToolKit database URL", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v11 = 0;
  v5 = [getToolKitDatabaseURL checkResourceIsReachableAndReturnError:&v11];
  v6 = v11;
  v7 = sub_10000A3A4();
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFToolKitDiagnosticExtension exportedToolKitDatabaseAttachment]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s ToolKit database file not reachable: %@", buf, 0x16u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[WFToolKitDiagnosticExtension exportedToolKitDatabaseAttachment]";
    v14 = 2112;
    v15 = getToolKitDatabaseURL;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Found ToolKit database at %@", buf, 0x16u);
  }

  v9 = [DEAttachmentItem attachmentWithPathURL:getToolKitDatabaseURL];
  [v9 setShouldCompress:&__kCFBooleanTrue];
  [v9 setDeleteOnAttach:&__kCFBooleanFalse];
LABEL_14:

  return v9;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = +[NSMutableArray array];
  exportedToolKitDatabaseAttachment = [(WFToolKitDiagnosticExtension *)self exportedToolKitDatabaseAttachment];
  if (exportedToolKitDatabaseAttachment)
  {
    [v4 addObject:exportedToolKitDatabaseAttachment];
  }

  exportedToolKitIndexingLogAttachment = [(WFToolKitDiagnosticExtension *)self exportedToolKitIndexingLogAttachment];
  if (exportedToolKitIndexingLogAttachment)
  {
    [v4 addObject:exportedToolKitIndexingLogAttachment];
  }

  v7 = sub_10000A3A4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFToolKitDiagnosticExtension attachmentsForParameters:]";
    v11 = 2048;
    v12 = [v4 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Collected %lu diagnostic attachments", &v9, 0x16u);
  }

  return v4;
}

@end