@interface ML3AccountStore
+ (ML3AccountStore)defaultStore;
- (ACAccount)activeAccount;
- (NSString)accountDSID;
- (id)_accountsWithAccountTypeIdentifier:(id)identifier options:(unint64_t)options error:(id *)error;
- (id)_init;
- (id)altDSIDForAccountWithDSID:(int64_t)d options:(unint64_t)options error:(id *)error;
@end

@implementation ML3AccountStore

- (id)_accountsWithAccountTypeIdentifier:(id)identifier options:(unint64_t)options error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CB8F48];
  identifierCopy = identifier;
  defaultStore = [v8 defaultStore];
  v11 = [defaultStore accountTypeWithAccountTypeIdentifier:identifierCopy error:error];

  if (*error)
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      v19 = 138543618;
      selfCopy2 = self;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to retrieve itunes account type. err=%{public}@", &v19, 0x16u);
    }

LABEL_8:
    v17 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  v14 = [defaultStore accountsWithAccountType:v11 options:options error:error];
  v12 = v14;
  if (*error)
  {
    v15 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *error;
      v19 = 138543618;
      selfCopy2 = self;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to retrieve accounts for itunes account type. err=%{public}@", &v19, 0x16u);
    }

    goto LABEL_8;
  }

  v12 = v14;
  v17 = v12;
LABEL_9:

  return v17;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ML3AccountStore;
  return [(ML3AccountStore *)&v3 init];
}

- (NSString)accountDSID
{
  v15 = *MEMORY[0x277D85DE8];
  activeAccount = [(ML3AccountStore *)self activeAccount];
  v3 = [activeAccount accountPropertyForKey:@"dsid"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v3 stringValue];
LABEL_8:
      v6 = stringValue;
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = v3;
      goto LABEL_8;
    }

    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543874;
      v10 = @"dsid";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v7 = v14;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "accountPropertyForKey %{public}@ is %{public}@. It should be an NSString or NSNumber instead of %{public}@", &v9, 0x20u);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = @"dsid";
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "accountPropertyForKey %{public}@ is nil. Proceeding without dsid", &v9, 0xCu);
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)altDSIDForAccountWithDSID:(int64_t)d options:(unint64_t)options error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v8 = [(ML3AccountStore *)self _accountsWithAccountTypeIdentifier:*MEMORY[0x277CB8D58] options:options error:?];
  v9 = v8;
  if (*error)
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to retrieve active itunes account type. err=%{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__ML3AccountStore_altDSIDForAccountWithDSID_options_error___block_invoke;
    v14[3] = &unk_27875CD68;
    v14[4] = &v15;
    v14[5] = d;
    [v8 enumerateObjectsUsingBlock:v14];
    v12 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __59__ML3AccountStore_altDSIDForAccountWithDSID_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v8 = a2;
  v6 = [v8 accountPropertyForKey:@"dsid"];
  if ([v6 longLongValue] == *(a1 + 40))
  {
    v7 = [v8 accountPropertyForKey:@"altDSID"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
      }
    }
  }

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (ACAccount)activeAccount
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8D58];
  v10 = 0;
  v4 = [(ML3AccountStore *)self _accountsWithAccountTypeIdentifier:v3 options:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to retrieve active itunes account type. err=%{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__ML3AccountStore_activeAccount__block_invoke;
    v9[3] = &unk_27875CD40;
    v9[4] = buf;
    [v4 enumerateObjectsUsingBlock:v9];
    v7 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  return v7;
}

void __32__ML3AccountStore_activeAccount__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isActive])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  *a4 = [v7 isActive];
}

+ (ML3AccountStore)defaultStore
{
  if (defaultStore_onceToken[0] != -1)
  {
    dispatch_once(defaultStore_onceToken, &__block_literal_global);
  }

  v3 = defaultStore___defaultStore;

  return v3;
}

uint64_t __31__ML3AccountStore_defaultStore__block_invoke()
{
  defaultStore___defaultStore = [[ML3AccountStore alloc] _init];

  return MEMORY[0x2821F96F8]();
}

@end