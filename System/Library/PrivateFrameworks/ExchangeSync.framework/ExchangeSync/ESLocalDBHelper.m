@interface ESLocalDBHelper
+ (OS_os_log)os_log;
+ (id)sharedInstanceForAccountType:(id)a3 creatingClass:(Class)a4;
+ (void)abSetTestABDBDir:(id)a3;
+ (void)calSetTestCalDBDir:(id)a3;
- (BOOL)_abOpenDBWithClientIdentifier:(id)a3;
- (BOOL)abCloseDBAndSave:(BOOL)a3;
- (BOOL)abSaveDB;
- (BOOL)noteCloseDBAndSave:(BOOL)a3;
- (BOOL)noteSaveDB;
- (CalDatabase)calDatabaseForAccountID:(id)a3;
- (ESLocalDBHelper)init;
- (NoteContext)noteDB;
- (id)changeTrackingID;
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
- (void)calUnitTestsSetCallbackBlockForSave:(id)a3;
- (void)dealloc;
- (void)executeAllSaveRequests;
- (void)noteDB;
- (void)noteOpenDB;
@end

@implementation ESLocalDBHelper

+ (OS_os_log)os_log
{
  if (os_log_onceToken != -1)
  {
    +[ESLocalDBHelper os_log];
  }

  v3 = os_log_os_log;

  return v3;
}

