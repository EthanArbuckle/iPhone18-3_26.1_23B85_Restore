@interface BPSSubscriptionStatus
+ (id)awaitingSubscription;
+ (id)subscribedWithSubscription:(id)a3;
+ (id)terminal;
- (BPSSubscriptionStatus)initWithState:(int64_t)a3 subscription:(id)a4;
@end

@implementation BPSSubscriptionStatus

+ (id)awaitingSubscription
{
  v2 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];

  return v2;
}

+ (id)subscribedWithSubscription:(id)a3
{
  v3 = a3;
  v4 = [[BPSSubscriptionStatus alloc] initWithState:1 subscription:v3];

  return v4;
}

+ (id)terminal
{
  v2 = [[BPSSubscriptionStatus alloc] initWithState:2 subscription:0];

  return v2;
}

- (BPSSubscriptionStatus)initWithState:(int64_t)a3 subscription:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BPSSubscriptionStatus;
  v8 = [(BPSSubscriptionStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = a3;
    objc_storeStrong(&v8->_subscription, a4);
  }

  return v9;
}

@end