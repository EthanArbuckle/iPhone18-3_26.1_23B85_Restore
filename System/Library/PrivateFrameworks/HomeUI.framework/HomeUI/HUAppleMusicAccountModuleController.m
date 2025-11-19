@interface HUAppleMusicAccountModuleController
- (BOOL)_canExecuteAccountAction;
- (BOOL)canSelectItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUAppleMusicAccountModule)module;
- (HUAppleMusicAccountModuleController)initWithModule:(id)a3;
- (HUAppleMusicAccountModuleControllerDelegate)delegate;
- (HUButtonCell)activeAuthCell;
- (HUButtonCell)loginButton;
- (HUButtonCell)logoutButton;
- (id)_authCells;
- (id)_authenticationContextForAccessory:(id)a3 account:(id)a4;
- (id)_companionLoginWithAccount:(id)a3 cell:(id)a4;
- (id)_proxyLoginWithAccount:(id)a3 cell:(id)a4;
- (id)kickOffManualLogin;
- (unint64_t)didSelectItem:(id)a3;
- (void)_disableCells;
- (void)_enableCells;
- (void)_reloadForAuthEvent;
- (void)_setupButtonCell:(id)a3 enabled:(BOOL)a4;
- (void)_setupCompanionAuthenticationForAccount:(id)a3 cell:(id)a4;
- (void)_setupProxyAuthenticationForAccount:(id)a3 cell:(id)a4;
- (void)_updateModuleState:(unint64_t)a3 notifyDelegate:(BOOL)a4;
- (void)clearLogoutFuture;
- (void)dealloc;
- (void)logout;
- (void)setLoginFuture:(id)a3;
- (void)setLogoutFuture:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUAppleMusicAccountModuleController

- (HUAppleMusicAccountModuleController)initWithModule:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUAppleMusicAccountModuleController;
  v3 = [(HUItemModuleController *)&v6 initWithModule:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    [(HUAppleMusicAccountModuleController *)v3 setItemToCellMap:v4];
  }

  return v3;
}

- (HUAppleMusicAccountModule)module
{
  v4.receiver = self;
  v4.super_class = HUAppleMusicAccountModuleController;
  v2 = [(HUItemModuleController *)&v4 module];

  return v2;
}

- (void)dealloc
{
  v3 = [(HUAppleMusicAccountModuleController *)self loginFuture];
  [v3 cancel];

  v4 = [(HUAppleMusicAccountModuleController *)self logoutFuture];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = HUAppleMusicAccountModuleController;
  [(HUAppleMusicAccountModuleController *)&v5 dealloc];
}

- (Class)cellClassForItem:(id)a3
{
  v5 = a3;
  v6 = [(HUAppleMusicAccountModuleController *)self module];
  v7 = [v6 logoutItem];

  if (v7 == v5 || (-[HUAppleMusicAccountModuleController module](self, "module"), v8 = objc_claimAutoreleasedReturnValue(), [v8 loginItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == v5) || (-[HUAppleMusicAccountModuleController module](self, "module"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "loggedInUsernameItem"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == v5))
  {
    v16 = objc_opt_class();
  }

  else
  {
    v12 = [(HUAppleMusicAccountModuleController *)self module];
    v13 = [v12 appleMusicAccountItemProvider];

    v14 = [v13 items];
    v15 = [v14 containsObject:v5];

    if ((v15 & 1) == 0)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountModuleController.m" lineNumber:79 description:{@"Missing cell class for item %@", v5}];
    }

    v16 = objc_opt_class();
  }

  return v16;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(HUAppleMusicAccountModuleController *)self module];
  v8 = [v7 logoutItem];

  if (v8 == v6)
  {
    [(HUAppleMusicAccountModuleController *)self setLogoutButton:v17];
  }

  else
  {
    v9 = [(HUAppleMusicAccountModuleController *)self module];
    v10 = [v9 loginItem];

    if (v10 == v6)
    {
      [(HUAppleMusicAccountModuleController *)self setLoginButton:v17];
    }

    else
    {
      v11 = [(HUAppleMusicAccountModuleController *)self module];
      v12 = [v11 loggedInUsernameItem];

      if (v12 == v6)
      {
        objc_opt_class();
        v13 = v17;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        [v15 setHideIcon:1];
      }
    }
  }

  v16 = [(HUAppleMusicAccountModuleController *)self itemToCellMap];
  [v16 setObject:v17 forKey:v6];
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v35 = a3;
  v7 = a4;
  v8 = [(HUAppleMusicAccountModuleController *)self module];
  v9 = [v8 logoutItem];

  if (v9 == v7)
  {
    v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v35 setAccessoryView:v21];

    v16 = [(HUAppleMusicAccountModuleController *)self logoutButton];
    v19 = [(HUAppleMusicAccountModuleController *)self logoutFuture];
    v22 = [v19 isFinished] ^ 1;
    v23 = self;
    v24 = v16;
  }

  else
  {
    v10 = [(HUAppleMusicAccountModuleController *)self module];
    v11 = [v10 loginItem];

    if (v11 != v7)
    {
      v12 = [(HUAppleMusicAccountModuleController *)self module];
      v13 = [v12 loggedInUsernameItem];

      if (v13 != v7)
      {
        goto LABEL_14;
      }

      objc_opt_class();
      v14 = v35;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v7 latestResults];
      v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v16 setTitleText:v18];

      v19 = [v7 latestResults];
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [v16 setValueText:v20];
      goto LABEL_12;
    }

    v16 = [(HUAppleMusicAccountModuleController *)self loginButton];
    v19 = [(HUAppleMusicAccountModuleController *)self loginFuture];
    if (v19)
    {
      v20 = [(HUAppleMusicAccountModuleController *)self loginFuture];
      -[HUAppleMusicAccountModuleController _setupButtonCell:enabled:](self, "_setupButtonCell:enabled:", v16, [v20 isFinished]);
LABEL_12:

      goto LABEL_13;
    }

    v23 = self;
    v24 = v16;
    v22 = 1;
  }

  [(HUAppleMusicAccountModuleController *)v23 _setupButtonCell:v24 enabled:v22];