uint64_t __25__ESLocalDBHelper_os_log__block_invoke()
{
  os_log_os_log = os_log_create("com.apple.dataaccess", "CardDAV-dbhelper");

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstanceForAccountType:(id)a3 creatingClass:(Class)a4
{
  v4 = a3;
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

  return v8;
}

- (ESLocalDBHelper)init
{
  v16.receiver = self;
  v16.super_class = ESLocalDBHelper;
  v2 = [(ESLocalDBHelper *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.dataaccessd.abDBQueue", 0);
    abDBQueue = v2->_abDBQueue;
    v2->_abDBQueue = v3;

    v5 = dispatch_queue_create("com.apple.dataaccessd.calDBQueue", 0);
    calDBQueue = v2->_calDBQueue;
    v2->_calDBQueue = v5;

    v7 = [[ESCalDBHelper alloc] initWithDatabaseInitOptions:6];
    calDBHelper = v2->_calDBHelper;
    v2->_calDBHelper = v7;

    v9 = dispatch_queue_create("com.apple.dataaccessd.noteDBQueue", 0);
    noteDBQueue = v2->_noteDBQueue;
    v2->_noteDBQueue = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    saveRequests = v2->_saveRequests;
    v2->_saveRequests = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v13;
  }

  return v2;
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
      _os_log_impl(&dword_24A097000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected unsaved contact changes: %lu", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = ESLocalDBHelper;
  [(ESLocalDBHelper *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)changeTrackingID
{
  v3 = [(ESCalDBHelper *)self->_calDBHelper clientIdentifier];
  clientIdentifier = v3;
  if (!v3)
  {
    clientIdentifier = self->_clientIdentifier;
  }

  v5 = clientIdentifier;

  if ([(NSString *)v5 isEqualToString:@"com.apple.dataaccessd.changeinserter"])
  {

    v5 = 0;
  }

  return v5;
}

- (void)abDBThrowOnNil:(BOOL)a3
{
  if (a3 && !self->_abDB)
  {
    [ESLocalDBHelper abDBThrowOnNil:];
  }

  return self->_abDB;
}

- (void)abDB
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24A097000, v1, v2, "abDB is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addSaveRequest:(id)a3
{
  v4 = a3;
  abDBQueue = self->_abDBQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ESLocalDBHelper_addSaveRequest___block_invoke;
  v7[3] = &unk_278FC6120;
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
  _os_log_error_impl(&dword_24A097000, a3, OS_LOG_TYPE_ERROR, "Unexpected error committing save request :%@", a1, 0xCu);
}

- (void)_registerForAddressBookYieldNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24A097000, v1, v2, "_registerForAddressBookYieldNotifications is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __60__ESLocalDBHelper__registerForAddressBookYieldNotifications__block_invoke(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24A097000, v2, v3, "Someone asked us to yield the AddressBook database. Bumping up all clients to UI priority", buf, 2u);
  }

  v4 = [MEMORY[0x277D037B8] sharedManager];
  [v4 bumpDataclassesToUIPriority:2];

  v5 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ESLocalDBHelper__registerForAddressBookYieldNotifications__block_invoke_32;
  block[3] = &unk_278FC61D0;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __60__ESLocalDBHelper__registerForAddressBookYieldNotifications__block_invoke_32(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return ABAddressBookRegisterYieldBlock();
  }

  return result;
}

- (BOOL)_abOpenDBWithClientIdentifier:(id)a3
{
  v4 = a3;
  if ([(ESLocalDBHelper *)self useContacts])
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ESLocalDBHelper _abOpenDBWithClientIdentifier:];
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
    block[2] = __49__ESLocalDBHelper__abOpenDBWithClientIdentifier___block_invoke;
    block[3] = &unk_278FC6358;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(abDBQueue, block);
    v6 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

void __49__ESLocalDBHelper__abOpenDBWithClientIdentifier___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D03988];
  if (*(v2 + 48))
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
      v25 = v6;
      _os_log_impl(&dword_24A097000, v5, v4, "Creating ab database for client %@", buf, 0xCu);
    }

    error = 0;
    if (_fakedOutABDBDir)
    {
      v7 = ABAddressBookCreateWithDatabaseDirectory();
    }

    else
    {
      v7 = ABAddressBookCreateWithOptions(0, &error);
    }

    *(*(a1 + 32) + 48) = v7;
    v8 = *(*(a1 + 32) + 48);
    v9 = DALoggingwithCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, v4))
      {
        v11 = *(*(a1 + 32) + 48);
        *buf = 134217984;
        v25 = v11;
        _os_log_impl(&dword_24A097000, v10, v4, "Created ab database %p", buf, 0xCu);
      }

      v12 = *(*(a1 + 32) + 48);
      ABAddressBookSetIsBackgroundProcess();
      [*(a1 + 32) _registerForAddressBookYieldNotifications];
      if ([*(a1 + 40) length])
      {
        v13 = *(a1 + 40);
        v14 = *(*(a1 + 32) + 48);
        ABChangeHistorySetAddressBookClientIdentifier();
      }

      [*(a1 + 32) setClientIdentifier:*(a1 + 40)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v15 = *(v3 + 3);
      if (os_log_type_enabled(v9, v3[3]))
      {
        *buf = 138412290;
        v25 = error;
        _os_log_impl(&dword_24A097000, v10, v15, "Couldn't create ab database: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    v2 = *(a1 + 32);
  }

  ++*(v2 + 32);
  v16 = DALoggingwithCategory();
  if (os_log_type_enabled(v16, v4))
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 48);
    LODWORD(v17) = *(v17 + 32);
    *buf = 134218240;
    v25 = v18;
    v26 = 1024;
    v27 = v17;
    _os_log_impl(&dword_24A097000, v16, v4, "AB database %p opened. Connection count is now %d", buf, 0x12u);
  }

  if (*(*(a1 + 32) + 32) >= 2)
  {
    v19 = DALoggingwithCategory();
    v20 = *(v3 + 6);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(*(a1 + 32) + 32);
      *buf = 67109120;
      LODWORD(v25) = v21;
      _os_log_impl(&dword_24A097000, v19, v20, "_abConnectionCount is > 1, at %d", buf, 8u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)abOpenDBWithClientIdentifier:(id)a3
{
  v4 = a3;
  if ([(ESLocalDBHelper *)self useContacts])
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ESLocalDBHelper abOpenDBWithClientIdentifier:];
    }
  }

  else
  {
    if (!v4)
    {
      [ESLocalDBHelper abOpenDBWithClientIdentifier:];
    }

    [(ESLocalDBHelper *)self _abOpenDBWithClientIdentifier:v4];
  }
}

- (void)abOpenDBAsGenericClient
{
  if (![(ESLocalDBHelper *)self useContacts]&& [(ESLocalDBHelper *)self _abOpenDBWithClientIdentifier:0])
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
  OUTLINED_FUNCTION_0_0(&dword_24A097000, v1, v2, "abOpenDBAsGenericClient is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abProcessAddedImages
{
  if ([(ESLocalDBHelper *)self useContacts])
  {
    v3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ESLocalDBHelper abProcessAddedRecords];
    }
  }

  else
  {
    abDB = self->_abDB;
    ABProcessAddedImages();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CE9AD8], 0, 0, 1u);
    v6 = [MEMORY[0x277D03790] sharedGateKeeper];
    [v6 claimedOwnershipOfDataclasses:2];
  }
}

