@interface NTKCustomMonogramStore
+ (id)sharedInstance;
- (NTKCustomMonogramStore)init;
- (id)_customMonogramFromPrefs;
- (void)_notifyClientsOfChange;
- (void)dealloc;
- (void)setCustomMonogram:(id)monogram;
@end

@implementation NTKCustomMonogramStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[NTKCustomMonogramStore sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __40__NTKCustomMonogramStore_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKCustomMonogramStore);
  v1 = sharedInstance_sInstance;
  sharedInstance_sInstance = v0;
}

- (NTKCustomMonogramStore)init
{
  v5.receiver = self;
  v5.super_class = NTKCustomMonogramStore;
  v2 = [(NTKCustomMonogramStore *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NTKCustomMonogramStore_HandleStoreChanged, @"com.apple.NanoTimeKit.NTKNanoPrefsChanges", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NTKCustomMonogramStore_BroadcastChanges, @"NTKCustomMonogramChangedNotification", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NTKCustomMonogramStore;
  [(NTKCustomMonogramStore *)&v4 dealloc];
}

- (id)_customMonogramFromPrefs
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];
  synchronize = [v2 synchronize];
  v4 = [v2 stringForKey:@"customMonogram"];

  return v4;
}

- (void)setCustomMonogram:(id)monogram
{
  v4 = MEMORY[0x277D2BA58];
  monogramCopy = monogram;
  v12 = [[v4 alloc] initWithDomain:@"com.apple.NanoTimeKit"];
  [v12 setObject:monogramCopy forKey:@"customMonogram"];

  synchronize = [v12 synchronize];
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v8 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v9 = self->_npsManager;
    self->_npsManager = v8;

    npsManager = self->_npsManager;
  }

  v10 = [MEMORY[0x277CBEB98] setWithObject:@"customMonogram"];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.NanoTimeKit" keys:v10];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NTKCustomMonogramChangedNotification", 0, 0, 1u);
}

- (void)_notifyClientsOfChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NTKCustomMonogramChangedNotification" object:self];
}

@end