@interface CALNUNNotificationResponseMapper
+ (id)_calnNotificationActionIdentifierFromUNNotificationActionIdentifier:(id)identifier;
- (CALNUNNotificationResponseMapper)initWithNotificationMapper:(id)mapper;
- (id)calnNotificationResponseFromUNNotificationResponse:(id)response;
@end

@implementation CALNUNNotificationResponseMapper

- (CALNUNNotificationResponseMapper)initWithNotificationMapper:(id)mapper
{
  mapperCopy = mapper;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationResponseMapper;
  v6 = [(CALNUNNotificationResponseMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationMapper, mapper);
  }

  return v7;
}

- (id)calnNotificationResponseFromUNNotificationResponse:(id)response
{
  responseCopy = response;
  notificationMapper = [(CALNUNNotificationResponseMapper *)self notificationMapper];
  notification = [responseCopy notification];
  v7 = [notificationMapper calnNotificationFromUNNotification:notification];

  v8 = objc_opt_class();
  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [v8 _calnNotificationActionIdentifierFromUNNotificationActionIdentifier:actionIdentifier];

  originIdentifier = [responseCopy originIdentifier];
  targetConnectionEndpoint = [responseCopy targetConnectionEndpoint];

  v13 = [CALNNotificationResponse responseWithNotification:v7 actionIdentifier:v10 originIdentifier:originIdentifier targetConnectionEndpoint:targetConnectionEndpoint];

  return v13;
}

+ (id)_calnNotificationActionIdentifierFromUNNotificationActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(__CFString *)identifierCopy isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v4 = @"com.apple.CALNNotificationDefaultActionIdentifier";
  }

  else if ([(__CFString *)identifierCopy isEqualToString:*MEMORY[0x277CE20F0]])
  {
    v4 = @"com.apple.CALNNotificationDismissActionIdentifier";
  }

  else
  {
    v4 = identifierCopy;
  }

  v5 = v4;

  return v4;
}

@end