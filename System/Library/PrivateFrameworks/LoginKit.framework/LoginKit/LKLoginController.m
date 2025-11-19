@interface LKLoginController
+ (id)sharedController;
- (LKLoginController)init;
- (id)proxy;
- (id)recentUsers;
- (void)checkInWithCurrentEnvironment:(unint64_t)a3 completionHandler:(id)a4;
- (void)chooseUserWithIdentifier:(id)a3 inClassWithID:(id)a4 password:(id)a5 withCompletionHandler:(id)a6;
- (void)interruptLocalUserSwitchTest;
- (void)isReadyToLoginWithCompletionHandler:(id)a3;
- (void)isReadyToLogoutWithCompletionHandler:(id)a3;
- (void)logoutWithLogoutType:(unint64_t)a3 completionHandler:(id)a4;
- (void)saveClassConfiguration:(id)a3 withCompletionHandler:(id)a4;
- (void)triggerLocalUserSwitchTestForType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8 completionHandler:(id)a9;
- (void)updateGlobalDefaultsValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
@end

@implementation LKLoginController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__LKLoginController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

void __37__LKLoginController_sharedController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = sharedController_sharedController;
  sharedController_sharedController = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.logind.client.machService" options:4096];
  [sharedController_sharedController setConnection:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28683E5B0];
  v6 = [sharedController_sharedController connection];
  [v6 setRemoteObjectInterface:v5];

  objc_initWeak(&location, sharedController_sharedController);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__LKLoginController_sharedController__block_invoke_2;
  v12[3] = &unk_279826388;
  objc_copyWeak(&v13, &location);
  v7 = [sharedController_sharedController connection];
  [v7 setInterruptionHandler:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__LKLoginController_sharedController__block_invoke_3;
  v10[3] = &unk_279826388;
  objc_copyWeak(&v11, &location);
  v8 = [sharedController_sharedController connection];
  [v8 setInvalidationHandler:v10];

  v9 = [sharedController_sharedController connection];
  [v9 resume];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __37__LKLoginController_sharedController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 completionHandler];

  if (v4)
  {
    v7 = [LKError errorWithCode:4];
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 completionHandler];
    (v6)[2](v6, v7);
  }
}

void __37__LKLoginController_sharedController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 completionHandler];

  if (v4)
  {
    v7 = [LKError errorWithCode:5];
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 completionHandler];
    (v6)[2](v6, v7);
  }
}

- (LKLoginController)init
{
  v6.receiver = self;
  v6.super_class = LKLoginController;
  v2 = [(LKLoginController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    completionHandler = v2->_completionHandler;
    v2->_completionHandler = 0;

    LKRegisterLoginKitLogging();
  }

  return v3;
}

- (id)proxy
{
  v3 = [(LKLoginController *)self connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__LKLoginController_proxy__block_invoke;
  v6[3] = &unk_2798263D0;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __26__LKLoginController_proxy__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [*(a1 + 32) completionHandler];

    if (v3)
    {
      v4 = [*(a1 + 32) completionHandler];
      (v4)[2](v4, v5);

      [*(a1 + 32) setCompletionHandler:0];
    }
  }
}

- (void)logoutWithLogoutType:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = objc_opt_new();
  v6 = v5;
  if (a3 == 1)
  {
    [v5 logoutToLoginSessionWithCompletionHandler:v7];
  }

  else if (!a3)
  {
    [v5 logoutToLoginUserWithCompletionHandler:v7];
  }
}

- (void)chooseUserWithIdentifier:(id)a3 inClassWithID:(id)a4 password:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (isMultiUser())
  {
    v14 = [(LKLoginController *)self completionHandler];

    if (v14)
    {
      v15 = [LKError errorWithCode:3];
      v16 = [(LKLoginController *)self completionHandler];
      (v16)[2](v16, v15);
    }

    [(LKLoginController *)self setCompletionHandler:v13];
    v17 = [(LKLoginController *)self proxy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__LKLoginController_chooseUserWithIdentifier_inClassWithID_password_withCompletionHandler___block_invoke;
    v19[3] = &unk_2798263D0;
    v19[4] = self;
    [v17 chooseUserWithIdentifier:v10 inClassWithID:v11 password:v12 withCompletionHandler:v19];
  }

  else if (v13)
  {
    v18 = [LKError errorWithCode:28];
    v13[2](v13, v18);
  }
}

