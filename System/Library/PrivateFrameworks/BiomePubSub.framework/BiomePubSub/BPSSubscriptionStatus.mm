@interface BPSSubscriptionStatus
+ (id)awaitingSubscription;
+ (id)subscribedWithSubscription:(id)subscription;
+ (id)terminal;
- (BPSSubscriptionStatus)initWithState:(int64_t)state subscription:(id)subscription;
@end

@implementation BPSSubscriptionStatus

+ (id)awaitingSubscription
{
  v2 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];

  return v2;
}

+ (id)subscribedWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = [[BPSSubscriptionStatus alloc] initWithState:1 subscription:subscriptionCopy];

  return v4;
}

+ (id)terminal
{
  v2 = [[BPSSubscriptionStatus alloc] initWithState:2 subscription:0];

  return v2;
}

- (BPSSubscriptionStatus)initWithState:(int64_t)state subscription:(id)subscription
{
  subscriptionCopy = subscription;
  v11.receiver = self;
  v11.super_class = BPSSubscriptionStatus;
  v8 = [(BPSSubscriptionStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    objc_storeStrong(&v8->_subscription, subscription);
  }

  return v9;
}

@end