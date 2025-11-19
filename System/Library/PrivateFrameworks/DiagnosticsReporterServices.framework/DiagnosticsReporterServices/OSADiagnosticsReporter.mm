@interface OSADiagnosticsReporter
+ (void)launchAppWith:(int64_t)a3 options:(id)a4 completion:(id)a5;
@end

@implementation OSADiagnosticsReporter

+ (void)launchAppWith:(int64_t)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v12 = objc_opt_new();
  v9 = [v8 files_to_attach];
  [v12 setFiles_to_attach:v9];

  v10 = [v8 log_path];
  [v12 setLog_path:v10];

  v11 = [v8 panic_string];

  [v12 setPanic_string:v11];
  [ObjcDiagnosticsReporter launchAppWith:a3 options:v12 completion:v7];
}

@end