@interface DALocalDBHelper
+ (OS_os_log)os_log;
+ (id)sharedInstanceForAccountType:(id)a3 creatingClass:(Class)a4;
+ (void)abSetTestABDBDir:(id)a3;
- (BOOL)_abOpenDBWithClientIdentifier:(id)a3;
- (BOOL)abCloseDBAndSave:(BOOL)a3;
- (BOOL)abSaveDB;
- (BOOL)noteCloseDBAndSave:(BOOL)a3;
- (BOOL)noteSaveDB;
- (DALocalDBHelper)initWithCalendarMainDatabasePath:(id)a3 containerProvider:(id)a4;
- (DALocalDBHelper)initWithContactsFamilyDelegateAltDSID:(id)a3 familyDelegateACAccountID:(id)a4;
- (NoteContext)noteDB;
- (id)abChangeTrackingID;
- (id)abDefaultAccountInfoSuitableForLogging;
- (void)_registerForAddressBookYieldNotifications;
- (void)abDB;
- (void)abDBThrowOnNil:(BOOL)a3;
- (void)abOpenDBAsGenericClient;
- (void)abOpenDBWithClientIdentifier:(id)a3;
- (void)abProcessAddedImages;
- (void)abProcessAddedRecords;
- (void)abSaveDB;
- (void)addSaveRequest:(id)a3;
- (void)calOpenDatabaseForAccountID:(id)a3 clientID:(id)a4;
- (void)calOpenDatabaseForAuxDatabaseRef:(void *)a3 clientID:(id)a4;
- (void)dealloc;
- (void)executeAllSaveRequests;
- (void)noteDB;
- (void)noteOpenDB;
- (void)removeDelegateDatabasesNotMatchingAltDSIDs:(id)a3;
@end

@implementation DALocalDBHelper

+ (OS_os_log)os_log
{
  if (os_log_onceToken != -1)
  {
    +[DALocalDBHelper os_log];
  }

  v3 = os_log_os_log;

  return v3;
}

uint64_t __25__DALocalDBHelper_os_log__block_invoke()
{
  os_log_os_log = os_log_create("com.apple.dataaccess", "CardDAV-dbhelper");

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstanceForAccountType:(id)a3 creatingClass:(Class)a4
{
  v4 = a3;
  os_unfair_lock_lock(&sharedInstanceForAccountType_creatingClass__lock);
  v5 = sharedInstanceForAccountType_creatingClass____sharedInstances;
  if (!sharedInstanceForAccountType_creatingClass____sharedInstances)
  {
    v6 = objc_opt_new();
    v7 = sharedInstanceForAccountType_creatingClass____sharedInstances;
    sharedInstanceForAccountType_creatingClass____sharedInstances = v6;

    v5 = sharedInstanceForAccountType_creatingClass____sharedInstances;
  }

  v8 = [v5 objectForKeyedSubscript:v4];
  if (!v8)
  {
    v8 = objc_opt_new();
    [sharedInstanceForAccountType_creatingClass____sharedInstances setObject:v8 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&sharedInstanceForAccountType_creatingClass__lock);

  return v8;
}

- (DALocalDBHelper)initWithContactsFamilyDelegateAltDSID:(id)a3 familyDelegateACAccountID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(DALocalDBHelper *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyDelegateAltDSID, a3);
    objc_storeStrong(&v10->_familyDelegateACAccountID, a4);
  }

  return v10;
}

