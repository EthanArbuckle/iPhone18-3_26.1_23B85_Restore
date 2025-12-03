@interface MBDiagnosticExtension
- (MBDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation MBDiagnosticExtension

- (MBDiagnosticExtension)init
{
  v6.receiver = self;
  v6.super_class = MBDiagnosticExtension;
  v2 = [(MBDiagnosticExtension *)&v6 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileBackup.framework"];
    v4 = [v3 localizedStringForKey:@"LOGGING_CONSENT" value:&stru_100004108 table:@"MobileBackup"];
    [(MBDiagnosticExtension *)v2 setLoggingConsent:v4];
  }

  return v2;
}

- (id)attachmentsForParameters:(id)parameters
{
  if (MGGetBoolAnswer())
  {
    v3 = NSTemporaryDirectory();
    v4 = [v3 stringByAppendingPathComponent:@"ttr-MobileBackup.logs.tar.gz"];

    v5 = [[MBManager alloc] initWithDelegate:0];
    v11 = 0;
    v6 = [v5 archiveLogsTo:v4 error:&v11];
    v7 = v11;
    if (v6)
    {
      v8 = [DEAttachmentItem attachmentWithPath:v4];
      [v8 setDeleteOnAttach:&__kCFBooleanTrue];
      v12 = v8;
      v9 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Archiving logs failed: %@", buf, 0xCu);
        _MBLog();
      }

      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

@end