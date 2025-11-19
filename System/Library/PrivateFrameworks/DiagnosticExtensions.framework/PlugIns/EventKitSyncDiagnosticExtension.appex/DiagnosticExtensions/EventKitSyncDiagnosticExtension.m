@interface EventKitSyncDiagnosticExtension
+ (id)log;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation EventKitSyncDiagnosticExtension

+ (id)log
{
  if (qword_100008138 != -1)
  {
    sub_100000FE0();
  }

  v3 = qword_100008140;

  return v3;
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = +[EventKitSyncDiagnosticExtension log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating attachments", buf, 2u);
  }

  v4 = +[NSMutableArray array];
  v5 = [[EKSSLogger alloc] initWithString:@"Creating diagnostic service"];
  v6 = objc_opt_new();
  v7 = dispatch_semaphore_create(0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100000EEC;
  v17[3] = &unk_100004158;
  v18 = v5;
  v8 = v4;
  v19 = v8;
  v20 = v7;
  v9 = v7;
  v10 = v5;
  [v6 dumpDiagnosticsWithCompletion:v17];
  v11 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v9, v11);
  v12 = EKSSDiagnosticsDirectory();
  v13 = [v10 writeLogFileWithDirectory:v12 andFileName:@"DiagnosticLogs"];

  v14 = [DEAttachmentItem attachmentWithPathURL:v13];
  [v14 setDeleteOnAttach:&__kCFBooleanTrue];
  [v8 addObject:v14];
  v15 = v8;

  return v8;
}

@end