- (DALocalDBHelper)initWithCalendarMainDatabasePath:(id)a3 containerProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = DALocalDBHelper;
  v8 = [(DALocalDBHelper *)&v23 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.dataaccessd.abDBQueue", 0);
    abDBQueue = v8->_abDBQueue;
    v8->_abDBQueue = v9;

    v11 = dispatch_queue_create("com.apple.dataaccessd.calDBQueue", 0);
    calDBQueue = v8->_calDBQueue;
    v8->_calDBQueue = v11;

    v13 = [[DACalDBHelper alloc] initWithDatabaseInitOptions:6 mainDatabasePath:v6 containerProvider:v7];
    calDBHelper = v8->_calDBHelper;
    v8->_calDBHelper = v13;

    if (!v6)
    {
      v15 = +[DALocalDBWatcher sharedDBWatcher];
      [(DACalDBHelper *)v8->_calDBHelper setWatcher:v15];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v8->_contactStore;
    v8->_contactStore = v16;

    v18 = dispatch_queue_create("com.apple.dataaccessd.noteDBQueue", 0);
    noteDBQueue = v8->_noteDBQueue;
    v8->_noteDBQueue = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    saveRequests = v8->_saveRequests;
    v8->_saveRequests = v20;
  }

  return v8;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_saveRequests count];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v4;
      _os_log_impl(&dword_24844D000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected unsaved contact changes: %lu", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = DALocalDBHelper;
  [(DALocalDBHelper *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)abChangeTrackingID
{
  v2 = self->_clientIdentifier;
  if ([(NSString *)v2 isEqualToString:@"com.apple.dataaccessd.changeinserter"])
  {

    v2 = 0;
  }

  return v2;
}

- (void)abDBThrowOnNil:(BOOL)a3
{
  if (a3 && !self->_abDB)
  {
    [DALocalDBHelper abDBThrowOnNil:];
  }

  return self->_abDB;
}

- (void)abDB
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abDB is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addSaveRequest:(id)a3
{
  v4 = a3;
  abDBQueue = self->_abDBQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DALocalDBHelper_addSaveRequest___block_invoke;
  v7[3] = &unk_278F13350;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(abDBQueue, v7);
}

- (void)executeAllSaveRequests
{
  v6 = [MEMORY[0x277CCACC8] callStackSymbols];
  *a1 = 138412290;
  *a2 = v6;
  _os_log_error_impl(&dword_24844D000, a3, OS_LOG_TYPE_ERROR, "Unexpected error committing save request :%@", a1, 0xCu);
}

- (void)removeDelegateDatabasesNotMatchingAltDSIDs:(id)a3
{
  v4 = a3;
  if (![(DALocalDBHelper *)self useContacts])
  {
    ABAddressBookDirectoryOnlyKeepFamilyDatabasesWithDSIDs();
  }
}

- (void)_registerForAddressBookYieldNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "_registerForAddressBookYieldNotifications is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __60__DALocalDBHelper__registerForAddressBookYieldNotifications__block_invoke(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v2, v3, "Someone asked us to yield the AddressBook database. Bumping up all clients to UI priority", buf, 2u);
  }

  v4 = +[DAPriorityManager sharedManager];
  [v4 bumpDataclassesToUIPriority:2];

  v5 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DALocalDBHelper__registerForAddressBookYieldNotifications__block_invoke_33;
  block[3] = &unk_278F131F0;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __60__DALocalDBHelper__registerForAddressBookYieldNotifications__block_invoke_33(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return ABAddressBookRegisterYieldBlock();
  }

  return result;
}

- (BOOL)_abOpenDBWithClientIdentifier:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper _abOpenDBWithClientIdentifier:];
    }

    v6 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    abDBQueue = self->_abDBQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DALocalDBHelper__abOpenDBWithClientIdentifier___block_invoke;
    block[3] = &unk_278F13668;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(abDBQueue, block);
    v6 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

