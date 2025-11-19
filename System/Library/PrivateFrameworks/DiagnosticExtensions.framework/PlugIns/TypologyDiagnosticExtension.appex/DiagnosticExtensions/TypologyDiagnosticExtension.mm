@interface TypologyDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
- (void)cleanupDatavault;
- (void)setupWithParameters:(id)a3;
- (void)teardownWithParameters:(id)a3;
@end

@implementation TypologyDiagnosticExtension

- (void)cleanupDatavault
{
  v2 = [[TYATypologyAccessClient alloc] initWithAccessMode:2];
  +[NSFileManager defaultManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100000DB0;
  v5 = v4[3] = &unk_100004170;
  v3 = v5;
  [v2 enumerateTypologyLogs:v4];
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = TITypologyDiagnosticExtensionOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000013F8();
  }

  v4 = [[TYATypologyAccessClient alloc] initWithAccessMode:2];
  v5 = +[NSMutableArray array];
  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6];

  v8 = +[NSFileManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100000FF0;
  v16[3] = &unk_100004198;
  v9 = v7;
  v17 = v9;
  v10 = v8;
  v18 = v10;
  v11 = v5;
  v19 = v11;
  [v4 enumerateTypologyLogs:v16];
  v12 = TITypologyDiagnosticExtensionOSLogFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000014A0(v11);
  }

  v13 = v19;
  v14 = v11;

  return v11;
}

- (void)setupWithParameters:(id)a3
{
  v4 = TITypologyDiagnosticExtensionOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000017E8();
  }

  [(TypologyDiagnosticExtension *)self cleanupDatavault];
  v5 = +[TIPreferencesController sharedPreferencesController];
  [v5 setValue:&__kCFBooleanTrue forKey:54];
  [v5 synchronizePreferences];
}

- (void)teardownWithParameters:(id)a3
{
  v4 = TITypologyDiagnosticExtensionOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100001890();
  }

  v5 = +[TIPreferencesController sharedPreferencesController];
  [v5 setValue:&__kCFBooleanFalse forKey:54];
  [v5 synchronizePreferences];
  [(TypologyDiagnosticExtension *)self cleanupDatavault];
}

@end