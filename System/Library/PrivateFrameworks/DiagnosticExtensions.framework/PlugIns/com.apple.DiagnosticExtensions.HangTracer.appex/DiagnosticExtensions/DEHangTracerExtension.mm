@interface DEHangTracerExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DEHangTracerExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = [NSRegularExpression regularExpressionWithPattern:@".*-hang-.*ips" options:1 error:0];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v6 = [(DEHangTracerExtension *)self filesInDir:v5 matchingPattern:v4 excludingPattern:0];

  return v6;
}

@end