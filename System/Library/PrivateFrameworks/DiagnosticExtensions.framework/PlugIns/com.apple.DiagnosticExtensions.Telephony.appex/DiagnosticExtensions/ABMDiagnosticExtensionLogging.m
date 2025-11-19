@interface ABMDiagnosticExtensionLogging
+ (os_log_s)getOSLogHandler;
@end

@implementation ABMDiagnosticExtensionLogging

+ (os_log_s)getOSLogHandler
{
  if (qword_1000346E0 != -1)
  {
    dispatch_once(&qword_1000346E0, &stru_100031268);
  }

  return qword_1000346D8;
}

@end