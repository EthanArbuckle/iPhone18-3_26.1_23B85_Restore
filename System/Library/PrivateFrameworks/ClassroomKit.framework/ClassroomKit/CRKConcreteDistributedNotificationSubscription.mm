@interface CRKConcreteDistributedNotificationSubscription
- (CRKConcreteDistributedNotificationSubscription)initWithNotificationName:(id)name handler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)notificationDidFire:(id)fire;
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

- (CRKConcreteDistributedNotificationSubscription)initWithNotificationName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CRKConcreteDistributedNotificationSubscription;
  v8 = [(CRKConcreteDistributedNotificationSubscription *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = MEMORY[0x245D3AAD0](handlerCopy);
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
    center = [(CRKConcreteDistributedNotificationSubscription *)self center];
    name = [(CRKConcreteDistributedNotificationSubscription *)self name];
    CFNotificationCenterAddObserver(center, self, notificationDidFireCFunction, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)notificationDidFire:(id)fire
{
  fireCopy = fire;
  if ([(CRKConcreteDistributedNotificationSubscription *)self isActive])
  {
    handler = [(CRKConcreteDistributedNotificationSubscription *)self handler];
    (handler)[2](handler, fireCopy);
  }
}

- (void)cancel
{
  if ([(CRKConcreteDistributedNotificationSubscription *)self isActive])
  {
    [(CRKConcreteDistributedNotificationSubscription *)self setActive:0];
    center = [(CRKConcreteDistributedNotificationSubscription *)self center];
    name = [(CRKConcreteDistributedNotificationSubscription *)self name];
    CFNotificationCenterRemoveObserver(center, self, name, 0);
  }
}

@end