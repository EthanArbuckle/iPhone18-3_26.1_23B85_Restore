@interface MDMManagedAssetManager
+ (void)promptUserToLoginToiTunesIfNeededTitle:(id)a3 message:(id)a4 assertion:(id)a5 completionBlock:(id)a6;
@end

@implementation MDMManagedAssetManager

+ (void)promptUserToLoginToiTunesIfNeededTitle:(id)a3 message:(id)a4 assertion:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277D69A20] defaultStore];
  v15 = [v14 activeAccount];

  if (v15)
  {
    if (v13)
    {
      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke;
      block[3] = &unk_27982B898;
      v27 = v13;
      v26 = v12;
      dispatch_async(v16, block);

      v17 = v27;
LABEL_10:
    }
  }

  else
  {
    if (!+[MDMMCInterface isLimitedAppsMode])
    {
      v19 = MEMORY[0x277D034A0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_3;
      v20[3] = &unk_27982BED8;
      v22 = v13;
      v23 = a1;
      v21 = v12;
      [v19 promptUserToLogIntoiTunesWithTitle:v10 message:v11 assertion:v21 completion:v20];

      v17 = v22;
      goto LABEL_10;
    }

    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v18, OS_LOG_TYPE_ERROR, "Cannot prompt login to iTunes because device is in a limited apps mode", buf, 2u);
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_3(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v13 = a2;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "User rejected app installation with response: %{public}u", buf, 8u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_4;
    v9[3] = &unk_27982BEB0;
    v7 = *(a1 + 48);
    v11 = *(a1 + 40);
    v10 = *(a1 + 32);
    [v7 _promptUserForiTunesAccount:0 accountNameEditable:1 canCreateNewAccount:1 assertion:v6 completionBlock:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __99__MDMManagedAssetManager_promptUserToLoginToiTunesIfNeededTitle_message_assertion_completionBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Login failed. Error: %{public}@", &v12, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_10:
      v9();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Login successful.", &v12, 2u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __120__MDMManagedAssetManager__promptUserForiTunesAccount_accountNameEditable_canCreateNewAccount_assertion_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v5 DMCVerboseDescription];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_ERROR, "Log in request failed. Error: %{public}@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "Log in successful. Account: %{public}@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();

  v11 = *MEMORY[0x277D85DE8];
}

@end