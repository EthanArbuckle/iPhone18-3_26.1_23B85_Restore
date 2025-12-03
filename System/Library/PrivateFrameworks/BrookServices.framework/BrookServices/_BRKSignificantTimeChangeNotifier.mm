@interface _BRKSignificantTimeChangeNotifier
+ (id)sharedInstance;
- (_BRKSignificantTimeChangeNotifier)init;
- (void)_notify:(id)_notify;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_triggerNotification name:*MEMORY[0x277CBE580] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_triggerNotification name:*MEMORY[0x277CBE778] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_triggerNotification name:*MEMORY[0x277CBE780] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _significantTimeChangeForScheduler, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v5.receiver = self;
  v5.super_class = _BRKSignificantTimeChangeNotifier;
  [(_BRKSignificantTimeChangeNotifier *)&v5 dealloc];
}

- (void)_notify:(id)_notify
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"_BRKSignificantTimeChangeNotification" object:0];
}

@end