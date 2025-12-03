@interface IDSDevice(SMSRelay_Convenience)
- (BOOL)isWatch;
@end

@implementation IDSDevice(SMSRelay_Convenience)

- (BOOL)isWatch
{
  modelIdentifier = [self modelIdentifier];
  v2 = [modelIdentifier rangeOfString:@"Watch"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

@end