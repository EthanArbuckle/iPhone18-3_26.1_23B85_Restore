@interface CRKConcreteDarwinNotificationSubscription
+ (id)subscriptionWithNotificationName:(id)a3 handler:(id)a4;
- (CRKConcreteDarwinNotificationSubscription)initWithNotificationToken:(int)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRKConcreteDarwinNotificationSubscription

- (void)dealloc
{
  [(CRKConcreteDarwinNotificationSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKConcreteDarwinNotificationSubscription;
  [(CRKConcreteDarwinNotificationSubscription *)&v3 dealloc];
}

- (CRKConcreteDarwinNotificationSubscription)initWithNotificationToken:(int)a3
{
  v5.receiver = self;
  v5.super_class = CRKConcreteDarwinNotificationSubscription;
  result = [(CRKConcreteDarwinNotificationSubscription *)&v5 init];
  if (result)
  {
    result->_notificationToken = a3;
  }

  return result;
}

+ (id)subscriptionWithNotificationName:(id)a3 handler:(id)a4
{
  v6 = a4;
  out_token = -1;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __86__CRKConcreteDarwinNotificationSubscription_subscriptionWithNotificationName_handler___block_invoke;
  v18 = &unk_278DC2FE0;
  v19 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x245D3AAD0](&v15);
  v10 = v8;
  v11 = [v10 UTF8String];

  if (notify_register_dispatch(v11, &out_token, MEMORY[0x277D85CD0], v9))
  {
    v12 = 0;
  }

  else
  {
    v13 = [a1 alloc];
    v12 = [v13 initWithNotificationToken:out_token];
  }

  return v12;
}

- (void)cancel
{
  if ([(CRKConcreteDarwinNotificationSubscription *)self notificationToken]!= -1)
  {
    notify_cancel([(CRKConcreteDarwinNotificationSubscription *)self notificationToken]);

    [(CRKConcreteDarwinNotificationSubscription *)self setNotificationToken:0xFFFFFFFFLL];
  }
}

@end