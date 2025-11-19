@interface _BRKSignificantTimeChangeNotifier
+ (id)sharedInstance;
- (_BRKSignificantTimeChangeNotifier)init;
- (void)_notify:(id)a3;
- (void)dealloc;
@end

@implementation _BRKSignificantTimeChangeNotifier

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_91 != -1)
  {
    +[_BRKSignificantTimeChangeNotifier sharedInstance];
  }

  v3 = sharedInstance_Notifier;

  return v3;
}

- (_BRKSignificantTimeChangeNotifier)init
{
  v8.receiver = self;
  v8.super_class = _BRKSignificantTimeChangeNotifier;
  v2 = [(_BRKSignificantTimeChangeNotifier *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_triggerNotification name:*MEMORY[0x277CBE580] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel_triggerNotification name:*MEMORY[0x277CBE778] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_triggerNotification name:*MEMORY[0x277CBE780] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _significantTimeChangeForScheduler, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v5.receiver = self;
  v5.super_class = _BRKSignificantTimeChangeNotifier;
  [(_BRKSignificantTimeChangeNotifier *)&v5 dealloc];
}

- (void)_notify:(id)a3
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"_BRKSignificantTimeChangeNotification" object:0];
}

@end