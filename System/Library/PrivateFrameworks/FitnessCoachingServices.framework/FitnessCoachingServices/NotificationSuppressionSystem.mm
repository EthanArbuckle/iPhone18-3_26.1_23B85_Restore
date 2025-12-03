@interface NotificationSuppressionSystem
- (void)scheduler:(id)scheduler performActivityWithName:(id)name completion:(id)completion;
@end

@implementation NotificationSuppressionSystem

- (void)scheduler:(id)scheduler performActivityWithName:(id)name completion:(id)completion
{
  v6 = _Block_copy(completion);
  schedulerCopy = scheduler;

  sub_22786D73C();
  _Block_release(v6);
}

@end