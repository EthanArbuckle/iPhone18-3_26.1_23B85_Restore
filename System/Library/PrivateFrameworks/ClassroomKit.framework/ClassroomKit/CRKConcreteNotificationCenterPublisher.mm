@interface CRKConcreteNotificationCenterPublisher
- (id)subscribeToNotificationWithName:(id)name object:(id)object handler:(id)handler;
@end

@implementation CRKConcreteNotificationCenterPublisher

- (id)subscribeToNotificationWithName:(id)name object:(id)object handler:(id)handler
{
  v7 = MEMORY[0x277CCAB98];
  handlerCopy = handler;
  objectCopy = object;
  nameCopy = name;
  defaultCenter = [v7 defaultCenter];
  v12 = [CRKConcreteNotificationCenterSubscription subscriptionWithNotificationCenter:defaultCenter notificationName:nameCopy object:objectCopy notificationHandler:handlerCopy];

  return v12;
}

@end