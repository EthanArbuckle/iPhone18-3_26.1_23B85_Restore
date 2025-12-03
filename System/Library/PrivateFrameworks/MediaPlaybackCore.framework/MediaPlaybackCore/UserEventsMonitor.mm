@interface UserEventsMonitor
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)reason;
@end

@implementation UserEventsMonitor

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;

  sub_1C5DEE73C(reasonCopy);
}

- (NSDictionary)stateDictionary
{

  sub_1C5DEE624();

  v2 = sub_1C6016840();

  return v2;
}

@end