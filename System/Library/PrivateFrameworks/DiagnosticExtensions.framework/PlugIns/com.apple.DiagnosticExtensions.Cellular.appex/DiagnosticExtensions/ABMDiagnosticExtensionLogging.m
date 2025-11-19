@interface ABMDiagnosticExtensionLogging
+ (os_log_s)getOSLogHandler;
@end

@implementation ABMDiagnosticExtensionLogging

+ (os_log_s)getOSLogHandler
{
  if (qword_1000346D8 != -1)
  {
    dispatch_once(&qword_1000346D8, &stru_100031270);
  }

  return qword_1000346D0;
}

@end