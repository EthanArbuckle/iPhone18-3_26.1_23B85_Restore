@interface FPDAccessControlStore
+ (id)sharedStore;
- (BOOL)lookupLRUSignature:(id)signature;
- (FPDAccessControlStore)init;
- (FPDAccessControlStore)initWithDatabaseBaseURL:(id)l;
- (id)bookmarkForItemID:(id)d consumerIdentifier:(id)identifier;
- (id)keyForBundleIdentifier:(id)identifier generateIfNotFound:(BOOL)found keyGenBlock:(id)block;
- (id)swift_bookmarkForItemID:(id)d consumerIdentifier:(id)identifier installSessionIdentifier:(id)sessionIdentifier;
- (id)swift_parseUnverifiedBookmark:(id)bookmark;
- (id)swift_verifyBookmark:(id)bookmark consumerIdentifier:(id)identifier installSessionIdentifier:(id)sessionIdentifier;
- (id)verifyBookmark:(id)bookmark auditToken:(id *)token consumerIdentifier:(id)identifier;
- (void)addLRUSignature:(id)signature;
- (void)dealloc;
- (void)openDatabase;
- (void)performWithDBConnection:(id)connection;
- (void)reopenDatabaseAfterUnlock;
- (void)validateDatabase:(id)database;
@end

@implementation FPDAccessControlStore

+ (id)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[FPDAccessControlStore sharedStore];
  }

  v3 = sharedStore_store;

  return v3;
}

void __36__FPDAccessControlStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(FPDAccessControlStore);
  v1 = sharedStore_store;
  sharedStore_store = v0;
}

- (FPDAccessControlStore)init
{
  if (accessControlBaseURL_onceToken != -1)
  {
    [FPDAccessControlStore init];
  }

  v3 = accessControlBaseURL_url;

  return [(FPDAccessControlStore *)self initWithDatabaseBaseURL:v3];
}

- (FPDAccessControlStore)initWithDatabaseBaseURL:(id)l
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = FPDAccessControlStore;
  v6 = [(FPDAccessControlStore *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseBaseURL, l);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("FPDAccessControlStore sync queue", v8);
    syncQueue = v7->_syncQueue;
    v7->_syncQueue = v9;

    v11 = objc_opt_new();
    dbConnection = v7->_dbConnection;
    v7->_dbConnection = v11;

    [(PQLConnection *)v7->_dbConnection setLabel:@"access control"];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, firstUnlockNotificationCallback_0, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v14 = v7->_syncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__FPDAccessControlStore_initWithDatabaseBaseURL___block_invoke;
    block[3] = &unk_1E83BE068;
    v17 = v7;
    dispatch_sync(v14, block);
  }

  return v7;
}

- (void)dealloc
{
  [(PQLConnection *)self->_dbConnection close:0];
  v3.receiver = self;
  v3.super_class = FPDAccessControlStore;
  [(FPDAccessControlStore *)&v3 dealloc];
}

- (void)performWithDBConnection:(id)connection
{
  connectionCopy = connection;
  syncQueue = [(FPDAccessControlStore *)self syncQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FPDAccessControlStore_performWithDBConnection___block_invoke;
  v7[3] = &unk_1E83BF450;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(syncQueue, v7);
}

- (void)reopenDatabaseAfterUnlock
{
  syncQueue = [(FPDAccessControlStore *)self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPDAccessControlStore_reopenDatabaseAfterUnlock__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __50__FPDAccessControlStore_reopenDatabaseAfterUnlock__block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__FPDAccessControlStore_reopenDatabaseAfterUnlock__block_invoke_cold_1();
  }

  return [*(a1 + 32) openDatabase];
}

- (void)openDatabase
{
  v10 = *MEMORY[0x1E69E9840];
  fp_prettyDescription = [self fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] Cannot open access control database. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateDatabase:(id)database
{
  v33 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  userVersion = [databaseCopy userVersion];
  if (!userVersion)
  {
    lastError = [databaseCopy lastError];
    domain = [lastError domain];
    if ([domain isEqualToString:*MEMORY[0x1E69E5948]])
    {
      code = [lastError code];

      if (code == 11)
      {
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [FPDAccessControlStore validateDatabase:];
        }

        v28 = lastError;
        v10 = [databaseCopy destroyDatabaseWithError:&v28];
        v11 = v28;

        if ((v10 & 1) == 0)
        {
          v20 = fp_current_or_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [(FPDAccessControlStore *)v11 validateDatabase:v20];
          }

          abort();
        }

        userVersion = &unk_1F4C62A18;
        lastError = v11;
        goto LABEL_10;
      }
    }

    else
    {
    }

    userVersion = 0;
LABEL_10:
  }

  unsignedIntegerValue = [userVersion unsignedIntegerValue];
  v13 = [(NSURL *)self->_databaseBaseURL URLByAppendingPathExtension:@"plist"];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = unsignedIntegerValue;
  if (unsignedIntegerValue <= 3)
  {
    v14 = MEMORY[0x1E69E9820];
    do
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v25[3];
        *buf = 134218240;
        v30 = v16;
        v31 = 2048;
        v32 = v16 + 1;
        _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[NOTICE] migrating from %lu to %lu", buf, 0x16u);
      }

      v21[0] = v14;
      v21[1] = 3221225472;
      v21[2] = __42__FPDAccessControlStore_validateDatabase___block_invoke;
      v21[3] = &unk_1E83BF5D8;
      v23 = &v24;
      v22 = v13;
      v17 = [databaseCopy performWithFlags:10 action:v21];

      if (!v17)
      {
        break;
      }

      v18 = v25[3] + 1;
      v25[3] = v18;
    }

    while (v18 < 4);
  }

  _Block_object_dispose(&v24, 8);
  [databaseCopy performWithFlags:0 action:&__block_literal_global_35];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __42__FPDAccessControlStore_validateDatabase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5 == 3)
  {
    [v3 execute:@"DROP TABLE IF EXISTS bundle_ids"];
    [v4 execute:@"DROP TABLE IF EXISTS vended_bookmarks"];
    [v4 execute:@"DROP TABLE IF EXISTS acl"];
    if (![v4 execute:{@"CREATE TABLE bundle_keys(key INTEGER PRIMARY KEY, identifier TEXT UNIQUE NOT NULL, symmetric_key BLOB NOT NULL)"}])
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    v6 = objc_opt_new();
    [v6 removeItemAtURL:*(a1 + 32) error:0];
  }

  if ([v4 setUserVersion:*(*(*(a1 + 40) + 8) + 24) + 1])
  {
    v7 = 1;
    goto LABEL_12;
  }

