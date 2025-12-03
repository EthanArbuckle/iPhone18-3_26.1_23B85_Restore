@interface NTKSignificantTimeChangeLogger
+ (id)sharedInstance;
- (NTKSignificantTimeChangeLogger)init;
- (void)_handleNotification:(id)notification;
- (void)_logNotificationReceiptWithName:(id)name;
- (void)_startObserving;
@end

@implementation NTKSignificantTimeChangeLogger

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_19 != -1)
  {
    +[NTKSignificantTimeChangeLogger sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_5;

  return v3;
}

void __48__NTKSignificantTimeChangeLogger_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___sharedInstance_5;
  sharedInstance___sharedInstance_5 = v0;
}

- (NTKSignificantTimeChangeLogger)init
{
  v5.receiver = self;
  v5.super_class = NTKSignificantTimeChangeLogger;
  v2 = [(NTKSignificantTimeChangeLogger *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKSignificantTimeChangeLogger *)v2 _startObserving];
  }

  return v3;
}

- (void)_handleNotification:(id)notification
{
  name = [notification name];
  [(NTKSignificantTimeChangeLogger *)self _logNotificationReceiptWithName:name];
}

- (void)_logNotificationReceiptWithName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = _NTKLoggingObjectForDomain(15, "NTKLoggingDomainSignificantTimeChange");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = nameCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "SignificantTimeChangeLogger %p received notification: %@", &v6, 0x16u);
  }
}

- (void)_startObserving
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(15, "NTKLoggingDomainSignificantTimeChange");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "SignificantTimeChangeLogger %p began logging", &v7, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleNotification_ name:*MEMORY[0x277D766F0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleNotification_ name:*MEMORY[0x277CBE580] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleSignificantTimeChangeNotification, @"SignificantTimeChangeNotification", 0, 0);
}

@end