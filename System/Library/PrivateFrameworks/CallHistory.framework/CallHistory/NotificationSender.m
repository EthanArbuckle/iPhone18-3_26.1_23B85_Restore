@interface NotificationSender
- (NotificationSender)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation NotificationSender

- (NotificationSender)initWithName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NotificationSender;
  v6 = [(NotificationSender *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    userInfo = v7->_userInfo;
    v7->_userInfo = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(NotificationSender *)self name];
  v4 = [(NotificationSender *)self userInfo];
  notifyClientsOfEvent(v3, v4);

  v5.receiver = self;
  v5.super_class = NotificationSender;
  [(NotificationSender *)&v5 dealloc];
}

@end