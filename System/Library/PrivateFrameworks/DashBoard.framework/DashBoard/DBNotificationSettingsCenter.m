@interface DBNotificationSettingsCenter
+ (id)defaultCenter;
- (id)_init;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
@end

@implementation DBNotificationSettingsCenter

+ (id)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    +[DBNotificationSettingsCenter defaultCenter];
  }

  v3 = defaultCenter___defaultCenter;

  return v3;
}

uint64_t __45__DBNotificationSettingsCenter_defaultCenter__block_invoke()
{
  v0 = [[DBNotificationSettingsCenter alloc] _init];
  v1 = defaultCenter___defaultCenter;
  defaultCenter___defaultCenter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = DBNotificationSettingsCenter;
  v2 = [(DBNotificationSettingsCenter *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AA5BD0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
    [v5 setDelegate:v2];
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBNotificationSettingsCenter *)self observers];
  [v5 registerObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBNotificationSettingsCenter *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBNotificationSettingsCenter *)self observers];
  [v8 userNotificationSettingsCenter:v7 didUpdateNotificationSourceIdentifiers:v6];
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBNotificationSettingsCenter *)self observers];
  [v8 userNotificationSettingsCenter:v7 didUpdateNotificationSystemSettings:v6];
}

@end