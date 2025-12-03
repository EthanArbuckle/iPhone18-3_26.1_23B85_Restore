@interface DEPhoneExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DEPhoneExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = [NSRegularExpression regularExpressionWithPattern:@"phone.*\\.log" options:1 error:0];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Phone"];
  v6 = [(DEPhoneExtension *)self filesInDir:v5 matchingPattern:v4 excludingPattern:0];

  return v6;
}

@end