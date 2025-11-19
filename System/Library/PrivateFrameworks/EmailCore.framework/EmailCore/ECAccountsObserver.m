@interface ECAccountsObserver
+ (OS_os_log)log;
+ (id)observedAccountTypes;
- (BOOL)_shouldNotifyOnAccountChangeForNotification:(id)a3;
- (ECAccountsObserver)initWithAccountStore:(id)a3;
- (void)_accountStoreDidChange:(id)a3;
- (void)_credentialsDidChange:(id)a3;
- (void)_mailAccountsChanged:(id)a3;
- (void)handleAccountStoreChangeForAccountIdentifier:(id)a3;
- (void)handleCredentialChangeForAccountIdentifier:(id)a3;
- (void)handleMailAccountsHaveChanged:(id)a3 accountsNeedInitialization:(BOOL)a4;
@end

@implementation ECAccountsObserver

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ECAccountsObserver_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __25__ECAccountsObserver_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (ECAccountsObserver)initWithAccountStore:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ECAccountsObserver.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"accountStore"}];
  }

  v12.receiver = self;
  v12.super_class = ECAccountsObserver;
  v7 = [(ECAccountsObserver *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_accountStore, a3);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v8 selector:sel__accountStoreDidChange_ name:*MEMORY[0x277CB8B78] object:v8->_accountStore];
    [v9 addObserver:v8 selector:sel__credentialsDidChange_ name:*MEMORY[0x277CB8910] object:0];
    [v9 addObserver:v8 selector:sel__mailAccountsChanged_ name:@"ECMailAccountsChangedNotification" object:0];
  }

  return v8;
}

- (void)_accountStoreDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ECAccountsObserver log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_22D092000, v5, OS_LOG_TYPE_DEFAULT, "Received account store did change notification: %{public}@", &v9, 0xCu);
  }

  if ([(ECAccountsObserver *)self _shouldNotifyOnAccountChangeForNotification:v4])
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8A60]];

    [(ECAccountsObserver *)self handleAccountStoreChangeForAccountIdentifier:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_credentialsDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ECAccountsObserver log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_22D092000, v5, OS_LOG_TYPE_DEFAULT, "Received account credentials did change notification: %{public}@", &v9, 0xCu);
  }

  if ([(ECAccountsObserver *)self _shouldNotifyOnAccountChangeForNotification:v4])
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8A60]];

    [(ECAccountsObserver *)self handleCredentialChangeForAccountIdentifier:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_mailAccountsChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ECAccountsObserver log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_22D092000, v5, OS_LOG_TYPE_DEFAULT, "Received accounts did change notification: %{public}@", &v11, 0xCu);
  }

  v6 = [v4 object];
  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"ECMailAccountInitialization"];
  v9 = [v8 BOOLValue];

  [(ECAccountsObserver *)self handleMailAccountsHaveChanged:v6 accountsNeedInitialization:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldNotifyOnAccountChangeForNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8C90]];

  if (v4)
  {
    v5 = +[ECAccountsObserver observedAccountTypes];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)observedAccountTypes
{
  if (observedAccountTypes_onceToken != -1)
  {
    +[ECAccountsObserver observedAccountTypes];
  }

  v3 = observedAccountTypes_sObservedAccountTypes;

  return v3;
}

void __42__ECAccountsObserver_observedAccountTypes__block_invoke()
{
  v10[14] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CB8C68];
  v10[0] = *MEMORY[0x277CB8C60];
  v10[1] = v0;
  v1 = *MEMORY[0x277CB8CD8];
  v10[2] = *MEMORY[0x277CB8C00];
  v10[3] = v1;
  v2 = *MEMORY[0x277CB8CD0];
  v10[4] = *MEMORY[0x277CB8CF8];
  v10[5] = v2;
  v3 = *MEMORY[0x277CB8BA0];
  v10[6] = *MEMORY[0x277CB8B98];
  v10[7] = v3;
  v4 = *MEMORY[0x277CB8C40];
  v10[8] = *MEMORY[0x277CB8D38];
  v10[9] = v4;
  v5 = *MEMORY[0x277CB8B80];
  v10[10] = *MEMORY[0x277CB8C50];
  v10[11] = v5;
  v6 = *MEMORY[0x277CB8CE8];
  v10[12] = *MEMORY[0x277CB8B88];
  v10[13] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:14];
  v8 = observedAccountTypes_sObservedAccountTypes;
  observedAccountTypes_sObservedAccountTypes = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccountStoreChangeForAccountIdentifier:(id)a3
{
  v5 = a3;
  [(ECAccountsObserver *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ECAccountsObserver handleAccountStoreChangeForAccountIdentifier:]", "ECAccountsObserver.m", 105, "0");
}

- (void)handleCredentialChangeForAccountIdentifier:(id)a3
{
  v5 = a3;
  [(ECAccountsObserver *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ECAccountsObserver handleCredentialChangeForAccountIdentifier:]", "ECAccountsObserver.m", 109, "0");
}

- (void)handleMailAccountsHaveChanged:(id)a3 accountsNeedInitialization:(BOOL)a4
{
  v6 = a3;
  [(ECAccountsObserver *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ECAccountsObserver handleMailAccountsHaveChanged:accountsNeedInitialization:]", "ECAccountsObserver.m", 113, "0");
}

@end