LABEL_7:
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __42__FPDAccessControlStore_validateDatabase___block_invoke_cold_1(v4);
  }

  fp_simulate_crash();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    __42__FPDAccessControlStore_validateDatabase___block_invoke_cold_2();
  }

  v7 = 0;
LABEL_12:

  return v7;
}

uint64_t __42__FPDAccessControlStore_validateDatabase___block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 execute:@"DROP TABLE IF EXISTS lru_signature"];
  v3 = [v2 execute:@"CREATE TABLE lru_signature(signature BLOB UNIQUE NOT NULL)"];

  return v3;
}

- (id)keyForBundleIdentifier:(id)identifier generateIfNotFound:(BOOL)found keyGenBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__FPDAccessControlStore_keyForBundleIdentifier_generateIfNotFound_keyGenBlock___block_invoke;
  v14[3] = &unk_1E83BF648;
  v10 = identifierCopy;
  v15 = v10;
  foundCopy = found;
  v11 = blockCopy;
  v16 = v11;
  v17 = &v19;
  [(FPDAccessControlStore *)self performWithDBConnection:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __79__FPDAccessControlStore_keyForBundleIdentifier_generateIfNotFound_keyGenBlock___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__FPDAccessControlStore_keyForBundleIdentifier_generateIfNotFound_keyGenBlock___block_invoke_2;
  v6[3] = &unk_1E83BF620;
  v7 = *(a1 + 32);
  v10 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 performWithFlags:16 action:v6];
}

uint64_t __79__FPDAccessControlStore_keyForBundleIdentifier_generateIfNotFound_keyGenBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetch:{@"SELECT symmetric_key FROM bundle_keys WHERE identifier = %@", *(a1 + 32)}];
  if ([v4 next] && (objc_msgSend(v4, "dataAtIndex:", 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    v8 = v5;

    v9 = 1;
  }

  else
  {
    if (*(a1 + 56) != 1)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v10 = (*(*(a1 + 40) + 16))();
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
    v8 = v10;

    v9 = [v3 execute:{@"INSERT INTO bundle_keys (identifier, symmetric_key) VALUES (%@, %@)", *(a1 + 32), v8}];
  }

LABEL_8:
  return v9;
}

- (id)bookmarkForItemID:(id)d consumerIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
  v9 = containingApplicationRecord(v8);

  if (v9)
  {
    if (checkBundleRecord(v9, identifierCopy))
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(FPDAccessControlStore *)dCopy bookmarkForItemID:v9 consumerIdentifier:v10];
      }

      bundleIdentifier = [v9 bundleIdentifier];
      installSessionIdentifier = [v9 installSessionIdentifier];
      v13 = [(FPDAccessControlStore *)self swift_bookmarkForItemID:dCopy consumerIdentifier:bundleIdentifier installSessionIdentifier:installSessionIdentifier];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDAccessControlStore bookmarkForItemID:consumerIdentifier:];
    }

    v13 = [(FPDAccessControlStore *)self swift_bookmarkForItemID:dCopy consumerIdentifier:identifierCopy installSessionIdentifier:0];
  }

  return v13;
}

