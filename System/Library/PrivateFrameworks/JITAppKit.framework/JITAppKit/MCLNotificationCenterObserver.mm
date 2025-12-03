@interface MCLNotificationCenterObserver
- (MCLNotificationCenterObserver)init;
- (void)dealloc;
- (void)observeNotification:(id)notification;
- (void)setNotification:(id)notification;
- (void)setObject:(id)object;
- (void)setup;
@end

@implementation MCLNotificationCenterObserver

- (MCLNotificationCenterObserver)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = MCLNotificationCenterObserver;
  v6 = [(MCLNotificationCenterObserver *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_enabled = 1;
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  v3.receiver = selfCopy;
  v3.super_class = MCLNotificationCenterObserver;
  [(MCLNotificationCenterObserver *)&v3 dealloc];
}

- (void)setNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v3 = [location[0] copy];
  notification = selfCopy->_notification;
  selfCopy->_notification = v3;
  MEMORY[0x277D82BD8](notification);
  [(MCLNotificationCenterObserver *)selfCopy setup];
  objc_storeStrong(location, 0);
}

- (void)setObject:(id)object
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  objc_storeStrong(&selfCopy->_object, location[0]);
  [(MCLNotificationCenterObserver *)selfCopy setup];
  objc_storeStrong(location, 0);
}

- (void)setup
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  MEMORY[0x277D82BD8](defaultCenter);
  if (self->_enabled)
  {
    if ([(NSString *)self->_notification length])
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_observeNotification_ name:self->_notification object:self->_object];
      MEMORY[0x277D82BD8](defaultCenter2);
    }
  }
}

- (void)observeNotification:(id)notification
{
  v12[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  if (selfCopy->_enabled)
  {
    v4 = selfCopy;
    userInfo = [location[0] userInfo];
    v8 = 0;
    v6 = 0;
    if (userInfo)
    {
      userInfo2 = [location[0] userInfo];
      v8 = 1;
      v12[0] = userInfo2;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v6 = 1;
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }

    [(MCLNotificationCenterObserver *)v4 emitTMLSignal:@"notification" withArguments:v3];
    if (v6)
    {
      MEMORY[0x277D82BD8](v7);
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](userInfo2);
    }

    MEMORY[0x277D82BD8](userInfo);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end