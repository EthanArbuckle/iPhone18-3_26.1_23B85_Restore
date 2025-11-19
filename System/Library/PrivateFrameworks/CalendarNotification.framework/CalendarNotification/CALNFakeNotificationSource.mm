@interface CALNFakeNotificationSource
+ (id)_activeSources;
+ (id)_activeSourcesQueue;
- (CALNFakeNotificationSource)initWithNotificationManager:(id)a3 iconIdentifierProvider:(id)a4 sourceIdentifierSuffix:(id)a5;
- (NSArray)categories;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)postFakeNotification;
@end

@implementation CALNFakeNotificationSource

- (CALNFakeNotificationSource)initWithNotificationManager:(id)a3 iconIdentifierProvider:(id)a4 sourceIdentifierSuffix:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CALNFakeNotificationSource;
  v12 = [(CALNFakeNotificationSource *)&v19 init];
  if (v12)
  {
    if (initWithNotificationManager_iconIdentifierProvider_sourceIdentifierSuffix__onceToken != -1)
    {
      [CALNFakeNotificationSource initWithNotificationManager:iconIdentifierProvider:sourceIdentifierSuffix:];
    }

    objc_storeStrong(&v12->_notificationManager, a3);
    objc_storeStrong(&v12->_iconIdentifierProvider, a4);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.calendar.notifications.FakeNotification.%@", v11];
    sourceIdentifier = v12->_sourceIdentifier;
    v12->_sourceIdentifier = v13;

    v15 = [objc_opt_class() _activeSourcesQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__CALNFakeNotificationSource_initWithNotificationManager_iconIdentifierProvider_sourceIdentifierSuffix___block_invoke_2;
    block[3] = &unk_278D6F250;
    v18 = v12;
    dispatch_sync(v15, block);
  }

  return v12;
}

void __104__CALNFakeNotificationSource_initWithNotificationManager_iconIdentifierProvider_sourceIdentifierSuffix___block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, HandleDarwinNotification, @"com.apple.calendar.notifications.postFakeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __104__CALNFakeNotificationSource_initWithNotificationManager_iconIdentifierProvider_sourceIdentifierSuffix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _activeSources];
  [v3 addObject:*(a1 + 32)];
}

+ (id)_activeSources
{
  if (_activeSources_onceToken != -1)
  {
    +[CALNFakeNotificationSource _activeSources];
  }

  v3 = _activeSources_activeSources;

  return v3;
}

uint64_t __44__CALNFakeNotificationSource__activeSources__block_invoke()
{
  _activeSources_activeSources = [MEMORY[0x277CCAA50] hashTableWithOptions:5];

  return MEMORY[0x2821F96F8]();
}

+ (id)_activeSourcesQueue
{
  if (_activeSourcesQueue_onceToken != -1)
  {
    +[CALNFakeNotificationSource _activeSourcesQueue];
  }

  v3 = _activeSourcesQueue_queue;

  return v3;
}

void __49__CALNFakeNotificationSource__activeSourcesQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.calendar.notifications.fakeNotificationSourceQ", v2);
  v1 = _activeSourcesQueue_queue;
  _activeSourcesQueue_queue = v0;
}

- (void)postFakeNotification
{
  v8 = CalGenerateUUID();
  v3 = [(CALNFakeNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v8];
  v4 = [CALNNotificationRecord alloc];
  v5 = [(CALNFakeNotificationSource *)self sourceIdentifier];
  v6 = [(CALNNotificationRecord *)v4 initWithSourceIdentifier:v5 sourceClientIdentifier:v8 content:v3];

  v7 = [(CALNFakeNotificationSource *)self notificationManager];
  [v7 addRecord:v6];
}

- (NSArray)categories
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CALNFakeNotificationSource_categories__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  if (categories_onceToken_5 != -1)
  {
    dispatch_once(&categories_onceToken_5, block);
  }

  return categories_categories_5;
}

void __40__CALNFakeNotificationSource_categories__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) sourceIdentifier];
  v2 = [CALNNotificationCategory categoryWithIdentifier:v1 actions:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:@"Discrete" options:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = categories_categories_5;
  categories_categories_5 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CF77B8] hasBeenUnlockedSinceBoot])
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Private";
  }

  v6 = objc_opt_new();
  [v6 setTitle:@"Fake notification"];
  [v6 setBody:v5];
  v7 = [(CALNFakeNotificationSource *)self sourceIdentifier];
  [v6 setCategoryIdentifier:v7];

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v8 dateByAddingDays:1 inCalendar:v9];
  [v6 setExpirationDate:v10];

  v11 = [(CALNFakeNotificationSource *)self iconIdentifierProvider];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [v11 identifierForIconWithDate:v12 inCalendar:v13];
  [v6 setIconIdentifier:v14];

  v15 = [v6 copy];

  return v15;
}

@end