LABEL_13:

LABEL_14:
  v25 = [(HUAppleMusicAccountModuleController *)self module];
  v26 = [v25 appleMusicAccountItemProvider];

  v27 = [v26 items];
  v28 = [v27 containsObject:v7];

  if (v28)
  {
    objc_opt_class();
    v29 = v35;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = [v7 latestResults];
    v33 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v34 = [v31 textLabel];
    [v34 setText:v33];

    [v31 setTextColorFollowsTintColor:1];
  }
}

- (void)_setupButtonCell:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  objc_opt_class();
  v6 = [v11 accessoryView];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HUAppleMusicAccountModuleController *)self activeAuthCell];

  if (v9 == v11)
  {
    if (!v8)
    {
      v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v6 setHidesWhenStopped:1];
      [v11 setAccessoryView:v6];
    }

    v10 = [v6 isAnimating];
    if (!v10 || (v4 & 1) != 0)
    {
      if (((v10 | v4 ^ 1) & 1) == 0)
      {
        [v6 startAnimating];
      }
    }

    else
    {
      [v6 stopAnimating];
      v4 = 0;
    }
  }

  else
  {
    [v8 stopAnimating];
    [v11 setAccessoryView:0];
    v4 = v4 ^ 1;
    v6 = v8;
  }

  [v11 setDisabled:v4];
}