void __91__LKLoginController_chooseUserWithIdentifier_inClassWithID_password_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    (v4)[2](v4, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }
}

void __99__LKLoginController_loginAppleID_password_localLoginOnly_isTemporarySession_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    (v4)[2](v4, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }
}

- (void)saveClassConfiguration:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (isMultiUser())
  {
    [(LKLoginController *)self setCompletionHandler:v7];
    v8 = [(LKLoginController *)self proxy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__LKLoginController_saveClassConfiguration_withCompletionHandler___block_invoke;
    v10[3] = &unk_2798263D0;
    v10[4] = self;
    [v8 saveClassConfiguration:v6 withCompletionHandler:v10];
  }

  else if (v7)
  {
    v9 = [LKError errorWithCode:28];
    v7[2](v7, v9);
  }
}

void __66__LKLoginController_saveClassConfiguration_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    (v4)[2](v4, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }
}

- (void)isReadyToLoginWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (isMultiUser())
  {
    [(LKLoginController *)self setCompletionHandler:v4];
    v5 = [(LKLoginController *)self proxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__LKLoginController_isReadyToLoginWithCompletionHandler___block_invoke;
    v7[3] = &unk_2798263D0;
    v7[4] = self;
    [v5 isReadyToLoginWithCompletionHandler:v7];
  }

  else if (v4)
  {
    v6 = [LKError errorWithCode:28];
    v4[2](v4, v6);
  }
}

void __57__LKLoginController_isReadyToLoginWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    (v4)[2](v4, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }
}

- (void)isReadyToLogoutWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (isMultiUser())
  {
    [(LKLoginController *)self setCompletionHandler:v4];
    v5 = [(LKLoginController *)self proxy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__LKLoginController_isReadyToLogoutWithCompletionHandler___block_invoke;
    v7[3] = &unk_2798263D0;
    v7[4] = self;
    [v5 isReadyToLogoutWithCompletionHandler:v7];
  }

  else if (v4)
  {
    v6 = [LKError errorWithCode:28];
    v4[2](v4, v6);
  }
}

void __58__LKLoginController_isReadyToLogoutWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    (v4)[2](v4, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }
}

- (void)checkInWithCurrentEnvironment:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (isMultiUser())
  {
    [(LKLoginController *)self setCompletionHandler:v6];
    v7 = [(LKLoginController *)self proxy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__LKLoginController_checkInWithCurrentEnvironment_completionHandler___block_invoke;
    v9[3] = &unk_2798263D0;
    v9[4] = self;
    [v7 checkInWithCurrentEnvironment:a3 completionHandler:v9];
  }

  else if (v6)
  {
    v8 = [LKError errorWithCode:28];
    v6[2](v6, v8);
  }
}

void __69__LKLoginController_checkInWithCurrentEnvironment_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    (v4)[2](v4, v5);

    [*(a1 + 32) setCompletionHandler:0];
  }
}

- (id)recentUsers
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 allUsers];

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [LKUser userFromUMUser:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)updateGlobalDefaultsValue:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LKLoginController *)self proxy];
  [v11 updateGlobalDefaultsValue:v10 forKey:v9 completionHandler:v8];
}

- (void)triggerLocalUserSwitchTestForType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8 completionHandler:(id)a9
{
  v16 = a9;
  v17 = a6;
  v18 = a5;
  v19 = [(LKLoginController *)self proxy];
  [v19 triggerLocalUserSwitchTestForType:a3 count:a4 username:v18 password:v17 loginDelay:a7 logoutDelay:a8 completionHandler:v16];
}

- (void)interruptLocalUserSwitchTest
{
  v2 = [(LKLoginController *)self proxy];
  [v2 interruptLocalUserSwitchTest];
}

@end