@interface ESLocalDBWatcher
+ (id)sharedDBWatcher;
- (ESLocalDBWatcher)init;
- (id)_dbInfoForAccountID:(id)d create:(BOOL)create;
- (int)lastSavedCalSequenceNumberForDatabaseInContainer:(id)container;
- (void)_handleABChangeNotificationWithInfo:(id)info;
- (void)_handleCalChangeNotification;
- (void)_notesChangedExternally;
- (void)dealloc;
- (void)didReceiveDarwinNotification:(id)notification;
- (void)noteABDBDirChanged;
- (void)noteCalDBDirChanged;
- (void)registerConcernedABParty:(id)party withChangedBlock:(id)block;
- (void)registerConcernedCalParty:(id)party forAccountID:(id)d withChangedBlock:(id)block;
- (void)registerConcernedNoteParty:(id)party withChangedBlock:(id)block;
- (void)removeConcernedABParty:(id)party;
- (void)removeConcernedCalParty:(id)party forAccountID:(id)d;
- (void)removeConcernedNoteParty:(id)party;
@end

@implementation ESLocalDBWatcher

+ (id)sharedDBWatcher
{
  if (sharedDBWatcher_onceToken != -1)
  {
    +[ESLocalDBWatcher sharedDBWatcher];
  }

  v3 = sharedDBWatcher___sharedInstance;

  return v3;
}

uint64_t __35__ESLocalDBWatcher_sharedDBWatcher__block_invoke()
{
  sharedDBWatcher___sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ESLocalDBWatcher)init
{
  v12.receiver = self;
  v12.super_class = ESLocalDBWatcher;
  v2 = [(ESLocalDBWatcher *)&v12 init];
  if (v2)
  {
    mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    concernedABPartyToBlockMap = v2->_concernedABPartyToBlockMap;
    v2->_concernedABPartyToBlockMap = mapTableWithWeakToStrongObjects;

    mapTableWithWeakToStrongObjects2 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    concernedNotePartyToBlockMap = v2->_concernedNotePartyToBlockMap;
    v2->_concernedNotePartyToBlockMap = mapTableWithWeakToStrongObjects2;

    v7 = [[ESCalDBHelper alloc] initWithDatabaseInitOptions:6];
    calDBHelper = v2->_calDBHelper;
    v2->_calDBHelper = v7;

    v9 = objc_opt_new();
    calDBInfosByPath = v2->_calDBInfosByPath;
    v2->_calDBInfosByPath = v9;
  }

  return v2;
}

- (void)dealloc
{
  abWatcher = self->_abWatcher;
  if (abWatcher)
  {
    CFRelease(abWatcher);
    self->_abWatcher = 0;
  }

  v4.receiver = self;
  v4.super_class = ESLocalDBWatcher;
  [(ESLocalDBWatcher *)&v4 dealloc];
}

