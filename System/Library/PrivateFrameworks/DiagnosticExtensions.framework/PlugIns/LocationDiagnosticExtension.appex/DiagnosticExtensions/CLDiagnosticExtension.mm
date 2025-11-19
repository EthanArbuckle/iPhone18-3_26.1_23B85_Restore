@interface CLDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation CLDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.locationd.Utility", "Core");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension attachmentsForParameters,called with parameters %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v3 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (([v6 isEqualToString:@"com.apple.taptoradard"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"com.apple.TapToRadar"))
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [v3 objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];

  if (v7)
  {
    v8 = 1;
LABEL_10:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension attachmentsForParameters,ttr,%{public}d,consent", buf, 8u);
    }

    v9 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/gpsd"];
    [v5 addObject:v9];

    v10 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/raven"];
    [v5 addObject:v10];

    v11 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/vision"];
    [v5 addObject:v11];

    v12 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/locationd/locctl"];
    [v5 addObject:v12];

    v13 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/locationd/MslLogger"];
    [v5 addObject:v13];

    v14 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/locationd/routesmoother"];
    [v5 addObject:v14];

    v15 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/locationd/trackrun"];
    [v5 addObject:v15];

    v16 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/locationd/mapmatcher"];
    [v5 addObject:v16];

    v17 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/locationd/fence"];
    [v5 addObject:v17];

    v18 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/com.apple.locationd/fence"];
    [v5 addObject:v18];

    v19 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/gpsd"];
    [v5 addObject:v19];

    v20 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/raven"];
    [v5 addObject:v20];

    v21 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/vision"];
    [v5 addObject:v21];

    v22 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/com.apple.locationd/locctl"];
    [v5 addObject:v22];

    v23 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/com.apple.locationd/routesmoother"];
    [v5 addObject:v23];

    v24 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/com.apple.locationd/trackrun"];
    [v5 addObject:v24];

    v25 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/com.apple.locationd/mapmatcher"];
    [v5 addObject:v25];

    v26 = dispatch_semaphore_create(0);
    v27 = dispatch_get_global_queue(0, 0);
    v40 = _NSConcreteStackBlock;
    v41 = 3221225472;
    v42 = sub_10000128C;
    v43 = &unk_100004120;
    v28 = v4;
    v44 = v28;
    v29 = v26;
    v45 = v29;
    dispatch_async(v27, &v40);

    v30 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v29, v30) && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension CLGetPipelinedCache timeout", buf, 2u);
    }

    v31 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/pipelined", v40, v41, v42, v43];
    [v5 addObject:v31];

    v32 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CrashReporter/pipelined"];
    [v5 addObject:v32];

    *buf = 0;
    time(buf);
    v33 = LocationLogEncryptionKeyStoreDirPathForTime();
    v34 = [DEAttachmentItem attachmentWithPath:v33];
    [v5 addObject:v34];

    *buf -= 86400;
    v35 = LocationLogEncryptionKeyStoreDirPathForTime();
    v36 = [DEAttachmentItem attachmentWithPath:v35];
    [v5 addObject:v36];

    *buf -= 86400;
    v37 = LocationLogEncryptionKeyStoreDirPathForTime();
    v38 = [DEAttachmentItem attachmentWithPath:v37];
    [v5 addObject:v38];

    goto LABEL_16;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension attachmentsForParameters,lacks consent", buf, 2u);
  }

LABEL_16:

  return v5;
}

@end