- (BOOL)abSaveDB
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(ESLocalDBHelper *)self useContacts])
  {
    v3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ESLocalDBHelper abSaveDB];
    }

    v4 = 0;
  }

  else
  {
    v3 = +[ESLocalDBWatcher sharedDBWatcher];
    v5 = [v3 lastSavedABSequenceNumber];
    abDB = self->_abDB;
    [v3 setLastSavedABSequenceNumber:ABAddressBookGetSequenceNumber()];
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = self->_abDB;
      abConnectionCount = self->_abConnectionCount;
      v13 = 134218496;
      v14 = v9;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = abConnectionCount;
      _os_log_impl(&dword_24A097000, v7, v8, "Saving ab database %p old sequence %d. Connection count is %d", &v13, 0x18u);
    }

    v4 = ABAddressBookSave(self->_abDB, 0);
    if (!v4)
    {
      [v3 setLastSavedABSequenceNumber:v5];
    }

    [(ESLocalDBHelper *)self _registerForAddressBookYieldNotifications];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)abCloseDBAndSave:(BOOL)a3
{
  v3 = a3;
  if ([(ESLocalDBHelper *)self useContacts])
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ESLocalDBHelper abSaveDB];
    }

    return 0;
  }

  else
  {
    v6 = !v3 || [(ESLocalDBHelper *)self abSaveDB];
    abDBQueue = self->_abDBQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ESLocalDBHelper_abCloseDBAndSave___block_invoke;
    block[3] = &unk_278FC61D0;
    block[4] = self;
    dispatch_sync(abDBQueue, block);
  }

  return v6;
}

void __36__ESLocalDBHelper_abCloseDBAndSave___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_24A097000, v3, v4, "_abCloseDB called too many times (connection count %d).  Resetting count to 0", &v16, 8u);
    }

    *(*(a1 + 32) + 32) = 0;
  }

  v6 = DALoggingwithCategory();
  v7 = *(v2 + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    LODWORD(v8) = *(v8 + 32);
    v16 = 134218240;
    v17 = v9;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_24A097000, v6, v7, "Decrementing database %p reference count. _abConnectionCount is %d", &v16, 0x12u);
  }

  if (!*(*(a1 + 32) + 32))
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v7))
    {
      v11 = *(*(a1 + 32) + 48);
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_24A097000, v10, v7, "Destroying ab database %p", &v16, 0xCu);
    }

    v12 = *(*(a1 + 32) + 48);
    ABAddressBookRegisterYieldBlock();
    v13 = *(a1 + 32);
    v14 = *(v13 + 48);
    if (v14)
    {
      CFRelease(v14);
      *(*(a1 + 32) + 48) = 0;
      v13 = *(a1 + 32);
    }

    *(v13 + 48) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (CalDatabase)calDatabaseForAccountID:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v9 = 0;
    _os_log_impl(&dword_24A097000, v5, v6, "Data_Separation: Invoking calDatabaseForAccountID", v9, 2u);
  }

  v7 = [(ESCalDBHelper *)self->_calDBHelper databaseForAccountID:v4];
  return v7;
}

- (void)calOpenDatabaseForAccountID:(id)a3 clientID:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!v6)
  {
    [ESLocalDBHelper calOpenDatabaseForAccountID:clientID:];
  }

  [(ESCalDBHelper *)self->_calDBHelper openDatabaseForAccountID:v7 clientID:v6];
}

- (void)calOpenDatabaseForAuxDatabaseRef:(void *)a3 clientID:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    [ESLocalDBHelper calOpenDatabaseForAuxDatabaseRef:clientID:];
    v6 = 0;
  }

  [(ESCalDBHelper *)self->_calDBHelper openDatabaseForAuxDatabaseRef:a3 clientID:v6];
}

