@interface CRKConcreteDistributedNotificationPublisher
- (id)subscribeToNotificationWithName:(id)name handler:(id)handler;
@end

@implementation CRKConcreteDistributedNotificationPublisher

- (id)subscribeToNotificationWithName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v7 = [[CRKConcreteDistributedNotificationSubscription alloc] initWithNotificationName:nameCopy handler:handlerCopy];

  [(CRKConcreteDistributedNotificationSubscription *)v7 resume];

  return v7;
}

@end