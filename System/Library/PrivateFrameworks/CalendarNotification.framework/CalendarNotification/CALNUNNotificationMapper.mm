@interface CALNUNNotificationMapper
- (CALNUNNotificationMapper)initWithNotificationRequestMapper:(id)mapper;
- (id)_calnNotificationFromUNNotification:(id)notification;
- (id)calnNotificationFromUNNotification:(id)notification;
- (id)calnNotificationsFromUNNotifications:(id)notifications;
@end

@implementation CALNUNNotificationMapper

- (CALNUNNotificationMapper)initWithNotificationRequestMapper:(id)mapper
{
  mapperCopy = mapper;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationMapper;
  v6 = [(CALNUNNotificationMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationRequestMapper, mapper);
  }

  return v7;
}

- (id)calnNotificationFromUNNotification:(id)notification
{
  notificationCopy = notification;
  notificationRequestMapper = [(CALNUNNotificationMapper *)self notificationRequestMapper];
  request = [notificationCopy request];
  v7 = [notificationRequestMapper calnNotificationRequestFromUNNotificationRequest:request];

  date = [notificationCopy date];

  v9 = [CALNNotification notificationWithRequest:v7 date:date];

  return v9;
}

- (id)calnNotificationsFromUNNotifications:(id)notifications
{
  v4 = MEMORY[0x277CBEB18];
  notificationsCopy = notifications;
  array = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__CALNUNNotificationMapper_calnNotificationsFromUNNotifications___block_invoke;
  v13 = &unk_278D6F370;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [notificationsCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __65__CALNUNNotificationMapper_calnNotificationsFromUNNotifications___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _calnNotificationFromUNNotification:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_calnNotificationFromUNNotification:(id)notification
{
  notificationCopy = notification;
  notificationRequestMapper = [(CALNUNNotificationMapper *)self notificationRequestMapper];
  request = [notificationCopy request];
  v7 = [notificationRequestMapper calnNotificationRequestFromUNNotificationRequest:request];

  date = [notificationCopy date];

  v9 = [CALNNotification notificationWithRequest:v7 date:date];

  return v9;
}

@end