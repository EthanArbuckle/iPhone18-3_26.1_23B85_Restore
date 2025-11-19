@interface CRKConcreteNotificationCenterSubscription
+ (id)subscriptionWithNotificationCenter:(id)a3 notificationName:(id)a4 object:(id)a5 notificationHandler:(id)a6;
- (CRKConcreteNotificationCenterSubscription)initWithNotificationCenter:(id)a3 object:(id)a4 notificationHandler:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)notificationDidFire:(id)a3;
@end

@implementation CRKConcreteNotificationCenterSubscription

- (void)dealloc
{
  [(CRKConcreteNotificationCenterSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKConcreteNotificationCenterSubscription;
  [(CRKConcreteNotificationCenterSubscription *)&v3 dealloc];
}

- (CRKConcreteNotificationCenterSubscription)initWithNotificationCenter:(id)a3 object:(id)a4 notificationHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CRKConcreteNotificationCenterSubscription;
  v12 = [(CRKConcreteNotificationCenterSubscription *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notificationCenter, a3);
    objc_storeStrong(&v13->_object, a4);
    v14 = MEMORY[0x245D3AAD0](v11);
    notificationHandler = v13->_notificationHandler;
    v13->_notificationHandler = v14;
  }

  return v13;
}

+ (id)subscriptionWithNotificationCenter:(id)a3 notificationName:(id)a4 object:(id)a5 notificationHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithNotificationCenter:v13 object:v11 notificationHandler:v10];

  [v13 addObserver:v14 selector:sel_notificationDidFire_ name:v12 object:v11];

  return v14;
}

- (void)cancel
{
  v3 = [(CRKConcreteNotificationCenterSubscription *)self notificationCenter];
  [v3 removeObserver:self];

  [(CRKConcreteNotificationCenterSubscription *)self setNotificationHandler:0];

  [(CRKConcreteNotificationCenterSubscription *)self setObject:0];
}

- (void)notificationDidFire:(id)a3
{
  v6 = a3;
  v4 = [(CRKConcreteNotificationCenterSubscription *)self notificationHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

@end