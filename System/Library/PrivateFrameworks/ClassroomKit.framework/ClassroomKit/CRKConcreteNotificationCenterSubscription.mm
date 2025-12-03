@interface CRKConcreteNotificationCenterSubscription
+ (id)subscriptionWithNotificationCenter:(id)center notificationName:(id)name object:(id)object notificationHandler:(id)handler;
- (CRKConcreteNotificationCenterSubscription)initWithNotificationCenter:(id)center object:(id)object notificationHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)notificationDidFire:(id)fire;
@end

@implementation CRKConcreteNotificationCenterSubscription

- (void)dealloc
{
  [(CRKConcreteNotificationCenterSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKConcreteNotificationCenterSubscription;
  [(CRKConcreteNotificationCenterSubscription *)&v3 dealloc];
}

- (CRKConcreteNotificationCenterSubscription)initWithNotificationCenter:(id)center object:(id)object notificationHandler:(id)handler
{
  centerCopy = center;
  objectCopy = object;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = CRKConcreteNotificationCenterSubscription;
  v12 = [(CRKConcreteNotificationCenterSubscription *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notificationCenter, center);
    objc_storeStrong(&v13->_object, object);
    v14 = MEMORY[0x245D3AAD0](handlerCopy);
    notificationHandler = v13->_notificationHandler;
    v13->_notificationHandler = v14;
  }

  return v13;
}

+ (id)subscriptionWithNotificationCenter:(id)center notificationName:(id)name object:(id)object notificationHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  nameCopy = name;
  centerCopy = center;
  v14 = [[self alloc] initWithNotificationCenter:centerCopy object:objectCopy notificationHandler:handlerCopy];

  [centerCopy addObserver:v14 selector:sel_notificationDidFire_ name:nameCopy object:objectCopy];

  return v14;
}

- (void)cancel
{
  notificationCenter = [(CRKConcreteNotificationCenterSubscription *)self notificationCenter];
  [notificationCenter removeObserver:self];

  [(CRKConcreteNotificationCenterSubscription *)self setNotificationHandler:0];

  [(CRKConcreteNotificationCenterSubscription *)self setObject:0];
}

- (void)notificationDidFire:(id)fire
{
  fireCopy = fire;
  notificationHandler = [(CRKConcreteNotificationCenterSubscription *)self notificationHandler];
  v5 = notificationHandler;
  if (notificationHandler)
  {
    (*(notificationHandler + 16))(notificationHandler, fireCopy);
  }
}

@end