void __49__DALocalDBHelper__abOpenDBWithClientIdentifier___block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D03988];
  if (*(v2 + 40))
  {
    v4 = *(MEMORY[0x277D03988] + 7);
  }

  else
  {
    v5 = DALoggingwithCategory();
    v4 = *(v3 + 7);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_24844D000, v5, v4, "Creating ab database for client %@", buf, 0xCu);
    }

    error = 0;
    if (_fakedOutABDBDir)
    {
      *(*(a1 + 32) + 40) = ABAddressBookCreateWithDatabaseDirectory();
    }

    else
    {
      if ([*(*(a1 + 32) + 48) length] && objc_msgSend(*(*(a1 + 32) + 56), "length"))
      {
        v7 = *(a1 + 32);
        v8 = *MEMORY[0x277CE9788];
        v32[0] = *MEMORY[0x277CE9790];
        v32[1] = v8;
        v9 = *(v7 + 48);
        v10 = *(v7 + 56);
        v33[0] = v9;
        v33[1] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      }

      else
      {
        v11 = 0;
      }

      *(*(a1 + 32) + 40) = ABAddressBookCreateWithOptions(v11, &error);
    }

    v12 = *(*(a1 + 32) + 40);
    v13 = DALoggingwithCategory();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, v4))
      {
        v15 = *(*(a1 + 32) + 40);
        *buf = 134217984;
        v29 = v15;
        _os_log_impl(&dword_24844D000, v14, v4, "Created ab database %p", buf, 0xCu);
      }

      v16 = *(*(a1 + 32) + 40);
      ABAddressBookSetIsBackgroundProcess();
      [*(a1 + 32) _registerForAddressBookYieldNotifications];
      if ([*(a1 + 40) length])
      {
        v17 = *(a1 + 40);
        v18 = *(*(a1 + 32) + 40);
        ABChangeHistorySetAddressBookClientIdentifier();
      }

      [*(a1 + 32) setClientIdentifier:*(a1 + 40)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v19 = *(v3 + 3);
      if (os_log_type_enabled(v13, v3[3]))
      {
        *buf = 138412290;
        v29 = error;
        _os_log_impl(&dword_24844D000, v14, v19, "Couldn't create ab database: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    v2 = *(a1 + 32);
  }

  ++*(v2 + 32);
  v20 = DALoggingwithCategory();
  if (os_log_type_enabled(v20, v4))
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 40);
    LODWORD(v21) = *(v21 + 32);
    *buf = 134218240;
    v29 = v22;
    v30 = 1024;
    v31 = v21;
    _os_log_impl(&dword_24844D000, v20, v4, "AB database %p opened. Connection count is now %d", buf, 0x12u);
  }

  if (*(*(a1 + 32) + 32) >= 2)
  {
    v23 = DALoggingwithCategory();
    v24 = *(v3 + 6);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(*(a1 + 32) + 32);
      *buf = 67109120;
      LODWORD(v29) = v25;
      _os_log_impl(&dword_24844D000, v23, v24, "_abConnectionCount is > 1, at %d", buf, 8u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)abOpenDBWithClientIdentifier:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abOpenDBWithClientIdentifier:];
    }
  }

  else
  {
    if (!v4)
    {
      [DALocalDBHelper abOpenDBWithClientIdentifier:];
    }

    [(DALocalDBHelper *)self _abOpenDBWithClientIdentifier:v4];
  }
}

- (void)abOpenDBAsGenericClient
{
  if (([MEMORY[0x277D03910] useContactsFramework] & 1) == 0 && -[DALocalDBHelper _abOpenDBWithClientIdentifier:](self, "_abOpenDBWithClientIdentifier:", 0))
  {
    abDB = self->_abDB;

    ABChangeHistorySetAddressBookClientIdentifier();
  }
}

- (void)abProcessAddedRecords
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abOpenDBAsGenericClient is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abProcessAddedImages
{
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abProcessAddedRecords];
    }
  }

  else
  {
    abDB = self->_abDB;
    ABProcessAddedImages();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CE9AD8], 0, 0, 1u);
    v6 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v6 claimedOwnershipOfDataclasses:2];
  }
}

- (BOOL)abSaveDB
{
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abSaveDB];
    }

    return 0;
  }

  else
  {
    abDB = self->_abDB;

    return ABAddressBookSave(abDB, 0);
  }
}

- (BOOL)abCloseDBAndSave:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DALocalDBHelper abSaveDB];
    }

    return 0;
  }

  else
  {
    v6 = !v3 || [(DALocalDBHelper *)self abSaveDB];
    abDBQueue = self->_abDBQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__DALocalDBHelper_abCloseDBAndSave___block_invoke;
    block[3] = &unk_278F131F0;
    block[4] = self;
    dispatch_sync(abDBQueue, block);
  }

  return v6;
}