- (void)_handleABChangeNotificationWithInfo:(id)info
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!self->_abWatcher)
  {
    v12 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v12, v21))
    {
      *buf = 138412290;
      *v27 = infoCopy;
      _os_log_impl(&dword_24A097000, v12, v21, "AddressBook database not yet initialize. Notification info: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  SequenceNumber = ABAddressBookGetSequenceNumber();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    lastSavedABSequenceNumber = self->_lastSavedABSequenceNumber;
    *buf = 67109376;
    v27[0] = SequenceNumber;
    LOWORD(v27[1]) = 1024;
    *(&v27[1] + 2) = lastSavedABSequenceNumber;
    _os_log_impl(&dword_24A097000, v6, v8, "__ABDatabaseChangedExternally - comparing current sequence number %d to saved sequence number %d", buf, 0xEu);
  }

  if (SequenceNumber > self->_lastSavedABSequenceNumber + 1)
  {
    v10 = [infoCopy objectForKeyedSubscript:@"isLocal"];
    intValue = [v10 intValue];

    if (!intValue)
    {
      v12 = objc_opt_new();
      v13 = DALoggingwithCategory();
      v14 = *(v7 + 6);
      if (os_log_type_enabled(v13, v14))
      {
        transactionId = [v12 transactionId];
        *buf = 138412290;
        *v27 = transactionId;
        _os_log_impl(&dword_24A097000, v13, v14, "DATransaction starting, ID: %@", buf, 0xCu);
      }

      objectEnumerator = [(NSMapTable *)self->_concernedABPartyToBlockMap objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        do
        {
          v19 = dataaccess_get_global_queue();
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __56__ESLocalDBWatcher__handleABChangeNotificationWithInfo___block_invoke;
          v23[3] = &unk_278FC62C0;
          v25 = nextObject2;
          v24 = v12;
          v20 = nextObject2;
          dispatch_async(v19, v23);

          nextObject2 = [objectEnumerator nextObject];
        }

        while (nextObject2);
      }

LABEL_14:
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)registerConcernedABParty:(id)party withChangedBlock:(id)block
{
  partyCopy = party;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_abWatcher)
  {
    error = 0;
    v10 = +[ESLocalDBHelper abTestABDBDir];
    if (v10)
    {
      selfCopy->_abWatcher = ABAddressBookCreateWithDatabaseDirectory();
    }

    else
    {
      v11 = ABAddressBookCreateWithOptions(0, &error);
      v12 = error;
      selfCopy->_abWatcher = v11;
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  v13 = [(NSMapTable *)selfCopy->_concernedABPartyToBlockMap objectForKey:partyCopy];

  if (v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"ESLocalDBWatcher.m" lineNumber:128 description:{@"Someone registered themselves for the AB notification more than once: %@", partyCopy}];
  }

  v14 = [blockCopy copy];

  concernedABPartyToBlockMap = selfCopy->_concernedABPartyToBlockMap;
  v16 = MEMORY[0x24C20FF50](v14);
  [(NSMapTable *)concernedABPartyToBlockMap setObject:v16 forKey:partyCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeConcernedABParty:(id)party
{
  partyCopy = party;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_concernedABPartyToBlockMap objectForKey:partyCopy];

  if (v5)
  {
    [(NSMapTable *)selfCopy->_concernedABPartyToBlockMap removeObjectForKey:partyCopy];
    if (![(NSMapTable *)selfCopy->_concernedABPartyToBlockMap count])
    {
      abWatcher = selfCopy->_abWatcher;
      if (abWatcher)
      {
        CFRelease(abWatcher);
        selfCopy->_abWatcher = 0;
      }

      selfCopy->_lastSavedABSequenceNumber = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleCalChangeNotification
{
  v56 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  p_isa = &selfCopy->super.isa;
  allOpenDatabases = [(ESCalDBHelper *)selfCopy->_calDBHelper allOpenDatabases];
  v4 = [allOpenDatabases countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v4)
  {
    v35 = *v47;
    type = *(MEMORY[0x277D03988] + 7);
    v33 = *(MEMORY[0x277D03988] + 5);
    v34 = *(MEMORY[0x277D03988] + 6);
    *&v5 = 138412290;
    v31 = v5;
    obj = allOpenDatabases;
    do
    {
      v6 = 0;
      v36 = v4;
      do
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = CalDatabaseCopyDirectoryPathForDatabase();
        v10 = [v8 _canonicalizePath:v9];

        v11 = [p_isa[7] objectForKeyedSubscript:v10];
        SequenceNumber = CalDatabaseGetSequenceNumber();
        lastSavedSequenceNumber = [v11 lastSavedSequenceNumber];
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, type))
        {
          *buf = 67109634;
          *v52 = SequenceNumber;
          *&v52[4] = 1024;
          *&v52[6] = lastSavedSequenceNumber;
          v53 = 2112;
          v54 = v7;
          _os_log_impl(&dword_24A097000, v14, type, "__CalDatabaseChangedExternally - comparing current sequence number %d to saved sequence number %d in database: %@", buf, 0x18u);
        }

        if (SequenceNumber > lastSavedSequenceNumber + 1)
        {
          v15 = objc_opt_new();
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v34))
          {
            transactionId = [v15 transactionId];
            *buf = v31;
            *v52 = transactionId;
            _os_log_impl(&dword_24A097000, v16, v34, "DATransaction starting, ID: %@", buf, 0xCu);
          }

          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v33))
          {
            *buf = 0;
            _os_log_impl(&dword_24A097000, v18, v33, "Notifying agents that the Calendar database has changed.", buf, 2u);
          }

          v19 = objc_opt_new();
          blocksByConcernedParty = [v11 blocksByConcernedParty];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __48__ESLocalDBWatcher__handleCalChangeNotification__block_invoke;
          v43[3] = &unk_278FC62E8;
          v21 = v19;
          v44 = v21;
          v22 = v15;
          v45 = v22;
          [blocksByConcernedParty enumerateKeysAndObjectsUsingBlock:v43];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v39 objects:v50 count:16];
          if (v24)
          {
            v25 = *v40;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v40 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v39 + 1) + 8 * i);
                blocksByConcernedParty2 = [v11 blocksByConcernedParty];
                [blocksByConcernedParty2 setObject:0 forKeyedSubscript:v27];

                blocksByConcernedParty3 = [v11 blocksByConcernedParty];
                LODWORD(v27) = [blocksByConcernedParty3 count] == 0;

                if (v27)
                {
                  [v11 setLastSavedSequenceNumber:0];
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v39 objects:v50 count:16];
            }

            while (v24);
          }
        }

        ++v6;
      }

      while (v6 != v36);
      allOpenDatabases = obj;
      v4 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v4);
  }

  objc_sync_exit(p_isa);
  v30 = *MEMORY[0x277D85DE8];
}

