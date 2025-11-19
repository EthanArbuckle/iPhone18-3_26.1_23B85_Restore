@interface FMOwnerAccount
+ (id)authTokenForSubAccount:(id)a3 type:(int64_t)a4 error:(id *)a5;
+ (id)hostNameForAccount:(id)a3 type:(int64_t)a4;
+ (id)ownerAccount;
+ (id)ownerAccountWithType:(int64_t)a3;
+ (id)personIdForAccount:(id)a3 error:(id *)a4;
+ (id)primaryAccountWithStore:(id)a3 error:(id *)a4;
+ (id)sharedInstance;
+ (id)subAccountForAccount:(id)a3 type:(int64_t)a4;
- (FMOwnerAccount)init;
- (FMOwnerAccount)initWithAuthToken:(id)a3 personId:(id)a4;
- (NSString)firstName;
- (NSString)lastName;
- (NSString)personId;
- (NSString)username;
- (id)description;
- (id)hostNameOfType:(int64_t)a3;
- (id)tokenOfType:(int64_t)a3;
- (void)accountChanged;
- (void)dealloc;
- (void)initializeAccount;
@end

@implementation FMOwnerAccount

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FMOwnerAccount sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __32__FMOwnerAccount_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FMOwnerAccount);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;

  v2 = sharedInstance___instance;

  return [v2 setLegacyBehavior:1];
}

- (FMOwnerAccount)init
{
  v7.receiver = self;
  v7.super_class = FMOwnerAccount;
  v2 = [(FMOwnerAccount *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(FMOwnerAccount *)v2 initializeAccount];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, accountChanged, *MEMORY[0x277CB8DB8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v3 selector:sel_accountChanged name:@"accountChangedNotification" object:0];
  }

  return v3;
}

- (FMOwnerAccount)initWithAuthToken:(id)a3 personId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMOwnerAccount;
  v9 = [(FMOwnerAccount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authToken, a3);
    objc_storeStrong(&v10->_personId, a4);
  }

  return v10;
}

- (void)dealloc
{
  if ([(FMOwnerAccount *)self legacyBehavior])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CB8DB8], 0);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = FMOwnerAccount;
  [(FMOwnerAccount *)&v5 dealloc];
}

- (void)accountChanged
{
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMOwnerAccount: Account changed", v5, 2u);
  }

  account = self->_account;
  self->_account = 0;

  [(FMOwnerAccount *)self initializeAccount];
}

- (void)initializeAccount
{
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v4 = [v3 aa_primaryAppleAccount];
  account = self->_account;
  self->_account = v4;

  if (!v4)
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FMOwnerAccount *)v6 initializeAccount];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMOwnerAccount *)self username];
  v6 = [(FMOwnerAccount *)self personId];
  v7 = [v3 stringWithFormat:@"<%@: %p %@[%@]>", v4, self, v5, v6];

  return v7;
}

- (NSString)personId
{
  if ([(FMOwnerAccount *)self legacyBehavior])
  {
    v3 = [(FMOwnerAccount *)self account];
    v4 = [v3 aa_personID];
  }

  else
  {
    v4 = self->_personId;
  }

  return v4;
}

- (NSString)username
{
  if ([(FMOwnerAccount *)self legacyBehavior])
  {
    v3 = [(FMOwnerAccount *)self account];
    v4 = [v3 username];
  }

  else
  {
    v4 = self->_username;
  }

  return v4;
}

- (NSString)firstName
{
  if ([(FMOwnerAccount *)self legacyBehavior])
  {
    v3 = [(FMOwnerAccount *)self account];
    v4 = [v3 aa_firstName];
  }

  else
  {
    v4 = self->_firstName;
  }

  return v4;
}

- (NSString)lastName
{
  if ([(FMOwnerAccount *)self legacyBehavior])
  {
    v3 = [(FMOwnerAccount *)self account];
    v4 = [v3 aa_lastName];
  }

  else
  {
    v4 = self->_lastName;
  }

  return v4;
}

- (id)tokenOfType:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v6 = [v5 aa_primaryAppleAccount];
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    if ([v6 isProvisionedForDataclass:*MEMORY[0x277CB91A0]])
    {
      v9 = [v7 aa_fmfAccount];
    }

    else
    {
      v9 = 0;
    }

    v19 = 0;
    v8 = [v9 credentialWithError:&v19];
    v11 = v19;
    v12 = [v8 credentialItemForKey:*MEMORY[0x277CB8DE8]];
    v10 = v12;
    if (!v11 && v12)
    {
      [(FMOwnerAccount *)self setAccount:v7];
      v10 = v10;
      v11 = 0;
      v13 = v10;
      goto LABEL_15;
    }

    v14 = LogCategory_Unspecified();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 username];
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_DEFAULT, "Count not retrieve app token for FMF account [%@]. Error: %@", buf, 0x16u);
    }
  }

  v16 = LogCategory_Unspecified();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = a3;
    _os_log_impl(&dword_24A2EE000, v16, OS_LOG_TYPE_INFO, "Unknown FMAuthTokenType: %ld", buf, 0xCu);
  }

  v13 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)hostNameOfType:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(FMOwnerAccount *)self account];
  v5 = [v4 dataclassProperties];

  if (a3)
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_DEFAULT, "Unknown FMAuthTokenType: %ld", &v11, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CB91A0]];
    v7 = [v8 objectForKeyedSubscript:@"appHostname"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)authTokenForSubAccount:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v7 = [a3 credentialWithError:&v19];
  v8 = v19;
  if (a4 == 1)
  {
    v10 = MEMORY[0x277CB8E00];
    goto LABEL_5;
  }

  v9 = 0;
  if (!a4)
  {
    v10 = MEMORY[0x277CB8DE8];
LABEL_5:
    v9 = *v10;
  }

  v11 = [v7 credentialItemForKey:v9];
  v12 = v11;
  if (v8 || !v11)
  {
    v14 = LogCategory_Unspecified();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_INFO, "Count not retrieve token for account. Error: %@", buf, 0xCu);
    }

    v15 = objc_opt_new();
    [v15 fm_safeSetObject:v8 forKey:*MEMORY[0x277CCA7E8]];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmcore.FMOwnerAccountError" code:2 userInfo:v15];
    if (a5)
    {
      v16 = v16;
      *a5 = v16;
    }

    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)hostNameForAccount:(id)a3 type:(int64_t)a4
{
  v5 = [a3 dataclassProperties];
  v6 = v5;
  if (a4 == 1)
  {
    v9 = *MEMORY[0x277CB9128];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CB9128]];
    v7 = [v10 objectForKeyedSubscript:@"appHostname"];

    v11 = [v6 objectForKeyedSubscript:v9];
    v12 = [v11 objectForKeyedSubscript:@"hostname"];

    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v12;
    }

    v8 = v13;

    goto LABEL_8;
  }

  if (!a4)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CB91A0]];
    v8 = [v7 objectForKeyedSubscript:@"appHostname"];
