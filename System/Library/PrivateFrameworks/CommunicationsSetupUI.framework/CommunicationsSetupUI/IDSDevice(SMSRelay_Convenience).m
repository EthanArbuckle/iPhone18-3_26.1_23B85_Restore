@interface IDSDevice(SMSRelay_Convenience)
- (BOOL)isWatch;
@end

@implementation IDSDevice(SMSRelay_Convenience)

- (BOOL)isWatch
{
  v1 = [a1 modelIdentifier];
  v2 = [v1 rangeOfString:@"Watch"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end