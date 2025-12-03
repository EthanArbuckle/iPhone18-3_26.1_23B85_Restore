@interface DBNotificationSettingsCenter
+ (id)defaultCenter;
- (id)_init;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings;
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

    currentNotificationSettingsCenter = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
    [currentNotificationSettingsCenter setDelegate:v2];
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBNotificationSettingsCenter *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBNotificationSettingsCenter *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  centerCopy = center;
  observers = [(DBNotificationSettingsCenter *)self observers];
  [observers userNotificationSettingsCenter:centerCopy didUpdateNotificationSourceIdentifiers:identifiersCopy];
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  centerCopy = center;
  observers = [(DBNotificationSettingsCenter *)self observers];
  [observers userNotificationSettingsCenter:centerCopy didUpdateNotificationSystemSettings:settingsCopy];
}

@end