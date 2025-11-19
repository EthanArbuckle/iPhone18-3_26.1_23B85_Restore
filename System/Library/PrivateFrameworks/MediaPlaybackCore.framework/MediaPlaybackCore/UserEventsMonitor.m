@interface UserEventsMonitor
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)a3;
@end

@implementation UserEventsMonitor

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5DEE73C(v3);
}

- (NSDictionary)stateDictionary
{

  sub_1C5DEE624();

  v2 = sub_1C6016840();

  return v2;
}

@end