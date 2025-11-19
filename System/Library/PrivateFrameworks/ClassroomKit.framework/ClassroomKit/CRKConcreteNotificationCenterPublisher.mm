@interface CRKConcreteNotificationCenterPublisher
- (id)subscribeToNotificationWithName:(id)a3 object:(id)a4 handler:(id)a5;
@end

@implementation CRKConcreteNotificationCenterPublisher

- (id)subscribeToNotificationWithName:(id)a3 object:(id)a4 handler:(id)a5
{
  v7 = MEMORY[0x277CCAB98];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 defaultCenter];
  v12 = [CRKConcreteNotificationCenterSubscription subscriptionWithNotificationCenter:v11 notificationName:v10 object:v9 notificationHandler:v8];

  return v12;
}

@end