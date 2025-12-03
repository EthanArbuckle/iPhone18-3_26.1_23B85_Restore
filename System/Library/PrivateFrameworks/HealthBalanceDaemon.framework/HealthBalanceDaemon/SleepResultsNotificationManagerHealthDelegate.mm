@interface SleepResultsNotificationManagerHealthDelegate
- (void)didUpdateKeyValueDomain:(id)domain;
@end

@implementation SleepResultsNotificationManagerHealthDelegate

- (void)didUpdateKeyValueDomain:(id)domain
{
  domainCopy = domain;

  sub_228926734();
}

@end