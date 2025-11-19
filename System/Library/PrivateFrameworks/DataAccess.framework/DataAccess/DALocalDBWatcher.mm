@interface DALocalDBWatcher
+ (id)sharedDBWatcher;
- (DALocalDBWatcher)init;
- (id)_dbInfoForAccountID:(id)a3 create:(BOOL)a4;
- (int)lastSavedCalSequenceNumberForDatabaseInContainer:(id)a3;
- (void)_handleCalChangeNotification;
- (void)_notesChangedExternally;
- (void)didReceiveDarwinNotification:(id)a3;
- (void)noteCalDBDirChanged;
- (void)registerConcernedCalParty:(id)a3 forAccountID:(id)a4 withChangedBlock:(id)a5;
- (void)registerConcernedNoteParty:(id)a3 withChangedBlock:(id)a4;
- (void)removeConcernedCalParty:(id)a3 forAccountID:(id)a4;
- (void)removeConcernedNoteParty:(id)a3;
@end

@implementation DALocalDBWatcher

+ (id)sharedDBWatcher
{
  if (sharedDBWatcher_onceToken != -1)
  {
    +[DALocalDBWatcher sharedDBWatcher];
  }

  v3 = sharedDBWatcher___sharedInstance;

  return v3;
}

uint64_t __35__DALocalDBWatcher_sharedDBWatcher__block_invoke()
{
  sharedDBWatcher___sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DALocalDBWatcher)init
{
  v10.receiver = self;
  v10.super_class = DALocalDBWatcher;
  v2 = [(DALocalDBWatcher *)&v10 init];
  if (v2)
  {
    v3 = [[DACalDBHelper alloc] initWithDatabaseInitOptions:6];
    calDBHelper = v2->_calDBHelper;
    v2->_calDBHelper = v3;

    v5 = objc_opt_new();
    calDBInfosByPath = v2->_calDBInfosByPath;
    v2->_calDBInfosByPath = v5;

    v7 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    concernedNotePartyToBlockMap = v2->_concernedNotePartyToBlockMap;
    v2->_concernedNotePartyToBlockMap = v7;
  }

  return v2;
}

- (void)_handleCalChangeNotification
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  p_isa = &v2->super.isa;
  v3 = [(DACalDBHelper *)v2->_calDBHelper allOpenDatabases];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v4)
  {
    v35 = *v47;
    type = *(MEMORY[0x277D03988] + 7);
    v33 = *(MEMORY[0x277D03988] + 5);
    v34 = *(MEMORY[0x277D03988] + 6);
    *&v5 = 138543362;
    v31 = v5;
    obj = v3;
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

        v11 = [p_isa[2] objectForKeyedSubscript:v10];
        SequenceNumber = CalDatabaseGetSequenceNumber();
        v13 = [v11 lastSavedSequenceNumber];
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, type))
        {
          *buf = 67109634;
          *v52 = SequenceNumber;
          *&v52[4] = 1024;
          *&v52[6] = v13;
          v53 = 2112;
          v54 = v7;
          _os_log_impl(&dword_24844D000, v14, type, "__CalDatabaseChangedExternally - comparing current sequence number %d to saved sequence number %d in database: %@", buf, 0x18u);
        }

        if (SequenceNumber > v13 + 1)
        {
          v15 = objc_opt_new();
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v34))
          {
            v17 = [v15 transactionId];
            *buf = v31;
            *v52 = v17;
            _os_log_impl(&dword_24844D000, v16, v34, "DATransaction starting, ID: %{public}@", buf, 0xCu);
          }

          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v33))
          {
            *buf = 0;
            _os_log_impl(&dword_24844D000, v18, v33, "Notifying agents that the Calendar database has changed.", buf, 2u);
          }

          v19 = objc_opt_new();
          v20 = [v11 blocksByConcernedParty];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __48__DALocalDBWatcher__handleCalChangeNotification__block_invoke;
          v43[3] = &unk_278F13920;
          v21 = v19;
          v44 = v21;
          v22 = v15;
          v45 = v22;
          [v20 enumerateKeysAndObjectsUsingBlock:v43];

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
                v28 = [v11 blocksByConcernedParty];
                [v28 setObject:0 forKeyedSubscript:v27];

                v29 = [v11 blocksByConcernedParty];
                LODWORD(v27) = [v29 count] == 0;

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
      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v4);
  }

  objc_sync_exit(p_isa);
  v30 = *MEMORY[0x277D85DE8];
}

