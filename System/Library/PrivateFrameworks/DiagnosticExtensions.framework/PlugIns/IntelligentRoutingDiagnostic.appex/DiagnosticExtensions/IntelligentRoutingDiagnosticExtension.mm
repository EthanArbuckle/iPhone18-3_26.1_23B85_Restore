@interface IntelligentRoutingDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation IntelligentRoutingDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  IRSetupLogging();
  v4 = IRLogObject;
  if (os_log_type_enabled(IRLogObject, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension, attachmentForParameters, called with parameters: %@", &buf, 0xCu);
  }

  v5 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v5 isEqualToString:@"com.apple.taptoradard"])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.TapToRadar"] ^ 1;
  }

  v7 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  bOOLValue = [v7 BOOLValue];

  if ((v6 | bOOLValue))
  {
    v9 = +[NSMutableArray array];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_100000EB0;
    v26 = sub_100000EC0;
    v27 = [NSNumber numberWithBool:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100000EC8;
    v19[3] = &unk_100004160;
    p_buf = &buf;
    v10 = dispatch_semaphore_create(0);
    v20 = v10;
    v11 = v9;
    v21 = v11;
    [IRSession databaseExportwithReply:v19];
    v12 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v10, v12);
    v13 = [NSNumber numberWithBool:0];
    v14 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v13;

    v15 = v21;
    v16 = v11;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = IRLogObject;
    if (os_log_type_enabled(IRLogObject, OS_LOG_TYPE_ERROR))
    {
      sub_10000120C(v17);
    }

    v16 = &__NSArray0__struct;
  }

  return v16;
}

@end