- (BOOL)canSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUAppleMusicAccountModuleController *)self module];
  v6 = [v5 loggedInUsernameItem];

  return v6 != v4;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUAppleMusicAccountModuleController *)self module];
  v6 = [v5 appleMusicAccountItemProvider];

  v7 = [(HUAppleMusicAccountModuleController *)self module];
  v8 = [v7 mediaProfileContainer];
  v9 = [v8 hf_homePodSupportsMultiUser];

  v10 = [(HUAppleMusicAccountModuleController *)self module];
  v11 = [v10 loginItem];

  if (v11 == v4)
  {
    if (v9 && ([v6 mediaProfileContainer], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "hf_appleMusicCurrentLoggedInAccount"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21) && (-[HUAppleMusicAccountModuleController module](self, "module"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "mediaProfileContainer"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hf_supportsPreferredMediaUser"), v23, v22, !v24))
    {
      v27 = [(HUAppleMusicAccountModuleController *)self delegate];
      [v27 appleMusicModuleControllerPresentSignInFlow:self];
    }

    else
    {
      v25 = [(HUAppleMusicAccountModuleController *)self kickOffManualLogin];
    }
  }

  else
  {
    v12 = [(HUAppleMusicAccountModuleController *)self module];
    v13 = [v12 logoutItem];

    if (v13 == v4)
    {
      [(HUAppleMusicAccountModuleController *)self logout];
    }

    else
    {
      v14 = [v6 items];
      v15 = [v14 containsObject:v4];

      if (v15)
      {
        v16 = [(HUAppleMusicAccountModuleController *)self itemToCellMap];
        v17 = [v16 objectForKey:v4];

        v18 = [v4 latestResults];
        v19 = [v18 objectForKeyedSubscript:@"HOAppleMusicAccountKey"];
        [(HUAppleMusicAccountModuleController *)self _setupCompanionAuthenticationForAccount:v19 cell:v17];
      }
    }
  }

  return 0;
}

- (void)setLoginFuture:(id)a3
{
  v5 = a3;
  if (self->_loginFuture != v5)
  {
    objc_storeStrong(&self->_loginFuture, a3);
    objc_initWeak(&location, self);
    loginFuture = self->_loginFuture;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HUAppleMusicAccountModuleController_setLoginFuture___block_invoke;
    v8[3] = &unk_277DB8CA8;
    objc_copyWeak(&v9, &location);
    v7 = [(NAFuture *)loginFuture addCompletionBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __54__HUAppleMusicAccountModuleController_setLoginFuture___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActiveAuthCell:0];
  [WeakRetained _enableCells];
  if (v4)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Login future completed with NSError = [%@]", &v13, 0xCu);
    }
  }

  v7 = [v4 hf_errorWithOperationType:*MEMORY[0x277D13C00] options:0];

  v8 = HFLogForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "Login future completed with HFError = [%@]", &v13, 0xCu);
    }

    v10 = [v7 domain];
    if (![v10 isEqualToString:*MEMORY[0x277CCA050]] || objc_msgSend(v7, "code") != 3072)
    {
      v11 = [v7 domain];
      if ([v11 isEqualToString:*MEMORY[0x277CEFF48]])
      {
        v12 = [v7 code];

        if (v12 == -7003)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v10 = [MEMORY[0x277D14640] sharedHandler];
      [v10 handleError:v7];
    }

LABEL_19:
    [WeakRetained _updateModuleState:0 notifyDelegate:1];
    goto LABEL_20;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Login future completed Successfully", &v13, 2u);
  }

  [WeakRetained _updateModuleState:1 notifyDelegate:1];
  [WeakRetained _reloadForAuthEvent];
LABEL_20:
}

- (void)setLogoutFuture:(id)a3
{
  v5 = a3;
  if (self->_logoutFuture != v5)
  {
    objc_storeStrong(&self->_logoutFuture, a3);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__HUAppleMusicAccountModuleController_setLogoutFuture___block_invoke;
    v7[3] = &unk_277DB8CA8;
    objc_copyWeak(&v8, &location);
    v6 = [(NAFuture *)v5 addCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __55__HUAppleMusicAccountModuleController_setLogoutFuture___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActiveAuthCell:0];
  [WeakRetained _enableCells];
  if (v6 && ([v6 na_isCancelledError] & 1) == 0)
  {
    v8 = [v6 hf_errorWithOperationType:*MEMORY[0x277D13C08] options:0];

    v9 = [MEMORY[0x277D14640] sharedHandler];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HUAppleMusicAccountModuleController_setLogoutFuture___block_invoke_2;
    v10[3] = &unk_277DB8770;
    objc_copyWeak(&v11, (a1 + 32));
    [v9 handleError:v8 retryBlock:v10 cancelBlock:0];

    objc_destroyWeak(&v11);
    v6 = v8;
  }

  else
  {
    [WeakRetained _reloadForAuthEvent];
  }

  [WeakRetained clearLogoutFuture];
}

void __55__HUAppleMusicAccountModuleController_setLogoutFuture___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logout];
}

- (void)clearLogoutFuture
{
  logoutFuture = self->_logoutFuture;
  self->_logoutFuture = 0;
}

- (id)kickOffManualLogin
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14CE8];
  v5 = [(HUAppleMusicAccountModuleController *)self module];
  v6 = [v5 mediaProfileContainer];
  v7 = [v6 accessories];
  v8 = [v4 itemIdentifierForAccessories:v7];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Now posting HFAppleMusicAccountStartManualLoginNotification with task identifier %@", buf, 0x20u);
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = *MEMORY[0x277D136D8];
  v17 = *MEMORY[0x277D14D50];
  v18 = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v11 postNotificationName:v12 object:0 userInfo:v13];

  v14 = [(HUAppleMusicAccountModuleController *)self loginButton];
  [(HUAppleMusicAccountModuleController *)self _setupProxyAuthenticationForAccount:0 cell:v14];

  v15 = [(HUAppleMusicAccountModuleController *)self loginFuture];

  return v15;
}