void __48__ESLocalDBWatcher__handleCalChangeNotification__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 concernedParty];

  if (v7)
  {
    v8 = dataaccess_get_global_queue();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ESLocalDBWatcher__handleCalChangeNotification__block_invoke_2;
    v9[3] = &unk_278FC62C0;
    v11 = v6;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_dbInfoForAccountID:(id)d create:(BOOL)create
{
  createCopy = create;
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ESCalDBHelper *)self->_calDBHelper databaseForAccountID:dCopy];
  if (!v7)
  {
    v11 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v14))
    {
      v24 = 138543362;
      v25 = dCopy;
      _os_log_impl(&dword_24A097000, v11, v14, "No database for account: %{public}@", &v24, 0xCu);
    }

    goto LABEL_15;
  }

  v8 = v7;
  v9 = objc_opt_class();
  v10 = CalDatabaseCopyDirectoryPathForDatabase();
  v11 = [v9 _canonicalizePath:v10];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_calDBInfosByPath objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = v12;
      goto LABEL_16;
    }

    if (createCopy)
    {
      v13 = [[ESLocalDBWatcherDBInfo alloc] initWithPath:v11];
      [(NSMutableDictionary *)self->_calDBInfosByPath setObject:v13 forKeyedSubscript:v11];
      goto LABEL_16;
    }

    v15 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v15, *(MEMORY[0x277D03988] + 3)))
    {
      goto LABEL_14;
    }

    v24 = 138543874;
    v25 = v11;
    v26 = 2048;
    v27 = v8;
    v28 = 2114;
    v29 = dCopy;
    v17 = "No dbInfo for path: %{public}@, database: %p, account: %{public}@";
    v18 = v15;
    v19 = v21;
    v20 = 32;
    goto LABEL_13;
  }

  v15 = DALoggingwithCategory();
  v16 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v15, v16))
  {
    v24 = 134218242;
    v25 = v8;
    v26 = 2114;
    v27 = dCopy;
    v17 = "no path for database: %p, account: %{public}@";
    v18 = v15;
    v19 = v16;
    v20 = 22;
LABEL_13:
    _os_log_impl(&dword_24A097000, v18, v19, v17, &v24, v20);
  }

LABEL_14:

