@interface ASKStorefrontChangeProvider
- (ASKStorefrontChangeProvider)initWithBlock:(id)block;
- (BOOL)hasManagedStateChangedFromAccount:(id)account toAccount:(id)toAccount;
- (BOOL)hasStorefrontChangedFromAccount:(id)account toAccount:(id)toAccount;
- (void)accountStoreDidChange:(id)change;
- (void)dealloc;
@end

@implementation ASKStorefrontChangeProvider

- (ASKStorefrontChangeProvider)initWithBlock:(id)block
{
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = ASKStorefrontChangeProvider;
  v5 = [(ASKStorefrontChangeProvider *)&v26 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = dispatch_queue_create("ASKStorefrontChangeProvider", 0);
    notifyQueue = v5->_notifyQueue;
    v5->_notifyQueue = v8;

    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = ams_sharedAccountStore;

    accountStore = [(ASKStorefrontChangeProvider *)v5 accountStore];
    ams_activeiTunesAccount = [accountStore ams_activeiTunesAccount];
    activeAccount = v5->_activeAccount;
    v5->_activeAccount = ams_activeiTunesAccount;

    accountStore2 = [(ASKStorefrontChangeProvider *)v5 accountStore];
    ams_fetchLocaliTunesAccount = [accountStore2 ams_fetchLocaliTunesAccount];

    objc_initWeak(&location, v5);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke;
    v23 = &unk_27968B1A0;
    objc_copyWeak(&v24, &location);
    [ams_fetchLocaliTunesAccount addSuccessBlock:&v20];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    accountStore3 = [(ASKStorefrontChangeProvider *)v5 accountStore];
    [defaultCenter addObserver:v5 selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8B78] object:accountStore3];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke_2;
  v5[3] = &unk_27968B178;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLocalAccount:*(a1 + 32)];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CB8B78];
  accountStore = [(ASKStorefrontChangeProvider *)self accountStore];
  [defaultCenter removeObserver:self name:v4 object:accountStore];

  v6.receiver = self;
  v6.super_class = ASKStorefrontChangeProvider;
  [(ASKStorefrontChangeProvider *)&v6 dealloc];
}

- (BOOL)hasStorefrontChangedFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  ams_storefront = [account ams_storefront];
  ams_storefront2 = [toAccountCopy ams_storefront];

  if (ams_storefront | ams_storefront2)
  {
    v8 = [ams_storefront isEqual:ams_storefront2] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)hasManagedStateChangedFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  v6 = [account accountPropertyForKey:@"isManagedAppleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  bOOLValue = [v7 BOOLValue];
  v9 = [toAccountCopy accountPropertyForKey:@"isManagedAppleID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  bOOLValue2 = [v10 BOOLValue];
  return bOOLValue ^ bOOLValue2;
}

- (void)accountStoreDidChange:(id)change
{
  changeCopy = change;
  accountStore = [(ASKStorefrontChangeProvider *)self accountStore];
  ams_fetchLocaliTunesAccount = [accountStore ams_fetchLocaliTunesAccount];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke;
  v7[3] = &unk_27968B218;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [ams_fetchLocaliTunesAccount addSuccessBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_2;
  block[3] = &unk_27968B1F0;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained localAccount];
  v4 = a1[4];
  v5 = [WeakRetained activeAccount];
  v6 = [WeakRetained accountStore];
  v7 = [v6 ams_activeiTunesAccount];

  v8 = [a1[5] notifyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_3;
  block[3] = &unk_27968B1C8;
  block[4] = WeakRetained;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  dispatch_async(v8, block);

  [WeakRetained setLocalAccount:v11];
  [WeakRetained setActiveAccount:v9];
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) hasStorefrontChangedFromAccount:*(a1 + 40) toAccount:*(a1 + 48)];
  if (([*(a1 + 32) hasManagedStateChangedFromAccount:*(a1 + 56) toAccount:*(a1 + 64)] & 1) != 0 || v2)
  {
    v3 = [*(a1 + 32) block];
    v3[2]();
  }
}

@end