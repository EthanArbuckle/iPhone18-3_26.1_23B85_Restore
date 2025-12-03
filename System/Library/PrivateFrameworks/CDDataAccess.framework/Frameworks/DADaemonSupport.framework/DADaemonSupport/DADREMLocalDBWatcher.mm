@interface DADREMLocalDBWatcher
+ (id)sharedDBWatcher;
- (DADREMLocalDBWatcher)init;
- (void)registerConcernedRemindersParty:(id)party withChangedBlock:(id)block;
- (void)remindersDatabaseDidChange;
- (void)removeConcernedRemindersParty:(id)party;
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
    transactionId = [v6 transactionId];
    *buf = 138412290;
    v20 = transactionId;
    _os_log_impl(&dword_2424DF000, v7, v8, "XXXXXXXXXX: DADREMLocalDBWatcher: DATransaction starting, ID: %@", buf, 0xCu);
  }

  objectEnumerator = [(NSMapTable *)self->_concernedRemindersPartyToBlockMap objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v13 = dataaccess_get_global_queue();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__DADREMLocalDBWatcher_remindersDatabaseDidChange__block_invoke;
      v16[3] = &unk_278D52A60;
      v18 = nextObject2;
      v17 = v6;
      v14 = nextObject2;
      dispatch_async(v13, v16);

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
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
    mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    concernedRemindersPartyToBlockMap = v2->_concernedRemindersPartyToBlockMap;
    v2->_concernedRemindersPartyToBlockMap = mapTableWithWeakToStrongObjects;
  }

  return v2;
}

- (void)registerConcernedRemindersParty:(id)party withChangedBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  partyCopy = party;
  blockCopy = block;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412290;
    v20 = partyCopy;
    _os_log_impl(&dword_2424DF000, v9, v10, "Registering concerned cal party: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(NSMapTable *)selfCopy->_concernedRemindersPartyToBlockMap objectForKey:partyCopy];
  v13 = v12 == 0;

  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"DADREMLocalDBWatcher.m" lineNumber:40 description:{@"Someone registered themselves for the Reminders notification more than once.  Why?  Bad guy %@", partyCopy}];
  }

  v14 = [blockCopy copy];

  concernedRemindersPartyToBlockMap = selfCopy->_concernedRemindersPartyToBlockMap;
  v16 = MEMORY[0x245D102E0](v14);
  [(NSMapTable *)concernedRemindersPartyToBlockMap setObject:v16 forKey:partyCopy];

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeConcernedRemindersParty:(id)party
{
  partyCopy = party;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_concernedRemindersPartyToBlockMap objectForKey:partyCopy];

  if (v5)
  {
    [(NSMapTable *)selfCopy->_concernedRemindersPartyToBlockMap removeObjectForKey:partyCopy];
  }

  objc_sync_exit(selfCopy);
}

@end