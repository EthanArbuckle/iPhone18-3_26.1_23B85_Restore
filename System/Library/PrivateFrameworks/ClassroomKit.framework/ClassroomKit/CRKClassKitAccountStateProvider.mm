@interface CRKClassKitAccountStateProvider
- (CRKClassKitAccountStateProvider)init;
- (int64_t)currentAccountState;
- (void)accountStoreDidChange:(id)change;
- (void)beginObservingAccountChanges;
- (void)dealloc;
- (void)endObservingAccountChanges;
- (void)updateAccountState;
@end

@implementation CRKClassKitAccountStateProvider

- (void)dealloc
{
  [(CRKClassKitAccountStateProvider *)self endObservingAccountChanges];
  v3.receiver = self;
  v3.super_class = CRKClassKitAccountStateProvider;
  [(CRKClassKitAccountStateProvider *)&v3 dealloc];
}

- (CRKClassKitAccountStateProvider)init
{
  v6.receiver = self;
  v6.super_class = CRKClassKitAccountStateProvider;
  v2 = [(CRKClassKitAccountStateProvider *)&v6 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = defaultStore;

    [(CRKClassKitAccountStateProvider *)v2 beginObservingAccountChanges];
    [(CRKClassKitAccountStateProvider *)v2 updateAccountState];
  }

  return v2;
}

- (void)beginObservingAccountChanges
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
}

- (void)endObservingAccountChanges
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8DB8] object:0];
}

- (void)accountStoreDidChange:(id)change
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKClassKitAccountStateProvider *)a2 accountStoreDidChange:?];
  }

  [(CRKClassKitAccountStateProvider *)self updateAccountState];
}

- (void)updateAccountState
{
  accountState = [(CRKClassKitAccountStateProvider *)self accountState];
  if (accountState != [(CRKClassKitAccountStateProvider *)self currentAccountState])
  {
    currentAccountState = [(CRKClassKitAccountStateProvider *)self currentAccountState];

    [(CRKClassKitAccountStateProvider *)self setAccountState:currentAccountState];
  }
}

- (int64_t)currentAccountState
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];
  isLoginUser = [currentUser isLoginUser];

  if (isLoginUser)
  {
    return 1;
  }

  if ([MEMORY[0x277CBB600] isAvailable])
  {
    return 2;
  }

  return 0;
}

- (void)accountStoreDidChange:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKClassKitAccountStateProvider.m" lineNumber:65 description:{@"%@ must be called from the main thread", v4}];
}

@end