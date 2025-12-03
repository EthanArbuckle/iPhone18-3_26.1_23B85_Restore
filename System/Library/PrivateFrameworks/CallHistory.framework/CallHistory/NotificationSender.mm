@interface NotificationSender
- (NotificationSender)initWithName:(id)name;
- (void)dealloc;
@end

@implementation NotificationSender

- (NotificationSender)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = NotificationSender;
  v6 = [(NotificationSender *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    userInfo = v7->_userInfo;
    v7->_userInfo = 0;
  }

  return v7;
}

- (void)dealloc
{
  name = [(NotificationSender *)self name];
  userInfo = [(NotificationSender *)self userInfo];
  notifyClientsOfEvent(name, userInfo);

  v5.receiver = self;
  v5.super_class = NotificationSender;
  [(NotificationSender *)&v5 dealloc];
}

@end