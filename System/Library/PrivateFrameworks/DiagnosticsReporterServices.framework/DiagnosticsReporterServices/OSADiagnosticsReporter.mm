@interface OSADiagnosticsReporter
+ (void)launchAppWith:(int64_t)with options:(id)options completion:(id)completion;
@end

@implementation OSADiagnosticsReporter

+ (void)launchAppWith:(int64_t)with options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v12 = objc_opt_new();
  files_to_attach = [optionsCopy files_to_attach];
  [v12 setFiles_to_attach:files_to_attach];

  log_path = [optionsCopy log_path];
  [v12 setLog_path:log_path];

  panic_string = [optionsCopy panic_string];

  [v12 setPanic_string:panic_string];
  [ObjcDiagnosticsReporter launchAppWith:with options:v12 completion:completionCopy];
}

@end