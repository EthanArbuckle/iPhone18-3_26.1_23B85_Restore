@interface CRKConcreteDistributedNotificationSubscription
- (CRKConcreteDistributedNotificationSubscription)initWithNotificationName:(id)a3 handler:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)notificationDidFire:(id)a3;
- (void)resume;
@end

@implementation CRKConcreteDistributedNotificationSubscription

- (void)dealloc
{
  [(CRKConcreteDistributedNotificationSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKConcreteDistributedNotificationSubscription;
  [(CRKConcreteDistributedNotificationSubscription *)&v3 dealloc];
}

- (CRKConcreteDistributedNotificationSubscription)initWithNotificationName:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CRKConcreteDistributedNotificationSubscription;
  v8 = [(CRKConcreteDistributedNotificationSubscription *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = MEMORY[0x245D3AAD0](v7);
    handler = v8->_handler;
    v8->_handler = v11;
  }

  return v8;
}

- (void)resume
{
  if (![(CRKConcreteDistributedNotificationSubscription *)self isActive])
  {
    [(CRKConcreteDistributedNotificationSubscription *)self setActive:1];
    v3 = [(CRKConcreteDistributedNotificationSubscription *)self center];
    v4 = [(CRKConcreteDistributedNotificationSubscription *)self name];
    CFNotificationCenterAddObserver(v3, self, notificationDidFireCFunction, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)notificationDidFire:(id)a3
{
  v5 = a3;
  if ([(CRKConcreteDistributedNotificationSubscription *)self isActive])
  {
    v4 = [(CRKConcreteDistributedNotificationSubscription *)self handler];
    (v4)[2](v4, v5);
  }
}

- (void)cancel
{
  if ([(CRKConcreteDistributedNotificationSubscription *)self isActive])
  {
    [(CRKConcreteDistributedNotificationSubscription *)self setActive:0];
    v3 = [(CRKConcreteDistributedNotificationSubscription *)self center];
    v4 = [(CRKConcreteDistributedNotificationSubscription *)self name];
    CFNotificationCenterRemoveObserver(v3, self, v4, 0);
  }
}

@end