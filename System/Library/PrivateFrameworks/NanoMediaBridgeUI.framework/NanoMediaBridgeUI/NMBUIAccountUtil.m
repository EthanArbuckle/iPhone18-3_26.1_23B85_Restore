@interface NMBUIAccountUtil
+ (id)sharedInstance;
- (BOOL)hasITunesAccount;
- (NMBUIAccountUtil)init;
- (id)account;
- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_updateActiveAccount;
@end

@implementation NMBUIAccountUtil

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NMBUIAccountUtil sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __34__NMBUIAccountUtil_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NMBUIAccountUtil)init
{
  v8.receiver = self;
  v8.super_class = NMBUIAccountUtil;
  v2 = [(NMBUIAccountUtil *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoMusic.NMBUIAccountUtil", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleUserIdentityStoreDidChangeNotification_ name:*MEMORY[0x277D7FA08] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleActiveUserIdentityDidChangeNotification_ name:*MEMORY[0x277D7F8C8] object:0];
  }

  return v2;
}

- (BOOL)hasITunesAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NMBUIAccountUtil_hasITunesAccount__block_invoke;
  v5[3] = &unk_27993BD40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__NMBUIAccountUtil_hasITunesAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (id)account
{
  dispatch_assert_queue_V2(self->_queue);
  account = self->_account;
  if (!account)
  {
    v4 = [MEMORY[0x277D7FB30] sharedAccountStore];
    v10 = 0;
    v5 = [v4 activeStoreAccountWithError:&v10];
    v6 = v10;
    v7 = self->_account;
    self->_account = v5;

    if (!self->_account && v6)
    {
      v8 = NMLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NMBUIAccountUtil account];
      }
    }

    account = self->_account;
  }

  return account;
}

- (void)_updateActiveAccount
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277D7FB30] sharedAccountStore];
  v14 = 0;
  v4 = [v3 activeStoreAccountWithError:&v14];
  v5 = v14;

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NMBUIAccountUtil account];
    }
  }

  v8 = [(ACAccount *)self->_account ic_DSID];
  v9 = [v8 unsignedLongLongValue];

  account = self->_account;
  self->_account = v4;
  v11 = v4;

  v12 = [(ACAccount *)self->_account ic_DSID];

  v13 = [v12 unsignedLongLongValue];
  if (v13 != v9)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_10);
  }
}

void __40__NMBUIAccountUtil__updateActiveAccount__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"NMBUIITunesAccountDidChangeNotification" object:0];
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NMBUIAccountUtil__handleUserIdentityStoreDidChangeNotification___block_invoke;
  block[3] = &unk_27993BD68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __66__NMBUIAccountUtil__handleUserIdentityStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __66__NMBUIAccountUtil__handleUserIdentityStoreDidChangeNotification___block_invoke_cold_1();
  }

  return [*(a1 + 32) _updateActiveAccount];
}

- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NMBUIAccountUtil__handleActiveUserIdentityDidChangeNotification___block_invoke;
  block[3] = &unk_27993BD68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __67__NMBUIAccountUtil__handleActiveUserIdentityDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __67__NMBUIAccountUtil__handleActiveUserIdentityDidChangeNotification___block_invoke_cold_1();
  }

  return [*(a1 + 32) _updateActiveAccount];
}

@end