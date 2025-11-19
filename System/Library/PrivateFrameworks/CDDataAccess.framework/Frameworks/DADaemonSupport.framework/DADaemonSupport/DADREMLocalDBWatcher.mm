@interface DADREMLocalDBWatcher
+ (id)sharedDBWatcher;
- (DADREMLocalDBWatcher)init;
- (void)registerConcernedRemindersParty:(id)a3 withChangedBlock:(id)a4;
- (void)remindersDatabaseDidChange;
- (void)removeConcernedRemindersParty:(id)a3;
@end

@implementation DADREMLocalDBWatcher

- (void)remindersDatabaseDidChange
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v5, "XXXXXXXXXX: Received reminders database did change.", buf, 2u);
  }

  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(v4 + 5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [v6 transactionId];
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_2424DF000, v7, v8, "XXXXXXXXXX: DADREMLocalDBWatcher: DATransaction starting, ID: %@", buf, 0xCu);
  }

  v10 = [(NSMapTable *)self->_concernedRemindersPartyToBlockMap objectEnumerator];
  v11 = [v10 nextObject];
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = dataaccess_get_global_queue();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__DADREMLocalDBWatcher_remindersDatabaseDidChange__block_invoke;
      v16[3] = &unk_278D52A60;
      v18 = v12;
      v17 = v6;
      v14 = v12;
      dispatch_async(v13, v16);

      v12 = [v10 nextObject];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)sharedDBWatcher
{
  if (sharedDBWatcher_onceToken != -1)
  {
    +[DADREMLocalDBWatcher sharedDBWatcher];
  }

  v3 = sharedDBWatcher___sharedInstance;

  return v3;
}

uint64_t __39__DADREMLocalDBWatcher_sharedDBWatcher__block_invoke()
{
  sharedDBWatcher___sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DADREMLocalDBWatcher)init
{
  v6.receiver = self;
  v6.super_class = DADREMLocalDBWatcher;
  v2 = [(DADREMLocalDBWatcher *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    concernedRemindersPartyToBlockMap = v2->_concernedRemindersPartyToBlockMap;
    v2->_concernedRemindersPartyToBlockMap = v3;
  }

  return v2;
}

- (void)registerConcernedRemindersParty:(id)a3 withChangedBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_2424DF000, v9, v10, "Registering concerned cal party: %@", buf, 0xCu);
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = [(NSMapTable *)v11->_concernedRemindersPartyToBlockMap objectForKey:v7];
  v13 = v12 == 0;

  if (!v13)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:v11 file:@"DADREMLocalDBWatcher.m" lineNumber:40 description:{@"Someone registered themselves for the Reminders notification more than once.  Why?  Bad guy %@", v7}];
  }

  v14 = [v8 copy];

  concernedRemindersPartyToBlockMap = v11->_concernedRemindersPartyToBlockMap;
  v16 = MEMORY[0x245D102E0](v14);
  [(NSMapTable *)concernedRemindersPartyToBlockMap setObject:v16 forKey:v7];

  objc_sync_exit(v11);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeConcernedRemindersParty:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMapTable *)v4->_concernedRemindersPartyToBlockMap objectForKey:v6];

  if (v5)
  {
    [(NSMapTable *)v4->_concernedRemindersPartyToBlockMap removeObjectForKey:v6];
  }

  objc_sync_exit(v4);
}

@end