LABEL_15:
  v13 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)registerConcernedCalParty:(id)party forAccountID:(id)d withChangedBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  partyCopy = party;
  dCopy = d;
  blockCopy = block;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    v18 = 138412546;
    v19 = partyCopy;
    v20 = 2114;
    v21 = dCopy;
    _os_log_impl(&dword_24A097000, v11, v12, "Registering concerned cal party: %@ for account: %{public}@", &v18, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ESCalDBHelper *)selfCopy->_calDBHelper openDatabaseForAccountID:dCopy clientID:0];
  v14 = [(ESLocalDBWatcher *)selfCopy _dbInfoForAccountID:dCopy create:1];
  blocksByConcernedParty = [v14 blocksByConcernedParty];
  v16 = [blocksByConcernedParty count] == 0;

  if (!v16)
  {
    [(ESCalDBHelper *)selfCopy->_calDBHelper closeDatabaseForAccountID:dCopy save:0];
  }

  [v14 addBlock:blockCopy forConcernedParty:partyCopy account:dCopy];

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeConcernedCalParty:(id)party forAccountID:(id)d
{
  partyCopy = party;
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(ESLocalDBWatcher *)selfCopy _dbInfoForAccountID:dCopy create:0];
    v9 = v8;
    if (v8)
    {
      [v8 removeBlockForConcernedParty:partyCopy account:dCopy];
      blocksByConcernedParty = [v9 blocksByConcernedParty];
      if ([blocksByConcernedParty count])
      {
      }

      else
      {
        path = [v9 path];

        if (path)
        {
          calDBInfosByPath = selfCopy->_calDBInfosByPath;
          path2 = [v9 path];
          [(NSMutableDictionary *)calDBInfosByPath setObject:0 forKeyedSubscript:path2];

          [(ESCalDBHelper *)selfCopy->_calDBHelper closeDatabaseForAccountID:dCopy save:0];
        }
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (int)lastSavedCalSequenceNumberForDatabaseInContainer:(id)container
{
  containerCopy = container;
  v5 = [objc_opt_class() _canonicalizePath:containerCopy];

  v6 = [(NSMutableDictionary *)self->_calDBInfosByPath objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    lastSavedSequenceNumber = [v6 lastSavedSequenceNumber];
  }

  else
  {
    lastSavedSequenceNumber = 0;
  }

  return lastSavedSequenceNumber;
}

- (void)_notesChangedExternally
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A097000, v3, v4, "__NotesChanged externally.", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    transactionId = [v5 transactionId];
    *buf = 138412290;
    v18 = transactionId;
    _os_log_impl(&dword_24A097000, v6, v4, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  objectEnumerator = [(NSMapTable *)self->_concernedNotePartyToBlockMap objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v11 = dataaccess_get_global_queue();
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__ESLocalDBWatcher__notesChangedExternally__block_invoke;
      v14[3] = &unk_278FC62C0;
      v16 = nextObject2;
      v15 = v5;
      v12 = nextObject2;
      dispatch_async(v11, v14);

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerConcernedNoteParty:(id)party withChangedBlock:(id)block
{
  partyCopy = party;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMapTable *)selfCopy->_concernedNotePartyToBlockMap objectForKey:partyCopy];

  if (v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"ESLocalDBWatcher.m" lineNumber:283 description:{@"Someone registered themselves for the Note notification more than once: %@", partyCopy}];
  }

  v10 = [blockCopy copy];

  concernedNotePartyToBlockMap = selfCopy->_concernedNotePartyToBlockMap;
  v12 = MEMORY[0x24C20FF50](v10);
  [(NSMapTable *)concernedNotePartyToBlockMap setObject:v12 forKey:partyCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeConcernedNoteParty:(id)party
{
  partyCopy = party;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMapTable *)selfCopy->_concernedNotePartyToBlockMap objectForKey:partyCopy];

  if (v5)
  {
    [(NSMapTable *)selfCopy->_concernedNotePartyToBlockMap removeObjectForKey:partyCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)noteABDBDirChanged
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  abWatcher = selfCopy->_abWatcher;
  if (abWatcher)
  {
    ABAddressBookUnregisterExternalChangeCallback(abWatcher, __ABDatabaseChangedExternally, selfCopy);
    v4 = selfCopy->_abWatcher;
    if (v4)
    {
      CFRelease(v4);
      selfCopy->_abWatcher = 0;
    }

    selfCopy->_lastSavedABSequenceNumber = 0;
    error = 0;
    v5 = +[ESLocalDBHelper abTestABDBDir];
    if (v5)
    {
      v6 = ABAddressBookCreateWithDatabaseDirectory();
    }

    else
    {
      v6 = ABAddressBookCreateWithOptions(0, &error);
    }

    selfCopy->_abWatcher = v6;
    if (v6)
    {
      ABAddressBookRegisterExternalChangeCallback(v6, __ABDatabaseChangedExternally, selfCopy);
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138412290;
        v12 = error;
        _os_log_impl(&dword_24A097000, v7, v8, "Couldn't create an address book DB: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)noteCalDBDirChanged
{
  v54 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_calDBInfosByPath allValues];
  v4 = [allValues countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v4)
  {
    v5 = *v47;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v46 + 1) + 8 * i);
        v8 = objc_opt_new();
        blocksByConcernedParty = [v7 blocksByConcernedParty];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __39__ESLocalDBWatcher_noteCalDBDirChanged__block_invoke;
        v44[3] = &unk_278FC6310;
        v10 = v8;
        v45 = v10;
        [blocksByConcernedParty enumerateKeysAndObjectsUsingBlock:v44];
      }

      v4 = [allValues countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v4);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obja = obj;
  v11 = [obja countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v11)
  {
    v12 = *v41;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obja);
        }

        v14 = *(*(&v40 + 1) + 8 * j);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        blocksByConcernedParty2 = [v14 blocksByConcernedParty];
        allKeys = [blocksByConcernedParty2 allKeys];

        v17 = [allKeys countByEnumeratingWithState:&v36 objects:v51 count:16];
        if (v17)
        {
          v18 = *v37;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(allKeys);
              }

              v20 = *(*(&v36 + 1) + 8 * k);
              concernedParty = [v20 concernedParty];
              accountID = [v20 accountID];
              [(ESLocalDBWatcher *)selfCopy removeConcernedCalParty:concernedParty forAccountID:accountID];
            }

            v17 = [allKeys countByEnumeratingWithState:&v36 objects:v51 count:16];
          }

          while (v17);
        }
      }

      v11 = [obja countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = obja;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v50 count:16];
  if (v24)
  {
    v25 = *v33;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v23);
        }

        blocksByConcernedParty3 = [*(*(&v32 + 1) + 8 * m) blocksByConcernedParty];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __39__ESLocalDBWatcher_noteCalDBDirChanged__block_invoke_2;
        v31[3] = &unk_278FC6310;
        v31[4] = selfCopy;
        [blocksByConcernedParty3 enumerateKeysAndObjectsUsingBlock:v31];
      }

      v24 = [v23 countByEnumeratingWithState:&v32 objects:v50 count:16];
    }

    while (v24);
  }

  [MEMORY[0x277CF77C0] addObserver:selfCopy selector:sel__handleCalChangeNotification name:*MEMORY[0x277CF7658]];
  objc_sync_exit(selfCopy);

  v28 = *MEMORY[0x277D85DE8];
}

void __39__ESLocalDBWatcher_noteCalDBDirChanged__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = MEMORY[0x24C20FF50](a3);
  v6 = [*(a1 + 32) blocksByConcernedParty];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

void __39__ESLocalDBWatcher_noteCalDBDirChanged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 concernedParty];
  v7 = [v6 accountID];

  [v4 registerConcernedCalParty:v8 forAccountID:v7 withChangedBlock:v5];
}

- (void)didReceiveDarwinNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = notificationCopy;
    _os_log_impl(&dword_24A097000, v5, v6, "Received darwin notification %@", &v8, 0xCu);
  }

  if ([notificationCopy isEqualToString:@"_CalDatabaseChangedNotification"])
  {
    [(ESLocalDBWatcher *)self _handleCalChangeNotification];
  }

  else if ([notificationCopy isEqualToString:@"__ABDataBaseChangedByOtherProcessNotification"])
  {
    [(ESLocalDBWatcher *)self _handleABChangeNotificationWithInfo:0];
  }

  else if ([notificationCopy isEqualToString:@"NoteContextDarwinNotificationWithLoggedChanges"])
  {
    [(ESLocalDBWatcher *)self _notesChangedExternally];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end