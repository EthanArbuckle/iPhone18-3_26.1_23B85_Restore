@interface ICNotesCrossProcessChangeCoordinator
- (ICNotesCrossProcessChangeCoordinator)initWithSourceCoordinator:(id)coordinator destinationContext:(id)context;
- (id)registerForCrossProcessNotificationName:(id)name block:(id)block;
- (void)dealloc;
- (void)postCrossProcessNotificationName:(id)name;
- (void)removeCrossProcessNotificationObserver:(id)observer;
@end

@implementation ICNotesCrossProcessChangeCoordinator

- (ICNotesCrossProcessChangeCoordinator)initWithSourceCoordinator:(id)coordinator destinationContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = ICNotesCrossProcessChangeCoordinator;
  v9 = [(ICNotesCrossProcessChangeCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (coordinatorCopy)
    {
      objc_storeStrong(&v9->_sourceCoordinator, coordinator);
    }

    if (contextCopy)
    {
      objc_storeStrong(&v10->_destinationContext, context);
      registerForAccountNotifications = [(ICNotesCrossProcessChangeCoordinator *)v10 registerForAccountNotifications];
      accountsNotificationsObserver = v10->_accountsNotificationsObserver;
      v10->_accountsNotificationsObserver = registerForAccountNotifications;
    }
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICNotesCrossProcessChangeCoordinator;
  [(ICNotesCrossProcessChangeCoordinator *)&v5 dealloc];
}

- (void)postCrossProcessNotificationName:(id)name
{
  nameCopy = name;
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ICNotesCrossProcessChangeCoordinator *)nameCopy postCrossProcessNotificationName:v4, v5, v6, v7, v8, v9, v10];
  }

  v11 = MEMORY[0x277CCABB0];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v13 = [v11 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  stringValue = [v13 stringValue];
  [defaultCenter postNotificationName:nameCopy object:stringValue userInfo:0 deliverImmediately:1];
}

- (id)registerForCrossProcessNotificationName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v7 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICNotesCrossProcessChangeCoordinator *)nameCopy registerForCrossProcessNotificationName:v7 block:v8, v9, v10, v11, v12, v13];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__ICNotesCrossProcessChangeCoordinator_registerForCrossProcessNotificationName_block___block_invoke;
  v20[3] = &unk_278195080;
  v21 = nameCopy;
  v22 = blockCopy;
  v16 = blockCopy;
  v17 = nameCopy;
  v18 = [defaultCenter addObserverForName:v17 object:0 suspensionBehavior:4 queue:mainQueue usingBlock:v20];

  return v18;
}

void __86__ICNotesCrossProcessChangeCoordinator_registerForCrossProcessNotificationName_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 integerValue];

  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 processIdentifier];

  if (v4 != v6)
  {
    v7 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __86__ICNotesCrossProcessChangeCoordinator_registerForCrossProcessNotificationName_block___block_invoke_cold_1(a1, v7, v8, v9, v10, v11, v12, v13);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)removeCrossProcessNotificationObserver:(id)observer
{
  if (observer)
  {
    v3 = MEMORY[0x277CCA9A0];
    observerCopy = observer;
    defaultCenter = [v3 defaultCenter];
    [defaultCenter removeObserver:observerCopy];
  }
}

void __71__ICNotesCrossProcessChangeCoordinator_registerForAccountNotifications__block_invoke()
{
  if (+[ICAccount clearAccountForAppleCloudKitTable])
  {
    v0 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      __71__ICNotesCrossProcessChangeCoordinator_registerForAccountNotifications__block_invoke_cold_1(v0);
    }
  }

  v1 = +[ICNoteContext sharedContext];
  [v1 cleanupAdditionalPersistentStores];

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICAccountsDidChangeNotification" object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x277D36138] object:0];
}

@end