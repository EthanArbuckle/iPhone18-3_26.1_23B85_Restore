@interface CALNUNNotificationRequestMapper
- (CALNUNNotificationRequestMapper)initWithNotificationContentMapper:(id)mapper notificationIconMapper:(id)iconMapper;
- (id)calnNotificationRequestFromUNNotificationRequest:(id)request;
- (id)unNotificationRequestFromCALNNotificationRequest:(id)request;
@end

@implementation CALNUNNotificationRequestMapper

- (CALNUNNotificationRequestMapper)initWithNotificationContentMapper:(id)mapper notificationIconMapper:(id)iconMapper
{
  mapperCopy = mapper;
  iconMapperCopy = iconMapper;
  v12.receiver = self;
  v12.super_class = CALNUNNotificationRequestMapper;
  v9 = [(CALNUNNotificationRequestMapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationContentMapper, mapper);
    objc_storeStrong(&v10->_notificationIconMapper, iconMapper);
  }

  return v10;
}

- (id)unNotificationRequestFromCALNNotificationRequest:(id)request
{
  requestCopy = request;
  notificationContentMapper = [(CALNUNNotificationRequestMapper *)self notificationContentMapper];
  content = [requestCopy content];
  v7 = [notificationContentMapper unNotificationContentFromCALNNotificationContent:content];

  v8 = MEMORY[0x277CE1FC0];
  identifier = [requestCopy identifier];

  v10 = [v8 requestWithIdentifier:identifier content:v7 trigger:0];

  return v10;
}

- (id)calnNotificationRequestFromUNNotificationRequest:(id)request
{
  requestCopy = request;
  notificationContentMapper = [(CALNUNNotificationRequestMapper *)self notificationContentMapper];
  content = [requestCopy content];
  v7 = [notificationContentMapper calnNotificationContentFromUNNotificationContent:content];

  identifier = [requestCopy identifier];

  v9 = [CALNNotificationRequest requestWithIdentifier:identifier content:v7];

  return v9;
}

@end