void __48__DALocalDBWatcher__handleCalChangeNotification__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 concernedParty];

  if (v7)
  {
    v8 = dataaccess_get_global_queue();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__DALocalDBWatcher__handleCalChangeNotification__block_invoke_2;
    v9[3] = &unk_278F138F8;
    v11 = v6;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_dbInfoForAccountID:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DACalDBHelper *)self->_calDBHelper databaseForAccountID:v6];
  if (!v7)
  {
    v11 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v14))
    {
      v24 = 138543362;
      v25 = v6;
      _os_log_impl(&dword_24844D000, v11, v14, "No database for account: %{public}@", &v24, 0xCu);
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

    if (v4)
    {
      v13 = [[DALocalDBWatcherDBInfo alloc] initWithPath:v11];
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
    v29 = v6;
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
    v27 = v6;
    v17 = "no path for database: %p, account: %{public}@";
    v18 = v15;
    v19 = v16;
    v20 = 22;
LABEL_13:
    _os_log_impl(&dword_24844D000, v18, v19, v17, &v24, v20);
  }

LABEL_14:

LABEL_15:
  v13 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)registerConcernedCalParty:(id)a3 forAccountID:(id)a4 withChangedBlock:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    v18 = 138412546;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_24844D000, v11, v12, "Registering concerned cal party: %@ for account: %{public}@", &v18, 0x16u);
  }

  v13 = self;
  objc_sync_enter(v13);
  [(DACalDBHelper *)v13->_calDBHelper openDatabaseForAccountID:v9 clientID:0];
  v14 = [(DALocalDBWatcher *)v13 _dbInfoForAccountID:v9 create:1];
  v15 = [v14 blocksByConcernedParty];
  v16 = [v15 count] == 0;

  if (!v16)
  {
    [(DACalDBHelper *)v13->_calDBHelper closeDatabaseForAccountID:v9 save:0];
  }

  [v14 addBlock:v10 forConcernedParty:v8 account:v9];

  objc_sync_exit(v13);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeConcernedCalParty:(id)a3 forAccountID:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(DALocalDBWatcher *)v7 _dbInfoForAccountID:v6 create:0];
  v9 = v8;
  if (v8)
  {
    [v8 removeBlockForConcernedParty:v14 account:v6];
    v10 = [v9 blocksByConcernedParty];
    if ([v10 count])
    {
    }

    else
    {
      v11 = [v9 path];

      if (v11)
      {
        calDBInfosByPath = v7->_calDBInfosByPath;
        v13 = [v9 path];
        [(NSMutableDictionary *)calDBInfosByPath setObject:0 forKeyedSubscript:v13];

        [(DACalDBHelper *)v7->_calDBHelper closeDatabaseForAccountID:v6 save:0];
      }
    }
  }

  objc_sync_exit(v7);
}

- (void)noteCalDBDirChanged
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  obj = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v3 = [(NSMutableDictionary *)v2->_calDBInfosByPath allValues];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v4)
  {
    v5 = *v47;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v46 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = [v7 blocksByConcernedParty];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke;
        v44[3] = &unk_278F13948;
        v10 = v8;
        v45 = v10;
        [v9 enumerateKeysAndObjectsUsingBlock:v44];
      }

      v4 = [v3 countByEnumeratingWithState:&v46 objects:v53 count:16];
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
        v15 = [v14 blocksByConcernedParty];
        v16 = [v15 allKeys];

        v17 = [v16 countByEnumeratingWithState:&v36 objects:v51 count:16];
        if (v17)
        {
          v18 = *v37;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v36 + 1) + 8 * k);
              v21 = [v20 concernedParty];
              v22 = [v20 accountID];
              [(DALocalDBWatcher *)v2 removeConcernedCalParty:v21 forAccountID:v22];
            }

            v17 = [v16 countByEnumeratingWithState:&v36 objects:v51 count:16];
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

        v27 = [*(*(&v32 + 1) + 8 * m) blocksByConcernedParty];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke_2;
        v31[3] = &unk_278F13948;
        v31[4] = v2;
        [v27 enumerateKeysAndObjectsUsingBlock:v31];
      }

      v24 = [v23 countByEnumeratingWithState:&v32 objects:v50 count:16];
    }

    while (v24);
  }

  [MEMORY[0x277CF77C0] addObserver:v2 selector:sel__handleCalChangeNotification name:*MEMORY[0x277CF7658]];
  objc_sync_exit(v2);

  v28 = *MEMORY[0x277D85DE8];
}

void __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = MEMORY[0x24C1CE570](a3);
  v6 = [*(a1 + 32) blocksByConcernedParty];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

void __39__DALocalDBWatcher_noteCalDBDirChanged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 concernedParty];
  v7 = [v6 accountID];

  [v4 registerConcernedCalParty:v8 forAccountID:v7 withChangedBlock:v5];
}

- (int)lastSavedCalSequenceNumberForDatabaseInContainer:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _canonicalizePath:v4];

  v6 = [(NSMutableDictionary *)self->_calDBInfosByPath objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 lastSavedSequenceNumber];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_notesChangedExternally
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v3, v4, "__NotesChanged externally.", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = [v5 transactionId];
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&dword_24844D000, v6, v4, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v8 = [(NSMapTable *)self->_concernedNotePartyToBlockMap objectEnumerator];
  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = dataaccess_get_global_queue();
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__DALocalDBWatcher__notesChangedExternally__block_invoke;
      v14[3] = &unk_278F138F8;
      v16 = v10;
      v15 = v5;
      v12 = v10;
      dispatch_async(v11, v14);

      v10 = [v8 nextObject];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerConcernedNoteParty:(id)a3 withChangedBlock:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)v8->_concernedNotePartyToBlockMap objectForKey:v14];

  if (v9)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:v8 file:@"DALocalDBWatcher.m" lineNumber:217 description:{@"Someone registered themselves for the Note notification more than once.  Why?  Bad guy %@", v14}];
  }

  v10 = [v7 copy];

  concernedNotePartyToBlockMap = v8->_concernedNotePartyToBlockMap;
  v12 = MEMORY[0x24C1CE570](v10);
  [(NSMapTable *)concernedNotePartyToBlockMap setObject:v12 forKey:v14];

  objc_sync_exit(v8);
}

- (void)removeConcernedNoteParty:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMapTable *)v4->_concernedNotePartyToBlockMap objectForKey:v6];

  if (v5)
  {
    [(NSMapTable *)v4->_concernedNotePartyToBlockMap removeObjectForKey:v6];
  }

  objc_sync_exit(v4);
}

- (void)didReceiveDarwinNotification:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Received darwin notification %@", &v8, 0xCu);
  }

  if ([v4 isEqualToString:@"_CalDatabaseChangedNotification"])
  {
    [(DALocalDBWatcher *)self _handleCalChangeNotification];
  }

  else if ([v4 isEqualToString:@"NoteContextDarwinNotificationWithLoggedChanges"])
  {
    [(DALocalDBWatcher *)self _notesChangedExternally];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end