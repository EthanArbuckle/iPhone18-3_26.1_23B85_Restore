@interface DKFindMyProvider
- (void)_locatorStateDidChange:(id)a3;
- (void)disableFindMyWithPresentingViewController:(id)a3 completion:(id)a4;
- (void)fetchFindMyState:(id)a3;
- (void)preheatFindMyState;
@end

@implementation DKFindMyProvider

- (void)preheatFindMyState
{
  v2 = _DKLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248D68000, v2, OS_LOG_TYPE_DEFAULT, "Preheating Find My state...", v4, 2u);
  }

  v3 = [MEMORY[0x277CECA38] sharedInstance];
  [v3 refreshCurrentState:&__block_literal_global_0];
}

void __38__DKFindMyProvider_preheatFindMyState__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _DKLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"known";
    if (a2 == 4)
    {
      v4 = @"unknown";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_248D68000, v3, OS_LOG_TYPE_DEFAULT, "Find My state preheated; state is %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchFindMyState:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CECA38] sharedInstance];
  v6 = [v5 isStateKnown];

  v7 = [MEMORY[0x277CECA38] sharedInstance];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 isChangingState];

    if ((v9 & 1) == 0)
    {
      v12 = [MEMORY[0x277CECA38] sharedInstance];
      v4[2](v4, [v12 isEnabled]);

      goto LABEL_8;
    }

    [(DKFindMyProvider *)self stateChangeBlock];
    if (objc_claimAutoreleasedReturnValue())
    {
      [DKFindMyProvider fetchFindMyState:];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__DKFindMyProvider_fetchFindMyState___block_invoke_2;
    v13[3] = &unk_278F7DB70;
    v14 = v4;
    [(DKFindMyProvider *)self setStateChangeBlock:v13];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel__locatorStateDidChange_ name:*MEMORY[0x277CEC9A0] object:0];

    v11 = v14;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__DKFindMyProvider_fetchFindMyState___block_invoke;
    v15[3] = &unk_278F7DB48;
    v15[4] = self;
    v16 = v4;
    [v8 refreshCurrentState:v15];

    v11 = v16;
  }

LABEL_8:
}

uint64_t __37__DKFindMyProvider_fetchFindMyState___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CECA38] sharedInstance];
  v3 = [v2 isChangingState];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CECA38] sharedInstance];
    (*(v4 + 16))(v4, [v5 isEnabled]);
  }

  return v3 ^ 1u;
}

- (void)disableFindMyWithPresentingViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(DKFindMyProvider *)self stateChangeBlock];
  if (objc_claimAutoreleasedReturnValue())
  {
    [DKFindMyProvider disableFindMyWithPresentingViewController:completion:];
  }

  v8 = [MEMORY[0x277CECA38] sharedInstance];
  v9 = [v8 isEnabled];

  if (v9)
  {
    v10 = _DKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248D68000, v10, OS_LOG_TYPE_DEFAULT, "Prompting to disable Find My...", buf, 2u);
    }

    v11 = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [v11 aa_primaryAppleAccount];

    v13 = objc_opt_new();
    v25 = v12;
    [v13 setAccount:v12];
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"TURN_OFF_FIND_MY_DISCLOSURE" value:&stru_285BC2A70 table:@"Localizable"];
    v17 = [v12 username];
    v18 = [v14 stringWithFormat:v16, v17];
    [v13 setMessage:v18];

    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TURN_OFF_FINDMY" value:&stru_285BC2A70 table:@"Localizable"];
    [v13 setButtonTitle:v20];

    v21 = [v6 navigationController];
    [v13 setPresentingViewController:v21];

    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v22 UUIDString];
    [v13 setTelemetryFlowID:v23];

    [v13 setKeepAlertVisible:1];
    [v13 setIsSpyglassSignOut:0];
    v24 = MEMORY[0x277CECA28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__DKFindMyProvider_disableFindMyWithPresentingViewController_completion___block_invoke;
    v26[3] = &unk_278F7DB98;
    v27 = v7;
    [v24 showDisableAlertForContext:v13 withCompletion:v26];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

void __73__DKFindMyProvider_disableFindMyWithPresentingViewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _DKLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248D68000, v6, OS_LOG_TYPE_DEFAULT, "User canceled Find My password prompt.", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248D68000, v6, OS_LOG_TYPE_DEFAULT, "Disabling Find My...", buf, 2u);
    }

    v8 = [v5 fmipWipeToken];
    v9 = [MEMORY[0x277CECA38] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__DKFindMyProvider_disableFindMyWithPresentingViewController_completion___block_invoke_27;
    v10[3] = &unk_278F7D998;
    v11 = *(a1 + 32);
    [v9 disableInContext:4 withWipeToken:v8 completion:v10];
  }
}

uint64_t __73__DKFindMyProvider_disableFindMyWithPresentingViewController_completion___block_invoke_27(uint64_t a1, int a2)
{
  v4 = _DKLogSystem();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__DKFindMyProvider_disableFindMyWithPresentingViewController_completion___block_invoke_27_cold_1(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248D68000, v5, OS_LOG_TYPE_DEFAULT, "Successfully disabled Find My for account deletion!", v7, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_locatorStateDidChange:(id)a3
{
  v4 = [(DKFindMyProvider *)self stateChangeBlock];

  if (v4)
  {
    v5 = [(DKFindMyProvider *)self stateChangeBlock];
    v6 = v5[2]();

    if (v6)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 removeObserver:self name:*MEMORY[0x277CEC9A0] object:0];
    }
  }
}

@end