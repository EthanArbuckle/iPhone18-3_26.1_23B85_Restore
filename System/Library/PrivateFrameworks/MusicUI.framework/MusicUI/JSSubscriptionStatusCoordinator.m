@interface JSSubscriptionStatusCoordinator
- (JSValue)subscriptionStatus;
- (id)fetch:(id)a3;
- (void)refreshSubscriptionStatus;
@end

@implementation JSSubscriptionStatusCoordinator

- (JSValue)subscriptionStatus
{
  v2 = self;
  v3 = sub_2166F3BE4();

  return v3;
}

- (void)refreshSubscriptionStatus
{
  v2 = self;
  sub_216BBA280();
}

- (id)fetch:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_216BBA2F4();

  return v6;
}

@end