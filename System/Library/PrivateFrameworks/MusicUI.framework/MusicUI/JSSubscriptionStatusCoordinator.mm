@interface JSSubscriptionStatusCoordinator
- (JSValue)subscriptionStatus;
- (id)fetch:(id)fetch;
- (void)refreshSubscriptionStatus;
@end

@implementation JSSubscriptionStatusCoordinator

- (JSValue)subscriptionStatus
{
  selfCopy = self;
  v3 = sub_2166F3BE4();

  return v3;
}

- (void)refreshSubscriptionStatus
{
  selfCopy = self;
  sub_216BBA280();
}

- (id)fetch:(id)fetch
{
  fetchCopy = fetch;
  selfCopy = self;
  v6 = sub_216BBA2F4();

  return v6;
}

@end