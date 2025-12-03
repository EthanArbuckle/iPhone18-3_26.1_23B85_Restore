@interface HUAppleMusicAccountModuleController
- (BOOL)_canExecuteAccountAction;
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUAppleMusicAccountModule)module;
- (HUAppleMusicAccountModuleController)initWithModule:(id)module;
- (HUAppleMusicAccountModuleControllerDelegate)delegate;
- (HUButtonCell)activeAuthCell;
- (HUButtonCell)loginButton;
- (HUButtonCell)logoutButton;
- (id)_authCells;
- (id)_authenticationContextForAccessory:(id)accessory account:(id)account;
- (id)_companionLoginWithAccount:(id)account cell:(id)cell;
- (id)_proxyLoginWithAccount:(id)account cell:(id)cell;
- (id)kickOffManualLogin;
- (unint64_t)didSelectItem:(id)item;
- (void)_disableCells;
- (void)_enableCells;
- (void)_reloadForAuthEvent;
- (void)_setupButtonCell:(id)cell enabled:(BOOL)enabled;
- (void)_setupCompanionAuthenticationForAccount:(id)account cell:(id)cell;
- (void)_setupProxyAuthenticationForAccount:(id)account cell:(id)cell;
- (void)_updateModuleState:(unint64_t)state notifyDelegate:(BOOL)delegate;
- (void)clearLogoutFuture;
- (void)dealloc;
- (void)logout;
- (void)setLoginFuture:(id)future;
- (void)setLogoutFuture:(id)future;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUAppleMusicAccountModuleController

- (HUAppleMusicAccountModuleController)initWithModule:(id)module
{
  v6.receiver = self;
  v6.super_class = HUAppleMusicAccountModuleController;
  v3 = [(HUItemModuleController *)&v6 initWithModule:module];
  if (v3)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    [(HUAppleMusicAccountModuleController *)v3 setItemToCellMap:weakToWeakObjectsMapTable];
  }

  return v3;
}

- (HUAppleMusicAccountModule)module
{
  v4.receiver = self;
  v4.super_class = HUAppleMusicAccountModuleController;
  module = [(HUItemModuleController *)&v4 module];

  return module;
}

