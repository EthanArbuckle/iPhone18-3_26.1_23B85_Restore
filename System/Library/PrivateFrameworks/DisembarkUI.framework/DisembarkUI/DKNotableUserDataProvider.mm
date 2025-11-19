@interface DKNotableUserDataProvider
- (DKNotableUserDataProvider)init;
- (DKNotableUserDataProvider)initWithAccountProvider:(id)a3 findMyProvider:(id)a4 appleCareProvider:(id)a5 walletProvider:(id)a6;
- (void)fetchNotableUserData:(id)a3;
@end

@implementation DKNotableUserDataProvider

- (DKNotableUserDataProvider)initWithAccountProvider:(id)a3 findMyProvider:(id)a4 appleCareProvider:(id)a5 walletProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(DKNotableUserDataProvider *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountProvider, a3);
    objc_storeStrong(&v16->_findMyProvider, a4);
    objc_storeStrong(&v16->_appleCareProvider, a5);
    objc_storeStrong(&v16->_walletProvider, a6);
  }

  return v16;
}

- (DKNotableUserDataProvider)init
{
  v10.receiver = self;
  v10.super_class = DKNotableUserDataProvider;
  v2 = [(DKNotableUserDataProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(DKRestrictionsProvider);
    restrictionsProvider = v2->_restrictionsProvider;
    v2->_restrictionsProvider = v3;

    v5 = objc_alloc_init(DKStorageProvider);
    storageProvider = v2->_storageProvider;
    v2->_storageProvider = v5;

    v7 = objc_alloc_init(DKTelephonyProvider);
    telephonyProvider = v2->_telephonyProvider;
    v2->_telephonyProvider = v7;
  }

  return v2;
}

- (void)fetchNotableUserData:(id)a3
{
  v4 = a3;
  v5 = [(DKNotableUserDataProvider *)self accountProvider];
  if (!v5)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v6 = [(DKNotableUserDataProvider *)self findMyProvider];
  if (!v6)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v7 = [(DKNotableUserDataProvider *)self appleCareProvider];
  if (!v7)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v8 = [(DKNotableUserDataProvider *)self restrictionsProvider];
  if (!v8)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v9 = [(DKNotableUserDataProvider *)self storageProvider];
  if (!v9)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v10 = [(DKNotableUserDataProvider *)self telephonyProvider];
  if (!v10)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v11 = [(DKNotableUserDataProvider *)self walletProvider];
  if (!v11)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v12 = objc_alloc_init(DKNotableUserData);
  v13 = _DKLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v13, OS_LOG_TYPE_DEFAULT, "Fetching synchronous notable user data...", buf, 2u);
  }

  v14 = [(DKNotableUserDataProvider *)self restrictionsProvider];
  v15 = [v14 isPreserveESIMOnEraseEnforced];

  if (v15)
  {
    [(DKNotableUserData *)v12 setCellularPlans:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v16 = [(DKNotableUserDataProvider *)self telephonyProvider];
    v17 = [v16 cellularPlans];
    [(DKNotableUserData *)v12 setCellularPlans:v17];
  }

  v18 = [(DKNotableUserDataProvider *)self storageProvider];
  -[DKNotableUserData setDataSize:](v12, "setDataSize:", [v18 dataSize]);

  v19 = _DKLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v19, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous notable user data...", buf, 2u);
  }

  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v21 = [(DKNotableUserDataProvider *)self findMyProvider];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke;
  v47[3] = &unk_278F7DE90;
  v22 = v12;
  v48 = v22;
  v23 = v20;
  v49 = v23;
  [v21 fetchFindMyState:v47];

  dispatch_group_enter(v23);
  v24 = [(DKNotableUserDataProvider *)self appleCareProvider];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_55;
  v44[3] = &unk_278F7DEB8;
  v25 = v22;
  v45 = v25;
  v26 = v23;
  v46 = v26;
  [v24 fetchAppleCareData:v44];

  dispatch_group_enter(v26);
  v27 = [(DKNotableUserDataProvider *)self accountProvider];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_57;
  v41[3] = &unk_278F7DEE0;
  v28 = v25;
  v42 = v28;
  v29 = v26;
  v43 = v29;
  [v27 fetchAccounts:v41];

  dispatch_group_enter(v29);
  v30 = [(DKNotableUserDataProvider *)self walletProvider];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_59;
  v38[3] = &unk_278F7DF08;
  v31 = v28;
  v39 = v31;
  v40 = v29;
  v32 = v29;
  [v30 fetchAppleWalletCards:v38];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_61;
  v35[3] = &unk_278F7D8F8;
  v36 = v31;
  v37 = v4;
  v33 = v31;
  v34 = v4;
  dispatch_group_notify(v32, MEMORY[0x277D85CD0], v35);
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _DKLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching Find My state", v5, 2u);
  }

  [*(a1 + 32) setFindMyEnabled:a2];
  dispatch_group_leave(*(a1 + 40));
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _DKLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching Apple Care data", v5, 2u);
  }

  [*(a1 + 32) setAppleCareData:v3];
  dispatch_group_leave(*(a1 + 40));
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _DKLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching accounts", v5, 2u);
  }

  [*(a1 + 32) setAccounts:v3];
  dispatch_group_leave(*(a1 + 40));
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _DKLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching Wallet data", v5, 2u);
  }

  [*(a1 + 32) setWalletData:v3];
  dispatch_group_leave(*(a1 + 40));
}

@end