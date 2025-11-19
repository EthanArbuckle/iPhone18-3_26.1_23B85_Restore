@interface CALNUNNotificationResponseMapper
+ (id)_calnNotificationActionIdentifierFromUNNotificationActionIdentifier:(id)a3;
- (CALNUNNotificationResponseMapper)initWithNotificationMapper:(id)a3;
- (id)calnNotificationResponseFromUNNotificationResponse:(id)a3;
@end

@implementation CALNUNNotificationResponseMapper

- (CALNUNNotificationResponseMapper)initWithNotificationMapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationResponseMapper;
  v6 = [(CALNUNNotificationResponseMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationMapper, a3);
  }

  return v7;
}

- (id)calnNotificationResponseFromUNNotificationResponse:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNNotificationResponseMapper *)self notificationMapper];
  v6 = [v4 notification];
  v7 = [v5 calnNotificationFromUNNotification:v6];

  v8 = objc_opt_class();
  v9 = [v4 actionIdentifier];
  v10 = [v8 _calnNotificationActionIdentifierFromUNNotificationActionIdentifier:v9];

  v11 = [v4 originIdentifier];
  v12 = [v4 targetConnectionEndpoint];

  v13 = [CALNNotificationResponse responseWithNotification:v7 actionIdentifier:v10 originIdentifier:v11 targetConnectionEndpoint:v12];

  return v13;
}

+ (id)_calnNotificationActionIdentifierFromUNNotificationActionIdentifier:(id)a3
{
  v3 = a3;
  if ([(__CFString *)v3 isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v4 = @"com.apple.CALNNotificationDefaultActionIdentifier";
  }

  else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x277CE20F0]])
  {
    v4 = @"com.apple.CALNNotificationDismissActionIdentifier";
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

@end