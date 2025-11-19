@interface CALNUNNotificationMapper
- (CALNUNNotificationMapper)initWithNotificationRequestMapper:(id)a3;
- (id)_calnNotificationFromUNNotification:(id)a3;
- (id)calnNotificationFromUNNotification:(id)a3;
- (id)calnNotificationsFromUNNotifications:(id)a3;
@end

@implementation CALNUNNotificationMapper

- (CALNUNNotificationMapper)initWithNotificationRequestMapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationMapper;
  v6 = [(CALNUNNotificationMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequestMapper, a3);
  }

  return v7;
}

- (id)calnNotificationFromUNNotification:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNNotificationMapper *)self notificationRequestMapper];
  v6 = [v4 request];
  v7 = [v5 calnNotificationRequestFromUNNotificationRequest:v6];

  v8 = [v4 date];

  v9 = [CALNNotification notificationWithRequest:v7 date:v8];

  return v9;
}

- (id)calnNotificationsFromUNNotifications:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__CALNUNNotificationMapper_calnNotificationsFromUNNotifications___block_invoke;
  v13 = &unk_278D6F370;
  v14 = self;
  v15 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __65__CALNUNNotificationMapper_calnNotificationsFromUNNotifications___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _calnNotificationFromUNNotification:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_calnNotificationFromUNNotification:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNNotificationMapper *)self notificationRequestMapper];
  v6 = [v4 request];
  v7 = [v5 calnNotificationRequestFromUNNotificationRequest:v6];

  v8 = [v4 date];

  v9 = [CALNNotification notificationWithRequest:v7 date:v8];

  return v9;
}

@end