- (void)_setupProxyAuthenticationForAccount:(id)a3 cell:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [(HUAppleMusicAccountModuleController *)self loginFuture];
    v12 = [(HUAppleMusicAccountModuleController *)self logoutFuture];
    v14 = 138413058;
    v15 = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ loginFuture=[%@] logoutFuture=[%@]", &v14, 0x2Au);
  }

  if ([(HUAppleMusicAccountModuleController *)self _canExecuteAccountAction])
  {
    [(HUAppleMusicAccountModuleController *)self setActiveAuthCell:v8];
    [(HUAppleMusicAccountModuleController *)self _disableCells];
    [(HUAppleMusicAccountModuleController *)self _setupButtonCell:v8 enabled:1];
    v13 = [(HUAppleMusicAccountModuleController *)self _proxyLoginWithAccount:v7 cell:v8];
    [(HUAppleMusicAccountModuleController *)self setLoginFuture:v13];
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "[HUAppleMusicAccountModuleController _setupProxyAuthenticationForAccount:] returning", &v14, 2u);
    }
  }
}

- (void)_setupCompanionAuthenticationForAccount:(id)a3 cell:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(HUAppleMusicAccountModuleController *)self _canExecuteAccountAction])
  {
    [(HUAppleMusicAccountModuleController *)self setActiveAuthCell:v6];
    [(HUAppleMusicAccountModuleController *)self _disableCells];
    [(HUAppleMusicAccountModuleController *)self _setupButtonCell:v6 enabled:1];
    v7 = [(HUAppleMusicAccountModuleController *)self _companionLoginWithAccount:v8 cell:v6];
    [(HUAppleMusicAccountModuleController *)self setLoginFuture:v7];
  }
}

- (id)_proxyLoginWithAccount:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HUAppleMusicAccountModuleController *)self module];
  v9 = [v8 mediaProfileContainer];
  v10 = [v9 accessories];

  v11 = objc_alloc(MEMORY[0x277D143F0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__HUAppleMusicAccountModuleController__proxyLoginWithAccount_cell___block_invoke;
  v18 = &unk_277DBF5C8;
  objc_copyWeak(&v19, &location);
  v12 = [v11 initWithAccessories:v10 account:v6 contextGenerator:&v15];
  [v12 setLoginType:{2, v15, v16, v17, v18}];
  [(HUAppleMusicAccountModuleController *)self _updateModuleState:2 notifyDelegate:1];
  v13 = [v12 pendingArbitrationExecutionFuture];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

id __67__HUAppleMusicAccountModuleController__proxyLoginWithAccount_cell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _authenticationContextForAccessory:v6 account:v5];

  return v8;
}

- (id)_companionLoginWithAccount:(id)a3 cell:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HUAppleMusicAccountModuleController *)self module];
  v9 = [v8 mediaProfileContainer];
  v10 = [v9 accessories];

  v11 = objc_alloc(MEMORY[0x277D143F0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__HUAppleMusicAccountModuleController__companionLoginWithAccount_cell___block_invoke;
  v18 = &unk_277DBF5C8;
  objc_copyWeak(&v19, &location);
  v12 = [v11 initWithAccessories:v10 account:v6 contextGenerator:&v15];
  [v12 setLoginType:{0, v15, v16, v17, v18}];
  [(HUAppleMusicAccountModuleController *)self _updateModuleState:2 notifyDelegate:1];
  v13 = [v12 pendingArbitrationExecutionFuture];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

id __71__HUAppleMusicAccountModuleController__companionLoginWithAccount_cell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _authenticationContextForAccessory:v6 account:v5];

  return v8;
}

