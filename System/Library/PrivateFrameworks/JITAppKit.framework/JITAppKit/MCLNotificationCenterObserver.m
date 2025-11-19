@interface MCLNotificationCenterObserver
- (MCLNotificationCenterObserver)init;
- (void)dealloc;
- (void)observeNotification:(id)a3;
- (void)setNotification:(id)a3;
- (void)setObject:(id)a3;
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
  v5 = self;
  v4 = a2;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:v5];
  MEMORY[0x277D82BD8](v2);
  v3.receiver = v5;
  v3.super_class = MCLNotificationCenterObserver;
  [(MCLNotificationCenterObserver *)&v3 dealloc];
}

- (void)setNotification:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  notification = v6->_notification;
  v6->_notification = v3;
  MEMORY[0x277D82BD8](notification);
  [(MCLNotificationCenterObserver *)v6 setup];
  objc_storeStrong(location, 0);
}

- (void)setObject:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_object, location[0]);
  [(MCLNotificationCenterObserver *)v4 setup];
  objc_storeStrong(location, 0);
}

- (void)setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
  MEMORY[0x277D82BD8](v3);
  if (self->_enabled)
  {
    if ([(NSString *)self->_notification length])
    {
      v2 = [MEMORY[0x277CCAB98] defaultCenter];
      [v2 addObserver:self selector:sel_observeNotification_ name:self->_notification object:self->_object];
      MEMORY[0x277D82BD8](v2);
    }
  }
}

- (void)observeNotification:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v11->_enabled)
  {
    v4 = v11;
    v5 = [location[0] userInfo];
    v8 = 0;
    v6 = 0;
    if (v5)
    {
      v9 = [location[0] userInfo];
      v8 = 1;
      v12[0] = v9;
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
      MEMORY[0x277D82BD8](v9);
    }

    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end