@interface CHSharedAddressBook
+ (id)get;
- (CHSharedAddressBook)init;
- (id)fetchAddressBookInfoFromCacheForKey:(id)a3;
- (unint64_t)cachedCount;
- (void)cleanUpAddressBookCache_sync;
- (void)dealloc;
- (void)insertAddressBookInfoDictionaryIntoCache:(id)a3;
- (void)insertAddressBookInfoIntoCache:(id)a3 forKey:(id)a4;
- (void)registerForContactsNotifications;
- (void)revertAddressBook:(id)a3;
@end

@implementation CHSharedAddressBook

+ (id)get
{
  if (get_onceToken != -1)
  {
    +[CHSharedAddressBook get];
  }

  v3 = get_instance;

  return v3;
}

uint64_t __26__CHSharedAddressBook_get__block_invoke()
{
  v0 = objc_opt_new();
  v1 = get_instance;
  get_instance = v0;

  v2 = get_instance;

  return [v2 registerForContactsNotifications];
}

- (CHSharedAddressBook)init
{
  v6.receiver = self;
  v6.super_class = CHSharedAddressBook;
  v2 = [(CHSynchronizedLoggable *)&v6 initWithName:"SharedAddressBook"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    addressBookCache = v2->_addressBookCache;
    v2->_addressBookCache = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CHSharedAddressBook;
  [(CHSharedAddressBook *)&v4 dealloc];
}

- (void)registerForContactsNotifications
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__CHSharedAddressBook_registerForContactsNotifications__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self execute:v2];
}

void __55__CHSharedAddressBook_registerForContactsNotifications__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_revertAddressBook_ name:*MEMORY[0x1E695C3D8] object:0];
}

- (void)cleanUpAddressBookCache_sync
{
  v2 = [(CHSharedAddressBook *)self addressBookCache];
  [v2 removeAllObjects];
}

- (void)revertAddressBook:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CHSharedAddressBook_revertAddressBook___block_invoke;
  v3[3] = &unk_1E81DBF38;
  v3[4] = self;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __41__CHSharedAddressBook_revertAddressBook___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Contacts changed, so reverting it and clearing our AB cache", v4, 2u);
  }

  [*(a1 + 32) cleanUpAddressBookCache_sync];
  return [*(a1 + 32) sendABChangedNotificationSyncWithUserInfo:0];
}

- (void)insertAddressBookInfoDictionaryIntoCache:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CHSharedAddressBook_insertAddressBookInfoDictionaryIntoCache___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __64__CHSharedAddressBook_insertAddressBookInfoDictionaryIntoCache___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = (a1 + 32);
  if (v3)
  {
    v6 = [v2 addressBookCache];
    [v6 addEntriesFromDictionary:*v4];
  }

  else
  {
    v5 = [v2 logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__CHSharedAddressBook_insertAddressBookInfoDictionaryIntoCache___block_invoke_cold_1(v4, v5);
    }
  }
}

- (void)insertAddressBookInfoIntoCache:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CHSharedAddressBook_insertAddressBookInfoIntoCache_forKey___block_invoke;
  v10[3] = &unk_1E81DC2A8;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __61__CHSharedAddressBook_insertAddressBookInfoIntoCache_forKey___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 40))
  {
    v4 = [*(a1 + 48) addressBookCache];
    [v4 setObject:*(a1 + 32) forKey:*(a1 + 40)];
  }

  else
  {
    v3 = [*(a1 + 48) logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__CHSharedAddressBook_insertAddressBookInfoIntoCache_forKey___block_invoke_cold_1(v2, a1, v3);
    }
  }
}

- (id)fetchAddressBookInfoFromCacheForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CHSharedAddressBook_fetchAddressBookInfoFromCacheForKey___block_invoke;
  v8[3] = &unk_1E81DC2D0;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(CHSynchronizedLoggable *)self executeSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __59__CHSharedAddressBook_fetchAddressBookInfoFromCacheForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) addressBookCache];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)cachedCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHSharedAddressBook_cachedCount__block_invoke;
  v4[3] = &unk_1E81DC2F8;
  v4[4] = self;
  v4[5] = &v5;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHSharedAddressBook_cachedCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addressBookCache];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void __64__CHSharedAddressBook_insertAddressBookInfoDictionaryIntoCache___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "Cannot insert info %@ into address book cache", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __61__CHSharedAddressBook_insertAddressBookInfoIntoCache_forKey___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 40);
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Cannot insert %@ for key %@ into address book cache", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end