- (void)logout
{
  if ([(HUAppleMusicAccountModuleController *)self _canExecuteAccountAction])
  {
    v3 = [(HUAppleMusicAccountModuleController *)self logoutButton];
    [(HUAppleMusicAccountModuleController *)self setActiveAuthCell:v3];

    [(HUAppleMusicAccountModuleController *)self _disableCells];
    v4 = [(HUAppleMusicAccountModuleController *)self logoutButton];
    [(HUAppleMusicAccountModuleController *)self _setupButtonCell:v4 enabled:1];

    [(HUAppleMusicAccountModuleController *)self _updateModuleState:3 notifyDelegate:1];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D143F8];
    v6 = [(HUAppleMusicAccountModuleController *)self module];
    v7 = [v6 mediaProfileContainer];
    v8 = [v7 accessories];
    v9 = [v5 logoutAccessories:v8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __45__HUAppleMusicAccountModuleController_logout__block_invoke;
    v14 = &unk_277DBC2C8;
    objc_copyWeak(&v15, &location);
    v10 = [v9 addCompletionBlock:&v11];
    [(HUAppleMusicAccountModuleController *)self setLogoutFuture:v10, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __45__HUAppleMusicAccountModuleController_logout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateModuleState:0 notifyDelegate:1];
  [WeakRetained _enableCells];
}

- (BOOL)_canExecuteAccountAction
{
  v3 = [(HUAppleMusicAccountModuleController *)self logoutFuture];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(HUAppleMusicAccountModuleController *)self logoutFuture];
  if ([v5 isFinished] || (-[HUAppleMusicAccountModuleController loginFuture](self, "loginFuture"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    return 1;
  }

  v7 = v6;
  v8 = [(HUAppleMusicAccountModuleController *)self loginFuture];
  v9 = [v8 isFinished];

  if (v9)
  {
    return 1;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_debug_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEBUG, "[HUAppleMusicAccountModuleController _canExecuteAccountAction:] returning NO", v12, 2u);
  }

  return 0;
}

- (void)_disableCells
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HUAppleMusicAccountModuleController *)self _authCells];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HUAppleMusicAccountModuleController *)self _setupButtonCell:*(*(&v8 + 1) + 8 * v7++) enabled:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_enableCells
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HUAppleMusicAccountModuleController *)self _authCells];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HUAppleMusicAccountModuleController *)self _setupButtonCell:*(*(&v8 + 1) + 8 * v7++) enabled:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_authCells
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUAppleMusicAccountModuleController *)self itemToCellMap];
  v4 = [v3 objectEnumerator];
  v5 = [v4 na_filter:&__block_literal_global_145];
  v6 = [v5 allObjects];
  v7 = [v2 setWithArray:v6];

  return v7;
}

uint64_t __49__HUAppleMusicAccountModuleController__authCells__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateModuleState:(unint64_t)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v7 = [(HUAppleMusicAccountModuleController *)self module];
  [v7 setState:a3];

  if (v4)
  {
    v8 = [(HUAppleMusicAccountModuleController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(HUAppleMusicAccountModuleController *)self delegate];
      [v10 appleMusicModuleControllerDidUpdateAuthenticationState:self];
    }
  }
}

- (void)_reloadForAuthEvent
{
  v4 = MEMORY[0x277D14788];
  v5 = [(HUAppleMusicAccountModuleController *)self module];
  v6 = [v5 itemProviders];
  v12 = [v4 requestToReloadItemProviders:v6 senderSelector:a2];

  v7 = [(HUAppleMusicAccountModuleController *)self module];
  v8 = [v7 itemUpdater];
  v9 = [v8 performItemUpdateRequest:v12];

  v10 = [(HUAppleMusicAccountModuleController *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = [(HUAppleMusicAccountModuleController *)self delegate];
    [v11 appleMusicModuleControllerDidUpdateAuthenticationState:self];
  }
}

- (id)_authenticationContextForAccessory:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = [a3 remoteLoginHandler];
  v8 = [v7 hu_appleMusicInAppAuthenticationContext];
  v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [v8 reschedule:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HUAppleMusicAccountModuleController__authenticationContextForAccessory_account___block_invoke;
  v14[3] = &unk_277DBEBD8;
  v14[4] = self;
  v15 = v6;
  v11 = v6;
  v12 = [v10 flatMap:v14];

  return v12;
}

id __82__HUAppleMusicAccountModuleController__authenticationContextForAccessory_account___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 appleMusicModuleController:*(a1 + 32) willPresentContext:v3 account:*(a1 + 40)];
  }

  v7 = [v3 presentingViewController];

  if (!v7)
  {
    NSLog(&cfstr_PresentingView.isa);
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v8;
}

- (HUAppleMusicAccountModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUButtonCell)logoutButton
{
  WeakRetained = objc_loadWeakRetained(&self->_logoutButton);

  return WeakRetained;
}

- (HUButtonCell)loginButton
{
  WeakRetained = objc_loadWeakRetained(&self->_loginButton);

  return WeakRetained;
}

- (HUButtonCell)activeAuthCell
{
  WeakRetained = objc_loadWeakRetained(&self->_activeAuthCell);

  return WeakRetained;
}

@end