- (void)dealloc
{
  loginFuture = [(HUAppleMusicAccountModuleController *)self loginFuture];
  [loginFuture cancel];

  logoutFuture = [(HUAppleMusicAccountModuleController *)self logoutFuture];
  [logoutFuture cancel];

  v5.receiver = self;
  v5.super_class = HUAppleMusicAccountModuleController;
  [(HUAppleMusicAccountModuleController *)&v5 dealloc];
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUAppleMusicAccountModuleController *)self module];
  logoutItem = [module logoutItem];

  if (logoutItem == itemCopy || (-[HUAppleMusicAccountModuleController module](self, "module"), v8 = objc_claimAutoreleasedReturnValue(), [v8 loginItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == itemCopy) || (-[HUAppleMusicAccountModuleController module](self, "module"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "loggedInUsernameItem"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == itemCopy))
  {
    v16 = objc_opt_class();
  }

  else
  {
    module2 = [(HUAppleMusicAccountModuleController *)self module];
    appleMusicAccountItemProvider = [module2 appleMusicAccountItemProvider];

    items = [appleMusicAccountItemProvider items];
    v15 = [items containsObject:itemCopy];

    if ((v15 & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountModuleController.m" lineNumber:79 description:{@"Missing cell class for item %@", itemCopy}];
    }

    v16 = objc_opt_class();
  }

  return v16;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUAppleMusicAccountModuleController *)self module];
  logoutItem = [module logoutItem];

  if (logoutItem == itemCopy)
  {
    [(HUAppleMusicAccountModuleController *)self setLogoutButton:cellCopy];
  }

  else
  {
    module2 = [(HUAppleMusicAccountModuleController *)self module];
    loginItem = [module2 loginItem];

    if (loginItem == itemCopy)
    {
      [(HUAppleMusicAccountModuleController *)self setLoginButton:cellCopy];
    }

    else
    {
      module3 = [(HUAppleMusicAccountModuleController *)self module];
      loggedInUsernameItem = [module3 loggedInUsernameItem];

      if (loggedInUsernameItem == itemCopy)
      {
        objc_opt_class();
        v13 = cellCopy;
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

  itemToCellMap = [(HUAppleMusicAccountModuleController *)self itemToCellMap];
  [itemToCellMap setObject:cellCopy forKey:itemCopy];
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUAppleMusicAccountModuleController *)self module];
  logoutItem = [module logoutItem];

  if (logoutItem == itemCopy)
  {
    v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [cellCopy setAccessoryView:v21];

    logoutButton = [(HUAppleMusicAccountModuleController *)self logoutButton];
    logoutFuture = [(HUAppleMusicAccountModuleController *)self logoutFuture];
    v22 = [logoutFuture isFinished] ^ 1;
    selfCopy2 = self;
    v24 = logoutButton;
  }

  else
  {
    module2 = [(HUAppleMusicAccountModuleController *)self module];
    loginItem = [module2 loginItem];

    if (loginItem != itemCopy)
    {
      module3 = [(HUAppleMusicAccountModuleController *)self module];
      loggedInUsernameItem = [module3 loggedInUsernameItem];

      if (loggedInUsernameItem != itemCopy)
      {
        goto LABEL_14;
      }

      objc_opt_class();
      v14 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      logoutButton = v15;

      latestResults = [itemCopy latestResults];
      v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [logoutButton setTitleText:v18];

      logoutFuture = [itemCopy latestResults];
      loginFuture = [logoutFuture objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [logoutButton setValueText:loginFuture];
      goto LABEL_12;
    }

    logoutButton = [(HUAppleMusicAccountModuleController *)self loginButton];
    logoutFuture = [(HUAppleMusicAccountModuleController *)self loginFuture];
    if (logoutFuture)
    {
      loginFuture = [(HUAppleMusicAccountModuleController *)self loginFuture];
      -[HUAppleMusicAccountModuleController _setupButtonCell:enabled:](self, "_setupButtonCell:enabled:", logoutButton, [loginFuture isFinished]);
LABEL_12:

      goto LABEL_13;
    }

    selfCopy2 = self;
    v24 = logoutButton;
    v22 = 1;
  }

  [(HUAppleMusicAccountModuleController *)selfCopy2 _setupButtonCell:v24 enabled:v22];
LABEL_13:

LABEL_14:
  module4 = [(HUAppleMusicAccountModuleController *)self module];
  appleMusicAccountItemProvider = [module4 appleMusicAccountItemProvider];

  items = [appleMusicAccountItemProvider items];
  v28 = [items containsObject:itemCopy];

  if (v28)
  {
    objc_opt_class();
    v29 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    latestResults2 = [itemCopy latestResults];
    v33 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    textLabel = [v31 textLabel];
    [textLabel setText:v33];

    [v31 setTextColorFollowsTintColor:1];
  }
}

- (void)_setupButtonCell:(id)cell enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  cellCopy = cell;
  objc_opt_class();
  accessoryView = [cellCopy accessoryView];
  if (objc_opt_isKindOfClass())
  {
    v7 = accessoryView;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  activeAuthCell = [(HUAppleMusicAccountModuleController *)self activeAuthCell];

  if (activeAuthCell == cellCopy)
  {
    if (!v8)
    {
      accessoryView = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [accessoryView setHidesWhenStopped:1];
      [cellCopy setAccessoryView:accessoryView];
    }

    isAnimating = [accessoryView isAnimating];
    if (!isAnimating || (enabledCopy & 1) != 0)
    {
      if (((isAnimating | enabledCopy ^ 1) & 1) == 0)
      {
        [accessoryView startAnimating];
      }
    }

    else
    {
      [accessoryView stopAnimating];
      enabledCopy = 0;
    }
  }

  else
  {
    [v8 stopAnimating];
    [cellCopy setAccessoryView:0];
    enabledCopy = enabledCopy ^ 1;
    accessoryView = v8;
  }

  [cellCopy setDisabled:enabledCopy];
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUAppleMusicAccountModuleController *)self module];
  loggedInUsernameItem = [module loggedInUsernameItem];

  return loggedInUsernameItem != itemCopy;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUAppleMusicAccountModuleController *)self module];
  appleMusicAccountItemProvider = [module appleMusicAccountItemProvider];

  module2 = [(HUAppleMusicAccountModuleController *)self module];
  mediaProfileContainer = [module2 mediaProfileContainer];
  hf_homePodSupportsMultiUser = [mediaProfileContainer hf_homePodSupportsMultiUser];

  module3 = [(HUAppleMusicAccountModuleController *)self module];
  loginItem = [module3 loginItem];

  if (loginItem == itemCopy)
  {
    if (hf_homePodSupportsMultiUser && ([appleMusicAccountItemProvider mediaProfileContainer], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "hf_appleMusicCurrentLoggedInAccount"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21) && (-[HUAppleMusicAccountModuleController module](self, "module"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "mediaProfileContainer"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hf_supportsPreferredMediaUser"), v23, v22, !v24))
    {
      delegate = [(HUAppleMusicAccountModuleController *)self delegate];
      [delegate appleMusicModuleControllerPresentSignInFlow:self];
    }

    else
    {
      kickOffManualLogin = [(HUAppleMusicAccountModuleController *)self kickOffManualLogin];
    }
  }

  else
  {
    module4 = [(HUAppleMusicAccountModuleController *)self module];
    logoutItem = [module4 logoutItem];

    if (logoutItem == itemCopy)
    {
      [(HUAppleMusicAccountModuleController *)self logout];
    }

    else
    {
      items = [appleMusicAccountItemProvider items];
      v15 = [items containsObject:itemCopy];

      if (v15)
      {
        itemToCellMap = [(HUAppleMusicAccountModuleController *)self itemToCellMap];
        v17 = [itemToCellMap objectForKey:itemCopy];

        latestResults = [itemCopy latestResults];
        v19 = [latestResults objectForKeyedSubscript:@"HOAppleMusicAccountKey"];
        [(HUAppleMusicAccountModuleController *)self _setupCompanionAuthenticationForAccount:v19 cell:v17];
      }
    }
  }

  return 0;
}

- (void)setLoginFuture:(id)future
{
  futureCopy = future;
  if (self->_loginFuture != futureCopy)
  {
    objc_storeStrong(&self->_loginFuture, future);
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

- (void)setLogoutFuture:(id)future
{
  futureCopy = future;
  if (self->_logoutFuture != futureCopy)
  {
    objc_storeStrong(&self->_logoutFuture, future);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__HUAppleMusicAccountModuleController_setLogoutFuture___block_invoke;
    v7[3] = &unk_277DB8CA8;
    objc_copyWeak(&v8, &location);
    v6 = [(NAFuture *)futureCopy addCompletionBlock:v7];
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
  module = [(HUAppleMusicAccountModuleController *)self module];
  mediaProfileContainer = [module mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];
  v8 = [v4 itemIdentifierForAccessories:accessories];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Now posting HFAppleMusicAccountStartManualLoginNotification with task identifier %@", buf, 0x20u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = *MEMORY[0x277D136D8];
  v17 = *MEMORY[0x277D14D50];
  v18 = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [defaultCenter postNotificationName:v12 object:0 userInfo:v13];

  loginButton = [(HUAppleMusicAccountModuleController *)self loginButton];
  [(HUAppleMusicAccountModuleController *)self _setupProxyAuthenticationForAccount:0 cell:loginButton];

  loginFuture = [(HUAppleMusicAccountModuleController *)self loginFuture];

  return loginFuture;
}

- (void)_setupProxyAuthenticationForAccount:(id)account cell:(id)cell
{
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  cellCopy = cell;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    loginFuture = [(HUAppleMusicAccountModuleController *)self loginFuture];
    logoutFuture = [(HUAppleMusicAccountModuleController *)self logoutFuture];
    v14 = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = loginFuture;
    v20 = 2112;
    v21 = logoutFuture;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ loginFuture=[%@] logoutFuture=[%@]", &v14, 0x2Au);
  }

  if ([(HUAppleMusicAccountModuleController *)self _canExecuteAccountAction])
  {
    [(HUAppleMusicAccountModuleController *)self setActiveAuthCell:cellCopy];
    [(HUAppleMusicAccountModuleController *)self _disableCells];
    [(HUAppleMusicAccountModuleController *)self _setupButtonCell:cellCopy enabled:1];
    v13 = [(HUAppleMusicAccountModuleController *)self _proxyLoginWithAccount:accountCopy cell:cellCopy];
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

- (void)_setupCompanionAuthenticationForAccount:(id)account cell:(id)cell
{
  accountCopy = account;
  cellCopy = cell;
  if ([(HUAppleMusicAccountModuleController *)self _canExecuteAccountAction])
  {
    [(HUAppleMusicAccountModuleController *)self setActiveAuthCell:cellCopy];
    [(HUAppleMusicAccountModuleController *)self _disableCells];
    [(HUAppleMusicAccountModuleController *)self _setupButtonCell:cellCopy enabled:1];
    v7 = [(HUAppleMusicAccountModuleController *)self _companionLoginWithAccount:accountCopy cell:cellCopy];
    [(HUAppleMusicAccountModuleController *)self setLoginFuture:v7];
  }
}

- (id)_proxyLoginWithAccount:(id)account cell:(id)cell
{
  accountCopy = account;
  cellCopy = cell;
  objc_initWeak(&location, self);
  module = [(HUAppleMusicAccountModuleController *)self module];
  mediaProfileContainer = [module mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];

  v11 = objc_alloc(MEMORY[0x277D143F0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__HUAppleMusicAccountModuleController__proxyLoginWithAccount_cell___block_invoke;
  v18 = &unk_277DBF5C8;
  objc_copyWeak(&v19, &location);
  v12 = [v11 initWithAccessories:accessories account:accountCopy contextGenerator:&v15];
  [v12 setLoginType:{2, v15, v16, v17, v18}];
  [(HUAppleMusicAccountModuleController *)self _updateModuleState:2 notifyDelegate:1];
  pendingArbitrationExecutionFuture = [v12 pendingArbitrationExecutionFuture];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return pendingArbitrationExecutionFuture;
}

id __67__HUAppleMusicAccountModuleController__proxyLoginWithAccount_cell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _authenticationContextForAccessory:v6 account:v5];

  return v8;
}

- (id)_companionLoginWithAccount:(id)account cell:(id)cell
{
  accountCopy = account;
  cellCopy = cell;
  objc_initWeak(&location, self);
  module = [(HUAppleMusicAccountModuleController *)self module];
  mediaProfileContainer = [module mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];

  v11 = objc_alloc(MEMORY[0x277D143F0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__HUAppleMusicAccountModuleController__companionLoginWithAccount_cell___block_invoke;
  v18 = &unk_277DBF5C8;
  objc_copyWeak(&v19, &location);
  v12 = [v11 initWithAccessories:accessories account:accountCopy contextGenerator:&v15];
  [v12 setLoginType:{0, v15, v16, v17, v18}];
  [(HUAppleMusicAccountModuleController *)self _updateModuleState:2 notifyDelegate:1];
  pendingArbitrationExecutionFuture = [v12 pendingArbitrationExecutionFuture];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return pendingArbitrationExecutionFuture;
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
    logoutButton = [(HUAppleMusicAccountModuleController *)self logoutButton];
    [(HUAppleMusicAccountModuleController *)self setActiveAuthCell:logoutButton];

    [(HUAppleMusicAccountModuleController *)self _disableCells];
    logoutButton2 = [(HUAppleMusicAccountModuleController *)self logoutButton];
    [(HUAppleMusicAccountModuleController *)self _setupButtonCell:logoutButton2 enabled:1];

    [(HUAppleMusicAccountModuleController *)self _updateModuleState:3 notifyDelegate:1];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D143F8];
    module = [(HUAppleMusicAccountModuleController *)self module];
    mediaProfileContainer = [module mediaProfileContainer];
    accessories = [mediaProfileContainer accessories];
    v9 = [v5 logoutAccessories:accessories];
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
  logoutFuture = [(HUAppleMusicAccountModuleController *)self logoutFuture];
  if (!logoutFuture)
  {
    return 1;
  }

  v4 = logoutFuture;
  logoutFuture2 = [(HUAppleMusicAccountModuleController *)self logoutFuture];
  if ([logoutFuture2 isFinished] || (-[HUAppleMusicAccountModuleController loginFuture](self, "loginFuture"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    return 1;
  }

  v7 = v6;
  loginFuture = [(HUAppleMusicAccountModuleController *)self loginFuture];
  isFinished = [loginFuture isFinished];

  if (isFinished)
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
  _authCells = [(HUAppleMusicAccountModuleController *)self _authCells];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_authCells countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(_authCells);
        }

        [(HUAppleMusicAccountModuleController *)self _setupButtonCell:*(*(&v8 + 1) + 8 * v7++) enabled:0];
      }

      while (v5 != v7);
      v5 = [_authCells countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_enableCells
{
  v13 = *MEMORY[0x277D85DE8];
  _authCells = [(HUAppleMusicAccountModuleController *)self _authCells];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [_authCells countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(_authCells);
        }

        [(HUAppleMusicAccountModuleController *)self _setupButtonCell:*(*(&v8 + 1) + 8 * v7++) enabled:1];
      }

      while (v5 != v7);
      v5 = [_authCells countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_authCells
{
  v2 = MEMORY[0x277CBEB98];
  itemToCellMap = [(HUAppleMusicAccountModuleController *)self itemToCellMap];
  objectEnumerator = [itemToCellMap objectEnumerator];
  v5 = [objectEnumerator na_filter:&__block_literal_global_145];
  allObjects = [v5 allObjects];
  v7 = [v2 setWithArray:allObjects];

  return v7;
}

uint64_t __49__HUAppleMusicAccountModuleController__authCells__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateModuleState:(unint64_t)state notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  module = [(HUAppleMusicAccountModuleController *)self module];
  [module setState:state];

  if (delegateCopy)
  {
    delegate = [(HUAppleMusicAccountModuleController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(HUAppleMusicAccountModuleController *)self delegate];
      [delegate2 appleMusicModuleControllerDidUpdateAuthenticationState:self];
    }
  }
}

- (void)_reloadForAuthEvent
{
  v4 = MEMORY[0x277D14788];
  module = [(HUAppleMusicAccountModuleController *)self module];
  itemProviders = [module itemProviders];
  v12 = [v4 requestToReloadItemProviders:itemProviders senderSelector:a2];

  module2 = [(HUAppleMusicAccountModuleController *)self module];
  itemUpdater = [module2 itemUpdater];
  v9 = [itemUpdater performItemUpdateRequest:v12];

  delegate = [(HUAppleMusicAccountModuleController *)self delegate];
  LOBYTE(itemUpdater) = objc_opt_respondsToSelector();

  if (itemUpdater)
  {
    delegate2 = [(HUAppleMusicAccountModuleController *)self delegate];
    [delegate2 appleMusicModuleControllerDidUpdateAuthenticationState:self];
  }
}

- (id)_authenticationContextForAccessory:(id)accessory account:(id)account
{
  accountCopy = account;
  remoteLoginHandler = [accessory remoteLoginHandler];
  hu_appleMusicInAppAuthenticationContext = [remoteLoginHandler hu_appleMusicInAppAuthenticationContext];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [hu_appleMusicInAppAuthenticationContext reschedule:mainThreadScheduler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HUAppleMusicAccountModuleController__authenticationContextForAccessory_account___block_invoke;
  v14[3] = &unk_277DBEBD8;
  v14[4] = self;
  v15 = accountCopy;
  v11 = accountCopy;
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