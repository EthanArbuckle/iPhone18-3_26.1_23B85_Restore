@interface GSKDebugNotificationManager
+ (id)sharedInstance;
- (GSKDebugNotificationManager)init;
- (void)notify:(id)notify;
- (void)removeNotification:(id)notification;
@end

@implementation GSKDebugNotificationManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__GSKDebugNotificationManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __45__GSKDebugNotificationManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (GSKDebugNotificationManager)init
{
  v6.receiver = self;
  v6.super_class = GSKDebugNotificationManager;
  v2 = [(GSKDebugNotificationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    messages = v2->_messages;
    v2->_messages = v3;
  }

  return v2;
}

- (void)notify:(id)notify
{
  v14[3] = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  v5 = ASKBuildTypeGetCurrent();
  v14[0] = @"debug";
  v14[1] = @"internal";
  v14[2] = @"convergence";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  IsAnyOf = ASKBuildTypeIsAnyOf(v5, v6);

  if (IsAnyOf)
  {
    v8 = [(GSKDebugNotificationManager *)self mutableArrayValueForKey:@"messages"];
    [v8 addObject:notifyCopy];

    objc_initWeak(&location, self);
    v9 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__GSKDebugNotificationManager_notify___block_invoke;
    block[3] = &unk_27968B178;
    objc_copyWeak(&v12, &location);
    v11 = notifyCopy;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __38__GSKDebugNotificationManager_notify___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeNotification:*(a1 + 32)];
}

- (void)removeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(GSKDebugNotificationManager *)self mutableArrayValueForKey:@"messages"];
  [v5 removeObject:notificationCopy];
}

@end