- (NoteContext)noteDB
{
  noteDB = self->_noteDB;
  if (!noteDB)
  {
    v6[1] = v2;
    v7 = v3;
    [(ESLocalDBHelper *)self noteDB:a2];
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
  block[2] = __29__ESLocalDBHelper_noteOpenDB__block_invoke;
  block[3] = &unk_278FC61D0;
  block[4] = self;
  dispatch_sync(noteDBQueue, block);
}

void __29__ESLocalDBHelper_noteOpenDB__block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_24A097000, v4, v5, "Creating note database", &v20, 2u);
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
      _os_log_impl(&dword_24A097000, v9, v5, "Created note database %p", &v20, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  v11 = *(v2 + 40);
  if (!v11)
  {
    [*(v2 + 96) enableChangeLogging:0];
    v2 = *(a1 + 32);
    v11 = *(v2 + 40);
  }

  *(v2 + 40) = v11 + 1;
  v12 = DALoggingwithCategory();
  v13 = *(v3 + 7);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 96);
    LODWORD(v14) = *(v14 + 40);
    v20 = 134218240;
    v21 = v15;
    v22 = 1024;
    v23 = v14;
    _os_log_impl(&dword_24A097000, v12, v13, "Note database %p opened. Connection count is now %d", &v20, 0x12u);
  }

  if (*(*(a1 + 32) + 40) >= 2)
  {
    v16 = DALoggingwithCategory();
    v17 = *(v3 + 6);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(*(a1 + 32) + 40);
      v20 = 67109120;
      LODWORD(v21) = v18;
      _os_log_impl(&dword_24A097000, v16, v17, "_noteConnectionCount is > 1, at %d", &v20, 8u);
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
    _os_log_impl(&dword_24A097000, v3, v5, "Saving notes database %p. Connection count is %d", buf, 0x12u);
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
      _os_log_impl(&dword_24A097000, v11, v12, "Saving notes database %p failed with error %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)noteCloseDBAndSave:(BOOL)a3
{
  v4 = !a3 || [(ESLocalDBHelper *)self noteSaveDB];
  noteDBQueue = self->_noteDBQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ESLocalDBHelper_noteCloseDBAndSave___block_invoke;
  block[3] = &unk_278FC61D0;
  block[4] = self;
  dispatch_sync(noteDBQueue, block);
  return v4;
}

void __38__ESLocalDBHelper_noteCloseDBAndSave___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 40);
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v4))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    LODWORD(v5) = *(v5 + 40);
    v16 = 134218240;
    v17 = v6;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_24A097000, v2, v4, "Decrementing database %p reference count. _noteConnectionCount is %d", &v16, 0x12u);
  }

  v7 = *(*(a1 + 32) + 40);
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
    v10 = *(*(a1 + 32) + 40);
    v16 = 67109120;
    LODWORD(v17) = v10;
    _os_log_impl(&dword_24A097000, v8, v9, "_noteCloseDB called too many times (connection count %d).  Resetting count to 0", &v16, 8u);
  }

  *(*(a1 + 32) + 40) = 0;
  if (!*(*(a1 + 32) + 40))
  {
LABEL_9:
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v4))
    {
      v12 = *(*(a1 + 32) + 96);
      v16 = 134217984;
      v17 = v12;
      _os_log_impl(&dword_24A097000, v11, v4, "Destroying notes database %p", &v16, 0xCu);
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
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_24A097000, v5, v6, "Setting unit test Address Book Database directory to: %@", &v9, 0xCu);
  }

  if (_fakedOutABDBDir != v4)
  {
    objc_storeStrong(&_fakedOutABDBDir, a3);
    if ([v4 length])
    {
      v7 = +[ESLocalDBWatcher sharedDBWatcher];
      [v7 noteABDBDirChanged];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)calSetTestCalDBDir:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_24A097000, v5, v6, "Setting unit test Calendar Database directory to: %@", &v9, 0xCu);
  }

  if (_fakedOutCalDBDir != v4)
  {
    objc_storeStrong(&_fakedOutCalDBDir, a3);
    if ([v4 length])
    {
      v7 = +[ESLocalDBWatcher sharedDBWatcher];
      [v7 noteCalDBDirChanged];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)calUnitTestsSetCallbackBlockForSave:(id)a3
{
  v7 = a3;
  v4 = [(ESLocalDBHelper *)self calUnitTestCallbackBlock];

  v5 = v7;
  if (v4 != v7)
  {
    if (v7)
    {
      v6 = [v7 copy];
      [(ESLocalDBHelper *)self setCalUnitTestCallbackBlock:v6];
    }

    else
    {
      [(ESLocalDBHelper *)self setCalUnitTestCallbackBlock:0];
    }

    v5 = v7;
  }
}

- (void)abDBThrowOnNil:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"ESLocalDBHelper.m" lineNumber:128 description:{@"You can't ask for an AddressBook db if you didn't open it.  Geez! %@", objc_opt_class()}];
}

- (void)_abOpenDBWithClientIdentifier:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24A097000, v1, v2, "_abOpenDBWithClientIdentifier is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abOpenDBWithClientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ESLocalDBHelper.m" lineNumber:235 description:@"ClientIdentifier can not be nil"];
}

- (void)abOpenDBWithClientIdentifier:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24A097000, v1, v2, "abOpenDBWithClientIdentifier is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)abSaveDB
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_24A097000, v1, v2, "abSaveDB is unsupported under modern Contacts framework :%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)calOpenDatabaseForAccountID:clientID:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ESLocalDBHelper.m" lineNumber:350 description:@"ClientIdentifier can not be nil"];
}

- (void)calOpenDatabaseForAuxDatabaseRef:clientID:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ESLocalDBHelper.m" lineNumber:355 description:@"ClientIdentifier can not be nil"];
}

- (void)noteDB
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"ESLocalDBHelper.m" lineNumber:390 description:{@"You can't ask for a note db if you didn't open it.  Geez! %@", objc_opt_class()}];

  *a4 = *a3;
}

@end