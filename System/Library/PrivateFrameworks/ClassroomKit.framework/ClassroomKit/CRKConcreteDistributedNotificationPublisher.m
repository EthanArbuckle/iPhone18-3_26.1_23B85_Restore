@interface CRKConcreteDistributedNotificationPublisher
- (id)subscribeToNotificationWithName:(id)a3 handler:(id)a4;
@end

@implementation CRKConcreteDistributedNotificationPublisher

- (id)subscribeToNotificationWithName:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CRKConcreteDistributedNotificationSubscription alloc] initWithNotificationName:v6 handler:v5];

  [(CRKConcreteDistributedNotificationSubscription *)v7 resume];

  return v7;
}

@end