void __36__DALocalDBHelper_abCloseDBAndSave___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 32);
  v2 = MEMORY[0x277D03988];
  if ((*(*(a1 + 32) + 32) & 0x80000000) != 0)
  {
    v3 = DALoggingwithCategory();
    v4 = *(v2 + 3);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(*(a1 + 32) + 32);
      v16 = 67109120;
      LODWORD(v17) = v5;
      _os_log_impl(&dword_24844D000, v3, v4, "_abCloseDB called too many times (connection count %d).  Resetting count to 0", &v16, 8u);
    }

    *(*(a1 + 32) + 32) = 0;
  }

  v6 = DALoggingwithCategory();
  v7 = *(v2 + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    LODWORD(v8) = *(v8 + 32);
    v16 = 134218240;
    v17 = v9;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_24844D000, v6, v7, "Decrementing database %p reference count. _abConnectionCount is %d", &v16, 0x12u);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v7))
    {
      v11 = *(*(a1 + 32) + 40);
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_24844D000, v10, v7, "Destroying ab database %p", &v16, 0xCu);
    }

    v12 = *(*(a1 + 32) + 40);
    ABAddressBookRegisterYieldBlock();
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    if (v14)
    {
      CFRelease(v14);
      *(*(a1 + 32) + 40) = 0;
      v13 = *(a1 + 32);
    }

    *(v13 + 40) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)abDefaultAccountInfoSuitableForLogging
{
  if ([MEMORY[0x277D03910] useContactsFramework])
  {
    v2 = 0;
  }

  else
  {
    v3 = [objc_opt_class() sharedInstance];
    v4 = ABAddressBookCopyDefaultSource([v3 abDBThrowOnNil:0]);

    if (v4)
    {
      v5 = *MEMORY[0x277CE9AD0];
      if (ABRecordGetIntValue())
      {
        v6 = sharedDAAccountStore();
        if (v6)
        {
          v2 = ABAccountStoreGetAccountTypeForSource();
        }

        else
        {
          v2 = @"<unknown>";
        }
      }

      else
      {
        v2 = @"local";
      }

      CFRelease(v4);
    }

    else
    {
      v2 = @"<unknown>";
    }
  }

  return v2;
}

- (void)calOpenDatabaseForAccountID:(id)a3 clientID:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!v6)
  {
    [DALocalDBHelper calOpenDatabaseForAccountID:clientID:];
  }

  [(DACalDBHelper *)self->_calDBHelper openDatabaseForAccountID:v7 clientID:v6];
}

- (void)calOpenDatabaseForAuxDatabaseRef:(void *)a3 clientID:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    [DALocalDBHelper calOpenDatabaseForAuxDatabaseRef:clientID:];
    v6 = 0;
  }

  [(DACalDBHelper *)self->_calDBHelper openDatabaseForAuxDatabaseRef:a3 clientID:v6];
}

- (NoteContext)noteDB
{
  noteDB = self->_noteDB;
  if (!noteDB)
  {
    v6[1] = v2;
    v7 = v3;
    [(DALocalDBHelper *)self noteDB:a2];
    noteDB = v6[0];
    v3 = v7;
  }

  return noteDB;
}

- (void)noteOpenDB
{
  noteDBQueue = self->_noteDBQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DALocalDBHelper_noteOpenDB__block_invoke;
  block[3] = &unk_278F131F0;
  block[4] = self;
  dispatch_sync(noteDBQueue, block);
}

