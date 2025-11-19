@interface CALNUNNotificationRequestMapper
- (CALNUNNotificationRequestMapper)initWithNotificationContentMapper:(id)a3 notificationIconMapper:(id)a4;
- (id)calnNotificationRequestFromUNNotificationRequest:(id)a3;
- (id)unNotificationRequestFromCALNNotificationRequest:(id)a3;
@end

@implementation CALNUNNotificationRequestMapper

- (CALNUNNotificationRequestMapper)initWithNotificationContentMapper:(id)a3 notificationIconMapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CALNUNNotificationRequestMapper;
  v9 = [(CALNUNNotificationRequestMapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationContentMapper, a3);
    objc_storeStrong(&v10->_notificationIconMapper, a4);
  }

  return v10;
}

- (id)unNotificationRequestFromCALNNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNNotificationRequestMapper *)self notificationContentMapper];
  v6 = [v4 content];
  v7 = [v5 unNotificationContentFromCALNNotificationContent:v6];

  v8 = MEMORY[0x277CE1FC0];
  v9 = [v4 identifier];

  v10 = [v8 requestWithIdentifier:v9 content:v7 trigger:0];

  return v10;
}

- (id)calnNotificationRequestFromUNNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNNotificationRequestMapper *)self notificationContentMapper];
  v6 = [v4 content];
  v7 = [v5 calnNotificationContentFromUNNotificationContent:v6];

  v8 = [v4 identifier];

  v9 = [CALNNotificationRequest requestWithIdentifier:v8 content:v7];

  return v9;
}

@end