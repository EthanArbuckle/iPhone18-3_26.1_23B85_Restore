@interface HFMediaDispatcher
+ (id)sharedDispatcher;
- (ACAccountStore)appleMusicAccountStore;
- (BOOL)_reloadAppleMusicMagicAuthCapableAccounts;
- (BOOL)isUsingiCloud;
- (HFMediaDispatcher)init;
- (void)_accountsStoreWasUpdated:(id)updated;
- (void)_setupAppleMusicAccountStoreIfNecessary;
- (void)addAppleMusicAccountObserver:(id)observer;
- (void)removeAppleMusicAccountObserver:(id)observer;
@end

@implementation HFMediaDispatcher

+ (id)sharedDispatcher
{
  if (_MergedGlobals_226 != -1)
  {
    dispatch_once(&_MergedGlobals_226, &__block_literal_global_3_4);
  }

  v3 = qword_280E02CB8;

  return v3;
}

void __37__HFMediaDispatcher_sharedDispatcher__block_invoke_2()
{
  v0 = objc_alloc_init(HFMediaDispatcher);
  v1 = qword_280E02CB8;
  qword_280E02CB8 = v0;
}

- (HFMediaDispatcher)init
{
  v8.receiver = self;
  v8.super_class = HFMediaDispatcher;
  v2 = [(HFMediaDispatcher *)&v8 init];
  if (v2)
  {
    v3 = HFLogForCategory(0x4DuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Initializing HomeKit Media Dispatcher", v7, 2u);
    }

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    appleMusicAccountObservers = v2->_appleMusicAccountObservers;
    v2->_appleMusicAccountObservers = weakObjectsHashTable;
  }

  return v2;
}

- (ACAccountStore)appleMusicAccountStore
{
  appleMusicAccountStore = self->_appleMusicAccountStore;
  if (!appleMusicAccountStore)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v5 = self->_appleMusicAccountStore;
    self->_appleMusicAccountStore = defaultStore;

    appleMusicAccountStore = self->_appleMusicAccountStore;
  }

  v6 = appleMusicAccountStore;

  return v6;
}

- (void)addAppleMusicAccountObserver:(id)observer
{
  observerCopy = observer;
  [(HFMediaDispatcher *)self _setupAppleMusicAccountStoreIfNecessary];
  appleMusicAccountObservers = [(HFMediaDispatcher *)self appleMusicAccountObservers];
  [appleMusicAccountObservers addObject:observerCopy];
}

- (void)removeAppleMusicAccountObserver:(id)observer
{
  observerCopy = observer;
  appleMusicAccountObservers = [(HFMediaDispatcher *)self appleMusicAccountObservers];
  [appleMusicAccountObservers removeObject:observerCopy];
}

- (BOOL)isUsingiCloud
{
  appleMusicAccountStore = [(HFMediaDispatcher *)self appleMusicAccountStore];
  aa_isUsingiCloud = [appleMusicAccountStore aa_isUsingiCloud];

  return aa_isUsingiCloud;
}

- (BOOL)_reloadAppleMusicMagicAuthCapableAccounts
{
  appleMusicAccountStore = [(HFMediaDispatcher *)self appleMusicAccountStore];
  v4 = [appleMusicAccountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8D58]];
  v5 = [appleMusicAccountStore accountsWithAccountType:v4];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_8_0];

  appleMusicMagicAuthCapableAccounts = [(HFMediaDispatcher *)self appleMusicMagicAuthCapableAccounts];
  v8 = [v6 isEqual:appleMusicMagicAuthCapableAccounts];

  if ((v8 & 1) == 0)
  {
    [(HFMediaDispatcher *)self setAppleMusicMagicAuthCapableAccounts:v6];
  }

  return v8 ^ 1;
}

uint64_t __62__HFMediaDispatcher__reloadAppleMusicMagicAuthCapableAccounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 username];
  v6 = [v4 username];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_accountsStoreWasUpdated:(id)updated
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HFMediaDispatcher *)self _reloadAppleMusicMagicAuthCapableAccounts])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    appleMusicAccountObservers = [(HFMediaDispatcher *)self appleMusicAccountObservers];
    v5 = [appleMusicAccountObservers copy];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            appleMusicMagicAuthCapableAccounts = [(HFMediaDispatcher *)self appleMusicMagicAuthCapableAccounts];
            [v10 dispatcher:self appleMusicAccountsDidUpdate:appleMusicMagicAuthCapableAccounts];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupAppleMusicAccountStoreIfNecessary
{
  if (!self->_appleMusicAccountStore)
  {
    [(HFMediaDispatcher *)self _reloadAppleMusicMagicAuthCapableAccounts];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accountsStoreWasUpdated_ name:*MEMORY[0x277CB8B78] object:0];
  }
}

@end