void __29__DALocalDBHelper_noteOpenDB__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D03988];
  if (!*(v2 + 96))
  {
    v4 = DALoggingwithCategory();
    v5 = *(v3 + 7);
    if (os_log_type_enabled(v4, v5))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_24844D000, v4, v5, "Creating note database", &v20, 2u);
    }

    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    v9 = DALoggingwithCategory();
    if (os_log_type_enabled(v9, v5))
    {
      v10 = *(*(a1 + 32) + 96);
      v20 = 134217984;
      v21 = v10;
      _os_log_impl(&dword_24844D000, v9, v5, "Created note database %p", &v20, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  v11 = *(v2 + 36);
  if (!v11)
  {
    [*(v2 + 96) enableChangeLogging:0];
    v2 = *(a1 + 32);
    v11 = *(v2 + 36);
  }

  *(v2 + 36) = v11 + 1;
  v12 = DALoggingwithCategory();
  v13 = *(v3 + 7);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 96);
    LODWORD(v14) = *(v14 + 36);
    v20 = 134218240;
    v21 = v15;
    v22 = 1024;
    v23 = v14;
    _os_log_impl(&dword_24844D000, v12, v13, "Note database %p opened. Connection count is now %d", &v20, 0x12u);
  }

  if (*(*(a1 + 32) + 36) >= 2)
  {
    v16 = DALoggingwithCategory();
    v17 = *(v3 + 6);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(*(a1 + 32) + 36);
      v20 = 67109120;
      LODWORD(v21) = v18;
      _os_log_impl(&dword_24844D000, v16, v17, "_noteConnectionCount is > 1, at %d", &v20, 8u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)noteSaveDB
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    noteDB = self->_noteDB;
    noteConnectionCount = self->_noteConnectionCount;
    *buf = 134218240;
    v18 = noteDB;
    v19 = 1024;
    LODWORD(v20) = noteConnectionCount;
    _os_log_impl(&dword_24844D000, v3, v5, "Saving notes database %p. Connection count is %d", buf, 0x12u);
  }

  v8 = self->_noteDB;
  v16 = 0;
  v9 = [(NoteContext *)v8 save:&v16];
  v10 = v16;
  if ((v9 & 1) == 0)
  {
    v11 = DALoggingwithCategory();
    v12 = *(v4 + 3);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = self->_noteDB;
      *buf = 134218242;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_24844D000, v11, v12, "Saving notes database %p failed with error %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)noteCloseDBAndSave:(BOOL)a3
{
  v4 = !a3 || [(DALocalDBHelper *)self noteSaveDB];
  noteDBQueue = self->_noteDBQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DALocalDBHelper_noteCloseDBAndSave___block_invoke;
  block[3] = &unk_278F131F0;
  block[4] = self;
  dispatch_sync(noteDBQueue, block);
  return v4;
}

void __38__DALocalDBHelper_noteCloseDBAndSave___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 36);
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v4))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    LODWORD(v5) = *(v5 + 36);
    v16 = 134218240;
    v17 = v6;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_24844D000, v2, v4, "Decrementing database %p reference count. _noteConnectionCount is %d", &v16, 0x12u);
  }

  v7 = *(*(a1 + 32) + 36);
  if ((v7 & 0x80000000) == 0)
  {
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = DALoggingwithCategory();
  v9 = *(v3 + 3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(*(a1 + 32) + 36);
    v16 = 67109120;
    LODWORD(v17) = v10;
    _os_log_impl(&dword_24844D000, v8, v9, "_noteCloseDB called too many times (connection count %d).  Resetting count to 0", &v16, 8u);
  }

  *(*(a1 + 32) + 36) = 0;
  if (!*(*(a1 + 32) + 36))
  {
LABEL_9:
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v4))
    {
      v12 = *(*(a1 + 32) + 96);
      v16 = 134217984;
      v17 = v12;
      _os_log_impl(&dword_24844D000, v11, v4, "Destroying notes database %p", &v16, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 96);
    *(v13 + 96) = 0;
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)abSetTestABDBDir:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_24844D000, v5, v6, "Setting unit test Address Book Database directory to: %@", &v8, 0xCu);
  }

  if (_fakedOutABDBDir != v4)
  {
    objc_storeStrong(&_fakedOutABDBDir, a3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abDBThrowOnNil:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"DALocalDBHelper.m" lineNumber:180 description:{@"You can't ask for an AddressBook db if you didn't open it.  Geez! %@", objc_opt_class()}];
}

- (void)_abOpenDBWithClientIdentifier:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "_abOpenDBWithClientIdentifier is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abOpenDBWithClientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DALocalDBHelper.m" lineNumber:301 description:@"ClientIdentifier can not be nil"];
}

- (void)abOpenDBWithClientIdentifier:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abOpenDBWithClientIdentifier is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abSaveDB
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24844D000, v1, v2, "abSaveDB is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)calOpenDatabaseForAccountID:clientID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DALocalDBHelper.m" lineNumber:430 description:@"ClientIdentifier can not be nil"];
}

- (void)calOpenDatabaseForAuxDatabaseRef:clientID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DALocalDBHelper.m" lineNumber:435 description:@"ClientIdentifier can not be nil"];
}

- (void)noteDB
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"DALocalDBHelper.m" lineNumber:472 description:{@"You can't ask for a note db if you didn't open it.  Geez! %@", objc_opt_class()}];

  *a4 = *a3;
}

@end