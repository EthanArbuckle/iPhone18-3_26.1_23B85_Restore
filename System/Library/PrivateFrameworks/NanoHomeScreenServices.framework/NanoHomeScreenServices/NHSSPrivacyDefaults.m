@interface NHSSPrivacyDefaults
+ (NHSSPrivacyDefaults)sharedInstance;
- (NHSSPrivacyDefaults)init;
- (int64_t)microphonePermission;
- (void)_mainQueue_notifyObserversDefaultsDidChange;
- (void)_observeChangesToPrivacyDefaults;
- (void)_postPrivacyDefaultsDidChangeNotification;
- (void)addObserver:(id)a3;
- (void)privacyDefaultsDidChange;
- (void)removeObserver:(id)a3;
- (void)setMicrophonePermission:(int64_t)a3;
@end

@implementation NHSSPrivacyDefaults

+ (NHSSPrivacyDefaults)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NHSSPrivacyDefaults sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __37__NHSSPrivacyDefaults_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(NHSSPrivacyDefaults);

  return MEMORY[0x2821F96F8]();
}

- (NHSSPrivacyDefaults)init
{
  v11.receiver = self;
  v11.super_class = NHSSPrivacyDefaults;
  v2 = [(NHSSPrivacyDefaults *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundle = v2->_bundle;
    v2->_bundle = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v2->_lock_observers;
    v2->_lock_observers = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.NanoHomeScreen.PrivacyDefaults.syncQueue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    [(NHSSPrivacyDefaults *)v2 _observeChangesToPrivacyDefaults];
  }

  return v2;
}

- (int64_t)microphonePermission
{
  v2 = 1970168948;
  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.PrivacyDefaults"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"microphonePermission"];
    v6 = [v5 integerValue];
    if (v6 == 1735552628)
    {
      v7 = 1735552628;
    }

    else
    {
      v7 = 1970168948;
    }

    if (v6 == 1684369017)
    {
      v2 = 1684369017;
    }

    else
    {
      v2 = v7;
    }
  }

  else
  {
    v5 = NHSSLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NHSSPrivacyDefaults *)v5 microphonePermission];
    }
  }

  return v2;
}

- (void)setMicrophonePermission:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NHSSPrivacyDefaults_setMicrophonePermission___block_invoke;
  v4[3] = &unk_279932E18;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __47__NHSSPrivacyDefaults_setMicrophonePermission___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoHomeScreen.PrivacyDefaults"];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    [v2 setObject:v3 forKey:@"microphonePermission"];
    v4 = [v2 synchronize];
    v5 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v6 = [MEMORY[0x277CBEB98] setWithObject:@"microphonePermission"];
    [v5 synchronizeNanoDomain:@"com.apple.NanoHomeScreen.PrivacyDefaults" keys:v6];
    [*(a1 + 32) _postPrivacyDefaultsDidChangeNotification];
  }

  else
  {
    v7 = NHSSLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__NHSSPrivacyDefaults_setMicrophonePermission___block_invoke_cold_1(v7);
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_observeChangesToPrivacyDefaults
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _NHSSPrivacyDefaultsChangeHandler, @"com.apple.NanoHomeScreen.PrivacyDefaultsChanged", self, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_postPrivacyDefaultsDidChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.NanoHomeScreen.PrivacyDefaultsChanged", 0, 0, 1u);
}

- (void)privacyDefaultsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NHSSPrivacyDefaults_privacyDefaultsDidChange__block_invoke;
  block[3] = &unk_279932E40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_mainQueue_notifyObserversDefaultsDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) privacyDefaultsDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end