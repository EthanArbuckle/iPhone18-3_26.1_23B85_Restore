@interface ASKProfilePictureStore
+ (ASKProfilePictureStore)sharedStore;
- (ASKProfilePictureStore)init;
- (id)_profilePictureForFamilyMember:(id)a3 withProfilePictureStore:(id)a4 usingMonogrammer:(id)a5;
- (void)_markAsHasRequestedImages;
- (void)appleAccountsDidChange:(id)a3;
- (void)configureProfilePictureStoreAndNotifyIfNeeded;
- (void)dealloc;
- (void)notifyIfNeeded;
- (void)profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:(double)a3 completion:(id)a4;
- (void)profilePictureStoreDidChange:(id)a3;
- (void)profilePictureWithMonogramFallbackForFamilyMembers:(id)a3 pictureDiameter:(double)a4 completion:(id)a5;
- (void)storeAccountsDidChange:(id)a3;
@end

@implementation ASKProfilePictureStore

+ (ASKProfilePictureStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[ASKProfilePictureStore sharedStore];
  }

  v3 = sharedStore_instance;

  return v3;
}

void __37__ASKProfilePictureStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(ASKProfilePictureStore);
  v1 = sharedStore_instance;
  sharedStore_instance = v0;
}

- (ASKProfilePictureStore)init
{
  v19.receiver = self;
  v19.super_class = ASKProfilePictureStore;
  v2 = [(ASKProfilePictureStore *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AppStoreKit.ASKProfilePictureStore.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("AppStoreKit.ASKProfilePictureStore.notificationQueue", MEMORY[0x277D85CD8]);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277CB8B78];
    [v9 addObserver:v2 selector:sel_appleAccountsDidChange_ name:*MEMORY[0x277CB8B78] object:v2->_accountStore];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    [v11 addObserver:v2 selector:sel_storeAccountsDidChange_ name:v10 object:v12];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_profilePictureStoreDidChange_ name:*MEMORY[0x277CEC9C0] object:0];

    objc_initWeak(&location, v2);
    v14 = [(ASKProfilePictureStore *)v2 accessQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__ASKProfilePictureStore_init__block_invoke;
    v16[3] = &unk_27968B5B0;
    objc_copyWeak(&v17, &location);
    dispatch_async(v14, v16);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__ASKProfilePictureStore_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASKProfilePictureStore;
  [(ASKProfilePictureStore *)&v4 dealloc];
}

- (void)configureProfilePictureStoreAndNotifyIfNeeded
{
  v3 = [(ASKProfilePictureStore *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ASKProfilePictureStore *)self accountStore];
  v41 = [v4 aa_primaryAppleAccount];

  v5 = [v41 username];
  v6 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];
  v8 = [v7 username];

  v9 = [(ASKProfilePictureStore *)self primaryAccountName];
  v10 = [v9 length];
  if (v10 == [v5 length])
  {
    HIDWORD(v38) = 0;
  }

  else
  {
    v11 = [(ASKProfilePictureStore *)self primaryAccountName];
    HIDWORD(v38) = [v11 isEqualToString:v5] ^ 1;
  }

  v12 = [(ASKProfilePictureStore *)self storeAccountName];
  v13 = [v12 length];
  if (v13 == [v8 length])
  {
    LODWORD(v38) = 0;
  }

  else
  {
    v14 = [(ASKProfilePictureStore *)self storeAccountName];
    LODWORD(v38) = [v14 isEqualToString:v8] ^ 1;
  }

  if ([v5 length])
  {
    v15 = [v8 length] != 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v41 userFullName];
  v17 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v18 = [v17 ams_activeiTunesAccount];
  v19 = [v18 userFullName];

  v20 = [(ASKProfilePictureStore *)self primaryAccountFullName];
  v21 = [v20 length];
  if (v21 == [v16 length])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v23 = [(ASKProfilePictureStore *)self primaryAccountFullName];
    v22 = [v23 isEqualToString:v16] ^ 1;
  }

  v24 = [(ASKProfilePictureStore *)self storeAccountFullName];
  v25 = [v24 length];
  if (v25 == [v19 length])
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    v27 = [(ASKProfilePictureStore *)self storeAccountFullName];
    v26 = [v27 isEqualToString:v19] ^ 1;
  }

  v28 = v40 | v22;
  if ([v8 caseInsensitiveCompare:v5])
  {
    v29 = [v19 caseInsensitiveCompare:v16] != 0;
  }

  else
  {
    v29 = 0;
  }

  [(ASKProfilePictureStore *)self setPrimaryAccountFullName:v16];
  [(ASKProfilePictureStore *)self setStoreAccountFullName:v19];
  v30 = [(ASKProfilePictureStore *)self profilePictureStore];

  v31 = v28 | v39 | v26;
  if ((v31 & 1) != 0 || v15 != (v30 != 0))
  {
    [(ASKProfilePictureStore *)self setPrimaryAccountName:v5];
    [(ASKProfilePictureStore *)self setStoreAccountName:v8];
    if (v29 || !v15)
    {
      [(ASKProfilePictureStore *)self setProfilePictureStore:0];
      if ((v31 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32 = [(ASKProfilePictureStore *)self accountStore];
      v33 = [v32 aida_accountForiCloudAccount:v41];

      v34 = objc_alloc(MEMORY[0x277CECA90]);
      v35 = [(ASKProfilePictureStore *)self accountStore];
      v36 = [v34 initWithAppleAccount:v41 grandSlamAccount:v33 accountStore:v35];
      [(ASKProfilePictureStore *)self setProfilePictureStore:v36];

      v37 = [(ASKProfilePictureStore *)self profilePictureStore];
      [v37 setMonogramType:0];

      if ((v31 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    [(ASKProfilePictureStore *)self notifyIfNeeded];
  }

LABEL_26:
}

- (void)notifyIfNeeded
{
  v3 = [(ASKProfilePictureStore *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  if ([(ASKProfilePictureStore *)self hasRequestedImages])
  {
    objc_initWeak(&location, self);
    v4 = [(ASKProfilePictureStore *)self notificationQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__ASKProfilePictureStore_notifyIfNeeded__block_invoke;
    v5[3] = &unk_27968B5B0;
    objc_copyWeak(&v6, &location);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __40__ASKProfilePictureStore_notifyIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"ASKProfilePictureStoreDidChange" object:WeakRetained];
}

- (void)appleAccountsDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ASKProfilePictureStore_appleAccountsDidChange___block_invoke;
  v6[3] = &unk_27968B5B0;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__ASKProfilePictureStore_appleAccountsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc_init(MEMORY[0x277CB8F48]);
  [WeakRetained setAccountStore:v1];

  [WeakRetained setProfilePictureStore:0];
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)storeAccountsDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ASKProfilePictureStore_storeAccountsDidChange___block_invoke;
  v6[3] = &unk_27968B5B0;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__ASKProfilePictureStore_storeAccountsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureProfilePictureStoreAndNotifyIfNeeded];
}

- (void)profilePictureStoreDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ASKProfilePictureStore *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ASKProfilePictureStore_profilePictureStoreDidChange___block_invoke;
  v6[3] = &unk_27968B5B0;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__ASKProfilePictureStore_profilePictureStoreDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyIfNeeded];
}

- (void)profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:(double)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(ASKProfilePictureStore *)self accessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke;
  v9[3] = &unk_27968B938;
  objc_copyWeak(v11, &location);
  v11[1] = *&a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markAsHasRequestedImages];
  v3 = [WeakRetained profilePictureStore];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [WeakRetained profilePictureStore];
    [v5 setPictureDiameter:v4];

    v6 = [WeakRetained profilePictureStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_2;
    v10[3] = &unk_27968B8E8;
    v7 = &v11;
    v11 = *(a1 + 32);
    [v6 profilePictureForAccountOwnerWithCompletion:v10];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_4;
    v8[3] = &unk_27968B910;
    v7 = &v9;
    v9 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__ASKProfilePictureStore_profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter_completion___block_invoke_3;
  v6[3] = &unk_27968B3F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)profilePictureWithMonogramFallbackForFamilyMembers:(id)a3 pictureDiameter:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(ASKProfilePictureStore *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke;
  block[3] = &unk_27968B960;
  objc_copyWeak(v16, &location);
  v16[1] = *&a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v4 = [WeakRetained profilePictureStore];
  [v4 setPictureDiameter:v3];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:*(a1 + 56)];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = a1;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ([v12 isCurrentSignedInUser] && (objc_msgSend(WeakRetained, "profilePictureStore"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "profilePictureForAccountOwnerWithoutMonogramFallback"), v14 = objc_claimAutoreleasedReturnValue(), v13, v14) || (objc_msgSend(WeakRetained, "profilePictureStore"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "_profilePictureForFamilyMember:withProfilePictureStore:usingMonogrammer:", v12, v15, v6), v14 = objc_claimAutoreleasedReturnValue(), v15, v14))
        {
          v16 = [v12 iTunesDSID];

          if (v16)
          {
            v17 = [v12 iTunesDSID];
            [v5 setObject:v14 forKeyedSubscript:v17];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  [WeakRetained _markAsHasRequestedImages];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke_2;
  block[3] = &unk_27968B3F8;
  v18 = *(v20 + 40);
  v22 = v5;
  v23 = v18;
  v19 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __104__ASKProfilePictureStore_profilePictureWithMonogramFallbackForFamilyMembers_pictureDiameter_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)_profilePictureForFamilyMember:(id)a3 withProfilePictureStore:(id)a4 usingMonogrammer:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CEC7F0];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [v7 firstName];
  [v11 setFirstName:v12];

  v13 = [v7 lastName];
  [v11 setLastName:v13];

  v14 = [v7 iCloudDSID];
  [v11 setPersonID:v14];

  v15 = [v7 iCloudUsername];
  [v11 setAppleID:v15];

  v16 = [v10 profilePictureForFamilyMember:v11];

  if (v8 && !v16)
  {
    v17 = [v7 firstName];
    v18 = [v7 lastName];
    v16 = [v8 monogramForPersonWithFirstName:v17 lastName:v18];
  }

  return v16;
}

- (void)_markAsHasRequestedImages
{
  if (![(ASKProfilePictureStore *)self hasRequestedImages])
  {

    [(ASKProfilePictureStore *)self setHasRequestedImages:1];
  }
}

@end