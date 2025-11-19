@interface MiLoDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation MiLoDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  if (qword_100008158 != -1)
  {
    sub_100001514();
  }

  v4 = qword_100008160;
  if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "attachmentForParameters, called with parameters: %@", &buf, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  v6 = [v3 objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  v7 = [v6 BOOLValue];

  if ([v5 isEqualToString:@"com.apple.TapToRadar"])
  {
    if (v7)
    {
LABEL_7:
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x3032000000;
      v24 = sub_100000FD0;
      v25 = sub_100000FE0;
      v26 = [NSNumber numberWithBool:1];
      v8 = +[NSMutableArray array];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100000FE8;
      v18[3] = &unk_100004170;
      p_buf = &buf;
      v9 = dispatch_semaphore_create(0);
      v19 = v9;
      v10 = v8;
      v20 = v10;
      [ULConnection exportDatabaseWithReply:v18];
      v11 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v9, v11);
      v12 = [NSNumber numberWithBool:0];
      v13 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v12;

      v14 = v20;
      v15 = v10;

      _Block_object_dispose(&buf, 8);
      goto LABEL_14;
    }
  }

  else if (v7 & 1 | (([v5 isEqualToString:@"com.apple.taptoradard"] & 1) == 0))
  {
    goto LABEL_7;
  }

  if (qword_100008158 != -1)
  {
    sub_100001528();
  }

  v16 = qword_100008160;
  if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "TapToRadar Denied. Called by TapToRadar , and the user denied collecting MicroLocation logs", &buf, 2u);
  }

  v15 = &__NSArray0__struct;
LABEL_14:

  return v15;
}

@end