LABEL_8:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)subAccountForAccount:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    v7 = [v5 aa_fmipAccount];
    goto LABEL_5;
  }

  if (!a4)
  {
    v7 = [v5 aa_fmfAccount];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)primaryAccountWithStore:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CB8F48]);
  }

  v8 = v7;
  v9 = [v7 aa_primaryAppleAccount];
  if (!v9)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmcore.FMOwnerAccountError" code:1 userInfo:0];
    if (a4)
    {
      v10 = v10;
      *a4 = v10;
    }
  }

  return v9;
}

+ (id)personIdForAccount:(id)a3 error:(id *)a4
{
  v5 = [a3 aa_personID];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmcore.FMOwnerAccountError" code:3 userInfo:0];
    if (a4)
    {
      v6 = v6;
      *a4 = v6;
    }
  }

  return v5;
}

+ (id)ownerAccount
{
  v2 = objc_opt_new();
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__FMOwnerAccount_ownerAccount__block_invoke;
  block[3] = &unk_278FD9780;
  v4 = v2;
  v7 = v4;
  dispatch_async(v3, block);

  return v4;
}

void __30__FMOwnerAccount_ownerAccount__block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = [FMOwnerAccount primaryAccountWithStore:0 error:&v5];
  v3 = v5;
  if (v3)
  {
    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    v4 = [[FMInternalOwnerAccount alloc] initWithAccount:v2];
    [*(a1 + 32) finishWithResult:v4];
  }
}

+ (id)ownerAccountWithType:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FMOwnerAccount_ownerAccountWithType___block_invoke;
  block[3] = &unk_278FD9A68;
  v7 = v5;
  v10 = v7;
  v11 = a1;
  v12 = a3;
  dispatch_async(v6, block);

  return v7;
}

void __39__FMOwnerAccount_ownerAccountWithType___block_invoke(uint64_t a1)
{
  v18 = 0;
  v2 = [FMOwnerAccount primaryAccountWithStore:0 error:&v18];
  v3 = v18;
  if (v3)
  {
    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    v17 = 0;
    v4 = [FMOwnerAccount personIdForAccount:v2 error:&v17];
    v5 = v17;
    if (v5)
    {
      [*(a1 + 32) finishWithError:v5];
    }

    else
    {
      v6 = [*(a1 + 40) subAccountForAccount:v2 type:*(a1 + 48)];
      v7 = *(a1 + 48);
      v16 = 0;
      v8 = [FMOwnerAccount authTokenForSubAccount:v6 type:v7 error:&v16];
      v9 = v16;
      if (v9)
      {
        [*(a1 + 32) finishWithError:v9];
      }

      else
      {
        v10 = [*(a1 + 40) hostNameForAccount:v2 type:*(a1 + 48)];
        v15 = v8;
        v11 = [[FMOwnerAccount alloc] initWithAuthToken:v8 personId:v4];
        [(FMOwnerAccount *)v11 setHostName:v10];
        v12 = [v2 aa_firstName];
        [(FMOwnerAccount *)v11 setFirstName:v12];

        v13 = [v2 aa_lastName];
        [(FMOwnerAccount *)v11 setLastName:v13];

        v14 = [v2 username];
        [(FMOwnerAccount *)v11 setUsername:v14];

        [*(a1 + 32) finishWithResult:v11];
        v8 = v15;
      }
    }
  }
}

void __71__FMOwnerAccount_renewCredentialsWithBundleId_force_reason_completion___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278FD9AB0[a2];
  }

  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) aa_personID];
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_24A2EE000, v7, OS_LOG_TYPE_DEFAULT, "renewCredentials of account %@ completed with status %@", &v14, 0x16u);
  }

  if (a2 || v5)
  {
    v10 = LogCategory_Unspecified();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __71__FMOwnerAccount_renewCredentialsWithBundleId_force_reason_completion___block_invoke_cold_1(v5, v10);
    }

    v11 = objc_opt_new();
    [v11 fm_safeSetObject:v5 forKey:*MEMORY[0x277CCA7E8]];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.fmcore.FMOwnerAccountError" code:4 userInfo:v11];
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)renewCredentialsWithBundleId:(uint64_t)a1 force:(NSObject *)a2 reason:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "FMOwnerAccount primaryAccountError %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __71__FMOwnerAccount_renewCredentialsWithBundleId_force_reason_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "renewCredentials failed %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end