@interface NotificationSuppressionSystem
- (void)scheduler:(id)a3 performActivityWithName:(id)a4 completion:(id)a5;
@end

@implementation NotificationSuppressionSystem

- (void)scheduler:(id)a3 performActivityWithName:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = a3;

  sub_22786D73C();
  _Block_release(v6);
}

@end