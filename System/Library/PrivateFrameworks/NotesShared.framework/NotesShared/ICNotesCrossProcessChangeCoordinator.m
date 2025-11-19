@interface ICNotesCrossProcessChangeCoordinator
- (ICNotesCrossProcessChangeCoordinator)initWithSourceCoordinator:(id)a3 destinationContext:(id)a4;
- (id)registerForCrossProcessNotificationName:(id)a3 block:(id)a4;
- (void)dealloc;
- (void)postCrossProcessNotificationName:(id)a3;
- (void)removeCrossProcessNotificationObserver:(id)a3;
@end

@implementation ICNotesCrossProcessChangeCoordinator

- (ICNotesCrossProcessChangeCoordinator)initWithSourceCoordinator:(id)a3 destinationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICNotesCrossProcessChangeCoordinator;
  v9 = [(ICNotesCrossProcessChangeCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (v7)
    {
      objc_storeStrong(&v9->_sourceCoordinator, a3);
    }

    if (v8)
    {
      objc_storeStrong(&v10->_destinationContext, a4);
      v11 = [(ICNotesCrossProcessChangeCoordinator *)v10 registerForAccountNotifications];
      accountsNotificationsObserver = v10->_accountsNotificationsObserver;
      v10->_accountsNotificationsObserver = v11;
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICNotesCrossProcessChangeCoordinator;
  [(ICNotesCrossProcessChangeCoordinator *)&v5 dealloc];
}

- (void)postCrossProcessNotificationName:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ICNotesCrossProcessChangeCoordinator *)v3 postCrossProcessNotificationName:v4, v5, v6, v7, v8, v9, v10];
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [MEMORY[0x277CCAC38] processInfo];
  v13 = [v11 numberWithInt:{objc_msgSend(v12, "processIdentifier")}];

  v14 = [MEMORY[0x277CCA9A0] defaultCenter];
  v15 = [v13 stringValue];
  [v14 postNotificationName:v3 object:v15 userInfo:0 deliverImmediately:1];
}

- (id)registerForCrossProcessNotificationName:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICNotesCrossProcessChangeCoordinator *)v5 registerForCrossProcessNotificationName:v7 block:v8, v9, v10, v11, v12, v13];
  }

  v14 = [MEMORY[0x277CCA9A0] defaultCenter];
  v15 = [MEMORY[0x277CCABD8] mainQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__ICNotesCrossProcessChangeCoordinator_registerForCrossProcessNotificationName_block___block_invoke;
  v20[3] = &unk_278195080;
  v21 = v5;
  v22 = v6;
  v16 = v6;
  v17 = v5;
  v18 = [v14 addObserverForName:v17 object:0 suspensionBehavior:4 queue:v15 usingBlock:v20];

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

- (void)removeCrossProcessNotificationObserver:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA9A0];
    v4 = a3;
    v5 = [v3 defaultCenter];
    [v5 removeObserver:v4];
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