- (id)verifyBookmark:(id)bookmark auditToken:(id *)token consumerIdentifier:(id)identifier
{
  bookmarkCopy = bookmark;
  identifierCopy = identifier;
  v10 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v10;
  v11 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:v19 error:0];
  v12 = containingApplicationRecord(v11);

  if (v12)
  {
    if (checkBundleRecord(v12, identifierCopy))
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [FPDAccessControlStore verifyBookmark:v12 auditToken:v13 consumerIdentifier:?];
      }

      bundleIdentifier = [v12 bundleIdentifier];
      installSessionIdentifier = [v12 installSessionIdentifier];
      v16 = [(FPDAccessControlStore *)self swift_verifyBookmark:bookmarkCopy consumerIdentifier:bundleIdentifier installSessionIdentifier:installSessionIdentifier];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [FPDAccessControlStore verifyBookmark:auditToken:consumerIdentifier:];
    }

    v16 = [(FPDAccessControlStore *)self swift_verifyBookmark:bookmarkCopy consumerIdentifier:identifierCopy installSessionIdentifier:0];
  }

  return v16;
}

- (BOOL)lookupLRUSignature:(id)signature
{
  signatureCopy = signature;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FPDAccessControlStore_lookupLRUSignature___block_invoke;
  v7[3] = &unk_1E83BF698;
  v5 = signatureCopy;
  v8 = v5;
  v9 = &v10;
  [(FPDAccessControlStore *)self performWithDBConnection:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __44__FPDAccessControlStore_lookupLRUSignature___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__FPDAccessControlStore_lookupLRUSignature___block_invoke_2;
  v6[3] = &unk_1E83BF670;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 performWithFlags:0 action:v6];
}

uint64_t __44__FPDAccessControlStore_lookupLRUSignature___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 fetch:{@"SELECT COUNT(*) FROM lru_signature WHERE signature = %@", *(a1 + 32)}];
  if ([v3 next])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 intAtIndex:0] > 0;
  }

  return 1;
}

- (void)addLRUSignature:(id)signature
{
  signatureCopy = signature;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__FPDAccessControlStore_addLRUSignature___block_invoke;
  v6[3] = &unk_1E83BF6E8;
  v7 = signatureCopy;
  v5 = signatureCopy;
  [(FPDAccessControlStore *)self performWithDBConnection:v6];
}

void __41__FPDAccessControlStore_addLRUSignature___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__FPDAccessControlStore_addLRUSignature___block_invoke_2;
  v3[3] = &unk_1E83BF6C0;
  v4 = *(a1 + 32);
  [a2 performWithFlags:0 action:v3];
}

- (id)swift_bookmarkForItemID:(id)d consumerIdentifier:(id)identifier installSessionIdentifier:(id)sessionIdentifier
{
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  dCopy = d;
  selfCopy = self;
  if (sessionIdentifier)
  {
    sessionIdentifierCopy = sessionIdentifier;
    sessionIdentifier = sub_1CF9E5B88();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  FPDAccessControlStore.swift_bookmark(for:consumerIdentifier:installSessionIdentifier:)(d, v8, v10, sessionIdentifier, v15);
  v17 = v16;
  sub_1CEFE48D8(sessionIdentifier, v15);

  if (v17)
  {
    v18 = sub_1CF9E6888();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)swift_verifyBookmark:(id)bookmark consumerIdentifier:(id)identifier installSessionIdentifier:(id)sessionIdentifier
{
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  selfCopy = self;
  if (sessionIdentifier)
  {
    sessionIdentifierCopy = sessionIdentifier;
    sessionIdentifier = sub_1CF9E5B88();
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  v17 = sub_1CF711874(v7, v9, v10, v12, sessionIdentifier, v16);
  sub_1CEFE48D8(sessionIdentifier, v16);

  return v17;
}

- (id)swift_parseUnverifiedBookmark:(id)bookmark
{
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  selfCopy = self;
  sub_1CF71290C(v4, v6, v13);

  if (v13[1])
  {
    v9 = v13[3];
    v8 = v13[4];
    v10 = v13[2];

    v11 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderID:v10 domainIdentifier:v9 itemIdentifier:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)validateDatabase:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_FAULT, "[CRIT] failed to destroy database after corruption: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __42__FPDAccessControlStore_validateDatabase___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] Failed to migrate legacy database; %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)bookmarkForItemID:(NSObject *)a3 consumerIdentifier:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [a2 bundleIdentifier];
  v6 = [a2 installSessionIdentifier];
  OUTLINED_FUNCTION_3_0();
  v11 = v5;
  v12 = v7;
  v13 = v8;
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] extending bookmark to %@ for %@ (%@)", v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)bookmarkForItemID:consumerIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] extending bookmark to %@ for %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)verifyBookmark:(void *)a1 auditToken:(NSObject *)a2 consumerIdentifier:.cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 bundleIdentifier];
  v5 = [a1 installSessionIdentifier];
  OUTLINED_FUNCTION_3_0();
  v9 = v6;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] verifying bookmark for %@ (%@)", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)verifyBookmark:auditToken:consumerIdentifier:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] verifying bookmark for %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end