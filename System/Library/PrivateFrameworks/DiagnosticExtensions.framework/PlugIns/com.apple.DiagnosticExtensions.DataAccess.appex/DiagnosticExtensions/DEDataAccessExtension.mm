@interface DEDataAccessExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DEDataAccessExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = [NSRegularExpression regularExpressionWithPattern:@".*-latest.log" options:1 error:0];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/DataAccess"];
  v6 = [(DEDataAccessExtension *)self filesInDir:v5 matchingPattern:v4 excludingPattern:0];

  return v6;
}

@end